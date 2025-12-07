void std::allocator_traits<std::allocator<mlx::core::anonymous namespace::PathNode>>::construct[abi:ne200100]<mlx::core::anonymous namespace::PathNode,std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript&,std::vector<int>,void,0>(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  *a2 = 0uLL;
  *(a2 + 2) = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  std::unordered_set<char>::unordered_set(v10, a3 + 24);
  v7 = *(a4 + 2);
  v8 = *a4;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *a1 = v11;
  *(a1 + 16) = v12;
  v11 = 0uLL;
  v12 = 0;
  *(a1 + 24) = v9;
  memset(&v9, 0, sizeof(v9));
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(a1 + 48, v10);
  *(a1 + 88) = v8;
  *(a1 + 104) = v7;
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v10);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v13 = &v11;
}

void sub_25A305734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 - 40) = v16 - 64;
  _Unwind_Resume(a1);
}

uint64_t *std::vector<mlx::core::anonymous namespace::PathNode>::vector[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 4);
    if (v3 < 0x24924924924924ALL)
    {
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_25A3058A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void std::vector<mlx::core::anonymous namespace::PathNode>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 112;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::pair<std::vector<std::string>,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__erase_unique<char>(void *a1, char *a2)
{
  result = std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void mlx::core::anonymous namespace::batch_tensordot(mlx::core::array,mlx::core::array,std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(mlx::core ***a1, uint64_t **a2, int **a3, char **a4, char **a5)
{
  v11 = *a3;
  v12 = a3[1];
  __dst = 0;
  v29 = 0;
  v27 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v27, v11, v12, v12 - v11);
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v27, __dst, *a4, a4[1], (a4[1] - *a4) >> 2);
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v27, __dst, *a5, a5[1], (a5[1] - *a5) >> 2);
  v26 = 1;
  v14 = *a4;
  v13 = a4[1];
  if (v14 != v13)
  {
    v15 = 1;
    do
    {
      v15 *= mlx::core::array::shape(a2, *v14);
      v26 = v15;
      v14 += 4;
    }

    while (v14 != v13);
  }

  v25 = 1;
  v17 = *a5;
  v16 = a5[1];
  if (v17 != v16)
  {
    v18 = 1;
    do
    {
      v18 *= mlx::core::array::shape(a2, *v17);
      v25 = v18;
      v17 += 4;
    }

    while (v17 != v16);
  }

  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v20 = *a3;
  v19 = a3[1];
  while (v20 != v19)
  {
    v22[0] = mlx::core::array::shape(a2, *v20);
    std::vector<int>::push_back[abi:ne200100](v23, v22);
    ++v20;
  }

  std::vector<int>::push_back[abi:ne200100](v23, &v26);
  std::vector<int>::push_back[abi:ne200100](v23, &v25);
  memset(v21, 0, sizeof(v21));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v21, v27, __dst, (__dst - v27) >> 2);
  mlx::core::transpose(a2, v21, **a1, (*a1)[1]);
}

void sub_25A305E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a15);
  if (a12)
  {
    operator delete(a12);
  }

  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::einsum_naive(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int> const&,std::vector<mlx::core::array>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0 &,std::pair<char,int> *,false>(unint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
  while (2)
  {
    v137 = (a2 - 1);
    v140 = a2;
    v134 = (a2 - 3);
    v135 = (a2 - 2);
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = (a2 - v8) >> 3;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
              case 4:
              case 5:
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            if (v9 == 2)
            {
              v62 = *a3;
              v144 = v137;
              v63 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v62, v137, &std::piecewise_construct, &v144) + 5);
              v64 = *a3;
              v144 = v8;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v64, v8, &std::piecewise_construct, &v144);
              if (v63 < *(result + 20))
              {
                v65 = *v8;
                *v8 = *(a2 - 8);
                *(a2 - 8) = v65;
                v66 = *(v8 + 4);
                *(v8 + 4) = *(a2 - 1);
                *(a2 - 1) = v66;
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            if (a5)
            {
              if (v8 != a2)
              {
                v67 = (v8 + 8);
                if ((v8 + 8) != a2)
                {
                  v68 = 0;
                  v69 = v8;
                  do
                  {
                    v70 = v69;
                    v69 = v67;
                    v71 = *a3;
                    v144 = v67;
                    v72 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v71, v67, &std::piecewise_construct, &v144) + 5);
                    v73 = *a3;
                    v144 = v70;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v73, v70, &std::piecewise_construct, &v144);
                    if (v72 < *(result + 20))
                    {
                      v143 = *v69;
                      v74 = v68;
                      while (1)
                      {
                        v75 = v8 + v74;
                        *(v75 + 8) = *(v8 + v74);
                        *(v75 + 12) = *(v8 + v74 + 4);
                        if (!v74)
                        {
                          break;
                        }

                        v74 -= 8;
                        v76 = *a3;
                        v144 = &v143;
                        v77 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v76, &v143, &std::piecewise_construct, &v144) + 5);
                        v78 = *a3;
                        v144 = (v74 + v8);
                        result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v78, (v74 + v8), &std::piecewise_construct, &v144);
                        if (v77 >= *(result + 20))
                        {
                          v79 = v8 + v74 + 8;
                          goto LABEL_71;
                        }
                      }

                      v79 = v8;
LABEL_71:
                      *v79 = v143;
                      *(v79 + 4) = HIDWORD(v143);
                    }

                    v67 = v69 + 8;
                    v68 += 8;
                  }

                  while (v69 + 8 != v140);
                }
              }
            }

            else if (v8 != a2)
            {
              v124 = (v8 + 8);
              if ((v8 + 8) != a2)
              {
                v125 = v8 - 8;
                do
                {
                  v126 = v8;
                  v8 = v124;
                  v127 = *a3;
                  v144 = v124;
                  v128 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v127, v124, &std::piecewise_construct, &v144) + 5);
                  v129 = *a3;
                  v144 = v126;
                  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v129, v126, &std::piecewise_construct, &v144);
                  if (v128 < *(result + 20))
                  {
                    v143 = *v8;
                    v130 = v125;
                    do
                    {
                      *(v130 + 16) = *(v130 + 8);
                      *(v130 + 20) = *(v130 + 12);
                      v131 = *a3;
                      v144 = &v143;
                      v132 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v131, &v143, &std::piecewise_construct, &v144) + 5);
                      v133 = *a3;
                      v144 = v130;
                      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v133, v130, &std::piecewise_construct, &v144);
                      v130 -= 8;
                    }

                    while (v132 < *(result + 20));
                    *(v130 + 16) = v143;
                    *(v130 + 20) = HIDWORD(v143);
                  }

                  v124 = (v8 + 8);
                  v125 += 8;
                }

                while ((v8 + 8) != a2);
              }
            }

            return result;
          }

          v142 = v8;
          if (!a4)
          {
            if (v8 != a2)
            {
              v80 = v10 >> 1;
              v81 = v10 >> 1;
              do
              {
                v82 = v81;
                if (v80 >= v81)
                {
                  v83 = (2 * v81) | 1;
                  v84 = v8 + 8 * v83;
                  v85 = 2 * v81 + 2;
                  v138 = v81;
                  if (v85 < v9)
                  {
                    v86 = *a3;
                    v144 = (v8 + 8 * v83);
                    v87 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v86, v144, &std::piecewise_construct, &v144) + 5);
                    v88 = *a3;
                    v144 = (v84 + 8);
                    v89 = v87 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v88, (v84 + 8), &std::piecewise_construct, &v144) + 5);
                    v82 = v138;
                    if (v89)
                    {
                      v84 += 8;
                      v83 = v85;
                    }
                  }

                  v90 = v8 + 8 * v82;
                  v91 = *a3;
                  v144 = v84;
                  v92 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v91, v84, &std::piecewise_construct, &v144) + 5);
                  v93 = *a3;
                  v144 = v90;
                  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v93, v90, &std::piecewise_construct, &v144);
                  if (v92 >= *(result + 20))
                  {
                    v143 = *v90;
                    do
                    {
                      v94 = v84;
                      *v90 = *v84;
                      *(v90 + 4) = *(v84 + 4);
                      if (v80 < v83)
                      {
                        break;
                      }

                      v95 = (2 * v83) | 1;
                      v84 = v8 + 8 * v95;
                      v96 = 2 * v83 + 2;
                      if (v96 < v9)
                      {
                        v97 = *a3;
                        v144 = (v8 + 8 * v95);
                        v98 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v97, v144, &std::piecewise_construct, &v144) + 5);
                        v99 = *a3;
                        v144 = (v84 + 8);
                        if (v98 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v99, (v84 + 8), &std::piecewise_construct, &v144) + 5))
                        {
                          v84 += 8;
                          v95 = v96;
                        }
                      }

                      v100 = *a3;
                      v144 = v84;
                      v101 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v100, v84, &std::piecewise_construct, &v144) + 5);
                      v102 = *a3;
                      v144 = &v143;
                      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v102, &v143, &std::piecewise_construct, &v144);
                      v90 = v94;
                      v83 = v95;
                      v89 = v101 < *(result + 20);
                      v8 = v142;
                    }

                    while (!v89);
                    *v94 = v143;
                    *(v94 + 4) = HIDWORD(v143);
                    v82 = v138;
                  }
                }

                v81 = v82 - 1;
              }

              while (v82);
              v103 = v140;
              do
              {
                v104 = 0;
                v139 = *v8;
                v141 = v103;
                do
                {
                  v105 = v8 + 8 * v104;
                  v106 = (v105 + 8);
                  v107 = (2 * v104) | 1;
                  v108 = 2 * v104 + 2;
                  if (v108 < v9)
                  {
                    v109 = (v105 + 16);
                    v110 = *a3;
                    v144 = (v105 + 8);
                    v111 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v110, (v105 + 8), &std::piecewise_construct, &v144) + 5);
                    v112 = *a3;
                    v144 = v109;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v112, v109, &std::piecewise_construct, &v144);
                    if (v111 < *(result + 20))
                    {
                      v106 = v109;
                      v107 = v108;
                    }
                  }

                  *v8 = *v106;
                  *(v8 + 4) = *(v106 + 1);
                  v8 = v106;
                  v104 = v107;
                }

                while (v107 <= ((v9 - 2) >> 1));
                --v103;
                if (v106 == (v141 - 1))
                {
                  *v106 = v139;
                  *(v106 + 1) = HIDWORD(v139);
                  v8 = v142;
                }

                else
                {
                  *v106 = *(v141 - 8);
                  *(v106 + 1) = *(v141 - 1);
                  *(v141 - 8) = v139;
                  *(v141 - 1) = HIDWORD(v139);
                  v8 = v142;
                  v113 = &v106[-v142 + 8] >> 3;
                  v89 = v113 < 2;
                  v114 = v113 - 2;
                  if (!v89)
                  {
                    v115 = v114 >> 1;
                    v116 = v142 + 8 * (v114 >> 1);
                    v117 = *a3;
                    v144 = v116;
                    v118 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v117, v116, &std::piecewise_construct, &v144) + 5);
                    v119 = *a3;
                    v144 = v106;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v119, v106, &std::piecewise_construct, &v144);
                    if (v118 < *(result + 20))
                    {
                      v143 = *v106;
                      do
                      {
                        v120 = v116;
                        *v106 = *v116;
                        *(v106 + 1) = *(v116 + 4);
                        if (!v115)
                        {
                          break;
                        }

                        v115 = (v115 - 1) >> 1;
                        v116 = v142 + 8 * v115;
                        v121 = *a3;
                        v144 = v116;
                        v122 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v121, v116, &std::piecewise_construct, &v144) + 5);
                        v123 = *a3;
                        v144 = &v143;
                        result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v123, &v143, &std::piecewise_construct, &v144);
                        v106 = v120;
                      }

                      while (v122 < *(result + 20));
                      *v120 = v143;
                      *(v120 + 4) = HIDWORD(v143);
                    }
                  }
                }

                v89 = v9-- <= 2;
              }

              while (!v89);
            }

            return result;
          }

          v11 = v9 >> 1;
          v12 = v8 + 8 * (v9 >> 1);
          if (v9 < 0x81)
          {
          }

          else
          {
            v13 = *v8;
            *v8 = *v12;
            *v12 = v13;
            v14 = *(v8 + 4);
            *(v8 + 4) = *(v12 + 4);
            *(v12 + 4) = v14;
          }

          --a4;
          a2 = v140;
          if (a5)
          {
            break;
          }

          v15 = *a3;
          v144 = (v8 - 8);
          v16 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v15, (v8 - 8), &std::piecewise_construct, &v144) + 5);
          v17 = *a3;
          v144 = v8;
          if (v16 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v17, v8, &std::piecewise_construct, &v144) + 5))
          {
            break;
          }

          v143 = *v8;
          v40 = *a3;
          v144 = &v143;
          v41 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v40, &v143, &std::piecewise_construct, &v144) + 5);
          v42 = *a3;
          v144 = v137;
          result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v42, v137, &std::piecewise_construct, &v144);
          if (v41 >= *(result + 20))
          {
            v46 = v8 + 8;
            do
            {
              v8 = v46;
              if (v46 >= v140)
              {
                break;
              }

              v47 = *a3;
              v144 = &v143;
              v48 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v47, &v143, &std::piecewise_construct, &v144) + 5);
              v49 = *a3;
              v144 = v8;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v49, v8, &std::piecewise_construct, &v144);
              v46 = v8 + 8;
            }

            while (v48 >= *(result + 20));
          }

          else
          {
            do
            {
              v8 += 8;
              v43 = *a3;
              v144 = &v143;
              v44 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v43, &v143, &std::piecewise_construct, &v144) + 5);
              v45 = *a3;
              v144 = v8;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v45, v8, &std::piecewise_construct, &v144);
            }

            while (v44 >= *(result + 20));
          }

          v50 = v140;
          if (v8 < v140)
          {
            v50 = v140;
            do
            {
              --v50;
              v51 = *a3;
              v144 = &v143;
              v52 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v51, &v143, &std::piecewise_construct, &v144) + 5);
              v53 = *a3;
              v144 = v50;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v53, v50, &std::piecewise_construct, &v144);
            }

            while (v52 < *(result + 20));
          }

          while (v8 < v50)
          {
            v54 = *v8;
            *v8 = *v50;
            *v50 = v54;
            v55 = *(v8 + 4);
            *(v8 + 4) = *(v50 + 1);
            *(v50 + 1) = v55;
            do
            {
              v8 += 8;
              v56 = *a3;
              v144 = &v143;
              v57 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v56, &v143, &std::piecewise_construct, &v144) + 5);
              v58 = *a3;
              v144 = v8;
            }

            while (v57 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v58, v8, &std::piecewise_construct, &v144) + 5));
            do
            {
              --v50;
              v59 = *a3;
              v144 = &v143;
              v60 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v59, &v143, &std::piecewise_construct, &v144) + 5);
              v61 = *a3;
              v144 = v50;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v61, v50, &std::piecewise_construct, &v144);
            }

            while (v60 < *(result + 20));
          }

          if (v8 - 8 != v142)
          {
            *v142 = *(v8 - 8);
            *(v142 + 4) = *(v8 - 4);
          }

          a5 = 0;
          *(v8 - 8) = v143;
          *(v8 - 4) = HIDWORD(v143);
        }

        v18 = 0;
        v143 = *v8;
        do
        {
          v18 += 8;
          v19 = *a3;
          v144 = (v18 + v8);
          v20 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v19, (v18 + v8), &std::piecewise_construct, &v144) + 5);
          v21 = *a3;
          v144 = &v143;
        }

        while (v20 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v21, &v143, &std::piecewise_construct, &v144) + 5));
        v22 = v8 + v18;
        v23 = v140;
        if (v18 == 8)
        {
          v23 = v140;
          do
          {
            if (v22 >= v23)
            {
              break;
            }

            --v23;
            v27 = *a3;
            v144 = v23;
            v28 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v27, v23, &std::piecewise_construct, &v144) + 5);
            v29 = *a3;
            v144 = &v143;
          }

          while (v28 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v29, &v143, &std::piecewise_construct, &v144) + 5));
        }

        else
        {
          do
          {
            --v23;
            v24 = *a3;
            v144 = v23;
            v25 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, v23, &std::piecewise_construct, &v144) + 5);
            v26 = *a3;
            v144 = &v143;
          }

          while (v25 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v26, &v143, &std::piecewise_construct, &v144) + 5));
        }

        v8 += v18;
        if (v22 < v23)
        {
          v30 = v23;
          do
          {
            v31 = *v8;
            *v8 = *v30;
            *v30 = v31;
            v32 = *(v8 + 4);
            *(v8 + 4) = *(v30 + 1);
            *(v30 + 1) = v32;
            do
            {
              v8 += 8;
              v33 = *a3;
              v144 = v8;
              v34 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v33, v8, &std::piecewise_construct, &v144) + 5);
              v35 = *a3;
              v144 = &v143;
            }

            while (v34 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v35, &v143, &std::piecewise_construct, &v144) + 5));
            do
            {
              v30 -= 8;
              v36 = *a3;
              v144 = v30;
              v37 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v36, v30, &std::piecewise_construct, &v144) + 5);
              v38 = *a3;
              v144 = &v143;
            }

            while (v37 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v38, &v143, &std::piecewise_construct, &v144) + 5));
          }

          while (v8 < v30);
        }

        if (v8 - 8 != v142)
        {
          *v142 = *(v8 - 8);
          *(v142 + 4) = *(v8 - 4);
        }

        *(v8 - 8) = v143;
        *(v8 - 4) = HIDWORD(v143);
        if (v22 >= v23)
        {
          break;
        }

LABEL_36:
        a5 = 0;
      }

      if (result)
      {
        break;
      }

      if (!v39)
      {
        goto LABEL_36;
      }
    }

    a2 = (v8 - 8);
    v8 = v142;
    if (!v39)
    {
      continue;
    }

    return result;
  }
}

uint64_t **std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::einsum_naive(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int> const&,std::vector<mlx::core::array>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0 &,std::pair<char,int> *,0>(char *a1, char *a2, char *a3, uint64_t *a4)
{
  v8 = *a4;
  v35 = a2;
  v9 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v8, a2, &std::piecewise_construct, &v35) + 5);
  v10 = *a4;
  v35 = a1;
  v11 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v10, a1, &std::piecewise_construct, &v35) + 5);
  v12 = *a4;
  if (v9 < v11)
  {
    v35 = a3;
    v13 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v12, a3, &std::piecewise_construct, &v35) + 5);
    v14 = *a4;
    v35 = a2;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v14, a2, &std::piecewise_construct, &v35);
    v16 = *a1;
    if (v13 >= *(result + 5))
    {
      *a1 = *a2;
      v28 = *(a2 + 1);
      *a2 = v16;
      v29 = *(a1 + 1);
      *(a1 + 1) = v28;
      *(a2 + 1) = v29;
      v30 = *a4;
      v35 = a3;
      v31 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v30, a3, &std::piecewise_construct, &v35) + 5);
      v32 = *a4;
      v35 = a2;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v32, a2, &std::piecewise_construct, &v35);
      if (v31 >= *(result + 5))
      {
        return result;
      }

      v33 = *a2;
      *a2 = *a3;
      *a3 = v33;
      v17 = a3 + 4;
      v18 = a2 + 4;
    }

    else
    {
      *a1 = *a3;
      *a3 = v16;
      v17 = a3 + 4;
      v18 = a1 + 4;
    }

    v23 = v17;
    goto LABEL_10;
  }

  v35 = a3;
  v19 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v12, a3, &std::piecewise_construct, &v35) + 5);
  v20 = *a4;
  v35 = a2;
  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v20, a2, &std::piecewise_construct, &v35);
  if (v19 < *(result + 5))
  {
    v21 = *a2;
    *a2 = *a3;
    *a3 = v21;
    v23 = a2 + 4;
    v22 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v22;
    v24 = *a4;
    v35 = a2;
    v25 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, a2, &std::piecewise_construct, &v35) + 5);
    v26 = *a4;
    v35 = a1;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v26, a1, &std::piecewise_construct, &v35);
    if (v25 < *(result + 5))
    {
      v27 = *a1;
      *a1 = *a2;
      v18 = a1 + 4;
      *a2 = v27;
LABEL_10:
      v34 = *v18;
      *v18 = *v23;
      *v23 = v34;
    }
  }

  return result;
}

uint64_t **std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::einsum_naive(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int> const&,std::vector<mlx::core::array>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0 &,std::pair<char,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v26 = a4;
  v11 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v10, a4, &std::piecewise_construct, &v26) + 5);
  v12 = *a5;
  v26 = a3;
  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v12, a3, &std::piecewise_construct, &v26);
  if (v11 < *(result + 5))
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    v15 = *(a3 + 4);
    *(a3 + 4) = *(a4 + 4);
    *(a4 + 4) = v15;
    v16 = *a5;
    v26 = a3;
    v17 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v16, a3, &std::piecewise_construct, &v26) + 5);
    v18 = *a5;
    v26 = a2;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v18, a2, &std::piecewise_construct, &v26);
    if (v17 < *(result + 5))
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      v20 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v20;
      v21 = *a5;
      v26 = a2;
      v22 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v21, a2, &std::piecewise_construct, &v26) + 5);
      v23 = *a5;
      v26 = a1;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v23, a1, &std::piecewise_construct, &v26);
      if (v22 < *(result + 5))
      {
        v24 = *a1;
        *a1 = *a2;
        *a2 = v24;
        v25 = *(a1 + 4);
        *(a1 + 4) = *(a2 + 4);
        *(a2 + 4) = v25;
      }
    }
  }

  return result;
}

uint64_t **std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::einsum_naive(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int> const&,std::vector<mlx::core::array>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0 &,std::pair<char,int> *,0>(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t *a6)
{
  v12 = *a6;
  v33 = a5;
  v13 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v12, a5, &std::piecewise_construct, &v33) + 5);
  v14 = *a6;
  v33 = a4;
  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v14, a4, &std::piecewise_construct, &v33);
  if (v13 < *(result + 5))
  {
    v16 = *a4;
    *a4 = *a5;
    *a5 = v16;
    v17 = *(a4 + 1);
    *(a4 + 1) = *(a5 + 1);
    *(a5 + 1) = v17;
    v18 = *a6;
    v33 = a4;
    v19 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v18, a4, &std::piecewise_construct, &v33) + 5);
    v20 = *a6;
    v33 = a3;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v20, a3, &std::piecewise_construct, &v33);
    if (v19 < *(result + 5))
    {
      v21 = *a3;
      *a3 = *a4;
      *a4 = v21;
      v22 = *(a3 + 1);
      *(a3 + 1) = *(a4 + 1);
      *(a4 + 1) = v22;
      v23 = *a6;
      v33 = a3;
      v24 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v23, a3, &std::piecewise_construct, &v33) + 5);
      v25 = *a6;
      v33 = a2;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v25, a2, &std::piecewise_construct, &v33);
      if (v24 < *(result + 5))
      {
        v26 = *a2;
        *a2 = *a3;
        *a3 = v26;
        v27 = *(a2 + 1);
        *(a2 + 1) = *(a3 + 1);
        *(a3 + 1) = v27;
        v28 = *a6;
        v33 = a2;
        v29 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v28, a2, &std::piecewise_construct, &v33) + 5);
        v30 = *a6;
        v33 = a1;
        result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v30, a1, &std::piecewise_construct, &v33);
        if (v29 < *(result + 5))
        {
          v31 = *a1;
          *a1 = *a2;
          *a2 = v31;
          v32 = *(a1 + 1);
          *(a1 + 1) = *(a2 + 1);
          *(a2 + 1) = v32;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::einsum_naive(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int> const&,std::vector<mlx::core::array>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0 &,std::pair<char,int> *>(uint64_t a1, char *a2, uint64_t *a3)
{
  v6 = &a2[-a1] >> 3;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v30 = a2 - 8;
        v8 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v7, a2 - 8, &std::piecewise_construct, &v30) + 5);
        v9 = *a3;
        v30 = a1;
        if (v8 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v9, a1, &std::piecewise_construct, &v30) + 5))
        {
          v10 = *a1;
          *a1 = *(a2 - 8);
          *(a2 - 8) = v10;
          v11 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          *(a2 - 1) = v11;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      return 1;
    case 4:
      return 1;
    case 5:
      return 1;
  }

LABEL_11:
  v12 = (a1 + 16);
  v13 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v28 = a2;
  while (1)
  {
    v16 = *a3;
    v30 = v13;
    v17 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v16, v13, &std::piecewise_construct, &v30) + 5);
    v18 = *a3;
    v30 = v12;
    if (v17 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v18, v12, &std::piecewise_construct, &v30) + 5))
    {
      break;
    }

    v26 = v28;
LABEL_21:
    v12 = v13;
    v14 += 8;
    v13 += 8;
    if (v13 == v26)
    {
      return 1;
    }
  }

  v29 = *v13;
  v19 = v14;
  while (1)
  {
    v20 = a1 + v19;
    *(v20 + 24) = *(a1 + v19 + 16);
    *(v20 + 28) = *(a1 + v19 + 20);
    if (v19 == -16)
    {
      break;
    }

    v21 = (v20 + 8);
    v22 = *a3;
    v30 = &v29;
    v23 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v22, &v29, &std::piecewise_construct, &v30) + 5);
    v24 = *a3;
    v30 = v21;
    v19 -= 8;
    if (v23 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, v21, &std::piecewise_construct, &v30) + 5))
    {
      v25 = a1 + v19 + 24;
      goto LABEL_20;
    }
  }

  v25 = a1;
LABEL_20:
  *v25 = v29;
  *(v25 + 4) = HIDWORD(v29);
  ++v15;
  v26 = v28;
  if (v15 != 8)
  {
    goto LABEL_21;
  }

  return v13 + 8 == v28;
}

void std::vector<mlx::core::anonymous namespace::Subscript>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(void *a1, char *a2, uint64_t a3, _BYTE **a4)
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

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

const char *mlx::core::dtype_to_string(unsigned int a1)
{
  if (a1 < 0xD)
  {
    return (&off_279921578)[a1 & 0xF];
  }

  if (a1 == 13)
  {
    return "complex64";
  }

  return "(unknown)";
}

void sub_25A3081B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52)
{
  std::ostringstream::~ostringstream(&a13);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a52);
  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void *std::string::basic_string[abi:ne200100](void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__b + 23) = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  *(__b + __len) = 0;
  return __b;
}

void mlx::core::save(std::string *__str, void *a2)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size <= 3)
    {
      goto LABEL_13;
    }
  }

  else if (size <= 3)
  {
    goto LABEL_13;
  }

  std::string::basic_string(&v5, __str, size - 4, 4uLL, &v6);
  if ((SHIBYTE(v5.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) != 4 || LODWORD(v5.__r_.__value_.__l.__data_) != 2037411374)
    {
      goto LABEL_13;
    }

LABEL_14:
    std::allocate_shared[abi:ne200100]<mlx::core::io::FileWriter,std::allocator<mlx::core::io::FileWriter>,std::string,0>();
  }

  if (v5.__r_.__value_.__l.__size_ == 4)
  {
    v4 = *v5.__r_.__value_.__l.__data_;
    operator delete(v5.__r_.__value_.__l.__data_);
    if (v4 == 2037411374)
    {
      goto LABEL_14;
    }
  }

  else
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

LABEL_13:
  std::string::append(__str, ".npy", 4uLL);
  goto LABEL_14;
}

void sub_25A308534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  mlx::core::array::~array(&a9);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void mlx::core::load(void *a1, mlx::core::metal *a2, uint64_t a3)
{
  v73 = *MEMORY[0x277D85DE8];
  if (!(*(**a1 + 8))(*a1) || ((***a1)() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    (*(**a1 + 48))(&__dst);
    v51 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("[load] Failed to open ", &__dst, &v69);
    MEMORY[0x25F851100](exception, &v69, v51);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v66 = mlx::core::to_stream(a2, a3, 0);
  v67 = v7;
  v69.__r_.__value_.__r.__words[0] = 0;
  if (mlx::core::operator!=(&v66 + 1, &v69))
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v52, "[load] Must run on a CPU stream.");
    __cxa_throw(v52, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  (*(**a1 + 32))(*a1, &v70, 8);
  if (v70 != 1297436307 || v71 != 22864)
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    (*(**a1 + 48))(&__dst);
    v54 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("[load] Invalid header in ", &__dst, &v69);
    MEMORY[0x25F851100](v53, &v69, v54);
    __cxa_throw(v53, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = v72;
  if (v72 - 3 <= 0xFFFFFFFD)
  {
    v55 = __cxa_allocate_exception(0x10uLL);
    (*(**a1 + 48))(&__dst);
    v56 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("[load] Unsupported npy format version in ", &__dst, &v69);
    MEMORY[0x25F851100](v55, &v69, v56);
    __cxa_throw(v55, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v72 == 1)
  {
    LOWORD(v69.__r_.__value_.__l.__data_) = 0;
    (*(**a1 + 32))(*a1, &v69, 2);
    data_low = LOWORD(v69.__r_.__value_.__l.__data_);
  }

  else
  {
    LODWORD(v69.__r_.__value_.__l.__data_) = 0;
    (*(**a1 + 32))(*a1, &v69, 4);
    data_low = LODWORD(v69.__r_.__value_.__l.__data_);
  }

  std::vector<char>::vector[abi:ne200100](&v65, data_low + 1);
  (*(**a1 + 32))(*a1, v65, data_low);
  v65[data_low] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__str, v65);
  std::string::basic_string(&v63, &__str, 0xBuLL, 3uLL, &v69);
  size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  v12 = v63.__r_.__value_.__r.__words[0];
  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v63;
  }

  else
  {
    v13 = v63.__r_.__value_.__r.__words[0];
  }

  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v63.__r_.__value_.__l.__size_;
  }

  v14 = v13->__r_.__value_.__s.__data_[0];
  v61.__r_.__value_.__r.__words[0] = v13;
  v61.__r_.__value_.__l.__size_ = size;
  if (size != 2)
  {
    if (size != 3)
    {
      goto LABEL_32;
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v63;
    }

    v13 = (&v12->__r_.__value_.__l.__data_ + 1);
  }

  if (LOWORD(v13->__r_.__value_.__l.__data_) == 12886)
  {
    goto LABEL_33;
  }

  v15 = v13->__r_.__value_.__s.__data_[0];
  if (v15 <= 101)
  {
    if (v15 == 98 || v15 == 99)
    {
LABEL_33:
      v57 = *(__str.__r_.__value_.__r.__words[0] + 34);
      memset(&v69, 0, sizeof(v69));
      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = __str.__r_.__value_.__l.__size_;
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (v18)
      {
        v19 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
        v20 = v18;
        do
        {
          v21 = v20;
          if (!v20)
          {
            break;
          }

          v22 = v19[v20--];
        }

        while (v22 != 40);
        while (v18)
        {
          v23 = v19[v18--];
          if (v23 == 41)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v21 = 0;
      }

      v18 = -1;
LABEL_46:
      std::string::basic_string(&__dst, &__str, v21, v18 - v21, &v61);
      v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = __dst.__r_.__value_.__l.__size_;
      }

      if (!v24)
      {
LABEL_86:
        v40 = 12;
        if (v9 == 1)
        {
          v40 = 10;
        }

        v41 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v41 = __str.__r_.__value_.__l.__size_;
        }

        __idx = v41 + v40;
        v59 = v14 == 62;
        v42 = v69.__r_.__value_.__r.__words[0];
        if (v57 == 84)
        {
          v43 = v69.__r_.__value_.__l.__size_;
          if (v69.__r_.__value_.__r.__words[0] != v69.__r_.__value_.__l.__size_)
          {
            v44 = (v69.__r_.__value_.__l.__size_ - 4);
            if (v69.__r_.__value_.__l.__size_ - 4 > v69.__r_.__value_.__r.__words[0])
            {
              v45 = v69.__r_.__value_.__r.__words[0] + 4;
              do
              {
                v46 = *(v45 - 4);
                *(v45 - 4) = *v44;
                *v44-- = v46;
                v47 = v45 >= v44;
                v45 += 4;
              }

              while (!v47);
            }
          }
        }

        else
        {
          v43 = v69.__r_.__value_.__l.__size_;
        }

        memset(__p, 0, sizeof(__p));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v42, v43, (v43 - v42) >> 2);
        std::allocate_shared[abi:ne200100]<mlx::core::Load,std::allocator<mlx::core::Load>,mlx::core::Stream &,std::shared_ptr<mlx::core::io::Reader> &,unsigned long &,BOOL &,0>();
      }

      while (1)
      {
        __idx = 0;
        v25 = std::stoi(&__dst, &__idx, 10);
        v26 = v69.__r_.__value_.__l.__size_;
        if (v69.__r_.__value_.__l.__size_ >= v69.__r_.__value_.__r.__words[2])
        {
          v28 = v69.__r_.__value_.__r.__words[0];
          v29 = v69.__r_.__value_.__l.__size_ - v69.__r_.__value_.__r.__words[0];
          v30 = (v69.__r_.__value_.__l.__size_ - v69.__r_.__value_.__r.__words[0]) >> 2;
          v31 = v30 + 1;
          if ((v30 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v32 = v69.__r_.__value_.__r.__words[2] - v69.__r_.__value_.__r.__words[0];
          if ((v69.__r_.__value_.__r.__words[2] - v69.__r_.__value_.__r.__words[0]) >> 1 > v31)
          {
            v31 = v32 >> 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v33 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v69, v33);
          }

          *(4 * v30) = v25;
          v27 = 4 * v30 + 4;
          memcpy(0, v28, v29);
          v34 = v69.__r_.__value_.__r.__words[0];
          v69.__r_.__value_.__r.__words[0] = 0;
          *&v69.__r_.__value_.__r.__words[1] = v27;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v69.__r_.__value_.__l.__size_ = v25;
          v27 = v26 + 4;
        }

        v69.__r_.__value_.__l.__size_ = v27;
        v35 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v35 = __dst.__r_.__value_.__l.__size_;
        }

        if (__idx + 2 <= v35)
        {
          std::string::basic_string(&v61, &__dst, __idx + 2, 0xFFFFFFFFFFFFFFFFLL, &v60);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst = v61;
          goto LABEL_83;
        }

        std::string::basic_string(&v61, &__dst, __idx, 0xFFFFFFFFFFFFFFFFLL, &v60);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v61;
        v36 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = __dst.__r_.__value_.__l.__size_;
        }

        if (v36)
        {
          if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) != 1)
            {
              goto LABEL_100;
            }

            v37 = __dst.__r_.__value_.__s.__data_[0];
            if (__dst.__r_.__value_.__s.__data_[0] == 32)
            {
              goto LABEL_80;
            }

LABEL_78:
            if (v37 != 44)
            {
LABEL_100:
              v48 = __cxa_allocate_exception(0x10uLL);
              (*(**a1 + 48))(&v60);
              v49 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("[load] Unknown error while parsing header in ", &v60, &v61);
              MEMORY[0x25F851100](v48, &v61, v49);
              __cxa_throw(v48, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            goto LABEL_79;
          }

          if (__dst.__r_.__value_.__l.__size_ != 1)
          {
            goto LABEL_100;
          }

          v37 = *__dst.__r_.__value_.__l.__data_;
          if (v37 != 32)
          {
            goto LABEL_78;
          }
        }

LABEL_79:
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = 0;
          p_dst = __dst.__r_.__value_.__r.__words[0];
          goto LABEL_82;
        }

LABEL_80:
        *(&__dst.__r_.__value_.__s + 23) = 0;
        p_dst = &__dst;
LABEL_82:
        p_dst->__r_.__value_.__s.__data_[0] = 0;
LABEL_83:
        v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v39 = __dst.__r_.__value_.__l.__size_;
        }

        if (!v39)
        {
          goto LABEL_86;
        }
      }
    }
  }

  else if (v15 == 102 || v15 == 105 || v15 == 117)
  {
    goto LABEL_33;
  }

LABEL_32:
  v16 = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string<std::string_view,0>(&__dst, &v61);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("[from_str] Invalid array protocol type-string: ", &__dst, &v69);
  std::logic_error::logic_error(v16, &v69);
  v16->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v16, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A308FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v51 - 113) < 0)
  {
    operator delete(*(v51 - 136));
  }

  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
    if ((v50 & 1) == 0)
    {
LABEL_8:
      if (a43 < 0)
      {
        operator delete(__p);
      }

      if (a49 < 0)
      {
        operator delete(a44);
      }

      v53 = *(v51 - 200);
      if (v53)
      {
        *(v51 - 192) = v53;
        operator delete(v53);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v50)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v49);
  goto LABEL_8;
}

void sub_25A309284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *mlx::core::io::thread_pool(mlx::core::io *this)
{
  {
    ThreadPool::ThreadPool(&mlx::core::io::thread_pool(void)::pool_, 4);
    __cxa_atexit(ThreadPool::~ThreadPool, &mlx::core::io::thread_pool(void)::pool_, &dword_25A232000);
  }

  return &mlx::core::io::thread_pool(void)::pool_;
}

void *mlx::core::io::ParallelFileReader::thread_pool(mlx::core::io::ParallelFileReader *this)
{
  {
    ThreadPool::ThreadPool(&mlx::core::io::ParallelFileReader::thread_pool(void)::thread_pool, 4);
    __cxa_atexit(ThreadPool::~ThreadPool, &mlx::core::io::ParallelFileReader::thread_pool(void)::thread_pool, &dword_25A232000);
  }

  return &mlx::core::io::ParallelFileReader::thread_pool(void)::thread_pool;
}

ssize_t mlx::core::io::ParallelFileReader::read(ssize_t this, char *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = this;
    do
    {
      if (v3 >= 0x7FFFFFFF)
      {
        v6 = 0x7FFFFFFFLL;
      }

      else
      {
        v6 = v3;
      }

      this = read(*(v5 + 8), a2, v6);
      if (this <= 0)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v11);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "[read] Unable to read ", 22);
        v8 = MEMORY[0x25F851380](v7, v3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " bytes from file.", 17);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v11, v10);
        MEMORY[0x25F851100](exception, v10);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      a2 += this;
      v3 -= this;
    }

    while (v3);
  }

  return this;
}

void sub_25A3095A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::io::ParallelFileReader::read(atomic_ullong *this, char *__buf, size_t __nbyte, off_t a4)
{
  v4 = *(this + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (__nbyte)
  {
    v6 = __nbyte;
    if (__nbyte >> 25)
    {
      mlx::core::io::ParallelFileReader::thread_pool(this);
      operator new();
    }

    while (v6)
    {
      v8 = pread(v4, __buf, v6, a4);
      __buf += v8;
      v6 -= v8;
      if (v8 <= 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[read] Unable to read from file.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }
  }

  v9 = v13;
  v10 = v14;
  while (v9 != v10)
  {
    if ((std::future<BOOL>::get(v9) & 1) == 0)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "[read] Unable to read from file.");
      __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    ++v9;
  }

  v16 = &v13;
  std::vector<std::future<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_25A3099CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<std::future<BOOL>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::future<BOOL>::get(std::__assoc_sub_state **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<BOOL>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
  }

  return v3;
}

void sub_25A309B6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<BOOL>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::io::ParallelFileReader::~ParallelFileReader(mlx::core::io::ParallelFileReader *this)
{
  mlx::core::io::ParallelFileReader::~ParallelFileReader(this);

  JUMPOUT(0x25F851760);
}

{
  *this = &unk_286BF1458;
  close(*(this + 2));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t *std::vector<char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25A309C80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ThreadPool::ThreadPool(ThreadPool *this, uint64_t a2)
{
  *(this + 9) = 850045863;
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 17) = 1018212795;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 169) = 0u;
  if (a2)
  {
    v6[0] = this;
    if (*(this + 2))
    {
      _ZNSt3__16threadC2IZN10ThreadPool13start_threadsEmEUlvE_JELi0EEEOT_DpOT0_(0, v6);
    }

    v2 = -*this >> 3;
    if (!((v2 + 1) >> 61))
    {
      v3 = -*this;
      v4 = v3 >> 2;
      if (v3 >> 2 <= (v2 + 1))
      {
        v4 = v2 + 1;
      }

      if (v3 >= 0x7FFFFFFFFFFFFFF8)
      {
        v5 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = v4;
      }

      v6[6] = this;
      if (v5)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(this, v5);
      }

      v6[2] = 0;
      v6[3] = (8 * v2);
      v6[4] = (8 * v2);
      v6[5] = 0;
      _ZNSt3__16threadC2IZN10ThreadPool13start_threadsEmEUlvE_JELi0EEEOT_DpOT0_((8 * v2), v6);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25A309DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::condition_variable::~condition_variable(v14);
  std::mutex::~mutex(v13);
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100]((v12 + 24));
  a11 = v12;
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::future<BOOL>>::__emplace_back_slow_path<std::future<BOOL>>(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(a1, v6);
  }

  v13 = 0;
  v14 = (8 * v5);
  *v14 = *a2;
  *a2 = 0;
  v15 = (8 * v5 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<BOOL>>,std::future<BOOL>*>(a1, v3, v4, 0);
  v9 = *a1;
  *a1 = 0;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::future<BOOL>>::~__split_buffer(&v13);
  return v12;
}

void sub_25A309F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::future<BOOL>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<BOOL>>,std::future<BOOL>*>(uint64_t a1, atomic_ullong **a2, atomic_ullong **a3, atomic_ullong **a4)
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
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    if (a2 != a3)
    {
      do
      {
        v7 = *v5;
        if (*v5 && !atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v7 + 16))(v7);
        }

        ++v5;
      }

      while (v5 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

atomic_ullong *std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>::operator()[abi:ne200100](atomic_ullong *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    result = v5;
    if (v5)
    {
      if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        result = (*(*result + 16))(result);
      }
    }
  }

  return result;
}

atomic_ullong *std::__split_buffer<std::future<BOOL>>::~__split_buffer(atomic_ullong *a1)
{
  std::__split_buffer<std::future<BOOL>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_ullong *std::__split_buffer<std::future<BOOL>>::__destruct_at_end[abi:ne200100](atomic_ullong *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 8);
      v4[2] = v2 - 8;
      if (result)
      {
        if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          result = (*(*result + 16))(result);
        }
      }

      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::future<BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::future<BOOL>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

atomic_ullong *std::vector<std::future<BOOL>>::__base_destruct_at_end[abi:ne200100](atomic_ullong *result, atomic_ullong a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5 && !atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      result = (*(*result + 16))(result);
    }
  }

  v3[1] = a2;
  return result;
}

void *std::__shared_ptr_emplace<mlx::core::io::FileWriter>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<mlx::core::io::FileWriter>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF14D8;
  std::construct_at[abi:ne200100]<mlx::core::io::FileWriter,std::string,mlx::core::io::FileWriter*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::io::FileWriter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF14D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::io::FileWriter,std::string,mlx::core::io::FileWriter*>(uint64_t a1, __int128 *a2)
{
  v6 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *a1 = &unk_286BE60E0;
  if (v6 >= 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5;
  }

  *(a1 + 8) = open(v3, 1537, 420);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return a1;
}

void sub_25A30A4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<mlx::core::Load>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream &,std::shared_ptr<mlx::core::io::Reader> &,unsigned long &,BOOL &,std::allocator<mlx::core::Load>,0>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, char *a5)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_286BEA908;
  v5 = *a2;
  v6 = *(a2 + 2);
  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a4;
  v10 = *a5;
  *(result + 40) = v6;
  *(result + 24) = &unk_286BF3000;
  *(result + 32) = v5;
  *(result + 48) = v8;
  *(result + 56) = v7;
  *(result + 64) = v9;
  *(result + 72) = v10;
  return result;
}

void *std::__shared_ptr_emplace<mlx::core::io::ParallelFileReader>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<mlx::core::io::ParallelFileReader>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEAB38;
  std::construct_at[abi:ne200100]<mlx::core::io::ParallelFileReader,std::string,mlx::core::io::ParallelFileReader*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::io::ParallelFileReader,std::string,mlx::core::io::ParallelFileReader*>(uint64_t a1, __int128 *a2)
{
  v6 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *a1 = &unk_286BF1458;
  if (v6 >= 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5;
  }

  *(a1 + 8) = open(v3, 0, v5);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return a1;
}

void sub_25A30A750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::packaged_task<BOOL ()(void)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF1528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__shared_ptr_emplace<std::packaged_task<BOOL ()(void)>>::__on_zero_shared(uint64_t a1)
{
  std::promise<BOOL>::~promise((a1 + 56));

  return std::__packaged_task_function<BOOL ()(void)>::~__packaged_task_function((a1 + 24));
}

__n128 std::__packaged_task_func<std::__bind<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>,std::allocator<std::__bind<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>>,BOOL ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1578;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__packaged_task_func<std::__bind<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>,std::allocator<std::__bind<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  do
  {
    v5 = v2;
    if (!v2)
    {
      break;
    }

    v6 = pread(*(a1 + 8), v4, v2, v3);
    v4 += v6;
    v2 = v5 - v6;
  }

  while (v6 > 0);
  return v5 == 0;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__packaged_task_function<BOOL ()(void)>::~__packaged_task_function(void *a1)
{
  v2 = a1[3];
  if (v2 == a1)
  {
    v3 = (*v2 + 24);
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = (*v2 + 32);
LABEL_5:
    (*v3)();
  }

  return a1;
}

uint64_t *std::promise<BOOL>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x25F851250](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x25F851260](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x277D82838] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2821F74F8](v3);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void *std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF1628;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF1628;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF1628;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::future<std::invoke_result<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>::type> ThreadPool::enqueue<mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &,unsigned long &,unsigned long &,char *&>(mlx::core::io::ParallelFileReader::read(char *,unsigned long,unsigned long)::$_0 &&&,unsigned long &,unsigned long &,char *&&&)::{lambda(void)#1},std::allocator<unsigned long &,unsigned long &,char *&&&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::packaged_task<BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  if ((*(v1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(v1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  LOBYTE(v5.__ptr_) = (*(**(a1 + 24) + 40))(*(a1 + 24));
  std::promise<BOOL>::set_value(v2, &v5);
}

void sub_25A30AF40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  std::promise<BOOL>::set_exception(v9, &a9);
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  JUMPOUT(0x25A30AF1CLL);
}

void sub_25A30AF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::promise<BOOL>::set_value(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<BOOL>::set_value<BOOL>(v3, a2);
}

void std::promise<BOOL>::set_exception(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void std::__assoc_state<BOOL>::set_value<BOOL>(uint64_t a1, _BYTE *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 140) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<BOOL>::move(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v5.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v5);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v4, &a1->__exception_);
    v3.__ptr_ = &v4;
    std::rethrow_exception(v3);
    __break(1u);
  }

  else if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_25A30B150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void mlx::core::load_gguf()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[load_gguf] Compile with MLX_BUILD_GGUF=ON to enable GGUF support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::save_gguf()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[save_gguf] Compile with MLX_BUILD_GGUF=ON to enable GGUF support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::load_safetensors()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[load_safetensors] Compile with MLX_BUILD_SAFETENSORS=ON to enable safetensors support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[load_safetensors] Compile with MLX_BUILD_SAFETENSORS=ON to enable safetensors support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::save_safetensors()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[save_safetensors] Compile with MLX_BUILD_SAFETENSORS=ON to enable safetensors support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[save_safetensors] Compile with MLX_BUILD_SAFETENSORS=ON to enable safetensors support.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::all_sum(uint64_t *a1@<X0>, uint64_t a2@<X1>, mlx::core::metal *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  LOBYTE(v15[0]) = 0;
  v16 = 0;
  v10 = *(a2 + 16);
  if (v10 == 1)
  {
    v5 = *(a2 + 8);
    v15[0] = *a2;
    v15[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = 1;
  }

  if (v5 && v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v11 = mlx::core::distributed::Group::size(&v17);
  v12 = *a1;
  if (v11 != 1)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 2);
    mlx::core::to_stream(a3, a4, 0);
    std::allocate_shared[abi:ne200100]<mlx::core::distributed::AllReduce,std::allocator<mlx::core::distributed::AllReduce>,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,0>();
  }

  v13 = a1[1];
  *a5 = v12;
  a5[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_25A30B59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  *(v21 - 80) = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));
  mlx::core::array::~array((v21 - 72));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*(v21 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v21 - 88));
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::anonymous namespace::to_group(uint64_t a1@<X0>, std::__shared_weak_count **a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    *a2 = *a1;
    a2[1] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v4 = 3;
    LODWORD(__p) = 7958113;
    mlx::core::distributed::init(0, &__p, a2);
    if (v4 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_25A30B69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::distributed::all_max(uint64_t *a1@<X0>, uint64_t a2@<X1>, mlx::core::metal *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  LOBYTE(v15[0]) = 0;
  v16 = 0;
  v10 = *(a2 + 16);
  if (v10 == 1)
  {
    v5 = *(a2 + 8);
    v15[0] = *a2;
    v15[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = 1;
  }

  if (v5 && v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v11 = mlx::core::distributed::Group::size(&v17);
  v12 = *a1;
  if (v11 != 1)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 2);
    mlx::core::to_stream(a3, a4, 0);
    std::allocate_shared[abi:ne200100]<mlx::core::distributed::AllReduce,std::allocator<mlx::core::distributed::AllReduce>,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,0>();
  }

  v13 = a1[1];
  *a5 = v12;
  a5[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_25A30B8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  *(v21 - 80) = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));
  mlx::core::array::~array((v21 - 72));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*(v21 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v21 - 88));
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::all_min(uint64_t *a1@<X0>, uint64_t a2@<X1>, mlx::core::metal *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  LOBYTE(v15[0]) = 0;
  v16 = 0;
  v10 = *(a2 + 16);
  if (v10 == 1)
  {
    v5 = *(a2 + 8);
    v15[0] = *a2;
    v15[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = 1;
  }

  if (v5 && v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v11 = mlx::core::distributed::Group::size(&v17);
  v12 = *a1;
  if (v11 != 1)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 2);
    mlx::core::to_stream(a3, a4, 0);
    std::allocate_shared[abi:ne200100]<mlx::core::distributed::AllReduce,std::allocator<mlx::core::distributed::AllReduce>,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,0>();
  }

  v13 = a1[1];
  *a5 = v12;
  a5[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_25A30BB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  *(v21 - 80) = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));
  mlx::core::array::~array((v21 - 72));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*(v21 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v21 - 88));
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::all_gather(uint64_t *a1@<X0>, uint64_t a2@<X1>, mlx::core::metal *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  LOBYTE(v28[0]) = 0;
  v29 = 0;
  v10 = *(a2 + 16);
  if (v10 == 1)
  {
    v5 = *(a2 + 8);
    v28[0] = *a2;
    v28[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = 1;
  }

  if (v5 && v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (mlx::core::distributed::Group::size(&v30) != 1)
  {
    v12 = *a1;
    v26 = 0;
    v27 = 0;
    __src = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__src, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 2);
    if (v26 == __src)
    {
      v14 = mlx::core::distributed::Group::size(&v30);
      v15 = v26;
      if (v26 >= v27)
      {
        v17 = __src;
        v18 = v26 - __src;
        v19 = (v26 - __src) >> 2;
        v20 = v19 + 1;
        if ((v19 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v21 = v27 - __src;
        if ((v27 - __src) >> 1 > v20)
        {
          v20 = v21 >> 1;
        }

        v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
        v23 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v22)
        {
          v23 = v20;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v23);
        }

        *(4 * v19) = v14;
        v16 = 4 * v19 + 4;
        memcpy(0, v17, v18);
        v24 = __src;
        __src = 0;
        v26 = v16;
        v27 = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v26 = v14;
        v16 = (v15 + 4);
      }

      v26 = v16;
    }

    else
    {
      v13 = mlx::core::distributed::Group::size(&v30);
      *__src *= v13;
    }

    __src = 0;
    v26 = 0;
    v27 = 0;
    mlx::core::to_stream(a3, a4, 0);
    std::allocate_shared[abi:ne200100]<mlx::core::distributed::AllGather,std::allocator<mlx::core::distributed::AllGather>,mlx::core::Stream,mlx::core::distributed::Group &,0>();
  }

  v11 = a1[1];
  *a5 = *a1;
  a5[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

void sub_25A30BEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v24 - 120))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v24 - 120));
  }

  _Unwind_Resume(exception_object);
}

void sub_25A30BF3C()
{
  if (v0)
  {
    if (v1)
    {
      JUMPOUT(0x25A30BF2CLL);
    }
  }

  JUMPOUT(0x25A30BF34);
}

void mlx::core::distributed::send(uint64_t *a1, uint64_t a2, uint64_t a3, mlx::core::metal *a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = a2;
  LOBYTE(v24[0]) = 0;
  v25 = 0;
  v11 = *(a3 + 16);
  if (v11 == 1)
  {
    v6 = *(a3 + 8);
    v24[0] = *a3;
    v24[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = 1;
  }

  if (v6 && v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (mlx::core::distributed::Group::size(&v26) != 1)
  {
    if ((a2 & 0x80000000) == 0 && mlx::core::distributed::Group::size(&v26) > a2)
    {
      v12 = *a1;
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 2);
      v20 = mlx::core::to_stream(a4, a5, 0);
      v21 = v13;
      std::allocate_shared[abi:ne200100]<mlx::core::distributed::Send,std::allocator<mlx::core::distributed::Send>,mlx::core::Stream,mlx::core::distributed::Group &,int &,0>();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v23);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Invalid destination=", 20);
    v15 = MEMORY[0x25F851360](v14, a2);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " for a group of size ", 21);
    v17 = mlx::core::distributed::Group::size(&v26);
    MEMORY[0x25F851360](v16, v17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v23, &v28);
    std::logic_error::logic_error(exception, &v28);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v19 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v19, "Cannot send to a singleton group");
  v19->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v19, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30C250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (*(v24 - 73) < 0)
  {
    operator delete(*(v24 - 96));
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a21);
      if (*(v24 - 120))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(v24 - 120));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::recv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, mlx::core::metal *a5, uint64_t a6)
{
  v27 = a3;
  LOBYTE(v24[0]) = 0;
  v25 = 0;
  v12 = *(a4 + 16);
  if (v12 == 1)
  {
    v7 = *(a4 + 8);
    v24[0] = *a4;
    v24[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = 1;
  }

  if (v7 && v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (mlx::core::distributed::Group::size(&v26) != 1)
  {
    if ((a3 & 0x80000000) == 0 && mlx::core::distributed::Group::size(&v26) > a3)
    {
      *__p = *a1;
      v21 = *(a1 + 16);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v22.__r_.__value_.__r.__words[0] = mlx::core::to_stream(a5, a6, 0);
      LODWORD(v22.__r_.__value_.__r.__words[1]) = v13;
      std::allocate_shared[abi:ne200100]<mlx::core::distributed::Recv,std::allocator<mlx::core::distributed::Recv>,mlx::core::Stream,mlx::core::distributed::Group &,int &,0>();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v23);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Invalid source=", 15);
    v15 = MEMORY[0x25F851360](v14, a3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " for a group of size ", 21);
    v17 = mlx::core::distributed::Group::size(&v26);
    MEMORY[0x25F851360](v16, v17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v23, &v22);
    std::logic_error::logic_error(exception, &v22);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v19 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v19, "Cannot recv from a singleton group");
  v19->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v19, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30C5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      if (*(v27 - 104))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(v27 - 104));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void mlx::core::distributed::recv_like(std::__shared_weak_count *a1, uint64_t a2, uint64_t a3, mlx::core::metal *a4, uint64_t a5)
{
  v11 = a1->__vftable;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v11->~__shared_weak_count, v11->~__shared_weak_count_0, (v11->~__shared_weak_count_0 - v11->~__shared_weak_count) >> 2);
  on_zero_shared = a1->__vftable[1].__on_zero_shared;
  LOBYTE(v14[0]) = 0;
  v15 = 0;
  if (*(a3 + 16) == 1)
  {
    v13 = *(a3 + 8);
    v14[0] = *a3;
    v14[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = 1;
  }

  mlx::core::distributed::recv(__p, on_zero_shared & 0xFFFFFFFFFFLL, a2, v14, a4, a5);
}

void sub_25A30C77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (v7)
  {
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  mlx::core::distributed::recv_like(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<mlx::core::distributed::AllReduce>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,std::allocator<mlx::core::distributed::AllReduce>,0>(void *a1, uint64_t *a2, uint64_t *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF16A8;
  std::construct_at[abi:ne200100]<mlx::core::distributed::AllReduce,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,mlx::core::distributed::AllReduce*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::distributed::AllReduce>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF16A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::distributed::AllReduce,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllReduce::ReduceType,mlx::core::distributed::AllReduce*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int *a4)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v10 = *a3;
  v9 = a3[1];
  v12 = v10;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlx::core::distributed::AllReduce::AllReduce(a1, v7, v8, &v12, *a4);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return a1;
}

void sub_25A30C98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::distributed::AllReduce::AllReduce(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, int a5)
{
  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *a1 = &unk_286BF16F8;
  *(a1 + 8) = a2;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *a1 = &unk_286BFFAF8;
  *(a1 + 40) = a5;
  return a1;
}

void *std::__shared_ptr_emplace<mlx::core::distributed::AllGather>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,mlx::core::distributed::Group &,std::allocator<mlx::core::distributed::AllGather>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF1770;
  std::construct_at[abi:ne200100]<mlx::core::distributed::AllGather,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllGather*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::distributed::AllGather>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF1770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::distributed::AllGather,mlx::core::Stream,mlx::core::distributed::Group &,mlx::core::distributed::AllGather*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v9 = *a3;
  v8 = a3[1];
  v11 = v9;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlx::core::distributed::AllGather::AllGather(a1, v6, v7, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return a1;
}

void sub_25A30CC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::distributed::AllGather::AllGather(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *a1 = &unk_286BF16F8;
  *(a1 + 8) = a2;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *a1 = &unk_286BFFB70;
  return a1;
}

void *std::__shared_ptr_emplace<mlx::core::distributed::Send>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,mlx::core::distributed::Group &,int &,std::allocator<mlx::core::distributed::Send>,0>(void *a1, uint64_t *a2, uint64_t *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF17C0;
  std::construct_at[abi:ne200100]<mlx::core::distributed::Send,mlx::core::Stream,mlx::core::distributed::Group &,int &,mlx::core::distributed::Send*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::distributed::Send>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF17C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::distributed::Send,mlx::core::Stream,mlx::core::distributed::Group &,int &,mlx::core::distributed::Send*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int *a4)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v10 = *a3;
  v9 = a3[1];
  v12 = v10;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlx::core::distributed::Send::Send(a1, v7, v8, &v12, *a4);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return a1;
}

void sub_25A30CEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::distributed::Send::Send(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, int a5)
{
  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *a1 = &unk_286BF16F8;
  *(a1 + 8) = a2;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *a1 = &unk_286BFFBE8;
  *(a1 + 40) = a5;
  return a1;
}

void *std::__shared_ptr_emplace<mlx::core::distributed::Recv>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,mlx::core::distributed::Group &,int &,std::allocator<mlx::core::distributed::Recv>,0>(void *a1, uint64_t *a2, uint64_t *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF1810;
  std::construct_at[abi:ne200100]<mlx::core::distributed::Recv,mlx::core::Stream,mlx::core::distributed::Group &,int &,mlx::core::distributed::Recv*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::distributed::Recv>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF1810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::distributed::Recv,mlx::core::Stream,mlx::core::distributed::Group &,int &,mlx::core::distributed::Recv*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int *a4)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v10 = *a3;
  v9 = a3[1];
  v12 = v10;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlx::core::distributed::Recv::Recv(a1, v7, v8, &v12, *a4);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return a1;
}

void sub_25A30D138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::distributed::Recv::Recv(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, int a5)
{
  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *a1 = &unk_286BF16F8;
  *(a1 + 8) = a2;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *a1 = &unk_286BFFC60;
  *(a1 + 40) = a5;
  return a1;
}

void mlx::core::distributed::AllReduce::vmap(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  switch(v6)
  {
    case 5:
      v12 = *a2;
      v13 = *(a1 + 32);
      v18 = *(a1 + 24);
      v19 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = 1;
      mlx::core::distributed::all_max(v12, &v18, *(a1 + 8), *(a1 + 16) | 0x100000000, v28);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v24, v28, &v29, 1uLL);
      std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, &v24, a3);
      v27 = &v24;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v27);
      mlx::core::array::~array(v28);
      if (v20 == 1)
      {
        v9 = v19;
        if (v19)
        {
          goto LABEL_18;
        }
      }

      break;
    case 4:
      v10 = *a2;
      v11 = *(a1 + 32);
      v15 = *(a1 + 24);
      v16 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = 1;
      mlx::core::distributed::all_min(v10, &v15, *(a1 + 8), *(a1 + 16) | 0x100000000, v28);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v24, v28, &v29, 1uLL);
      std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, &v24, a3);
      v27 = &v24;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v27);
      mlx::core::array::~array(v28);
      if (v17 == 1)
      {
        v9 = v16;
        if (v16)
        {
          goto LABEL_18;
        }
      }

      break;
    case 2:
      v7 = *a2;
      v8 = *(a1 + 32);
      v21 = *(a1 + 24);
      v22 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = 1;
      mlx::core::distributed::all_sum(v7, &v21, *(a1 + 8), *(a1 + 16) | 0x100000000, v28);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v24, v28, &v29, 1uLL);
      std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, &v24, a3);
      v27 = &v24;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v27);
      mlx::core::array::~array(v28);
      if (v23 != 1)
      {
        return;
      }

      v9 = v22;
      if (!v22)
      {
        return;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      return;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Only all reduce sum, max and min are supported for now");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void mlx::core::distributed::AllReduce::jvp(uint64_t a1@<X0>, uint64_t **a2@<X2>, uint64_t *a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  switch(v4)
  {
    case 5:
      v10 = *a2;
      v11 = *(a1 + 32);
      v16 = *(a1 + 24);
      v17 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = 1;
      mlx::core::distributed::all_max(v10, &v16, *(a1 + 8), *(a1 + 16) | 0x100000000, v22);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v22, &v23, 1uLL);
      mlx::core::array::~array(v22);
      if (v18 == 1)
      {
        v7 = v17;
        if (v17)
        {
          goto LABEL_18;
        }
      }

      break;
    case 4:
      v8 = *a2;
      v9 = *(a1 + 32);
      v13 = *(a1 + 24);
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = 1;
      mlx::core::distributed::all_min(v8, &v13, *(a1 + 8), *(a1 + 16) | 0x100000000, v22);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v22, &v23, 1uLL);
      mlx::core::array::~array(v22);
      if (v15 == 1)
      {
        v7 = v14;
        if (v14)
        {
          goto LABEL_18;
        }
      }

      break;
    case 2:
      v5 = *a2;
      v6 = *(a1 + 32);
      v19 = *(a1 + 24);
      v20 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = 1;
      mlx::core::distributed::all_sum(v5, &v19, *(a1 + 8), *(a1 + 16) | 0x100000000, v22);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v22, &v23, 1uLL);
      mlx::core::array::~array(v22);
      if (v21 != 1)
      {
        return;
      }

      v7 = v20;
      if (!v20)
      {
        return;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      return;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Only all reduce sum, max and min are supported for now");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

uint64_t *mlx::core::distributed::AllReduce::vjp@<X0>(void **a1@<X2>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

void mlx::core::distributed::AllGather::vmap(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(a1 + 32);
  v9 = *(a1 + 24);
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = 1;
  mlx::core::distributed::all_gather(v7, &v9, *(a1 + 8), *(a1 + 16) | 0x100000000, v14);
  memset(v12, 0, sizeof(v12));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v12, v14, &v15, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v12, a3);
  v13 = v12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v13);
  mlx::core::array::~array(v14);
  if (v11 == 1)
  {
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_25A30D930(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  if (a10 == 1)
  {
    if (a9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a9);
    }
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::AllGather::jvp(uint64_t a1@<X0>, uint64_t **a2@<X2>, uint64_t *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 24);
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 1;
  mlx::core::distributed::all_gather(v5, &v7, *(a1 + 8), *(a1 + 16) | 0x100000000, v10);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v10, &v11, 1uLL);
  mlx::core::array::~array(v10);
  if (v9 == 1)
  {
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_25A30DA4C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, char a4, uint64_t a5, std::__shared_weak_count *a6, char a7, ...)
{
  va_start(va, a7);
  mlx::core::array::~array(va);
  if (a7 == 1)
  {
    if (a6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a6);
    }
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::AllGather::vjp(uint64_t a1@<X0>, uint64_t **a2@<X1>, char ****a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v27 = *(a1 + 24);
  v28 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = (*(**a2 + 8) - ***a2) >> 2;
  LODWORD(v22) = 0;
  std::vector<int>::vector[abi:ne200100](&v25, v8, &v22);
  v9 = **a2;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 2);
  v10 = mlx::core::distributed::Group::rank(&v27);
  v11 = v22;
  v12 = *v22 * v10;
  v13 = v25;
  *v25 = v12;
  *v11 += v12;
  v14 = *a3;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, v13, v26, (v26 - v13) >> 2);
  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v22, v23, (v23 - v22) >> 2);
  mlx::core::slice(v14, &v19, &__p, v15, 0, v29);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, v29, &v30, 1uLL);
  mlx::core::array::~array(v29);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_25A30DC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  mlx::core::array::~array((v20 - 56));
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v22 = *(v20 - 64);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::Send::vmap(uint64_t a1, uint64_t **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8[0] = *(a1 + 24);
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 1;
  mlx::core::distributed::send(v5, v6, v8, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A30DDC4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  if (a10 == 1)
  {
    if (a9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a9);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t *std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(uint64_t *a1, void **a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  return a1;
}

void sub_25A30DE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::distributed::is_available(mlx::core::distributed *this)
{
  is_available = mlx::core::distributed::mpi::is_available(this);
  if (is_available)
  {
    return 1;
  }

  return mlx::core::distributed::ring::is_available(is_available);
}

double mlx::core::distributed::Group::split@<D0>(mlx::core::distributed::Group *this@<X0>, _OWORD *a2@<X8>)
{
  (*(**this + 32))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void mlx::core::distributed::init(mlx::core::distributed::mpi *a1@<X0>, unsigned __int16 *a2@<X1>, std::__shared_weak_count **a3@<X8>)
{
  if ((atomic_load_explicit(_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    mlx::core::distributed::init();
  }

  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(&xmmword_27FA05DB8, a2);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a3 = v8;
    a3[1] = v7;
    return;
  }

  v44 = 0;
  v45 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, *a2, *(a2 + 1));
    v9 = *(a2 + 23);
    if (*(a2 + 23) < 0)
    {
      if (*(a2 + 1) != 3)
      {
        goto LABEL_17;
      }

      v11 = *a2;
      v10 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *(a2 + 23);
    v43 = *a2;
  }

  v10 = 0;
  if (v9 != 3)
  {
    goto LABEL_16;
  }

  v11 = a2;
LABEL_12:
  v12 = *v11;
  v13 = *(v11 + 2);
  if (v12 == 28781 && v13 == 105)
  {
    mlx::core::distributed::mpi::init(a1, __p);
LABEL_42:
    v25 = __p[0];
    v44 = __p[0];
    v45 = __p[1];
LABEL_48:
    if (!v25)
    {
      operator new();
    }

    goto LABEL_49;
  }

LABEL_16:
  if (v10)
  {
LABEL_17:
    if (*(a2 + 1) != 4)
    {
LABEL_23:
      if (*(a2 + 1) != 3)
      {
        goto LABEL_67;
      }

      v17 = *a2;
      goto LABEL_26;
    }

    v15 = *a2;
    v16 = 1;
    goto LABEL_21;
  }

  if (v9 != 4)
  {
    goto LABEL_25;
  }

  v16 = 0;
  v15 = a2;
LABEL_21:
  if (*v15 == 1735289202)
  {
    mlx::core::distributed::ring::init(a1, __p);
    goto LABEL_42;
  }

  if (v16)
  {
    goto LABEL_23;
  }

LABEL_25:
  v17 = a2;
  if (v9 != 3)
  {
    goto LABEL_67;
  }

LABEL_26:
  v18 = *v17;
  v19 = *(v17 + 2);
  if (v18 != 28257 || v19 != 121)
  {
LABEL_67:
    std::ostringstream::basic_ostringstream[abi:ne200100](__p);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[distributed] The only valid values for backend are 'any', 'mpi' ", 65);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "and 'ring' but '", 16);
    v32 = *(a2 + 23);
    if (v32 >= 0)
    {
      v33 = a2;
    }

    else
    {
      v33 = *a2;
    }

    if (v32 >= 0)
    {
      v34 = *(a2 + 23);
    }

    else
    {
      v34 = *(a2 + 1);
    }

    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "' was provided.", 15);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str[abi:ne200100](&__p[1], &v38);
    std::logic_error::logic_error(exception, &v38);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::distributed::ring::init(0, __p);
  v21 = __p[0];
  v22 = __p[1];
  v44 = __p[0];
  v45 = __p[1];
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    v43.__r_.__value_.__l.__size_ = 4;
    v23 = v43.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v43.__r_.__value_.__s + 23) = 4;
    v23 = &v43;
  }

  strcpy(v23, "ring");
  if (!v21)
  {
    mlx::core::distributed::mpi::init(0, __p);
    v25 = __p[0];
    v24 = __p[1];
    __p[0] = 0;
    __p[1] = 0;
    v44 = v25;
    v45 = v24;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      v43.__r_.__value_.__l.__size_ = 3;
      v26 = v43.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v43.__r_.__value_.__s + 23) = 3;
      v26 = &v43;
    }

    LODWORD(v26->__r_.__value_.__l.__data_) = 6910061;
    if (!v25 && a1)
    {
      v37 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v37, "[distributed] Couldn't initialize any backend");
      __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    goto LABEL_48;
  }

LABEL_49:
  std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>::pair[abi:ne200100]<char const(&)[4],std::shared_ptr<mlx::core::distributed::detail::GroupImpl>&,0>(__p, "any", &v44);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>(&xmmword_27FA05DB8, __p, __p);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *&v43.__r_.__value_.__l.__data_;
  v27 = v43.__r_.__value_.__r.__words[2];
  memset(&v43, 0, sizeof(v43));
  v40 = v27;
  v41 = v44;
  v42 = v45;
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>(&xmmword_27FA05DB8, __p, __p);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  v29 = v44;
  v28 = v45;
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a3 = v29;
  a3[1] = v28;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }
}

void sub_25A30E52C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a13, MEMORY[0x277D82828]);
      MEMORY[0x25F8516C0](va);
      if (*(v28 - 89) < 0)
      {
        operator delete(*(v28 - 112));
      }

      v30 = *(v28 - 72);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>::pair[abi:ne200100]<char const(&)[4],std::shared_ptr<mlx::core::distributed::detail::GroupImpl>&,0>(void *a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = a3[1];
  a1[3] = *a3;
  a1[4] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<mlx::core::distributed::detail::EmptyGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF1860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void mlx::core::distributed::detail::EmptyGroup::split(mlx::core::distributed::detail::EmptyGroup *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot split the distributed group further.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::all_sum()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::all_gather()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::send()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::recv()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::all_max()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::detail::EmptyGroup::all_min()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Communication not implemented in an empty distributed group.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_25A30ED70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void mlx::core::Primitive::jvp(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[Primitive::jvp] Not implemented for ", 37);
  (*(*a1 + 40))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  if ((v10 & 0x10) != 0)
  {
    v4 = v9;
    if (v9 < v8)
    {
      v9 = v8;
      v4 = v8;
    }

    v5 = v7[6];
  }

  else
  {
    if ((v10 & 8) == 0)
    {
      v3 = 0;
      *(&v6.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    v5 = v7[3];
    v4 = v7[5];
  }

  v3 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&v6.__r_.__value_.__s + 23) = v4 - v5;
  if (v3)
  {
    memmove(&v6, v5, v3);
  }

LABEL_15:
  v6.__r_.__value_.__s.__data_[v3] = 0;
  std::logic_error::logic_error(exception, &v6);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30EFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_free_exception(v32);
  a15 = *MEMORY[0x277D82828];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
  a16 = MEMORY[0x277D82878] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&a32);
  _Unwind_Resume(a1);
}

void mlx::core::Primitive::vjp(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[Primitive::vjp] Not implemented for ", 37);
  (*(*a1 + 40))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  if ((v10 & 0x10) != 0)
  {
    v4 = v9;
    if (v9 < v8)
    {
      v9 = v8;
      v4 = v8;
    }

    v5 = v7[6];
  }

  else
  {
    if ((v10 & 8) == 0)
    {
      v3 = 0;
      *(&v6.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    v5 = v7[3];
    v4 = v7[5];
  }

  v3 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&v6.__r_.__value_.__s + 23) = v4 - v5;
  if (v3)
  {
    memmove(&v6, v5, v3);
  }

LABEL_15:
  v6.__r_.__value_.__s.__data_[v3] = 0;
  std::logic_error::logic_error(exception, &v6);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30F2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_free_exception(v32);
  a15 = *MEMORY[0x277D82828];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
  a16 = MEMORY[0x277D82878] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&a32);
  _Unwind_Resume(a1);
}

void mlx::core::Primitive::vmap(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[Primitive::vmap] Not implemented for ", 38);
  (*(*a1 + 40))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  if ((v10 & 0x10) != 0)
  {
    v4 = v9;
    if (v9 < v8)
    {
      v9 = v8;
      v4 = v8;
    }

    v5 = v7[6];
  }

  else
  {
    if ((v10 & 8) == 0)
    {
      v3 = 0;
      *(&v6.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    v5 = v7[3];
    v4 = v7[5];
  }

  v3 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&v6.__r_.__value_.__s + 23) = v4 - v5;
  if (v3)
  {
    memmove(&v6, v5, v3);
  }

LABEL_15:
  v6.__r_.__value_.__s.__data_[v3] = 0;
  std::logic_error::logic_error(exception, &v6);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30F590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_free_exception(v32);
  a15 = *MEMORY[0x277D82828];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
  a16 = MEMORY[0x277D82878] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&a32);
  _Unwind_Resume(a1);
}

void mlx::core::Primitive::output_shapes(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[Primitive::output_shapes] ", 27);
  (*(*a1 + 40))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " cannot infer output shapes.", 28);
  exception = __cxa_allocate_exception(0x10uLL);
  if ((v10 & 0x10) != 0)
  {
    v4 = v9;
    if (v9 < v8)
    {
      v9 = v8;
      v4 = v8;
    }

    v5 = v7[6];
  }

  else
  {
    if ((v10 & 8) == 0)
    {
      v3 = 0;
      *(&v6.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    v5 = v7[3];
    v4 = v7[5];
  }

  v3 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&v6.__r_.__value_.__s + 23) = v4 - v5;
  if (v3)
  {
    memmove(&v6, v5, v3);
  }

LABEL_15:
  v6.__r_.__value_.__s.__data_[v3] = 0;
  std::logic_error::logic_error(exception, &v6);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A30F864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_free_exception(v32);
  a15 = *MEMORY[0x277D82828];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
  a16 = MEMORY[0x277D82878] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&a32);
  _Unwind_Resume(a1);
}

void mlx::core::Abs::jvp(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::sign(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Abs::jvp();
  }

  mlx::core::Abs::jvp();
}

void sub_25A30FAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Abs::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::abs(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Abs::vmap();
  }

  mlx::core::Abs::vmap();
}

void sub_25A30FBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Add::jvp(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(a2 + 8) - *a2 >= 0x11uLL)
  {
    mlx::core::add(v5, v5 + 2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v6 = v5[1];
  v7[0] = *v5;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v7, &v8, 1uLL);
  mlx::core::array::~array(v7);
}

void mlx::core::Add::vjp(char **a1@<X2>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 4)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v3 = *a1;
    v4 = a1[1];

    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a3, v3, v4, (v4 - v3) >> 4);
  }

  else
  {
    v5 = **a1;
    v6 = *(*a1 + 1);
    v9[0] = v5;
    v9[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      v7 = *(*a1 + 1);
      v10 = **a1;
      v11 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v10 = v5;
      v11 = 0;
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v9, &v12, 2uLL);
    for (i = 2; i != -2; i -= 2)
    {
      mlx::core::array::~array(&v9[i]);
    }
  }
}

void sub_25A30FE18(_Unwind_Exception *a1)
{
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((v1 + i));
  }

  _Unwind_Resume(a1);
}

void mlx::core::Add::vmap(uint64_t a1, uint64_t a2, char **a3)
{
  v6[5] = *MEMORY[0x277D85DE8];
  mlx::core::add(v5, v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A30FF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v17 - 56));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::vmap_binary_op(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(a1 + 8) - *a1 != 32)
  {
  }

  if (a2[1] - *a2 != 8)
  {
  }

  if (**a2 == -1)
  {
    v38 = v5[1];
    *a4 = *v5;
    *(a4 + 8) = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v39 = v5[3];
    *(a4 + 16) = v5[2];
    *(a4 + 24) = v39;
    if (v39)
    {
      atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
    }

    *(a4 + 32) = -1;
  }

  else
  {
    v7 = *v5;
    v8 = v5[1];
    *&v49 = *v5;
    *(&v49 + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v5 = *a1;
    }

    v10 = v5[2];
    v9 = v5[3];
    *&v48 = v10;
    *(&v48 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = (*(v7 + 8) - *v7) >> 2;
    v13 = **a2;
    v12 = *(*a2 + 1);
    if (v13 == -1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = (*(v7 + 8) - *v7) >> 2;
    }

    v15 = (v10[1] - *v10) >> 2;
    if (v12 == -1)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = v15;
    }

    if (v14 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    v45 = *a3;
    v46 = *(a3 + 8);
    v47 = v17;
    v18 = v12 + v17 - v15;
    __x = v18;
    v43[0] = v7;
    v43[1] = *(&v49 + 1);
    if (*(&v49 + 1))
    {
      atomic_fetch_add_explicit((*(&v49 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *&v41.__begin_;
    v41.__begin_ = 0;
    v41.__end_ = 0;
    v20 = *(&v49 + 1);
    v49 = v19;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    mlx::core::array::~array(&v41);
    mlx::core::array::~array(v43);
    v42 = v48;
    if (*(&v48 + 1))
    {
      atomic_fetch_add_explicit((*(&v48 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v21 = v13 + v17 - v11;
    v22 = *&v41.__begin_;
    v41.__begin_ = 0;
    v41.__end_ = 0;
    v23 = *(&v48 + 1);
    v48 = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    mlx::core::array::~array(&v41);
    mlx::core::array::~array(&v42);
    if (v18 != v21)
    {
      std::vector<int>::vector[abi:ne200100](&v41, (*(v48 + 8) - *v48) >> 2);
      begin = v41.__begin_;
      end = v41.__end_;
      if (v41.__begin_ != v41.__end_)
      {
        v26 = 0;
        v27 = (v41.__end_ - v41.__begin_ - 4) >> 2;
        v28 = vdupq_n_s64(v27);
        v29 = (v27 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v30 = v41.__begin_ + 2;
        do
        {
          v31 = vdupq_n_s64(v26);
          v32 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_25A99B0D0)));
          if (vuzp1_s16(v32, *v28.i8).u8[0])
          {
            *(v30 - 2) = v26;
          }

          if (vuzp1_s16(v32, *&v28).i8[2])
          {
            *(v30 - 1) = v26 + 1;
          }

          if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_25A99B0C0)))).i32[1])
          {
            *v30 = v26 + 2;
            v30[1] = v26 + 3;
          }

          v26 += 4;
          v30 += 4;
        }

        while (v29 != v26);
      }

      v33 = &begin[v18];
      v34 = (end - (v33 + 1));
      if (end != v33 + 1)
      {
        memmove(v33, v33 + 1, end - (v33 + 1));
        begin = v41.__begin_;
      }

      v41.__end_ = &v34[v33];
      v35.__i_ = &begin[v21];
      std::vector<int>::insert(&v41, v35, &__x);
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v41.__begin_, v41.__end_, v41.__end_ - v41.__begin_);
      mlx::core::transpose(&v48, __p, *a3, *(a3 + 8) | 0x100000000);
    }

    v36 = *(&v49 + 1);
    *a4 = v49;
    *(a4 + 8) = v36;
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = *(&v48 + 1);
    *(a4 + 16) = v48;
    *(a4 + 24) = v37;
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    }

    *(a4 + 32) = v21;
    mlx::core::array::~array(&v48);
    mlx::core::array::~array(&v49);
  }
}

void sub_25A310378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  mlx::core::array::~array((v20 - 80));
  mlx::core::array::~array((v20 - 64));
  _Unwind_Resume(a1);
}

void mlx::core::AddMM::vjp(uint64_t a1@<X0>, std::string::size_type **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v9 = *a3;
  std::vector<int>::vector[abi:ne200100](&v34, (*(**a3 + 8) - ***a3) >> 2);
  v10 = v34;
  v11 = v35;
  if (v34 != v35)
  {
    v12 = 0;
    v13 = (v35 - v34 - 4) >> 2;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v16 = v34 + 8;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0D0)));
      if (vuzp1_s16(v18, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v18, *&v14).i8[2])
      {
        *(v16 - 1) = v12 + 1;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0C0)))).i32[1])
      {
        *v16 = v12 + 2;
        v16[1] = v12 + 3;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v15 != v12);
  }

  v19 = *(v11 - 2);
  *(v11 - 2) = *(v11 - 1);
  *(v11 - 1) = v19;
  v20 = *a4;
  v21 = *(a4 + 8);
  if (*a4 != v21)
  {
    do
    {
      if (*v20 == 1)
      {
        v25 = v9[1];
        *&v33 = *v9;
        *(&v33 + 1) = v25;
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        v26 = *(a1 + 20);
        if (v26 != 1.0)
        {
          mlx::core::array::array<float>(v32, *(*v9 + 56) & 0xFFFFFFFFFFLL, v26);
        }

        v27 = *a2;
        memset(__p, 0, sizeof(__p));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v34, v35, (v35 - v34) >> 2);
        mlx::core::transpose(v27, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (!*v20)
      {
        v22 = v9[1];
        *&v33 = *v9;
        *(&v33 + 1) = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v23 = *(a1 + 20);
        if (v23 != 1.0)
        {
          mlx::core::array::array<float>(v32, *(*v9 + 56) & 0xFFFFFFFFFFLL, v23);
        }

        v24 = *a2;
        memset(v31, 0, sizeof(v31));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v31, v34, v35, (v35 - v34) >> 2);
        mlx::core::transpose(v24 + 2, v31, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      v28 = v9[1];
      *&v33 = *v9;
      *(&v33 + 1) = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v29 = *(a1 + 24);
      if (v29 != 1.0)
      {
        mlx::core::array::array<float>(v32, *(*v9 + 56) & 0xFFFFFFFFFFLL, v29);
      }

      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a5, &v33);
      mlx::core::array::~array(&v33);
      ++v20;
    }

    while (v20 != v21);
    v10 = v34;
  }

  if (v10)
  {
    v35 = v10;
    operator delete(v10);
  }
}

void mlx::core::AddMM::jvp(uint64_t a1@<X0>, const void ****a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, const void ****a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *a4;
  if (a4[1] != *a4)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v6 + 4 * v12);
      v14 = *a5;
      v15 = a5[1];
      if (v13 == 1)
      {
        if (v14 != v15)
        {
          v19 = v14[1];
          v24[0] = *v14;
          v24[1] = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
          }

          v20 = (*a2)[1];
          v23[0] = **a2;
          v23[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
          }

          v21 = *(*a3 + v11);
          v22 = v21;
          if (*(&v21 + 1))
          {
            atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v25 = 1065353216;
          v26 = 1065353216;
          mlx::core::addmm(v24, v23, &v22, &v26, &v25, *(a1 + 8), *(a1 + 16) | 0x100000000);
        }

        mlx::core::matmul(*a2, (*a3 + v11), *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (!v13)
      {
        if (v14 != v15)
        {
          v16 = v14[1];
          v29[0] = *v14;
          v29[1] = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
          }

          v17 = *(*a3 + v11);
          v28 = v17;
          if (*(&v17 + 1))
          {
            atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v18 = (*a2)[3];
          v27[0] = (*a2)[2];
          v27[1] = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
          }

          v25 = 1065353216;
          v26 = 1065353216;
          mlx::core::addmm(v29, &v28, v27, &v26, &v25, *(a1 + 8), *(a1 + 16) | 0x100000000);
        }

        mlx::core::matmul((*a3 + v11), *a2 + 2, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (v14 != v15)
      {
        mlx::core::add(v14, (*a3 + v11), *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a5, (*a3 + v11));
      ++v12;
      v6 = *a4;
      v11 += 16;
    }

    while (v12 < (a4[1] - *a4) >> 2);
  }
}

void sub_25A310B88(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v2 - 96));
  *(v2 - 96) = v1;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v2 - 96));
  _Unwind_Resume(a1);
}

void mlx::core::AddMM::vmap(uint64_t a1, const void ****a2, unsigned int **a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = **a3;
  if (v8 < 1)
  {
    v9 = v7[1];
    v24 = *v7;
    v25 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis(v7, *(a1 + 8), *(a1 + 16) | 0x100000000, &v24, v8, 0);
  }

  v10 = *a2;
  v11 = (*a3)[1];
  if (v11 < 1)
  {
    v12 = v10[3];
    v22 = v10[2];
    v23 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis(v10 + 2, *(a1 + 8), *(a1 + 16) | 0x100000000, &v22, v11, 0);
  }

  v13 = *a2;
  v14 = (*a3)[2];
  if (v14 < 1)
  {
    v15 = v13[4];
    v16 = v13[5];
    v20 = v15;
    v21 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis(v13 + 4, *(a1 + 8), *(a1 + 16) | 0x100000000, &v20, v14, 0);
    v15 = v20;
  }

  v19[0] = v15;
  v19[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  v18[0] = v24;
  v18[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
  }

  v17[0] = v22;
  v17[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::addmm(v19, v18, v17, (a1 + 20), (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A310E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  mlx::core::array::~array((v22 - 104));
  mlx::core::array::~array((v22 - 88));
  _Unwind_Resume(a1);
}

void mlx::core::Arange::output_shapes(double *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = vcvtpd_s64_f64((a1[4] - a1[3]) / a1[5]);
  v4 = v3 & ~(v3 >> 31);
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v4, &__p, 1uLL);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_25A311028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ArcCos::jvp(uint64_t a1, void **a2, void **a3, void *a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::array::array<double>(v5, *(**a2 + 56) & 0xFFFFFFFFFFLL, 1.0);
    }

    mlx::core::ArcCos::jvp();
  }

  mlx::core::ArcCos::jvp();
}

void sub_25A3111F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::ArcCos::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arccos(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcCos::vmap();
  }

  mlx::core::ArcCos::vmap();
}

void sub_25A311344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcCosh::jvp(uint64_t a1, void **a2, void **a3, void *a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::array::array<double>(v5, *(**a2 + 56) & 0xFFFFFFFFFFLL, 1.0);
    }

    mlx::core::ArcCosh::jvp();
  }

  mlx::core::ArcCosh::jvp();
}

void sub_25A3114FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::ArcCosh::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arccosh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcCosh::vmap();
  }

  mlx::core::ArcCosh::vmap();
}

void sub_25A311644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcSin::jvp(uint64_t a1, void **a2, void **a3, void *a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::array::array<double>(v5, *(**a2 + 56) & 0xFFFFFFFFFFLL, 1.0);
    }

    mlx::core::ArcSin::jvp();
  }

  mlx::core::ArcSin::jvp();
}

void sub_25A3117FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::ArcSin::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arcsin(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcSin::vmap();
  }

  mlx::core::ArcSin::vmap();
}

void sub_25A311944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcSinh::jvp(uint64_t a1, void **a2, void **a3, void *a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::array::array<double>(v5, *(**a2 + 56) & 0xFFFFFFFFFFLL, 1.0);
    }

    mlx::core::ArcSinh::jvp();
  }

  mlx::core::ArcSinh::jvp();
}

void sub_25A311AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::ArcSinh::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arcsinh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcSinh::vmap();
  }

  mlx::core::ArcSinh::vmap();
}

void sub_25A311C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTan::jvp(uint64_t a1, void **a2, void **a3, void *a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::array::array<double>(v5, *(**a2 + 56) & 0xFFFFFFFFFFLL, 1.0);
    }

    mlx::core::ArcTan::jvp();
  }

  mlx::core::ArcTan::jvp();
}

void sub_25A311DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTan::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arctan(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcTan::vmap();
  }

  mlx::core::ArcTan::vmap();
}

void sub_25A311F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTan2::jvp(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  if (*(a2 + 8) - *a2 == 32)
  {
    if (a4[1] - *a4 == 8)
    {
      mlx::core::square(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcTan2::jvp();
  }

  mlx::core::ArcTan2::jvp();
}

void sub_25A312108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = &a16;
  v18 = -32;
  do
  {
    mlx::core::array::~array(v17);
    v17 = (v19 - 16);
    v18 += 16;
  }

  while (v18);
  mlx::core::array::~array(&a10);
  mlx::core::array::~array(&a12);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTan2::vmap(uint64_t a1, void *a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 32)
  {
    if (*(a3 + 8) - *a3 == 8)
    {
      mlx::core::arctan2(v5, v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcTan2::vmap();
  }

  mlx::core::ArcTan2::vmap();
}

void sub_25A3122E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v17 - 56));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTanh::jvp(uint64_t a1, void **a2, void **a3, void *a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::array::array<double>(v5, *(**a2 + 56) & 0xFFFFFFFFFFLL, 1.0);
    }

    mlx::core::ArcTanh::jvp();
  }

  mlx::core::ArcTanh::jvp();
}

void sub_25A3124A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTanh::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::arctanh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArcTanh::vmap();
  }

  mlx::core::ArcTanh::vmap();
}

void sub_25A3125E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArgPartition::vmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (*(a3 + 8) - *a3 == 4)
    {
      v6 = **a3;
      v7 = *(a1 + 24);
      if (v6 >= 0 && v6 <= v7)
      {
        v9 = (v7 + 1);
      }

      else
      {
        v9 = v7;
      }

      mlx::core::argpartition(v5, v9, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArgPartition::vmap();
  }

  mlx::core::ArgPartition::vmap();
}

void sub_25A312714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void sub_25A3127DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void sub_25A312890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::ArgReduce::vmap(uint64_t a1, uint64_t ***a2, int **a3)
{
  v6 = **a3;
  v8 = *(a1 + 20);
  v7 = *(a1 + 24);
  if (v6 < 0 || v7 < v6)
  {
    v10 = *(a1 + 24);
  }

  else
  {
    v10 = v7 + 1;
  }

  v11 = *a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (v8)
  {
    mlx::core::argmax(v11, v10, 1, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::argmin(v11, v10, 1, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A3129DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a10);
  a10 = &a12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_25A312AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void sub_25A312B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::ArgSort::vmap(uint64_t a1, const void ****a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (a2[1] - *a2 == 16)
  {
    if (*(a3 + 8) - *a3 == 4)
    {
      v6 = **a3;
      v7 = *(a1 + 20);
      if (v6 >= 0 && v6 <= v7)
      {
        v9 = (v7 + 1);
      }

      else
      {
        v9 = v7;
      }

      mlx::core::argsort(v5, v9, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ArgSort::vmap();
  }

  mlx::core::ArgSort::vmap();
}

void sub_25A312C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ArgReduce::output_shapes(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = **a2;
  v8 = 0uLL;
  v7 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v7, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
  v6 = v7;
  *(v7 + *(a1 + 24)) = 1;
  v10 = v8;
  __p = v6;
  v7 = 0;
  v8 = 0uLL;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v11, 1uLL);
  if (__p)
  {
    *&v10 = __p;
    operator delete(__p);
  }

  if (v7)
  {
    *&v8 = v7;
    operator delete(v7);
  }
}

void sub_25A312D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::AsType::vjp(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) != *(**a3 + 56))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[astype] Type of cotangents does not match primal output type.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v5 = (*a3)[1];
  v7[0] = **a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v7, *(**a2 + 56) & 0xFFFFFFFFFFLL, *(a1 + 8), *(a1 + 16) | 0x100000000, v8);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, v8, &v9, 1uLL);
  mlx::core::array::~array(v8);
  mlx::core::array::~array(v7);
}

void mlx::core::AsType::jvp(uint64_t a1@<X0>, void **a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = (*a2)[1];
  v5[0] = **a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v5, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v6);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v6, &v7, 1uLL);
  mlx::core::array::~array(v6);
  mlx::core::array::~array(v5);
}

void sub_25A312FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::AsType::vmap(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*a2)[1];
  v7[0] = **a2;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v7, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v10);
  memset(v8, 0, sizeof(v8));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v8, v10, &v11, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v8, a3);
  v9 = v8;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v9);
  mlx::core::array::~array(v10);
  mlx::core::array::~array(v7);
}

void sub_25A3130E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va1);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::AsStrided::vjp(uint64_t a1, uint64_t **a2, const void ****a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a4[1] - *a4 == 4)
  {
    mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::AsStrided::vjp();
}

void sub_25A313504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::array::~array((v26 - 96));
  mlx::core::array::~array(va);
  mlx::core::array::~array((v26 - 128));
  mlx::core::array::~array((v26 - 112));
  _Unwind_Resume(a1);
}

void mlx::core::scatter_add(uint64_t **a1, void *a2, uint64_t **a3, int a4, mlx::core *a5, uint64_t a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v15, 0, sizeof(v15));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v15, v16, &v17, 1uLL);
  v13 = a4;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v13, __p, 1uLL);
  mlx::core::scatter_add(a1, v15, a3, __p, a5, a6);
}

void sub_25A313710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::AsStrided::jvp(uint64_t a1, void *a2, void **a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    v5 = (*a3)[1];
    v8[0] = **a3;
    v8[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v7, 0, sizeof(v7));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v7, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
    memset(__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 3);
    mlx::core::as_strided(v8, v7, __p, *(a1 + 72), *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::AsStrided::jvp();
}

void sub_25A31388C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::array::~array((v15 - 40));
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

BOOL mlx::core::AsStrided::is_equivalent(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = v5[1] - v4;
  v8 = a2 + 3;
  v7 = a2[3];
  if (v6 == v8[1] - v7 && !memcmp(v4, v7, v6) && (v9 = a1[6], v10 = a1[7] - v9, v11 = a2[6], v10 == a2[7] - v11) && !memcmp(v9, v11, v10))
  {
    return a1[9] == a2[9];
  }

  else
  {
    return 0;
  }
}

void *mlx::core::BitwiseBinary::print(void *result, void *a2)
{
  v2 = *(result + 5);
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      v4 = "BitwiseOr";
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, 9);
    }

    v3 = "BitwiseAnd";
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 10);
  }

  if (v2 == 2)
  {
    v3 = "BitwiseXor";
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 10);
  }

  if (v2 != 3)
  {
    if (v2 != 4)
    {
      return result;
    }

    v3 = "RightShift";
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 10);
  }

  v4 = "LeftShift";
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, 9);
}

void mlx::core::BitwiseBinary::vmap(uint64_t a1, uint64_t a2, char **a3)
{
  v5[11] = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v5[0], *(v5[0] + 8), (*(v5[0] + 8) - *v5[0]) >> 2);
  operator new();
}

void sub_25A313C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v25 - 72));
  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((v25 - 104 + i));
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  mlx::core::array::~array((v24 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::BitwiseBinary::jvp(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 32)
  {
    mlx::core::zeros_like(*a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::BitwiseBinary::jvp();
}

void sub_25A313DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::broadcast_vjp(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = ((((*a2)[1] - **a2) >> 2) - ((*(*a1 + 8) - **a1) >> 2));
  std::vector<int>::vector[abi:ne200100](&v24, v8);
  v9 = v24;
  v10 = v25;
  if (v24 != v25)
  {
    v11 = 0;
    v12 = (v25 - v24 - 4) >> 2;
    v13 = vdupq_n_s64(v12);
    v14 = (v12 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v15 = v24 + 8;
    do
    {
      v16 = vdupq_n_s64(v11);
      v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_25A99B0D0)));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        *(v15 - 2) = v11;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        *(v15 - 1) = v11 + 1;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_25A99B0C0)))).i32[1])
      {
        *v15 = v11 + 2;
        v15[1] = v11 + 3;
      }

      v11 += 4;
      v15 += 4;
    }

    while (v14 != v11);
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v9, v10, (v10 - v9) >> 2);
  LODWORD(v26[0]) = v8;
  if (v8 < ((*a2)[1] - **a2) >> 2)
  {
    LODWORD(v18) = v8;
    do
    {
      v19 = *(*v7 + 4 * (v18 - v8));
      if (v19 != mlx::core::array::shape(a2, v18))
      {
        std::vector<int>::push_back[abi:ne200100](&__p, v26);
      }

      v18 = SLODWORD(v26[0]) + 1;
      ++LODWORD(v26[0]);
    }

    while (v18 < ((*a2)[1] - **a2) >> 2);
  }

  mlx::core::sum(a2, &__p, 1, *a3, *(a3 + 8) | 0x100000000, v20);
  mlx::core::squeeze(v20, &v24, *a3, *(a3 + 8) | 0x100000000, v26);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, v26, &v27, 1uLL);
  mlx::core::array::~array(v26);
  mlx::core::array::~array(v20);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_25A3140A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  mlx::core::array::~array(va);
  mlx::core::array::~array(&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Broadcast::jvp(uint64_t a1)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v3, v4, (v4 - v3) >> 2);
  std::allocate_shared[abi:ne200100]<mlx::core::Broadcast,std::allocator<mlx::core::Broadcast>,mlx::core::Stream const&,std::vector<int> &,0>();
}

void sub_25A314268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  mlx::core::array::~array((v19 - 72));
  a19 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Broadcast::vmap(uint64_t a1@<X0>, const void ****a2@<X1>, unsigned int **a3@<X2>, uint64_t *a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = **a3;
  v7 = *a2;
  if ((v6 & 0x80000000) == 0)
  {
    v8 = *(a1 + 24);
    v9 = ((*(a1 + 32) - v8) >> 2) - (((*v7)[1] - **v7) >> 2) + 1;
    if (v9 < 0)
    {
      mlx::core::Broadcast::vmap();
    }

    v10 = v9 + v6;
    v11 = (v8 + 4 * (v9 + v6));
    __x[0] = mlx::core::array::shape(*a2, **a3);
    v12.__i_ = v11;
    std::vector<int>::insert((a1 + 24), v12, __x);
    v6 = v10;
  }

  mlx::core::broadcast_to(v7, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v20);
  *__x = 0;
  v18 = 0;
  v19 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(__x, v20, &v21, 1uLL);
  v13 = v6;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v13, &__p, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, __x, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  __p = __x;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(v20);
}

void sub_25A314450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

BOOL mlx::core::Broadcast::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

double mlx::core::Broadcast::output_shape@<D0>(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = **a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 2);
  v6 = *a1;
  if ((a1[1] - *a1) >= 0x11)
  {
    v7 = 1;
    v8 = 16;
    do
    {
      mlx::core::broadcast_shapes(a2, *&v6[v8], &v10);
      v9 = *a2;
      if (*a2)
      {
        a2[1] = v9;
        operator delete(v9);
      }

      result = *&v10;
      *a2 = v10;
      a2[2] = v11;
      ++v7;
      v6 = *a1;
      v8 += 16;
    }

    while (v7 < (a1[1] - *a1) >> 4);
  }

  return result;
}

void sub_25A314598(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Broadcast::output_shapes(uint64_t a1@<X0>, char **a2@<X1>, uint64_t *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a2[1] - *a2) > 0x10)
  {
    mlx::core::Broadcast::output_shape(a2, &__p);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v12, 1uLL);
    goto LABEL_10;
  }

  mlx::core::broadcast_shapes(**a2, (a1 + 24), &__p);
  v5 = __p;
  v6 = *(a1 + 24);
  if (v10 - __p == *(a1 + 32) - v6)
  {
    v7 = memcmp(__p, v6, v10 - __p) == 0;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if (__p)
  {
LABEL_7:
    v10 = v5;
    operator delete(v5);
  }

LABEL_8:
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[Broadcast] Unable to infer broadcast shape");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  __p = 0;
  v10 = 0;
  v11 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v12, 1uLL);
LABEL_10:
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void mlx::core::BroadcastAxes::jvp(uint64_t a1, uint64_t ***x1_0)
{
  v5 = *MEMORY[0x277D85DE8];
  mlx::core::BroadcastAxes::output_shape(x1_0, (a1 + 24), &__p);
  std::allocate_shared[abi:ne200100]<mlx::core::BroadcastAxes,std::allocator<mlx::core::BroadcastAxes>,mlx::core::Stream const&,std::vector<int> &,0>();
}

void sub_25A3148C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17)
{
  mlx::core::array::~array((v17 - 56));
  *(v17 - 64) = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v17 - 64));
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::BroadcastAxes::output_shape(uint64_t ***a1@<X0>, int **a2@<X1>, std::vector<int> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v17 = 0;
    end = 0;
  }

  else
  {
    do
    {
      v8 = *v6;
      *__x = 0;
      v29 = 0;
      v30 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__x, *v8, v8[1], (v8[1] - *v8) >> 2);
      v9 = *a2;
      v10 = a2[1];
      if (v10 != *a2)
      {
        v11 = v29;
        do
        {
          v12 = *--v10;
          v13 = *__x + (*v6)[1] - **v6 + 4 * v12;
          v14 = v11 - v13 - 4;
          if (v11 != (v13 + 4))
          {
            memmove(v13, (v13 + 4), v11 - v13 - 4);
            v9 = *a2;
          }

          v11 = (v13 + v14);
          v29 = (v13 + v14);
        }

        while (v10 != v9);
      }

      mlx::core::broadcast_shapes(a3, __x, &v26);
      begin = a3->__begin_;
      if (a3->__begin_)
      {
        a3->__end_ = begin;
        operator delete(begin);
      }

      *&a3->__begin_ = v26;
      v16 = *__x;
      a3->__end_cap_.__value_ = v27;
      if (v16)
      {
        v29 = v16;
        operator delete(v16);
      }

      v6 += 2;
    }

    while (v6 != v7);
    v17 = a3->__begin_;
    end = a3->__end_;
  }

  v20 = *a2;
  v19 = a2[1];
  if (*a2 != v19)
  {
    v21 = (((end - v17) >> 2) + ((v19 - v20) >> 2));
    do
    {
      v22 = *v20;
      v23 = a3->__begin_;
      v24 = mlx::core::array::shape(*a1, *v20);
      v25.__i_ = &v23[v21 + v22];
      __x[0] = v24;
      std::vector<int>::insert(a3, v25, __x);
      ++v20;
    }

    while (v20 != v19);
  }
}

void sub_25A314ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::BroadcastAxes::vmap()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[BroadcastAxes] VMAP NYI");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

BOOL mlx::core::BroadcastAxes::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void mlx::core::BroadcastAxes::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  mlx::core::BroadcastAxes::output_shape(a2, (a1 + 24), &__p);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v5, 1uLL);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_25A314C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Ceil::jvp(uint64_t a1, uint64_t a2, void x2_0, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Ceil::jvp();
  }

  mlx::core::Ceil::jvp();
}

void sub_25A314D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Ceil::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::ceil(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Ceil::vmap();
  }

  mlx::core::Ceil::vmap();
}

void sub_25A314E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Cholesky::vmap(uint64_t a1, const void ****a2, unsigned int **a3)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (**a3 < 1)
  {
    v6 = v5[1];
    v7[0] = *v5;
    v7[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis(v5, *(a1 + 8), *(a1 + 16) | 0x100000000, v7, **a3, 0);
  }

  mlx::core::linalg::cholesky(v7, *(a1 + 20), *(a1 + 8), (*(a1 + 16) | 0x100000000));
}

void mlx::core::Eigh::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v14[11] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      v6 = **a3;
      if (((*(*v5 + 8) - **v5) >> 2) - 2 <= v6)
      {
        mlx::core::moveaxis(v5, *(a1 + 8), *(a1 + 16) | 0x100000000, v14, v6, 0);
        LODWORD(v6) = 0;
      }

      else
      {
        v7 = v5[1];
        v14[0] = *v5;
        v14[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
          LODWORD(v6) = **a3;
        }
      }

      v13 = v6;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      if (*(a1 + 48) == 1)
      {
        if (*(a1 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v9, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          v9 = *(a1 + 24);
        }

        mlx::core::linalg::eigh(v14, &v9, *(a1 + 8), (*(a1 + 16) | 0x100000000));
      }

      if (*(a1 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        __p = *(a1 + 24);
      }

      mlx::core::linalg::eigvalsh(v14, &__p, *(a1 + 8), (*(a1 + 16) | 0x100000000));
    }

    mlx::core::Eigh::vmap();
  }

  mlx::core::Eigh::vmap();
}

void sub_25A3152C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v27 - 80) = &a23;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v27 - 80));
  mlx::core::array::~array(&a27);
  _Unwind_Resume(a1);
}

void mlx::core::Eigh::output_shapes(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = **a2;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v11, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
  v7 = v12 - 4;
  v12 -= 4;
  if (*(a1 + 48) == 1)
  {
    __p = v11;
    v15 = v7;
    v16 = v13;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v8 = **a2;
    v18[0] = 0;
    v18[1] = 0;
    v17 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v17, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v19, 2uLL);
    for (i = 0; i != -6; i -= 3)
    {
      v10 = v18[i - 1];
      if (v10)
      {
        v18[i] = v10;
        operator delete(v10);
      }
    }
  }

  else
  {
    __p = v11;
    v15 = v7;
    v16 = v13;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v17, 1uLL);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_25A3154F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = &a16;
  v18 = -48;
  while (1)
  {
    v19 = *(v17 - 1);
    if (v19)
    {
      *v17 = v19;
      operator delete(v19);
    }

    v17 -= 3;
    v18 += 24;
    if (!v18)
    {
      if (__p)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

BOOL mlx::core::Eigh::is_equivalent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 47);
  if (v2 >= 0)
  {
    v3 = *(a1 + 47);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = *(a2 + 47);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 32);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v8 = (a1 + 24);
  }

  else
  {
    v8 = *(a1 + 24);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 24);
  }

  return !memcmp(v8, v9, v3) && *(a1 + 48) == *(a2 + 48);
}

void mlx::core::Concatenate::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X1>, char ****a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  v9 = *a3;
  v10 = ((**a3)[1] - ***a3) >> 2;
  LODWORD(v33) = 0;
  std::vector<int>::vector[abi:ne200100](&v36, v10, &v33);
  v11 = *v9;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *v11, v11[1], (v11[1] - *v11) >> 2);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  LODWORD(v29[0]) = 0;
  std::vector<int>::push_back[abi:ne200100](&v30, v29);
  v13 = *a2;
  v12 = a2[1];
  while (v13 != v12)
  {
    LODWORD(v29[0]) = mlx::core::array::shape(v13, *(a1 + 20));
    std::vector<int>::push_back[abi:ne200100](&v30, v29);
    v13 += 2;
  }

  v14 = v30;
  v15 = v31;
  v16 = v30 + 4;
  if (v30 != v31 && v16 != v31)
  {
    v18 = *v30;
    do
    {
      v18 += *v16;
      *v16++ = v18;
    }

    while (v16 != v15);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v20 = *a4;
  v19 = a4[1];
  if (v20 != v19)
  {
    do
    {
      v21 = v30 + 4 * *v20;
      v22 = v36;
      v36[*(a1 + 20)] = *v21;
      *(v33 + *(a1 + 20)) = v21[1];
      v27 = 0;
      v28 = 0;
      v26 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v26, v22, v37, (v37 - v22) >> 2);
      __p = 0;
      v24 = 0;
      v25 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v33, v34, (v34 - v33) >> 2);
      mlx::core::slice(v9, &v26, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v29);
      std::vector<mlx::core::array>::push_back[abi:ne200100](a5, v29);
      mlx::core::array::~array(v29);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      ++v20;
    }

    while (v20 != v19);
    v14 = v30;
  }

  if (v14)
  {
    v31 = v14;
    operator delete(v14);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

void sub_25A315804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 72);
  if (v24)
  {
    *(v22 - 64) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Concatenate::jvp(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  std::vector<int>::vector[abi:ne200100](&__p, (a4[1] - *a4) >> 2);
  v10 = __p;
  v11 = v33;
  if (__p != v33)
  {
    v12 = 0;
    v13 = (v33 - __p - 4) >> 2;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v16 = __p + 8;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0D0)));
      if (vuzp1_s16(v18, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v18, *&v14).i8[2])
      {
        *(v16 - 1) = v12 + 1;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0C0)))).i32[1])
      {
        *v16 = v12 + 2;
        v16[1] = v12 + 3;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v15 != v12);
  }

  v19 = 126 - 2 * __clz(v11 - v10);
  v29 = a4;
  if (v11 == v10)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  std::__introsort<std::_ClassicAlgPolicy,mlx::core::Concatenate::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0 &,int *,false>(v10, v11, &v29, v20, 1);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v21 = *a2;
  if (a2[1] == *a2)
  {
    v27 = 0;
    v26 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      if (v24 >= ((a4[1] - *a4) >> 2) || (v25 = *(__p + v24), v23 != *(*a4 + 4 * v25)))
      {
        mlx::core::zeros_like((v21 + v22), *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(&v29, (*a3 + 16 * v25));
      ++v24;
      ++v23;
      v21 = *a2;
      v22 += 16;
    }

    while (v23 < (a2[1] - *a2) >> 4);
    v26 = v29;
    v27 = v30;
  }

  memset(v28, 0, sizeof(v28));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v28, v26, v27, (v27 - v26) >> 4);
  mlx::core::concatenate(v28, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v35);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, v35, &v36, 1uLL);
  mlx::core::array::~array(v35);
  v34 = v28;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v34);
  v35[0] = &v29;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v35);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_25A315B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char *a19, char *a20)
{
  mlx::core::array::~array(&a20);
  a19 = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  a20 = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Concatenate::vmap(uint64_t a1@<X0>, void **a2@<X1>, char **a3@<X2>, uint64_t *a4@<X8>)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = a3[1] - *a3;
  if (v8)
  {
    v10 = 0;
    v11 = v8 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (1)
    {
      v13 = *v7;
      v7 += 4;
      v12 = v13;
      if ((v13 & 0x80000000) == 0)
      {
        break;
      }

      v10 += 2;
      if (!--v11)
      {
        goto LABEL_6;
      }
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    mlx::core::array::shape(&(*a2)[v10], v12);
    v15 = *(a1 + 20);
    if (v15 < v12)
    {
      v16 = v15;
    }

    else
    {
      v16 = (v15 + 1);
    }

    v17 = (*a2)[v10];
    v29 = 0;
    v30 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v17, *(v17 + 8), (*(v17 + 8) - *v17) >> 2);
    v18 = *a3;
    if (a3[1] != *a3)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = *&v18[4 * v20];
        if ((v21 & 0x80000000) != 0)
        {
          v22 = mlx::core::array::shape(&(*a2)[v19], *(a1 + 20));
          *(__p + v16) = v22;
          mlx::core::expand_dims(&(*a2)[v19], v12, *(a1 + 8), *(a1 + 16) | 0x100000000);
        }

        if (v12 == v21)
        {
          std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(&v32, &(*a2)[v19]);
        }

        else
        {
          mlx::core::moveaxis(&(*a2)[v19], *(a1 + 8), *(a1 + 16) | 0x100000000, v36, v21, v12);
          std::vector<mlx::core::array>::push_back[abi:ne200100](&v32, v36);
          mlx::core::array::~array(v36);
        }

        ++v20;
        v18 = *a3;
        v19 += 2;
      }

      while (v20 < (a3[1] - *a3) >> 2);
    }

    memset(v27, 0, sizeof(v27));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v27, v32, v33, (v33 - v32) >> 4);
    mlx::core::concatenate(v27, v16, *(a1 + 8), *(a1 + 16) | 0x100000000, v35);
    v36[0] = 0;
    v36[1] = 0;
    v37[0] = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v36, v35, v36, 1uLL);
    v23 = v12;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v24, &v23, &v24, 1uLL);
    std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v36, &v24);
    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    v24 = v36;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v24);
    mlx::core::array::~array(v35);
    v24 = v27;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v24);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    v14 = &v32;
  }

  else
  {
LABEL_6:
    memset(v31, 0, sizeof(v31));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v31, *a2, a2[1], (a2[1] - *a2) >> 4);
    mlx::core::concatenate(v31, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v36);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v32, v36, v37, 1uLL);
    LODWORD(v24) = -1;
    v29 = 0;
    v30 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v24, &v24 + 1, 1uLL);
    std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, &v32, &__p);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    __p = &v32;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
    mlx::core::array::~array(v36);
    v14 = v31;
  }

  __p = v14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_25A315F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, char *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = (v24 - 112);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(va);
  __p = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  a16 = &a22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void mlx::core::Concatenate::output_shapes(uint64_t a1@<X0>, char **a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = **a2;
  v13 = 0uLL;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v12, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
  v7 = *a2;
  if ((a2[1] - *a2) <= 0x10)
  {
    v11 = v12;
  }

  else
  {
    v8 = 1;
    v9 = 16;
    do
    {
      v10 = mlx::core::array::shape(&v7[v9], *(a1 + 20));
      v11 = v12;
      *(v12 + *(a1 + 20)) += v10;
      ++v8;
      v7 = *a2;
      v9 += 16;
    }

    while (v8 < (a2[1] - *a2) >> 4);
  }

  v15 = v13;
  __p = v11;
  v12 = 0;
  v13 = 0uLL;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v16, 1uLL);
  if (__p)
  {
    *&v15 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    *&v13 = v12;
    operator delete(v12);
  }
}

void sub_25A3161B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Conjugate::vmap(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Conjugate::vmap();
  }

  if (a3[1] - *a3 != 4)
  {
    mlx::core::Conjugate::vmap();
  }

  mlx::core::conjugate(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000, v8);
  memset(v6, 0, sizeof(v6));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v6, v8, &v9, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v6, a3);
  v7 = v6;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v7);
  mlx::core::array::~array(v8);
}

void sub_25A3162E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::Contiguous::vjp@<X0>(void **a1@<X2>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

uint64_t *mlx::core::Contiguous::jvp@<X0>(void **a1@<X2>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

void sub_25A316414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::conv_weight_backward_patches(const void ***a1, int ***a2, const void ***a3, int **a4, int **a5)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v10 = ((*a1)[1] - **a1) >> 2;
  LODWORD(v43[0]) = 0;
  std::vector<int>::vector[abi:ne200100](&v42, v10, v43);
  v11 = *a1;
  memset(v41, 0, sizeof(v41));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v41, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = *a1;
  memset(v40, 0, sizeof(v40));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v40, *v12, v12[1], (v12[1] - *v12) >> 2);
  v13 = ((*a1)[1] - **a1) >> 2;
  if (v13 - 1 >= 2)
  {
    v14 = *a5;
    v15 = (v42 + 4);
    v16 = (v41[0] + 4);
    v17 = (v40[0] + 4);
    v18 = v13 - 2;
    do
    {
      *v17++ += 2 * *v14;
      *v16++ += *v14;
      v19 = *v14++;
      *v15++ += v19;
      --v18;
    }

    while (v18);
  }

  v43[0] = 1;
  std::vector<long long>::vector[abi:ne200100](&v39, v13, v43);
  v20 = (*a1)[1] - **a1;
  v21 = (v20 >> 2) - 2;
  if (((v20 >> 2) - 2) >= 0)
  {
    v22 = v39;
    v23 = *(v39 + 8 * v21 + 8);
    v24 = v40[0] + 4;
    do
    {
      v23 *= *(v24 + 4 * v21);
      *(v22 + 8 * v21--) = v23;
    }

    while (v21 != -1);
  }

  LODWORD(v43[0]) = 0;
  std::vector<int>::vector[abi:ne200100](&v37, (v20 >> 2) - 2, v43);
  if (v37 != v38)
  {
    v25 = 0;
    v26 = (v38 - v37 - 4) >> 2;
    v27 = vdupq_n_s64(v26);
    v28 = (v26 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v29 = (v37 + 8);
    do
    {
      v30 = vdupq_n_s64(v25);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25A99B0D0)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25 + 1;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25 + 2;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25A99B0C0)))).i32[1])
      {
        *v29 = v25 + 3;
        v29[1] = v25 + 4;
      }

      v25 += 4;
      v29 += 4;
    }

    while (v28 != v25);
  }

  v32 = *a5;
  v33 = a5[1];
  v34 = v33 - *a5;
  memset(v36, 0, sizeof(v36));
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v36, v32, v33, v34);
  mlx::core::array::array<int>(&v35, 0, (*a1)[7] & 0xFFFFFFFFFFLL);
}

void sub_25A316B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(v41);
  mlx::core::array::~array(&a19);
  mlx::core::array::~array(&a29);
  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  mlx::core::array::~array(&a38);
  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  v44 = *(v42 - 256);
  if (v44)
  {
    *(v42 - 248) = v44;
    operator delete(v44);
  }

  v45 = *(v42 - 232);
  if (v45)
  {
    *(v42 - 224) = v45;
    operator delete(v45);
  }

  v46 = *(v42 - 208);
  if (v46)
  {
    *(v42 - 200) = v46;
    operator delete(v46);
  }

  v47 = *(v42 - 184);
  if (v47)
  {
    *(v42 - 176) = v47;
    operator delete(v47);
  }

  v48 = *(v42 - 160);
  if (v48)
  {
    *(v42 - 152) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Convolution::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t ***a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  if (a2[1] - *a2 != 32)
  {
    mlx::core::Convolution::vjp();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *a3;
  v57[0] = a1;
  v9 = *a4;
  v8 = *(a4 + 8);
  if (*a4 != v8)
  {
    do
    {
      if (!*v9)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v54, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
        v51 = 0;
        v52 = 0;
        v53 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v51, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
        v18 = v54;
        v19 = v55;
        if (v55 == v54)
        {
          v27 = (v55 - v54) >> 2;
        }

        else
        {
          v20 = 0;
          do
          {
            v21 = *(*(a1 + 72) + 4 * v20);
            v22 = mlx::core::array::shape(v5 + 2, v20 + 1);
            v54[v20] = (v22 - 1) * v21 - *(*(a1 + 24) + 4 * v20);
            v23 = *(*(a1 + 96) + 4 * v20);
            v24 = mlx::core::array::shape(v5, v20 + 1);
            v25 = *(*(a1 + 48) + 4 * v20);
            v26 = mlx::core::array::shape(v7, v20 + 1);
            v51[v20] = v25 - v25 * v26 + (v24 - 1) * v23 + *(*(a1 + 24) + 4 * v20);
            v18 = v54;
            v19 = v55;
            v27 = (v55 - v54) >> 2;
            ++v20;
          }

          while (v27 > v20);
        }

        if (v18 == v19)
        {
          v36 = 0;
        }

        else
        {
          LOBYTE(v36) = 0;
          v37 = v18;
          do
          {
            v38 = *v37++;
            v36 = v36 & 1 | (v38 >> 31);
          }

          while (v37 != v19);
        }

        for (i = v51; i != v52; ++i)
        {
          v40 = *i;
          v36 = v36 & 1 | (v40 >> 31);
        }

        v48 = 0;
        v49 = 0;
        v50 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v48, v18, v19, v27);
        v45 = 0;
        v46 = 0;
        v47 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v45, v51, v52, v52 - v51);
        if (v36)
        {
          v41 = v48;
          v42 = v49;
          while (v41 != v42)
          {
            *v41 &= ~(*v41 >> 31);
            ++v41;
          }

          v43 = v45;
          v44 = v46;
          while (v43 != v44)
          {
            *v43 &= ~(*v43 >> 31);
            ++v43;
          }
        }

        mlx::core::Convolution::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0::operator()(v57, v5 + 2, 0, 1);
      }

      if (*v9 == 1)
      {
        v10 = *(a1 + 96);
        v11 = *(a1 + 104);
        v12 = v11 - v10;
        if (v11 == v10)
        {
          goto LABEL_16;
        }

        v13 = 0;
        v14 = v12 >> 2;
        v15 = v14 <= 1 ? 1 : v14;
        v16 = 1;
        do
        {
          v17 = *(v10 + 4 * v13) == 1 && *(*(a1 + 72) + 4 * v13) == 1;
          v16 &= v17;
          ++v13;
        }

        while (v15 != v13);
        if (v16)
        {
LABEL_16:
          if ((*(a1 + 124) & 1) == 0 && *(a1 + 120) == 1)
          {
            mlx::core::conv_weight_backward_patches(v5, v5 + 2, v7, (a1 + 48), (a1 + 24));
          }
        }

        v54 = 0;
        v55 = 0;
        v56 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v54, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
        v51 = 0;
        v52 = 0;
        v53 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v51, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
        if (v52 != v51)
        {
          v28 = 0;
          do
          {
            v29 = *(*(a1 + 96) + 4 * v28);
            v30 = mlx::core::array::shape(v5, v28 + 1);
            v31 = *(*(a1 + 48) + 4 * v28);
            v32 = mlx::core::array::shape(v7, v28 + 1);
            v33 = *(*(a1 + 72) + 4 * v28);
            v34 = mlx::core::array::shape(v5 + 2, v28 + 1);
            v35 = v51;
            v51[v28] = (v34 - 1) * v33 + (v32 - 1) * v31 - (*(*(a1 + 24) + 4 * v28) + (v30 - 1) * v29);
            ++v28;
          }

          while (v28 < v52 - v35);
        }

        mlx::core::swapaxes(v7, 0, 0xFFFFFFFFLL, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      ++v9;
    }

    while (v9 != v8);
  }
}

void sub_25A317818(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v2 - 128));
  *(v2 - 128) = v1;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v2 - 128));
  _Unwind_Resume(a1);
}

void mlx::core::Convolution::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0::operator()(void *a1, const void ***a2, int a3, uint64_t x3_0)
{
  v6 = *a1;
  v7 = (*a1 + 120);
  if (*v7 >= 2)
  {
    v10 = *a2;
    memset(&v19, 0, sizeof(v19));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, *v10, v10[1], (v10[1] - *v10) >> 2);
    v11 = (((v19.__end_ - v19.__begin_) >> 2) - 1) & (a3 >> 31);
    v12.__i_ = &v19.__begin_[v11];
    std::vector<int>::insert(&v19, v12, v7);
    begin = v19.__begin_;
    v19.__begin_[v11 + 1] /= *(v6 + 120);
    __p = begin;
    v17 = *&v19.__end_;
    memset(&v19, 0, sizeof(v19));
    mlx::core::reshape(a2, &__p, *(v6 + 8), *(v6 + 16) | 0x100000000, v18);
    mlx::core::swapaxes(v18, x3_0, 0xFFFFFFFFLL, *(v6 + 8), *(v6 + 16) | 0x100000000);
  }

  v14 = *(v6 + 8);
  v15 = *(v6 + 16) | 0x100000000;

  mlx::core::swapaxes(a2, 0, 0xFFFFFFFFLL, v14, v15);
}

void sub_25A317CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  mlx::core::array::~array(&a14);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Convolution::vmap(uint64_t a1, void **a2, unsigned int **a3)
{
  v38[9] = *MEMORY[0x277D85DE8];
  v38[0] = a1;
  v6 = **a3;
  v7 = (*a3)[1];
  v8 = *a2;
  v9 = **a2;
  v10 = (*a2)[1];
  *&v37 = v9;
  *(&v37 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v8 = *a2;
  }

  v12 = v8[2];
  v11 = v8[3];
  *&v36 = v12;
  *(&v36 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  if ((v6 & 0x80000000) == 0 && v7 < 0)
  {
    v13 = **a3;
    if (v13 >= 1)
    {
      mlx::core::moveaxis(&v37, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35, v13, 0);
      v14 = v35;
      v35 = 0uLL;
      v15 = *(&v37 + 1);
      v37 = v14;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      mlx::core::array::~array(&v35);
    }

    mlx::core::flatten(&v35, &v37, 0, 1, *(a1 + 8), *(a1 + 16) | 0x100000000);
    mlx::core::Convolution::vmap(std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v38, &v35, &v36, *(a1 + 120));
  }

  if ((v6 & 0x80000000) != 0 && (v7 & 0x80000000) == 0)
  {
    v16 = (*a3)[1];
    if (v16 >= 1)
    {
      mlx::core::moveaxis(&v36, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35, v16, 0);
      v17 = v35;
      v35 = 0uLL;
      v18 = *(&v36 + 1);
      v36 = v17;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      mlx::core::array::~array(&v35);
    }

    mlx::core::flatten(&v35, &v36, 0, 1, *(a1 + 8), *(a1 + 16) | 0x100000000);
    mlx::core::Convolution::vmap(std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v38, &v37, &v35, *(a1 + 120));
  }

  v19 = v6 >> 31;
  if (v7 < 0)
  {
    LOBYTE(v19) = 1;
  }

  if (v19)
  {
    mlx::core::Convolution::vmap(std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v38, &v37, &v36, *(a1 + 120));
  }

  v20 = **a3;
  v22 = v9;
  v21 = *v9;
  v23 = (v22[1] - v21) >> 2;
  v24 = v20 + v23;
  if (v20 >= 0)
  {
    v24 = **a3;
  }

  if (v23 > v24)
  {
    v25 = *(v21 + 4 * v24);
    mlx::core::moveaxis(&v37, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35, v20, 4294967294);
    v26 = v35;
    v35 = 0uLL;
    v27 = *(&v37 + 1);
    v37 = v26;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    mlx::core::array::~array(&v35);
    mlx::core::flatten(&v35, &v37, 4294967294, -1, *(a1 + 8), *(a1 + 16) | 0x100000000);
    v28 = v35;
    v35 = 0uLL;
    v29 = *(&v37 + 1);
    v37 = v28;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    mlx::core::array::~array(&v35);
    v30 = (*a3)[1];
    if (v30 >= 1)
    {
      mlx::core::moveaxis(&v36, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35, v30, 0);
      v31 = v35;
      v35 = 0uLL;
      v32 = *(&v36 + 1);
      v36 = v31;
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      mlx::core::array::~array(&v35);
    }

    if (*(v36 + 8) - *v36 > 4uLL)
    {
      mlx::core::flatten(&v35, &v36, 0, 1, *(a1 + 8), *(a1 + 16) | 0x100000000);
      v33 = v35;
      v35 = 0uLL;
      v34 = *(&v36 + 1);
      v36 = v33;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      mlx::core::array::~array(&v35);
      mlx::core::Convolution::vmap(std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v38, &v37, &v36, (*(a1 + 120) * v25));
    }

    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A318478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  mlx::core::array::~array(&a23);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Convolution::vmap(std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(uint64_t *a1, uint64_t **a2, int ***a3, uint64_t a4)
{
  v7 = *a1;
  memset(v11, 0, sizeof(v11));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v11, *(v7 + 48), *(v7 + 56), (*(v7 + 56) - *(v7 + 48)) >> 2);
  memset(v10, 0, sizeof(v10));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v10, *(v7 + 24), *(v7 + 32), (*(v7 + 32) - *(v7 + 24)) >> 2);
  memset(v9, 0, sizeof(v9));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v9, *(v7 + 72), *(v7 + 80), (*(v7 + 80) - *(v7 + 72)) >> 2);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *(v7 + 96), *(v7 + 104), (*(v7 + 104) - *(v7 + 96)) >> 2);
  mlx::core::conv_general(a2, a3, v11, v10, v9, __p, a4, *(v7 + 124), *(v7 + 8), *(v7 + 16) | 0x100000000);
}

void sub_25A3186E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 72);
  if (v20)
  {
    *(v18 - 64) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

BOOL mlx::core::Convolution::is_equivalent(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(v5 + 8) - v4;
  v8 = a2 + 24;
  v7 = *(a2 + 24);
  if (v6 == *(v8 + 8) - v7 && !memcmp(v4, v7, v6) && (v9 = *(a1 + 48), v10 = *(a1 + 56) - v9, v11 = *(a2 + 48), v10 == *(a2 + 56) - v11) && !memcmp(v9, v11, v10) && (v12 = *(a1 + 72), v13 = *(a1 + 80) - v12, v14 = *(a2 + 72), v13 == *(a2 + 80) - v14) && !memcmp(v12, v14, v13) && (v15 = *(a1 + 96), v16 = *(a1 + 104) - v15, v17 = *(a2 + 96), v16 == *(a2 + 104) - v17) && !memcmp(v15, v17, v16) && *(a1 + 120) == *(a2 + 120))
  {
    return *(a1 + 124) == *(a2 + 124);
  }

  else
  {
    return 0;
  }
}

uint64_t *mlx::core::Copy::vjp@<X0>(void *a1@<X1>, char **a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  if (a1[1] - *a1 != 16)
  {
    mlx::core::Copy::vjp();
  }

  if (a3[1] - *a3 != 4)
  {
    mlx::core::Copy::vjp();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a2;
  v5 = a2[1];

  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a4, v4, v5, (v5 - v4) >> 4);
}

uint64_t *mlx::core::Copy::jvp@<X0>(void *a1@<X1>, char **a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  if (a1[1] - *a1 != 16)
  {
    mlx::core::Copy::jvp();
  }

  if (a3[1] - *a3 != 4)
  {
    mlx::core::Copy::jvp();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a2;
  v5 = a2[1];

  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a4, v4, v5, (v5 - v4) >> 4);
}

void mlx::core::Copy::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v7[8] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      v6 = *v4;
      v5 = v4[1];
      v7[0] = v6;
      v7[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      mlx::core::copy(v7, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Copy::vmap();
  }

  mlx::core::Copy::vmap();
}

void sub_25A3189EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va1);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Cos::jvp(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::sin(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Cos::jvp();
  }

  mlx::core::Cos::jvp();
}

void sub_25A318B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Cos::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::cos(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Cos::vmap();
  }

  mlx::core::Cos::vmap();
}

void sub_25A318CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Cosh::jvp(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::sinh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Cosh::jvp();
  }

  mlx::core::Cosh::jvp();
}

void sub_25A318DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Cosh::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::cosh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Cosh::vmap();
  }

  mlx::core::Cosh::vmap();
}

void sub_25A318F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::CustomTransforms::vjp(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  v10 = (*(a2 + 8) - 16 * *(a1 + 20));
  memset(v17, 0, sizeof(v17));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v17, v9, v10, (v10 - v9) >> 4);
  v11 = *(a1 + 48);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(v16);
  v13 = *a3;
  v12 = a3[1];
  while (v13 != v12)
  {
    std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(v16, v13++);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::reserve(a5, a4[1] - *a4);
  v15 = *a4;
  v14 = a4[1];
  while (v15 != v14)
  {
    std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a5, &v16[0][2 * *v15++]);
  }

  v18 = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v18);
  v16[0] = v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v16);
}

void sub_25A319070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void ***a16)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a16);
  a10 = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v15[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, v11);
    }

    v12 = (16 * v8);
    v15[0] = 0;
    v15[1] = v12;
    v15[3] = 0;
    v13 = *a2;
    *v12 = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v15[2] = v12 + 1;
    std::vector<mlx::core::array>::__swap_out_circular_buffer(a1, v15);
    v7 = a1[1];
    std::__split_buffer<mlx::core::array>::~__split_buffer(v15);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
    a1[1] = v4 + 2;
  }

  a1[1] = v7;
  return v7 - 2;
}

void sub_25A3191C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void mlx::core::CustomTransforms::jvp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = (*(a2 + 8) - 16 * *(a1 + 20));
  memset(v10, 0, sizeof(v10));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v10, v7, v8, (v8 - v7) >> 4);
  v9 = *(a1 + 80);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v9 + 48))(v9, v10, a3, a4);
  v11 = v10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_25A319294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void mlx::core::CustomTransforms::vmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = (*(a2 + 8) - 16 * *(a1 + 20));
  v7 = v6 - *a2;
  memset(v15, 0, sizeof(v15));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v15, v5, v6, v7 >> 4);
  v8 = *a3;
  v9 = (*(a3 + 8) - 4 * *(a1 + 20));
  v10 = (v9 - *a3) >> 2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v8, v9, v10);
  v11 = *(a1 + 112);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(v11, v15, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  __p = v15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_25A319394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, uint64_t a11, char a12)
{
  __p = &a12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void mlx::core::Depends::vjp(mlx::core *a1@<X1>, void *a2@<X2>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      v10 = *v5;
      if (v10 >= (a2[1] - *a2) >> 4)
      {
        mlx::core::zeros_like((*a1 + 16 * v10), a1, v4);
      }

      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a4, (*a2 + 16 * v10));
      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_25A319478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Divide::vjp(uint64_t a1@<X0>, void **a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a4 != *(a4 + 8))
  {
    if (**a4)
    {
      mlx::core::multiply(*a3, *a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::divide(*a3, *a2 + 2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }
}

void sub_25A3195DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mlx::core::array::~array(va);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::DivMod::vjp(uint64_t a1@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    mlx::core::zeros_like((*a2 + 16 * **a3), *(a1 + 8), *(a1 + 16) | 0x100000000);
  }
}

void sub_25A319798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void sub_25A319888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v15 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Divide::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[7] = *MEMORY[0x277D85DE8];
  v5[0] = a4;
  v5[1] = a3;
  v5[2] = a2;
  v5[3] = a1;
  mlx::core::Divide::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v5, 0);
}

void sub_25A3199FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::Divide::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 24);
  if (*(**a1 + 4 * a2))
  {
    mlx::core::multiply((**(a1 + 8) + 16 * a2), **(a1 + 16), *(v3 + 8), *(v3 + 16) | 0x100000000);
  }

  v4 = *(a1 + 16);
  v5 = (**(a1 + 8) + 16 * a2);
  v6 = *(v3 + 8);
  v7 = (*v4 + 16);
  v8 = *(v3 + 16) | 0x100000000;

  mlx::core::divide(v5, v7, v6, v8);
}

void sub_25A319B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::array::~array(va);
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::Divide::vmap(uint64_t a1, uint64_t a2, char **a3)
{
  v6[5] = *MEMORY[0x277D85DE8];
  mlx::core::divide(v5, v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A319CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v17 - 56));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Remainder::vjp(uint64_t a1@<X0>, void **a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v5 = *a4;
  v6 = *(a4 + 8);
  if (*a4 != v6)
  {
    do
    {
      if (*v5)
      {
        mlx::core::divide(*a2, *a2 + 2, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a5, *a3);
      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_25A319E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::Remainder::jvp(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10[0] = a4;
  v10[1] = a3;
  v10[2] = a2;
  v10[3] = a1;
  mlx::core::Remainder::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v10, 0, &v9);
  if (a4[1] - *a4 >= 5uLL)
  {
    mlx::core::Remainder::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v10, 1u, &v8);
    mlx::core::add(&v9, &v8, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v11 = v9;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, &v11, v12, 1uLL);
  mlx::core::array::~array(&v11);
  mlx::core::array::~array(&v9);
}

void sub_25A319FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::Remainder::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(uint64_t a1@<X0>, unsigned int a2@<W1>, _OWORD *a3@<X8>)
{
  if (*(**a1 + 4 * a2))
  {
    mlx::core::divide(**(a1 + 16), (**(a1 + 16) + 16), *(*(a1 + 24) + 8), *(*(a1 + 24) + 16) | 0x100000000);
  }

  v3 = *(**(a1 + 8) + 16 * a2);
  *a3 = v3;
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_25A31A104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Remainder::vmap(uint64_t a1, uint64_t a2, char **a3)
{
  v6[5] = *MEMORY[0x277D85DE8];
  mlx::core::remainder(v5, v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A31A254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v17 - 56));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Equal::vmap(uint64_t a1, uint64_t a2, char **a3)
{
  v6[5] = *MEMORY[0x277D85DE8];
  mlx::core::equal(v5, v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A31A3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v17 - 56));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Equal::vjp(uint64_t a1@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    mlx::core::zeros_like((*a2 + 16 * **a3), *(a1 + 8), *(a1 + 16) | 0x100000000);
  }
}

void mlx::core::Equal::jvp(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  mlx::core::broadcast_shapes(**a2, (*a2)[2], __p);
  mlx::core::zeros(__p, 0x100000000);
}

void sub_25A31A5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  mlx::core::array::~array(va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Erf::jvp(uint64_t a1, void **a2, void **a3, void *a4)
{
  v5[2] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::array::array<double>(v5, *(**a2 + 56) & 0xFFFFFFFFFFLL, 1.12837917);
    }

    mlx::core::Erf::jvp();
  }

  mlx::core::Erf::jvp();
}

void sub_25A31A798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  mlx::core::array::~array((v3 - 56));
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va3);
  _Unwind_Resume(a1);
}

void mlx::core::Erf::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::erf(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Erf::vmap();
  }

  mlx::core::Erf::vmap();
}

void sub_25A31A8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void sub_25A31AA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::ErfInv::jvp(uint64_t a1, void **a2, void **a3, void *a4)
{
  v5[2] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::array::array<double>(v5, *(**a2 + 56) & 0xFFFFFFFFFFLL, 0.886226925);
    }

    mlx::core::ErfInv::jvp();
  }

  mlx::core::ErfInv::jvp();
}

void sub_25A31AC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  mlx::core::array::~array((v3 - 56));
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va3);
  _Unwind_Resume(a1);
}

void mlx::core::ErfInv::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::erfinv(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ErfInv::vmap();
  }

  mlx::core::ErfInv::vmap();
}

void sub_25A31AD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void sub_25A31AE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Exp::jvp(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::exp(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Exp::jvp();
  }

  mlx::core::Exp::jvp();
}

void sub_25A31AF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Exp::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::exp(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Exp::vmap();
  }

  mlx::core::Exp::vmap();
}

void sub_25A31B084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void sub_25A31B1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Expm1::jvp(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::exp(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Expm1::jvp();
  }

  mlx::core::Expm1::jvp();
}

void sub_25A31B2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Expm1::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::expm1(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Expm1::vmap();
  }

  mlx::core::Expm1::vmap();
}

void sub_25A31B3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ExpandDims::vjp(uint64_t a1@<X0>, std::string::size_type **a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  mlx::core::squeeze(*a2, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v4);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v4, &v5, 1uLL);
  mlx::core::array::~array(v4);
}

void sub_25A31B4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::ExpandDims::jvp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  mlx::core::expand_dims(*a2, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v4);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v4, &v5, 1uLL);
  mlx::core::array::~array(v4);
}

void sub_25A31B578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::ExpandDims::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, int **a3@<X2>, uint64_t *a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = **a3;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v17, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v9 = v17;
  v10 = v18;
  if (v17 != v18)
  {
    v11 = *a3;
    do
    {
      if (*v9 >= *v11)
      {
        ++*v9;
      }

      else
      {
        ++v8;
      }

      ++v9;
    }

    while (v9 != v10);
  }

  mlx::core::expand_dims(*a2, &v17, *(a1 + 8), *(a1 + 16) | 0x100000000, v20);
  memset(v16, 0, sizeof(v16));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v16, v20, &v21, 1uLL);
  v12 = v8;
  v14 = 0;
  v15 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v12, &__p, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v16, &__p);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  __p = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(v20);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_25A31B70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 72));
  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::ExpandDims::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void *mlx::core::ExpandDims::output_shape@<X0>(uint64_t *a1@<X0>, int **a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
  v8 = *a2;
  for (i = a2[1]; v8 != i; ++v8)
  {
    v9.__i_ = (*a3 + 4 * *v8);
    __x = 1;
    result = std::vector<int>::insert(a3, v9, &__x).__i_;
  }

  return result;
}