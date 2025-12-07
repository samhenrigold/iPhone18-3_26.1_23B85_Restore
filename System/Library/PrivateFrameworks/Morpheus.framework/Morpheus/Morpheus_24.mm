void sub_25A3E0934(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<mlx::core::complex64_t,double>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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
      v12 += 2 * *v11;
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
        v49 = &v106[2 * v26];
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
    v12 += 2 * *v11;
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

void sub_25A3E109C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::anonymous namespace::copy_vector<mlx::core::complex64_t,mlx::core::_MLX_BFloat16>(uint64_t result, uint64_t a2)
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
      v3 += 2;
      *v4++ = (v6 + (HIWORD(v6) & 1) + 0x7FFF) >> 16;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

void mlx::core::anonymous namespace::copy_general_general<mlx::core::complex64_t,mlx::core::_MLX_BFloat16>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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
      v12 += 2 * *v11;
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
        v42 = 8 * v28[v112];
        v43 = 8 * v28[v101];
        v44 = 2 * v29[v112];
        v45 = 2 * v29[v101];
        v46 = &v103[2 * v26];
        do
        {
          if (v40 >= 1)
          {
            v47 = 0;
            v48 = v27[v30];
            v49 = 8 * v28[v30];
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
    v12 += 2 * *v11;
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
      v86 = 8 * **v123;
      v87 = 8 * (*v123)[1];
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
      v19 = 8 * **v123;
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

void sub_25A3E18FC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<mlx::core::complex64_t,mlx::core::complex64_t>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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
            v33 = &v13[v89];
            v34 = &v12[v100];
            v35 = 8 * (*v30)[v23];
            v36 = 8 * v30[3][v23];
            do
            {
              v37 = *(v96 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = 8 * (*v30)[v28];
                v40 = 8 * v30[3][v28];
                v41 = v33;
                v42 = v34;
                do
                {
                  v43 = *(v96 + v29);
                  if (v43 >= 1)
                  {
                    v44 = 0;
                    v45 = 0;
                    v46 = 8 * (*v30)[v29];
                    v47 = 8 * v30[3][v29];
                    do
                    {
                      *(v41 + v44) = *(v42 + v45);
                      v45 += v46;
                      v44 += v47;
                      --v43;
                    }

                    while (v43);
                  }

                  ++v38;
                  v42 = (v42 + v39);
                  v41 = (v41 + v40);
                }

                while (v38 != v37);
              }

              ++v32;
              v34 = (v34 + v35);
              v33 = (v33 + v36);
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
          v82 = 8 * **v98;
          v83 = 8 * *v98[3];
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = 8 * (*v81)[1];
              v86 = 8 * v81[3][1];
              v87 = v13;
              v88 = v12;
              do
              {
                *v87 = *v88;
                v88 = (v88 + v85);
                v87 = (v87 + v86);
                --v84;
              }

              while (v84);
            }

            ++v80;
            v12 = (v12 + v82);
            v13 = (v13 + v83);
          }

          while (v80 != v79);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v96;
        if (*v96 >= 1)
        {
          v21 = 8 * **v98;
          v22 = 8 * *v98[3];
          do
          {
            *v13 = *v12;
            v12 = (v12 + v21);
            v13 = (v13 + v22);
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

void sub_25A3E1FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF3278;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF3278;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF3278;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::cpu::CommandEncoder::dispatch<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>(mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0 &&)::{lambda(void)#1}::~dispatch(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    mlx::core::array::~array((a1 + 168));
  }

  if (*(a1 + 160) == 1)
  {
    mlx::core::array::~array((a1 + 144));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 32));
  mlx::core::array::~array((a1 + 16));
  return a1;
}

uint64_t mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  v4 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v4;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    *(a1 + 128) = *(a2 + 128);
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a1 + 144) = 1;
  }

  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a1 + 168) = 1;
  }

  return a1;
}

void sub_25A3E244C(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 5) = v7;
    operator delete(v7);
  }

  mlx::core::array::~array(v2);
  mlx::core::array::~array(v1);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_286BF3370;
  if (*(a1 + 192) == 1)
  {
    mlx::core::array::~array((a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    mlx::core::array::~array((a1 + 152));
  }

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

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_286BF3370;
  if (*(a1 + 192) == 1)
  {
    mlx::core::array::~array((a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    mlx::core::array::~array((a1 + 152));
  }

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

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3370;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>::__bind(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEE7destroyEv(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    mlx::core::array::~array((a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    mlx::core::array::~array((a1 + 152));
  }

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

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    mlx::core::array::~array((a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    mlx::core::array::~array((a1 + 152));
  }

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

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEEclEv(uint64_t a1)
{
  v1 = std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>::__bind(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  v6 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v6;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    v7 = *(a2 + 136);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 144) = 1;
  }

  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v8 = *(a2 + 160);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 168) = 1;
  }

  return a1;
}

void sub_25A3E29C8(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 5) = v7;
    operator delete(v7);
  }

  mlx::core::array::~array(v2);
  mlx::core::array::~array(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>::operator()[abi:ne200100]<>(uint64_t result)
{
  v2 = *(result + 120);
  if (v2 < 2)
  {
  }

  else if ((v2 - 2) <= 1)
  {
  }

  return result;
}

void sub_25A3F8584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BF33F0;
  if (*(a1 + 176) == 1)
  {
    mlx::core::array::~array((a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    mlx::core::array::~array((a1 + 136));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
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

  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BF33F0;
  if (*(a1 + 176) == 1)
  {
    mlx::core::array::~array((a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    mlx::core::array::~array((a1 + 136));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
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

  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF33F0;
  result = std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>::__bind(a2 + 8, a1 + 8);
  *(a2 + 188) = 0;
  *(a2 + 185) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    mlx::core::array::~array((a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    mlx::core::array::~array((a1 + 136));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
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

  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    mlx::core::array::~array((a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    mlx::core::array::~array((a1 + 136));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
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

  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::LUF::eval_cpu(uint64_t a1, mlx::core::array **a2, void *a3)
{
  v4 = *a2;
  if (a2[1] - *a2 == 16)
  {
    v5 = *(*v4 + 56);
    if (v5 != 11)
    {
      if (v5 == 10)
      {
        v6 = *a3;
        v7 = *(a1 + 8);
        v8 = *(a1 + 16);
        v9 = (*a3 + 16);

        mlx::core::luf_impl<float>(v4, v6, v9, (v6 + 32), v7, v8);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[LUF::eval_cpu] only supports float32 or float64.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v10 = *a3;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    v13 = (*a3 + 16);

    mlx::core::luf_impl<double>(v4, v10, v13, (v10 + 32), v11, v12);
  }

  mlx::core::LUF::eval_cpu();
}

void mlx::core::luf_impl<float>(mlx::core::array *a1, uint64_t *a2, int ***a3, int ***a4, uint64_t a5, unsigned int a6)
{
  v20[4] = *MEMORY[0x277D85DE8];
  if (*(*a1 + 8) - **a1 > 4uLL)
  {
    v7 = *(*(*a1 + 8) - 8);
    v8 = *a2;
    v9 = *(*a2 + 8) - **a2;
    v10 = v9 == 8;
    v11 = *(*a2 + 168);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v17, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v12 = v17 + 8 * (v9 >> 2);
    *(v12 - 2) = 1;
    *(v12 - 1) = v7;
    v13 = mlx::core::allocator::malloc((*(*a2 + 60) * *(*a2 + 48)));
    v15 = *(*a2 + 48);
    v14 = *(*a2 + 56);
    memset(__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v17, v18, (v18 - v17) >> 3);
    v20[0] = &unk_286BE3468;
    v20[1] = mlx::core::allocator::free;
    v20[3] = v20;
    mlx::core::array::set_data(a2, v13, BYTE4(v14) * v15, __p, v11 & 0xF8 | (4 * v10) | 1, v20);
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A3F93F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::luf_impl<double>(mlx::core::array *a1, uint64_t *a2, int ***a3, int ***a4, uint64_t a5, unsigned int a6)
{
  v20[4] = *MEMORY[0x277D85DE8];
  if (*(*a1 + 8) - **a1 > 4uLL)
  {
    v7 = *(*(*a1 + 8) - 8);
    v8 = *a2;
    v9 = *(*a2 + 8) - **a2;
    v10 = v9 == 8;
    v11 = *(*a2 + 168);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v17, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v12 = v17 + 8 * (v9 >> 2);
    *(v12 - 2) = 1;
    *(v12 - 1) = v7;
    v13 = mlx::core::allocator::malloc((*(*a2 + 60) * *(*a2 + 48)));
    v15 = *(*a2 + 48);
    v14 = *(*a2 + 56);
    memset(__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v17, v18, (v18 - v17) >> 3);
    v20[0] = &unk_286BE3468;
    v20[1] = mlx::core::allocator::free;
    v20[3] = v20;
    mlx::core::array::set_data(a2, v13, BYTE4(v14) * v15, __p, v11 & 0xF8 | (4 * v10) | 1, v20);
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A3F97D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v12 = a2[2];
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  v9 = v13;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A3F9A38(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIfEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3560;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIfEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v1 = mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIfEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *result)
{
  if (result[3])
  {
    v1 = result;
    v2 = 0;
    v22 = 0;
    do
    {
      result = sgetrf_NEWLAPACK();
      if (v22)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "[LUF::eval_cpu] sgetrf_ failed with code ", 41);
        v15 = MEMORY[0x25F851360](v14, v22);
        if (v22 <= 0)
        {
          v16 = " because argument had an illegal value";
        }

        else
        {
          v16 = " because matrix is singular";
        }

        if (v22 <= 0)
        {
          v17 = 38;
        }

        else
        {
          v17 = 27;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
        exception = __cxa_allocate_exception(0x10uLL);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v20, v19);
        MEMORY[0x25F851100](exception, v19);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      LODWORD(v3) = *(v1 + 10);
      v4 = v1[2];
      if (v3 < 1)
      {
        v7 = 0;
      }

      else
      {
        v5 = 0;
        v6 = v1[1];
        do
        {
          --*(v6 + 4 * v5);
          *(v4 + 4 * v5) = v5;
          ++v5;
          v3 = *(v1 + 10);
        }

        while (v5 < v3);
        v7 = v5;
      }

      v8 = *(v1 + 8);
      if (v7 < v8)
      {
        do
        {
          *(v4 + 4 * v7) = v7;
          ++v7;
          v8 = *(v1 + 8);
        }

        while (v8 > v7);
        LODWORD(v3) = *(v1 + 10);
      }

      v9 = v1[1];
      if (v3 >= 1)
      {
        v10 = v3 - 1;
        do
        {
          v11 = *(v9 + 4 * v10);
          v12 = *(v4 + 4 * v10);
          *(v4 + 4 * v10) = *(v4 + 4 * v11);
          *(v4 + 4 * v11) = v12;
          v13 = v10-- + 1;
        }

        while (v13 > 1);
        v8 = *(v1 + 8);
        LODWORD(v3) = *(v1 + 10);
      }

      *v1 += 4 * *(v1 + 9) * v8;
      v1[1] = v9 + 4 * v3;
      v1[2] = v4 + 4 * v8;
      ++v2;
    }

    while (v2 < v1[3]);
  }

  return result;
}

void sub_25A3F9F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A3FA0B0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF35E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v12 = a2[2];
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  v9 = v13;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A3FA524(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIdEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF36D8;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIdEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v1 = mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIdEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *result)
{
  if (result[3])
  {
    v1 = result;
    v2 = 0;
    v22 = 0;
    do
    {
      result = dgetrf_NEWLAPACK();
      if (v22)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "[LUF::eval_cpu] sgetrf_ failed with code ", 41);
        v15 = MEMORY[0x25F851360](v14, v22);
        if (v22 <= 0)
        {
          v16 = " because argument had an illegal value";
        }

        else
        {
          v16 = " because matrix is singular";
        }

        if (v22 <= 0)
        {
          v17 = 38;
        }

        else
        {
          v17 = 27;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
        exception = __cxa_allocate_exception(0x10uLL);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v20, v19);
        MEMORY[0x25F851100](exception, v19);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      LODWORD(v3) = *(v1 + 10);
      v4 = v1[2];
      if (v3 < 1)
      {
        v7 = 0;
      }

      else
      {
        v5 = 0;
        v6 = v1[1];
        do
        {
          --*(v6 + 4 * v5);
          *(v4 + 4 * v5) = v5;
          ++v5;
          v3 = *(v1 + 10);
        }

        while (v5 < v3);
        v7 = v5;
      }

      v8 = *(v1 + 8);
      if (v7 < v8)
      {
        do
        {
          *(v4 + 4 * v7) = v7;
          ++v7;
          v8 = *(v1 + 8);
        }

        while (v8 > v7);
        LODWORD(v3) = *(v1 + 10);
      }

      v9 = v1[1];
      if (v3 >= 1)
      {
        v10 = v3 - 1;
        do
        {
          v11 = *(v9 + 4 * v10);
          v12 = *(v4 + 4 * v10);
          *(v4 + 4 * v10) = *(v4 + 4 * v11);
          *(v4 + 4 * v11) = v12;
          v13 = v10-- + 1;
        }

        while (v13 > 1);
        v8 = *(v1 + 8);
        LODWORD(v3) = *(v1 + 10);
      }

      *v1 += 8 * *(v1 + 9) * v8;
      v1[1] = v9 + 4 * v3;
      v1[2] = v4 + 4 * v8;
      ++v2;
    }

    while (v2 < v1[3]);
  }

  return result;
}

void sub_25A3FAA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A3FAAF4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3758;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Softmax::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v144 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Softmax::eval_cpu();
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *v3;
  v9 = **v3;
  if ((*v3)[21])
  {
    v10 = v8[1];
    if (*(v8[3] + 2 * (v10 - v9) - 8) == 1)
    {
      v11 = v3[1];
      if (!v11 || v11[1] || (v93 = v8[18]) == 0 || v93[1])
      {
        v12 = mlx::core::allocator::malloc((*(v8 + 60) * v8[20]));
        v13 = *v3;
        v14 = (*v3)[20];
        v138 = 0;
        v139 = 0;
        __p = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v13[3], v13[4], (v13[4] - v13[3]) >> 3);
        v15 = *(*v3 + 168);
        v141[0] = &unk_286BE3468;
        v141[1] = mlx::core::allocator::free;
        v143 = v141;
        mlx::core::array::set_data(this, v12, v14, &__p, v15, v141);
      }

      mlx::core::array::copy_shared_buffer(this, v3);
      v16 = *v3;
      v17 = v3[1];
      v135[0] = *v3;
      v135[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
      }

      goto LABEL_16;
    }

    v18 = (v10 - v9) >> 2;
  }

  else
  {
    v10 = v8[1];
    v18 = (v10 - v9) >> 2;
  }

  v141[0] = 0;
  v141[1] = 0;
  v142 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v141, v9, v10, v18);
  v19 = (*v3)[7];
  v135[2] = 0;
  v136 = 0;
  v138 = 0;
  v139 = 0;
  __p = 0;
  mlx::core::array::array(v135, v141, v19 & 0xFFFFFFFFFFLL);
  p_p = &__p;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v136)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v136);
  }

  if (v141[0])
  {
    v141[1] = v141[0];
    operator delete(v141[0]);
  }

  mlx::core::copy(v3, v135, 2, v6, v7);
  mlx::core::array::copy_shared_buffer(this, v135);
  v16 = v135[0];
LABEL_16:
  v20 = *(v16 + 14);
  if (v20 > 10)
  {
    if (v20 == 11)
    {
      command_encoder = mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
      v53 = (*(command_encoder + 10) + 1) % 10;
      *(command_encoder + 10) = v53;
      v54 = mlx::core::scheduler::scheduler(command_encoder);
      if (v53)
      {
        v55 = *(v54[1] + 8 * *command_encoder);
        std::mutex::lock(v55);
        if (*(v55 + 160) != 1)
        {
          v56 = *(v55 + 72);
          v57 = *(v55 + 80);
          v58 = 16 * (v57 - v56) - 1;
          if (v57 == v56)
          {
            v58 = 0;
          }

          if (v58 == *(v55 + 104) + *(v55 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v55 + 64));
            v56 = *(v55 + 72);
            v57 = *(v55 + 80);
          }

          if (v57 == v56)
          {
            v60 = 0;
          }

          else
          {
            v59 = *(v55 + 104) + *(v55 + 96);
            v60 = *(v56 + ((v59 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v59 & 0x7F);
          }

          *(v60 + 24) = 0;
          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v54);
      v141[0] = *command_encoder;
      LODWORD(v141[1]) = *(command_encoder + 2);
      v80 = *(mlx::core::scheduler::scheduler(v79)[1] + 8 * *command_encoder);
      std::mutex::lock(v80);
      if (*(v80 + 160) != 1)
      {
        v81 = *(v80 + 72);
        v82 = *(v80 + 80);
        v83 = 16 * (v82 - v81) - 1;
        if (v82 == v81)
        {
          v83 = 0;
        }

        if (v83 == *(v80 + 104) + *(v80 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v80 + 64));
          v81 = *(v80 + 72);
          v82 = *(v80 + 80);
        }

        if (v82 == v81)
        {
          v85 = 0;
        }

        else
        {
          v84 = *(v80 + 104) + *(v80 + 96);
          v85 = *(v81 + ((v84 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v84 & 0x7F);
        }

        *(v85 + 24) = 0;
        operator new();
      }

      v125 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v125, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v125, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v20 == 12)
    {
      v30 = *(a1 + 8);
      v31 = *(a1 + 16);
      if (*(a1 + 20) == 1)
      {
        v32 = mlx::core::cpu::get_command_encoder(v30, v31);
        v33 = (*(v32 + 10) + 1) % 10;
        *(v32 + 10) = v33;
        v34 = mlx::core::scheduler::scheduler(v32);
        if (v33)
        {
          v35 = *(v34[1] + 8 * *v32);
          std::mutex::lock(v35);
          if (*(v35 + 160) != 1)
          {
            v36 = *(v35 + 72);
            v37 = *(v35 + 80);
            v38 = 16 * (v37 - v36) - 1;
            if (v37 == v36)
            {
              v38 = 0;
            }

            if (v38 == *(v35 + 104) + *(v35 + 96))
            {
              std::deque<std::function<void ()(void)>>::__add_back_capacity((v35 + 64));
              v36 = *(v35 + 72);
              v37 = *(v35 + 80);
            }

            if (v37 == v36)
            {
              v40 = 0;
            }

            else
            {
              v39 = *(v35 + 104) + *(v35 + 96);
              v40 = *(v36 + ((v39 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v39 & 0x7F);
            }

            *(v40 + 24) = 0;
            operator new();
          }

          v127 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v127, "Cannot enqueue work after stream is stopped.");
          __cxa_throw(v127, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        mlx::core::scheduler::Scheduler::notify_new_task(v34);
        v141[0] = *v32;
        LODWORD(v141[1]) = *(v32 + 2);
        v109 = *(mlx::core::scheduler::scheduler(v108)[1] + 8 * *v32);
        std::mutex::lock(v109);
        if (*(v109 + 160) != 1)
        {
          v110 = *(v109 + 72);
          v111 = *(v109 + 80);
          v112 = 16 * (v111 - v110) - 1;
          if (v111 == v110)
          {
            v112 = 0;
          }

          if (v112 == *(v109 + 104) + *(v109 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v109 + 64));
            v110 = *(v109 + 72);
            v111 = *(v109 + 80);
          }

          if (v111 == v110)
          {
            v114 = 0;
          }

          else
          {
            v113 = *(v109 + 104) + *(v109 + 96);
            v114 = *(v110 + ((v113 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v113 & 0x7F);
          }

          *(v114 + 24) = 0;
          operator new();
        }

        v133 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v133, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v133, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v70 = mlx::core::cpu::get_command_encoder(v30, v31);
      v71 = (*(v70 + 10) + 1) % 10;
      *(v70 + 10) = v71;
      v72 = mlx::core::scheduler::scheduler(v70);
      if (v71)
      {
        v73 = *(v72[1] + 8 * *v70);
        std::mutex::lock(v73);
        if (*(v73 + 160) != 1)
        {
          v74 = *(v73 + 72);
          v75 = *(v73 + 80);
          v76 = 16 * (v75 - v74) - 1;
          if (v75 == v74)
          {
            v76 = 0;
          }

          if (v76 == *(v73 + 104) + *(v73 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v73 + 64));
            v74 = *(v73 + 72);
            v75 = *(v73 + 80);
          }

          if (v75 == v74)
          {
            v78 = 0;
          }

          else
          {
            v77 = *(v73 + 104) + *(v73 + 96);
            v78 = *(v74 + ((v77 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v77 & 0x7F);
          }

          *(v78 + 24) = 0;
          operator new();
        }

        v130 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v130, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v130, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v72);
      v141[0] = *v70;
      LODWORD(v141[1]) = *(v70 + 2);
      v116 = *(mlx::core::scheduler::scheduler(v115)[1] + 8 * *v70);
      std::mutex::lock(v116);
      if (*(v116 + 160) != 1)
      {
        v117 = *(v116 + 72);
        v118 = *(v116 + 80);
        v119 = 16 * (v118 - v117) - 1;
        if (v118 == v117)
        {
          v119 = 0;
        }

        if (v119 == *(v116 + 104) + *(v116 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v116 + 64));
          v117 = *(v116 + 72);
          v118 = *(v116 + 80);
        }

        if (v118 == v117)
        {
          v121 = 0;
        }

        else
        {
          v120 = *(v116 + 104) + *(v116 + 96);
          v121 = *(v117 + ((v120 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v120 & 0x7F);
        }

        *(v121 + 24) = 0;
        operator new();
      }

      v134 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v134, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v134, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    if (v20 == 9)
    {
      v41 = *(a1 + 8);
      v42 = *(a1 + 16);
      if (*(a1 + 20) == 1)
      {
        v43 = mlx::core::cpu::get_command_encoder(v41, v42);
        v44 = (*(v43 + 10) + 1) % 10;
        *(v43 + 10) = v44;
        v45 = mlx::core::scheduler::scheduler(v43);
        if (v44)
        {
          v46 = *(v45[1] + 8 * *v43);
          std::mutex::lock(v46);
          if (*(v46 + 160) != 1)
          {
            v47 = *(v46 + 72);
            v48 = *(v46 + 80);
            v49 = 16 * (v48 - v47) - 1;
            if (v48 == v47)
            {
              v49 = 0;
            }

            if (v49 == *(v46 + 104) + *(v46 + 96))
            {
              std::deque<std::function<void ()(void)>>::__add_back_capacity((v46 + 64));
              v47 = *(v46 + 72);
              v48 = *(v46 + 80);
            }

            if (v48 == v47)
            {
              v51 = 0;
            }

            else
            {
              v50 = *(v46 + 104) + *(v46 + 96);
              v51 = *(v47 + ((v50 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v50 & 0x7F);
            }

            *(v51 + 24) = 0;
            operator new();
          }

          v128 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v128, "Cannot enqueue work after stream is stopped.");
          __cxa_throw(v128, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        mlx::core::scheduler::Scheduler::notify_new_task(v45);
        v141[0] = *v43;
        LODWORD(v141[1]) = *(v43 + 2);
        v95 = *(mlx::core::scheduler::scheduler(v94)[1] + 8 * *v43);
        std::mutex::lock(v95);
        if (*(v95 + 160) != 1)
        {
          v96 = *(v95 + 72);
          v97 = *(v95 + 80);
          v98 = 16 * (v97 - v96) - 1;
          if (v97 == v96)
          {
            v98 = 0;
          }

          if (v98 == *(v95 + 104) + *(v95 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v95 + 64));
            v96 = *(v95 + 72);
            v97 = *(v95 + 80);
          }

          if (v97 == v96)
          {
            v100 = 0;
          }

          else
          {
            v99 = *(v95 + 104) + *(v95 + 96);
            v100 = *(v96 + ((v99 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v99 & 0x7F);
          }

          *(v100 + 24) = 0;
          operator new();
        }

        v131 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v131, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v131, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v61 = mlx::core::cpu::get_command_encoder(v41, v42);
      v62 = (*(v61 + 10) + 1) % 10;
      *(v61 + 10) = v62;
      v63 = mlx::core::scheduler::scheduler(v61);
      if (v62)
      {
        v64 = *(v63[1] + 8 * *v61);
        std::mutex::lock(v64);
        if (*(v64 + 160) != 1)
        {
          v65 = *(v64 + 72);
          v66 = *(v64 + 80);
          v67 = 16 * (v66 - v65) - 1;
          if (v66 == v65)
          {
            v67 = 0;
          }

          if (v67 == *(v64 + 104) + *(v64 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v64 + 64));
            v65 = *(v64 + 72);
            v66 = *(v64 + 80);
          }

          if (v66 == v65)
          {
            v69 = 0;
          }

          else
          {
            v68 = *(v64 + 104) + *(v64 + 96);
            v69 = *(v65 + ((v68 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v68 & 0x7F);
          }

          *(v69 + 24) = 0;
          operator new();
        }

        v129 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v129, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v129, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v63);
      v141[0] = *v61;
      LODWORD(v141[1]) = *(v61 + 2);
      v102 = *(mlx::core::scheduler::scheduler(v101)[1] + 8 * *v61);
      std::mutex::lock(v102);
      if (*(v102 + 160) != 1)
      {
        v103 = *(v102 + 72);
        v104 = *(v102 + 80);
        v105 = 16 * (v104 - v103) - 1;
        if (v104 == v103)
        {
          v105 = 0;
        }

        if (v105 == *(v102 + 104) + *(v102 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v102 + 64));
          v103 = *(v102 + 72);
          v104 = *(v102 + 80);
        }

        if (v104 == v103)
        {
          v107 = 0;
        }

        else
        {
          v106 = *(v102 + 104) + *(v102 + 96);
          v107 = *(v103 + ((v106 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v106 & 0x7F);
        }

        *(v107 + 24) = 0;
        operator new();
      }

      v132 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v132, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v132, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v20 == 10)
    {
      v21 = mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
      v22 = (*(v21 + 10) + 1) % 10;
      *(v21 + 10) = v22;
      v23 = mlx::core::scheduler::scheduler(v21);
      if (v22)
      {
        v24 = *(v23[1] + 8 * *v21);
        std::mutex::lock(v24);
        if (*(v24 + 160) != 1)
        {
          v25 = *(v24 + 72);
          v26 = *(v24 + 80);
          v27 = 16 * (v26 - v25) - 1;
          if (v26 == v25)
          {
            v27 = 0;
          }

          if (v27 == *(v24 + 104) + *(v24 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v24 + 64));
            v25 = *(v24 + 72);
            v26 = *(v24 + 80);
          }

          if (v26 == v25)
          {
            v29 = 0;
          }

          else
          {
            v28 = *(v24 + 104) + *(v24 + 96);
            v29 = *(v25 + ((v28 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v28 & 0x7F);
          }

          *(v29 + 24) = 0;
          operator new();
        }

        v123 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v123, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v123, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v23);
      v141[0] = *v21;
      LODWORD(v141[1]) = *(v21 + 2);
      v87 = *(mlx::core::scheduler::scheduler(v86)[1] + 8 * *v21);
      std::mutex::lock(v87);
      if (*(v87 + 160) != 1)
      {
        v88 = *(v87 + 72);
        v89 = *(v87 + 80);
        v90 = 16 * (v89 - v88) - 1;
        if (v89 == v88)
        {
          v90 = 0;
        }

        if (v90 == *(v87 + 104) + *(v87 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v87 + 64));
          v88 = *(v87 + 72);
          v89 = *(v87 + 80);
        }

        if (v89 == v88)
        {
          v92 = 0;
        }

        else
        {
          v91 = *(v87 + 104) + *(v87 + 96);
          v92 = *(v88 + ((v91 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v91 & 0x7F);
        }

        *(v92 + 24) = 0;
        operator new();
      }

      v126 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v126, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v126, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v122 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v122, "[softmax] Only defined for floating point types.");
  __cxa_throw(v122, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A3FBF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_free_exception(v20);
  std::mutex::unlock(v19);
  mlx::core::array::~array(&a10);
  _Unwind_Resume(a1);
}

void mlx::core::Softmax::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A3FC0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIffEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF38D8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIffEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIffEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::softmax<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *a1;
    v5 = vdupq_n_s32(0x3FB8AA3Bu);
    v6 = vdupq_n_s32(0x3920FDDEu);
    v7 = vdupq_n_s32(0x3AAF9F29u);
    v8 = vdupq_n_s32(0x3C1D96A6u);
    v9 = vdupq_n_s32(0x3D635774u);
    v10 = vdupq_n_s32(0x3E75FDEEu);
    v11 = vdupq_n_s32(0x3F317218u);
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V28.4S, #1.0 }

    v18 = vdupq_n_s32(0x42B00000u);
    v19 = vdupq_n_s32(0xC2B00000);
    LODWORD(v20) = *(a1 + 16);
    v21.i64[0] = 0x7F0000007FLL;
    v21.i64[1] = 0x7F0000007FLL;
    v22 = vnegq_f32(v21);
    v67 = v6;
    v68 = v5;
    v65 = v8;
    v66 = v7;
    v63 = v10;
    v64 = v9;
    v61 = _Q28;
    v62 = v11;
    v59 = v19;
    v60 = v18;
    v58 = v22;
    while (1)
    {
      v23 = v20;
      v24.i64[0] = 0x7F0000007FLL;
      v24.i64[1] = 0x7F0000007FLL;
      v25.i64[0] = 0x7F0000007FLL;
      v25.i64[1] = 0x7F0000007FLL;
      v26 = v20;
      v27 = v4;
      if (v20 >= 8)
      {
        v27 = v4;
        v26 = v20;
        do
        {
          v29 = *v27;
          v28 = *(v27 + 1);
          v27 += 2;
          v24 = vmaxnmq_f32(v29, v24);
          v25 = vmaxnmq_f32(v28, v25);
          v26 -= 8;
        }

        while (v26 > 7);
      }

      for (*&v1 = vmaxvq_f32(vmaxnmq_f32(v24, v25)); v26; --v26)
      {
        v30 = *v27;
        v27 = (v27 + 4);
        v31 = v30;
        if (*&v1 < v30)
        {
          *&v1 = v31;
        }
      }

      v32 = *(a1 + 8);
      v33 = 0uLL;
      if (v20 < 8)
      {
        v35 = 0uLL;
      }

      else
      {
        v34 = vdupq_lane_s32(*&v1, 0);
        v35 = 0uLL;
        do
        {
          v37 = *v4;
          v36 = *(v4 + 1);
          v4 += 2;
          v38 = vsubq_f32(v37, v34);
          v39 = vsubq_f32(v36, v34);
          v40 = vmulq_f32(v39, v5);
          v41 = vmulq_f32(v38, v5);
          v42 = vrndmq_f32(vaddq_f32(v40, v12));
          v43 = vrndmq_f32(vaddq_f32(v41, v12));
          v44 = vsubq_f32(v41, v43);
          v45 = vsubq_f32(v40, v42);
          v46 = vbicq_s8(vbslq_s8(vcgtq_f32(v38, v18), v22, vbslq_s8(vceqq_f32(v38, v38), vmulq_f32(vmlaq_f32(_Q28, v44, vmlaq_f32(v11, v44, vmlaq_f32(v10, v44, vmlaq_f32(v9, v44, vmlaq_f32(v8, v44, vmlaq_f32(v7, v6, v44)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v43), 0x17uLL), _Q28)), v38)), vcgtq_f32(v19, v38));
          v47 = vbicq_s8(vbslq_s8(vcgtq_f32(v39, v18), v22, vbslq_s8(vceqq_f32(v39, v39), vmulq_f32(vmlaq_f32(_Q28, v45, vmlaq_f32(v11, v45, vmlaq_f32(v10, v45, vmlaq_f32(v9, v45, vmlaq_f32(v8, v45, vmlaq_f32(v7, v6, v45)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v42), 0x17uLL), _Q28)), v39)), vcgtq_f32(v19, v39));
          *v32 = v46;
          v32[1] = v47;
          v32 += 2;
          v35 = vaddq_f32(v35, v47);
          v33 = vaddq_f32(v33, v46);
          v23 -= 8;
        }

        while (v23 > 7);
      }

      v48 = vaddq_f32(v33, v35);
      v49 = vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)));
      if (v23)
      {
        v69 = v1;
        do
        {
          --v23;
          v50 = *v4;
          v4 = (v4 + 4);
          v51 = expf(v50 - *&v1);
          v1 = v69;
          v32->f32[0] = v51;
          v32 = (v32 + 4);
          v49 = v49 + v51;
        }

        while (v23);
      }

      v52 = *(a1 + 8);
      v53 = *(a1 + 16);
      v54 = 1.0 / v49;
      if (v53 >= 8)
      {
        break;
      }

      v6 = v67;
      v5 = v68;
      v8 = v65;
      v7 = v66;
      v10 = v63;
      v9 = v64;
      _Q28 = v61;
      v11 = v62;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v19 = v59;
      v18 = v60;
      v22 = v58;
      if (*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v3;
      v56 = *(a1 + 20);
      v20 = *(a1 + 16);
      v4 = (*a1 + 4 * v20);
      v57 = *(a1 + 8) + 4 * v20;
      *a1 = v4;
      *(a1 + 8) = v57;
      if (v3 >= v56)
      {
        return;
      }
    }

    v6 = v67;
    v5 = v68;
    v8 = v65;
    v7 = v66;
    v10 = v63;
    v9 = v64;
    _Q28 = v61;
    v11 = v62;
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    v19 = v59;
    v18 = v60;
    v22 = v58;
    do
    {
      v55 = vmulq_n_f32(v52[1], v54);
      *v52 = vmulq_n_f32(*v52, v54);
      v52[1] = v55;
      v52 += 2;
      v53 -= 8;
    }

    while (v53 > 7);
    if (!v53)
    {
      goto LABEL_23;
    }

    do
    {
LABEL_22:
      v52->f32[0] = v54 * v52->f32[0];
      v52 = (v52 + 4);
      --v53;
    }

    while (v53);
    goto LABEL_23;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3958;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhfEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3A50;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhfEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhfEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::softmax<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *a1;
    v5 = vdupq_n_s32(0x3FB8AA3Bu);
    v6 = vdupq_n_s32(0x3920FDDEu);
    v7 = vdupq_n_s32(0x3AAF9F29u);
    v8 = vdupq_n_s32(0x3C1D96A6u);
    v9 = vdupq_n_s32(0x3D635774u);
    v10 = vdupq_n_s32(0x3E75FDEEu);
    v11 = vdupq_n_s32(0x3F317218u);
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V28.4S, #1.0 }

    v18 = vdupq_n_s32(0x42B00000u);
    v19 = vdupq_n_s32(0xC2B00000);
    LODWORD(v20) = *(a1 + 16);
    v21.i64[0] = 0x7F0000007FLL;
    v21.i64[1] = 0x7F0000007FLL;
    v22 = vnegq_f32(v21);
    v81 = v5;
    v79 = v7;
    v80 = v6;
    v77 = v9;
    v78 = v8;
    v75 = v11;
    v76 = v10;
    v73 = v18;
    v74 = _Q28;
    v71 = v22;
    v72 = v19;
    do
    {
      v23 = v20;
      v24.i64[0] = 0x7F0000007FLL;
      v24.i64[1] = 0x7F0000007FLL;
      v25.i64[0] = 0x7F0000007FLL;
      v25.i64[1] = 0x7F0000007FLL;
      v26 = v20;
      v27 = v4;
      if (v20 >= 8)
      {
        v27 = v4;
        v26 = v20;
        do
        {
          v28 = *v27++;
          v24 = vmaxnmq_f32(vcvtq_f32_f16(*v28.i8), v24);
          v25 = vmaxnmq_f32(vcvt_hight_f32_f16(v28), v25);
          v26 -= 8;
        }

        while (v26 > 7);
      }

      for (*&v1 = vmaxvq_f32(vmaxnmq_f32(v24, v25)); v26; --v26)
      {
        v29 = v27->i16[0];
        v27 = (v27 + 2);
        _H0 = v29;
        __asm { FCVT            S0, H0 }

        if (*&v1 < _S0)
        {
          *&v1 = _S0;
        }
      }

      v32 = 0uLL;
      v33 = 0uLL;
      v34 = v20;
      v35 = v4;
      if (v20 >= 8)
      {
        v36 = vdupq_lane_s32(*&v1, 0);
        v35 = v4;
        v34 = v20;
        do
        {
          v37 = *v35++;
          v38 = vsubq_f32(vcvtq_f32_f16(*v37.i8), v36);
          v39 = vsubq_f32(vcvt_hight_f32_f16(v37), v36);
          v40 = vmulq_f32(v39, v5);
          v41 = vmulq_f32(v38, v5);
          v42 = vrndmq_f32(vaddq_f32(v40, v12));
          v43 = vrndmq_f32(vaddq_f32(v41, v12));
          v44 = vsubq_f32(v41, v43);
          v45 = vsubq_f32(v40, v42);
          v33 = vaddq_f32(v33, vbicq_s8(vbslq_s8(vcgtq_f32(v39, v18), v22, vbslq_s8(vceqq_f32(v39, v39), vmulq_f32(vmlaq_f32(_Q28, v45, vmlaq_f32(v11, v45, vmlaq_f32(v10, v45, vmlaq_f32(v9, v45, vmlaq_f32(v8, v45, vmlaq_f32(v7, v6, v45)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v42), 0x17uLL), _Q28)), v39)), vcgtq_f32(v19, v39)));
          v32 = vaddq_f32(v32, vbicq_s8(vbslq_s8(vcgtq_f32(v38, v18), v22, vbslq_s8(vceqq_f32(v38, v38), vmulq_f32(vmlaq_f32(_Q28, v44, vmlaq_f32(v11, v44, vmlaq_f32(v10, v44, vmlaq_f32(v9, v44, vmlaq_f32(v8, v44, vmlaq_f32(v7, v6, v44)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v43), 0x17uLL), _Q28)), v38)), vcgtq_f32(v19, v38)));
          v34 -= 8;
        }

        while (v34 > 7);
      }

      v46 = vaddq_f32(v32, v33);
      v47 = vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)));
      for (i = v1; v34; v47 = v47 + v51)
      {
        --v34;
        v48 = v35->i16[0];
        v35 = (v35 + 2);
        _H0 = v48;
        __asm { FCVT            S0, H0 }

        v51 = expf(_S0 - *&v1);
        v1 = i;
      }

      v52 = *(a1 + 8);
      if (v23 >= 8)
      {
        v53 = vdupq_lane_s32(*&v1, 0);
        v54.i64[0] = 0x3F0000003F000000;
        v54.i64[1] = 0x3F0000003F000000;
        do
        {
          v55 = *v4++;
          v56 = vsubq_f32(vcvtq_f32_f16(*v55.i8), v53);
          v57 = vsubq_f32(vcvt_hight_f32_f16(v55), v53);
          v58 = vmulq_f32(v57, v81);
          v59 = vmulq_f32(v56, v81);
          v60 = vrndmq_f32(vaddq_f32(v59, v54));
          v61 = vrndmq_f32(vaddq_f32(v58, v54));
          v62 = vsubq_f32(v59, v60);
          v63 = vsubq_f32(v58, v61);
          *v52++ = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_n_f32(vbicq_s8(vbslq_s8(vcgtq_f32(v56, v73), v71, vbslq_s8(vceqq_f32(v56, v56), vmulq_f32(vmlaq_f32(v74, v62, vmlaq_f32(v75, v62, vmlaq_f32(v76, v62, vmlaq_f32(v77, v62, vmlaq_f32(v78, v62, vmlaq_f32(v79, v80, v62)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v60), 0x17uLL), v74)), v56)), vcgtq_f32(v72, v56)), 1.0 / v47)), vmulq_n_f32(vbicq_s8(vbslq_s8(vcgtq_f32(v57, v73), v71, vbslq_s8(vceqq_f32(v57, v57), vmulq_f32(vmlaq_f32(v74, v63, vmlaq_f32(v75, v63, vmlaq_f32(v76, v63, vmlaq_f32(v77, v63, vmlaq_f32(v78, v63, vmlaq_f32(v79, v80, v63)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v61), 0x17uLL), v74)), v57)), vcgtq_f32(v72, v57)), 1.0 / v47));
          v23 -= 8;
        }

        while (v23 > 7);
      }

      for (; v23; v52 = (v52 + 2))
      {
        --v23;
        v64 = v4->i16[0];
        v4 = (v4 + 2);
        _H0 = v64;
        __asm { FCVT            S0, H0 }

        v67 = expf(_S0 - *&v1);
        v1 = i;
        _S0 = (1.0 / v47) * v67;
        __asm { FCVT            H0, S0 }

        v52->i16[0] = LOWORD(_S0);
      }

      ++v3;
      v69 = *(a1 + 20);
      v20 = *(a1 + 16);
      v4 = (*a1 + 2 * v20);
      v70 = *(a1 + 8) + 2 * v20;
      *a1 = v4;
      *(a1 + 8) = v70;
      v5 = v81;
      v7 = v79;
      v6 = v80;
      v9 = v77;
      v8 = v78;
      v11 = v75;
      v10 = v76;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v18 = v73;
      _Q28 = v74;
      v22 = v71;
      v19 = v72;
    }

    while (v3 < v69);
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3AD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhDhEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3BC8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhDhEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhDhEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::softmax<half,half>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 20) >= 1)
  {
    v2 = 0;
    v3 = *a1;
    v63 = vdupq_n_s32(0x3920FDDEu);
    v64 = vdupq_n_s32(0x3FB8AA3Bu);
    v61 = vdupq_n_s32(0x3C1D96A6u);
    v62 = vdupq_n_s32(0x3AAF9F29u);
    v59 = vdupq_n_s32(0x3E75FDEEu);
    v60 = vdupq_n_s32(0x3D635774u);
    v57 = vdupq_n_s16(0x5580u);
    v58 = vdupq_n_s32(0x3F317218u);
    v4 = *(a1 + 16);
    __asm { FMOV            V0.4S, #1.0 }

    v55 = _Q0;
    v56 = vdupq_n_s16(0xD580u);
    do
    {
      v10 = v4;
      v11.i64[0] = 0xFC00FC00FC00FC00;
      v11.i64[1] = 0xFC00FC00FC00FC00;
      if (v4 >= 8)
      {
        do
        {
          v12 = *v3++;
          v11 = vmaxnmq_f16(v12, v11);
          v10 -= 8;
        }

        while (v10 > 7);
      }

      __fmaxf16();
      if (v10)
      {
        v15 = v63;
        v14 = v64;
        v16.i64[0] = 0x3F0000003F000000;
        v16.i64[1] = 0x3F0000003F000000;
        v18 = v61;
        v17 = v62;
        v20 = v59;
        v19 = v60;
        v22 = v57;
        v21 = v58;
        v24 = v55;
        v23 = v56;
        v25.i64[0] = 0x7C007C007C007C00;
        v25.i64[1] = 0x7C007C007C007C00;
        do
        {
          v26 = *v3->i16;
          v3 = (v3 + 2);
          v27 = v26;
          if (*_D0.i16 < v26)
          {
            *_D0.i16 = v27;
          }

          --v10;
        }

        while (v10);
      }

      else
      {
        v15 = v63;
        v14 = v64;
        v16.i64[0] = 0x3F0000003F000000;
        v16.i64[1] = 0x3F0000003F000000;
        v18 = v61;
        v17 = v62;
        v20 = v59;
        v19 = v60;
        v22 = v57;
        v21 = v58;
        v24 = v55;
        v23 = v56;
        v25.i64[0] = 0x7C007C007C007C00;
        v25.i64[1] = 0x7C007C007C007C00;
      }

      v29 = *a1;
      v28 = *(a1 + 8);
      v30 = *(a1 + 16);
      v31 = 0uLL;
      if (v30 >= 8)
      {
        v32 = vdupq_lane_s16(_D0, 0);
        do
        {
          v33 = *v29++;
          v34 = vsubq_f16(v33, v32);
          v35 = vmulq_f32(vcvt_hight_f32_f16(v34), v14);
          v36 = vmulq_f32(vcvtq_f32_f16(*v34.i8), v14);
          v37 = vrndmq_f32(vaddq_f32(v35, v16));
          v38 = vrndmq_f32(vaddq_f32(v36, v16));
          v39 = vsubq_f32(v36, v38);
          v40 = vsubq_f32(v35, v37);
          v41 = vbicq_s8(vbslq_s8(vcgtq_f16(v34, v22), v25, vbslq_s8(vceqq_f16(v34, v34), vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vmlaq_f32(v24, v39, vmlaq_f32(v21, v39, vmlaq_f32(v20, v39, vmlaq_f32(v19, v39, vmlaq_f32(v18, v39, vmlaq_f32(v17, v15, v39)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v38), 0x17uLL), v24))), vmulq_f32(vmlaq_f32(v24, v40, vmlaq_f32(v21, v40, vmlaq_f32(v20, v40, vmlaq_f32(v19, v40, vmlaq_f32(v18, v40, vmlaq_f32(v17, v15, v40)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v37), 0x17uLL), v24))), v34)), vcgtq_f16(v23, v34));
          *v28++ = v41;
          v31 = vaddq_f16(v31, v41);
          v30 -= 8;
        }

        while (v30 > 7);
      }

      v42 = vadd_f16(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
      v43 = vaddv_f16(vadd_f16(v42, vdup_lane_s32(v42, 1)));
      if (v30)
      {
        __asm { FCVT            S11, H0 }

        do
        {
          --v30;
          v45 = v29->i16[0];
          v29 = (v29 + 2);
          _H0 = v45;
          __asm { FCVT            S0, H0 }

          _S0 = expf(_S0 - _S11);
          __asm { FCVT            H0, S0 }

          v28->i16[0] = LOWORD(_S0);
          v28 = (v28 + 2);
          v43 = v43 + *&_S0;
        }

        while (v30);
      }

      v49 = *(a1 + 8);
      v50 = *(a1 + 16);
      v51 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / v43;
      if (v50 >= 8)
      {
        do
        {
          *v49 = vmulq_n_f16(*v49, v51);
          ++v49;
          v50 -= 8;
        }

        while (v50 > 7);
      }

      for (; v50; --v50)
      {
        *v49->i16 = v51 * *v49->i16;
        v49 = (v49 + 2);
      }

      ++v2;
      v52 = *(a1 + 8);
      v53 = *(a1 + 20);
      v54 = *(a1 + 16);
      v3 = (*a1 + 2 * v54);
      *a1 = v3;
      *(a1 + 8) = v52 + 2 * v54;
      v4 = v54;
    }

    while (v2 < v53);
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<half,half>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<half,half>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3C48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<half,half>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<half,half>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16EfEEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3D40;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16EfEEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16EfEEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(unsigned __int16 **a1)
{
  if (*(a1 + 5) >= 1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = *(a1 + 4);
    do
    {
      if (v4)
      {
        v5 = v4;
        v6 = -INFINITY;
        v7 = v3;
        v8 = v5;
        do
        {
          v9 = *v7++;
          LODWORD(v10) = v9 << 16;
          if (v6 < COERCE_FLOAT(v9 << 16))
          {
            v6 = v10;
          }

          --v8;
        }

        while (v8);
        v11 = 0.0;
        do
        {
          v12 = *v3++;
          v11 = v11 + mlx::core::simd::exp<float,1>(COERCE_FLOAT(v12 << 16) - v6);
          --v5;
        }

        while (v5);
        v13 = *(a1 + 4);
        v3 = *a1;
        v14 = a1[1];
        if (!v13)
        {
          v4 = 0;
          goto LABEL_16;
        }

        v15 = 1.0 / v11;
        do
        {
          v16 = v15 * mlx::core::simd::exp<float,1>(COERCE_FLOAT(*v3 << 16) - v6);
          *v14++ = (LODWORD(v16) + (HIWORD(LODWORD(v16)) & 1u) + 0x7FFF) >> 16;
          ++v3;
          --v13;
        }

        while (v13);
        v4 = *(a1 + 4);
        v3 = *a1;
      }

      v14 = a1[1];
LABEL_16:
      ++v2;
      v3 += v4;
      *a1 = v3;
      a1[1] = &v14[v4];
    }

    while (v2 < *(a1 + 5));
  }
}

float mlx::core::simd::exp<float,1>(float a1)
{
  v1 = floor((a1 * 1.4427) + 0.5);
  v2 = (a1 * 1.4427) - v1;
  v3 = ((((((((((((v2 * 0.00015353) + 0.0013399) * v2) + 0.0096184) * v2) + 0.055503) * v2) + 0.24023) * v2) + 0.69315) * v2) + 1.0) * COERCE_FLOAT((v1 << 23) + 1065353216);
  if (a1 > 88.0)
  {
    v3 = INFINITY;
  }

  v4 = a1 < -88.0;
  result = 0.0;
  if (!v4)
  {
    return v3;
  }

  return result;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3DC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16ES9_EEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3EB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16ES9_EEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16ES9_EEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 **std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(unsigned __int16 **result)
{
  if (*(result + 5) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = *result;
    v4 = *(result + 4);
    do
    {
      if (v4)
      {
        v5 = v4;
        v6 = 65408;
        v7 = v3;
        v8 = v5;
        do
        {
          v10 = *v7++;
          v9 = v10;
          if (COERCE_FLOAT(v10 << 16) > COERCE_FLOAT(v6 << 16))
          {
            v6 = v9;
          }

          --v8;
        }

        while (v8);
        v11 = 0;
        LODWORD(v12) = v6 << 16;
        v13 = *(v1 + 8);
        do
        {
          result = mlx::core::simd::exp<mlx::core::_MLX_BFloat16,1>((COERCE_INT(COERCE_FLOAT(*v3 << 16) - v12) + (HIWORD(COERCE_UNSIGNED_INT(COERCE_FLOAT(*v3 << 16) - v12)) & 1) + 0x7FFF) >> 16);
          *v13 = result;
          v11 = (COERCE_INT(COERCE_FLOAT(v11 << 16) + COERCE_FLOAT(result << 16)) + (HIWORD(COERCE_UNSIGNED_INT(COERCE_FLOAT(v11 << 16) + COERCE_FLOAT(result << 16))) & 1) + 0x7FFF) >> 16;
          ++v3;
          ++v13;
          --v5;
        }

        while (v5);
        LODWORD(v14) = v11 << 16;
      }

      else
      {
        v14 = 0.0;
      }

      LODWORD(v15) = (COERCE_INT(1.0 / v14) + (HIWORD(COERCE_UNSIGNED_INT(1.0 / v14)) & 1) + 0x7FFF) & 0xFFFF0000;
      v16 = *(v1 + 8);
      v4 = *(v1 + 16);
      if (v4)
      {
        v17 = *(v1 + 8);
        v18 = v4;
        do
        {
          *v17 = (COERCE_INT(v15 * COERCE_FLOAT(*v17 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v15 * COERCE_FLOAT(*v17 << 16))) & 1) + 0x7FFF) >> 16;
          ++v17;
          --v18;
        }

        while (v18);
      }

      ++v2;
      v3 = (*v1 + 2 * v4);
      *v1 = v3;
      *(v1 + 8) = v16 + 2 * v4;
    }

    while (v2 < *(v1 + 20));
  }

  return result;
}

uint64_t mlx::core::simd::exp<mlx::core::_MLX_BFloat16,1>(int a1)
{
  v1 = COERCE_FLOAT(a1 << 16) * 1.4427;
  v2 = floor(v1 + 0.5);
  v3 = v1 - v2;
  v4 = ((((((((((((v3 * 0.00015353) + 0.0013399) * v3) + 0.0096184) * v3) + 0.055503) * v3) + 0.24023) * v3) + 0.69315) * v3) + 1.0) * COERCE_FLOAT((v2 << 23) + 1065353216);
  if (COERCE_FLOAT(a1 << 16) > 88.0)
  {
    v4 = INFINITY;
  }

  v5 = 0.0;
  if (COERCE_FLOAT(a1 << 16) >= -88.0)
  {
    v5 = v4;
  }

  return (LODWORD(v5) + (HIWORD(LODWORD(v5)) & 1u) + 0x7FFF) >> 16;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3F38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIddEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4030;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIddEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIddEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::softmax<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *a1;
    v65 = vdupq_n_s64(0xFFF0000000000000);
    v5 = vdupq_n_s32(0x3FB8AA3Bu);
    v6 = vdupq_n_s32(0x3920FDDEu);
    v7 = vdupq_n_s32(0x3AAF9F29u);
    v8 = vdupq_n_s32(0x3C1D96A6u);
    v9 = vdupq_n_s32(0x3D635774u);
    v10 = vdupq_n_s32(0x3E75FDEEu);
    v11 = vdupq_n_s32(0x3F317218u);
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V24.4S, #1.0 }

    v18 = vdupq_n_s32(0x42B00000u);
    v19 = vdupq_n_s32(0xC2B00000);
    LODWORD(v20) = *(a1 + 16);
    v21.i64[0] = 0x7F0000007FLL;
    v21.i64[1] = 0x7F0000007FLL;
    v22 = vnegq_f32(v21);
    v63 = v6;
    v64 = v5;
    v61 = v8;
    v62 = v7;
    v59 = v10;
    v60 = v9;
    v57 = _Q24;
    v58 = v11;
    v55 = v19;
    v56 = v18;
    v54 = v22;
    while (1)
    {
      v23 = v20;
      v24 = v65;
      v25 = v65;
      v26 = v20;
      v27 = v4;
      if (v20 >= 4)
      {
        v27 = v4;
        v26 = v20;
        v24 = v65;
        v25 = v65;
        do
        {
          v29 = *v27;
          v28 = *(v27 + 1);
          v27 += 2;
          v25 = vmaxnmq_f64(v29, v25);
          v24 = vmaxnmq_f64(v28, v24);
          v26 -= 4;
        }

        while (v26 > 3);
      }

      for (*&v1 = vpmaxq_f64(vmaxnmq_f64(v25, v24)); v26; --v26)
      {
        v30 = *v27;
        v27 = (v27 + 8);
        v31 = v30;
        if (*&v1 < v30)
        {
          *&v1 = v31;
        }
      }

      v32 = *(a1 + 8);
      v33 = 0uLL;
      if (v20 < 4)
      {
        v35 = 0uLL;
      }

      else
      {
        v34 = vdupq_lane_s64(v1, 0);
        v35 = 0uLL;
        do
        {
          v36 = *v4;
          v37 = *(v4 + 1);
          v4 += 2;
          v38 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(v36, v34)), vsubq_f64(v37, v34));
          v39 = vmulq_f32(v38, v5);
          v40 = vrndmq_f32(vaddq_f32(v39, v12));
          v41 = vsubq_f32(v39, v40);
          v42 = vbicq_s8(vbslq_s8(vcgtq_f32(v38, v18), v22, vbslq_s8(vceqq_f32(v38, v38), vmulq_f32(vmlaq_f32(_Q24, v41, vmlaq_f32(v11, v41, vmlaq_f32(v10, v41, vmlaq_f32(v9, v41, vmlaq_f32(v8, v41, vmlaq_f32(v7, v6, v41)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v40), 0x17uLL), _Q24)), v38)), vcgtq_f32(v19, v38));
          v43 = vcvtq_f64_f32(*v42.f32);
          v44 = vcvt_hight_f64_f32(v42);
          *v32 = v43;
          v32[1] = v44;
          v32 += 2;
          v35 = vaddq_f64(v35, v44);
          v33 = vaddq_f64(v33, v43);
          v23 -= 4;
        }

        while (v23 > 3);
      }

      v45 = vaddvq_f64(vaddq_f64(v33, v35));
      if (v23)
      {
        v66 = v1;
        do
        {
          --v23;
          v46 = *v4;
          v4 = (v4 + 8);
          v47 = exp(v46 - *&v1);
          v1 = v66;
          v32->f64[0] = v47;
          v32 = (v32 + 8);
          v45 = v45 + v47;
        }

        while (v23);
      }

      v48 = *(a1 + 8);
      v49 = *(a1 + 16);
      v50 = 1.0 / v45;
      if (v49 >= 4)
      {
        break;
      }

      v6 = v63;
      v5 = v64;
      v8 = v61;
      v7 = v62;
      v10 = v59;
      v9 = v60;
      _Q24 = v57;
      v11 = v58;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v19 = v55;
      v18 = v56;
      v22 = v54;
      if (*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v3;
      v52 = *(a1 + 20);
      v20 = *(a1 + 16);
      v4 = (*a1 + 8 * v20);
      v53 = *(a1 + 8) + 8 * v20;
      *a1 = v4;
      *(a1 + 8) = v53;
      if (v3 >= v52)
      {
        return;
      }
    }

    v6 = v63;
    v5 = v64;
    v8 = v61;
    v7 = v62;
    v10 = v59;
    v9 = v60;
    _Q24 = v57;
    v11 = v58;
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    v19 = v55;
    v18 = v56;
    v22 = v54;
    do
    {
      v51 = vmulq_n_f64(v48[1], v50);
      *v48 = vmulq_n_f64(*v48, v50);
      v48[1] = v51;
      v48 += 2;
      v49 -= 4;
    }

    while (v49 > 3);
    if (!v49)
    {
      goto LABEL_23;
    }

    do
    {
LABEL_22:
      v48->f64[0] = v50 * v48->f64[0];
      v48 = (v48 + 8);
      --v49;
    }

    while (v49);
    goto LABEL_23;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF40B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Eigh::eval_cpu(uint64_t a1, mlx::core::array **a2, int ****a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  if (*(a1 + 48) == 1)
  {
    v5 = v4[3];
    v15[0] = v4[2];
    v15[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = *v3;
    __p = 0;
    v13 = 0;
    v14 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
    v7 = *(*v3 + 56);
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    mlx::core::array::array(v15, &__p, v7 & 0xFFFFFFFFFFLL);
    v9[0] = v10;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v9);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }

  v8 = mlx::core::allocator::malloc((*(*v4 + 60) * (*v4)[6]));
  v16[0] = &unk_286BE3468;
  v16[1] = mlx::core::allocator::free;
  v16[3] = v16;
  mlx::core::array::set_data(v4, v8, v16);
}

void sub_25A3FEB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  __cxa_free_exception(v23);
  std::mutex::unlock(v22);
  mlx::core::array::~array(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::Eigh::~Eigh(void **this)
{
  *this = &unk_286BF41A8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_286BF41A8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x25F851760);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIfEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4220;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIfEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIfEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::eigh_impl<float>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v13 = 0;
  LODWORD(v11[0]) = 0;
  LODWORD(v20) = 0;
  ssyevd_NEWLAPACK();
  v14 = v20;
  v15 = 0.0;
  v2 = mlx::core::allocator::malloc((4 * 0.0));
  v19[0] = &unk_286BE3468;
  v19[1] = mlx::core::allocator::free;
  v19[3] = v19;
  v20 = v2;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](v21, v19);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v19);
  v3 = mlx::core::allocator::malloc((4 * v14));
  v16[0] = &unk_286BE3468;
  v16[1] = mlx::core::allocator::free;
  v16[3] = v16;
  v17 = v3;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](&v18, v16);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v16);
  if (*(a1 + 24) >= (*(a1 + 20) * *(a1 + 20)))
  {
    v4 = 0;
    do
    {
      mlx::core::allocator::Buffer::raw_ptr(&v20);
      mlx::core::allocator::Buffer::raw_ptr(&v17);
      ssyevd_NEWLAPACK();
      v5 = *(a1 + 20);
      v6 = (v5 * v5);
      v7 = *(a1 + 8) + 4 * v5;
      *a1 += 4 * v6;
      *(a1 + 8) = v7;
      if (v13)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "[Eigh::eval_cpu] Eigenvalue decomposition failed with error code ", 65);
        MEMORY[0x25F851360](v8, v13);
        exception = __cxa_allocate_exception(0x10uLL);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v11, v10);
        MEMORY[0x25F851100](exception, v10);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      ++v4;
    }

    while (v4 < *(a1 + 24) / v6);
  }

  mlx::core::array::Data::~Data(&v17);
  mlx::core::array::Data::~Data(&v20);
}

void sub_25A3FF0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
      mlx::core::array::Data::~Data((v20 - 184));
      mlx::core::array::Data::~Data((v20 - 112));
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::eigh_impl<float>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::eigh_impl<float>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF42A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::eigh_impl<float>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::eigh_impl<float>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIdEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4398;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIdEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIdEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::eigh_impl<double>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v11[0] = 0;
  LODWORD(v20) = 0;
  dsyevd_NEWLAPACK();
  v14 = v20;
  v15 = 0.0;
  v2 = mlx::core::allocator::malloc((8 * 0.0));
  v19[0] = &unk_286BE3468;
  v19[1] = mlx::core::allocator::free;
  v19[3] = v19;
  v20 = v2;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](v21, v19);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v19);
  v3 = mlx::core::allocator::malloc((4 * v14));
  v16[0] = &unk_286BE3468;
  v16[1] = mlx::core::allocator::free;
  v16[3] = v16;
  v17 = v3;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](&v18, v16);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v16);
  if (*(a1 + 24) >= (*(a1 + 20) * *(a1 + 20)))
  {
    v4 = 0;
    do
    {
      mlx::core::allocator::Buffer::raw_ptr(&v20);
      mlx::core::allocator::Buffer::raw_ptr(&v17);
      dsyevd_NEWLAPACK();
      v5 = *(a1 + 20);
      v6 = (v5 * v5);
      v7 = *(a1 + 8) + 8 * v5;
      *a1 += 8 * v6;
      *(a1 + 8) = v7;
      if (v13)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "[Eigh::eval_cpu] Eigenvalue decomposition failed with error code ", 65);
        MEMORY[0x25F851360](v8, v13);
        exception = __cxa_allocate_exception(0x10uLL);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v11, v10);
        MEMORY[0x25F851100](exception, v10);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      ++v4;
    }

    while (v4 < *(a1 + 24) / v6);
  }

  mlx::core::array::Data::~Data(&v17);
  mlx::core::array::Data::~Data(&v20);
}

void sub_25A3FF67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
      mlx::core::array::Data::~Data((v20 - 184));
      mlx::core::array::Data::~Data((v20 - 112));
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::eigh_impl<double>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::eigh_impl<double>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4418;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::eigh_impl<double>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::eigh_impl<double>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::BlockMaskedMM::eval_cpu(uint64_t a1, void *a2, int ***a3)
{
  v7[150] = *MEMORY[0x277D85DE8];
  v3 = (*a3)[7];
  if (v3 == 10)
  {
    v5 = mlx::core::allocator::malloc(((*a3)[6] * BYTE4(v3)));
    v7[0] = &unk_286BE3468;
    v7[1] = mlx::core::allocator::free;
    v7[3] = v7;
    mlx::core::array::set_data(a3, v5, v7);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[BlockMaskedMM::eval] Currently only supports float32.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A400B60(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  mlx::core::array::~array(&STACK[0x278]);
  mlx::core::array::~array(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

void mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(uint64_t a1@<X0>, const void ***a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v11 = **a2;
  v12 = v10[1];
  v13 = (v12 - v11) >> 2;
  if (a4)
  {
    goto LABEL_2;
  }

  if (v12 == v11)
  {
    goto LABEL_39;
  }

  v19 = v10[3];
  v20 = v19[v13 - 2];
  v21 = v19[v13 - 1];
  if (v20 != *(v11 + v13 - 1) || v21 != 1)
  {
    if (v20 != 1)
    {
      goto LABEL_2;
    }

    if (v13 > 1)
    {
      if (v21 == *(v11 + v13 - 2))
      {
        if (a3)
        {
          v35 = 0;
          v36 = 0;
          v34 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v34, v11, v12, v13);
          v23 = (*a2)[7];
          v33 = 0;
          memset(v32, 0, sizeof(v32));
          mlx::core::array::array(&v42, &v34, v23 & 0xFFFFFFFFFFLL);
          v44 = v32;
          std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v44);
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (v34)
          {
            v35 = v34;
            operator delete(v34);
          }

          mlx::core::copy(a2, &v42, 1, *a1, *(a1 + 8));
          *a5 = 1;
          v24 = v42;
          v17 = v43;
          *(a5 + 8) = v21;
LABEL_32:
          *(a5 + 16) = v24;
LABEL_8:
          *(a5 + 24) = v17;
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          *(a5 + 32) = 1;
          mlx::core::array::~array(&v42);
          return;
        }

        *a5 = 1;
        *(a5 + 8) = v21;
        goto LABEL_34;
      }

LABEL_2:
      v30 = 0;
      v31 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v11, v12, v13);
      v14 = (*a2)[7];
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      mlx::core::array::array(&v42, &__p, v14 & 0xFFFFFFFFFFLL);
      v44 = v27;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v44);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      mlx::core::copy(a2, &v42, 2, *a1, *(a1 + 8));
      v15 = (*a2)[1];
      if (v15 == **a2)
      {
        std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
      }

      v16 = *(v15 - 1);
      *a5 = 0;
      v18 = v42;
      v17 = v43;
      *(a5 + 8) = v16;
      *(a5 + 16) = v18;
      goto LABEL_8;
    }

LABEL_39:
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  if (a3)
  {
    v40 = 0;
    v41 = 0;
    v39 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v39, v11, v12, v13);
    v25 = (*a2)[7];
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    mlx::core::array::array(&v42, &v39, v25 & 0xFFFFFFFFFFLL);
    v44 = v37;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v44);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    mlx::core::copy(a2, &v42, 1, *a1, *(a1 + 8));
    *a5 = 0;
    v24 = v42;
    v17 = v43;
    *(a5 + 8) = v20;
    goto LABEL_32;
  }

  *a5 = 0;
  *(a5 + 8) = v20;
LABEL_34:
  *(a5 + 16) = v10;
  v26 = a2[1];
  *(a5 + 24) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  *(a5 + 32) = 0;
}

void *mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(void *a1)
{
  v2 = a1[42];
  if (v2)
  {
    a1[43] = v2;
    operator delete(v2);
  }

  v3 = a1[39];
  if (v3)
  {
    a1[40] = v3;
    operator delete(v3);
  }

  v4 = a1[36];
  if (v4)
  {
    a1[37] = v4;
    operator delete(v4);
  }

  v5 = a1[33];
  if (v5)
  {
    a1[34] = v5;
    operator delete(v5);
  }

  v6 = a1[30];
  if (v6)
  {
    a1[31] = v6;
    operator delete(v6);
  }

  v7 = a1[27];
  if (v7)
  {
    a1[28] = v7;
    operator delete(v7);
  }

  v8 = a1[24];
  if (v8)
  {
    a1[25] = v8;
    operator delete(v8);
  }

  v9 = a1[21];
  if (v9)
  {
    a1[22] = v9;
    operator delete(v9);
  }

  v10 = a1[18];
  if (v10)
  {
    a1[19] = v10;
    operator delete(v10);
  }

  v11 = a1[15];
  if (v11)
  {
    a1[16] = v11;
    operator delete(v11);
  }

  return a1;
}

void mlx::core::GatherMM::eval_cpu(uint64_t a1, uint64_t *a2, int ***a3)
{
  v7[123] = *MEMORY[0x277D85DE8];
  v3 = (*a3)[7];
  if (v3 == 10)
  {
    v5 = mlx::core::allocator::malloc(((*a3)[6] * BYTE4(v3)));
    v7[0] = &unk_286BE3468;
    v7[1] = mlx::core::allocator::free;
    v7[3] = v7;
    mlx::core::array::set_data(a3, v5, v7);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[GatherMM::eval] Currently only supports float32.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A40225C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  mlx::core::array::~array(&STACK[0x298]);
  mlx::core::array::~array(&STACK[0x2B8]);
  STACK[0x320] = &STACK[0x2E0];
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&STACK[0x320]);
  _Unwind_Resume(a1);
}

void mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1::operator()(uint64_t a1@<X0>, const void ***a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = **a2;
  v7 = v5[1];
  v8 = v7 - v6;
  if (v7 == v6)
  {
    goto LABEL_21;
  }

  v9 = v8 >> 2;
  v10 = (v8 >> 2) - 2;
  v11 = (v8 >> 2) - 1;
  v12 = v5[3];
  v13 = v12[v10];
  v14 = v12[v11];
  if (v13 == v6[v11] && v14 == 1)
  {
    *a3 = 0;
    *(a3 + 8) = v13;
    goto LABEL_11;
  }

  if (v13 == 1)
  {
    if (v9 <= 1)
    {
      goto LABEL_21;
    }

    if (v14 == v6[v10])
    {
      *a3 = 1;
      *(a3 + 8) = v14;
LABEL_11:
      *(a3 + 16) = v5;
      v17 = a2[1];
      goto LABEL_18;
    }
  }

  v18 = *(a1 + 16);
  v27 = 0;
  v28 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v6, v7, v9);
  v19 = (*a2)[7];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  mlx::core::array::array(v29, &__p, v19 & 0xFFFFFFFFFFLL);
  std::vector<mlx::core::array>::push_back[abi:ne200100](v18, v29);
  mlx::core::array::~array(v29);
  v30 = v24;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v30);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  mlx::core::copy(a2, (*(*(a1 + 16) + 8) - 16), 2, *a1, *(a1 + 8));
  v20 = (*a2)[1];
  if (v20 == **a2)
  {
LABEL_21:
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *(v20 - 1);
  v22 = *(*(a1 + 16) + 8);
  *a3 = 0;
  v23 = *(v22 - 16);
  v17 = *(v22 - 8);
  *(a3 + 8) = v21;
  *(a3 + 16) = v23;
LABEL_18:
  *(a3 + 24) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }
}

void sub_25A402654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  mlx::core::array::~array((v16 - 56));
  *(v16 - 40) = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(void *a1)
{
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  v6 = a1[20];
  if (v6)
  {
    a1[21] = v6;
    operator delete(v6);
  }

  v7 = a1[17];
  if (v7)
  {
    a1[18] = v7;
    operator delete(v7);
  }

  v8 = a1[14];
  if (v8)
  {
    a1[15] = v8;
    operator delete(v8);
  }

  v9 = a1[11];
  if (v9)
  {
    a1[12] = v9;
    operator delete(v9);
  }

  return a1;
}

mlx::core::array *std::vector<mlx::core::array>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<mlx::core::array*>>,std::move_iterator<std::__wrap_iter<mlx::core::array*>>>(uint64_t *a1, mlx::core::array *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v8) >> 4)
  {
    v10 = *a1;
    v11 = a5 + ((v8 - *a1) >> 4);
    if (v11 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v9 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v26[4] = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, v14);
    }

    v23 = (16 * v15);
    v26[0] = 0;
    v26[1] = 16 * v15;
    v26[3] = 0;
    v24 = 16 * a5;
    do
    {
      *v23++ = *a3;
      *a3 = 0;
      *(a3 + 8) = 0;
      a3 += 16;
      v24 -= 16;
    }

    while (v24);
    v26[2] = 16 * v15 + 16 * a5;
    v5 = std::vector<mlx::core::array>::__swap_out_circular_buffer(a1, v26, v5);
    std::__split_buffer<mlx::core::array>::~__split_buffer(v26);
    return v5;
  }

  v16 = (v8 - a2) >> 4;
  if (v16 >= a5)
  {
    std::vector<mlx::core::array>::__move_range(a1, a2, v8, a2 + 16 * a5);
    v22 = (a3 + 16 * a5);
    v21 = a3;
    goto LABEL_18;
  }

  v17 = (v8 - a2 + a3);
  v18 = a1[1];
  if (v17 != a4)
  {
    v18 = a1[1];
    v19 = v8 - a2 + a3;
    v20 = v18;
    do
    {
      *v20++ = *v19;
      *v19 = 0;
      *(v19 + 8) = 0;
      v19 += 16;
      v18 += 16;
    }

    while (v19 != a4);
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    std::vector<mlx::core::array>::__move_range(a1, a2, v8, a2 + 16 * a5);
    v21 = a3;
    v22 = v17;
LABEL_18:
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<mlx::core::array *,mlx::core::array *,mlx::core::array *>(v26, v21, v22, v5);
  }

  return v5;
}

void sub_25A402934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4620;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  bzero(*(a1 + 24), *(a1 + 32));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF46A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF4798;
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 3);
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF4798;
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 3);

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4798;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::__bind(a2 + 24, (a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(void *a1)
{
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 3);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  v1 = std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::operator()[abi:ne200100]<>((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::__bind(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 64) = v7;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 120), *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 2);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 144), *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 3);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 168), *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 192), *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 216), *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 240), *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 264), *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 288), *(a2 + 36), *(a2 + 37), (*(a2 + 37) - *(a2 + 36)) >> 3);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 312), *(a2 + 39), *(a2 + 40), (*(a2 + 40) - *(a2 + 39)) >> 3);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 336), *(a2 + 42), *(a2 + 43), (*(a2 + 43) - *(a2 + 42)) >> 3);
  v10 = *(a2 + 361);
  *(a1 + 363) = *(a2 + 363);
  *(a1 + 361) = v10;
  return a1;
}

void sub_25A402FA8(_Unwind_Exception *exception_object)
{
  v9 = v1[39];
  if (v9)
  {
    v1[40] = v9;
    operator delete(v9);
  }

  v10 = v1[36];
  if (v10)
  {
    v1[37] = v10;
    operator delete(v10);
  }

  v11 = v1[33];
  if (v11)
  {
    v1[34] = v11;
    operator delete(v11);
  }

  v12 = *v7;
  if (*v7)
  {
    v1[31] = v12;
    operator delete(v12);
  }

  v13 = *v6;
  if (*v6)
  {
    v1[28] = v13;
    operator delete(v13);
  }

  v14 = *v5;
  if (*v5)
  {
    v1[25] = v14;
    operator delete(v14);
  }

  v15 = *v4;
  if (*v4)
  {
    v1[22] = v15;
    operator delete(v15);
  }

  v16 = *v3;
  if (*v3)
  {
    v1[19] = v16;
    operator delete(v16);
  }

  v17 = *v2;
  if (*v2)
  {
    v1[16] = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::operator()[abi:ne200100]<>(uint64_t *result)
{
  if (result[7])
  {
    v1 = result;
    v2 = 0;
    v31 = result + 36;
    v32 = result + 27;
    v29 = result + 39;
    v30 = result + 30;
    v27 = result + 42;
    v28 = result + 33;
    do
    {
      v33 = *v1;
      v3 = *(v1 + 80);
      v4 = *(v1 + 120);
      v5 = (*(v1 + 128) - v4) >> 2;
      v34 = *(v1 + 64);
      v6 = (v5 - 1);
      v7 = 0;
      if (v5 - 1 >= 0)
      {
        quot = v34 * v2 * v3;
        v9 = *(v1 + 144);
        do
        {
          v10 = ldiv(quot, *(v4 + 4 * v6));
          quot = v10.quot;
          v7 += *(v9 + 8 * v6--) * v10.rem;
        }

        while (v6 != -1);
      }

      v11 = *(v1 + 8);
      v12 = *(v1 + 72);
      v13 = *(v1 + 168);
      v14 = (*(v1 + 176) - v13) >> 2;
      v15 = 0;
      v16 = (v14 - 1);
      if (v14 - 1 >= 0)
      {
        v17 = v3 * v2 * v12;
        v18 = *(v1 + 192);
        do
        {
          v19 = ldiv(v17, *(v13 + 4 * v16));
          v17 = v19.quot;
          v15 += *(v18 + 8 * v16--) * v19.rem;
        }

        while (v16 != -1);
      }

      v20 = (v33 + 4 * v7);
      v21 = (v11 + 4 * v15);
      v22 = *(v1 + 16);
      if (*(v1 + 48) == 1)
      {
        if (*(v1 + 88))
        {
          v23 = 1;
        }

        else
        {
          v23 = *(v1 + 96);
        }

        if (*(v1 + 88))
        {
          v24 = *(v1 + 96);
        }

        else
        {
          v24 = 1;
        }

        mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::operator()(*(v1 + 24), v20, *(v1 + 52), v2, v34, v3, v23, v24, v32, v31, *(v1 + 361));
        if (*(v1 + 89))
        {
          v25 = 1;
        }

        else
        {
          v25 = *(v1 + 104);
        }

        if (*(v1 + 89))
        {
          v26 = *(v1 + 104);
        }

        else
        {
          v26 = 1;
        }

        mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::operator()(*(v1 + 32), v21, *(v1 + 52), v2, *(v1 + 80), *(v1 + 72), v25, v26, v30, v29, *(v1 + 362));
      }

      result = cblas_sgemm_NEWLAPACK();
      if (*(v1 + 49) == 1)
      {
        result = mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::operator()(*(v1 + 40), (v22 + 4 * v34 * v2 * v12), *(v1 + 52), v2, *(v1 + 64), *(v1 + 72), *(v1 + 72), 1, v28, v27, *(v1 + 363));
      }

      ++v2;
    }

    while (*(v1 + 56) > v2);
  }

  return result;
}

uint64_t mlx::core::elem_to_loc(uint64_t quot, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = (a2[1] - *a2) >> 2;
  v5 = 0;
  v6 = (v4 - 1);
  if (v4 - 1 >= 0)
  {
    v7 = *a3;
    do
    {
      v8 = ldiv(quot, *(v3 + 4 * v6));
      LODWORD(quot) = v8.quot;
      v5 += *(v7 + 8 * v6--) * v8.rem;
    }

    while (v6 != -1);
  }

  return v5;
}

uint64_t mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::operator()(uint64_t a1, float *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, char a11)
{
  v17 = (a9[1] - *a9) >> 2;
  v18 = v17 - 1;
  v19 = v17 - 2;
  result = mlx::core::elem_to_loc((*(*a9 + 4 * (v17 - 1)) * a4 * *(*a9 + 4 * (v17 - 2))), a9, a10);
  v73 = *(*a10 + 8 * v19);
  v21 = *(*a10 + 8 * v18);
  v22 = a3 - 1;
  v74 = a5;
  v23 = ((a3 - 1 + a5) / a3);
  if (a11)
  {
    if (v23 >= 1)
    {
      v24 = 0;
      v70 = a1 + result;
      v78 = &a2[3 * a8];
      v71 = 4 * a7 * a3;
      v25 = 4 * a8 * a3;
      result = 4 * a7;
      v77 = &a2[2 * a8];
      v76 = &a2[a8];
      v26 = vdupq_n_s64(4uLL);
      v27 = a5;
      v28 = ((v22 + a6) / a3);
      v72 = ((a3 - 1 + a5) / a3);
      do
      {
        if (a3 >= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = a3;
        }

        if (v28 >= 1)
        {
          v30 = 0;
          v31 = v29;
          v32 = v78;
          if (v74 - v24 * a3 >= a3)
          {
            v33 = a3;
          }

          else
          {
            v33 = v74 - v24 * a3;
          }

          v34 = a2;
          v36 = v76;
          v35 = v77;
          v37 = a6;
          do
          {
            if (a3 >= v37)
            {
              LODWORD(v38) = v37;
            }

            else
            {
              LODWORD(v38) = a3;
            }

            if (v38 <= 1)
            {
              v38 = 1;
            }

            else
            {
              v38 = v38;
            }

            if ((*(v70 + v24 * v73 + v30 * v21) & 1) == 0 && v33 >= 1)
            {
              v39 = 0;
              v40 = (v38 + 3) & 0xFFFFFFFC;
              v41 = vdupq_n_s64(v38 - 1);
              v42 = v34;
              v43 = v36;
              v44 = v35;
              v45 = v32;
              do
              {
                if (v30 * a3 < a6)
                {
                  v46 = 0;
                  v47 = v40;
                  v48 = xmmword_25A99B0D0;
                  v49 = xmmword_25A99B0C0;
                  do
                  {
                    v50 = vmovn_s64(vcgeq_u64(v41, v48));
                    if (vuzp1_s16(v50, 2).u8[0])
                    {
                      v42[v46] = 0.0;
                    }

                    if (vuzp1_s16(v50, 2).i8[2])
                    {
                      v43[v46] = 0.0;
                    }

                    if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v41, *&v49))).i32[1])
                    {
                      v44[v46] = 0.0;
                      v45[v46] = 0.0;
                    }

                    v49 = vaddq_s64(v49, v26);
                    v48 = vaddq_s64(v48, v26);
                    v46 += 4 * a8;
                    v47 -= 4;
                  }

                  while (v47);
                }

                ++v39;
                v45 = (v45 + result);
                v44 = (v44 + result);
                v43 = (v43 + result);
                v42 = (v42 + result);
              }

              while (v39 != v31);
            }

            ++v30;
            v37 -= a3;
            v32 = (v32 + v25);
            v35 = (v35 + v25);
            v36 = (v36 + v25);
            v34 = (v34 + v25);
          }

          while (v30 != v28);
        }

        ++v24;
        v27 -= a3;
        v78 = (v78 + v71);
        v77 = (v77 + v71);
        v76 = (v76 + v71);
        a2 = (a2 + v71);
      }

      while (v24 != v72);
    }
  }

  else if (v23 >= 1)
  {
    v51 = 0;
    v52 = a1 + 4 * result;
    v53 = 4 * a7 * a3;
    v54 = 4 * a8 * a3;
    v55 = 4 * a7;
    result = 4 * a8;
    v56 = a5;
    v57 = ((v22 + a6) / a3);
    do
    {
      if (a3 >= v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = a3;
      }

      if (v57 >= 1)
      {
        v59 = 0;
        v60 = a5 - v51 * a3;
        if (v60 >= a3)
        {
          v60 = a3;
        }

        v61 = a2;
        v62 = a6;
        do
        {
          if (a3 >= v62)
          {
            LODWORD(v63) = v62;
          }

          else
          {
            LODWORD(v63) = a3;
          }

          if (v63 <= 1)
          {
            v63 = 1;
          }

          else
          {
            v63 = v63;
          }

          v64 = *(v52 + 4 * v51 * v73 + 4 * v59 * v21);
          if (v64 != 1.0 && v60 >= 1)
          {
            v66 = 0;
            v67 = v61;
            do
            {
              v68 = v67;
              v69 = v63;
              if (v59 * a3 < a6)
              {
                do
                {
                  *v68 = v64 * *v68;
                  v68 = (v68 + result);
                  --v69;
                }

                while (v69);
              }

              ++v66;
              v67 = (v67 + v55);
            }

            while (v66 != v58);
          }

          ++v59;
          v62 -= a3;
          v61 = (v61 + v54);
        }

        while (v59 != v57);
      }

      ++v51;
      v56 -= a3;
      a2 = (a2 + v53);
    }

    while (v51 != v23);
  }

  return result;
}

void *std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4818;
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 1);
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4818;
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4818;
  result = std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::__bind(a2 + 8, (a1 + 8));
  *(a2 + 380) = 0;
  *(a2 + 377) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::destroy_deallocate(void *a1)
{
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4910;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    bzero(*(a1 + 24), 4 * v1);
  }

  v2 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4990;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    bzero(*(a1 + 8), 4 * v1);
  }
}

uint64_t std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF4A88;
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 3);
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF4A88;
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 3);

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4A88;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::__bind(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(void *a1)
{
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 3);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  v1 = std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::operator()[abi:ne200100]<>((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::__bind(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 112), *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 136), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 2);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 160), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 3);
  v8 = *(a2 + 184);
  *(a1 + 200) = 0;
  *(a1 + 184) = v8;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 200), *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 224), *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 2);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 248), *(a2 + 248), *(a2 + 256), (*(a2 + 256) - *(a2 + 248)) >> 3);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 272), *(a2 + 272), *(a2 + 280), (*(a2 + 280) - *(a2 + 272)) >> 3);
  return a1;
}

void sub_25A403F90(_Unwind_Exception *exception_object)
{
  v10 = *v8;
  if (*v8)
  {
    v1[32] = v10;
    operator delete(v10);
  }

  v11 = *v7;
  if (*v7)
  {
    v1[29] = v11;
    operator delete(v11);
  }

  v12 = *v6;
  if (*v6)
  {
    v1[26] = v12;
    operator delete(v12);
  }

  v13 = *v5;
  if (*v5)
  {
    v1[21] = v13;
    operator delete(v13);
  }

  v14 = *v4;
  if (*v4)
  {
    v1[18] = v14;
    operator delete(v14);
  }

  v15 = *v3;
  if (*v3)
  {
    v1[15] = v15;
    operator delete(v15);
  }

  v16 = *v2;
  if (*v2)
  {
    v1[12] = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::operator()[abi:ne200100]<>(void *result)
{
  if (result[23])
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = v1[9];
      v4 = v1[11];
      v5 = (v1[12] - v4) >> 2;
      v6 = 0;
      v7 = (v5 - 1);
      if (v5 - 1 >= 0)
      {
        v8 = v1[14];
        quot = v2;
        do
        {
          v10 = ldiv(quot, *(v4 + 4 * v7));
          quot = v10.quot;
          v6 += *(v8 + 8 * v7--) * v10.rem;
        }

        while (v7 != -1);
      }

      v11 = *(v3 + 4 * v6);
      v12 = v1[10];
      v13 = v1[17];
      v14 = (v1[18] - v13) >> 2;
      v15 = 0;
      v16 = (v14 - 1);
      if (v14 - 1 >= 0)
      {
        v17 = v1[20];
        v18 = v2;
        do
        {
          v19 = ldiv(v18, *(v13 + 4 * v16));
          v18 = v19.quot;
          v15 += *(v17 + 8 * v16--) * v19.rem;
        }

        while (v16 != -1);
      }

      v20 = *(v12 + 4 * v15);
      v21 = v1[25];
      v22 = (v1[26] - v21) >> 2;
      v23 = 0;
      v24 = (v22 - 1);
      if (v22 - 1 >= 0)
      {
        v25 = v1[31];
        do
        {
          v26 = ldiv(v11, *(v21 + 4 * v24));
          v23 += *(v25 + 8 * v24--) * v26.rem;
          v11 = v26.quot;
        }

        while (v24 != -1);
      }

      v27 = v1[28];
      v28 = (v1[29] - v27) >> 2;
      v29 = 0;
      v30 = (v28 - 1);
      if (v28 - 1 >= 0)
      {
        v31 = v1[34];
        do
        {
          v32 = ldiv(v20, *(v27 + 4 * v30));
          v29 += *(v31 + 8 * v30--) * v32.rem;
          v20 = v32.quot;
        }

        while (v30 != -1);
      }

      result = cblas_sgemm_NEWLAPACK();
      ++v2;
    }

    while (v1[23] > v2);
  }

  return result;
}

void *std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4B08;
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 1);
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4B08;
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4B08;
  result = std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::__bind(a2 + 8, a1 + 8);
  *(a2 + 308) = 0;
  *(a2 + 305) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::destroy_deallocate(void *a1)
{
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Convolution::eval_cpu(uint64_t a1, int ****a2, int ***a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = mlx::core::allocator::malloc((*(*a3 + 60) * (*a3)[6]));
  v5[0] = &unk_286BE3468;
  v5[1] = mlx::core::allocator::free;
  v5[3] = v5;
  mlx::core::array::set_data(a3, v4, v5);
}

void sub_25A4069B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mlx::core::array::~array(&STACK[0x418]);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::conv_1D_cpu(int ***a1, uint64_t **a2, uint64_t ***a3, int **a4, int **a5, int **a6, int **a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v111 = *MEMORY[0x277D85DE8];
  v13 = *a1;
  if (**a6 == 1)
  {
    v14 = v13[1];
    v15 = **a7;
    if (v15 == 1 && (a8 & 1) == 0)
    {
      v16 = *a3;
      v17 = a3[1];
      v98[2] = *a3;
      v98[3] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
        v13 = *a1;
        v14 = (*a1)[1];
      }

      v18 = *v13;
      v19 = v14 - v18;
      if (v19 > 4 && v19 != 8 && v16[1] - *v16 >= 5uLL)
      {
        v20 = (*a2)[1] - **a2;
        if (v20 > 4 && v20 != 8)
        {
          v22 = *v18;
          v21 = v18[1];
          v23 = v18[2];
          mlx::core::cpu::get_command_encoder(a9, a10);
          LODWORD(v108) = v22;
          HIDWORD(v108) = v21 + 2 * **a4;
          v109 = v23;
          v106 = 0;
          v107 = 0;
          v105 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v105, &v108, &v110, 3uLL);
          v102 = 0;
          v103 = 0;
          v101 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v101, v105, v106, (v106 - v105) >> 2);
          v100 = 0;
          memset(v99, 0, sizeof(v99));
          mlx::core::array::array(&v104, &v101, 0x40000000ALL);
          v108 = v99;
          std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v108);
          if (v100)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v100);
          }

          if (v101)
          {
            v102 = v101;
            operator delete(v101);
          }

          memset(&v98[72], 0, 24);
          mlx::core::array::array<int>(&v108, 0, 0x40000000ALL);
        }
      }

      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    if (v15 == 1 && *(v14 - 1) / *((*a2)[1] - 4) == 1)
    {
      v24 = a3[1];
      v98[0] = *a3;
      v98[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
      }
    }
  }

  v25 = *a3;
  v26 = a3[1];
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
    v13 = *a1;
  }

  v27 = *(v13 + 14);
  if (v27 != 9)
  {
    if (v27 != 12)
    {
      if (v27 == 10)
      {
        v105 = v25;
        v106 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
        }

        command_encoder = mlx::core::cpu::get_command_encoder(a9, a10);
        v30 = **a1;
        v29 = (*a1)[1];
        v31 = v29 - v30;
        if (v29 != v30 && v31 >= 5 && v105[1] - *v105 >= 5uLL)
        {
          v32 = (*a2)[1] - **a2;
          if (v32 >= 5 && v31 != 8 && v32 != 8)
          {
            v33 = command_encoder;
            v34 = (*(command_encoder + 10) + 1) % 10;
            *(command_encoder + 10) = v34;
            v35 = mlx::core::scheduler::scheduler(command_encoder);
            if (v34)
            {
              v36 = *(v35[1] + 8 * *v33);
              std::mutex::lock(v36);
              if (*(v36 + 160) != 1)
              {
                v37 = *(v36 + 72);
                v38 = *(v36 + 80);
                v39 = 16 * (v38 - v37) - 1;
                if (v38 == v37)
                {
                  v39 = 0;
                }

                if (v39 == *(v36 + 104) + *(v36 + 96))
                {
                  std::deque<std::function<void ()(void)>>::__add_back_capacity((v36 + 64));
                  v37 = *(v36 + 72);
                  v38 = *(v36 + 80);
                }

                if (v38 == v37)
                {
                  v41 = 0;
                }

                else
                {
                  v40 = *(v36 + 104) + *(v36 + 96);
                  v41 = *(v37 + ((v40 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v40 & 0x7F);
                }

                *(v41 + 24) = 0;
                operator new();
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            mlx::core::scheduler::Scheduler::notify_new_task(v35);
            v108 = *v33;
            v109 = *(v33 + 2);
            v85 = *(mlx::core::scheduler::scheduler(v84)[1] + 8 * *v33);
            std::mutex::lock(v85);
            if (*(v85 + 160) != 1)
            {
              v86 = *(v85 + 72);
              v87 = *(v85 + 80);
              v88 = 16 * (v87 - v86) - 1;
              if (v87 == v86)
              {
                v88 = 0;
              }

              if (v88 == *(v85 + 104) + *(v85 + 96))
              {
                std::deque<std::function<void ()(void)>>::__add_back_capacity((v85 + 64));
                v86 = *(v85 + 72);
                v87 = *(v85 + 80);
              }

              if (v87 == v86)
              {
                v90 = 0;
              }

              else
              {
                v89 = *(v85 + 104) + *(v85 + 96);
                v90 = *(v86 + ((v89 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v89 & 0x7F);
              }

              *(v90 + 24) = 0;
              operator new();
            }

            v97 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v97, "Cannot enqueue work after stream is stopped.");
            __cxa_throw(v97, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }

        std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
      }

      v91 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v91, "[Convolution::eval] got unsupported data type.");
      v91->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v91, off_279921408, MEMORY[0x277D82610]);
    }

    v105 = v25;
    v106 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
    }

    v42 = mlx::core::cpu::get_command_encoder(a9, a10);
    v44 = **a1;
    v43 = (*a1)[1];
    v45 = v43 - v44;
    if (v43 != v44 && v45 >= 5 && v105[1] - *v105 >= 5uLL)
    {
      v46 = (*a2)[1] - **a2;
      if (v46 >= 5 && v45 != 8 && v46 != 8)
      {
        v47 = v42;
        v48 = (*(v42 + 10) + 1) % 10;
        *(v42 + 10) = v48;
        v49 = mlx::core::scheduler::scheduler(v42);
        if (v48)
        {
          v50 = *(v49[1] + 8 * *v47);
          std::mutex::lock(v50);
          if (*(v50 + 160) != 1)
          {
            v51 = *(v50 + 72);
            v52 = *(v50 + 80);
            v53 = 16 * (v52 - v51) - 1;
            if (v52 == v51)
            {
              v53 = 0;
            }

            if (v53 == *(v50 + 104) + *(v50 + 96))
            {
              std::deque<std::function<void ()(void)>>::__add_back_capacity((v50 + 64));
              v51 = *(v50 + 72);
              v52 = *(v50 + 80);
            }

            if (v52 == v51)
            {
              v55 = 0;
            }

            else
            {
              v54 = *(v50 + 104) + *(v50 + 96);
              v55 = *(v51 + ((v54 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v54 & 0x7F);
            }

            *(v55 + 24) = 0;
            operator new();
          }

          v92 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v92, "Cannot enqueue work after stream is stopped.");
          __cxa_throw(v92, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        mlx::core::scheduler::Scheduler::notify_new_task(v49);
        v108 = *v47;
        v109 = *(v47 + 2);
        v71 = *(mlx::core::scheduler::scheduler(v70)[1] + 8 * *v47);
        std::mutex::lock(v71);
        if (*(v71 + 160) != 1)
        {
          v72 = *(v71 + 72);
          v73 = *(v71 + 80);
          v74 = 16 * (v73 - v72) - 1;
          if (v73 == v72)
          {
            v74 = 0;
          }

          if (v74 == *(v71 + 104) + *(v71 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v71 + 64));
            v72 = *(v71 + 72);
            v73 = *(v71 + 80);
          }

          if (v73 == v72)
          {
            v76 = 0;
          }

          else
          {
            v75 = *(v71 + 104) + *(v71 + 96);
            v76 = *(v72 + ((v75 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v75 & 0x7F);
          }

          *(v76 + 24) = 0;
          operator new();
        }

        v95 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v95, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v95, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v105 = v25;
  v106 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  v56 = mlx::core::cpu::get_command_encoder(a9, a10);
  v58 = **a1;
  v57 = (*a1)[1];
  v59 = v57 - v58;
  if (v57 != v58 && v59 >= 5 && v105[1] - *v105 >= 5uLL)
  {
    v60 = (*a2)[1] - **a2;
    if (v60 >= 5 && v59 != 8 && v60 != 8)
    {
      v61 = v56;
      v62 = (*(v56 + 10) + 1) % 10;
      *(v56 + 10) = v62;
      v63 = mlx::core::scheduler::scheduler(v56);
      if (v62)
      {
        v64 = *(v63[1] + 8 * *v61);
        std::mutex::lock(v64);
        if (*(v64 + 160) != 1)
        {
          v65 = *(v64 + 72);
          v66 = *(v64 + 80);
          v67 = 16 * (v66 - v65) - 1;
          if (v66 == v65)
          {
            v67 = 0;
          }

          if (v67 == *(v64 + 104) + *(v64 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v64 + 64));
            v65 = *(v64 + 72);
            v66 = *(v64 + 80);
          }

          if (v66 == v65)
          {
            v69 = 0;
          }

          else
          {
            v68 = *(v64 + 104) + *(v64 + 96);
            v69 = *(v65 + ((v68 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v68 & 0x7F);
          }

          *(v69 + 24) = 0;
          operator new();
        }

        v93 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v93, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v93, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v63);
      v108 = *v61;
      v109 = *(v61 + 2);
      v78 = *(mlx::core::scheduler::scheduler(v77)[1] + 8 * *v61);
      std::mutex::lock(v78);
      if (*(v78 + 160) != 1)
      {
        v79 = *(v78 + 72);
        v80 = *(v78 + 80);
        v81 = 16 * (v80 - v79) - 1;
        if (v80 == v79)
        {
          v81 = 0;
        }

        if (v81 == *(v78 + 104) + *(v78 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v78 + 64));
          v79 = *(v78 + 72);
          v80 = *(v78 + 80);
        }

        if (v80 == v79)
        {
          v83 = 0;
        }

        else
        {
          v82 = *(v78 + 104) + *(v78 + 96);
          v83 = *(v79 + ((v82 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v82 & 0x7F);
        }

        *(v83 + 24) = 0;
        operator new();
      }

      v96 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v96, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v96, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A408940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27)
{
  __cxa_free_exception(v27);
  std::mutex::unlock(v28);
  mlx::core::array::~array((v29 - 184));
  mlx::core::array::~array(&a27);
  _Unwind_Resume(a1);
}

void mlx::core::Convolution::~Convolution(mlx::core::Convolution *this)
{
  *this = &unk_286BF4C00;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

{
  *this = &unk_286BF4C00;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(int ***a1, uint64_t **a2, mlx::core::array *a3, int **a4, int **a5, int a6, uint64_t a7, unsigned int a8)
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = (*a1)[1];
  v10 = **a1;
  if (v9 != v10)
  {
    v15 = *v10;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v41, v10 + 1, v9 - 1, v9 - 1 - (v10 + 1));
    v16 = (**a3 + 4);
    v17 = (*(*a3 + 8) - 4);
    memset(v40, 0, sizeof(v40));
    std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v40, v16, v17, v17 - v16);
    v18 = (*a2)[1];
    v19 = **a2;
    if (v18 != v19)
    {
      v20 = *(v18 - 4);
      memset(v39, 0, sizeof(v39));
      std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v39, (v19 + 4), (v18 - 4), (v18 - 4 - (v19 + 4)) >> 2);
      mlx::core::cpu::get_command_encoder(a7, a8);
      std::vector<int>::vector[abi:ne200100](&v37, (*a1)[1] - **a1);
      v21 = v37;
      *v37 = v15;
      v22 = v41;
      if (v42 != v41)
      {
        v23 = v42 - v41;
        v24 = *a4;
        if (v23 <= 1)
        {
          v23 = 1;
        }

        v25 = v21 + 1;
        do
        {
          v27 = *v22++;
          v26 = v27;
          v28 = *v24++;
          *v25++ = v26 + 2 * v28;
          --v23;
        }

        while (v23);
      }

      v29 = v38;
      *(v38 - 4) = v20;
      v35 = 0;
      v34 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v21, v29, (v29 - v21) >> 2);
      v32 = 0;
      memset(v31, 0, sizeof(v31));
      mlx::core::array::array(&v36, &__p, 0x40000000ALL);
      *&v44[0] = v31;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v44);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }

      mlx::core::array::array<int>(v44, 0, 0x40000000ALL);
    }

    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A409E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v67);
  std::mutex::unlock(v68);
  mlx::core::array::~array(&a33);
  mlx::core::array::~array(&a43);
  mlx::core::array::~array(&a45);
  mlx::core::array::~array(&a56);
  if (__p)
  {
    a59 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(&a65);
  if (a66)
  {
    a67 = a66;
    operator delete(a66);
  }

  v71 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v71;
    operator delete(v71);
  }

  mlx::core::array::~array(&STACK[0x260]);
  STACK[0x208] = &STACK[0x270];
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&STACK[0x208]);
  mlx::core::array::~array(&STACK[0x2D0]);
  v72 = STACK[0x2E0];
  if (STACK[0x2E0])
  {
    STACK[0x2E8] = v72;
    operator delete(v72);
  }

  v73 = *(v69 - 248);
  if (v73)
  {
    *(v69 - 240) = v73;
    operator delete(v73);
  }

  v74 = *(v69 - 224);
  if (v74)
  {
    *(v69 - 216) = v74;
    operator delete(v74);
  }

  v75 = *(v69 - 200);
  if (v75)
  {
    *(v69 - 192) = v75;
    operator delete(v75);
  }

  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE7__cloneEPNS0_6__baseISQ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4C88;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_0>::operator()[abi:ne200100]<>(uint64_t *result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = 0;
    v3 = *result;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = *result + 4 * (v5 - 1) * v4;
    v7 = 4 * v5 * v4;
    do
    {
      if (v5 >= 2)
      {
        result = 0;
        v8 = v3;
        v9 = v6;
        do
        {
          if (v4)
          {
            for (i = 0; i != v4; ++i)
            {
              v11 = *(v8 + 4 * i);
              *(v8 + 4 * i) = *(v9 + 4 * i);
              *(v9 + 4 * i) = v11;
            }
          }

          result = (result + 1);
          v9 -= 4 * v4;
          v8 += 4 * v4;
        }

        while (result != (v5 >> 1));
      }

      ++v2;
      v6 += v7;
      v3 += v7;
    }

    while (v2 != v1);
  }

  return result;
}

__n128 std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4D08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF4E00;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF4E00;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

uint64_t *_ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE7__cloneEPNS0_6__baseISQ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4E00;
  v3 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v3;
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 48) = 0;
  v6 = a2 + 48;
  *(a2 + 40) = v5;
  *(a2 + 24) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 48), *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  *(v6 + 24) = *(a1 + 72);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    __p[7] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4E80;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4E80;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

uint64_t *std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4E80;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 32) = 0;
  v5 = (a2 + 32);
  *(a2 + 24) = v4;
  *(a2 + 8) = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 32), *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
  v5[6] = *(a1 + 56);
  *(v5 + 33) = 0;
  v5[9] = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    __p[5] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::~Stream(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  return a1;
}

void *mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(void *a1)
{
  v2 = a1[35];
  if (v2)
  {
    a1[36] = v2;
    operator delete(v2);
  }

  v3 = a1[32];
  if (v3)
  {
    a1[33] = v3;
    operator delete(v3);
  }

  v4 = a1[29];
  if (v4)
  {
    a1[30] = v4;
    operator delete(v4);
  }

  v5 = a1[26];
  if (v5)
  {
    a1[27] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 192), *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 216), *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 240), *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 264), *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_25A40AC14(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[31] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF4F78;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF4F78;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4F78;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[36];
  if (v2)
  {
    __p[37] = v2;
    operator delete(v2);
  }

  v3 = __p[33];
  if (v3)
  {
    __p[34] = v3;
    operator delete(v3);
  }

  v4 = __p[30];
  if (v4)
  {
    __p[31] = v4;
    operator delete(v4);
  }

  v5 = __p[27];
  if (v5)
  {
    __p[28] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::__bind(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 192), *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 216), *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 240), *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 264), *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_25A40B0AC(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[31] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v1 = a1;
  v2 = (a1 + 264);
  v3 = *(a1 + 264);
  v4 = *v3;
  v5 = *v3 == 1 && v3[1] == 1 && v3[2] == 1;
  v154 = v5;
  v6 = *(v1 + 240);
  v7 = (v1 + 216);
  v8 = (v1 + 60);
  v135 = v1 + 240;
  v136 = (v1 + 68);
  v9 = *v6;
  v127 = (v1 + 64);
  if (*(v1 + 288))
  {
    v10 = -v9;
    v12 = v6[1];
    v11 = v6[2];
    v13 = -v12;
    v14 = -v11;
    v15 = (*v8 - 1) * v9;
    v143 = (*(v1 + 64) - 1) * v12;
    v16 = (*(v1 + 68) - 1) * v11;
  }

  else
  {
    v143 = 0;
    v15 = 0;
    v16 = 0;
    v13 = v6[1];
    v14 = v6[2];
    v10 = *v6;
  }

  v17 = std::lcm[abi:ne200100]<int,int>(v4, v9);
  v18 = *(*v135 + 4);
  v153 = v17 / **v135;
  v19 = std::lcm[abi:ne200100]<int,int>((*v2)[1], v18);
  v20 = *(*v135 + 8);
  v152 = v19 / *(*v135 + 4);
  v151 = std::lcm[abi:ne200100]<int,int>((*v2)[2], v20) / *(*v135 + 8);
  v21 = std::lcm[abi:ne200100]<int,int>(**v2, **v7);
  v22 = (*v7)[1];
  v150 = v21 / **v7;
  v23 = std::lcm[abi:ne200100]<int,int>((*v2)[1], v22);
  v24 = (*v7)[2];
  v149 = v23 / (*v7)[1];
  v148 = std::lcm[abi:ne200100]<int,int>((*v2)[2], v24) / (*v7)[2];
  std::vector<int>::vector[abi:ne200100](v147, v150);
  std::vector<int>::vector[abi:ne200100](v146, v149);
  std::vector<int>::vector[abi:ne200100](v145, v148);
  v25 = (v1 + 192);
  if (v150 >= 1)
  {
    v26 = 0;
    v27 = *v7;
    v28 = *v25;
    v29 = v147[0];
    v30 = *v2;
    do
    {
      if (*v8 < 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        v32 = v15 + *v27 * v26 - *v28;
        while (v32 % *v30)
        {
          ++v31;
          v32 += v10;
          if (*v8 == v31)
          {
            v31 = *v8;
            break;
          }
        }
      }

      v29[v26++] = v31;
    }

    while (v26 < v150);
  }

  v134 = (v1 + 288);
  v133 = (v1 + 56);
  if (v149 >= 1)
  {
    v33 = 0;
    v34 = *v7;
    v35 = *v25;
    v36 = v146[0];
    v37 = *v2;
    do
    {
      if (*v127 < 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = 0;
        v39 = v143 + v34[1] * v33 - v35[1];
        while (v39 % v37[1])
        {
          ++v38;
          v39 += v13;
          if (*v127 == v38)
          {
            v38 = *v127;
            break;
          }
        }
      }

      v36[v33++] = v38;
    }

    while (v33 < v149);
  }

  if (v148 >= 1)
  {
    v40 = 0;
    v41 = *v7;
    v42 = *v25;
    v43 = v145[0];
    v44 = *v2;
    do
    {
      if (*v136 < 1)
      {
        v45 = 0;
      }

      else
      {
        v45 = 0;
        v46 = v16 + v41[2] * v40 - v42[2];
        while (v46 % v44[2])
        {
          ++v45;
          v46 += v14;
          if (*v136 == v45)
          {
            v45 = *v136;
            break;
          }
        }
      }

      v43[v40++] = v45;
    }

    while (v40 < v148);
  }

  v144[0] = v1 + 160;
  v144[1] = v1 + 168;
  v144[2] = v1 + 176;
  v144[3] = v1 + 216;
  v144[4] = v1 + 192;
  v144[5] = v147;
  v144[6] = &v150;
  v144[7] = v146;
  v144[8] = &v149;
  v144[9] = v145;
  v144[10] = &v148;
  v144[11] = v1 + 52;
  v144[12] = v1 + 60;
  v144[13] = &v153;
  v144[14] = v1 + 64;
  v144[15] = &v152;
  v144[16] = v1 + 68;
  v144[17] = &v151;
  v144[18] = v1 + 288;
  v144[19] = v1 + 240;
  v144[20] = v1 + 28;
  v144[21] = v1 + 32;
  v144[22] = v1 + 36;
  v144[23] = v1 + 120;
  v144[24] = v1 + 128;
  v144[25] = v1 + 136;
  v144[26] = &v154;
  v144[27] = v2;
  v144[28] = v1 + 80;
  v144[29] = v1 + 88;
  v144[30] = v1 + 96;
  v144[31] = v1 + 56;
  v144[32] = v1 + 104;
  v144[33] = v1 + 144;
  v144[34] = v1 + 184;
  v144[35] = v1 + 112;
  v47 = *(v1 + 192);
  v48 = *(v1 + 216);
  v49 = *v48;
  if (v154)
  {
    v50 = (*v47 + v49 - 1) / v49;
    v113 = *(v1 + 40);
  }

  else
  {
    v113 = *(v1 + 40);
    v50 = v113;
  }

  v51 = *v135;
  v52 = (*(v1 + 28) + *v47 - **v135 * *v8) / v49;
  v110 = v52;
  if (v50 > v52)
  {
    v52 = v50;
  }

  v114 = v52;
  v53 = v47[1];
  v54 = v48[1];
  v120 = *(v1 + 44);
  if (v154)
  {
    v55 = (v53 + v54 - 1) / v54;
  }

  else
  {
    v55 = *(v1 + 44);
  }

  v56 = (*(v1 + 32) + v53 - *(v51 + 4) * *(v1 + 64)) / v54;
  v117 = v55;
  v112 = v56;
  if (v55 > v56)
  {
    v56 = v55;
  }

  v121 = v56;
  if (v154)
  {
    v57 = v47[2];
    v58 = v48[2];
    v59 = *(v1 + 48);
    v60 = (v57 + v58 - 1) / v58;
  }

  else
  {
    v59 = *(v1 + 48);
    v57 = v47[2];
    v58 = v48[2];
    v60 = v59;
  }

  v61 = (*(v1 + 36) + v57 - *(v51 + 8) * *(v1 + 68)) / v58;
  v119 = v61;
  if (v60 > v61)
  {
    v61 = v60;
  }

  v124 = v61;
  if (*(v1 + 24) >= 1)
  {
    v62 = 0;
    v115 = v50;
    v116 = v60;
    v109 = v50;
    v122 = v60;
    v123 = v1;
    v118 = v59;
    do
    {
      v111 = v62;
      if (v50 >= 1)
      {
        v63 = 0;
        v64 = *(v1 + 44);
        do
        {
          if (v64 >= 1)
          {
            v65 = 0;
            v66 = *(v1 + 48);
            do
            {
              if (v66 >= 1)
              {
                for (i = 0; i < v66; ++i)
                {
                  v66 = *(v1 + 48);
                }

                v64 = *(v1 + 44);
              }

              ++v65;
            }

            while (v65 < v64);
          }

          ++v63;
          v50 = v115;
        }

        while (v63 != v115);
      }

      v68 = v109;
      if (v110 > v50)
      {
        do
        {
          v69 = v117;
          if (v117 >= 1)
          {
            v70 = 0;
            v71 = *(v1 + 48);
            do
            {
              if (v71 >= 1)
              {
                for (j = 0; j < v71; ++j)
                {
                  v71 = *(v1 + 48);
                }

                v69 = v117;
              }

              ++v70;
            }

            while (v70 != v69);
          }

          if (v112 > v69)
          {
            v73 = v117;
            v125 = v68;
            do
            {
              if (v60 >= 1)
              {
                for (k = 0; k != v60; ++k)
                {
                }
              }

              v126 = v73;
              if (v119 > v60)
              {
                v75 = *(v123 + 216);
                v76 = *(v123 + 192);
                v139 = *(v123 + 52);
                v77 = *(v123 + 8);
                v130 = *v123;
                v129 = *(v123 + 16) + 4 * *(v123 + 160) * v125 + 4 * *(v123 + 168) * v73;
                v78 = *(v123 + 60);
                v128 = *(v123 + 176);
                v138 = *(v123 + 184);
                v79 = v125 * *v75 - *v76;
                v80 = v75[1] * v73 - v76[1];
                v131 = v75[2];
                v81 = v122 * v131 - v76[2];
                v137 = 4 * *(v123 + 112);
                v132 = v116;
                do
                {
                  if (v139 >= 1)
                  {
                    v82 = 0;
                    v83 = v130;
                    v84 = (v129 + 4 * v132 * v128);
                    v85 = *v127;
                    do
                    {
                      v140 = v83;
                      v141 = v84;
                      v142 = v82;
                      if (v78 < 1)
                      {
                        v88 = 0.0;
                      }

                      else
                      {
                        v86 = 0;
                        v87 = *v136;
                        v88 = 0.0;
                        do
                        {
                          if (v85 >= 1)
                          {
                            v89 = 0;
                            if (*v134)
                            {
                              v90 = v78 + ~v86;
                            }

                            else
                            {
                              v90 = v86;
                            }

                            v91 = v83;
                            do
                            {
                              if (v87 >= 1)
                              {
                                v92 = 0;
                                v93 = v85 + ~v89;
                                if ((*v134 & 1) == 0)
                                {
                                  v93 = v89;
                                }

                                v94 = v91;
                                do
                                {
                                  if (*v133 >= 1)
                                  {
                                    v95 = v87 + ~v92;
                                    if ((*v134 & 1) == 0)
                                    {
                                      v95 = v92;
                                    }

                                    v96 = (v77 + 4 * *(v135 - 152) * (v80 + *(*v135 + 4) * v93) + 4 * *(v135 - 160) * (v79 + **v135 * v90) + 4 * *(v135 - 144) * (v81 + v95 * *(*v135 + 8)));
                                    v97 = v94;
                                    v98 = *v133;
                                    do
                                    {
                                      v88 = v88 + (*v96 * *v97);
                                      v96 += *(v135 - 136);
                                      v97 += *(v135 - 96);
                                      --v98;
                                    }

                                    while (v98);
                                  }

                                  ++v92;
                                  v94 += *(v135 - 104);
                                }

                                while (v92 != v87);
                              }

                              ++v89;
                              v91 += *(v135 - 112);
                            }

                            while (v89 != v85);
                          }

                          ++v86;
                          v83 += 4 * *(v135 - 120);
                        }

                        while (v86 != v78);
                      }

                      *v141 = v88;
                      v84 = &v141[v138];
                      ++v82;
                      v83 = v140 + v137;
                    }

                    while (v142 + 1 != v139);
                  }

                  v81 += v131;
                  ++v132;
                }

                while (v132 != v124);
              }

              v1 = v123;
              v68 = v125;
              if (v124 < v118)
              {
                v99 = v124;
                do
                {
                }

                while (v118 != v99);
              }

              ++v73;
              v60 = v122;
            }

            while (v121 != v126 + 1);
          }

          if (v121 < v120)
          {
            v100 = *(v1 + 48);
            v101 = v121;
            do
            {
              if (v100 >= 1)
              {
                for (m = 0; m < v100; ++m)
                {
                  v100 = *(v1 + 48);
                }
              }

              ++v101;
            }

            while (v101 != v120);
          }

          ++v68;
        }

        while (v114 != v68);
      }

      if (v114 < v113)
      {
        v103 = *(v1 + 44);
        v104 = v114;
        do
        {
          if (v103 >= 1)
          {
            v105 = 0;
            v106 = *(v1 + 48);
            do
            {
              if (v106 >= 1)
              {
                for (n = 0; n < v106; ++n)
                {
                  v106 = *(v1 + 48);
                }

                v103 = *(v1 + 44);
              }

              ++v105;
            }

            while (v105 < v103);
          }

          ++v104;
        }

        while (v104 != v113);
      }

      v108 = *(v1 + 16) + 4 * *(v1 + 152);
      *(v1 + 8) += 4 * *(v1 + 72);
      *(v1 + 16) = v108;
      v62 = v111 + 1;
      v50 = v115;
    }

    while (v111 + 1 < *(v1 + 24));
  }

  if (v145[0])
  {
    v145[1] = v145[0];
    operator delete(v145[0]);
  }

  if (v146[0])
  {
    v146[1] = v146[0];
    operator delete(v146[0]);
  }

  if (v147[0])
  {
    v147[1] = v147[0];
    operator delete(v147[0]);
  }
}

void sub_25A40BC5C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 144);
  if (v4)
  {
    *(v1 - 136) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::lcm[abi:ne200100]<int,int>(unsigned int a1, int a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (a1 == 0x80000000)
    {
      v3 = 0;
    }

    else
    {
      v3 = -a1;
    }

    if ((a1 & 0x80000000) == 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = v3;
    }

    if (a2 == 0x80000000)
    {
      v5 = 0;
    }

    else
    {
      v5 = -a2;
    }

    if (a2 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = v5;
    }

    return v4 / std::__gcd<unsigned int>(v4, v6) * v6;
  }

  return v2;
}

uint64_t void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(void)::{lambda(float const*,float const*,float *,int,int,int)#2}::operator()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v42 = **(result + 88);
  if (v42 >= 1)
  {
    v7 = 0;
    v8 = **(result + 24);
    v9 = **(result + 32);
    v51 = *v8 * a5 - *v9;
    v50 = v8[1] * a6 - v9[1];
    v10 = v8[2] * a7 - v9[2];
    v11 = *(**(result + 56) + 4 * (a6 % **(result + 64)));
    v12 = *(**(result + 72) + 4 * (a7 % **(result + 80)));
    v13 = a4 + 4 * **result * a5 + 4 * **(result + 8) * a6 + 4 * **(result + 16) * a7;
    v49 = **(result + 96);
    v41 = 4 * **(result + 280);
    v43 = *(**(result + 40) + 4 * (a5 % **(result + 48)));
    v40 = **(result + 272);
    v46 = 4 * v11;
    v47 = v11;
    do
    {
      v44 = v13;
      v45 = v7;
      v14 = 0.0;
      if (v43 < v49)
      {
        v15 = **(result + 112);
        v48 = **(result + 104);
        v16 = 4 * v43;
        v17 = v43;
        do
        {
          if (v11 < v15)
          {
            v18 = **(result + 128);
            v19 = **(result + 120);
            v20 = v46;
            do
            {
              if (v12 < v18)
              {
                v21 = **(result + 152);
                v22 = *v21;
                v23 = v21[1];
                v24 = v21[2];
                v25 = **(result + 136);
                if (**(result + 144))
                {
                  v26 = v15 + ~v11;
                }

                else
                {
                  v26 = v11;
                }

                v27 = v49 + ~v17;
                if (!**(result + 144))
                {
                  v27 = v17;
                }

                v28 = v51 + v22 * v27;
                v29 = v50 + v23 * v26;
                v30 = 4 * v12;
                v31 = v12;
                do
                {
                  v32 = v18 + ~v31;
                  if (!**(result + 144))
                  {
                    v32 = v31;
                  }

                  if ((v28 & 0x80000000) == 0 && v28 < **(result + 160) && (v29 & 0x80000000) == 0 && v29 < **(result + 168))
                  {
                    v33 = v10 + v24 * v32;
                    if ((v33 & 0x80000000) == 0 && v33 < **(result + 176))
                    {
                      v34 = v29;
                      v35 = v28;
                      if ((**(result + 208) & 1) == 0)
                      {
                        v36 = **(result + 216);
                        v35 = v28 / *v36;
                        v34 = v29 / v36[1];
                        v33 /= v36[2];
                      }

                      v37 = **(result + 248);
                      if (v37 >= 1)
                      {
                        v38 = (a2 + 4 * **(result + 224) * v35 + 4 * **(result + 232) * v34 + 4 * **(result + 240) * v33);
                        v39 = v20 * **(result + 192) + v16 * **(result + 184) + **(result + 200) * v30;
                        do
                        {
                          v14 = v14 + (*v38 * *(a3 + v39));
                          v38 += **(result + 256);
                          v39 += 4 * **(result + 264);
                          --v37;
                        }

                        while (v37);
                      }
                    }
                  }

                  v31 += v25;
                  v30 += 4 * v25;
                }

                while (v31 < v18);
              }

              v11 += v19;
              v20 += 4 * v19;
            }

            while (v11 < v15);
          }

          v17 += v48;
          v16 += 4 * v48;
          v11 = v47;
        }

        while (v17 < v49);
      }

      *v44 = v14;
      v13 = &v44[v40];
      ++v7;
      a3 += v41;
    }

    while (v45 + 1 != v42);
  }

  return result;
}

uint64_t std::__gcd<unsigned int>(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  else
  {
    result = result;
  }

  if (v3)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v2 % result)
  {
    v5 = v4 | result;
    v6 = v4 >> __clz(__rbit32(v4));
    do
    {
      v7 = result >> __clz(__rbit32(result));
      if (v6 <= v7)
      {
        LODWORD(result) = v7 - v6;
      }

      else
      {
        LODWORD(result) = v6 - v7;
      }

      if (v6 >= v7)
      {
        v6 = v7;
      }
    }

    while (result);
    return v6 << __clz(__rbit32(v5));
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4FF8;
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4FF8;
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4FF8;
  *(a2 + 308) = 0;
  *(a2 + 305) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[34];
  if (v2)
  {
    __p[35] = v2;
    operator delete(v2);
  }

  v3 = __p[31];
  if (v3)
  {
    __p[32] = v3;
    operator delete(v3);
  }

  v4 = __p[28];
  if (v4)
  {
    __p[29] = v4;
    operator delete(v4);
  }

  v5 = __p[25];
  if (v5)
  {
    __p[26] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 192), *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 216), *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 240), *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 264), *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_25A40C51C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[31] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF50F0;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF50F0;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF50F0;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[36];
  if (v2)
  {
    __p[37] = v2;
    operator delete(v2);
  }

  v3 = __p[33];
  if (v3)
  {
    __p[34] = v3;
    operator delete(v3);
  }

  v4 = __p[30];
  if (v4)
  {
    __p[31] = v4;
    operator delete(v4);
  }

  v5 = __p[27];
  if (v5)
  {
    __p[28] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::__bind(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 192), *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 216), *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 240), *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 264), *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_25A40C9B4(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[31] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v2 = (a1 + 264);
  v3 = *(a1 + 264);
  v4 = *v3;
  v5 = *v3 == 1 && v3[1] == 1 && v3[2] == 1;
  v165 = v5;
  v6 = *(a1 + 240);
  v7 = (a1 + 216);
  v8 = (a1 + 60);
  v9 = (a1 + 68);
  v148 = (a1 + 240);
  v10 = *v6;
  v144 = a1;
  v136 = (a1 + 64);
  if (*(a1 + 288))
  {
    v11 = -v10;
    v13 = v6[1];
    v12 = v6[2];
    v14 = -v13;
    v15 = -v12;
    v16 = (*v8 - 1) * v10;
    v154 = (*(a1 + 64) - 1) * v13;
    v17 = (*v9 - 1) * v12;
  }

  else
  {
    v154 = 0;
    v16 = 0;
    v17 = 0;
    v14 = v6[1];
    v15 = v6[2];
    v11 = *v6;
  }

  v18 = std::lcm[abi:ne200100]<int,int>(v4, v10);
  v19 = *(*v148 + 4);
  v164 = v18 / **v148;
  v20 = std::lcm[abi:ne200100]<int,int>((*v2)[1], v19);
  v21 = *(*v148 + 8);
  v163 = v20 / *(*v148 + 4);
  v162 = std::lcm[abi:ne200100]<int,int>((*v2)[2], v21) / *(*v148 + 8);
  v22 = std::lcm[abi:ne200100]<int,int>(**v2, **v7);
  v23 = (*v7)[1];
  v161 = v22 / **v7;
  v24 = std::lcm[abi:ne200100]<int,int>((*v2)[1], v23);
  v25 = (*v7)[2];
  v160 = v24 / (*v7)[1];
  v159 = std::lcm[abi:ne200100]<int,int>((*v2)[2], v25) / (*v7)[2];
  std::vector<int>::vector[abi:ne200100](v158, v161);
  std::vector<int>::vector[abi:ne200100](v157, v160);
  std::vector<int>::vector[abi:ne200100](v156, v159);
  v26 = (v148 - 48);
  if (v161 >= 1)
  {
    v27 = 0;
    v28 = *v7;
    v29 = *v26;
    v30 = v158[0];
    v31 = *v2;
    do
    {
      if (*v8 < 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v33 = v16 + *v28 * v27 - *v29;
        while (v33 % *v31)
        {
          ++v32;
          v33 += v11;
          if (*v8 == v32)
          {
            v32 = *v8;
            break;
          }
        }
      }

      v30[v27++] = v32;
    }

    while (v27 < v161);
  }

  v147 = v148 + 48;
  v146 = (v148 - 184);
  if (v160 >= 1)
  {
    v34 = 0;
    v35 = *v7;
    v36 = *v26;
    v37 = v157[0];
    v38 = *v2;
    do
    {
      if (*v136 < 1)
      {
        v39 = 0;
      }

      else
      {
        v39 = 0;
        v40 = v154 + v35[1] * v34 - v36[1];
        while (v40 % v38[1])
        {
          ++v39;
          v40 += v14;
          if (*v136 == v39)
          {
            v39 = *v136;
            break;
          }
        }
      }

      v37[v34++] = v39;
    }

    while (v34 < v160);
  }

  if (v159 >= 1)
  {
    v41 = 0;
    v42 = *v7;
    v43 = *v26;
    v44 = v156[0];
    v45 = *v2;
    do
    {
      if (*v9 < 1)
      {
        v46 = 0;
      }

      else
      {
        v46 = 0;
        v47 = v17 + v42[2] * v41 - v43[2];
        while (v47 % v45[2])
        {
          ++v46;
          v47 += v15;
          if (*v9 == v46)
          {
            v46 = *v9;
            break;
          }
        }
      }

      v44[v41++] = v46;
    }

    while (v41 < v159);
  }

  v155[0] = v148 - 80;
  v155[1] = v148 - 72;
  v155[2] = v148 - 64;
  v155[3] = v7;
  v155[4] = v148 - 48;
  v155[5] = v158;
  v155[6] = &v161;
  v155[7] = v157;
  v155[8] = &v160;
  v155[9] = v156;
  v155[10] = &v159;
  v155[11] = v148 - 188;
  v155[12] = v8;
  v155[13] = &v164;
  v155[14] = v136;
  v155[15] = &v163;
  v155[16] = v9;
  v155[17] = &v162;
  v155[18] = v148 + 48;
  v155[19] = v148;
  v48 = v144;
  v155[20] = v144 + 28;
  v155[21] = v144 + 32;
  v155[22] = v144 + 36;
  v155[23] = v148 - 120;
  v155[24] = v148 - 112;
  v155[25] = v148 - 104;
  v155[26] = &v165;
  v155[27] = v2;
  v155[28] = v148 - 160;
  v155[29] = v148 - 152;
  v155[30] = v148 - 144;
  v155[31] = v148 - 184;
  v155[32] = v148 - 136;
  v155[33] = v148 - 96;
  v155[34] = v148 - 56;
  v155[35] = v148 - 128;
  v49 = *(v144 + 192);
  v50 = *(v144 + 216);
  v51 = *v50;
  if (v165)
  {
    v52 = (*v49 + v51 - 1) / v51;
    v127 = *(v144 + 40);
  }

  else
  {
    v127 = *(v144 + 40);
    v52 = v127;
  }

  v53 = *v148;
  v54 = (*(v144 + 28) + *v49 - **v148 * *v8) / v51;
  v123 = v54;
  if (v52 > v54)
  {
    v54 = v52;
  }

  v128 = v54;
  v55 = v49[1];
  v56 = v50[1];
  v131 = *(v144 + 44);
  if (v165)
  {
    v57 = (v55 + v56 - 1) / v56;
  }

  else
  {
    v57 = *(v144 + 44);
  }

  v58 = (*(v144 + 32) + v55 - *(v53 + 4) * *(v144 + 64)) / v56;
  v129 = v57;
  v126 = v58;
  if (v57 > v58)
  {
    v58 = v57;
  }

  v132 = v58;
  if (v165)
  {
    v59 = v49[2];
    v60 = v50[2];
    v61 = *(v144 + 48);
    v62 = (v59 + v60 - 1) / v60;
  }

  else
  {
    v61 = *(v144 + 48);
    v59 = v49[2];
    v60 = v50[2];
    v62 = v61;
  }

  v63 = (*(v144 + 36) + v59 - *(v53 + 8) * *(v144 + 68)) / v60;
  v142 = v62;
  v130 = v63;
  if (v62 > v63)
  {
    v63 = v62;
  }

  v133 = v63;
  if (*(v144 + 24) >= 1)
  {
    v64 = 0;
    v125 = v52;
    v122 = v52;
    v141 = v61;
    v145 = v9;
    do
    {
      v124 = v64;
      if (v52 >= 1)
      {
        v65 = 0;
        v66 = *(v48 + 44);
        do
        {
          if (v66 >= 1)
          {
            v67 = 0;
            v68 = *(v48 + 48);
            do
            {
              if (v68 >= 1)
              {
                for (i = 0; i < v68; ++i)
                {
                  v48 = v144;
                  v68 = *(v144 + 48);
                }

                v66 = *(v144 + 44);
              }

              ++v67;
            }

            while (v67 < v66);
          }

          ++v65;
        }

        while (v65 != v52);
      }

      v70 = v122;
      if (v123 > v52)
      {
        do
        {
          v135 = v70;
          v71 = v129;
          if (v129 >= 1)
          {
            v72 = 0;
            v73 = *(v48 + 48);
            do
            {
              if (v73 >= 1)
              {
                for (j = 0; j < v73; ++j)
                {
                  v48 = v144;
                  v73 = *(v144 + 48);
                }

                v71 = v129;
              }

              ++v72;
            }

            while (v72 != v71);
          }

          if (v126 > v71)
          {
            v75 = v129;
            do
            {
              v76 = v142;
              if (v142 >= 1)
              {
                v77 = v48;
                for (k = 0; k != v142; ++k)
                {
                  v76 = v142;
                }
              }

              v134 = v75;
              if (v130 > v76)
              {
                v79 = *(v144 + 216);
                v80 = *(v144 + 192);
                v151 = *(v144 + 52);
                v81 = *(v144 + 8);
                v139 = *v144;
                v138 = *(v144 + 16) + 2 * *(v144 + 160) * v135 + 2 * *(v144 + 168) * v75;
                v82 = *(v144 + 60);
                v137 = *(v144 + 176);
                v150 = *(v144 + 184);
                v83 = v135 * *v79 - *v80;
                v84 = v79[1] * v75 - v80[1];
                v140 = v79[2];
                v85 = v142 * v140 - v80[2];
                v149 = 2 * *(v144 + 112);
                v143 = v142;
                do
                {
                  if (v151 >= 1)
                  {
                    v86 = 0;
                    v87 = v139;
                    v88 = (v138 + 2 * v143 * v137);
                    v89 = *v136;
                    do
                    {
                      if (v82 < 1)
                      {
                        _H0 = 0;
                      }

                      else
                      {
                        v153 = v88;
                        v90 = 0;
                        v91 = *v9;
                        _S0 = 0.0;
                        v152 = v87;
                        do
                        {
                          if (v89 >= 1)
                          {
                            v93 = 0;
                            if (*v147)
                            {
                              v94 = v82 + ~v90;
                            }

                            else
                            {
                              v94 = v90;
                            }

                            v95 = v87;
                            do
                            {
                              if (v91 >= 1)
                              {
                                v96 = 0;
                                v97 = v89 + ~v93;
                                if ((*v147 & 1) == 0)
                                {
                                  v97 = v93;
                                }

                                v98 = v95;
                                do
                                {
                                  if (*v146 >= 1)
                                  {
                                    v99 = v91 + ~v96;
                                    if ((*v147 & 1) == 0)
                                    {
                                      v99 = v96;
                                    }

                                    v100 = (v81 + 2 * *(v148 - 19) * (v84 + *(*v148 + 4) * v97) + 2 * *(v148 - 20) * (v83 + **v148 * v94) + 2 * *(v148 - 18) * (v85 + v99 * *(*v148 + 8)));
                                    v101 = v98;
                                    v102 = *v146;
                                    do
                                    {
                                      _H1 = *v100;
                                      __asm { FCVT            S1, H1 }

                                      _H2 = *v101;
                                      __asm { FCVT            S2, H2 }

                                      _S0 = _S0 + (_S1 * _S2);
                                      v100 += *(v148 - 17);
                                      v101 += *(v148 - 12);
                                      --v102;
                                    }

                                    while (v102);
                                  }

                                  ++v96;
                                  v98 += *(v148 - 13);
                                }

                                while (v96 != v91);
                              }

                              ++v93;
                              v95 += *(v148 - 14);
                            }

                            while (v93 != v89);
                          }

                          ++v90;
                          v87 += 2 * *(v148 - 15);
                        }

                        while (v90 != v82);
                        __asm { FCVT            H0, S0 }

                        v9 = v145;
                        v87 = v152;
                        v88 = v153;
                      }

                      *v88 = _H0;
                      v88 += v150;
                      ++v86;
                      v87 += v149;
                    }

                    while (v86 != v151);
                  }

                  v85 += v140;
                  ++v143;
                }

                while (v143 != v133);
              }

              if (v133 < v141)
              {
                v112 = v133;
                do
                {
                }

                while (v141 != v112);
              }

              ++v75;
              v48 = v144;
            }

            while (v132 != v134 + 1);
          }

          v52 = v125;
          if (v132 < v131)
          {
            v113 = *(v48 + 48);
            v114 = v132;
            do
            {
              if (v113 >= 1)
              {
                for (m = 0; m < v113; ++m)
                {
                  v48 = v144;
                  v113 = *(v144 + 48);
                }
              }

              ++v114;
            }

            while (v114 != v131);
          }

          v70 = v135 + 1;
        }

        while (v128 != v135 + 1);
      }

      if (v128 < v127)
      {
        v116 = *(v48 + 44);
        v117 = v128;
        do
        {
          if (v116 >= 1)
          {
            v118 = 0;
            v119 = *(v48 + 48);
            do
            {
              if (v119 >= 1)
              {
                for (n = 0; n < v119; ++n)
                {
                  v48 = v144;
                  v119 = *(v144 + 48);
                }

                v116 = *(v144 + 44);
              }

              ++v118;
            }

            while (v118 < v116);
          }

          ++v117;
        }

        while (v117 != v127);
      }

      v121 = *(v48 + 16) + 2 * *(v48 + 152);
      *(v48 + 8) += 2 * *(v48 + 72);
      *(v48 + 16) = v121;
      v64 = v124 + 1;
    }

    while (v124 + 1 < *(v48 + 24));
  }

  if (v156[0])
  {
    v156[1] = v156[0];
    operator delete(v156[0]);
  }

  if (v157[0])
  {
    v157[1] = v157[0];
    operator delete(v157[0]);
  }

  if (v158[0])
  {
    v158[1] = v158[0];
    operator delete(v158[0]);
  }
}

void sub_25A40D5AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 144);
  if (v4)
  {
    *(v1 - 136) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(void)::{lambda(half const*,half const*,half *,int,int,int)#2}::operator()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = **(result + 88);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = **(result + 24);
    v10 = **(result + 32);
    v64 = *v9 * a5 - *v10;
    v63 = v9[1] * a6 - v10[1];
    v11 = v9[2] * a7 - v10[2];
    v12 = *(**(result + 56) + 4 * (a6 % **(result + 64)));
    v13 = *(**(result + 72) + 4 * (a7 % **(result + 80)));
    v14 = *(**(result + 40) + 4 * (a5 % **(result + 48)));
    v15 = (a4 + 2 * **result * a5 + 2 * **(result + 8) * a6 + 2 * **(result + 16) * a7);
    v62 = **(result + 96);
    v16 = 2 * **(result + 280);
    v53 = 2 * v14;
    v54 = v16;
    v17 = **(result + 272);
    v59 = 2 * v12;
    v60 = v12;
    v56 = **(result + 88);
    v55 = v14;
    v52 = v17;
    do
    {
      _H0 = 0;
      if (v14 < v62)
      {
        v57 = v15;
        v58 = v8;
        v19 = **(result + 112);
        v61 = **(result + 104);
        _S0 = 0.0;
        v21 = v53;
        do
        {
          if (v12 < v19)
          {
            v22 = **(result + 128);
            v23 = **(result + 120);
            v24 = v59;
            do
            {
              if (v13 < v22)
              {
                v25 = **(result + 152);
                v26 = *v25;
                v27 = v25[1];
                v28 = v25[2];
                v29 = **(result + 136);
                if (**(result + 144))
                {
                  v30 = v19 + ~v12;
                }

                else
                {
                  v30 = v12;
                }

                v31 = v62 + ~v14;
                if (!**(result + 144))
                {
                  v31 = v14;
                }

                v32 = v64 + v26 * v31;
                v33 = v63 + v27 * v30;
                v34 = 2 * v13;
                v35 = v13;
                do
                {
                  v36 = v22 + ~v35;
                  if (!**(result + 144))
                  {
                    v36 = v35;
                  }

                  if ((v32 & 0x80000000) == 0 && v32 < **(result + 160) && (v33 & 0x80000000) == 0 && v33 < **(result + 168))
                  {
                    v37 = v11 + v28 * v36;
                    if ((v37 & 0x80000000) == 0 && v37 < **(result + 176))
                    {
                      v38 = v33;
                      v39 = v32;
                      if ((**(result + 208) & 1) == 0)
                      {
                        v40 = **(result + 216);
                        v39 = v32 / *v40;
                        v38 = v33 / v40[1];
                        v37 /= v40[2];
                      }

                      v41 = **(result + 248);
                      if (v41 >= 1)
                      {
                        v42 = (a2 + 2 * **(result + 224) * v39 + 2 * **(result + 232) * v38 + 2 * **(result + 240) * v37);
                        v43 = v24 * **(result + 192) + v21 * **(result + 184) + **(result + 200) * v34;
                        do
                        {
                          _H1 = *v42;
                          _H2 = *(a3 + v43);
                          __asm
                          {
                            FCVT            S1, H1
                            FCVT            S2, H2
                          }

                          _S0 = _S0 + (_S1 * _S2);
                          v42 += **(result + 256);
                          v43 += 2 * **(result + 264);
                          --v41;
                        }

                        while (v41);
                      }
                    }
                  }

                  v35 += v29;
                  v34 += 2 * v29;
                }

                while (v35 < v22);
              }

              v12 += v23;
              v24 += 2 * v23;
            }

            while (v12 < v19);
          }

          v14 += v61;
          v21 += 2 * v61;
          v12 = v60;
        }

        while (v14 < v62);
        __asm { FCVT            H0, S0 }

        v7 = v56;
        v8 = v58;
        v16 = v54;
        v14 = v55;
        v15 = v57;
        v17 = v52;
      }

      *v15 = _H0;
      v15 += v17;
      ++v8;
      a3 += v16;
    }

    while (v8 != v7);
  }

  return result;
}