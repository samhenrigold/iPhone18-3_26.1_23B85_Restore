void std::vector<geo::math::Matrix<double,3,1>>::resize(const void **result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

const void **std::vector<std::vector<unsigned long>>::reserve(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<unsigned long>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

const void **std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(void *a1, char **a2)
{
  v3 = (a1 + 1);
  if (v3 != a2)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  std::vector<std::vector<unsigned long>>::resize(a1 + 35, 1uLL);
  std::vector<unsigned long>::resize(a1[35], 0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 3));
  v4 = a1[35];
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = 0;
    v8 = (v6 - v5 - 8) >> 3;
    v9 = vdupq_n_s64(v8);
    v10 = (v8 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v11 = xmmword_1E3049620;
    v12 = vdupq_n_s64(2uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v9, v11));
      if (v13.i8[0])
      {
        *(v5 + 8 * v7) = v7;
      }

      if (v13.i8[4])
      {
        *(v5 + 8 * v7 + 8) = v7 + 1;
      }

      v7 += 2;
      v11 = vaddq_s64(v11, v12);
    }

    while (v10 != v7);
  }
}

void *geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 32);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 35);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 38);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 41);

  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(this + 44);
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = (this + 8);
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
  if (v5 > 1)
  {
    v70 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    if (*this)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Start computing Delaunay triangulation ... \n", 44);
      v3 = *(this + 1);
      v4 = *(this + 2);
      v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    }

    std::vector<unsigned int>::resize((this + 32), v5);
    v7 = *(this + 4);
    v8 = *(this + 5);
    if (v7 != v8)
    {
      v9 = 0;
      v10 = (v8 - v7 - 4) >> 2;
      v6 = vdupq_n_s64(v10);
      v11 = (v10 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v12 = (v7 + 8);
      do
      {
        v13 = vdupq_n_s64(v9);
        v14 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v13, xmmword_1E3049620)));
        if (vuzp1_s16(v14, v6.n128_u64[0]).u8[0])
        {
          *(v12 - 2) = v9;
        }

        if (vuzp1_s16(v14, *&v6).i8[2])
        {
          *(v12 - 1) = v9 + 1;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(*&v6, vorrq_s8(v13, xmmword_1E3049640)))).i32[1])
        {
          *v12 = v9 + 2;
          v12[1] = v9 + 3;
        }

        v9 += 4;
        v12 += 4;
      }

      while (v11 != v9);
    }

    v15 = 126 - 2 * __clz((v8 - v7) >> 2);
    *__x = this;
    if (v8 == v7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(v7, v8, __x, v16, 1, v6);
    v18 = *(this + 1);
    v19 = *(this + 2);
    v20 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
    *__x = geo::math::less<double,3,1>;
    if (v19 == v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(v18, v19, __x, v21, 1, v17);
    if (v5 >= 2)
    {
      v22 = 0;
      for (i = 1; i != v5; ++i)
      {
        v24 = (*v2 + v22);
        v26 = v24[3];
        v25 = (v24 + 3);
        if (v26 == *(*v2 + v22) && *(*v2 + v22 + 32) == *(*v2 + v22 + 8))
        {
          v27 = *(*(this + 4) + 4 * i);
          *__x = *v25;
          v73 = *(v25 + 2);
          v28 = *(this + 14);
          v29 = *(this + 15);
          if (v28 >= v29)
          {
            v31 = *(this + 13);
            v32 = (v28 - v31) >> 5;
            v33 = v32 + 1;
            if ((v32 + 1) >> 59)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v34 = v29 - v31;
            if (v34 >> 4 > v33)
            {
              v33 = v34 >> 4;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFE0)
            {
              v35 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,geo::math::Matrix<double,3,1>>>>(this + 104, v35);
            }

            v36 = 32 * v32;
            *v36 = v27;
            *(v36 + 8) = *__x;
            *(v36 + 24) = v73;
            v30 = 32 * v32 + 32;
            v37 = *(this + 13);
            v38 = *(this + 14) - v37;
            v39 = v36 - v38;
            memcpy((v36 - v38), v37, v38);
            v40 = *(this + 13);
            *(this + 13) = v39;
            *(this + 14) = v30;
            *(this + 15) = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          else
          {
            *v28 = v27;
            *(v28 + 8) = *__x;
            *(v28 + 24) = v73;
            v30 = v28 + 32;
          }

          *(this + 14) = v30;
        }

        v22 += 24;
      }
    }

    std::vector<unsigned int>::resize((this + 56), v5, &geo::math::kInvalidIndex);
    if (v4 != v3)
    {
      v41 = 0;
      v42 = *(this + 4);
      v43 = *(this + 7);
      do
      {
        *(v43 + 4 * *(v42 + 4 * v41)) = v41;
        ++v41;
      }

      while (v5 > v41);
    }

    memset(&v71, 0, sizeof(v71));
    __x[0] = 0;
    std::vector<unsigned int>::resize(&v71, v5, __x);
    if (v5 < 2)
    {
      v51 = 1;
    }

    else
    {
      v44 = 0;
      for (j = 1; j < v5; j = (j + 1))
      {
        v46 = *v2 + 24 * j;
        v47 = (*v2 + 24 * v44);
        if (*v46 != *v47 || *(v46 + 8) != v47[1])
        {
          v48 = v44 + 1;
          v44 = j;
          if (j != v48)
          {
            v49 = *v2 + 24 * v48;
            v50 = *v46;
            *(v49 + 16) = *(v46 + 16);
            *v49 = v50;
            *(*(this + 4) + 4 * v48) = *(*(this + 4) + 4 * j);
            v44 = v48;
          }
        }

        v71.__begin_[j] = v44;
      }

      v51 = v44 + 1;
    }

    if (v5 == v51)
    {
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(this);
      if (!v5)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v55 = v51;
      std::vector<unsigned int>::resize((this + 80), v5);
      v56 = *(this + 7);
      if (v4 != v3)
      {
        begin = v71.__begin_;
        v58 = *(this + 10);
        if (v5 <= 1)
        {
          v59 = 1;
        }

        else
        {
          v59 = v5;
        }

        v60 = *(this + 7);
        do
        {
          v61 = *v60++;
          *v58++ = begin[v61];
          --v59;
        }

        while (v59);
      }

      *(this + 8) = v56;
      std::vector<unsigned int>::resize((this + 56), v5, &geo::math::kInvalidIndex);
      std::vector<geo::math::Matrix<double,3,1>>::resize(v2, v55);
      std::vector<unsigned int>::resize((this + 32), v55);
      if (!v55)
      {
        geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(this);
        v5 = 0;
LABEL_68:
        std::vector<std::vector<unsigned long>>::resize(this + 21, v5);
        geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(this, 0, (v5 - 1), __x);
        if (*this)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Finish computing Delaunay triangulation ... \n", 45);
        }

        v5 = v70;
        if (v71.__begin_)
        {
          v71.__end_ = v71.__begin_;
          operator delete(v71.__begin_);
        }

        return v5 > 1;
      }

      v62 = 0;
      v63 = *(this + 4);
      v64 = *(this + 7);
      do
      {
        *(v64 + 4 * *(v63 + 4 * v62)) = v62;
        ++v62;
      }

      while (v55 != v62);
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(this);
      v5 = v55;
    }

    v65 = 0;
    for (k = 0; k != v5; ++k)
    {
      v67 = *v2 + v65;
      v68 = *(v67 + 2);
      *__x = *v67;
      v73 = v68;
      v74 = k;
      std::__hash_table<std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,std::__unordered_map_hasher<geo::math::Matrix<double,3,1>,std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,geo::math::VectorHasher<geo::math::Matrix<double,3,1>>,std::equal_to<geo::math::Matrix<double,3,1>>,true>,std::__unordered_map_equal<geo::math::Matrix<double,3,1>,std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,std::equal_to<geo::math::Matrix<double,3,1>>,geo::math::VectorHasher<geo::math::Matrix<double,3,1>>,true>,std::allocator<std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>>>::__emplace_unique_key_args<geo::math::Matrix<double,3,1>,std::pair<geo::math::Matrix<double,3,1>,unsigned long>>(this + 16, __x, __x);
      v65 += 24;
    }

    goto LABEL_68;
  }

  if (*this)
  {
    v52 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Only has ", 9);
    v53 = MEMORY[0x1E69060F0](v52, 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3));
    v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, " input points, not enough to be triangulated!", 45);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, " Quitting!\n", 11);
  }

  return v5 > 1;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(this, this + 32, this + 38);
  if (result)
  {

    return geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(this, this + 35, this + 41);
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, char a2)
{
  if (*this == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Start computing constrained Delaunay triangulation ... \n", 56);
  }

  v4 = *(this + 39) - *(this + 38);
  if (v4)
  {
    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = 1;
    do
    {
      v9 = *(*(this + 38) + 24 * v5 + 8) - *(*(this + 38) + 24 * v5);
      if (v9)
      {
        v10 = 0;
        v11 = v9 >> 3;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        do
        {
          v13 = (*(*(this + 38) + 24 * v5) + 8 * v10);
          v8 &= geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(this, *v13, v13[1]);
          ++v10;
        }

        while (v12 != v10);
      }

      ++v5;
    }

    while (v5 != v7);
  }

  else
  {
    v8 = 1;
  }

  v14 = *(this + 42) - *(this + 41);
  if (v14)
  {
    v15 = 0;
    v16 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    do
    {
      v18 = *(*(this + 41) + 24 * v15 + 8) - *(*(this + 41) + 24 * v15);
      if (v18)
      {
        v19 = 0;
        v20 = v18 >> 3;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        do
        {
          v22 = (*(*(this + 41) + 24 * v15) + 8 * v19);
          v8 &= geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(this, *v22, v22[1]);
          ++v19;
        }

        while (v21 != v19);
      }

      ++v15;
    }

    while (v15 != v17);
  }

  if (a2)
  {
    v23 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(this, this + 38);
    LOBYTE(v8) = v23 & geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(this, this + 41) & v8;
  }

  if (*this == 1)
  {
    if (v8)
    {
      v24 = "Finish computing constrained Delaunay triangulation ... \n";
    }

    else
    {
      v24 = "Failed computing constrained Delaunay triangulation ... \n";
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], v24, 57);
  }

  return v8 & 1;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, void *a2, char **a3)
{
  v4 = *(a1 + 21);
  v5 = *(a1 + 22) - v4;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    do
    {
      if (*(v4 + 24 * v6 + 8) - *(v4 + 24 * v6) >= 5uLL)
      {
        v9 = *(v4 + 24 * v6);
        v10 = *(v4 + 24 * v6 + 8);
        if (v10 != v9)
        {
          v11 = 0;
          v12 = (v10 - v9) >> 2;
          v13 = v6 << 32;
          do
          {
            v14 = *(v9 + 4 * v11);
            if (v10 == v9)
            {
              v17 = 0;
            }

            else
            {
              v15 = 0;
              v16 = 0;
              while (*(v9 + 4 * v15) != v14)
              {
                v15 = ++v16;
                if (v12 <= v16)
                {
                  v16 = -1;
                  break;
                }
              }

              v17 = v16 + 1;
            }

            v18 = *(v9 + 4 * (v17 % v12));
            v19 = *(a1 + 1);
            v20 = (v19 + 24 * v6);
            if ((*(v19 + 24 * v14) - *v20) * (*(v19 + 24 * v18 + 8) - v20[1]) - (*(v19 + 24 * v14 + 8) - v20[1]) * (*(v19 + 24 * v18) - *v20) > 0.0)
            {
              v21 = (v4 + 24 * v18);
              v22 = *v21;
              v23 = v21[1] - *v21;
              if (v23)
              {
                v24 = 0;
                v25 = v14;
                v26 = v23 >> 2;
                v27 = 1;
                while (*(v22 + 4 * v24) != v14)
                {
                  v24 = v27;
                  if (v26 <= v27++)
                  {
                    goto LABEL_97;
                  }
                }

                if (v27)
                {
                  if (v7 >= v14 || v7 >= v18)
                  {
                    if (v14 >= v7 || v14 >= v18)
                    {
                      LODWORD(v80) = v18;
                      v29 = v7;
                    }

                    else
                    {
                      LODWORD(v80) = v14;
                      v29 = v18;
                      v25 = v7;
                    }
                  }

                  else
                  {
                    LODWORD(v80) = v7;
                    v29 = v14;
                    v25 = v18;
                  }

                  HIDWORD(v80) = v29;
                  v81 = v25;
                  v30 = v13 | v14;
                  v31 = __ROR8__(v13 | v14, 32);
                  if (v7 < v14)
                  {
                    v30 = v31;
                  }

                  v79 = v30;
                  if (!std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(a1 + 44, &v79))
                  {
                    goto LABEL_82;
                  }

                  v32 = v18 | (v14 << 32);
                  v33 = __ROR8__(v32, 32);
                  if (v14 < v18)
                  {
                    v32 = v33;
                  }

                  v79 = v32;
                  if (!std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(a1 + 44, &v79))
                  {
                    goto LABEL_82;
                  }

                  v34 = v13 | v18;
                  v35 = __ROR8__(v13 | v18, 32);
                  if (v7 < v18)
                  {
                    v34 = v35;
                  }

                  v79 = v34;
                  if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(a1 + 44, &v79) && (v36 = *(a1 + 41), (v37 = *(a1 + 42) - v36) != 0))
                  {
                    v38 = 0xAAAAAAAAAAAAAAABLL * (v37 >> 3);
                    if (v38 <= 1)
                    {
                      v38 = 1;
                    }

                    v39 = (v36 + 8);
                    while (1)
                    {
                      v40 = *(v39 - 1);
                      if (*v39 - v40 == 24)
                      {
                        v41 = *v40;
                        v42 = *v40 == v18 || v41 == v7;
                        if (v42 || v41 == v14)
                        {
                          v44 = v40[2];
                          v45 = v44 == v18 || v44 == v7;
                          if (v45 || v44 == v14)
                          {
                            v47 = v40[4];
                            v48 = v47 == v18 || v47 == v7;
                            if (v48 || v47 == v14)
                            {
                              if (v41 >= v44 || v41 >= v47)
                              {
                                if (v44 >= v41 || v44 >= v47)
                                {
                                  LODWORD(v79) = v47;
                                  v52 = v41;
                                  v47 = v44;
                                }

                                else
                                {
                                  LODWORD(v79) = v44;
                                  v52 = v47;
                                  v47 = v41;
                                }
                              }

                              else
                              {
                                LODWORD(v79) = v41;
                                v52 = v44;
                              }

                              HIDWORD(v79) = v52;
                              if (v80 != v79 || v81 != v47)
                              {
                                break;
                              }
                            }
                          }
                        }
                      }

                      v39 += 3;
                      if (!--v38)
                      {
                        goto LABEL_82;
                      }
                    }
                  }

                  else
                  {
LABEL_82:
                    if (!std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::find<geo::math::Matrix<unsigned int,3,1>>(a1 + 27, &v80))
                    {
                      std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,3,1>,geo::math::Matrix<unsigned int,3,1> const&>(a1 + 27, &v80, &v80);
                      v55 = *(a1 + 25);
                      v54 = *(a1 + 26);
                      if (v55 >= v54)
                      {
                        v58 = *(a1 + 24);
                        v59 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v58) >> 2);
                        v60 = v59 + 1;
                        if (v59 + 1 > 0x1555555555555555)
                        {
                          std::string::__throw_length_error[abi:nn200100]();
                        }

                        v61 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v58) >> 2);
                        if (2 * v61 > v60)
                        {
                          v60 = 2 * v61;
                        }

                        if (v61 >= 0xAAAAAAAAAAAAAAALL)
                        {
                          v62 = 0x1555555555555555;
                        }

                        else
                        {
                          v62 = v60;
                        }

                        if (v62)
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a1 + 192, v62);
                        }

                        v63 = 12 * v59;
                        v64 = v80;
                        *(v63 + 8) = v81;
                        *v63 = v64;
                        v57 = 12 * v59 + 12;
                        v65 = *(a1 + 24);
                        v66 = *(a1 + 25) - v65;
                        v67 = v63 - v66;
                        memcpy((v63 - v66), v65, v66);
                        v68 = *(a1 + 24);
                        *(a1 + 24) = v67;
                        *(a1 + 25) = v57;
                        *(a1 + 26) = 0;
                        if (v68)
                        {
                          operator delete(v68);
                        }
                      }

                      else
                      {
                        v56 = v80;
                        *(v55 + 8) = v81;
                        *v55 = v56;
                        v57 = v55 + 12;
                      }

                      *(a1 + 25) = v57;
                    }
                  }

                  v4 = *(a1 + 21);
                }
              }
            }

LABEL_97:
            ++v11;
            v9 = *(v4 + 24 * v6);
            v10 = *(v4 + 24 * v6 + 8);
            v12 = (v10 - v9) >> 2;
          }

          while (v11 < v12);
        }
      }

      v6 = ++v7;
    }

    while (v8 > v7);
  }

  if (*a1)
  {
    v69 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "The generated mesh contains ", 28);
    v70 = MEMORY[0x1E69060F0](v69, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2) - *(a1 + 1)) >> 3));
    v71 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v70, " vertices, ", 11);
    EdgeCount = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetEdgeCount(a1);
    v73 = MEMORY[0x1E69060F0](v71, EdgeCount);
    v74 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v73, " edges, and ", 12);
    v75 = MEMORY[0x1E69060F0](v74, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 25) - *(a1 + 24)) >> 2));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v75, " triangles.\n", 12);
  }

  return geo::math::ConstrainedDelaunayTriangulationMesherDetails::RebaseMesh(a1, a2, a3);
}

void std::vector<geo::math::Matrix<double,3,1>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    a1[1] = &v5[24 * (24 * a2 / 0x18)];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + a2;
    if (v8 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a1, v10);
    }

    v11 = 8 * (v7 >> 3) + 24 * (24 * a2 / 0x18);
    v12 = (8 * (v7 >> 3) - v7);
    memcpy(v12, v6, v7);
    v13 = *a1;
    *a1 = v12;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned long>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned long>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
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

void std::vector<std::vector<unsigned long>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<unsigned long>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<unsigned long>::resize(void *result, unint64_t a2)
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
    std::vector<unsigned long>::__append(result, a2 - v2);
  }
}

void **std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](v6, v11);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<std::vector<unsigned long>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v18);
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
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
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v10);
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

void std::vector<std::vector<unsigned long>>::clear[abi:nn200100](uint64_t *a1)
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

void std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(void ***a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a4)
  {
    std::vector<std::vector<unsigned long>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * (a1[2] - *a1);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](a1, v9);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(&v22, a2, a3, v7);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      v18 = a1[1];
      do
      {
        v20 = *(v18 - 24);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v17 - 16) = v19;
          operator delete(v19);
        }

        v17 = v18;
      }

      while (v18 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(&v21, a2, (a2 + v10), v7);
    v12 = a1[1];
    if (v11 != a3)
    {
      v13 = a1[1];
      do
      {
        v14 = std::vector<unsigned long>::vector[abi:nn200100](v13, v11);
        v11 += 3;
        v13 = v14 + 3;
        v12 += 24;
      }

      while (v11 != a3);
    }

    a1[1] = v12;
  }
}

void std::vector<std::vector<unsigned long>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<unsigned long>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<unsigned long>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned long>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

void std::vector<unsigned long>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

char **std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(int a1, char **a2, char **a3, void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<unsigned long>::__assign_with_size[abi:nn200100]<unsigned long *,unsigned long *>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::vector<unsigned long>::__assign_with_size[abi:nn200100]<unsigned long *,unsigned long *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

      std::vector<unsigned long>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void std::vector<unsigned int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

uint64_t geo::math::less<double,3,1>(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 > *a2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = v3;
    if (v3 == 2)
    {
      break;
    }

    v5 = a1[v3 + 1];
    v6 = a2[v3 + 1];
    if (v5 < v6)
    {
      LOBYTE(v3) = 1;
      return (v4 < 2) & v3;
    }

    ++v3;
    if (v5 > v6)
    {
      LOBYTE(v3) = 0;
      return (v4 < 2) & v3;
    }
  }

  return (v4 < 2) & v3;
}

void std::vector<unsigned int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v3, __x);
  }
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v2 = (this + 280);
  std::vector<std::vector<unsigned long>>::vector[abi:nn200100](&v27, 0xAAAAAAAAAAAAAAABLL * ((*(this + 36) - *(this + 35)) >> 3));
  v3 = *(this + 35);
  v4 = *(this + 36);
  if (v4 != v3)
  {
    v5 = 0;
    do
    {
      v6 = v3[3 * v5];
      if (v3[3 * v5 + 1] != v6)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *&v6[v7];
          v10 = *(this + 7);
          if (v9 >= (*(this + 8) - v10) >> 2)
          {
            v11 = 0xFFFFFFFFLL;
          }

          else
          {
            v11 = *(v10 + 4 * v9);
          }

          if (v11 < (*(this + 5) - *(this + 4)) >> 2)
          {
            std::vector<unsigned long>::push_back[abi:nn200100](&v27[3 * v5], &v6[v7]);
            v3 = *v2;
          }

          ++v8;
          v6 = v3[3 * v5];
          v7 += 8;
        }

        while (v8 < (v3[3 * v5 + 1] - v6) >> 3);
        v4 = *(this + 36);
      }

      ++v5;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * (v4 - v3));
  }

  if (v2 != &v27)
  {
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v2, v27, v28, 0xAAAAAAAAAAAAAAABLL * (v28 - v27));
  }

  v13 = v27;
  v12 = v28;
  if (v28 != v27)
  {
    v14 = v28;
    do
    {
      v16 = *(v14 - 3);
      v14 -= 3;
      v15 = v16;
      if (v16)
      {
        *(v12 - 2) = v15;
        operator delete(v15);
      }

      v12 = v14;
    }

    while (v14 != v13);
  }

  v28 = v13;
  v17 = (this + 256);
  std::vector<std::vector<unsigned long>>::resize(&v27, 0xAAAAAAAAAAAAAAABLL * ((*(this + 33) - *(this + 32)) >> 3));
  v18 = *(this + 32);
  v19 = *(this + 33);
  if (v19 != v18)
  {
    v20 = 0;
    do
    {
      v21 = v18[3 * v20];
      if (v18[3 * v20 + 1] != v21)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *&v21[v22];
          v25 = *(this + 7);
          if (v24 >= (*(this + 8) - v25) >> 2)
          {
            v26 = 0xFFFFFFFFLL;
          }

          else
          {
            v26 = *(v25 + 4 * v24);
          }

          if (v26 < (*(this + 5) - *(this + 4)) >> 2)
          {
            std::vector<unsigned long>::push_back[abi:nn200100](&v27[3 * v20], &v21[v22]);
            v18 = *v17;
          }

          ++v23;
          v21 = v18[3 * v20];
          v22 += 8;
        }

        while (v23 < (v18[3 * v20 + 1] - v21) >> 3);
        v19 = *(this + 33);
      }

      ++v20;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * (v19 - v18));
  }

  if (v17 != &v27)
  {
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(this + 32, v27, v28, 0xAAAAAAAAAAAAAAABLL * (v28 - v27));
  }

  geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(this, this + 32);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(this, v2);
  v29 = &v27;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v29);
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(geo::math::ConstrainedDelaunayTriangulationMesherDetails *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - a2;
  if ((a3 - a2 + 1) < 4)
  {
    if (v6 == 1)
    {

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitSegment(result, a2, a4);
    }

    else if (v6 == 2)
    {

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitTriangle(result, a2, a4);
    }
  }

  else
  {
    v8 = a3 + 1 - ((a3 - a2 + 1) >> 1);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(result, a2, a3 - ((a3 - a2 + 1) >> 1), v10);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(result, v8, a3, v9);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::Merge(result, v10, v8 - 1, v9, v8, a4);
  }
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E6906080](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1E6906090](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        std::string::__throw_length_error[abi:nn200100]();
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

void std::vector<unsigned int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5, __n128 a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v101 = *(a2 - 1);
        v102 = *v10;
        v103 = *(*a3 + 8);
        v104 = (v103 + 24 * v101);
        v105 = (v103 + 24 * *v10);
        if (*v104 < *v105 || *v104 == *v105 && v104[1] < v105[1])
        {
          *v10 = v101;
          *(a2 - 1) = v102;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v10, v10 + 1, v10 + 2, a2 - 1, a3);
    }

    if (v13 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v10, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v10, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[v13 >> 1];
    v16 = v15;
    v17 = *(*a3 + 8);
    if (v13 >= 0x81)
    {
      v18 = *v15;
      v19 = *v10;
      v20 = (v17 + 24 * *v15);
      v21 = *v20;
      v22 = (v17 + 24 * *v10);
      v23 = *v22;
      if (*v20 < *v22 || *v20 == *v22 && v20[1] < v22[1])
      {
        v24 = *(a2 - 1);
        v25 = (v17 + 24 * v24);
        if (*v25 < v21 || *v25 == v21 && v25[1] < v20[1])
        {
          *v10 = v24;
          goto LABEL_47;
        }

        *v10 = v18;
        *v15 = v19;
        v44 = *(a2 - 1);
        v45 = (v17 + 24 * v44);
        if (*v45 < v23 || *v45 == v23 && v45[1] < v22[1])
        {
          *v15 = v44;
LABEL_47:
          *(a2 - 1) = v19;
        }
      }

      else
      {
        v34 = *(a2 - 1);
        v35 = (v17 + 24 * v34);
        if (*v35 < v21 || *v35 == v21 && v35[1] < v20[1])
        {
          *v15 = v34;
          *(a2 - 1) = v18;
          v36 = *v10;
          v37 = (v17 + 24 * *v15);
          v38 = (v17 + 24 * *v10);
          if (*v37 < *v38 || *v37 == *v38 && v37[1] < v38[1])
          {
            *v10 = *v15;
            *v15 = v36;
          }
        }
      }

      v46 = v14 - 1;
      v47 = v10[v46];
      v48 = v10[1];
      v49 = (v17 + 24 * v47);
      v50 = *v49;
      v51 = (v17 + 24 * v48);
      v52 = *v51;
      if (*v49 < *v51 || *v49 == *v51 && v49[1] < v51[1])
      {
        v53 = *(a2 - 2);
        v54 = (v17 + 24 * v53);
        if (*v54 < v50 || *v54 == v50 && v54[1] < v49[1])
        {
          v10[1] = v53;
          goto LABEL_73;
        }

        v10[1] = v47;
        v10[v46] = v48;
        v63 = *(a2 - 2);
        v64 = (v17 + 24 * v63);
        if (*v64 < v52 || *v64 == v52 && v64[1] < v51[1])
        {
          v10[v46] = v63;
LABEL_73:
          *(a2 - 2) = v48;
        }
      }

      else
      {
        v55 = *(a2 - 2);
        v56 = (v17 + 24 * v55);
        if (*v56 < v50 || *v56 == v50 && v56[1] < v49[1])
        {
          v10[v46] = v55;
          *(a2 - 2) = v47;
          v57 = v10[v46];
          v58 = v10[1];
          v59 = (v17 + 24 * v57);
          v60 = (v17 + 24 * v58);
          if (*v59 < *v60 || *v59 == *v60 && v59[1] < v60[1])
          {
            v10[1] = v57;
            v10[v46] = v58;
          }
        }
      }

      v67 = v15[1];
      v65 = v15 + 1;
      v66 = v67;
      v68 = v10[2];
      v69 = (v17 + 24 * v67);
      v70 = *v69;
      v71 = (v17 + 24 * v68);
      v72 = *v71;
      if (*v69 < *v71 || *v69 == *v71 && v69[1] < v71[1])
      {
        v73 = *(a2 - 3);
        v74 = (v17 + 24 * v73);
        if (*v74 < v70 || *v74 == v70 && v74[1] < v69[1])
        {
          v10[2] = v73;
          goto LABEL_92;
        }

        v10[2] = v66;
        *v65 = v68;
        v80 = *(a2 - 3);
        v81 = (v17 + 24 * v80);
        if (*v81 < v72 || *v81 == v72 && v81[1] < v71[1])
        {
          *v65 = v80;
LABEL_92:
          *(a2 - 3) = v68;
        }
      }

      else
      {
        v75 = *(a2 - 3);
        v76 = (v17 + 24 * v75);
        if (*v76 < v70 || *v76 == v70 && v76[1] < v69[1])
        {
          *v65 = v75;
          *(a2 - 3) = v66;
          v77 = v10[2];
          v78 = (v17 + 24 * *v65);
          v79 = (v17 + 24 * v77);
          if (*v78 < *v79 || *v78 == *v79 && v78[1] < v79[1])
          {
            v10[2] = *v65;
            *v65 = v77;
          }
        }
      }

      v82 = v10[v46];
      v83 = *v16;
      v84 = (v17 + 24 * *v16);
      v85 = *v84;
      v86 = (v17 + 24 * v82);
      v87 = *v86;
      if (*v84 < *v86 || *v84 == *v86 && v84[1] < v86[1])
      {
        v88 = *v65;
        v89 = (v17 + 24 * *v65);
        v90 = *v89;
        if (*v89 < v85 || *v89 == v85 && v89[1] < v84[1])
        {
          v10[v46] = v88;
          goto LABEL_111;
        }

        v10[v46] = v83;
        *v16 = v82;
        if (v90 < v87 || v90 == v87 && v89[1] < v86[1])
        {
          *v16 = v88;
          v83 = v88;
LABEL_111:
          *v65 = v82;
        }

        else
        {
          v83 = v82;
        }
      }

      else
      {
        v91 = *v65;
        v92 = (v17 + 24 * *v65);
        v93 = *v92;
        if (*v92 < v85 || *v92 == v85 && v92[1] < v84[1])
        {
          *v16 = v91;
          *v65 = v83;
          if (v93 < v87 || v93 == v87 && v92[1] < v86[1])
          {
            v10[v46] = v91;
            v65 = v16;
            v83 = v82;
            goto LABEL_111;
          }

          v83 = v91;
        }
      }

      v94 = *v10;
      *v10 = v83;
      *v16 = v94;
      if (a5)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    }

    v26 = *v10;
    v27 = *v16;
    v28 = (v17 + 24 * *v10);
    v29 = *v28;
    v30 = (v17 + 24 * *v16);
    v31 = *v30;
    if (*v28 < *v30 || *v28 == *v30 && v28[1] < v30[1])
    {
      v32 = *(a2 - 1);
      v33 = (v17 + 24 * v32);
      if (*v33 < v29 || *v33 == v29 && v33[1] < v28[1])
      {
        *v16 = v32;
        goto LABEL_66;
      }

      *v16 = v26;
      *v10 = v27;
      v61 = *(a2 - 1);
      v62 = (v17 + 24 * v61);
      if (*v62 < v31 || *v62 == v31 && v62[1] < v30[1])
      {
        *v10 = v61;
LABEL_66:
        *(a2 - 1) = v27;
      }

LABEL_67:
      if (a5)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    }

    v39 = *(a2 - 1);
    v40 = (v17 + 24 * v39);
    if (*v40 >= v29 && (*v40 != v29 || v40[1] >= v28[1]))
    {
      goto LABEL_67;
    }

    *v10 = v39;
    *(a2 - 1) = v26;
    v41 = *v16;
    v42 = (v17 + 24 * *v10);
    v43 = (v17 + 24 * *v16);
    if (*v42 >= *v43 && (*v42 != *v43 || v42[1] >= v43[1]))
    {
      goto LABEL_67;
    }

    *v16 = *v10;
    *v10 = v41;
    if (a5)
    {
      goto LABEL_116;
    }

LABEL_113:
    v95 = (v17 + 24 * *(v10 - 1));
    v96 = (v17 + 24 * *v10);
    if (*v95 >= *v96 && (*v95 != *v96 || v95[1] >= v96[1]))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(v10, a2, a3);
      v10 = result;
      goto LABEL_124;
    }

LABEL_116:
    v97 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(v10, a2, a3);
    if ((v99 & 1) == 0)
    {
      goto LABEL_122;
    }

    v100 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v10, v97, a3);
    v10 = v97 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v97 + 1, a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v97;
      if (v100)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v100)
    {
LABEL_122:
      result = std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(v9, v97, a3, -v12, a5 & 1, v98);
      v10 = v97 + 1;
LABEL_124:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v107 = *v10;
  v106 = v10[1];
  v108 = *(*a3 + 8);
  v109 = (v108 + 24 * v106);
  v110 = *v109;
  v111 = (v108 + 24 * *v10);
  v112 = *v111;
  if (*v109 < *v111 || *v109 == *v111 && v109[1] < v111[1])
  {
    v113 = *(a2 - 1);
    v114 = (v108 + 24 * v113);
    if (*v114 < v110 || *v114 == v110 && v114[1] < v109[1])
    {
      *v10 = v113;
    }

    else
    {
      *v10 = v106;
      v10[1] = v107;
      v121 = *(a2 - 1);
      v122 = (v108 + 24 * v121);
      if (*v122 >= v112 && (*v122 != v112 || v122[1] >= v111[1]))
      {
        return result;
      }

      v10[1] = v121;
    }

    *(a2 - 1) = v107;
    return result;
  }

  v115 = *(a2 - 1);
  v116 = (v108 + 24 * v115);
  if (*v116 < v110 || *v116 == v110 && v116[1] < v109[1])
  {
    v10[1] = v115;
    *(a2 - 1) = v106;
    v118 = *v10;
    v117 = v10[1];
    v119 = (v108 + 24 * v117);
    v120 = (v108 + 24 * *v10);
    if (*v119 < *v120 || *v119 == *v120 && v119[1] < v120[1])
    {
      *v10 = v117;
      v10[1] = v118;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *result;
  v8 = *(*a5 + 8);
  v9 = (v8 + 24 * *a2);
  v10 = *v9;
  v11 = (v8 + 24 * *result);
  v12 = *v11;
  if (*v9 < *v11 || *v9 == *v11 && v9[1] < v11[1])
  {
    v13 = (v8 + 24 * *a3);
    if (*v13 < v10 || *v13 == v10 && v13[1] < v9[1])
    {
      *result = *a3;
LABEL_19:
      *a3 = v7;
LABEL_20:
      v5 = v7;
      v6 = v7;
      goto LABEL_22;
    }

    *result = v6;
    *a2 = v7;
    v5 = *a3;
    v18 = (v8 + 24 * *a3);
    if (*v18 < v12 || *v18 == v12 && v18[1] < v11[1])
    {
      *a2 = v5;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = *a3;
    v14 = (v8 + 24 * *a3);
    if (*v14 >= v10 && (*v14 != v10 || v14[1] >= v9[1]))
    {
      goto LABEL_20;
    }

    *a2 = v7;
    *a3 = v5;
    v15 = *result;
    v16 = (v8 + 24 * *a2);
    v17 = (v8 + 24 * *result);
    if (*v16 >= *v17 && (*v16 != *v17 || v16[1] >= v17[1]))
    {
      goto LABEL_22;
    }

    *result = *a2;
    *a2 = v15;
    v5 = *a3;
  }

  v6 = v5;
LABEL_22:
  v19 = (v8 + 24 * *a4);
  v20 = (v8 + 24 * v5);
  if (*v19 < *v20 || *v19 == *v20 && v19[1] < v20[1])
  {
    *a3 = *a4;
    *a4 = v6;
    v21 = *a2;
    v22 = (v8 + 24 * *a3);
    v23 = (v8 + 24 * *a2);
    if (*v22 < *v23 || *v22 == *v23 && v22[1] < v23[1])
    {
      *a2 = *a3;
      *a3 = v21;
      v24 = *result;
      v25 = (v8 + 24 * *a2);
      v26 = (v8 + 24 * *result);
      if (*v25 < *v26 || *v25 == *v26 && v25[1] < v26[1])
      {
        *result = *a2;
        *a2 = v24;
      }
    }
  }

  return result;
}

unsigned int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v13 = *a4;
  v14 = *(*a6 + 8);
  v15 = (v14 + 24 * *a5);
  v16 = (v14 + 24 * *a4);
  if (*v15 < *v16 || *v15 == *v16 && v15[1] < v16[1])
  {
    *a4 = *a5;
    *a5 = v13;
    v17 = *a3;
    v18 = (v14 + 24 * *a4);
    v19 = (v14 + 24 * *a3);
    if (*v18 < *v19 || *v18 == *v19 && v18[1] < v19[1])
    {
      *a3 = *a4;
      *a4 = v17;
      v20 = *a2;
      v21 = (v14 + 24 * *a3);
      v22 = (v14 + 24 * *a2);
      if (*v21 < *v22 || *v21 == *v22 && v21[1] < v22[1])
      {
        *a2 = *a3;
        *a3 = v20;
        v23 = *a1;
        v24 = (v14 + 24 * *a2);
        v25 = (v14 + 24 * *a1);
        if (*v24 < *v25 || *v24 == *v25 && v24[1] < v25[1])
        {
          *a1 = *a2;
          *a2 = v23;
        }
      }
    }
  }

  return result;
}

unsigned int *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *(*a3 + 8);
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v3;
        v8 = v7[1];
        v9 = (v5 + 24 * v8);
        v10 = *v9;
        v11 = (v5 + 24 * *v7);
        if (*v9 < *v11 || *v9 == *v11 && v9[1] < v11[1])
        {
          v7[1] = *v7;
          v12 = result;
          if (v7 != result)
          {
            v13 = v4;
            while (1)
            {
              v14 = *(result + v13 - 4);
              v15 = (v5 + 24 * v14);
              if (v10 >= *v15)
              {
                if (v10 != *v15)
                {
                  v12 = (result + v13);
                  goto LABEL_16;
                }

                if (v9[1] >= v15[1])
                {
                  break;
                }
              }

              --v7;
              *(result + v13) = v14;
              v13 -= 4;
              if (!v13)
              {
                v12 = result;
                goto LABEL_16;
              }
            }

            v12 = v7;
          }

LABEL_16:
          *v12 = v8;
        }

        v3 = v6 + 1;
        v4 += 4;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *(*a3 + 8);
      do
      {
        v5 = result;
        result = v3;
        v7 = *v5;
        v6 = v5[1];
        v8 = (v4 + 24 * v6);
        v9 = *v8;
        v10 = (v4 + 24 * *v5);
        if (*v8 < *v10 || *v8 == *v10 && v8[1] < v10[1])
        {
          do
          {
            do
            {
              v11 = v5;
              v12 = *--v5;
              v5[2] = v7;
              v7 = v12;
              v13 = (v4 + 24 * v12);
            }

            while (v9 < *v13);
          }

          while (v9 == *v13 && v8[1] < v13[1]);
          *v11 = v6;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = *(*a3 + 8);
  v6 = (v5 + 24 * *a1);
  v7 = *v6;
  v8 = (v5 + 24 * v4);
  v9 = *v8;
  if (*v6 < *v8 || *v6 == *v8 && v6[1] < v8[1])
  {
    j = a1 + 1;
    v11 = a1[1];
    for (i = *(v5 + 24 * v11); v7 >= i; i = *(v5 + 24 * v13))
    {
      if (v7 == i && v6[1] < *(v5 + 24 * v11 + 8))
      {
        break;
      }

      v13 = j[1];
      ++j;
      v11 = v13;
    }
  }

  else
  {
    for (j = a1 + 1; j < a2; ++j)
    {
      v14 = (v5 + 24 * *j);
      if (v7 < *v14 || v7 == *v14 && v6[1] < v14[1])
      {
        break;
      }
    }
  }

  if (j < a2)
  {
    --a2;
    while (v7 < v9 || v7 == v9 && v6[1] < *(v5 + 24 * v4 + 8))
    {
      v15 = *--a2;
      v4 = v15;
      v9 = *(v5 + 24 * v15);
    }
  }

  if (j < a2)
  {
    LODWORD(v16) = *j;
    v17 = *a2;
    do
    {
      *j = v17;
      *a2 = v16;
      do
      {
        v18 = j[1];
        ++j;
        v16 = v18;
        v19 = *(v5 + 24 * v18);
      }

      while (v7 >= v19 && (v7 != v19 || v6[1] >= *(v5 + 24 * v16 + 8)));
      do
      {
        do
        {
          v20 = *--a2;
          v17 = v20;
          v21 = (v5 + 24 * v20);
        }

        while (v7 < *v21);
      }

      while (v7 == *v21 && v6[1] < v21[1]);
    }

    while (j < a2);
  }

  if (j - 1 != a1)
  {
    *a1 = *(j - 1);
  }

  *(j - 1) = v3;
  return j;
}

unsigned int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *(*a3 + 8);
  v6 = (v5 + 24 * *a1);
  v7 = *v6;
  while (1)
  {
    v8 = a1[v3 + 1];
    v9 = (v5 + 24 * v8);
    if (*v9 >= v7 && (*v9 != v7 || v9[1] >= v6[1]))
    {
      break;
    }

    ++v3;
  }

  v10 = &a1[v3];
  v11 = &a1[v3 + 1];
  if (v3 * 4)
  {
    v13 = *--a2;
    v12 = v13;
    for (i = *(v5 + 24 * v13); i >= v7; i = *(v5 + 24 * v15))
    {
      if (i == v7 && *(v5 + 24 * v12 + 8) < v6[1])
      {
        break;
      }

      v15 = *--a2;
      v12 = v15;
    }
  }

  else if (v11 < a2)
  {
    v17 = *--a2;
    v16 = v17;
    for (j = *(v5 + 24 * v17); j >= v7; j = *(v5 + 24 * v19))
    {
      if (j == v7)
      {
        if (v11 >= a2 || *(v5 + 24 * v16 + 8) < v6[1])
        {
          break;
        }
      }

      else if (v11 >= a2)
      {
        break;
      }

      v19 = *--a2;
      v16 = v19;
    }
  }

  if (v11 < a2)
  {
    LODWORD(v20) = *a2;
    v21 = v8;
    v22 = v11;
    v23 = a2;
    do
    {
      *v22++ = v20;
      *v23 = v21;
      while (1)
      {
        v21 = *v22;
        v24 = (v5 + 24 * *v22);
        if (*v24 >= v7 && (*v24 != v7 || v24[1] >= v6[1]))
        {
          break;
        }

        ++v22;
      }

      do
      {
        v25 = *--v23;
        v20 = v25;
        v26 = *(v5 + 24 * v25);
      }

      while (v26 >= v7 && (v26 != v7 || *(v5 + 24 * v20 + 8) >= v6[1]));
    }

    while (v22 < v23);
    v10 = v22 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v4;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v10 = *a1;
        v9 = a1[1];
        v11 = *(*a3 + 8);
        v12 = (v11 + 24 * v9);
        v13 = *v12;
        v14 = (v11 + 24 * *a1);
        v15 = *v14;
        if (*v12 >= *v14 && (*v12 != *v14 || v12[1] >= v14[1]))
        {
          v30 = *(a2 - 1);
          v31 = (v11 + 24 * v30);
          if (*v31 < v13 || *v31 == v13 && v31[1] < v12[1])
          {
            a1[1] = v30;
            *(a2 - 1) = v9;
            v33 = *a1;
            v32 = a1[1];
            v34 = (v11 + 24 * v32);
            v35 = (v11 + 24 * *a1);
            if (*v34 < *v35 || *v34 == *v35 && v34[1] < v35[1])
            {
              *a1 = v32;
              a1[1] = v33;
            }
          }

          return 1;
        }

        v16 = *(a2 - 1);
        v17 = (v11 + 24 * v16);
        if (*v17 < v13 || *v17 == v13 && v17[1] < v12[1])
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v9;
          a1[1] = v10;
          v39 = *(a2 - 1);
          v40 = (v11 + 24 * v39);
          if (*v40 >= v15 && (*v40 != v15 || v40[1] >= v14[1]))
          {
            return 1;
          }

          a1[1] = v39;
        }

        *(a2 - 1) = v10;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    v6 = *(*a3 + 8);
    v7 = (v6 + 24 * v4);
    v8 = (v6 + 24 * *a1);
    if (*v7 < *v8 || *v7 == *v8 && v7[1] < v8[1])
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_19:
  v18 = a1 + 2;
  v19 = *a1;
  v20 = a1 + 1;
  v21 = a1[1];
  v22 = *(*a3 + 8);
  v23 = (v22 + 24 * v21);
  v24 = *v23;
  v25 = (v22 + 24 * *a1);
  v26 = *v25;
  if (*v23 < *v25 || *v23 == *v25 && v23[1] < v25[1])
  {
    v27 = *v18;
    v28 = (v22 + 24 * *v18);
    v29 = *v28;
    if (*v28 < v24 || *v28 == v24 && v28[1] < v23[1])
    {
      *a1 = v27;
LABEL_50:
      v20 = a1 + 2;
      goto LABEL_51;
    }

    *a1 = v21;
    a1[1] = v19;
    if (v29 < v26 || v29 == v26 && v28[1] < v25[1])
    {
      *v20 = v27;
      goto LABEL_50;
    }
  }

  else
  {
    v36 = *v18;
    v37 = (v22 + 24 * *v18);
    v38 = *v37;
    if (*v37 < v24 || *v37 == v24 && v37[1] < v23[1])
    {
      *v20 = v36;
      *v18 = v21;
      if (v38 < v26 || v38 == v26 && v37[1] < v25[1])
      {
        *a1 = v36;
LABEL_51:
        *v20 = v19;
      }
    }
  }

  v41 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v42 = 0;
  v43 = 0;
  while (1)
  {
    v44 = *v41;
    v45 = (v22 + 24 * *v41);
    v46 = *v45;
    v47 = (v22 + 24 * *v18);
    if (*v45 < *v47 || *v45 == *v47 && v45[1] < v47[1])
    {
      *v41 = *v18;
      v48 = v42;
      do
      {
        v49 = *(a1 + v48 + 4);
        v50 = (v22 + 24 * v49);
        if (v46 >= *v50)
        {
          if (v46 != *v50)
          {
            v18 = (a1 + v48 + 8);
            goto LABEL_64;
          }

          if (v45[1] >= v50[1])
          {
            goto LABEL_64;
          }
        }

        --v18;
        *(a1 + v48 + 8) = v49;
        v48 -= 4;
      }

      while (v48 != -8);
      v18 = a1;
LABEL_64:
      *v18 = v44;
      if (++v43 == 8)
      {
        return v41 + 1 == a2;
      }
    }

    v18 = v41;
    v42 += 4;
    if (++v41 == a2)
    {
      return 1;
    }
  }
}

unsigned int *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *(*a4 + 8);
        v15 = (v14 + 24 * *v12);
        v16 = (v14 + 24 * *a1);
        if (*v15 < *v16 || *v15 == *v16 && v15[1] < v16[1])
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 1;
      do
      {
        v18 = *a1;
        v19 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8);
        if (v17 == v19)
        {
          *v19 = v18;
        }

        else
        {
          *v19 = *v17;
          *v17 = v18;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, (v19 + 1), a4, v19 + 1 - a1);
        }

        --v17;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      v10 = *a2;
      if (v9 >= a3)
      {
        v11 = *(v10 + 8);
      }

      else
      {
        v11 = *(v10 + 8);
        v12 = (v11 + 24 * *v8);
        v13 = (v11 + 24 * v8[1]);
        if (*v12 < *v13 || *v12 == *v13 && v12[1] < v13[1])
        {
          ++v8;
          v7 = v9;
        }
      }

      v14 = *a4;
      v15 = (v11 + 24 * *v8);
      v16 = (v11 + 24 * *a4);
      v17 = *v16;
      if (*v15 >= *v16 && (*v15 != *v16 || v15[1] >= v16[1]))
      {
        *a4 = *v8;
        if (v5 >= v7)
        {
          while (1)
          {
            v19 = 2 * v7;
            v7 = (2 * v7) | 1;
            v18 = (result + 4 * v7);
            v20 = v19 + 2;
            if (v20 < a3)
            {
              v21 = (v11 + 24 * *v18);
              v22 = (v11 + 24 * v18[1]);
              if (*v21 < *v22 || *v21 == *v22 && v21[1] < v22[1])
              {
                ++v18;
                v7 = v20;
              }
            }

            v23 = (v11 + 24 * *v18);
            if (*v23 < v17 || *v23 == v17 && v23[1] < v16[1])
            {
              break;
            }

            *v8 = *v18;
            v8 = v18;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v18 = v8;
LABEL_14:
        *v18 = v14;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(_DWORD *result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    v6 = &result[v3];
    result = v6 + 1;
    v7 = 2 * v3;
    v3 = (2 * v3) | 1;
    v8 = v7 + 2;
    if (v8 < a3)
    {
      v10 = v6[2];
      v9 = v6 + 2;
      v11 = *(v4 + 8);
      v12 = (v11 + 24 * *(v9 - 1));
      v13 = (v11 + 24 * v10);
      if (*v12 < *v13 || *v12 == *v13 && v12[1] < v13[1])
      {
        result = v9;
        v3 = v8;
      }
    }

    *v5 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 4 * (v4 >> 1));
    v7 = *(a2 - 4);
    v8 = *(*a3 + 8);
    v9 = (v8 + 24 * *v6);
    v10 = (v8 + 24 * v7);
    v11 = *v10;
    if (*v9 < *v10 || *v9 == *v10 && v9[1] < v10[1])
    {
      *(a2 - 4) = *v6;
      if (v4 >= 2)
      {
        while (1)
        {
          v13 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v12 = (result + 4 * v5);
          v14 = (v8 + 24 * *v12);
          if (*v14 >= v11 && (*v14 != v11 || v14[1] >= v10[1]))
          {
            break;
          }

          *v6 = *v12;
          v6 = (result + 4 * v5);
          if (v13 <= 1)
          {
            goto LABEL_11;
          }
        }
      }

      v12 = v6;
LABEL_11:
      *v12 = v7;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(__int128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-2].n128_i64[1];
  v79 = a2 - 3;
  v10 = &a2[-5].n128_i8[8];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      break;
    }

    switch(v15)
    {
      case 3uLL:
        v59 = (*a3)((v11 + 24), v11);
        v60 = (*a3)(v9, (v11 + 24));
        if (v59)
        {
          if (v60)
          {
            goto LABEL_76;
          }

          v129 = *(v11 + 2);
          v102 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v102;
          *(v11 + 5) = v129;
          if (!(*a3)(v9, (v11 + 24)))
          {
            return result;
          }

          v61 = *(v11 + 5);
          result = *(v11 + 24);
          v62 = *(v9 + 16);
          *(v11 + 24) = *v9;
          *(v11 + 5) = v62;
          *v9 = result;
LABEL_77:
          *(v9 + 16) = v61;
          return result;
        }

        if (!v60)
        {
          return result;
        }

        v68 = *(v11 + 5);
        v69 = *(v11 + 24);
        v70 = *(v9 + 16);
        *(v11 + 24) = *v9;
        *(v11 + 5) = v70;
        *v9 = v69;
        *(v9 + 16) = v68;
        goto LABEL_103;
      case 4uLL:
        v65 = (*a3)((v11 + 24), v11);
        v66 = (*a3)(v11 + 3, (v11 + 24));
        if (v65)
        {
          if (v66)
          {
            v131 = *(v11 + 2);
            v104 = *v11;
            *v11 = v11[3];
            *(v11 + 2) = *(v11 + 8);
            v11[3] = v104;
            v67 = v131;
            goto LABEL_99;
          }

          v133 = *(v11 + 2);
          v106 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v106;
          *(v11 + 5) = v133;
          if ((*a3)(v11 + 3, (v11 + 24)))
          {
            v67 = *(v11 + 5);
            v73 = *(v11 + 24);
            *(v11 + 24) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v73;
LABEL_99:
            *(v11 + 8) = v67;
          }
        }

        else if (v66)
        {
          v71 = *(v11 + 5);
          v72 = *(v11 + 24);
          *(v11 + 24) = v11[3];
          *(v11 + 5) = *(v11 + 8);
          v11[3] = v72;
          *(v11 + 8) = v71;
          if ((*a3)((v11 + 24), v11))
          {
            v132 = *(v11 + 2);
            v105 = *v11;
            *v11 = *(v11 + 24);
            *(v11 + 2) = *(v11 + 5);
            *(v11 + 24) = v105;
            *(v11 + 5) = v132;
          }
        }

        if (!(*a3)(v9, v11 + 3))
        {
          return result;
        }

        v74 = *(v11 + 8);
        v75 = v11[3];
        v76 = *(v9 + 16);
        v11[3] = *v9;
        *(v11 + 8) = v76;
        *v9 = v75;
        *(v9 + 16) = v74;
        if (!(*a3)(v11 + 3, (v11 + 24)))
        {
          return result;
        }

        v77 = *(v11 + 5);
        v78 = *(v11 + 24);
        *(v11 + 24) = v11[3];
        *(v11 + 5) = *(v11 + 8);
        v11[3] = v78;
        *(v11 + 8) = v77;
LABEL_103:
        if ((*a3)((v11 + 24), v11))
        {
          v134 = *(v11 + 2);
          v107 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          result = v107;
          *(v11 + 24) = v107;
          *(v11 + 5) = v134;
        }

        return result;
      case 5uLL:

        result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(v11, (v11 + 24), v11 + 3, (v11 + 72), (a2 - 24), a3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v14 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v11, a2, a2, a3, result);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = v11 + 24 * (v15 >> 1);
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = v18(v17, v11);
      v20 = (*a3)((a2 - 24), v17);
      if (v19)
      {
        if (v20)
        {
          v108 = *(a1 + 2);
          v81 = *a1;
          v21 = *v9;
          *(a1 + 2) = a2[-1].n128_u64[1];
          *a1 = v21;
          goto LABEL_27;
        }

        v114 = *(a1 + 2);
        v87 = *a1;
        v29 = *v17;
        *(a1 + 2) = *(v17 + 16);
        *a1 = v29;
        *(v17 + 16) = v114;
        *v17 = v87;
        if ((*a3)((a2 - 24), v17))
        {
          v108 = *(v17 + 16);
          v81 = *v17;
          v30 = *v9;
          *(v17 + 16) = a2[-1].n128_u64[1];
          *v17 = v30;
LABEL_27:
          *v9 = v81;
          a2[-1].n128_u64[1] = v108;
        }
      }

      else if (v20)
      {
        v110 = *(v17 + 16);
        v83 = *v17;
        v25 = *v9;
        *(v17 + 16) = a2[-1].n128_u64[1];
        *v17 = v25;
        *v9 = v83;
        a2[-1].n128_u64[1] = v110;
        if ((*a3)(v17, a1))
        {
          v111 = *(a1 + 2);
          v84 = *a1;
          v26 = *v17;
          *(a1 + 2) = *(v17 + 16);
          *a1 = v26;
          *(v17 + 16) = v111;
          *v17 = v84;
        }
      }

      v31 = a1 + 24 * v16 - 24;
      v32 = (*a3)(v31, (a1 + 24));
      v33 = (*a3)(v79, v31);
      if (v32)
      {
        if (v33)
        {
          v34 = *(a1 + 5);
          v35 = *(a1 + 24);
          v36 = a2[-2].n128_u64[0];
          *(a1 + 24) = *v79;
          *(a1 + 5) = v36;
          *v79 = v35;
          a2[-2].n128_u64[0] = v34;
        }

        else
        {
          v91 = *(a1 + 24);
          v118 = *(a1 + 5);
          v41 = *(a1 + 3 * v16 - 1);
          *(a1 + 24) = *v31;
          *(a1 + 5) = v41;
          *(a1 + 3 * v16 - 1) = v118;
          *v31 = v91;
          if ((*a3)(v79, (a1 + 24 * v16 - 24)))
          {
            v119 = *(a1 + 3 * v16 - 1);
            v92 = *v31;
            v42 = *v79;
            *(a1 + 3 * v16 - 1) = a2[-2].n128_u64[0];
            *v31 = v42;
            *v79 = v92;
            a2[-2].n128_u64[0] = v119;
          }
        }
      }

      else if (v33)
      {
        v115 = *(a1 + 3 * v16 - 1);
        v88 = *v31;
        v37 = *v79;
        *(a1 + 3 * v16 - 1) = a2[-2].n128_u64[0];
        *v31 = v37;
        *v79 = v88;
        a2[-2].n128_u64[0] = v115;
        if ((*a3)((a1 + 24 * v16 - 24), (a1 + 24)))
        {
          v89 = *(a1 + 24);
          v116 = *(a1 + 5);
          v38 = *(a1 + 3 * v16 - 1);
          *(a1 + 24) = *v31;
          *(a1 + 5) = v38;
          *(a1 + 3 * v16 - 1) = v116;
          *v31 = v89;
        }
      }

      v43 = a1 + 24 * v16;
      v44 = (*a3)((v43 + 24), a1 + 3);
      v45 = (*a3)((a2 - 72), (v43 + 24));
      if (v44)
      {
        if (v45)
        {
          v46 = *(a1 + 8);
          v47 = a1[3];
          v48 = a2[-4].n128_u64[1];
          a1[3] = *v10;
          *(a1 + 8) = v48;
          *v10 = v47;
          goto LABEL_47;
        }

        v95 = a1[3];
        v122 = *(a1 + 8);
        v51 = *(v43 + 5);
        a1[3] = *(v43 + 24);
        *(a1 + 8) = v51;
        *(v43 + 5) = v122;
        *(v43 + 24) = v95;
        if ((*a3)((a2 - 72), (v43 + 24)))
        {
          v123 = *(v43 + 5);
          v96 = *(v43 + 24);
          v52 = *v10;
          *(v43 + 5) = a2[-4].n128_u64[1];
          *(v43 + 24) = v52;
          *v10 = v96;
          v46 = v123;
LABEL_47:
          a2[-4].n128_u64[1] = v46;
        }
      }

      else if (v45)
      {
        v120 = *(v43 + 5);
        v93 = *(v43 + 24);
        v49 = *v10;
        *(v43 + 5) = a2[-4].n128_u64[1];
        *(v43 + 24) = v49;
        *v10 = v93;
        a2[-4].n128_u64[1] = v120;
        if ((*a3)((v43 + 24), a1 + 3))
        {
          v94 = a1[3];
          v121 = *(a1 + 8);
          v50 = *(v43 + 5);
          a1[3] = *(v43 + 24);
          *(a1 + 8) = v50;
          *(v43 + 5) = v121;
          *(v43 + 24) = v94;
        }
      }

      v53 = (*a3)(v17, v31);
      v54 = (*a3)((v43 + 24), v17);
      if (v53)
      {
        if (v54)
        {
          v124 = *(v31 + 16);
          v97 = *v31;
          *v31 = *(v43 + 24);
          *(v31 + 16) = *(v43 + 5);
          goto LABEL_56;
        }

        v127 = *(v31 + 16);
        v100 = *v31;
        *v31 = *v17;
        *(v31 + 16) = *(v17 + 16);
        *(v17 + 16) = v127;
        *v17 = v100;
        if ((*a3)((v43 + 24), v17))
        {
          v124 = *(v17 + 16);
          v97 = *v17;
          *v17 = *(v43 + 24);
          *(v17 + 16) = *(v43 + 5);
LABEL_56:
          *(v43 + 5) = v124;
          *(v43 + 24) = v97;
        }
      }

      else if (v54)
      {
        v125 = *(v17 + 16);
        v98 = *v17;
        *v17 = *(v43 + 24);
        *(v17 + 16) = *(v43 + 5);
        *(v43 + 5) = v125;
        *(v43 + 24) = v98;
        if ((*a3)(v17, v31))
        {
          v126 = *(v31 + 16);
          v99 = *v31;
          *v31 = *v17;
          *(v31 + 16) = *(v17 + 16);
          *(v17 + 16) = v126;
          *v17 = v99;
        }
      }

      v128 = *(a1 + 2);
      v101 = *a1;
      v55 = *v17;
      *(a1 + 2) = *(v17 + 16);
      *a1 = v55;
      *(v17 + 16) = v128;
      *v17 = v101;
      goto LABEL_58;
    }

    v22 = v18(v11, v17);
    v23 = (*a3)((a2 - 24), a1);
    if (v22)
    {
      if (v23)
      {
        v109 = *(v17 + 16);
        v82 = *v17;
        v24 = *v9;
        *(v17 + 16) = a2[-1].n128_u64[1];
        *v17 = v24;
LABEL_36:
        *v9 = v82;
        a2[-1].n128_u64[1] = v109;
        goto LABEL_58;
      }

      v117 = *(v17 + 16);
      v90 = *v17;
      v39 = *a1;
      *(v17 + 16) = *(a1 + 2);
      *v17 = v39;
      *(a1 + 2) = v117;
      *a1 = v90;
      if ((*a3)((a2 - 24), a1))
      {
        v109 = *(a1 + 2);
        v82 = *a1;
        v40 = *v9;
        *(a1 + 2) = a2[-1].n128_u64[1];
        *a1 = v40;
        goto LABEL_36;
      }
    }

    else if (v23)
    {
      v112 = *(a1 + 2);
      v85 = *a1;
      v27 = *v9;
      *(a1 + 2) = a2[-1].n128_u64[1];
      *a1 = v27;
      *v9 = v85;
      a2[-1].n128_u64[1] = v112;
      if ((*a3)(a1, v17))
      {
        v113 = *(v17 + 16);
        v86 = *v17;
        v28 = *a1;
        *(v17 + 16) = *(a1 + 2);
        *v17 = v28;
        *(a1 + 2) = v113;
        *a1 = v86;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 24), a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(a1, a2, a3);
      goto LABEL_65;
    }

    v56 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(a1, a2, a3);
    if ((v57 & 1) == 0)
    {
      goto LABEL_63;
    }

    v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(a1, v56, a3);
    v11 = &v56[1].n128_i8[8];
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(&v56[1].n128_i64[1], a2, a3))
    {
      a4 = -v13;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v58)
    {
LABEL_63:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(a1, v56, a3, -v13, a5 & 1);
      v11 = &v56[1].n128_i8[8];
LABEL_65:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 < 2)
  {
    return result;
  }

  if (v15 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)((a2 - 24), v11))
  {
LABEL_76:
    v130 = *(v11 + 2);
    v103 = *v11;
    v64 = *v9;
    *(v11 + 2) = *(v9 + 16);
    *v11 = v64;
    result = v103;
    *v9 = v103;
    v61 = v130;
    goto LABEL_77;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_u64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_u64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_u64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = (*a3)(&v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v16 = *a1;
  v17 = *(a1 + 2);
  if ((*a3)(&v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 24);
    }

    while (((*a3)(&v16, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 24);
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v16, v7);
      v7 = (v6 + 24);
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 2);
    v18 = v9;
    v10 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v10;
    v11 = v18;
    *(v4 + 2) = v19;
    *v4 = v11;
    do
    {
      v6 = (v6 + 24);
    }

    while (!(*a3)(&v16, v6));
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  v12 = (v6 - 24);
  if ((v6 - 24) != a1)
  {
    v13 = *v12;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

char *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(char *a1, char *a2, uint64_t (**a3)(char *, __int128 *))
{
  v6 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (((*a3)(&a1[v6], &v17) & 1) != 0);
  v7 = &a1[v6];
  v8 = &a1[v6 - 24];
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (((*a3)(a2, &v17) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!(*a3)(a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 2);
      v12 = v20;
      v13 = *(v10 + 2);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 2) = v12;
      *v10 = v11;
      do
      {
        v9 += 24;
      }

      while (((*a3)(v9, &v17) & 1) != 0);
      do
      {
        v10 -= 24;
      }

      while (!(*a3)(v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 2) = v18;
  *v8 = v15;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_u64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(__n128 *a1, __n128 *a2, char *a3, uint64_t (**a4)(uint64_t, __n128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 24 * v11);
      do
      {
        a5 = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v8, a4, v10, v13);
        v13 = (v13 - 24);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if ((*a4)(v14, v8, a5))
        {
          v15 = *(v14 + 2);
          v16 = *v14;
          v17 = v8[1].n128_u64[0];
          *v14 = *v8;
          *(v14 + 2) = v17;
          *v8 = v16;
          v8[1].n128_u64[0] = v15;
          a5 = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v8, a4, v10, v8);
        }

        v14 += 24;
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v30 = v8;
      do
      {
        v31 = v7;
        v19 = 0;
        v32 = *v8;
        v33 = v8[1].n128_u64[0];
        v20 = v8;
        do
        {
          v21 = (v20 + 24 * v19);
          v22 = (v21 + 24);
          v23 = (2 * v19) | 1;
          v24 = 2 * v19 + 2;
          if (v24 < v18)
          {
            v25 = v21 + 3;
            if ((*a4)(&v21[1].n128_i64[1], v21 + 3))
            {
              v22 = v25;
              v23 = v24;
            }
          }

          v26 = *v22;
          v20[1].n128_u64[0] = v22[1].n128_u64[0];
          *v20 = v26;
          v20 = v22;
          v19 = v23;
        }

        while (v23 <= ((v18 - 2) >> 1));
        v7 = v31 - 24;
        if (v22 == (v31 - 24))
        {
          v22[1].n128_u64[0] = v33;
          *v22 = v32;
          v8 = v30;
        }

        else
        {
          v27 = *v7;
          v22[1].n128_u64[0] = *(v31 - 1);
          *v22 = v27;
          *v7 = v32;
          *(v31 - 1) = v33;
          v8 = v30;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v30, &v22[1].n128_i64[1], a4, 0xAAAAAAAAAAAAAAABLL * ((&v22[1].n128_i64[1] - v30) >> 3));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t a1, uint64_t (**a2)(uint64_t, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && (*a2)(a1 + 24 * v12, (v13 + 24)))
      {
        v13 += 24;
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        do
        {
          v16 = v13;
          v17 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3)
          {
            if ((*a2)(a1 + 24 * v18, (v13 + 24)))
            {
              v13 += 24;
              v18 = v19;
            }
          }

          v7 = v16;
          v12 = v18;
        }

        while (!(*a2)(v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

double std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v17 = v4;
    v18 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 24 * (v6 >> 1));
    v11 = (a2 - 24);
    if ((*a3)(v10, (a2 - 24)))
    {
      v15 = *v11;
      v16 = *(v11 + 2);
      do
      {
        v13 = v10;
        v14 = *v10;
        *(v11 + 2) = *(v10 + 2);
        *v11 = v14;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 24 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, &v15) & 1) != 0);
      result = *&v15;
      *v13 = v15;
      *(v13 + 2) = v16;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,geo::math::Matrix<double,3,1>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<unsigned int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E3049620)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E3049640)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1E3049620)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1E3049640)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<unsigned long>::push_back[abi:nn200100](const void **a1, uint64_t *a2)
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
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v12);
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
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(uint64_t a1, uint64_t *a2)
{
  std::vector<std::vector<unsigned long>>::vector[abi:nn200100](&v14, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      geo::math::polygon_detail::GetNonRedundantIndices((v3 + v4), &v12);
      v6 = (v14 + v4);
      v7 = *(v14 + v4);
      if (v7)
      {
        v6[1] = v7;
        operator delete(v7);
        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
      }

      *v6 = v12;
      v6[2] = v13;
      ++v5;
      v3 = *a2;
      v4 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](a2);
  v9 = v14;
  v8 = v15;
  if (v15 != v14)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (*(v9 + v10 + 8) - *(v9 + v10) >= 0x11uLL)
      {
        std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](a2, (v9 + v10));
        v9 = v14;
        v8 = v15;
      }

      ++v11;
      v10 += 24;
    }

    while (v11 < 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3));
  }

  *&v12 = &v14;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v12);
}

uint64_t *std::vector<std::vector<unsigned long>>::vector[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

void geo::math::polygon_detail::GetNonRedundantIndices(char **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p = 0;
  v21 = 0;
  v22 = 0;
  v3 = a1[1] - *a1;
  v4 = v3 >> 3;
  v5 = (v3 >> 3) - 2;
  if ((v3 >> 3) >= 2)
  {
    v23 = 0;
    std::vector<unsigned long>::resize(&__p, v3 >> 3, &v23);
    v7 = __p;
    *__p = 0;
    v8 = *a1;
    if (v4 != 1)
    {
      v9 = 0;
      v10 = v8 + 1;
      v11 = v7 + 8;
      v12 = v4 - 1;
      do
      {
        if (*(v10 - 1) != *v10)
        {
          ++v9;
        }

        *v11++ = v9;
        ++v10;
        --v12;
      }

      while (v12);
      if (v4 != 2 && v8[v4 - 1] == *v8)
      {
        v13 = &v7[8 * v4 - 8];
        do
        {
          *v13 = 0;
          v13 -= 8;
          if (v5 < 2)
          {
            break;
          }

          v14 = v8[v5--];
        }

        while (v14 == *v8);
      }
    }

    std::vector<unsigned long>::push_back[abi:nn200100](a2, v8);
    v16 = *a1;
    v15 = a1[1];
    if ((v15 - *a1) >= 9)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = *(__p + v18);
        if (v19 != *(__p + v17) && v19 != *__p)
        {
          std::vector<unsigned long>::push_back[abi:nn200100](a2, &v16[v17 + 8]);
          v16 = *a1;
          v15 = a1[1];
        }

        ++v18;
        v17 += 8;
      }

      while (v18 < (v15 - v16) >> 3);
    }
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

uint64_t std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, v11);
    }

    v12 = (24 * v8);
    std::vector<unsigned long>::vector[abi:nn200100](v12, a2);
    v7 = v12 + 3;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy(v12 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12 + 3;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v17);
  }

  else
  {
    result = std::vector<unsigned long>::vector[abi:nn200100](v4, a2);
    v7 = (result + 24);
  }

  *(a1 + 8) = v7;
  return result;
}

void std::vector<unsigned long>::resize(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(result, a2 - v3, a3);
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1E3049620)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1E3049620)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,std::__unordered_map_hasher<geo::math::Matrix<double,3,1>,std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,geo::math::VectorHasher<geo::math::Matrix<double,3,1>>,std::equal_to<geo::math::Matrix<double,3,1>>,true>,std::__unordered_map_equal<geo::math::Matrix<double,3,1>,std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,std::equal_to<geo::math::Matrix<double,3,1>>,geo::math::VectorHasher<geo::math::Matrix<double,3,1>>,true>,std::allocator<std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>>>::__emplace_unique_key_args<geo::math::Matrix<double,3,1>,std::pair<geo::math::Matrix<double,3,1>,unsigned long>>(void *a1, void *a2, uint64_t a3)
{
  v3 = 0;
  for (i = 0; i != 3; ++i)
  {
    v5 = *&a2[i];
    if (v5 == 0.0)
    {
      v5 = 0.0;
    }

    v3 ^= *&v5;
  }

  v6 = v3 + 2654435769;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_29;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v3 + 2654435769;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_29;
    }

LABEL_28:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_29;
    }
  }

  if (v11[2] != *a2 || v11[3] != a2[1] || v11[4] != a2[2])
  {
    goto LABEL_28;
  }

  return v11;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::Merge(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, uint64_t a2, int a3, uint64_t a4, std::vector<unsigned int>::value_type a5, uint64_t a6)
{
  v10 = *(a4 + 20);
  *(a6 + 16) = *(a2 + 16);
  *(a6 + 20) = v10;
  v27 = 0;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetLowestCommonTangent(a1, a2, a3, a4, a5, &v27 + 1, &v27);
  *a6 = *a2;
  *(a6 + 8) = *(a4 + 8);
  v12 = v27;
  v11 = HIDWORD(v27);
  if (HIDWORD(v27) == *(a2 + 16))
  {
    *a6 = HIDWORD(v27) | (v27 << 32);
  }

  if (v12 == *(a4 + 20))
  {
    *(a6 + 8) = v11 | (v12 << 32);
  }

  LeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindLeftCandidate(a1, a2, a4, v11, v12);
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindRightCandidate(a1, a2, a4, HIDWORD(v27), v27);
  v15 = result;
  v17 = v27;
  v16 = HIDWORD(v27);
  v18 = result != v27;
  v19 = LeftCandidate != HIDWORD(v27);
  if (__PAIR64__(LeftCandidate, result) != v27)
  {
    do
    {
      v20 = a1;
      if (v19)
      {
        if (!v18)
        {
          v24 = LeftCandidate;
          v25 = v17;
LABEL_14:
          geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(v20, v24, v25, v16, v16);
          HIDWORD(v27) = LeftCandidate;
          goto LABEL_15;
        }

        if (geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(a1, v16, v17, LeftCandidate, v15) != 2)
        {
          v25 = v27;
          v16 = HIDWORD(v27);
          v20 = a1;
          v24 = LeftCandidate;
          goto LABEL_14;
        }

        v22 = v27;
        v21 = HIDWORD(v27);
        v20 = a1;
        v23 = v15;
        v17 = v27;
      }

      else
      {
        v21 = v16;
        v23 = v15;
        v22 = v17;
      }

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(v20, v21, v23, v22, v17);
      LODWORD(v27) = v15;
LABEL_15:
      LeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindLeftCandidate(a1, a2, a4, HIDWORD(v27), v27);
      result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindRightCandidate(a1, a2, a4, HIDWORD(v27), v27);
      v15 = result;
      v17 = v27;
      v16 = HIDWORD(v27);
      v18 = result != v27;
      v19 = LeftCandidate != HIDWORD(v27);
    }

    while (LeftCandidate != HIDWORD(v27) || result != v27);
  }

  return result;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitTriangle(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, unsigned int a2, uint64_t a3)
{
  v6 = a2 + 1;
  v7 = a2 + 2;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, a2 + 1);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v6, a2);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v6, v7);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v7, v6);
  *(a3 + 16) = a2;
  *(a3 + 20) = v7;
  v8 = *(a1 + 1);
  v9 = (v8 + 24 * a2);
  v10 = (*(v8 + 24 * v6) - *v9) * (*(v8 + 24 * v7 + 8) - v9[1]) - (*(v8 + 24 * v6 + 8) - v9[1]) * (*(v8 + 24 * v7) - *v9);
  v11 = v10 <= 0.0;
  if (v10 < 0.0)
  {
    v11 = 2;
  }

  if (v11 == 2)
  {
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, v7);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v7, a2);
    v12 = a2 | (v7 << 32);
    *a3 = v12;
    *(a3 + 8) = v12;
  }

  else
  {
    if (!v11)
    {
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, v7);
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v7, a2);
    }

    *a3 = a2 | (v6 << 32);
    *(a3 + 8) = v6 | (v7 << 32);
  }
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitSegment(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, unsigned int a2, uint64_t a3)
{
  v6 = a2 + 1;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, a2 + 1);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v6, a2);
  *(a3 + 16) = a2;
  *(a3 + 20) = v6;
  v7 = a2 | (v6 << 32);
  *a3 = v7;
  *(a3 + 8) = v7;
}

std::__wrap_iter<unsigned int *>::iterator_type geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetLowestCommonTangent(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, int a3, unsigned int *a4, std::vector<unsigned int>::value_type a5, unsigned int *a6, unsigned int *a7)
{
  v9 = a5;
  if (*(a2 + 8) == a3)
  {
    v11 = *(a2 + 12);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  if (*a4 == a5)
  {
    v12 = a4[1];
  }

  else
  {
    v12 = *a4;
  }

LABEL_7:
  v13 = *(this + 1);
  v14 = (v13 + 24 * a3);
  v15 = *v14;
  v16 = v14[1];
  v17 = (v13 + 24 * v11);
  v18 = *v17 - v15;
  v19 = -(v17[1] - v16);
  while (1)
  {
    v20 = (v13 + 24 * v9);
    v21 = v20[1];
    if ((*v20 - v15) * v19 + v18 * (v21 - v16) > 0.0)
    {
      PreviousEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, v11, a3);
      a3 = v11;
      v11 = PreviousEdge;
      goto LABEL_7;
    }

    if ((*(v13 + 24 * v12) - *v20) * (v16 - v21) - (*(v13 + 24 * v12 + 8) - v21) * (v15 - *v20) >= 0.0)
    {
      break;
    }

    v22 = *(*(this + 21) + 24 * v12);
    v23 = (*(*(this + 21) + 24 * v12 + 8) - v22) >> 2;
    if (*(*(this + 21) + 24 * v12 + 8) == v22)
    {
      v26 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      while (*(v22 + 4 * v24) != v9)
      {
        v24 = ++v25;
        if (v23 <= v25)
        {
          v25 = -1;
          break;
        }
      }

      v26 = v25 + 1;
    }

    v9 = v12;
    v12 = *(v22 + 4 * (v26 % v23));
  }

  *a6 = a3;
  *a7 = v9;
  v28 = *a6;

  return geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(this, v28, v9, v11, v12);
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindLeftCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  v9 = *(*(this + 21) + 24 * a4);
  v10 = (*(*(this + 21) + 24 * a4 + 8) - v9) >> 2;
  if (*(*(this + 21) + 24 * a4 + 8) == v9)
  {
    v16 = 0;
    v15 = *v9;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    while (v9[v11] != a5)
    {
      v11 = ++v12;
      if (v10 <= v12)
      {
        v12 = -1;
        break;
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = v9[(v12 + 1) % v10];
    while (v9[v13] != v15)
    {
      v13 = ++v14;
      if (v10 <= v14)
      {
        v14 = -1;
        break;
      }
    }

    v16 = v14 + 1;
  }

  v17 = *(a2 + 16);
  if (v15 >= v17)
  {
    v18 = a4;
    v19 = &v9[v16 % v10];
    do
    {
      v21 = *(a2 + 20);
      if (v15 > v21)
      {
        break;
      }

      v22 = *v19;
      v23 = *(this + 1);
      v24 = (v23 + 24 * v18);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v23 + 24 * a5);
      v28 = (v23 + 24 * v15);
      v29 = *v27 - v25;
      v30 = v27[1] - v26;
      v31 = *v28 - v25;
      v32 = v28[1] - v26;
      v33 = v29 * v32 - v30 * v31;
      v34 = v33 <= 0.0;
      if (v33 < 0.0)
      {
        v34 = 2;
      }

      if (v34 == 1)
      {
        if (v30 * v32 + v29 * v31 <= 0.0)
        {
          return v6;
        }
      }

      else if (v34 == 2)
      {
        return v6;
      }

      if (v22 < v17 || v22 > v21 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, v6, a5, v15, v22) != 2)
      {
        return v15;
      }

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v6, v15);
      v35 = *(*(this + 21) + 24 * v18);
      v36 = (*(*(this + 21) + 24 * v18 + 8) - v35) >> 2;
      if (*(*(this + 21) + 24 * v18 + 8) == v35)
      {
        v39 = 0;
      }

      else
      {
        v37 = 0;
        v38 = 0;
        while (*(v35 + 4 * v37) != v22)
        {
          v37 = ++v38;
          if (v36 <= v38)
          {
            v38 = -1;
            break;
          }
        }

        v39 = v38 + 1;
      }

      v19 = (v35 + 4 * (v39 % v36));
      v17 = *(a2 + 16);
      v15 = v22;
    }

    while (v22 >= v17);
  }

  return v6;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindRightCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = a5;
  PreviousEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(a1, a5, a4);
  v10 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(a1, v5, PreviousEdge);
  v11 = *(a3 + 16);
  if (PreviousEdge >= v11)
  {
    v12 = v10;
    do
    {
      v13 = *(a3 + 20);
      if (PreviousEdge > v13)
      {
        break;
      }

      v14 = *(a1 + 1);
      v15 = (v14 + 24 * v5);
      v16 = *v15;
      v17 = v15[1];
      v18 = (v14 + 24 * a4);
      v19 = (v14 + 24 * PreviousEdge);
      v20 = *v18 - v16;
      v21 = v18[1] - v17;
      v22 = *v19 - v16;
      v23 = v19[1] - v17;
      v24 = v20 * v23 - v21 * v22;
      v25 = v24 <= 0.0;
      if (v24 < 0.0)
      {
        v25 = 2;
      }

      if (v25 == 1)
      {
        if (v21 * v23 + v20 * v22 <= 0.0)
        {
          return v5;
        }
      }

      else if (!v25)
      {
        return v5;
      }

      if (v12 < v11 || v12 > v13 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(a1, a4, v5, PreviousEdge, v12) != 2)
      {
        return PreviousEdge;
      }

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(a1, v5, PreviousEdge);
      v26 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(a1, v5, v12);
      PreviousEdge = v12;
      v11 = *(a3 + 16);
      v27 = v12 >= v11;
      v12 = v26;
    }

    while (v27);
  }

  return v5;
}

std::__wrap_iter<unsigned int *>::iterator_type geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, std::vector<unsigned int>::value_type a2, std::vector<unsigned int>::value_type a3, int a4, int a5)
{
  __x = a3;
  v27 = a2;
  v7 = (*(this + 21) + 24 * a2);
  begin = v7->__begin_;
  end = v7->__end_;
  v10 = end - v7->__begin_;
  if (end == v7->__begin_)
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 2;
    while (begin[v11] != a4)
    {
      v11 = ++v12;
      if (v13 <= v12)
      {
        v12 = -1;
        break;
      }
    }

    v14 = v12;
  }

  v15.__i_ = &begin[v14 + 1];
  std::vector<unsigned int>::insert(v7, v15, &__x);
  v16 = (*(this + 21) + 24 * __x);
  v17 = v16->__begin_;
  v18 = v16->__end_;
  v19 = v18 - v16->__begin_;
  if (v18 == v16->__begin_)
  {
    v23 = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = v19 >> 2;
    while (v17[v20] != a5)
    {
      v20 = ++v21;
      if (v22 <= v21)
      {
        v21 = -1;
        break;
      }
    }

    v23 = v21;
  }

  v24.__i_ = &v17[v23];
  return std::vector<unsigned int>::insert(v16, v24, &v27).__i_;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(this + 1);
  v6 = (v5 + 24 * a2);
  v7 = *v6;
  v8 = v6[1];
  v9 = (v5 + 24 * a3);
  v10 = *v9;
  v11 = v9[1];
  v12 = (v5 + 24 * a4);
  v13 = (v5 + 24 * a5);
  v14 = v13[1];
  v15 = v7 - *v13;
  v16 = v10 - *v13;
  v17 = v11 - v14;
  v18 = *v12 - *v13;
  v19 = v12[1] - v14;
  v20 = v15 * (v17 * (v18 * v18 + 0.0 + v19 * v19) - v19 * (v16 * v16 + 0.0 + v17 * v17)) - (v8 - v14) * (v16 * (v18 * v18 + 0.0 + v19 * v19) - (v16 * v16 + 0.0 + v17 * v17) * v18) + (v15 * v15 + 0.0 + (v8 - v14) * (v8 - v14)) * (v16 * v19 - v17 * v18);
  if (v20 <= 0.0)
  {
    return v20 >= 0.0;
  }

  else
  {
    return 2;
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 21) + 24 * a2);
  v4 = (*(*(this + 21) + 24 * a2 + 8) - v3) >> 2;
  if (*(*(this + 21) + 24 * a2 + 8) == v3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
    LODWORD(v6) = 0;
    while (*(v3 + 4 * v5) != a3)
    {
      LODWORD(v6) = v6 + 1;
      v5 = v6;
      if (v4 <= v6)
      {
        LODWORD(v6) = -1;
        break;
      }
    }

    v6 = v6;
  }

  return *(v3 + 4 * ((v4 + v6 - 1) % v4));
}

void *geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(void *this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  v6 = this[21];
  v7 = (v6 + 24 * a2);
  v9 = *v7;
  v8 = v7[1];
  if (v8 == *v7)
  {
    v12 = 0x3FFFFFFFCLL;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    while (*&v9[4 * v10] != a3)
    {
      v10 = ++v11;
      if (&v8[-*v7] >> 2 <= v11)
      {
        v11 = -1;
        break;
      }
    }

    v12 = 4 * v11;
  }

  v13 = &v9[v12];
  v14 = &v9[v12 + 4];
  v15 = v8 - v14;
  if (v8 != v14)
  {
    this = memmove(&v9[v12], v14, v8 - v14);
    v6 = v5[21];
  }

  v7[1] = &v13[v15];
  v16 = (v6 + 24 * a3);
  v18 = *v16;
  v17 = v16[1];
  if (v17 == *v16)
  {
    v21 = 0x3FFFFFFFCLL;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    while (*&v18[4 * v19] != a2)
    {
      v19 = ++v20;
      if (&v17[-*v16] >> 2 <= v20)
      {
        v20 = -1;
        break;
      }
    }

    v21 = 4 * v20;
  }

  v22 = &v18[v21];
  v23 = &v18[v21 + 4];
  v24 = v17 - v23;
  if (v17 != v23)
  {
    this = memmove(&v18[v21], v23, v17 - v23);
  }

  v16[1] = &v22[v24];
  return this;
}

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    std::__split_buffer<unsigned int>::emplace_back<unsigned int const&>(&v26, __x);
    v16.__i_ = v27;
    memcpy(v28, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v27;
    *&v28 = v28 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
      v9 = this->__end_;
    }

    v23 = v9 <= __x || i > __x;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *i = __x[v24];
  }

  return i;
}

void std::__split_buffer<unsigned int>::emplace_back<unsigned int const&>(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 4);
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, std::vector<unsigned int>::value_type a3)
{
  __x = a3;
  v5 = *(this + 21) + 24 * a2;
  v6.__i_ = *v5;
  v7 = *(v5 + 8);
  v8 = v7 - *v5;
  if (v7 == *v5)
  {
    v25 = *(v5 + 16);
    if (v7 >= v25)
    {
      v26 = v25 - v6.__i_;
      v27 = v26 >> 1;
      if ((v26 >> 1) <= 1)
      {
        v27 = 1;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v5, v28);
    }
  }

  else
  {
    v9 = v8 >> 2;
    v10 = *(this + 1);
    v11 = (v10 + 24 * a2);
    v12 = *v11;
    v13 = v11[1];
    v14 = (v10 + 24 * *v6.__i_);
    v15 = *v14;
    v16 = v14[1];
    v17 = (v10 + 24 * a3);
    v18 = v15 - v12;
    v19 = v16 - v13;
    v20 = *v17 - v12;
    v21 = v17[1] - v13;
    v22 = v18 * v21 - v19 * v20;
    if (v22 >= 0.0)
    {
      v23 = v22 <= 0.0;
    }

    else
    {
      v23 = 2;
    }

    if (v8 == 4)
    {
      if (v23)
      {
        v24 = v5;
LABEL_33:
        std::vector<unsigned int>::insert(v24, v6, &__x);
        return;
      }

      v38 = *(v5 + 16);
      if (v7 >= v38)
      {
        v40 = v38 - v6.__i_;
        if (v40 >> 1 <= v9 + 1)
        {
          v41 = v9 + 1;
        }

        else
        {
          v41 = v40 >> 1;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v42 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v5, v42);
      }
    }

    else
    {
      if (v9 >= 2)
      {
        v29 = v6.__i_ + 1;
        v30 = 1;
        while (1)
        {
          v31 = (v10 + 24 * v6.__i_[v30]);
          v32 = (*v31 - v12) * v21 - (v31[1] - v13) * v20;
          if (!v23 && v32 < 0.0)
          {
            break;
          }

          v23 = v32 <= 0.0;
          if (v32 < 0.0)
          {
            v23 = 2;
          }

          ++v30;
          ++v29;
          if (v9 == v30)
          {
            goto LABEL_22;
          }
        }

        v24 = v5;
        v6.__i_ = v29;
        goto LABEL_33;
      }

LABEL_22:
      v33 = *(v5 + 16);
      if (v7 >= v33)
      {
        v34 = v9 + 1;
        if ((v9 + 1) >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v35 = v33 - v6.__i_;
        if (v35 >> 1 > v34)
        {
          v34 = v35 >> 1;
        }

        v36 = v35 >= 0x7FFFFFFFFFFFFFFCLL;
        v37 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v36)
        {
          v37 = v34;
        }

        if (v37)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v5, v37);
        }

        *(4 * v9) = a3;
        v39 = 4 * v9 + 4;
        memcpy(0, v6.__i_, v8);
        v43 = *v5;
        *v5 = 0;
        *(v5 + 8) = v39;
        *(v5 + 16) = 0;
        if (v43)
        {
          operator delete(v43);
        }

        goto LABEL_43;
      }
    }
  }

  *v7 = a3;
  v39 = (v7 + 1);
LABEL_43:
  *(v5 + 8) = v39;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(void *a1, uint64_t *a2, void *a3)
{
  memset(v34, 0, sizeof(v34));
  v7 = *a2;
  v6 = a2[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
  std::vector<std::vector<unsigned long>>::resize(v34, v8);
  if (v6 == v7)
  {
    std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::resize(a3, v8);
    v9 = 1;
  }

  else
  {
    v33 = a3;
    v9 = 0;
    v10 = 0;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    while (1)
    {
      v12 = (*a2 + 24 * v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = (v14 - *v12) >> 3;
      v16 = (v34[0] + 24 * v10);
      std::vector<unsigned int>::resize(v16, v15);
      if (v14 != v13)
      {
        break;
      }

LABEL_12:
      v9 = ++v10 >= v8;
      if (v10 == v11)
      {
        std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::resize(v33, v8);
        v24 = 0;
        v9 = 1;
        do
        {
          v25 = (*(v34[0] + 24 * v24 + 8) - *(v34[0] + 24 * v24)) >> 2;
          v26 = (*v33 + 24 * v24);
          std::vector<geo::math::Matrix<unsigned int,2,1>>::resize(v26, v25);
          v27 = v25 - 1;
          if (v27)
          {
            v28 = 0;
            do
            {
              v29 = v28 + 1;
              v30 = *(*(v34[0] + 24 * v24) + 4 * v28);
              *(*v26 + v28) = v30;
              geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddConstraintToSet(v30, a1 + 44);
              v28 = v29;
            }

            while (v27 != v29);
          }

          v31 = *(*(v34[0] + 24 * v24) + 4 * v27) | (**(v34[0] + 24 * v24) << 32);
          *(*v26 + v27) = v31;
          geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddConstraintToSet(v31, a1 + 44);
          ++v24;
        }

        while (v24 != v11);
        goto LABEL_20;
      }
    }

    v17 = 0;
    v18 = *(*a2 + 24 * v10);
    v19 = a1[7];
    v20 = (a1[8] - v19) >> 2;
    if (v15 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v15;
    }

    while (1)
    {
      v22 = *(v18 + 8 * v17);
      if (v20 <= v22)
      {
        break;
      }

      v23 = *(v19 + 4 * v22);
      if (v23 == -1)
      {
        break;
      }

      v16->__begin_[v17++] = v23;
      if (v21 == v17)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_20:
  v35 = v34;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v35);
  return v9;
}

void std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<geo::math::Matrix<unsigned int,2,1>>::resize(const void **result, unint64_t a2)
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
    std::vector<geo::math::Matrix<unsigned int,2,1>>::__append(result, a2 - v2);
  }
}

void std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<geo::math::Matrix<unsigned int,2,1>>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<geo::math::Matrix<unsigned int,2,1>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<geo::math::Matrix<unsigned int,2,1>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 3)
  {
    a1[1] = &v5[8 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (8 * v9 + 8 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void *geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddConstraintToSet(uint64_t a1, void *a2)
{
  v4 = a1;
  if (a1 < HIDWORD(a1))
  {
    return std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,2,1>,geo::math::Matrix<unsigned int,2,1> const&>(a2, &v4, &v4);
  }

  v3 = __PAIR64__(a1, HIDWORD(a1));
  return std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,2,1>,geo::math::Matrix<unsigned int,2,1> const&>(a2, &v3, &v3);
}

void *std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,2,1>,geo::math::Matrix<unsigned int,2,1> const&>(void *a1, _DWORD *a2, void *a3)
{
  v3 = (a2[1] ^ *a2) + 2654435769;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (a2[1] ^ *a2) + 2654435769;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = v3 & (*&v4 + 0x1FFFFFFFFLL);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != *a2)
  {
    goto LABEL_17;
  }

  return v8;
}

void std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned long>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, uint64_t a3)
{
  v6 = *(*(this + 21) + 24 * a2);
  v7 = *(*(this + 21) + 24 * a2 + 8) - v6;
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = 0;
  v9 = v7 >> 2;
  v10 = 1;
  while (*(v6 + 4 * v8) != a3)
  {
    v8 = v10;
    if (v9 <= v10++)
    {
      goto LABEL_7;
    }
  }

  if (!v10)
  {
LABEL_7:
    result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ApplyConstraint(this, a2, a3);
    if (!result)
    {
      return result;
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AdjustByConstraint(this, a2, a3);
  }

  return 1;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::ApplyConstraint(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, std::vector<unsigned int>::value_type a3)
{
  v6 = *(this + 2) - *(this + 1);
  if (!v6)
  {
LABEL_13:
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(this, a2, a3);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(this, a3, a2);
    return 1;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v10 = *(this + 21);
  while (1)
  {
    v11 = *(v10 + 24 * v7);
    if (*(v10 + 24 * v7 + 8) != v11)
    {
      break;
    }

LABEL_12:
    v7 = ++v8;
    if (v9 <= v8)
    {
      goto LABEL_13;
    }
  }

  v12 = 0;
  v13 = v7 << 32;
  while (1)
  {
    v14 = *(v11 + 4 * v12);
    if (!geo::math::ConstrainedDelaunayTriangulationMesherDetails::IsIntersect(this, v8, *(v11 + 4 * v12), a2, a3))
    {
      ++v12;
      goto LABEL_11;
    }

    v15 = v13 | v14;
    v16 = __ROR8__(v13 | v14, 32);
    if (v8 < v14)
    {
      v15 = v16;
    }

    v18 = v15;
    if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 44, &v18))
    {
      return 0;
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v8, v14);
LABEL_11:
    v10 = *(this + 21);
    v11 = *(v10 + 24 * v7);
    if (v12 >= (*(v10 + 24 * v7 + 8) - v11) >> 2)
    {
      goto LABEL_12;
    }
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::AdjustByConstraint(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  ConstrainedLeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, a2, a3);
  ConstrainedRightCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v4, v3);
  v8 = ConstrainedLeftCandidate != v4;
  v9 = ConstrainedRightCandidate != v3;
  v10 = ConstrainedRightCandidate != v3 || ConstrainedLeftCandidate != v4;
  if (v10 && ConstrainedLeftCandidate != ConstrainedRightCandidate)
  {
    v12 = ConstrainedRightCandidate;
    v13 = v4;
    v14 = v3;
    do
    {
      if (!v8 || v9 && geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, v13, v14, ConstrainedLeftCandidate, v12) == 2)
      {
        geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(this, v13, v12, v14, v14);
      }

      else
      {
        geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(this, ConstrainedLeftCandidate, v14, v13, v13);
        v12 = v14;
        v13 = ConstrainedLeftCandidate;
      }

      ConstrainedLeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, v13, v12);
      v15 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v13, v12);
      v8 = ConstrainedLeftCandidate != v13;
      v9 = v15 != v12;
      v16 = v15 != v12 || ConstrainedLeftCandidate != v13;
      v17 = !v16 || ConstrainedLeftCandidate == v15;
      v14 = v12;
      v12 = v15;
    }

    while (!v17);
  }

  v18 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, v3, v4);
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v3, v4);
  v20 = result != v4;
  v21 = v18 != v3;
  if (v18 != v3 || result != v4)
  {
    v23 = result;
    if (result != v18)
    {
      do
      {
        if (!v20 || v21 && geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, v4, v23, v3, v18) == 2)
        {
          geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgePreToStartNextToEnd(this, v4, v18, v3, v3);
        }

        else
        {
          geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgePreToStartNextToEnd(this, v23, v3, v4, v4);
          v18 = v3;
          v4 = v23;
        }

        v24 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, v18, v4);
        result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v18, v4);
        v23 = result;
        v20 = result != v4;
        v21 = v24 != v18;
        v25 = v24 != v18 || result != v4;
        v26 = !v25 || result == v24;
        v3 = v18;
        v18 = v24;
      }

      while (!v26);
    }
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::IsIntersect(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  result = 0;
  if (a3 != a5 && a3 != a4 && a2 != a4 && a2 != a5)
  {
    v7 = *(this + 1);
    v8 = (v7 + 24 * a4);
    v9 = *v8;
    v10 = v8[1];
    v11 = (v7 + 24 * a5);
    v12 = *v11;
    v13 = v11[1];
    v14 = (v7 + 24 * a2);
    v15 = v14[1];
    v16 = (v7 + 24 * a3);
    v17 = *v16;
    v18 = v16[1];
    v19 = *v16 - *v14;
    v20 = v19 * (v10 - v15) - (v18 - v15) * (v9 - *v14);
    v21 = v19 * (v13 - v15) - (v18 - v15) * (v12 - *v14);
    v22 = (v21 <= 0.0) ^ (v20 > 0.0);
    if (v21 < 0.0)
    {
      v22 = 0;
    }

    v23 = v12 - v9;
    v24 = v13 - v10;
    v25 = v23 * (v15 - v10) - v24 * (*v14 - v9);
    v26 = v23 * (v18 - v10) - v24 * (v17 - v9);
    if (v20 < 0.0)
    {
      v22 = v21 < 0.0;
    }

    v27 = v26 < 0.0;
    if (v25 >= 0.0)
    {
      v27 = (v26 >= 0.0) & ((v25 > 0.0) ^ (v26 <= 0.0));
    }

    return (v27 | v22) ^ 1u;
  }

  return result;
}

void *std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = (a2[1] ^ *a2) + 2654435769;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = (a2[1] ^ *a2) + 2654435769;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 + 0x1FFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  v6 = a2;
  v7 = *(*(this + 21) + 24 * a2);
  v8 = (*(*(this + 21) + 24 * a2 + 8) - v7) >> 2;
  v9 = 0;
  if (*(*(this + 21) + 24 * a2 + 8) == v7)
  {
    v13 = *v7;
  }

  else
  {
    v10 = 0;
    while (v7[v9] != a3)
    {
      v9 = ++v10;
      if (v8 <= v10)
      {
        v10 = -1;
        break;
      }
    }

    v11 = 0;
    v12 = 0;
    v13 = v7[(v10 + 1) % v8];
    while (v7[v11] != v13)
    {
      v11 = ++v12;
      if (v8 <= v12)
      {
        v12 = -1;
        break;
      }
    }

    v9 = v12 + 1;
  }

  v14 = &v7[v9 % v8];
  v16 = a2 << 32;
  while (1)
  {
    v17 = *(this + 1);
    v18 = (v17 + 24 * v6);
    if ((*(v17 + 24 * a3) - *v18) * (*(v17 + 24 * v13 + 8) - v18[1]) - (*(v17 + 24 * a3 + 8) - v18[1]) * (*(v17 + 24 * v13) - *v18) <= 0.0)
    {
      return v4;
    }

    v19 = *v14;
    v20 = v16 | v13;
    v21 = __ROR8__(v20, 32);
    if (v13 > v4)
    {
      v20 = v21;
    }

    v30 = v20;
    if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 44, &v30))
    {
      return v13;
    }

    v22 = *(this + 1);
    v23 = (v22 + 24 * v6);
    if ((*(v22 + 24 * a3) - *v23) * (*(v22 + 24 * v19 + 8) - v23[1]) - (*(v22 + 24 * a3 + 8) - v23[1]) * (*(v22 + 24 * v19) - *v23) <= 0.0 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, v4, a3, v13, v19) != 2)
    {
      return v13;
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v4, v13);
    v24 = *(*(this + 21) + 24 * v6);
    v25 = (*(*(this + 21) + 24 * v6 + 8) - v24) >> 2;
    if (*(*(this + 21) + 24 * v6 + 8) == v24)
    {
      v28 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      while (*(v24 + 4 * v26) != v19)
      {
        v26 = ++v27;
        if (v25 <= v27)
        {
          v27 = -1;
          break;
        }
      }

      v28 = v27 + 1;
    }

    v14 = (v24 + 4 * (v28 % v25));
    v13 = v19;
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  PreviousEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, a3, a2);
  for (i = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, v3, PreviousEdge); ; i = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, v3, i))
  {
    v8 = *(this + 1);
    v9 = (v8 + 24 * v3);
    if ((*(v8 + 24 * a2) - *v9) * (*(v8 + 24 * PreviousEdge + 8) - v9[1]) - (*(v8 + 24 * a2 + 8) - v9[1]) * (*(v8 + 24 * PreviousEdge) - *v9) >= 0.0)
    {
      break;
    }

    v10 = (v3 << 32) | PreviousEdge;
    v11 = __ROR8__(v10, 32);
    if (PreviousEdge > v3)
    {
      v10 = v11;
    }

    v15 = v10;
    if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 44, &v15))
    {
      return PreviousEdge;
    }

    v12 = *(this + 1);
    v13 = (v12 + 24 * v3);
    if ((*(v12 + 24 * a2) - *v13) * (*(v12 + 24 * i + 8) - v13[1]) - (*(v12 + 24 * a2 + 8) - v13[1]) * (*(v12 + 24 * i) - *v13) >= 0.0 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, a2, v3, PreviousEdge, i) != 2)
    {
      return PreviousEdge;
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v3, PreviousEdge);
    PreviousEdge = i;
  }

  return v3;
}

std::__wrap_iter<unsigned int *>::iterator_type geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgePreToStartNextToEnd(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, std::vector<unsigned int>::value_type a2, std::vector<unsigned int>::value_type a3, int a4, int a5)
{
  __x = a3;
  v27 = a2;
  v7 = (*(this + 21) + 24 * a2);
  begin = v7->__begin_;
  end = v7->__end_;
  v10 = end - v7->__begin_;
  if (end == v7->__begin_)
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 2;
    while (begin[v11] != a4)
    {
      v11 = ++v12;
      if (v13 <= v12)
      {
        v12 = -1;
        break;
      }
    }

    v14 = v12;
  }

  v15.__i_ = &begin[v14];
  std::vector<unsigned int>::insert(v7, v15, &__x);
  v16 = (*(this + 21) + 24 * __x);
  v17 = v16->__begin_;
  v18 = v16->__end_;
  v19 = v18 - v16->__begin_;
  if (v18 == v16->__begin_)
  {
    v23 = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = v19 >> 2;
    while (v17[v20] != a5)
    {
      v20 = ++v21;
      if (v22 <= v21)
      {
        v21 = -1;
        break;
      }
    }

    v23 = v21;
  }

  v24.__i_ = &v17[v23 + 1];
  return std::vector<unsigned int>::insert(v16, v24, &v27).__i_;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, void *a2)
{
  v3 = *a2;
  v2 = a2[1];
  __src = 0;
  v72 = 0;
  v73 = 0;
  v4 = v2 - v3;
  if (!v4)
  {
    LOBYTE(v9) = 1;
    return v9;
  }

  v5 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v4 >> 3;
  v12 = 0xAAAAAAAAAAAAAAABLL * v11;
  if (0xAAAAAAAAAAAAAAABLL * v11 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * v11;
  }

  while (1)
  {
    v14 = *(*v5 + 24 * v10);
    v15 = *(*v5 + 24 * v10 + 8);
    v16 = v15 - v14;
    if (v15 != v14)
    {
      break;
    }

LABEL_51:
    v9 = ++v10 >= v12;
    if (v10 == v13)
    {
      goto LABEL_59;
    }
  }

  v17 = 0;
  if ((v16 >> 3) <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16 >> 3;
  }

  while (2)
  {
    v19 = *(*v5 + 24 * v10);
    v20 = (v19 + 8 * v17);
    v21 = *v20;
    v22 = (v19 + v16);
    if (v17)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    v24 = (*(this + 21) + 24 * v21);
    v25 = *v24;
    v26 = v24[1] - *v24;
    if (v26)
    {
      v27 = 0;
      v28 = 0;
      v29 = *(v23 - 2);
      v30 = v26 >> 2;
      while (*(v25 + 4 * v27) != HIDWORD(v21))
      {
        v27 = ++v28;
        if (v30 <= v28)
        {
          goto LABEL_53;
        }
      }

      if (v28 != -1)
      {
        v31 = 0;
        v32 = 1;
        while (*(v25 + 4 * v31) != v29)
        {
          v31 = v32;
          if (v30 <= v32++)
          {
            goto LABEL_56;
          }
        }

        if (!v32)
        {
LABEL_56:
          if (*this != 1)
          {
            goto LABEL_59;
          }

          v57 = MEMORY[0x1E69E5300];
          v58 = "ClearSpaceByConstraints failed: cannot locate previous edge!";
          v59 = 60;
          goto LABEL_58;
        }

        v66 = v18;
        v67 = v17;
        v69 = v12;
        v70 = v16;
        v68 = v13;
        v34 = v26 >> 2;
        if (v28 >= v32 - 1)
        {
          LODWORD(v34) = 0;
        }

        v35 = v34 + v28;
        v72 = v8;
        if (v32 < v35)
        {
          v63 = v10;
          v64 = v5;
          v65 = v9;
          v36 = v21 << 32;
          v37 = v32;
          do
          {
            v38 = v37 % v30;
            v39 = *(*(*(this + 21) + 24 * v21) + 4 * (v37 % v30));
            v40 = __ROR8__(v36 | v39, 32);
            if (v39 <= v21)
            {
              v41 = (v36 | v39);
            }

            else
            {
              v41 = v40;
            }

            v74.__locale_ = v41;
            if (!std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 44, &v74))
            {
              v42 = *(*(this + 21) + 24 * v21);
              v43 = v72;
              if (v72 >= v73)
              {
                v45 = __src;
                v46 = v72 - __src;
                v47 = (v72 - __src) >> 2;
                v48 = v47 + 1;
                if ((v47 + 1) >> 62)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v49 = v73 - __src;
                if ((v73 - __src) >> 1 > v48)
                {
                  v48 = v49 >> 1;
                }

                v50 = v49 >= 0x7FFFFFFFFFFFFFFCLL;
                v51 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v50)
                {
                  v51 = v48;
                }

                if (v51)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&__src, v51);
                }

                v52 = (4 * v47);
                v53 = *(v42 + 4 * v38);
                v54 = &v52[-((v72 - __src) >> 2)];
                *v52 = v53;
                v44 = (v52 + 1);
                memcpy(v54, v45, v46);
                v55 = __src;
                __src = v54;
                v72 = v44;
                v73 = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                *v72 = *(v42 + 4 * v38);
                v44 = v43 + 4;
              }

              v36 = v21 << 32;
              v72 = v44;
            }

            ++v37;
          }

          while (v35 != v37);
          v7 = __src;
          v8 = v72;
          v9 = v65;
          v10 = v63;
          v5 = v64;
        }

        if (v8 == v7)
        {
          v16 = v70;
        }

        else
        {
          v56 = 0;
          v16 = v70;
          do
          {
            geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v21, *&v7[4 * v56++]);
            v7 = __src;
          }

          while (v56 < (v72 - __src) >> 2);
        }

        v18 = v66;
        v17 = v67 + 1;
        v8 = v7;
        v13 = v68;
        v12 = v69;
        if (v67 + 1 != v66)
        {
          continue;
        }

        goto LABEL_51;
      }
    }

    break;
  }

LABEL_53:
  if (*this == 1)
  {
    v57 = MEMORY[0x1E69E5300];
    v58 = "ClearSpaceByConstraints failed: cannot locate current edge!";
    v59 = 59;
LABEL_58:
    v60 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, v58, v59);
    std::ios_base::getloc((v60 + *(*v60 - 24)));
    v61 = std::locale::use_facet(&v74, MEMORY[0x1E69E5318]);
    (v61->__vftable[2].~facet_0)(v61, 10);
    std::locale::~locale(&v74);
    std::ostream::put();
    std::ostream::flush();
    v7 = __src;
  }

LABEL_59:
  if (v7)
  {
    v72 = v7;
    operator delete(v7);
  }

  return v9;
}

unint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetEdgeCount(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v2 = *(this + 21);
  v1 = *(this + 22);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = (v2 + 8);
  do
  {
    v4 += (*v6 - *(v6 - 1)) >> 2;
    v6 += 3;
    --v5;
  }

  while (v5);
  return v4 >> 1;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::RebaseMesh(void **a1, void *a2, char **a3)
{
  a2[1] = *a2;
  v4 = a1[1];
  v3 = a1[2];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
  v6 = (a1[5] - a1[4]) >> 2;
  if (v5 == v6)
  {
    v11 = a1[13];
    v10 = a1[14];
    memset_pattern16(&__b, &unk_1E30A0CB0, 0x18uLL);
    std::vector<geo::math::Matrix<double,3,1>>::resize(a2, v5 + ((v10 - v11) >> 5), &__b);
    if (v3 != v4)
    {
      v12 = 0;
      v13 = 0;
      if (v5 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
      }

      do
      {
        v15 = a1[1] + v12;
        v16 = *a2 + 24 * *(a1[4] + v13);
        v17 = *v15;
        *(v16 + 16) = *(v15 + 2);
        *v16 = v17;
        ++v13;
        v12 += 24;
      }

      while (v14 != v13);
    }

    v18 = a1[13];
    if (a1[14] != v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = &v18[v19];
        v22 = *a2 + 24 * *v21;
        v23 = *(v21 + 8);
        *(v22 + 16) = *(v21 + 3);
        *v22 = v23;
        ++v20;
        v18 = a1[13];
        v19 += 32;
      }

      while (v20 < (a1[14] - v18) >> 5);
    }

    __b = 0uLL;
    v47 = 0;
    v25 = a1[32];
    v24 = a1[33];
    if (v24 != v25)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        if (*&v25[v26 + 8] - *&v25[v26] == 24)
        {
          std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](&__b, &v25[v26]);
          v25 = a1[32];
          v24 = a1[33];
        }

        ++v27;
        v26 += 24;
      }

      while (v27 < 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3));
    }

    a3[1] = *a3;
    v29 = a1[24];
    v28 = a1[25];
    if (v28 != v29)
    {
      v30 = 0;
      do
      {
        v31 = &v29[12 * v30];
        v32 = a1[4];
        v33 = v32[*v31];
        v34 = v32[v31[1]];
        v35 = v32[v31[2]];
        p_b = __PAIR64__(v34, v33);
        v45 = v35;
        if (*(&__b + 1) == __b)
        {
LABEL_36:
          std::vector<geo::math::Matrix<unsigned int,3,1>>::push_back[abi:nn200100](a3, &p_b);
          v29 = a1[24];
          v28 = a1[25];
        }

        else
        {
          v36 = 0;
          v37 = 0xAAAAAAAAAAAAAAABLL * ((*(&__b + 1) - __b) >> 3);
          if (v37 <= 1)
          {
            v37 = 1;
          }

          while (1)
          {
            v38 = __b + 24 * v36;
            v39 = *v38;
            v40 = *(v38 + 8);
            if (v39 != v40)
            {
              v41 = v39;
              while (*v41 != v33)
              {
                if (++v41 == v40)
                {
                  goto LABEL_35;
                }
              }

              if (v41 != v40)
              {
                v42 = v39;
                while (*v42 != v34)
                {
                  if (++v42 == v40)
                  {
                    goto LABEL_35;
                  }
                }

                if (v42 != v40)
                {
                  while (*v39 != v35)
                  {
                    if (++v39 == v40)
                    {
                      goto LABEL_35;
                    }
                  }

                  if (v39 != v40)
                  {
                    break;
                  }
                }
              }
            }

LABEL_35:
            if (++v36 == v37)
            {
              goto LABEL_36;
            }
          }
        }

        ++v30;
      }

      while (v30 < 0xAAAAAAAAAAAAAAABLL * ((v28 - v29) >> 2));
    }

    if (a1 + 24 != a3)
    {
      std::vector<geo::math::Matrix<unsigned int,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<unsigned int,3,1>*,geo::math::Matrix<unsigned int,3,1>*>(a1 + 24, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
    }

    p_b = &__b;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&p_b);
  }

  return v5 == v6;
}

uint64_t *std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::find<geo::math::Matrix<unsigned int,3,1>>(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 + 0x1FFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == *a2 && *(result + 6) == a2[2])
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,3,1>,geo::math::Matrix<unsigned int,3,1> const&>(void *a1, _DWORD *a2, uint64_t a3)
{
  v3 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = v3 & (*&v4 + 0x1FFFFFFFFLL);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || *(v8 + 6) != a2[2])
  {
    goto LABEL_21;
  }

  return v8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<geo::math::Matrix<double,3,1>>::resize(void *result, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__append(result, v5, a3);
  }

  else if (!v4)
  {
    result[1] = *result + 24 * a2;
  }
}

void std::vector<geo::math::Matrix<unsigned int,3,1>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

void std::vector<geo::math::Matrix<double,3,1>>::__append(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a1, v10);
    }

    v14 = 24 * v7;
    v15 = 3 * a2;
    v16 = 24 * v7 + 24 * a2;
    v17 = 8 * v15;
    v18 = 24 * v7;
    do
    {
      v19 = *a3;
      *(v18 + 16) = *(a3 + 2);
      *v18 = v19;
      v18 += 24;
      v17 -= 24;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v14 - v20;
    memcpy((v14 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void **std::vector<geo::math::Matrix<unsigned int,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<unsigned int,3,1>*,geo::math::Matrix<unsigned int,3,1>*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<geo::math::Matrix<unsigned int,3,1>>::__vallocate[abi:nn200100](v6, v11);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<geo::math::Matrix<unsigned int,3,1>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<geo::math::Matrix<unsigned int,3,1>>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::~ConstrainedDelaunayTriangulationMesherDetails(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 352);
  v8 = (this + 328);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 304);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 280);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 256);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 216);
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v8 = (this + 168);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 128);
  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
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

void re::simplifyAcousticMesh(uint64_t a1@<X0>, uint64_t a2@<X1>, re::GeomMesh *a3@<X8>)
{
  v4 = a1;
  v130 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 40);
  if (v6)
  {
    if (re::internal::GeomAttributeManager::attributeByName((a1 + 64), v6))
    {
      v7 = *(a2 + 40);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *&v8 = *(a2 + 4);
  v9 = 0.3 * *&v8;
  v114 = 0.3 * *&v8;
  v10 = *(a2 + 52);
  v11 = *(a2 + 28);
  v110 = *(a2 + 24);
  v111 = v8;
  *(&v8 + 1) = v10;
  v115 = v8;
  v116 = *(a2 + 60);
  v117 = v7;
  v112 = v11;
  v113 = v7;
  v108[0] = 1092616192;
  v108[1] = *(a2 + 16);
  *&v108[2] = (v9 * v9) * 0.5;
  v108[3] = 0;
  v109 = v7;
  re::GeomMesh::GeomMesh(a3, 0);
  bzero(&v93, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(v95, 1uLL);
  ++v97;
  re::internal::GeomAttributeManager::GeomAttributeManager(v99);
  re::internal::GeomAttributeManager::addAttribute(v99, "vertexPosition", 1, 7);
  if (v7)
  {
    v92 = re::internal::GeomAttributeManager::attributeByName((v4 + 64), v7);
  }

  else
  {
    v92 = 0;
  }

  LODWORD(v94) = *(v4 + 16);
  v100 = v94;
  if (v101)
  {
    v13 = v102;
    v14 = 8 * v101;
    do
    {
      v15 = *v13++;
      (*(*v15 + 80))(v15, v100);
      v14 -= 8;
    }

    while (v14);
  }

  v16 = *(v4 + 40);
  v17 = v16;
  if (v96 > v16)
  {
    v18 = v107;
    if (v107)
    {
      v19 = 0;
      do
      {
        v20 = re::internal::GeomAttributeContainer::attributeByIndex(v106, v19);
        re::internal::accessFaceVaryingAttributeSubmesh(v20, v21);
        ++v19;
      }

      while (v18 != v19);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(v95, v16);
  v103 = v16;
  if (v104)
  {
    v22 = v105;
    v17 = 8 * v104;
    do
    {
      v23 = *v22++;
      (*(*v23 + 80))(v23, v103);
      v17 -= 8;
    }

    while (v17);
  }

  v24 = *(v4 + 40);
  if (v24)
  {
    v25 = 0;
    v26 = &v93;
    while (v24 > v25)
    {
      v27 = *(v4 + 56) + 16 * v25;
      v28 = *v27;
      v30 = *(v27 + 8);
      v29 = *(v27 + 12);
      v17 = v96;
      if (v29 == -1)
      {
        if (v96 <= v25)
        {
          goto LABEL_106;
        }

        v39 = (v98 + 16 * v25);
        v40 = *v39;
        v41 = v39[3];
        if (v40 != -1 && v41 == -1)
        {
          v43 = v107;
          if (v107)
          {
            v44 = 0;
            do
            {
              v45 = re::internal::GeomAttributeContainer::attributeByIndex(v106, v44);
              re::internal::accessFaceVaryingAttributeSubmesh(v45, v46);
              ++v44;
            }

            while (v43 != v44);
            v17 = v96;
          }
        }

        if (v17 <= v25)
        {
          goto LABEL_110;
        }

        v29 = -1;
      }

      else
      {
        if (v96 <= v25)
        {
          goto LABEL_90;
        }

        v31 = (v98 + 16 * v25);
        v32 = *v31;
        v33 = v31[3];
        if (v32 != -1 && v33 != -1)
        {
          v35 = v107;
          if (v107)
          {
            v36 = 0;
            do
            {
              v37 = re::internal::GeomAttributeContainer::attributeByIndex(v106, v36);
              re::internal::accessFaceVaryingAttributeSubmesh(v37, v38);
              ++v36;
            }

            while (v35 != v36);
            v17 = v96;
          }
        }

        if (v17 <= v25)
        {
          goto LABEL_94;
        }
      }

      v47 = v98 + 16 * v25;
      *v47 = v28;
      *(v47 + 8) = v30;
      *(v47 + 12) = v29;
      ++v25;
      v24 = *(v4 + 40);
      if (v25 >= v24)
      {
        goto LABEL_47;
      }
    }

    v118 = 0;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v119 = 136315906;
    *&v119[4] = "operator[]";
    *v120 = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *&v120[2] = 797;
    v121 = 2048;
    v122 = v25;
    v123 = 2048;
    v124 = v24;
    _os_log_send_and_compose_impl(v67, &v118, &v125, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v92, v93);
    _os_crash_msg();
    __break(1u);
    goto LABEL_82;
  }

LABEL_47:
  v48 = re::GeomMesh::operator=(a3, &v94);
  re::GeomMesh::setName(v48, v93);
  re::GeomMesh::freeName(&v93);
  v17 = re::GeomMesh::accessVertexPositions(v4);
  LODWORD(v25) = v49;
  v50 = re::GeomMesh::modifyVertexPositions(a3);
  if (*(v4 + 16))
  {
    v52 = 0;
    v25 = v25;
    v26 = v51;
    while (v25 != v52)
    {
      if (v51 == v52)
      {
        goto LABEL_86;
      }

      v53 = *v17;
      v17 += 16;
      *v50++ = v53;
      if (++v52 >= *(v4 + 16))
      {
        goto LABEL_52;
      }
    }

LABEL_82:
    v118 = 0;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v119 = 136315906;
    *&v119[4] = "operator[]";
    *v120 = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    *&v120[2] = 613;
    v121 = 2048;
    v122 = v25;
    v123 = 2048;
    v124 = v25;
    _os_log_send_and_compose_impl(v70, &v118, &v125, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v92, v93);
    _os_crash_msg();
    __break(1u);
LABEL_86:
    v118 = 0;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v119 = 136315906;
    *&v119[4] = "operator[]";
    *v120 = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *&v120[2] = 621;
    v121 = 2048;
    v122 = v26;
    v123 = 2048;
    v124 = v26;
    _os_log_send_and_compose_impl(v73, &v118, &v125, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v92, v93);
    _os_crash_msg();
    __break(1u);
LABEL_90:
    v118 = 0;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v119 = 136315906;
    *&v119[4] = "operator[]";
    *v120 = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *&v120[2] = 797;
    v121 = 2048;
    v122 = v25;
    v123 = 2048;
    v124 = v17;
    _os_log_send_and_compose_impl(v76, &v118, &v125, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v92, v93);
    _os_crash_msg();
    __break(1u);
LABEL_94:
    v118 = 0;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v119 = 136315906;
    *&v119[4] = "operator[]";
    *v120 = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    *&v120[2] = 789;
    v121 = 2048;
    v122 = v25;
    v123 = 2048;
    v124 = v17;
    _os_log_send_and_compose_impl(v79, &v118, &v125, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v92, v93);
    _os_crash_msg();
    __break(1u);
    goto LABEL_98;
  }

LABEL_52:
  if (v92)
  {
    v25 = re::GeomMesh::addAttribute(a3, v7, 2, 2);
    v54 = re::GeomAttribute::accessValues<int>(v92);
    v56 = v55;
    v57 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v25);
    v59 = *(v4 + 40);
    if (*(v4 + 40))
    {
      v4 = v56;
      v17 = v58;
      v60 = v4;
      v61 = v58;
      while (v60)
      {
        if (!v61)
        {
          goto LABEL_102;
        }

        v62 = *v54++;
        *v57++ = v62;
        --v61;
        --v60;
        if (!--v59)
        {
          goto LABEL_58;
        }
      }

LABEL_98:
      v118 = 0;
      v129 = 0u;
      v128 = 0u;
      v127 = 0u;
      v126 = 0u;
      v125 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v119 = 136315906;
      *&v119[4] = "operator[]";
      *v120 = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      *&v120[2] = 613;
      v121 = 2048;
      v122 = v4;
      v123 = 2048;
      v124 = v4;
      _os_log_send_and_compose_impl(v82, &v118, &v125, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v92, v93);
      _os_crash_msg();
      __break(1u);
LABEL_102:
      v118 = 0;
      v129 = 0u;
      v128 = 0u;
      v127 = 0u;
      v126 = 0u;
      v125 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v119 = 136315906;
      *&v119[4] = "operator[]";
      *v120 = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      *&v120[2] = 621;
      v121 = 2048;
      v122 = v17;
      v123 = 2048;
      v124 = v17;
      _os_log_send_and_compose_impl(v85, &v118, &v125, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v92, v93);
      _os_crash_msg();
      __break(1u);
LABEL_106:
      v118 = 0;
      v129 = 0u;
      v128 = 0u;
      v127 = 0u;
      v126 = 0u;
      v125 = 0u;
      v86 = MEMORY[0x1E69E9C10];
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v119 = 136315906;
      *&v119[4] = "operator[]";
      *v120 = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      *&v120[2] = 797;
      v121 = 2048;
      v122 = v25;
      v123 = 2048;
      v124 = v17;
      _os_log_send_and_compose_impl(v88, &v118, &v125, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v92, v93);
      _os_crash_msg();
      __break(1u);
LABEL_110:
      v118 = 0;
      v129 = 0u;
      v128 = 0u;
      v127 = 0u;
      v126 = 0u;
      v125 = 0u;
      v89 = MEMORY[0x1E69E9C10];
      v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v119 = 136315906;
      *&v119[4] = "operator[]";
      *v120 = 1024;
      if (v90)
      {
        v91 = 3;
      }

      else
      {
        v91 = 2;
      }

      *&v120[2] = 789;
      v121 = 2048;
      v122 = v25;
      v123 = 2048;
      v124 = v17;
      _os_log_send_and_compose_impl(v91, &v118, &v125, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v92, v93);
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_58:
  re::GeomMesh::freeName(&v93);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v99);
  if (v95[0] && v98)
  {
    (*(*v95[0] + 40))();
  }

  re::GeomMesh::GeomMesh(&v93, 0);
  if (*(a2 + 20) == 1)
  {
    re::internal::substituteProxies(a3);
    re::GeomMesh::operator=(a3, &v125);
    re::GeomMesh::~GeomMesh(&v125);
  }

  if (*a2 == 1)
  {
    re::internal::removeSmallAndThinFeatures(&v93);
    re::GeomMesh::operator=(a3, &v125);
    re::GeomMesh::~GeomMesh(&v125);
  }

  if (*(a2 + 12) == 1)
  {
    v119[8] = 0;
    *v119 = 0;
    *v120 = 1065353216;
    *&v120[4] = 0;
    v122 = 0;
    LOBYTE(v123) = 1;
    *(&v124 + 2) = *(a2 + 16);
    BYTE6(v124) = 1;
    re::GeomMesh::operator=(a3, &v125);
    re::GeomMesh::~GeomMesh(&v125);
  }

  if (*(a2 + 32) == 1)
  {
    re::GeomMesh::operator=(a3, &v125);
    re::GeomMesh::~GeomMesh(&v125);
  }

  if (*(a2 + 33) == 1)
  {
    re::internal::simplifyPlanarRegions(a3, v108, &v125);
    re::GeomMesh::operator=(a3, &v125);
    re::GeomMesh::~GeomMesh(&v125);
  }

  if (v97)
  {
    bzero(&v125, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(&v126, 1uLL);
    ++DWORD2(v127);
    re::internal::GeomAttributeManager::GeomAttributeManager((&v128 + 8));
    re::internal::GeomAttributeManager::addAttribute((&v128 + 8), "vertexPosition", 1, 7);
    re::GeomMeshBuilder::appendMesh(&v125, &v93);
    if (*(a3 + 10))
    {
      re::GeomMeshBuilder::appendMesh(&v125, a3);
    }

    v64 = re::GeomMesh::operator=(a3, &v125 + 1);
    re::GeomMesh::setName(v64, v125);
    re::GeomMesh::freeName(&v125);
    re::GeomMesh::freeName(&v125);
    re::internal::GeomAttributeManager::~GeomAttributeManager((&v128 + 8));
    if (v126 && v128)
    {
      (*(*v126 + 40))();
    }
  }

  re::GeomMesh::~GeomMesh(&v93);
}

void re::anonymous namespace::decimateSlivers(re::GeomMesh *a1, _DWORD *a2, char *a3, __int128 *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a2[2] == a2[10])
  {
    re::GeomMesh::GeomMesh(a1, 0);
    re::internal::TriangleDecimator::TriangleDecimator(v37);
    re::internal::TriangleDecimator::setMesh(v37, a2);
    v9 = a4[1];
    v38 = *a4;
    v39[0] = v9;
    *(v39 + 13) = *(a4 + 29);
    re::internal::TriangleDecimator::decimateTo(v37, 0);
    if (a3 && (v10 = re::internal::GeomAttributeManager::attributeByName((a2 + 16), a3)) != 0)
    {
      v11 = v10;
      v36 = 0;
      v33 = 0;
      v34 = 0;
      v32 = 0;
      v35 = 0;
      re::internal::TriangleDecimator::convertCombinatorialMapToMesh(v37, a1, &v32);
      v12 = re::GeomAttribute::accessValues<int>(v11);
      v14 = v13;
      v15 = re::GeomMesh::addAttribute(a1, a3, 2, 2);
      v16 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v15);
      v18 = *(a1 + 10);
      if (*(a1 + 10))
      {
        v19 = 0;
        v20 = v34;
        v21 = v36;
        v22 = v17;
        while (v20 != v19)
        {
          v4 = *(v21 + 4 * v19);
          if (v4 >= v14)
          {
            goto LABEL_21;
          }

          if (v17 == v19)
          {
            goto LABEL_25;
          }

          *(v16 + 4 * v19++) = *(v12 + 4 * v4);
          if (v18 == v19)
          {
            goto LABEL_10;
          }
        }

        v40 = 0;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        v23 = MEMORY[0x1E69E9C10];
        v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v41 = 136315906;
        v42 = "operator[]";
        v43 = 1024;
        if (v24)
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v44 = 789;
        v45 = 2048;
        v46 = v20;
        v47 = 2048;
        v48 = v20;
        _os_log_send_and_compose_impl(v25, &v40, &v49, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v32, v33);
        _os_crash_msg();
        __break(1u);
LABEL_21:
        v40 = 0;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        v26 = MEMORY[0x1E69E9C10];
        v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v41 = 136315906;
        v42 = "operator[]";
        v43 = 1024;
        if (v27)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v44 = 613;
        v45 = 2048;
        v46 = v4;
        v47 = 2048;
        v48 = v14;
        _os_log_send_and_compose_impl(v28, &v40, &v49, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v32, v33);
        _os_crash_msg();
        __break(1u);
LABEL_25:
        v40 = 0;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v41 = 136315906;
        v42 = "operator[]";
        v43 = 1024;
        if (v30)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v44 = 621;
        v45 = 2048;
        v46 = v22;
        v47 = 2048;
        v48 = v22;
        _os_log_send_and_compose_impl(v31, &v40, &v49, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v32, v33);
        _os_crash_msg();
        __break(1u);
      }

LABEL_10:
      if (v32)
      {
        if (v36)
        {
          (*(*v32 + 40))();
        }
      }
    }

    else
    {
      re::internal::TriangleDecimator::convertCombinatorialMapToMesh(v37, a1);
    }

    re::internal::TriangleDecimator::~TriangleDecimator(v37);
  }

  else
  {
    re::GeomMesh::GeomMesh(v37, 0);
    re::GeomMesh::~GeomMesh(v37);
  }
}

void re::anonymous namespace::decimatePreservingArea(re::_anonymous_namespace_ *this, const re::GeomMesh *a2, char *a3, float a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 10);
  if (v7)
  {
    if (*(a2 + 2) == v7)
    {
      re::internal::TriangleDecimator::TriangleDecimator(v38);
      v40 = 0;
      v39 = 0;
      v41 = 1065353216;
      v42 = 256;
      v43 = 1036831949;
      v44 = a4 * a4;
      v45 = 0;
      v46 = 2139095040;
      v47 = 1;
      re::internal::TriangleDecimator::setMesh(v38, a2);
      LODWORD(v10) = *(a2 + 10);
      re::internal::TriangleDecimator::decimateTo(v38, (v10 * 0.1));
      re::GeomMesh::GeomMesh(this, 0);
      if (a3 && (v11 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), a3)) != 0)
      {
        v12 = v11;
        v37 = 0;
        v34 = 0;
        v35 = 0;
        v33 = 0;
        v36 = 0;
        re::internal::TriangleDecimator::convertCombinatorialMapToMesh(v38, this, &v33);
        v13 = re::GeomAttribute::accessValues<int>(v12);
        v15 = v14;
        v16 = re::GeomMesh::addAttribute(this, a3, 2, 2);
        v17 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v16);
        v19 = *(this + 10);
        if (*(this + 10))
        {
          v20 = 0;
          v21 = v35;
          v22 = v37;
          v23 = v18;
          while (v21 != v20)
          {
            v4 = *(v22 + 4 * v20);
            if (v4 >= v15)
            {
              goto LABEL_24;
            }

            if (v18 == v20)
            {
              goto LABEL_28;
            }

            *(v17 + 4 * v20++) = *(v13 + 4 * v4);
            if (v19 == v20)
            {
              goto LABEL_11;
            }
          }

          v48 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v24 = MEMORY[0x1E69E9C10];
          v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          v50 = "operator[]";
          v51 = 1024;
          if (v25)
          {
            v26 = 3;
          }

          else
          {
            v26 = 2;
          }

          v52 = 789;
          v53 = 2048;
          v54 = v21;
          v55 = 2048;
          v56 = v21;
          _os_log_send_and_compose_impl(v26, &v48, &v57, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v33, v34);
          _os_crash_msg();
          __break(1u);
LABEL_24:
          v48 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v27 = MEMORY[0x1E69E9C10];
          v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          v50 = "operator[]";
          v51 = 1024;
          if (v28)
          {
            v29 = 3;
          }

          else
          {
            v29 = 2;
          }

          v52 = 613;
          v53 = 2048;
          v54 = v4;
          v55 = 2048;
          v56 = v15;
          _os_log_send_and_compose_impl(v29, &v48, &v57, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v33, v34);
          _os_crash_msg();
          __break(1u);
LABEL_28:
          v48 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v30 = MEMORY[0x1E69E9C10];
          v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          v50 = "operator[]";
          v51 = 1024;
          if (v31)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v52 = 621;
          v53 = 2048;
          v54 = v23;
          v55 = 2048;
          v56 = v23;
          _os_log_send_and_compose_impl(v32, &v48, &v57, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v33, v34);
          _os_crash_msg();
          __break(1u);
        }

LABEL_11:
        if (v33)
        {
          if (v37)
          {
            (*(*v33 + 40))();
          }
        }
      }

      else
      {
        re::internal::TriangleDecimator::convertCombinatorialMapToMesh(v38, this);
      }

      re::internal::TriangleDecimator::~TriangleDecimator(v38);
    }

    else
    {
      re::GeomMesh::GeomMesh(v38, 0);
      re::GeomMesh::~GeomMesh(v38);
    }
  }

  else
  {
    *this = 0;
    *(this + 2) = 0;
    bzero(this + 16, 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((this + 16));
    *(this + 91) = 0;

    re::GeomMesh::copy(a2, this);
  }
}

re::internal::TriangleDecimator *re::internal::TriangleDecimator::TriangleDecimator(re::internal::TriangleDecimator *this)
{
  v2 = re::GeomConnectivityManifold::GeomConnectivityManifold(this);
  *(v2 + 82) = 0;
  *(v2 + 40) = 0;
  *(v2 + 19) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 92) = 0;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 102) = 0;
  *(v2 + 26) = 0u;
  *(v2 + 27) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 57) = 0;
  *(v2 + 29) = 0u;
  *(v2 + 120) = 1;
  *(v2 + 488) = 0u;
  *(v2 + 74) = 0;
  *(v2 + 71) = 0;
  *(v2 + 552) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 33) = 0u;
  *(v2 + 136) = 1;
  *(v2 + 72) = 0;
  *(v2 + 146) = 1;
  re::DynamicArray<unsigned int>::resize(v2 + 70, 0, &re::kInvalidMeshIndex);
  *(this + 608) = 0;
  *(this + 75) = 0;
  *(this + 153) = 1065353216;
  *(this + 308) = 0;
  *(this + 628) = 0;
  *(this + 158) = 2139095040;
  *(this + 636) = 1;
  *(this + 644) = 0;
  *(this + 82) = 0;
  *(this + 84) = 0;
  *(this + 83) = 0;
  *(this + 170) = 0;
  *(this + 101) = 0;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 180) = 0;
  *(this + 190) = 0;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 200) = 0;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  return this;
}

void re::internal::TriangleDecimator::~TriangleDecimator(re::internal::TriangleDecimator *this)
{
  v2 = *(this + 97);
  if (v2)
  {
    if (*(this + 101))
    {
      (*(*v2 + 40))(v2);
    }

    *(this + 101) = 0;
    *(this + 98) = 0;
    *(this + 99) = 0;
    *(this + 97) = 0;
    ++*(this + 200);
  }

  re::DynamicArray<unsigned long>::deinit(this + 736);
  re::DynamicArray<unsigned long>::deinit(this + 696);
  re::DynamicArray<unsigned long>::deinit(this + 656);
  re::DynamicArray<unsigned long>::deinit(this + 560);
  v3 = *(this + 65);
  if (v3)
  {
    if (*(this + 69))
    {
      (*(*v3 + 40))(v3);
    }

    *(this + 69) = 0;
    *(this + 66) = 0;
    *(this + 67) = 0;
    *(this + 65) = 0;
    ++*(this + 136);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 464);
  v4 = *(this + 53);
  if (v4)
  {
    if (*(this + 57))
    {
      (*(*v4 + 40))(v4);
    }

    *(this + 57) = 0;
    *(this + 54) = 0;
    *(this + 55) = 0;
    *(this + 53) = 0;
    ++*(this + 112);
  }

  re::DynamicArray<unsigned long>::deinit(this + 384);
  v5 = *(this + 43);
  if (v5)
  {
    if (*(this + 47))
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 47) = 0;
    *(this + 44) = 0;
    *(this + 45) = 0;
    *(this + 43) = 0;
    ++*(this + 92);
  }

  re::DynamicArray<unsigned long>::deinit(this + 304);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 208);
  re::DynamicArray<unsigned long>::deinit(this + 168);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  v6 = *(this + 6);
  if (v6)
  {
    if (*(this + 10))
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 10) = 0;
    *(this + 7) = 0;
    *(this + 8) = 0;
    *(this + 6) = 0;
    ++*(this + 18);
  }

  re::DynamicArray<unsigned long>::deinit(this + 8);
}

void re::internal::fillFaces(uint64_t a1, int a2, unint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  re::DynamicArray<float>::resize(a1, a3);
  if (a3)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = 1;
    do
    {
      if (v7 <= v6)
      {
        v13 = 0;
        memset(v22, 0, sizeof(v22));
        v10 = MEMORY[0x1E69E9C10];
        v14 = 136315906;
        v15 = "operator[]";
        v16 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v17 = 789;
        v18 = 2048;
        v19 = v6;
        v20 = 2048;
        v21 = v7;
        _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
        _os_crash_msg();
        __break(1u);
      }

      *(v8 + 4 * v6) = a2 + v9 - 1;
      v6 = v9++;
    }

    while (v6 < a3);
  }
}

uint64_t re::internal::makeSubmesh(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9 = 0;
  v6[1] = a3;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v5[1] = 0;
  v6[0] = a4;
  v5[0] = 0;
  re::makeMeshFromFaces(a2, v6, v5, v10, v7, a1);
  if (v7[0] && v9)
  {
    (*(*v7[0] + 40))();
  }

  result = v10[0];
  if (v10[0])
  {
    if (v12)
    {
      return (*(*v10[0] + 40))(v10[0]);
    }
  }

  return result;
}

void re::internal::capBoundary(unsigned int *a1, unint64_t a2, unint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = a2;
  v130 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 16);
  v12 = *a1;
  v13 = *(a1 + 3);
  v14 = v12 + v11 + 1;
  *a1 = v14;
  v112 = v14;
  a1[40] = v14;
  v15 = *(a1 + 23);
  if (v15)
  {
    v16 = *(a1 + 25);
    v17 = 8 * v15;
    do
    {
      v18 = *v16++;
      (*(*v18 + 80))(v18, a1[40]);
      v17 -= 8;
    }

    while (v17);
  }

  re::DynamicArray<re::GeomCell4>::resize(a1 + 1, (v13 + v11));
  a1[68] = v13 + v11;
  v19 = *(a1 + 37);
  if (v19)
  {
    v20 = *(a1 + 39);
    v21 = 8 * v19;
    do
    {
      v22 = *v20++;
      (*(*v22 + 80))(v22, a1[68]);
      v21 -= 8;
    }

    while (v21);
  }

  v23 = re::internal::GeomAttributeManager::attributeByName((a1 + 12), "vertexPosition");
  v24 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v23);
  v26 = v25;
  if (v12 >= v25)
  {
    goto LABEL_112;
  }

  v27 = 0uLL;
  *(v24 + 16 * v12) = 0u;
  if (v11)
  {
    v115 = a5;
    v28 = a3;
    v29 = 0;
    while (1)
    {
      v30 = (v13 + v29);
      a3 = *(a1 + 3);
      if (a3 <= v30)
      {
        break;
      }

      v31 = v12 + v29 + 1;
      if (v11 - 1 == v29)
      {
        v32 = v12;
      }

      else
      {
        v32 = v12 + v29 + 1;
      }

      v33 = (*(a1 + 5) + 16 * v30);
      *v33 = v12;
      v33[1] = v31;
      v33[2] = v32 + 1;
      v33[3] = -1;
      a3 = *(v9 + 16);
      if (a3 <= v29)
      {
        goto LABEL_68;
      }

      v34 = *(*(v9 + 32) + 4 * v29);
      if (v34 >= v25)
      {
        goto LABEL_72;
      }

      if (v25 + ~v12 == v29)
      {
        goto LABEL_76;
      }

      *(v24 + 16 * v31) = *(v24 + 16 * v34);
      v35 = vaddq_f32(*(v24 + 16 * v12), *(v24 + 16 * v31));
      *(v24 + 16 * v12) = v35;
      if (v11 == ++v29)
      {
        v36 = v11;
        v37 = vmulq_n_f32(v35, 1.0 / v11);
        *(v24 + 16 * v12) = v37;
        if (a4)
        {
          v38 = 0;
          v13 = *(v9 + 16);
          v39 = *(v9 + 32);
          v27 = 0uLL;
          a3 = v28;
          do
          {
            if (v13 == v38)
            {
              goto LABEL_84;
            }

            if (v11 - 1 == v38)
            {
              v9 = 0;
            }

            else
            {
              v9 = v38 + 1;
            }

            if (v13 <= v9)
            {
              goto LABEL_88;
            }

            v29 = *(v39 + 4 * v38);
            if (v29 >= v25)
            {
              goto LABEL_92;
            }

            v9 = *(v39 + 4 * v9);
            if (v9 >= v25)
            {
              goto LABEL_96;
            }

            ++v38;
            v40 = vsubq_f32(*(v24 + 16 * v29), v37);
            v41 = vsubq_f32(*(v24 + 16 * v9), v37);
            v42 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), vnegq_f32(v40)), v41, vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
            v27 = vaddq_f32(v27, vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL));
          }

          while (v11 != v38);
          v13 = v11 + 1;
LABEL_31:
          v44 = vmulq_f32(v27, v27);
          *&v45 = v44.f32[2] + vaddv_f32(*v44.f32);
          *v44.f32 = vrsqrte_f32(v45);
          *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32)));
          v113 = vmulq_n_f32(v27, vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
          v46 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a4);
          v26 = v47;
          LODWORD(v48) = v47 - v12;
          if (v47 >= v12)
          {
            v48 = v48;
          }

          else
          {
            v48 = 0;
          }

          v29 = v12;
          do
          {
            if (!v48)
            {
              goto LABEL_80;
            }

            *(v46 + 16 * v29) = v113;
            --v48;
            ++v29;
            --v13;
          }

          while (v13);
          if (v115)
          {
            if (a6)
            {
              v49 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v115);
              LODWORD(v26) = v50;
              v51 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a6);
              if (v12 < v112)
              {
                LODWORD(v53) = v52;
                v54 = a3;
                v55.i64[1] = v113.i64[1];
                v56 = vmulq_f32(v113, xmmword_1E3047680);
                v56.f32[0] = v56.f32[2] + vaddv_f32(*v56.f32);
                v55.i64[0] = 0;
                v57 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v56, v55), 0), xmmword_1E306DD20, xmmword_1E30476A0);
                if (v12 <= v26)
                {
                  a3 = v26;
                }

                else
                {
                  a3 = v12;
                }

                if (v12 <= v52)
                {
                  v9 = v52;
                }

                else
                {
                  v9 = v12;
                }

                v58 = (v51 + 16 * v12);
                v59 = v112 - v12;
                v60 = (v49 + 16 * v12);
                v61 = v9 - v12;
                v62 = a3 - v12;
                do
                {
                  if (!v62)
                  {
                    goto LABEL_104;
                  }

                  *v60 = xmmword_1E3047670;
                  if (!v61)
                  {
                    goto LABEL_108;
                  }

                  *v58++ = v57;
                  ++v60;
                  --v61;
                  --v62;
                  --v59;
                }

                while (v59);
                a3 = v54;
              }
            }
          }

          if (!a3)
          {
            return;
          }
        }

        else
        {
          a3 = v28;
          if (!v28)
          {
            return;
          }
        }

        v63 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a3);
        LODWORD(v65) = v64;
        if (v11)
        {
          v26 = (v12 + 1);
          v66 = 1;
          __asm { FMOV            V9.2S, #1.0 }

          v72 = 6.2832 / v36;
          while (v26 < v65)
          {
            v73 = __sincosf_stret(v72 * (v66 - 1));
            *(v63 + 8 * v26) = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v73.__sinval), LODWORD(v73.__cosval)), _D9), 0x3F0000003F000000);
            ++v66;
            ++v26;
            if (v66 > v11)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_100;
        }

LABEL_61:
        if (v12 < v65)
        {
          *(v63 + 8 * v12) = 0x3F0000003F000000;
          return;
        }

LABEL_116:
        v116 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        v108 = MEMORY[0x1E69E9C10];
        v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v117 = 136315906;
        v118 = "operator[]";
        v119 = 1024;
        if (v109)
        {
          v110 = 3;
        }

        else
        {
          v110 = 2;
        }

        v120 = 621;
        v121 = 2048;
        v122 = v12;
        v123 = 2048;
        v124 = v65;
        _os_log_send_and_compose_impl(v110, &v116, &v125, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
        _os_crash_msg();
        __break(1u);
      }
    }

    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v75 = MEMORY[0x1E69E9C10];
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    v120 = 789;
    v121 = 2048;
    v122 = v30;
    v123 = 2048;
    v124 = a3;
    _os_log_send_and_compose_impl(v76, &v116, &v125, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_68:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v77)
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    v120 = 797;
    v121 = 2048;
    v122 = v29;
    v123 = 2048;
    v124 = a3;
    _os_log_send_and_compose_impl(v78, &v116, &v125, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_72:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v79)
    {
      v80 = 3;
    }

    else
    {
      v80 = 2;
    }

    v120 = 621;
    v121 = 2048;
    v122 = v34;
    v123 = 2048;
    v124 = v26;
    _os_log_send_and_compose_impl(v80, &v116, &v125, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_76:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v81 = MEMORY[0x1E69E9C10];
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = "operator[]";
    v119 = 1024;
    v120 = 621;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    v117 = 136315906;
    v121 = 2048;
    v122 = (v12 + v29 + 1);
    v123 = 2048;
    v124 = v26;
    _os_log_send_and_compose_impl(v83, &v116, &v125, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v85)
    {
      v86 = 3;
    }

    else
    {
      v86 = 2;
    }

    v120 = 621;
    v121 = 2048;
    v122 = v29;
    v123 = 2048;
    v124 = v26;
    _os_log_send_and_compose_impl(v86, &v116, &v125, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_84:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v87 = MEMORY[0x1E69E9C10];
    v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v88)
    {
      v89 = 3;
    }

    else
    {
      v89 = 2;
    }

    v120 = 797;
    v121 = 2048;
    v122 = v13;
    v123 = 2048;
    v124 = v13;
    _os_log_send_and_compose_impl(v89, &v116, &v125, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_88:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v90 = MEMORY[0x1E69E9C10];
    v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v91)
    {
      v92 = 3;
    }

    else
    {
      v92 = 2;
    }

    v120 = 797;
    v121 = 2048;
    v122 = v9;
    v123 = 2048;
    v124 = v13;
    _os_log_send_and_compose_impl(v92, &v116, &v125, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_92:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v93 = MEMORY[0x1E69E9C10];
    v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v94)
    {
      v95 = 3;
    }

    else
    {
      v95 = 2;
    }

    v120 = 621;
    v121 = 2048;
    v122 = v29;
    v123 = 2048;
    v124 = v26;
    _os_log_send_and_compose_impl(v95, &v116, &v125, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_96:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v96)
    {
      v97 = 3;
    }

    else
    {
      v97 = 2;
    }

    v120 = 621;
    v121 = 2048;
    v122 = v9;
    v123 = 2048;
    v124 = v26;
    _os_log_send_and_compose_impl(v97, &v116, &v125, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_100:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v98)
    {
      v99 = 3;
    }

    else
    {
      v99 = 2;
    }

    v120 = 621;
    v121 = 2048;
    v122 = v26;
    v123 = 2048;
    v124 = v65;
    _os_log_send_and_compose_impl(v99, &v116, &v125, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_104:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v100 = MEMORY[0x1E69E9C10];
    v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v101)
    {
      v102 = 3;
    }

    else
    {
      v102 = 2;
    }

    v120 = 621;
    v121 = 2048;
    v122 = a3;
    v123 = 2048;
    v124 = v26;
    _os_log_send_and_compose_impl(v102, &v116, &v125, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_108:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v103 = MEMORY[0x1E69E9C10];
    v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v104)
    {
      v105 = 3;
    }

    else
    {
      v105 = 2;
    }

    v120 = 621;
    v121 = 2048;
    v122 = v9;
    v123 = 2048;
    v124 = v53;
    _os_log_send_and_compose_impl(v105, &v116, &v125, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
LABEL_112:
    v116 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v117 = 136315906;
    v118 = "operator[]";
    v119 = 1024;
    if (v106)
    {
      v107 = 3;
    }

    else
    {
      v107 = 2;
    }

    v120 = 621;
    v121 = 2048;
    v122 = v12;
    v123 = 2048;
    v124 = v26;
    _os_log_send_and_compose_impl(v107, &v116, &v125, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v117, 38, v111, v112);
    _os_crash_msg();
    __break(1u);
    goto LABEL_116;
  }

  v43.i64[0] = 0x3F0000003FLL;
  v43.i64[1] = 0x3F0000003FLL;
  *(v24 + 16 * v12) = vnegq_f32(v43);
  if (a4)
  {
    v115 = a5;
    v36 = 0.0;
    v13 = 1;
    goto LABEL_31;
  }

  if (a3)
  {
    v63 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a3);
    LODWORD(v65) = v74;
    goto LABEL_61;
  }
}