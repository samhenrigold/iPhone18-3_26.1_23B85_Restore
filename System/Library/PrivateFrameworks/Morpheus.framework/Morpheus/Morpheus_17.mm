void sub_25A39451C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,mlx::core::complex64_t>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, float a9, _BYTE *a10)
{
  v115 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + a6);
  v14 = *(*a2 + 152) + 8 * a7;
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == a3[1])
  {
    LOBYTE(a9) = *v13;
    *v14 = LODWORD(a9);
    *(v14 + 4) = 0;
  }

  else
  {
    v16 = *(*a1 + 48);
    v106 = 0;
    v107 = 0;
    v108 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v106, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v109, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
    v95 = 0;
    v96 = 0;
    v97 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v95, &v106, &v112, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v95, 0x7FFFFFFFuLL, &v102);
    v105 = &v95;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v105);
    for (i = 0; i != -48; i -= 24)
    {
      v19 = *(&v109 + i);
      if (v19)
      {
        *(&v110 + i) = v19;
        operator delete(v19);
      }
    }

    v20 = v102;
    v21 = (v103 - v102) >> 2;
    if (v21 > 2)
    {
      if (v12)
      {
        v13 += *v12;
      }

      if (v15)
      {
        v14 += 8 * *v15;
      }

      v26 = v21 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v106, &v102, v104, v21 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v95, &v102, v104 + 3, v21 - 3);
      v28 = v103 - 3;
      v29 = 1;
      do
      {
        v30 = *v28++;
        v29 *= v30;
      }

      while (v28 != v103);
      if (v16)
      {
        v31 = 0;
        v32 = v21 - 2;
        v33 = v21 - 1;
        v34 = v14 + 4;
        do
        {
          v35 = *(v102 + v26);
          if (v35 >= 1)
          {
            v36 = 0;
            v37 = v104;
            v38 = (*v104)[v26];
            v39 = v106 + v13;
            v40 = (v34 + 8 * v95);
            v41 = 8 * v104[3][v26];
            do
            {
              v42 = *(v102 + v32);
              if (v42 >= 1)
              {
                v43 = 0;
                v44 = (*v37)[v32];
                v45 = 8 * v37[3][v32];
                v46 = v40;
                v47 = v39;
                do
                {
                  v48 = *(v102 + v33);
                  if (v48 >= 1)
                  {
                    v49 = 0;
                    v50 = (*v37)[v33];
                    v51 = 8 * v37[3][v33];
                    v52 = v46;
                    do
                    {
                      LOBYTE(v27) = v47[v49];
                      v27 = LODWORD(v27);
                      *(v52 - 1) = v27;
                      *v52 = 0.0;
                      v49 += v50;
                      v52 = (v52 + v51);
                      --v48;
                    }

                    while (v48);
                  }

                  v47 += v44;
                  ++v43;
                  v46 = (v46 + v45);
                }

                while (v43 != v42);
              }

              v39 += v38;
              ++v36;
              v40 = (v40 + v41);
            }

            while (v36 != v35);
          }

          v53 = v108 - v107;
          v54 = (v108 - v107) >> 2;
          if (v54)
          {
            v55 = v113;
            v56 = ((v53 << 30) - 0x100000000) >> 32;
            v57 = v113 + 4 * v56;
            v58 = *v57;
            v59 = v107 + 4 * v56;
            v60 = v110;
            v61 = v106;
            if (v54 >= 2 && v58 == *v59 - 1)
            {
              v64 = (v53 >> 2) & 0x7FFFFFFF;
              v63 = v64 - 1;
              v65 = 4 * v64;
              v66 = v107 - 8;
              do
              {
                v67 = v63;
                *v57 = 0;
                v61 = (v61 - v60[v56] * (*v59 - 1));
                v106 = v61;
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
            v106 = (v61 + v60[v63]);
          }

          v69 = v97 - v96;
          v70 = (v97 - v96) >> 2;
          if (v70)
          {
            v71 = __p;
            v72 = ((v69 << 30) - 0x100000000) >> 32;
            v73 = __p + 4 * v72;
            v74 = *v73;
            v75 = v98;
            v76 = v95;
            if (v70 >= 2 && (v77 = v96 + 4 * v72, v74 == *v77 - 1))
            {
              v78 = (v69 >> 2) & 0x7FFFFFFF;
              v79 = v78 - 1;
              v80 = 4 * v78;
              v81 = v96 - 8;
              do
              {
                v82 = v79;
                *v73 = 0;
                v76 -= v75[v72] * (*v77 - 1);
                v95 = v76;
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
            v95 = v75[v79] + v76;
          }

          v31 += v29;
        }

        while (v31 < v16);
      }

      if (__p)
      {
        v101 = __p;
        operator delete(__p);
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      if (v113)
      {
        v114 = v113;
        operator delete(v113);
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
    }

    else
    {
      if (v12)
      {
        v13 += *v12;
      }

      if (v15)
      {
        v14 += 8 * *v15;
      }

      if (v21 == 2)
      {
        v84 = *v102;
        if (*v102 >= 1)
        {
          v85 = 0;
          v86 = v104;
          v87 = **v104;
          v88 = (v14 + 4);
          v89 = 8 * *v104[3];
          do
          {
            v90 = v20[1];
            if (v90 >= 1)
            {
              v91 = (*v86)[1];
              v92 = 8 * v86[3][1];
              v93 = v88;
              v94 = v13;
              do
              {
                LOBYTE(v17) = *v94;
                v17 = LODWORD(v17);
                *(v93 - 1) = v17;
                *v93 = 0.0;
                v94 += v91;
                v93 = (v93 + v92);
                --v90;
              }

              while (v90);
            }

            v13 += v87;
            ++v85;
            v88 = (v88 + v89);
          }

          while (v85 != v84);
        }
      }

      else if (v21 == 1)
      {
        v22 = *v102;
        if (*v102 >= 1)
        {
          v23 = **v104;
          v24 = (v14 + 4);
          v25 = 8 * *v104[3];
          do
          {
            LOBYTE(v17) = *v13;
            v17 = LODWORD(v17);
            *(v24 - 1) = v17;
            *v24 = 0.0;
            v13 += v23;
            v24 = (v24 + v25);
            --v22;
          }

          while (v22);
        }
      }
    }

    v106 = &v104;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v106);
    if (v102)
    {
      v103 = v102;
      operator delete(v102);
    }
  }
}

void sub_25A394BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,BOOL>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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
    *v13 = *v12 != 0;
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
                  v54[v55] = *(v53 + v56) != 0;
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
            *v92 = *v90 != 0;
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
        *v13 = *v12 != 0;
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

void sub_25A395334(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,unsigned char>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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
        v12 += 2 * *v11;
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
            v35 = &v12[2 * v100];
            v36 = 2 * (*v30)[v23];
            do
            {
              v37 = *(v96 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = v30[3][v28];
                v40 = 2 * (*v30)[v28];
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
                    v47 = 2 * (*v30)[v29];
                    do
                    {
                      v42[v44] = v41[v45];
                      v45 += v47;
                      v44 += v46;
                      --v43;
                    }

                    while (v43);
                  }

                  v42 += v39;
                  ++v38;
                  v41 += v40;
                }

                while (v38 != v37);
              }

              v34 += v33;
              ++v32;
              v35 += v36;
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
        v12 += 2 * *v11;
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
          v83 = 2 * **v98;
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = v81[3][1];
              v86 = 2 * (*v81)[1];
              v87 = v12;
              v88 = v13;
              do
              {
                *v88 = *v87;
                v88 += v85;
                v87 += v86;
                --v84;
              }

              while (v84);
            }

            v13 += v82;
            ++v80;
            v12 += v83;
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
          v22 = 2 * **v98;
          do
          {
            *v13 = *v12;
            v13 += v21;
            v12 += v22;
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

void sub_25A3959C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,unsigned short>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 2 * a6);
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
        v44 = 2 * v29[v114];
        v45 = 2 * v29[v104];
        v46 = 2 * v30[v114];
        v47 = 2 * v30[v104];
        v48 = &v105[v26];
        do
        {
          if (v42 >= 1)
          {
            v49 = 0;
            v50 = v28[v31];
            v51 = 2 * v29[v31];
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
      v87 = 2 * **v125;
      v88 = 2 * (*v125)[1];
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
      v20 = 2 * **v125;
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

void sub_25A396118(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,unsigned int>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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
        v46 = 2 * v30[v112];
        v47 = 2 * v30[v32];
        v48 = 4 * v31[v112];
        v49 = 4 * v31[v32];
        do
        {
          v50 = v29[v32];
          if (v50 >= 1)
          {
            v51 = 0;
            v52 = 2 * v30[v33];
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
      v86 = 2 * **v123;
      v87 = 2 * (*v123)[1];
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
      v21 = 2 * **v123;
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

void sub_25A396860(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,unsigned long long>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 2 * a6);
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
          v42 = 2 * v27[v21];
          v43 = 8 * v28[v21];
          do
          {
            if (v41 >= 1)
            {
              v44 = 0;
              v45 = v26[v30];
              v46 = 2 * v27[v29];
              v47 = 8 * v28[v29];
              v48 = v39;
              v49 = v40;
              do
              {
                if (v45 >= 1)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = 2 * v27[v30];
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
      v83 = 2 * **v115;
      v84 = 8 * *v81;
      do
      {
        if (v82 >= 1)
        {
          v85 = 2 * v80[1];
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
      v20 = 2 * **v115;
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

void sub_25A396F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  mlx::core::ContiguousIterator::~ContiguousIterator((v37 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,signed char>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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
        v12 += 2 * *v11;
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
            v35 = &v12[2 * v100];
            v36 = 2 * (*v30)[v23];
            do
            {
              v37 = *(v96 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = v30[3][v28];
                v40 = 2 * (*v30)[v28];
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
                    v47 = 2 * (*v30)[v29];
                    do
                    {
                      v42[v44] = v41[v45];
                      v45 += v47;
                      v44 += v46;
                      --v43;
                    }

                    while (v43);
                  }

                  v42 += v39;
                  ++v38;
                  v41 += v40;
                }

                while (v38 != v37);
              }

              v34 += v33;
              ++v32;
              v35 += v36;
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
        v12 += 2 * *v11;
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
          v83 = 2 * **v98;
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = v81[3][1];
              v86 = 2 * (*v81)[1];
              v87 = v12;
              v88 = v13;
              do
              {
                *v88 = *v87;
                v88 += v85;
                v87 += v86;
                --v84;
              }

              while (v84);
            }

            v13 += v82;
            ++v80;
            v12 += v83;
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
          v22 = 2 * **v98;
          do
          {
            *v13 = *v12;
            v13 += v21;
            v12 += v22;
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

void sub_25A397624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,short>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 2 * a6);
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
        v44 = 2 * v29[v114];
        v45 = 2 * v29[v104];
        v46 = 2 * v30[v114];
        v47 = 2 * v30[v104];
        v48 = &v105[v26];
        do
        {
          if (v42 >= 1)
          {
            v49 = 0;
            v50 = v28[v31];
            v51 = 2 * v29[v31];
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
      v87 = 2 * **v125;
      v88 = 2 * (*v125)[1];
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
      v20 = 2 * **v125;
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

void sub_25A397D7C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,int>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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
        v46 = 2 * v30[v112];
        v47 = 2 * v30[v32];
        v48 = 4 * v31[v112];
        v49 = 4 * v31[v32];
        do
        {
          v50 = v29[v32];
          if (v50 >= 1)
          {
            v51 = 0;
            v52 = 2 * v30[v33];
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
      v86 = 2 * **v123;
      v87 = 2 * (*v123)[1];
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
      v21 = 2 * **v123;
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

void sub_25A3984C4(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,long long>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 2 * a6);
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
          v42 = 2 * v27[v21];
          v43 = 8 * v28[v21];
          do
          {
            if (v41 >= 1)
            {
              v44 = 0;
              v45 = v26[v30];
              v46 = 2 * v27[v29];
              v47 = 8 * v28[v29];
              v48 = v39;
              v49 = v40;
              do
              {
                if (v45 >= 1)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = 2 * v27[v30];
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
      v83 = 2 * **v115;
      v84 = 8 * *v81;
      do
      {
        if (v82 >= 1)
        {
          v85 = 2 * v80[1];
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
      v20 = 2 * **v115;
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

void sub_25A398BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  mlx::core::ContiguousIterator::~ContiguousIterator((v37 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,half>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 2 * a6);
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
        v45 = 2 * v29[v21];
        v46 = 2 * v29[v105];
        v47 = 2 * v30[v21];
        v48 = 2 * v30[v105];
        v49 = &v106[v26];
        do
        {
          if (v43 >= 1)
          {
            v50 = 0;
            v51 = v28[v31];
            v52 = 2 * v29[v31];
            v53 = 2 * v30[v31];
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
      v88 = 2 * **v125;
      v89 = 2 * (*v125)[1];
      v90 = *(v123 + 1);
      v91 = 2 * v86;
      v92 = 2 * v87;
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
      v20 = 2 * **v125;
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

void sub_25A399364(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,float>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, float a9, _BYTE *a10)
{
  v139 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + 2 * a6);
  v14 = (*(*a2 + 152) + 4 * a7);
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == a3[1])
  {
    LOWORD(a9) = *v13;
    *v14 = LODWORD(a9);
    return;
  }

  v115 = *(*a1 + 48);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v133, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v119, &v130, &v136, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v119, 0x7FFFFFFFuLL, &v126);
  v129 = &v119;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v129);
  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(&v133 + i);
    if (v18)
    {
      *(&v134 + i) = v18;
      operator delete(v18);
    }
  }

  v19 = (v127 - v126) >> 2;
  if (v19 > 2)
  {
    if (v12)
    {
      v13 += *v12;
    }

    if (v15)
    {
      v14 += *v15;
    }

    v23 = (v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v130, &v126, v128, v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v119, &v126, v128 + 3, v19 - 3);
    v25 = v127 - 3;
    v26 = 1;
    do
    {
      v27 = *v25++;
      v26 *= v27;
    }

    while (v25 != v127);
    if (!v115)
    {
      v85 = v124;
      if (v124)
      {
LABEL_64:
        v125 = v85;
        operator delete(v85);
      }

LABEL_65:
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v137)
      {
        v138 = v137;
        operator delete(v137);
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

      goto LABEL_83;
    }

    v109 = v13;
    v110 = v14;
    v28 = 0;
    v29 = v130;
    v30 = v134;
    v31 = v126;
    v32 = *v128;
    v33 = v128[3];
    v108 = v19 - 2;
    v34 = v19 - 1;
    v35 = (((v132 - v131) << 30) - 0x100000000) >> 32;
    v103 = v137;
    v107 = v35;
    v105 = &v131[4 * v35];
    v36 = ((v132 - v131) >> 2) & 0x7FFFFFFF;
    v102 = v36 - 1;
    v37 = v119;
    v38 = v122;
    v39 = (((v121 - v120) << 30) - 0x100000000) >> 32;
    __p = v124;
    v116 = &v124[4 * v39];
    v117 = &v137[4 * v35];
    v40 = ((v121 - v120) >> 2) & 0x7FFFFFFF;
    v113 = v26;
    v114 = (v132 - v131) >> 2;
    v41 = 4 * v36;
    v100 = v131 - 8;
    v101 = v40 - 1;
    v42 = 4 * v40;
    v99 = v120 - 8;
    v106 = v39;
    v111 = v120 + 4 * v39;
    v112 = (v121 - v120) >> 2;
    while (1)
    {
      v118 = v28;
      v43 = v23;
      v44 = v31[v23];
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = v31[v108];
        v47 = &v110[v37];
        v48 = 2 * v32[v23];
        v49 = 2 * v32[v108];
        v50 = 4 * v33[v23];
        v51 = 4 * v33[v108];
        v52 = &v109[v29];
        do
        {
          if (v46 >= 1)
          {
            v53 = 0;
            v54 = v31[v34];
            v55 = 2 * v32[v34];
            v56 = 4 * v33[v34];
            v57 = v47;
            v58 = v52;
            do
            {
              if (v54 >= 1)
              {
                v59 = 0;
                v60 = 0;
                v61 = v54;
                do
                {
                  LOWORD(v24) = *(v58 + v60);
                  v24 = LODWORD(v24);
                  *(v57 + v59) = v24;
                  v60 += v55;
                  v59 += v56;
                  --v61;
                }

                while (v61);
              }

              ++v53;
              v58 = (v58 + v49);
              v57 = (v57 + v51);
            }

            while (v53 != v46);
          }

          ++v45;
          v52 = (v52 + v48);
          v47 = (v47 + v50);
        }

        while (v45 != v44);
      }

      if (!v114)
      {
        v23 = v43;
        v65 = v118;
        v71 = v111;
        v63 = v112;
        if (v112)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v62 = *v117;
      v23 = v43;
      v63 = v112;
      if (v114 < 2)
      {
        break;
      }

      v64 = v105;
      v65 = v118;
      if (v62 != *v105 - 1)
      {
        v67 = v107;
        v74 = v117;
LABEL_52:
        v71 = v111;
        goto LABEL_53;
      }

      v67 = v102;
      v66 = v103;
      v68 = v100;
      v69 = v117;
      v70 = v107;
      v71 = v111;
      do
      {
        v72 = v67;
        *v69 = 0;
        v29 = (v29 - v30[v70] * (*v64 - 1));
        v130 = v29;
        --v67;
        v69 = &v66[v41 - 8];
        v62 = *v69;
        v66 -= 4;
        if (v72 < 2)
        {
          break;
        }

        v64 = &v68[v41];
        v73 = *&v68[v41] - 1;
        v68 -= 4;
        v70 = v67;
      }

      while (v62 == v73);
      v74 = &v66[v41 - 4];
LABEL_53:
      *v74 = v62 + 1;
      v29 = (v29 + v30[v67]);
      v130 = v29;
      if (v112)
      {
LABEL_54:
        v75 = *v116;
        if (v63 >= 2 && v75 == *v71 - 1)
        {
          v76 = __p;
          v77 = v99;
          v78 = v101;
          v79 = v71;
          v80 = v116;
          v81 = v106;
          do
          {
            v82 = v78;
            *v80 = 0;
            v37 -= v38[v81] * (*v79 - 1);
            v119 = v37;
            --v78;
            v80 = &v76[v42 - 8];
            v75 = *v80;
            v76 -= 4;
            if (v82 < 2)
            {
              break;
            }

            v79 = &v77[v42];
            v83 = *&v77[v42] - 1;
            v77 -= 4;
            v81 = v78;
          }

          while (v75 == v83);
          v84 = &v76[v42 - 4];
        }

        else
        {
          v78 = v106;
          v84 = v116;
        }

        *v84 = v75 + 1;
        v37 += v38[v78];
        v119 = v37;
      }

LABEL_62:
      v28 = v65 + v113;
      if (v28 >= v115)
      {
        v85 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v67 = v107;
    v74 = v117;
    v65 = v118;
    goto LABEL_52;
  }

  if (v12)
  {
    v13 += *v12;
  }

  if (v15)
  {
    v14 += *v15;
  }

  if (v19 == 2)
  {
    v86 = *v126;
    if (*v126 >= 1)
    {
      v87 = 0;
      v88 = v128[3];
      v89 = *v88;
      v90 = v88[1];
      v91 = 2 * **v128;
      v92 = 2 * (*v128)[1];
      v93 = *(v126 + 1);
      v94 = 4 * v89;
      v95 = 4 * v90;
      do
      {
        if (v93 >= 1)
        {
          v96 = v14;
          v97 = v13;
          v98 = v93;
          do
          {
            LOWORD(v16) = *v97;
            v16 = LODWORD(v16);
            *v96 = v16;
            v97 = (v97 + v92);
            v96 = (v96 + v95);
            --v98;
          }

          while (v98);
        }

        ++v87;
        v13 = (v13 + v91);
        v14 = (v14 + v94);
      }

      while (v87 != v86);
    }
  }

  else if (v19 == 1)
  {
    v20 = *v126;
    if (*v126 >= 1)
    {
      v21 = *v128[3];
      v22 = 2 * **v128;
      do
      {
        LOWORD(v16) = *v13;
        v16 = LODWORD(v16);
        *v14 = v16;
        v13 = (v13 + v22);
        v14 += v21;
        --v20;
      }

      while (v20);
    }
  }

LABEL_83:
  v130 = &v128;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v130);
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }
}

void sub_25A399ACC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,double>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, double a9, _BYTE *a10)
{
  v139 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + 2 * a6);
  v14 = (*(*a2 + 152) + 8 * a7);
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == a3[1])
  {
    LOWORD(a9) = *v13;
    *v14 = *&a9;
    return;
  }

  v115 = *(*a1 + 48);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v133, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v119, &v130, &v136, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v119, 0x7FFFFFFFuLL, &v126);
  v129 = &v119;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v129);
  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(&v133 + i);
    if (v18)
    {
      *(&v134 + i) = v18;
      operator delete(v18);
    }
  }

  v19 = (v127 - v126) >> 2;
  if (v19 > 2)
  {
    if (v12)
    {
      v13 += *v12;
    }

    if (v15)
    {
      v14 += *v15;
    }

    v23 = (v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v130, &v126, v128, v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v119, &v126, v128 + 3, v19 - 3);
    v25 = v127 - 3;
    v26 = 1;
    do
    {
      v27 = *v25++;
      v26 *= v27;
    }

    while (v25 != v127);
    if (!v115)
    {
      v85 = v124;
      if (v124)
      {
LABEL_64:
        v125 = v85;
        operator delete(v85);
      }

LABEL_65:
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v137)
      {
        v138 = v137;
        operator delete(v137);
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

      goto LABEL_83;
    }

    v109 = v13;
    v110 = v14;
    v28 = 0;
    v29 = v130;
    v30 = v134;
    v31 = v126;
    v32 = *v128;
    v33 = v128[3];
    v108 = v19 - 2;
    v34 = v19 - 1;
    v35 = (((v132 - v131) << 30) - 0x100000000) >> 32;
    v103 = v137;
    v107 = v35;
    v105 = &v131[4 * v35];
    v36 = ((v132 - v131) >> 2) & 0x7FFFFFFF;
    v102 = v36 - 1;
    v37 = v119;
    v38 = v122;
    v39 = (((v121 - v120) << 30) - 0x100000000) >> 32;
    __p = v124;
    v116 = &v124[4 * v39];
    v117 = &v137[4 * v35];
    v40 = ((v121 - v120) >> 2) & 0x7FFFFFFF;
    v113 = v26;
    v114 = (v132 - v131) >> 2;
    v41 = 4 * v36;
    v100 = v131 - 8;
    v101 = v40 - 1;
    v42 = 4 * v40;
    v99 = v120 - 8;
    v106 = v39;
    v111 = v120 + 4 * v39;
    v112 = (v121 - v120) >> 2;
    while (1)
    {
      v118 = v28;
      v43 = v23;
      v44 = v31[v23];
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = v31[v108];
        v47 = &v110[v37];
        v48 = 2 * v32[v23];
        v49 = 2 * v32[v108];
        v50 = 8 * v33[v23];
        v51 = 8 * v33[v108];
        v52 = &v109[v29];
        do
        {
          if (v46 >= 1)
          {
            v53 = 0;
            v54 = v31[v34];
            v55 = 2 * v32[v34];
            v56 = 8 * v33[v34];
            v57 = v47;
            v58 = v52;
            do
            {
              if (v54 >= 1)
              {
                v59 = 0;
                v60 = 0;
                v61 = v54;
                do
                {
                  LOWORD(v24) = *(v58 + v60);
                  v24 = *&v24;
                  *(v57 + v59) = v24;
                  v60 += v55;
                  v59 += v56;
                  --v61;
                }

                while (v61);
              }

              ++v53;
              v58 = (v58 + v49);
              v57 = (v57 + v51);
            }

            while (v53 != v46);
          }

          ++v45;
          v52 = (v52 + v48);
          v47 = (v47 + v50);
        }

        while (v45 != v44);
      }

      if (!v114)
      {
        v23 = v43;
        v65 = v118;
        v71 = v111;
        v63 = v112;
        if (v112)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v62 = *v117;
      v23 = v43;
      v63 = v112;
      if (v114 < 2)
      {
        break;
      }

      v64 = v105;
      v65 = v118;
      if (v62 != *v105 - 1)
      {
        v67 = v107;
        v74 = v117;
LABEL_52:
        v71 = v111;
        goto LABEL_53;
      }

      v67 = v102;
      v66 = v103;
      v68 = v100;
      v69 = v117;
      v70 = v107;
      v71 = v111;
      do
      {
        v72 = v67;
        *v69 = 0;
        v29 = (v29 - v30[v70] * (*v64 - 1));
        v130 = v29;
        --v67;
        v69 = &v66[v41 - 8];
        v62 = *v69;
        v66 -= 4;
        if (v72 < 2)
        {
          break;
        }

        v64 = &v68[v41];
        v73 = *&v68[v41] - 1;
        v68 -= 4;
        v70 = v67;
      }

      while (v62 == v73);
      v74 = &v66[v41 - 4];
LABEL_53:
      *v74 = v62 + 1;
      v29 = (v29 + v30[v67]);
      v130 = v29;
      if (v112)
      {
LABEL_54:
        v75 = *v116;
        if (v63 >= 2 && v75 == *v71 - 1)
        {
          v76 = __p;
          v77 = v99;
          v78 = v101;
          v79 = v71;
          v80 = v116;
          v81 = v106;
          do
          {
            v82 = v78;
            *v80 = 0;
            v37 -= v38[v81] * (*v79 - 1);
            v119 = v37;
            --v78;
            v80 = &v76[v42 - 8];
            v75 = *v80;
            v76 -= 4;
            if (v82 < 2)
            {
              break;
            }

            v79 = &v77[v42];
            v83 = *&v77[v42] - 1;
            v77 -= 4;
            v81 = v78;
          }

          while (v75 == v83);
          v84 = &v76[v42 - 4];
        }

        else
        {
          v78 = v106;
          v84 = v116;
        }

        *v84 = v75 + 1;
        v37 += v38[v78];
        v119 = v37;
      }

LABEL_62:
      v28 = v65 + v113;
      if (v28 >= v115)
      {
        v85 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v67 = v107;
    v74 = v117;
    v65 = v118;
    goto LABEL_52;
  }

  if (v12)
  {
    v13 += *v12;
  }

  if (v15)
  {
    v14 += *v15;
  }

  if (v19 == 2)
  {
    v86 = *v126;
    if (*v126 >= 1)
    {
      v87 = 0;
      v88 = v128[3];
      v89 = *v88;
      v90 = v88[1];
      v91 = 2 * **v128;
      v92 = 2 * (*v128)[1];
      v93 = *(v126 + 1);
      v94 = 8 * v89;
      v95 = 8 * v90;
      do
      {
        if (v93 >= 1)
        {
          v96 = v14;
          v97 = v13;
          v98 = v93;
          do
          {
            LOWORD(v16) = *v97;
            v16 = *&v16;
            *v96 = v16;
            v97 = (v97 + v92);
            v96 = (v96 + v95);
            --v98;
          }

          while (v98);
        }

        ++v87;
        v13 = (v13 + v91);
        v14 = (v14 + v94);
      }

      while (v87 != v86);
    }
  }

  else if (v19 == 1)
  {
    v20 = *v126;
    if (*v126 >= 1)
    {
      v21 = *v128[3];
      v22 = 2 * **v128;
      do
      {
        LOWORD(v16) = *v13;
        v16 = *&v16;
        *v14 = v16;
        v13 = (v13 + v22);
        v14 += v21;
        --v20;
      }

      while (v20);
    }
  }

LABEL_83:
  v130 = &v128;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v130);
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }
}

void sub_25A39A234(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::anonymous namespace::copy_single<unsigned short,mlx::core::_MLX_BFloat16>(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(*a2 + 48);
  if (v3)
  {
    v4 = 0;
    LOWORD(a3) = **(*result + 152);
    v5 = COERCE_INT(LODWORD(a3)) + (HIWORD(COERCE_UNSIGNED_INT(LODWORD(a3))) & 1) + 0x7FFF;
    v6 = vdupq_n_s64(v3 - 1);
    v7 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = (*(*a2 + 152) + 8);
    v9 = HIWORD(v5);
    do
    {
      v10 = vdupq_n_s64(v4);
      v11 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v10, xmmword_25A99B0D0)));
      if (vuzp1_s8(vuzp1_s16(v11, *v6.i8), *v6.i8).u8[0])
      {
        *(v8 - 4) = v9;
      }

      if (vuzp1_s8(vuzp1_s16(v11, *&v6), *&v6).i8[1])
      {
        *(v8 - 3) = v9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v10, xmmword_25A99B0C0)))), *&v6).i8[2])
      {
        *(v8 - 2) = v9;
        *(v8 - 1) = v9;
      }

      v12 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v10, xmmword_25A9C2E80)));
      if (vuzp1_s8(*&v6, vuzp1_s16(v12, *&v6)).i32[1])
      {
        *v8 = v9;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v12, *&v6)).i8[5])
      {
        v8[1] = v9;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v10, xmmword_25A9C2E70))))).i8[6])
      {
        v8[2] = v9;
        v8[3] = v9;
      }

      v4 += 8;
      v8 += 8;
    }

    while (v7 != v4);
  }

  return result;
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,mlx::core::_MLX_BFloat16>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, float a9, _BYTE *a10)
{
  v137 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + 2 * a6);
  v14 = (*(*a2 + 152) + 2 * a7);
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == a3[1])
  {
    LOWORD(a9) = *v13;
    *v14 = (COERCE_INT(LODWORD(a9)) + (HIWORD(COERCE_UNSIGNED_INT(LODWORD(a9))) & 1) + 0x7FFF) >> 16;
    return;
  }

  v112 = *(*a1 + 48);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v131, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v117, &v128, &v134, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v117, 0x7FFFFFFFuLL, &v124);
  v127 = &v117;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(&v131 + i);
    if (v18)
    {
      *(&v132 + i) = v18;
      operator delete(v18);
    }
  }

  v19 = (v125 - v124) >> 2;
  if (v19 > 2)
  {
    if (v12)
    {
      v13 += *v12;
    }

    if (v15)
    {
      v14 += *v15;
    }

    v23 = v19 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v128, &v124, v126, v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v117, &v124, v126 + 3, v19 - 3);
    v25 = v125 - 3;
    v26 = 1;
    do
    {
      v27 = *v25++;
      v26 *= v27;
    }

    while (v25 != v125);
    if (!v112)
    {
      v83 = v122;
      if (v122)
      {
LABEL_62:
        v123 = v83;
        operator delete(v83);
      }

LABEL_63:
      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v118)
      {
        v119 = v118;
        operator delete(v118);
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

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      goto LABEL_81;
    }

    v106 = v13;
    v107 = v14;
    v28 = 0;
    v29 = v128;
    v30 = v124;
    v31 = *v126;
    v32 = v126[3];
    v104 = v19 - 2;
    v33 = v19 - 1;
    v34 = (((v130 - v129) << 30) - 0x100000000) >> 32;
    v99 = v135;
    v114 = &v135[4 * v34];
    v103 = v34;
    v101 = &v129[4 * v34];
    v35 = ((v130 - v129) >> 2) & 0x7FFFFFFF;
    v98 = v35 - 1;
    v36 = v117;
    v37 = (((v119 - v118) << 30) - 0x100000000) >> 32;
    __p = v122;
    v113 = &v122[4 * v37];
    v38 = ((v119 - v118) >> 2) & 0x7FFFFFFF;
    v97 = v38 - 1;
    v111 = (v130 - v129) >> 2;
    v39 = 4 * v35;
    v40 = 4 * v38;
    v95 = v118 - 8;
    v96 = v129 - 8;
    v102 = v37;
    v115 = v19 - 3;
    v105 = v132;
    v109 = (v119 - v118) >> 2;
    v110 = v120;
    v108 = v118 + 4 * v37;
    while (1)
    {
      v116 = v28;
      v41 = v30[v23];
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = v30[v104];
        v44 = &v107[v36];
        v45 = 2 * v31[v115];
        v46 = 2 * v31[v104];
        v47 = 2 * v32[v115];
        v48 = 2 * v32[v104];
        v49 = &v106[v29];
        do
        {
          if (v43 >= 1)
          {
            v50 = 0;
            v51 = v30[v33];
            v52 = 2 * v31[v33];
            v53 = 2 * v32[v33];
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
                  LOWORD(v24) = *(v55 + v57);
                  v24 = LODWORD(v24);
                  *(v54 + v56) = (LODWORD(v24) + (HIWORD(LODWORD(v24)) & 1u) + 0x7FFF) >> 16;
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

      if (v111)
      {
        break;
      }

      v23 = v115;
      v67 = v116;
      v60 = v109;
      v68 = v110;
      v69 = v108;
      if (v109)
      {
        goto LABEL_52;
      }

LABEL_60:
      v28 = v67 + v26;
      if (v28 >= v112)
      {
        v83 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v59 = *v114;
    v23 = v115;
    v60 = v109;
    if (v111 >= 2 && (v61 = v101, v59 == *v101 - 1))
    {
      v62 = v98;
      v63 = v99;
      v64 = v96;
      v65 = v114;
      v66 = v103;
      v67 = v116;
      v68 = v110;
      v69 = v108;
      do
      {
        v70 = v62;
        *v65 = 0;
        v29 = (v29 - v105[v66] * (*v61 - 1));
        v128 = v29;
        --v62;
        v65 = &v63[v39 - 8];
        v59 = *v65;
        v63 -= 4;
        if (v70 < 2)
        {
          break;
        }

        v61 = &v64[v39];
        v71 = *&v64[v39] - 1;
        v64 -= 4;
        v66 = v62;
      }

      while (v59 == v71);
      v72 = &v63[v39 - 4];
    }

    else
    {
      v62 = v103;
      v72 = v114;
      v67 = v116;
      v68 = v110;
      v69 = v108;
    }

    *v72 = v59 + 1;
    v29 = (v29 + v105[v62]);
    v128 = v29;
    if (!v109)
    {
      goto LABEL_60;
    }

LABEL_52:
    v73 = *v113;
    if (v60 >= 2 && v73 == *v69 - 1)
    {
      v74 = __p;
      v75 = v95;
      v76 = v97;
      v77 = v69;
      v78 = v113;
      v79 = v102;
      do
      {
        v80 = v76;
        *v78 = 0;
        v36 -= v68[v79] * (*v77 - 1);
        v117 = v36;
        --v76;
        v78 = &v74[v40 - 8];
        v73 = *v78;
        v74 -= 4;
        if (v80 < 2)
        {
          break;
        }

        v77 = &v75[v40];
        v81 = *&v75[v40] - 1;
        v75 -= 4;
        v79 = v76;
      }

      while (v73 == v81);
      v82 = &v74[v40 - 4];
    }

    else
    {
      v76 = v102;
      v82 = v113;
    }

    *v82 = v73 + 1;
    v36 += v68[v76];
    v117 = v36;
    goto LABEL_60;
  }

  if (v12)
  {
    v13 += *v12;
  }

  if (v15)
  {
    v14 += *v15;
  }

  if (v19 == 2)
  {
    v84 = *v124;
    if (*v124 >= 1)
    {
      v85 = 0;
      v86 = v126[3];
      v87 = *v86;
      v88 = v86[1];
      v89 = 2 * **v126;
      v90 = 2 * (*v126)[1];
      v91 = *(v124 + 1);
      do
      {
        if (v91 >= 1)
        {
          v92 = v14;
          v93 = v13;
          v94 = v91;
          do
          {
            LOWORD(v16) = *v93;
            v16 = LODWORD(v16);
            *v92 = (LODWORD(v16) + (HIWORD(LODWORD(v16)) & 1u) + 0x7FFF) >> 16;
            v93 = (v93 + v90);
            v92 += v88;
            --v94;
          }

          while (v94);
        }

        ++v85;
        v13 = (v13 + v89);
        v14 += v87;
      }

      while (v85 != v84);
    }
  }

  else if (v19 == 1)
  {
    v20 = *v124;
    if (*v124 >= 1)
    {
      v21 = 2 * **v126;
      v22 = 2 * *v126[3];
      do
      {
        LOWORD(v16) = *v13;
        v16 = LODWORD(v16);
        *v14 = (LODWORD(v16) + (HIWORD(LODWORD(v16)) & 1u) + 0x7FFF) >> 16;
        v13 = (v13 + v21);
        v14 = (v14 + v22);
        --v20;
      }

      while (v20);
    }
  }

LABEL_81:
  v128 = &v126;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v128);
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }
}

void sub_25A39AB6C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned short,mlx::core::complex64_t>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, float a9, _BYTE *a10)
{
  v115 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + 2 * a6);
  v14 = *(*a2 + 152) + 8 * a7;
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == a3[1])
  {
    LOWORD(a9) = *v13;
    *v14 = LODWORD(a9);
    *(v14 + 4) = 0;
  }

  else
  {
    v16 = *(*a1 + 48);
    v106 = 0;
    v107 = 0;
    v108 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v106, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v109, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
    v95 = 0;
    v96 = 0;
    v97 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v95, &v106, &v112, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v95, 0x7FFFFFFFuLL, &v102);
    v105 = &v95;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v105);
    for (i = 0; i != -48; i -= 24)
    {
      v19 = *(&v109 + i);
      if (v19)
      {
        *(&v110 + i) = v19;
        operator delete(v19);
      }
    }

    v20 = v102;
    v21 = (v103 - v102) >> 2;
    if (v21 > 2)
    {
      if (v12)
      {
        v13 += *v12;
      }

      if (v15)
      {
        v14 += 8 * *v15;
      }

      v26 = v21 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v106, &v102, v104, v21 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v95, &v102, v104 + 3, v21 - 3);
      v28 = v103 - 3;
      v29 = 1;
      do
      {
        v30 = *v28++;
        v29 *= v30;
      }

      while (v28 != v103);
      if (v16)
      {
        v31 = 0;
        v32 = v21 - 2;
        v33 = v21 - 1;
        v34 = v14 + 4;
        do
        {
          v35 = *(v102 + v26);
          if (v35 >= 1)
          {
            v36 = 0;
            v37 = v104;
            v38 = &v13[v106];
            v39 = 2 * (*v104)[v26];
            v40 = (v34 + 8 * v95);
            v41 = 8 * v104[3][v26];
            do
            {
              v42 = *(v102 + v32);
              if (v42 >= 1)
              {
                v43 = 0;
                v44 = 2 * (*v37)[v32];
                v45 = 8 * v37[3][v32];
                v46 = v40;
                v47 = v38;
                do
                {
                  v48 = *(v102 + v33);
                  if (v48 >= 1)
                  {
                    v49 = 0;
                    v50 = 2 * (*v37)[v33];
                    v51 = 8 * v37[3][v33];
                    v52 = v46;
                    do
                    {
                      LOWORD(v27) = *(v47 + v49);
                      v27 = LODWORD(v27);
                      *(v52 - 1) = v27;
                      *v52 = 0.0;
                      v49 += v50;
                      v52 = (v52 + v51);
                      --v48;
                    }

                    while (v48);
                  }

                  ++v43;
                  v47 = (v47 + v44);
                  v46 = (v46 + v45);
                }

                while (v43 != v42);
              }

              ++v36;
              v38 = (v38 + v39);
              v40 = (v40 + v41);
            }

            while (v36 != v35);
          }

          v53 = v108 - v107;
          v54 = (v108 - v107) >> 2;
          if (v54)
          {
            v55 = v113;
            v56 = ((v53 << 30) - 0x100000000) >> 32;
            v57 = v113 + 4 * v56;
            v58 = *v57;
            v59 = v107 + 4 * v56;
            v60 = v110;
            v61 = v106;
            if (v54 >= 2 && v58 == *v59 - 1)
            {
              v64 = (v53 >> 2) & 0x7FFFFFFF;
              v63 = v64 - 1;
              v65 = 4 * v64;
              v66 = v107 - 8;
              do
              {
                v67 = v63;
                *v57 = 0;
                v61 = (v61 - v60[v56] * (*v59 - 1));
                v106 = v61;
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
            v106 = (v61 + v60[v63]);
          }

          v69 = v97 - v96;
          v70 = (v97 - v96) >> 2;
          if (v70)
          {
            v71 = __p;
            v72 = ((v69 << 30) - 0x100000000) >> 32;
            v73 = __p + 4 * v72;
            v74 = *v73;
            v75 = v98;
            v76 = v95;
            if (v70 >= 2 && (v77 = v96 + 4 * v72, v74 == *v77 - 1))
            {
              v78 = (v69 >> 2) & 0x7FFFFFFF;
              v79 = v78 - 1;
              v80 = 4 * v78;
              v81 = v96 - 8;
              do
              {
                v82 = v79;
                *v73 = 0;
                v76 -= v75[v72] * (*v77 - 1);
                v95 = v76;
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
            v95 = v75[v79] + v76;
          }

          v31 += v29;
        }

        while (v31 < v16);
      }

      if (__p)
      {
        v101 = __p;
        operator delete(__p);
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      if (v113)
      {
        v114 = v113;
        operator delete(v113);
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
    }

    else
    {
      if (v12)
      {
        v13 += *v12;
      }

      if (v15)
      {
        v14 += 8 * *v15;
      }

      if (v21 == 2)
      {
        v84 = *v102;
        if (*v102 >= 1)
        {
          v85 = 0;
          v86 = v104;
          v87 = 2 * **v104;
          v88 = (v14 + 4);
          v89 = 8 * *v104[3];
          do
          {
            v90 = v20[1];
            if (v90 >= 1)
            {
              v91 = 2 * (*v86)[1];
              v92 = 8 * v86[3][1];
              v93 = v88;
              v94 = v13;
              do
              {
                LOWORD(v17) = *v94;
                v17 = LODWORD(v17);
                *(v93 - 1) = v17;
                *v93 = 0.0;
                v94 = (v94 + v91);
                v93 = (v93 + v92);
                --v90;
              }

              while (v90);
            }

            ++v85;
            v13 = (v13 + v87);
            v88 = (v88 + v89);
          }

          while (v85 != v84);
        }
      }

      else if (v21 == 1)
      {
        v22 = *v102;
        if (*v102 >= 1)
        {
          v23 = 2 * **v104;
          v24 = (v14 + 4);
          v25 = 8 * *v104[3];
          do
          {
            LOWORD(v17) = *v13;
            v17 = LODWORD(v17);
            *(v24 - 1) = v17;
            *v24 = 0.0;
            v13 = (v13 + v23);
            v24 = (v24 + v25);
            --v22;
          }

          while (v22);
        }
      }
    }

    v106 = &v104;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v106);
    if (v102)
    {
      v103 = v102;
      operator delete(v102);
    }
  }
}

void sub_25A39B23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned int,BOOL>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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
    *v13 = *v12 != 0;
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
        v47 = 4 * v29[v112];
        v48 = 4 * v29[v102];
        do
        {
          if (v46 >= 1)
          {
            v49 = 0;
            v50 = v30[v31];
            v51 = v28[v31];
            v52 = 4 * v29[v31];
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
                  v54[v55] = *(v53 + v56) != 0;
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
      v88 = 4 * **v123;
      v89 = 4 * (*v123)[1];
      do
      {
        if (v87 >= 1)
        {
          v90 = v12;
          v91 = v87;
          v92 = v13;
          do
          {
            *v92 = *v90 != 0;
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
      v20 = 4 * **v123;
      do
      {
        *v13 = *v12 != 0;
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

void sub_25A39B99C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned int,unsigned char>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 4 * a6);
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
            v36 = 4 * (*v30)[v23];
            do
            {
              v37 = *(v96 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = v30[3][v28];
                v40 = 4 * (*v30)[v28];
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
                    v47 = 4 * (*v30)[v29];
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
          v83 = 4 * **v98;
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = v81[3][1];
              v86 = 4 * (*v81)[1];
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
          v22 = 4 * **v98;
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

void sub_25A39C028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned int,unsigned short>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A39C780(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned int,unsigned int>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A39CEC8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned int,unsigned long long>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A39D600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  mlx::core::ContiguousIterator::~ContiguousIterator((v37 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned int,signed char>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 4 * a6);
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
            v36 = 4 * (*v30)[v23];
            do
            {
              v37 = *(v96 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = v30[3][v28];
                v40 = 4 * (*v30)[v28];
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
                    v47 = 4 * (*v30)[v29];
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
          v83 = 4 * **v98;
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = v81[3][1];
              v86 = 4 * (*v81)[1];
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
          v22 = 4 * **v98;
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

void sub_25A39DC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned int,short>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A39E3E4(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned int,int>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A39EB2C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned int,long long>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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