void sub_25A42E524(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<half,short>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v93 = 1;
      goto LABEL_38;
    }
  }

  v93 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v115, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v115, v33, v34, v35);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, a5, *this + 3, v37 >> 2);
      v38 = *(&v104 + 1);
      v39 = v104;
      v110 = v104;
      v40 = v105;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      v111 = v40;
      v112 = v106;
      v41 = v107;
      v42 = v108;
      v107 = 0;
      v106 = 0uLL;
      v114 = v109;
      v43 = v40;
      v36 = v112;
      v37 = v109;
      *&v113 = v41;
      *(&v113 + 1) = v108;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v98)
  {
    v92 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 2 * v30;
    v89 = v37 - v42;
    v50 = 4 * v49;
    v99 = v38 - 8;
    v100 = v49 - 1;
    v95 = v42;
    v96 = v30;
    v87 = v47;
    v90 = v48;
    v91 = &v42[4 * v47];
    v101 = (v38 + 4 * v47);
    do
    {
      v102 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v115[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 2 * v57);
          v74 = mlx::core::array::shape(this, v54);
          if (v73 >= 0)
          {
            v74 = 0;
          }

          v53 += *((*this)[3] + 8 * v54) * (v74 + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v96 == 1)
      {
        *(v97 + 2 * v45++) = *(v94 + 2 * v53);
      }

      else
      {
        v75 = v101;
        if (!v92)
        {
          if (v93)
          {
            v42 = v95;
            v76 = v102;
          }

          else
          {
            v77 = 0;
            v42 = v95;
            v36 = v112;
            v76 = v102;
            do
            {
              *(v97 + 2 * v45) = *(v94 + 2 * v53 + 2 * v39);
              if (v90)
              {
                v78 = *v91;
                if (v90 >= 2 && v78 == *v75 - 1)
                {
                  v79 = v95;
                  v81 = v99;
                  v80 = v100;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v80;
                    *v82 = 0;
                    v39 -= v36[v83] * (*v75 - 1);
                    --v80;
                    v82 = &v79[v50 - 8];
                    v78 = *v82;
                    v79 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v75 = (v81 + v50);
                    v85 = *(v81 + v50) - 1;
                    v81 -= 4;
                    v83 = v80;
                  }

                  while (v78 == v85);
                  v86 = &v79[v50 - 4];
                  v75 = v101;
                }

                else
                {
                  v80 = v87;
                  v86 = v91;
                }

                *v86 = v78 + 1;
                v39 += v36[v80];
                *&v110 = v39;
              }

              ++v45;
              ++v77;
            }

            while (v77 != v96);
          }

          *&v110 = 0;
          if (v89 >= 1)
          {
            bzero(v42, v89);
          }

          v39 = 0;
          goto LABEL_87;
        }

        if ((v93 & 1) == 0)
        {
          memmove((v97 + 2 * v45), (v94 + 2 * v53), __len);
        }

        v45 += v96;
      }

      v42 = v95;
      v76 = v102;
LABEL_87:
      v44 = v76 + 1;
    }

    while (v44 != v98);
  }

  if (v42)
  {
    *&v114 = v42;
    operator delete(v42);
    v36 = v112;
  }

  if (v36)
  {
    *(&v112 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v110 + 1))
  {
    operator delete(*(&v110 + 1));
  }

  *&v110 = v115;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v110);
}

void sub_25A42EB60(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<float,short>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v93 = 1;
      goto LABEL_38;
    }
  }

  v93 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v115, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v115, v33, v34, v35);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, a5, *this + 3, v37 >> 2);
      v38 = *(&v104 + 1);
      v39 = v104;
      v110 = v104;
      v40 = v105;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      v111 = v40;
      v112 = v106;
      v41 = v107;
      v42 = v108;
      v107 = 0;
      v106 = 0uLL;
      v114 = v109;
      v43 = v40;
      v36 = v112;
      v37 = v109;
      *&v113 = v41;
      *(&v113 + 1) = v108;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v98)
  {
    v92 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v89 = v37 - v42;
    v50 = 4 * v49;
    v99 = v38 - 8;
    v100 = v49 - 1;
    v95 = v42;
    v96 = v30;
    v87 = v47;
    v90 = v48;
    v91 = &v42[4 * v47];
    v101 = (v38 + 4 * v47);
    do
    {
      v102 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v115[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 2 * v57);
          v74 = mlx::core::array::shape(this, v54);
          if (v73 >= 0)
          {
            v74 = 0;
          }

          v53 += *((*this)[3] + 8 * v54) * (v74 + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v96 == 1)
      {
        *(v97 + 4 * v45++) = *(v94 + 4 * v53);
      }

      else
      {
        v75 = v101;
        if (!v92)
        {
          if (v93)
          {
            v42 = v95;
            v76 = v102;
          }

          else
          {
            v77 = 0;
            v42 = v95;
            v36 = v112;
            v76 = v102;
            do
            {
              *(v97 + 4 * v45) = *(v94 + 4 * v53 + 4 * v39);
              if (v90)
              {
                v78 = *v91;
                if (v90 >= 2 && v78 == *v75 - 1)
                {
                  v79 = v95;
                  v81 = v99;
                  v80 = v100;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v80;
                    *v82 = 0;
                    v39 -= v36[v83] * (*v75 - 1);
                    --v80;
                    v82 = &v79[v50 - 8];
                    v78 = *v82;
                    v79 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v75 = (v81 + v50);
                    v85 = *(v81 + v50) - 1;
                    v81 -= 4;
                    v83 = v80;
                  }

                  while (v78 == v85);
                  v86 = &v79[v50 - 4];
                  v75 = v101;
                }

                else
                {
                  v80 = v87;
                  v86 = v91;
                }

                *v86 = v78 + 1;
                v39 += v36[v80];
                *&v110 = v39;
              }

              ++v45;
              ++v77;
            }

            while (v77 != v96);
          }

          *&v110 = 0;
          if (v89 >= 1)
          {
            bzero(v42, v89);
          }

          v39 = 0;
          goto LABEL_87;
        }

        if ((v93 & 1) == 0)
        {
          memmove((v97 + 4 * v45), (v94 + 4 * v53), __len);
        }

        v45 += v96;
      }

      v42 = v95;
      v76 = v102;
LABEL_87:
      v44 = v76 + 1;
    }

    while (v44 != v98);
  }

  if (v42)
  {
    *&v114 = v42;
    operator delete(v42);
    v36 = v112;
  }

  if (v36)
  {
    *(&v112 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v110 + 1))
  {
    operator delete(*(&v110 + 1));
  }

  *&v110 = v115;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v110);
}

void sub_25A42F19C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<double,short>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v93 = 1;
      goto LABEL_38;
    }
  }

  v93 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v115, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v115, v33, v34, v35);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, a5, *this + 3, v37 >> 2);
      v38 = *(&v104 + 1);
      v39 = v104;
      v110 = v104;
      v40 = v105;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      v111 = v40;
      v112 = v106;
      v41 = v107;
      v42 = v108;
      v107 = 0;
      v106 = 0uLL;
      v114 = v109;
      v43 = v40;
      v36 = v112;
      v37 = v109;
      *&v113 = v41;
      *(&v113 + 1) = v108;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v98)
  {
    v92 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v89 = v37 - v42;
    v50 = 4 * v49;
    v99 = v38 - 8;
    v100 = v49 - 1;
    v95 = v42;
    v96 = v30;
    v87 = v47;
    v90 = v48;
    v91 = &v42[4 * v47];
    v101 = (v38 + 4 * v47);
    do
    {
      v102 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v115[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 2 * v57);
          v74 = mlx::core::array::shape(this, v54);
          if (v73 >= 0)
          {
            v74 = 0;
          }

          v53 += *((*this)[3] + 8 * v54) * (v74 + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v96 == 1)
      {
        *(v97 + 8 * v45++) = *(v94 + 8 * v53);
      }

      else
      {
        v75 = v101;
        if (!v92)
        {
          if (v93)
          {
            v42 = v95;
            v76 = v102;
          }

          else
          {
            v77 = 0;
            v42 = v95;
            v36 = v112;
            v76 = v102;
            do
            {
              *(v97 + 8 * v45) = *(v94 + 8 * v53 + 8 * v39);
              if (v90)
              {
                v78 = *v91;
                if (v90 >= 2 && v78 == *v75 - 1)
                {
                  v79 = v95;
                  v81 = v99;
                  v80 = v100;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v80;
                    *v82 = 0;
                    v39 -= v36[v83] * (*v75 - 1);
                    --v80;
                    v82 = &v79[v50 - 8];
                    v78 = *v82;
                    v79 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v75 = (v81 + v50);
                    v85 = *(v81 + v50) - 1;
                    v81 -= 4;
                    v83 = v80;
                  }

                  while (v78 == v85);
                  v86 = &v79[v50 - 4];
                  v75 = v101;
                }

                else
                {
                  v80 = v87;
                  v86 = v91;
                }

                *v86 = v78 + 1;
                v39 += v36[v80];
                *&v110 = v39;
              }

              ++v45;
              ++v77;
            }

            while (v77 != v96);
          }

          *&v110 = 0;
          if (v89 >= 1)
          {
            bzero(v42, v89);
          }

          v39 = 0;
          goto LABEL_87;
        }

        if ((v93 & 1) == 0)
        {
          memmove((v97 + 8 * v45), (v94 + 8 * v53), __len);
        }

        v45 += v96;
      }

      v42 = v95;
      v76 = v102;
LABEL_87:
      v44 = v76 + 1;
    }

    while (v44 != v98);
  }

  if (v42)
  {
    *&v114 = v42;
    operator delete(v42);
    v36 = v112;
  }

  if (v36)
  {
    *(&v112 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v110 + 1))
  {
    operator delete(*(&v110 + 1));
  }

  *&v110 = v115;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v110);
}

void sub_25A42F7D8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<mlx::core::complex64_t,short>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v115, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v115, v33, v34, v35);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  v93 = v10;
  if (v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = (*this)[1] - **this;
    if (v36)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, a5, *this + 3, v36 >> 2);
      v37 = *(&v104 + 1);
      v38 = v104;
      v110 = v104;
      v39 = v105;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      v111 = v39;
      v112 = v106;
      v40 = v107;
      v41 = v108;
      v107 = 0;
      v106 = 0uLL;
      v114 = v109;
      v42 = v39;
      v43 = v112;
      v36 = v109;
      *&v113 = v40;
      *(&v113 + 1) = v108;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v41 = 0;
  v37 = 0;
  v42 = 0;
  v38 = 0;
LABEL_43:
  if (v98)
  {
    v44 = 0;
    v45 = 0;
    v46 = v42 - v37;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v89 = v36 - v41;
    v50 = 4 * v49;
    v99 = v37 - 8;
    v100 = v49 - 1;
    v95 = v41;
    v96 = v30;
    v87 = v47;
    v90 = v48;
    v91 = &v41[4 * v47];
    v101 = (v37 + 4 * v47);
    do
    {
      v102 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v115[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 2 * v57);
          v74 = mlx::core::array::shape(this, v54);
          if (v73 >= 0)
          {
            v74 = 0;
          }

          v53 += *((*this)[3] + 8 * v54) * (v74 + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v96 == 1)
      {
        *(v97 + 8 * v45++) = *(v94 + 8 * v53);
      }

      else
      {
        v75 = v101;
        if (!v93)
        {
          if (v92)
          {
            v41 = v95;
            v76 = v102;
          }

          else
          {
            v77 = 0;
            v41 = v95;
            v76 = v102;
            do
            {
              *(v97 + 8 * v45) = *(v94 + 8 * v53 + 8 * v38);
              if (v90)
              {
                v78 = *v91;
                if (v90 >= 2 && v78 == *v75 - 1)
                {
                  v79 = v95;
                  v81 = v99;
                  v80 = v100;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v80;
                    *v82 = 0;
                    v38 -= v43[v83] * (*v75 - 1);
                    --v80;
                    v82 = &v79[v50 - 8];
                    v78 = *v82;
                    v79 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v75 = (v81 + v50);
                    v85 = *(v81 + v50) - 1;
                    v81 -= 4;
                    v83 = v80;
                  }

                  while (v78 == v85);
                  v86 = &v79[v50 - 4];
                  v75 = v101;
                }

                else
                {
                  v80 = v87;
                  v86 = v91;
                }

                *v86 = v78 + 1;
                v38 += v43[v80];
                *&v110 = v38;
              }

              ++v45;
              ++v77;
            }

            while (v77 != v96);
          }

          *&v110 = 0;
          if (v89 >= 1)
          {
            bzero(v41, v89);
          }

          v38 = 0;
          goto LABEL_86;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v97 + 8 * v45), (v94 + 8 * v53), __len);
        }

        v45 += v96;
      }

      v41 = v95;
      v76 = v102;
LABEL_86:
      v44 = v76 + 1;
    }

    while (v44 != v98);
  }

  if (v41)
  {
    *&v114 = v41;
    operator delete(v41);
    v43 = v112;
  }

  if (v43)
  {
    *(&v112 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v110 + 1))
  {
    operator delete(*(&v110 + 1));
  }

  *&v110 = v115;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v110);
}

void sub_25A42FE0C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<BOOL,int>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v113, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v113, v33, v34, v35);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v108 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v102, a5, *this + 3, v37 >> 2);
      v38 = *(&v102 + 1);
      v39 = v102;
      v108 = v102;
      v40 = v103;
      *(&v102 + 1) = 0;
      v103 = 0uLL;
      v109 = v40;
      v110 = v104;
      v41 = v105;
      v42 = v106;
      v105 = 0;
      v104 = 0uLL;
      v112 = v107;
      v43 = v40;
      v36 = v110;
      v37 = v107;
      *&v111 = v41;
      *(&v111 + 1) = v106;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    v86 = v47;
    v87 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    __len = v30;
    v88 = &v42[4 * v47];
    v89 = (v38 + 4 * v47);
    v90 = v48;
    do
    {
      v100 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v113[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (__len == 1)
      {
        *(v96 + v45++) = *(v93 + v53);
      }

      else
      {
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
          }

          else
          {
            v74 = 0;
            v75 = v93 + v53;
            v36 = v110;
            v42 = v94;
            do
            {
              *(v96 + v45) = *(v75 + v39);
              if (v90)
              {
                v76 = *v88;
                if (v90 >= 2 && v76 == *v89 - 1)
                {
                  v77 = v94;
                  v79 = v98;
                  v78 = v99;
                  v80 = v89;
                  v81 = v88;
                  v82 = v86;
                  do
                  {
                    v83 = v78;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v80 - 1);
                    --v78;
                    v81 = &v77[v50 - 8];
                    v76 = *v81;
                    v77 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v80 = (v79 + v50);
                    v84 = *(v79 + v50) - 1;
                    v79 -= 4;
                    v82 = v78;
                  }

                  while (v76 == v84);
                  v85 = &v77[v50 - 4];
                }

                else
                {
                  v78 = v86;
                  v85 = v88;
                }

                *v85 = v76 + 1;
                v39 += v36[v78];
                *&v108 = v39;
              }

              ++v45;
              ++v74;
            }

            while (v74 != __len);
          }

          *&v108 = 0;
          if (v87 >= 1)
          {
            bzero(v42, v87);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + v45), (v93 + v53), __len);
        }

        v45 += __len;
      }

      v42 = v94;
LABEL_85:
      v44 = v100 + 1;
    }

    while (v100 + 1 != v97);
  }

  if (v42)
  {
    *&v112 = v42;
    operator delete(v42);
    v36 = v110;
  }

  if (v36)
  {
    *(&v110 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v108 + 1))
  {
    operator delete(*(&v108 + 1));
  }

  *&v108 = v113;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v108);
}

void sub_25A430434(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned char,int>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v93 = v10;
  if (v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = (*this)[1] - **this;
    if (v36)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v36 >> 2);
      v37 = *(&v103 + 1);
      v38 = v103;
      v109 = v103;
      v39 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v39;
      v111 = v105;
      v40 = v106;
      v41 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v42 = v39;
      v43 = v111;
      v36 = v108;
      *&v112 = v40;
      *(&v112 + 1) = v107;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v41 = 0;
  v37 = 0;
  v42 = 0;
  v38 = 0;
LABEL_43:
  if (v98)
  {
    v44 = 0;
    v45 = 0;
    v46 = v42 - v37;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    v87 = v47;
    v88 = v36 - v41;
    v50 = 4 * v49;
    v99 = v37 - 8;
    v100 = v49 - 1;
    v95 = v41;
    __len = v30;
    v90 = v48;
    v91 = &v41[4 * v47];
    v89 = (v37 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (__len == 1)
      {
        *(v97 + v45++) = *(v94 + v53);
      }

      else
      {
        if (!v93)
        {
          if (v92)
          {
            v41 = v95;
            v74 = v101;
          }

          else
          {
            v75 = 0;
            v41 = v95;
            v76 = v94 + v53;
            v74 = v101;
            do
            {
              *(v97 + v45) = *(v76 + v38);
              if (v90)
              {
                v77 = *v91;
                if (v90 >= 2 && v77 == *v89 - 1)
                {
                  v78 = v95;
                  v80 = v99;
                  v79 = v100;
                  v81 = v89;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v79;
                    *v82 = 0;
                    v38 -= v43[v83] * (*v81 - 1);
                    --v79;
                    v82 = &v78[v50 - 8];
                    v77 = *v82;
                    v78 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v81 = (v80 + v50);
                    v85 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v83 = v79;
                  }

                  while (v77 == v85);
                  v86 = &v78[v50 - 4];
                }

                else
                {
                  v79 = v87;
                  v86 = v91;
                }

                *v86 = v77 + 1;
                v38 += v43[v79];
                *&v109 = v38;
              }

              ++v45;
              ++v75;
            }

            while (v75 != __len);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v41, v88);
          }

          v38 = 0;
          goto LABEL_84;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v97 + v45), (v94 + v53), __len);
        }

        v45 += __len;
      }

      v41 = v95;
      v74 = v101;
LABEL_84:
      v44 = v74 + 1;
    }

    while (v44 != v98);
  }

  if (v41)
  {
    *&v113 = v41;
    operator delete(v41);
    v43 = v111;
  }

  if (v43)
  {
    *(&v111 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A430A58(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned short,int>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 2 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 2 * v45++) = *(v93 + 2 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 2 * v45) = *(v93 + 2 * v53 + 2 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 2 * v45), (v93 + 2 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A43108C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned int,int>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 4 * v45++) = *(v93 + 4 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 4 * v45) = *(v93 + 4 * v53 + 4 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 4 * v45), (v93 + 4 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A4316C0(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned long long,int>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v39 = 0;
  v42 = 0;
  v38 = 0;
  v43 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A431CF4(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<half,int>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 2 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 2 * v45++) = *(v93 + 2 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 2 * v45) = *(v93 + 2 * v53 + 2 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 2 * v45), (v93 + 2 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A432328(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<float,int>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 4 * v45++) = *(v93 + 4 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 4 * v45) = *(v93 + 4 * v53 + 4 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 4 * v45), (v93 + 4 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A43295C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<double,int>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A432F90(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<mlx::core::complex64_t,int>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v91 = 1;
      goto LABEL_38;
    }
  }

  v91 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v92 = v10;
  if (v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = (*this)[1] - **this;
    if (v36)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v36 >> 2);
      v37 = *(&v103 + 1);
      v38 = v103;
      v109 = v103;
      v39 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v39;
      v111 = v105;
      v40 = v106;
      v41 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v42 = v39;
      v43 = v111;
      v36 = v108;
      *&v112 = v40;
      *(&v112 + 1) = v107;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v41 = 0;
  v37 = 0;
  v42 = 0;
  v38 = 0;
LABEL_43:
  if (v97)
  {
    v44 = 0;
    v45 = 0;
    v46 = v42 - v37;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v36 - v41;
    v50 = 4 * v49;
    v98 = v37 - 8;
    v99 = v49 - 1;
    v94 = v41;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v41[4 * v47];
    v100 = (v37 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v92)
        {
          if (v91)
          {
            v41 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v41 = v94;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v38);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v38 -= v43[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v38 += v43[v79];
                *&v109 = v38;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v41, v88);
          }

          v38 = 0;
          goto LABEL_84;
        }

        if ((v91 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v41 = v94;
      v75 = v101;
LABEL_84:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v41)
  {
    *&v113 = v41;
    operator delete(v41);
    v43 = v111;
  }

  if (v43)
  {
    *(&v111 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A4335BC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<BOOL,long long>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v113, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v113, v33, v34, v35);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v108 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v102, a5, *this + 3, v37 >> 2);
      v38 = *(&v102 + 1);
      v39 = v102;
      v108 = v102;
      v40 = v103;
      *(&v102 + 1) = 0;
      v103 = 0uLL;
      v109 = v40;
      v110 = v104;
      v41 = v105;
      v42 = v106;
      v105 = 0;
      v104 = 0uLL;
      v112 = v107;
      v43 = v40;
      v36 = v110;
      v37 = v107;
      *&v111 = v41;
      *(&v111 + 1) = v106;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    v86 = v47;
    v87 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    __len = v30;
    v88 = &v42[4 * v47];
    v89 = (v38 + 4 * v47);
    v90 = v48;
    do
    {
      v100 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v113[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (__len == 1)
      {
        *(v96 + v45++) = *(v93 + v53);
      }

      else
      {
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
          }

          else
          {
            v74 = 0;
            v75 = v93 + v53;
            v36 = v110;
            v42 = v94;
            do
            {
              *(v96 + v45) = *(v75 + v39);
              if (v90)
              {
                v76 = *v88;
                if (v90 >= 2 && v76 == *v89 - 1)
                {
                  v77 = v94;
                  v79 = v98;
                  v78 = v99;
                  v80 = v89;
                  v81 = v88;
                  v82 = v86;
                  do
                  {
                    v83 = v78;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v80 - 1);
                    --v78;
                    v81 = &v77[v50 - 8];
                    v76 = *v81;
                    v77 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v80 = (v79 + v50);
                    v84 = *(v79 + v50) - 1;
                    v79 -= 4;
                    v82 = v78;
                  }

                  while (v76 == v84);
                  v85 = &v77[v50 - 4];
                }

                else
                {
                  v78 = v86;
                  v85 = v88;
                }

                *v85 = v76 + 1;
                v39 += v36[v78];
                *&v108 = v39;
              }

              ++v45;
              ++v74;
            }

            while (v74 != __len);
          }

          *&v108 = 0;
          if (v87 >= 1)
          {
            bzero(v42, v87);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + v45), (v93 + v53), __len);
        }

        v45 += __len;
      }

      v42 = v94;
LABEL_85:
      v44 = v100 + 1;
    }

    while (v100 + 1 != v97);
  }

  if (v42)
  {
    *&v112 = v42;
    operator delete(v42);
    v36 = v110;
  }

  if (v36)
  {
    *(&v110 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v108 + 1))
  {
    operator delete(*(&v108 + 1));
  }

  *&v108 = v113;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v108);
}

void sub_25A433BE8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned char,long long>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v93 = v10;
  if (v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = (*this)[1] - **this;
    if (v36)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v36 >> 2);
      v37 = *(&v103 + 1);
      v38 = v103;
      v109 = v103;
      v39 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v39;
      v111 = v105;
      v40 = v106;
      v41 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v42 = v39;
      v43 = v111;
      v36 = v108;
      *&v112 = v40;
      *(&v112 + 1) = v107;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v41 = 0;
  v37 = 0;
  v42 = 0;
  v38 = 0;
LABEL_43:
  if (v98)
  {
    v44 = 0;
    v45 = 0;
    v46 = v42 - v37;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    v87 = v47;
    v88 = v36 - v41;
    v50 = 4 * v49;
    v99 = v37 - 8;
    v100 = v49 - 1;
    v95 = v41;
    __len = v30;
    v90 = v48;
    v91 = &v41[4 * v47];
    v89 = (v37 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (__len == 1)
      {
        *(v97 + v45++) = *(v94 + v53);
      }

      else
      {
        if (!v93)
        {
          if (v92)
          {
            v41 = v95;
            v74 = v101;
          }

          else
          {
            v75 = 0;
            v41 = v95;
            v76 = v94 + v53;
            v74 = v101;
            do
            {
              *(v97 + v45) = *(v76 + v38);
              if (v90)
              {
                v77 = *v91;
                if (v90 >= 2 && v77 == *v89 - 1)
                {
                  v78 = v95;
                  v80 = v99;
                  v79 = v100;
                  v81 = v89;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v79;
                    *v82 = 0;
                    v38 -= v43[v83] * (*v81 - 1);
                    --v79;
                    v82 = &v78[v50 - 8];
                    v77 = *v82;
                    v78 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v81 = (v80 + v50);
                    v85 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v83 = v79;
                  }

                  while (v77 == v85);
                  v86 = &v78[v50 - 4];
                }

                else
                {
                  v79 = v87;
                  v86 = v91;
                }

                *v86 = v77 + 1;
                v38 += v43[v79];
                *&v109 = v38;
              }

              ++v45;
              ++v75;
            }

            while (v75 != __len);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v41, v88);
          }

          v38 = 0;
          goto LABEL_84;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v97 + v45), (v94 + v53), __len);
        }

        v45 += __len;
      }

      v41 = v95;
      v74 = v101;
LABEL_84:
      v44 = v74 + 1;
    }

    while (v44 != v98);
  }

  if (v41)
  {
    *&v113 = v41;
    operator delete(v41);
    v43 = v111;
  }

  if (v43)
  {
    *(&v111 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A434210(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned short,long long>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 2 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 2 * v45++) = *(v93 + 2 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 2 * v45) = *(v93 + 2 * v53 + 2 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 2 * v45), (v93 + 2 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A434848(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned int,long long>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 4 * v45++) = *(v93 + 4 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 4 * v45) = *(v93 + 4 * v53 + 4 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 4 * v45), (v93 + 4 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A434E80(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned long long,long long>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v39 = 0;
  v42 = 0;
  v38 = 0;
  v43 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A4354B8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<half,long long>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 2 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 2 * v45++) = *(v93 + 2 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 2 * v45) = *(v93 + 2 * v53 + 2 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 2 * v45), (v93 + 2 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A435AF0(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<float,long long>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 4 * v45++) = *(v93 + 4 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 4 * v45) = *(v93 + 4 * v53 + 4 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 4 * v45), (v93 + 4 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A436128(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<double,long long>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A436760(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<mlx::core::complex64_t,long long>(uint64_t **this, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = (*a5)[v25];
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = (*a5)[v15];
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v91 = 1;
      goto LABEL_38;
    }
  }

  v91 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v92 = v10;
  if (v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = (*this)[1] - **this;
    if (v36)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v36 >> 2);
      v37 = *(&v103 + 1);
      v38 = v103;
      v109 = v103;
      v39 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v39;
      v111 = v105;
      v40 = v106;
      v41 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v42 = v39;
      v43 = v111;
      v36 = v108;
      *&v112 = v40;
      *(&v112 + 1) = v107;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v41 = 0;
  v37 = 0;
  v42 = 0;
  v38 = 0;
LABEL_43:
  if (v97)
  {
    v44 = 0;
    v45 = 0;
    v46 = v42 - v37;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v36 - v41;
    v50 = 4 * v49;
    v98 = v37 - 8;
    v99 = v49 - 1;
    v94 = v41;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v41[4 * v47];
    v100 = (v37 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 2 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (*(a2 + 8) - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v92)
        {
          if (v91)
          {
            v41 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v41 = v94;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v38);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v38 -= v43[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v38 += v43[v79];
                *&v109 = v38;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v41, v88);
          }

          v38 = 0;
          goto LABEL_84;
        }

        if ((v91 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v41 = v94;
      v75 = v101;
LABEL_84:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v41)
  {
    *&v113 = v41;
    operator delete(v41);
    v43 = v111;
  }

  if (v43)
  {
    *(&v111 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A436D90(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BF62C8;
  mlx::core::array::~array((a1 + 96));
  v5 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

{
  *a1 = &unk_286BF62C8;
  mlx::core::array::~array((a1 + 96));
  v5 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return MEMORY[0x25F851760](a1, 0x10B1C40C2F501AALL);
}

uint64_t *std::__function::__func<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF62C8;
  result = std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::__bind((a2 + 8), a1 + 8);
  *(a2 + 116) = 0;
  *(a2 + 113) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 96));
  v4 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }
}

void std::__function::__func<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 96));
  v4 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::cpu::CommandEncoder::dispatch<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  return a1;
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF63C0;
  v2 = (a1 + 4);
  mlx::core::array::~array((a1 + 8));
  mlx::core::array::~array((a1 + 6));
  mlx::core::array::~array(v2);
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF63C0;
  v2 = (a1 + 4);
  mlx::core::array::~array((a1 + 8));
  mlx::core::array::~array((a1 + 6));
  mlx::core::array::~array(v2);

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BF63C0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  *(a2 + 24) = *(result + 24);
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 56);
  *(a2 + 48) = *(result + 48);
  *(a2 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 72);
  *(a2 + 64) = *(result + 64);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 64));
  mlx::core::array::~array((a1 + 48));

  mlx::core::array::~array((a1 + 32));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 64));
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(int *a1)
{
  v2 = (a1 + 6);
  v3 = *(*(a1 + 3) + 56);
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        v32 = (a1 + 2);
        v35 = *a1;
        v33 = (a1 + 10);
        v34 = v35;

        mlx::core::dispatch_gather_axis<int>(v32, v2, v33, v34);
      }

      else
      {
        if (v3 != 8)
        {
          goto LABEL_34;
        }

        v16 = (a1 + 2);
        v19 = *a1;
        v17 = (a1 + 10);
        v18 = v19;

        mlx::core::dispatch_gather_axis<long long>(v16, v2, v17, v18);
      }
    }

    else if (v3 == 5)
    {
      v24 = (a1 + 2);
      v27 = *a1;
      v25 = (a1 + 10);
      v26 = v27;

      mlx::core::dispatch_gather_axis<signed char>(v24, v2, v25, v26);
    }

    else
    {
      v8 = (a1 + 2);
      v11 = *a1;
      v9 = (a1 + 10);
      v10 = v11;

      mlx::core::dispatch_gather_axis<short>(v8, v2, v9, v10);
    }
  }

  else if (v3 > 2)
  {
    if (v3 == 3)
    {
      v28 = (a1 + 2);
      v31 = *a1;
      v29 = (a1 + 10);
      v30 = v31;

      mlx::core::dispatch_gather_axis<unsigned int>(v28, v2, v29, v30);
    }

    else
    {
      v12 = (a1 + 2);
      v15 = *a1;
      v13 = (a1 + 10);
      v14 = v15;

      mlx::core::dispatch_gather_axis<unsigned long long>(v12, v2, v13, v14);
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = (a1 + 2);
        v7 = *a1;
        v5 = (a1 + 10);
        v6 = v7;

        mlx::core::dispatch_gather_axis<unsigned short>(v4, v2, v5, v6);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[GatherAxis::eval_cpu] Cannot gather with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v20 = (a1 + 2);
    v23 = *a1;
    v21 = (a1 + 10);
    v22 = v23;

    mlx::core::dispatch_gather_axis<unsigned char>(v20, v2, v21, v22);
  }
}

void mlx::core::dispatch_gather_axis<unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,unsigned char>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,unsigned char>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,unsigned char>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,unsigned char>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,unsigned char>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,unsigned char>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,unsigned char>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,unsigned char>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,unsigned char>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,unsigned short>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,unsigned short>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,unsigned short>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,unsigned short>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,unsigned short>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,unsigned short>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,unsigned short>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,unsigned short>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,unsigned short>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,unsigned int>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,unsigned int>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,unsigned int>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,unsigned int>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,unsigned int>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,unsigned int>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,unsigned int>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,unsigned int>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,unsigned int>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,unsigned long long>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,unsigned long long>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,unsigned long long>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,unsigned long long>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,unsigned long long>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,unsigned long long>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,unsigned long long>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,unsigned long long>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,unsigned long long>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,signed char>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,signed char>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,signed char>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,signed char>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,signed char>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,signed char>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,signed char>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,signed char>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,signed char>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,short>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,short>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,short>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,short>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,short>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,short>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,short>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,short>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,short>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,int>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,int>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,int>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,int>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,int>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,int>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,int>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,int>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,int>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,long long>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,long long>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,long long>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,long long>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,long long>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,long long>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,long long>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,long long>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,long long>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::gather_axis<BOOL,unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v92, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
  v9 = &v92[a4];
  v10 = v93 - (v9 + 1);
  if (v93 != v9 + 1)
  {
    memmove(&v92[a4], v9 + 1, v93 - (v9 + 1));
  }

  v93 = (v9 + v10);
  v11 = *a2;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v89, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 2);
  v12 = &v89[a4];
  v13 = v90 - (v12 + 1);
  if (v90 != v12 + 1)
  {
    memmove(&v89[a4], v12 + 1, v90 - (v12 + 1));
  }

  v90 = (v12 + v13);
  mlx::core::ContiguousIterator::ContiguousIterator(&v82, &v89, &v92, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v92 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v92, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = a4;
  v15 = &v92[v14];
  v16 = v93 - &v92[v14 + 1];
  if (v93 != &v92[v14 + 1])
  {
    memmove(&v92[v14], &v92[v14 + 1], v93 - (v15 + 1));
  }

  v93 = (v15 + v16);
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v89, &v92, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v72 = *(*a1 + 152);
  v73 = *(*a2 + 152);
  v67 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v82;
    v28 = (v84 - v83) >> 2;
    v74 = (((v84 - v83) << 30) - 0x100000000) >> 32;
    v29 = v83 + 4 * v74;
    v30 = v75;
    v31 = (v77 - v76) >> 2;
    v32 = (((v77 - v76) << 30) - 0x100000000) >> 32;
    v33 = v76 + 4 * v32;
    v34 = 4 * (v28 & 0x7FFFFFFF);
    v69 = v83 - 8;
    v35 = 4 * (v31 & 0x7FFFFFFF);
    v68 = v76 - 8;
    v65 = v22;
    do
    {
      v66 = v26;
      if (v25)
      {
        v36 = 0;
        v37 = v85;
        v38 = v87 + 4 * v74;
        v39 = v78;
        v70 = __p;
        v71 = v87;
        v40 = __p + 4 * v32;
        v41 = v67;
        do
        {
          if (v20 >= 1)
          {
            v42 = (v73 + v27);
            v43 = v20;
            v44 = v41;
            do
            {
              *v44 = *(v72 + v30 + v18 * *v42);
              v44 += v19;
              v42 += v17;
              --v43;
            }

            while (v43);
          }

          if (v28)
          {
            v45 = *v38;
            if (v28 >= 2 && v45 == *v29 - 1)
            {
              v46 = v71;
              v47 = v69;
              v48 = (v28 & 0x7FFFFFFF) - 1;
              v49 = v29;
              v50 = v38;
              v51 = v74;
              do
              {
                v52 = v48;
                *v50 = 0;
                v27 -= v37[v51] * (*v49 - 1);
                v82 = v27;
                --v48;
                v50 = &v46[v34 - 8];
                v45 = *v50;
                v46 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v49 = &v47[v34];
                v53 = *&v47[4 * (v28 & 0x7FFFFFFF)] - 1;
                v47 -= 4;
                v51 = v48;
              }

              while (v45 == v53);
              v54 = &v46[v34 - 4];
            }

            else
            {
              v48 = v74;
              v54 = v38;
            }

            *v54 = v45 + 1;
            v27 += v37[v48];
            v82 = v27;
          }

          if (v31)
          {
            v55 = *v40;
            if (v31 >= 2 && v55 == *v33 - 1)
            {
              v56 = v70;
              v57 = v68;
              v58 = (v31 & 0x7FFFFFFF) - 1;
              v59 = v33;
              v60 = v40;
              v61 = v32;
              do
              {
                v62 = v58;
                *v60 = 0;
                v30 -= v39[v61] * (*v59 - 1);
                v75 = v30;
                --v58;
                v60 = &v56[v35 - 8];
                v55 = *v60;
                v56 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v59 = &v57[v35];
                v63 = *&v57[4 * (v31 & 0x7FFFFFFF)] - 1;
                v57 -= 4;
                v61 = v58;
              }

              while (v55 == v63);
              v64 = &v56[v35 - 4];
            }

            else
            {
              v58 = v32;
              v64 = v40;
            }

            *v64 = v55 + 1;
            v30 += v39[v58];
            v75 = v30;
          }

          ++v36;
          ++v41;
        }

        while (v36 != v25);
      }

      v67 += v25 * v20;
      v26 = v66 + 1;
    }

    while (v66 + 1 != v65);
  }

  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }
}