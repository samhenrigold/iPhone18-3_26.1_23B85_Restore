int *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::RefinePriority *,0>(int *result, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a2 <= *result;
  if (*a2 == *result)
  {
    v5 = a2[1];
    v6 = result[1];
    v4 = v5 <= v6;
    if (v5 == v6)
    {
      v4 = a2[2] <= result[2];
    }
  }

  if (v4)
  {
    v11 = *a3 <= v3;
    if (*a3 == v3)
    {
      v12 = a3[1];
      v13 = a2[1];
      v11 = v12 <= v13;
      if (v12 == v13)
      {
        v11 = a3[2] <= a2[2];
      }
    }

    if (!v11)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v15 = *a2 <= *result;
      if (*a2 == *result)
      {
        v16 = a2[1];
        v17 = result[1];
        v15 = v16 <= v17;
        if (v16 == v17)
        {
          v15 = a2[2] <= result[2];
        }
      }

      if (!v15)
      {
        v18 = *result;
        *result = *a2;
        *a2 = v18;
      }
    }
  }

  else
  {
    v7 = *a3 <= v3;
    if (*a3 == v3)
    {
      v8 = a3[1];
      v9 = a2[1];
      v7 = v8 <= v9;
      if (v8 == v9)
      {
        v7 = a3[2] <= a2[2];
      }
    }

    if (!v7)
    {
      v10 = *result;
      *result = *a3;
LABEL_24:
      *a3 = v10;
      return result;
    }

    v19 = *result;
    *result = *a2;
    *a2 = v19;
    v20 = *a3 <= *a2;
    if (*a3 == *a2)
    {
      v21 = a3[1];
      v22 = a2[1];
      v20 = v21 <= v22;
      if (v21 == v22)
      {
        v20 = a3[2] <= a2[2];
      }
    }

    if (!v20)
    {
      v10 = *a2;
      *a2 = *a3;
      goto LABEL_24;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::RefinePriority *,0>(int *a1, int *a2, int *a3, int *a4, int *a5)
{
  v11 = *a4 <= *a3;
  if (*a4 == *a3)
  {
    v12 = a4[1];
    v13 = a3[1];
    v11 = v12 <= v13;
    if (v12 == v13)
    {
      v11 = a4[2] <= a3[2];
    }
  }

  if (!v11)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v14 = *a3 <= *a2;
    if (*a3 == *a2)
    {
      v15 = a3[1];
      v16 = a2[1];
      v14 = v15 <= v16;
      if (v15 == v16)
      {
        v14 = a3[2] <= a2[2];
      }
    }

    if (!v14)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v17 = *a2 <= *a1;
      if (*a2 == *a1)
      {
        v18 = a2[1];
        v19 = a1[1];
        v17 = v18 <= v19;
        if (v18 == v19)
        {
          v17 = a2[2] <= a1[2];
        }
      }

      if (!v17)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  v20 = *a5 <= *a4;
  if (*a5 == *a4)
  {
    v21 = a5[1];
    v22 = a4[1];
    v20 = v21 <= v22;
    if (v21 == v22)
    {
      v20 = a5[2] <= a4[2];
    }
  }

  if (!v20)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    v23 = *a4 <= *a3;
    if (*a4 == *a3)
    {
      v24 = a4[1];
      v25 = a3[1];
      v23 = v24 <= v25;
      if (v24 == v25)
      {
        v23 = a4[2] <= a3[2];
      }
    }

    if (!v23)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      v26 = *a3 <= *a2;
      if (*a3 == *a2)
      {
        v27 = a3[1];
        v28 = a2[1];
        v26 = v27 <= v28;
        if (v27 == v28)
        {
          v26 = a3[2] <= a2[2];
        }
      }

      if (!v26)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        v29 = *a2 <= *a1;
        if (*a2 == *a1)
        {
          v30 = a2[1];
          v31 = a1[1];
          v29 = v30 <= v31;
          if (v30 == v31)
          {
            v29 = a2[2] <= a1[2];
          }
        }

        if (!v29)
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::RefinePriority *>(int *a1, int *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        return 1;
      case 4:
        v23 = a2 - 4;
        v24 = *(a2 - 4);
        v25 = a1[8];
        v26 = v24 <= v25;
        if (v24 == v25)
        {
          v27 = *(a2 - 3);
          v28 = a1[9];
          v26 = v27 <= v28;
          if (v27 == v28)
          {
            v26 = *(a2 - 2) <= a1[10];
          }
        }

        if (!v26)
        {
          v29 = *(a1 + 2);
          *(a1 + 2) = *v23;
          *v23 = v29;
          v30 = a1[8];
          v31 = a1[4];
          v32 = v30 <= v31;
          if (v30 == v31)
          {
            v33 = a1[9];
            v34 = a1[5];
            v32 = v33 <= v34;
            if (v33 == v34)
            {
              v32 = a1[10] <= a1[6];
            }
          }

          if (!v32)
          {
            v35 = *(a1 + 1);
            *(a1 + 1) = *(a1 + 2);
            *(a1 + 2) = v35;
            v36 = a1[4];
            v37 = v36 <= *a1;
            if (v36 == *a1)
            {
              v38 = a1[5];
              v39 = a1[1];
              v37 = v38 <= v39;
              if (v38 == v39)
              {
                v37 = a1[6] <= a1[2];
              }
            }

            if (!v37)
            {
              v40 = *a1;
              *a1 = *(a1 + 1);
              *(a1 + 1) = v40;
            }
          }
        }

        return 1;
      case 5:
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 4;
      v6 = *(a2 - 4);
      v7 = v6 <= *a1;
      if (v6 == *a1)
      {
        v8 = *(a2 - 3);
        v9 = a1[1];
        v7 = v8 <= v9;
        if (v8 == v9)
        {
          v7 = *(a2 - 2) <= a1[2];
        }
      }

      if (!v7)
      {
        v10 = *a1;
        *a1 = *v5;
        *v5 = v10;
      }

      return 1;
    }
  }

  v11 = a1 + 8;
  v12 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (2)
  {
    v15 = *v12;
    if (*v12 == *v11)
    {
      v16 = v12[1];
      v17 = v11[1];
      if (v16 == v17)
      {
        if (v12[2] <= v11[2])
        {
          goto LABEL_35;
        }
      }

      else if (v16 <= v17)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v15 <= *v11)
      {
        goto LABEL_35;
      }

      v16 = v12[1];
    }

    v18 = *(v12 + 1);
    *v12 = *v11;
    v19 = v13;
    while (1)
    {
      v20 = *(a1 + v19 + 16);
      v21 = v15 <= v20;
      if (v15 != v20)
      {
        goto LABEL_27;
      }

      v22 = *(a1 + v19 + 20);
      if (v16 == v22)
      {
        v21 = v18 <= *(a1 + v19 + 24);
LABEL_27:
        if (v21)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if (v16 <= v22)
      {
        break;
      }

LABEL_31:
      v11 -= 4;
      *(a1 + v19 + 32) = *(a1 + v19 + 16);
      v19 -= 16;
      if (v19 == -32)
      {
        v11 = a1;
        goto LABEL_34;
      }
    }

    v11 = (a1 + v19 + 32);
LABEL_34:
    *v11 = v15;
    v11[1] = v16;
    *(v11 + 1) = v18;
    if (++v14 != 8)
    {
LABEL_35:
      v11 = v12;
      v13 += 16;
      v12 += 4;
      if (v12 == a2)
      {
        return 1;
      }

      continue;
    }

    return v12 + 4 == a2;
  }
}

const void **std::vector<std::vector<int>>::reserve(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::vector<std::unordered_set<int>>::__init_with_size[abi:ne200100]<std::unordered_set<int> const*,std::unordered_set<int> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::unordered_set<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D262EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::unordered_set<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::unordered_set<int>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<int>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::unordered_set<int>>,std::unordered_set<int> const*,std::unordered_set<int> const*,std::unordered_set<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::unordered_set<int>::unordered_set(a4, v6);
      v6 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_25D262FCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<int>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, i + 4, i + 4);
  }

  return a1;
}

void std::vector<std::unordered_set<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::SidePermutation(std::vector<int> const&)::$_0 &,int *,false>(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v212 = a2 - 1;
    v10 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v10;
          v11 = a2 - v10;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

              case 4:
                v100 = 0;
                v101 = 0;
                v102 = 0;
                v103 = *(a2 - 1);
                v104 = v10[2];
                v105 = a3[1];
                v106 = **a3;
                do
                {
                  v107 = *(*(v106 + 24 * *v105) + 4 * v100);
                  if (v107 == v103)
                  {
                    v102 = v100;
                  }

                  if (v107 == v104)
                  {
                    v101 = v100;
                  }

                  ++v100;
                }

                while (v100 != 6);
                if (v102 < v101)
                {
                  v108 = 0;
                  v109 = 0;
                  v110 = 0;
                  v10[2] = v103;
                  *(a2 - 1) = v104;
                  v112 = v10[1];
                  v111 = v10[2];
                  do
                  {
                    v113 = *(*(v106 + 24 * *v105) + 4 * v108);
                    if (v113 == v111)
                    {
                      v110 = v108;
                    }

                    if (v113 == v112)
                    {
                      v109 = v108;
                    }

                    ++v108;
                  }

                  while (v108 != 6);
                  if (v110 < v109)
                  {
                    v114 = 0;
                    v115 = 0;
                    v116 = 0;
                    v10[1] = v111;
                    v10[2] = v112;
                    v117 = *v10;
                    v118 = *(v106 + 24 * *v105);
                    do
                    {
                      v119 = *(v118 + 4 * v114);
                      if (v119 == v111)
                      {
                        v116 = v114;
                      }

                      if (v119 == v117)
                      {
                        v115 = v114;
                      }

                      ++v114;
                    }

                    while (v114 != 6);
                    if (v116 < v115)
                    {
                      *v10 = v111;
                      v10[1] = v117;
                    }
                  }
                }

                return result;
              case 5:
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v94 = 0;
              v95 = 0;
              v96 = 0;
              v97 = *(a2 - 1);
              v98 = *v10;
              do
              {
                v99 = *(*(**a3 + 24 * *a3[1]) + 4 * v94);
                if (v99 == v97)
                {
                  v96 = v94;
                }

                if (v99 == v98)
                {
                  v95 = v94;
                }

                ++v94;
              }

              while (v94 != 6);
              if (v96 < v95)
              {
                *v10 = v97;
                *(a2 - 1) = v98;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            if (a5)
            {
              if (v10 != a2)
              {
                v120 = v10 + 1;
                if (v10 + 1 != a2)
                {
                  v121 = a3[1];
                  v122 = **a3;
                  v123 = v10;
                  do
                  {
                    v124 = 0;
                    v125 = 0;
                    v126 = 0;
                    v127 = v123;
                    v123 = v120;
                    v129 = *v127;
                    v128 = v127[1];
                    result = *(v122 + 24 * *v121);
                    do
                    {
                      v130 = *(result + 4 * v124);
                      if (v130 == v128)
                      {
                        v126 = v124;
                      }

                      if (v130 == v129)
                      {
                        v125 = v124;
                      }

                      ++v124;
                    }

                    while (v124 != 6);
                    if (v126 < v125)
                    {
                      v131 = v123;
                      while (1)
                      {
                        *v131 = v129;
                        if (v127 == v10)
                        {
                          break;
                        }

                        v131 = v127;
                        v132 = 0;
                        v133 = 0;
                        LODWORD(result) = 0;
                        v134 = *--v127;
                        v129 = v134;
                        do
                        {
                          v135 = *(*(v122 + 24 * *v121) + 4 * v132);
                          if (v135 == v128)
                          {
                            result = v132;
                          }

                          else
                          {
                            result = result;
                          }

                          if (v135 == v129)
                          {
                            v133 = v132;
                          }

                          ++v132;
                        }

                        while (v132 != 6);
                        if (result >= v133)
                        {
                          goto LABEL_188;
                        }
                      }

                      v131 = v10;
LABEL_188:
                      *v131 = v128;
                    }

                    v120 = v123 + 1;
                  }

                  while (v123 + 1 != a2);
                }
              }
            }

            else if (v10 != a2)
            {
              v197 = v10 + 1;
              if (v10 + 1 != a2)
              {
                v198 = a3[1];
                v199 = **a3;
                do
                {
                  v200 = 0;
                  v201 = 0;
                  v202 = 0;
                  v203 = v9;
                  v9 = v197;
                  v205 = *v203;
                  v204 = v203[1];
                  do
                  {
                    result = *(*(v199 + 24 * *v198) + 4 * v200);
                    if (result == v204)
                    {
                      v202 = v200;
                    }

                    if (result == v205)
                    {
                      v201 = v200;
                    }

                    ++v200;
                  }

                  while (v200 != 6);
                  if (v202 < v201)
                  {
                    v206 = v9;
                    do
                    {
                      v207 = 0;
                      v208 = 0;
                      v209 = 0;
                      *v206 = v205;
                      v206 = v203;
                      v210 = *--v203;
                      v205 = v210;
                      result = *(v199 + 24 * *v198);
                      do
                      {
                        v211 = *(result + 4 * v207);
                        if (v211 == v204)
                        {
                          v209 = v207;
                        }

                        if (v211 == v205)
                        {
                          v208 = v207;
                        }

                        ++v207;
                      }

                      while (v207 != 6);
                    }

                    while (v209 < v208);
                    *v206 = v204;
                  }

                  v197 = v9 + 1;
                }

                while (v9 + 1 != a2);
              }
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v136 = (v11 - 2) >> 1;
              v137 = *a3;
              v138 = a3[1];
              v139 = v136;
              do
              {
                v140 = v139;
                if (v136 >= v139)
                {
                  v141 = (2 * v139) | 1;
                  v142 = &v10[v141];
                  if (2 * v140 + 2 >= v11)
                  {
                    v146 = *v137;
                    v147 = *(*v137 + 24 * *v138);
                  }

                  else
                  {
                    v143 = 0;
                    v144 = 0;
                    v145 = 0;
                    v146 = *v137;
                    v147 = *(*v137 + 24 * *v138);
                    do
                    {
                      v148 = *(v147 + 4 * v143);
                      if (v148 == *v142)
                      {
                        v145 = v143;
                      }

                      if (v148 == v142[1])
                      {
                        v144 = v143;
                      }

                      ++v143;
                    }

                    while (v143 != 6);
                    if (v145 < v144)
                    {
                      ++v142;
                      v141 = 2 * v140 + 2;
                    }
                  }

                  v149 = 0;
                  v150 = 0;
                  v151 = 0;
                  v152 = &v10[v140];
                  v153 = *v142;
                  v154 = *v152;
                  do
                  {
                    v155 = *(v147 + 4 * v149);
                    if (v155 == v153)
                    {
                      v151 = v149;
                    }

                    if (v155 == v154)
                    {
                      v150 = v149;
                    }

                    ++v149;
                  }

                  while (v149 != 6);
                  if (v151 >= v150)
                  {
                    do
                    {
                      v156 = v142;
                      *v152 = v153;
                      if (v136 < v141)
                      {
                        break;
                      }

                      v157 = (2 * v141) | 1;
                      v142 = &v10[v157];
                      v141 = 2 * v141 + 2;
                      v158 = *v138;
                      if (v141 >= v11)
                      {
                        v162 = *(v146 + 24 * v158);
                        v141 = v157;
                      }

                      else
                      {
                        v159 = 0;
                        v160 = 0;
                        v161 = 0;
                        v162 = *(v146 + 24 * v158);
                        do
                        {
                          v163 = *(v162 + 4 * v159);
                          if (v163 == *v142)
                          {
                            v161 = v159;
                          }

                          if (v163 == v142[1])
                          {
                            v160 = v159;
                          }

                          ++v159;
                        }

                        while (v159 != 6);
                        if (v161 >= v160)
                        {
                          v141 = v157;
                        }

                        else
                        {
                          ++v142;
                        }
                      }

                      v164 = 0;
                      v165 = 0;
                      v166 = 0;
                      v153 = *v142;
                      do
                      {
                        v167 = *(v162 + 4 * v164);
                        if (v167 == v153)
                        {
                          v166 = v164;
                        }

                        if (v167 == v154)
                        {
                          v165 = v164;
                        }

                        ++v164;
                      }

                      while (v164 != 6);
                      v152 = v156;
                    }

                    while (v166 >= v165);
                    *v156 = v154;
                  }
                }

                v139 = v140 - 1;
              }

              while (v140);
              do
              {
                result = 0;
                v168 = *v10;
                v170 = *a3;
                v169 = a3[1];
                v171 = v10;
                do
                {
                  v172 = &v171[result];
                  v173 = v172 + 1;
                  v174 = (2 * result) | 1;
                  result = 2 * result + 2;
                  if (result >= v11)
                  {
                    result = v174;
                  }

                  else
                  {
                    v175 = 0;
                    v176 = 0;
                    v177 = 0;
                    v180 = v172[2];
                    v179 = v172 + 2;
                    v178 = v180;
                    do
                    {
                      v181 = *(*(*v170 + 24 * *v169) + 4 * v175);
                      if (v181 == *(v179 - 1))
                      {
                        v177 = v175;
                      }

                      if (v181 == v178)
                      {
                        v176 = v175;
                      }

                      ++v175;
                    }

                    while (v175 != 6);
                    if (v177 >= v176)
                    {
                      result = v174;
                    }

                    else
                    {
                      v173 = v179;
                    }
                  }

                  *v171 = *v173;
                  v171 = v173;
                }

                while (result <= ((v11 - 2) >> 1));
                if (v173 == --a2)
                {
                  *v173 = v168;
                }

                else
                {
                  *v173 = *a2;
                  *a2 = v168;
                  v182 = (v173 - v10 + 4) >> 2;
                  v183 = v182 < 2;
                  v184 = v182 - 2;
                  if (!v183)
                  {
                    result = 0;
                    v185 = 0;
                    v186 = 0;
                    v187 = v184 >> 1;
                    v188 = &v10[v187];
                    v189 = *v188;
                    v190 = *v173;
                    v191 = *v170;
                    do
                    {
                      v192 = *(*(v191 + 24 * *v169) + 4 * result);
                      if (v192 == v189)
                      {
                        v186 = result;
                      }

                      if (v192 == v190)
                      {
                        v185 = result;
                      }

                      ++result;
                    }

                    while (result != 6);
                    if (v186 < v185)
                    {
                      do
                      {
                        v193 = v188;
                        *v173 = v189;
                        if (!v187)
                        {
                          break;
                        }

                        v194 = 0;
                        LODWORD(result) = 0;
                        v195 = 0;
                        v187 = (v187 - 1) >> 1;
                        v188 = &v10[v187];
                        v189 = *v188;
                        do
                        {
                          v196 = *(*(v191 + 24 * *v169) + 4 * v194);
                          if (v196 == v189)
                          {
                            v195 = v194;
                          }

                          if (v196 == v190)
                          {
                            result = v194;
                          }

                          else
                          {
                            result = result;
                          }

                          ++v194;
                        }

                        while (v194 != 6);
                        v173 = v193;
                      }

                      while (v195 < result);
                      *v193 = v190;
                    }
                  }
                }

                v183 = v11-- <= 2;
              }

              while (!v183);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = &v10[v11 >> 1];
          if (v11 < 0x81)
          {
          }

          else
          {
            v14 = *v9;
            *v9 = *v13;
            *v13 = v14;
          }

          --a4;
          v15 = *v9;
          v16 = a3[1];
          v17 = *v16;
          v18 = **a3;
          if (a5)
          {
            v19 = *(v18 + 24 * v17);
            break;
          }

          v20 = 0;
          v21 = 0;
          v22 = 0;
          v19 = *(v18 + 24 * v17);
          do
          {
            v23 = *(v19 + 4 * v20);
            if (v23 == *(v9 - 1))
            {
              v22 = v20;
            }

            if (v23 == v15)
            {
              v21 = v20;
            }

            ++v20;
          }

          while (v20 != 6);
          if (v22 < v21)
          {
            break;
          }

          v60 = 0;
          v61 = 0;
          v62 = 0;
          do
          {
            v63 = *(v19 + 4 * v60);
            if (v63 == v15)
            {
              v62 = v60;
            }

            if (v63 == *v212)
            {
              v61 = v60;
            }

            ++v60;
          }

          while (v60 != 6);
          v10 = v9;
          if (v62 >= v61)
          {
            do
            {
              if (++v10 >= a2)
              {
                break;
              }

              v70 = 0;
              v71 = 0;
              v72 = 0;
              do
              {
                v73 = *(v19 + 4 * v70);
                if (v73 == v15)
                {
                  v72 = v70;
                }

                if (v73 == *v10)
                {
                  v71 = v70;
                }

                ++v70;
              }

              while (v70 != 6);
            }

            while (v72 >= v71);
          }

          else
          {
            v10 = v9;
            do
            {
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v68 = v10[1];
              ++v10;
              v67 = v68;
              do
              {
                v69 = *(v19 + 4 * v64);
                if (v69 == v15)
                {
                  v66 = v64;
                }

                if (v69 == v67)
                {
                  v65 = v64;
                }

                ++v64;
              }

              while (v64 != 6);
            }

            while (v66 >= v65);
          }

          v74 = a2;
          if (v10 < a2)
          {
            v74 = a2;
            do
            {
              v75 = 0;
              v76 = 0;
              v77 = 0;
              v79 = *--v74;
              v78 = v79;
              do
              {
                v80 = *(v19 + 4 * v75);
                if (v80 == v15)
                {
                  v77 = v75;
                }

                if (v80 == v78)
                {
                  v76 = v75;
                }

                ++v75;
              }

              while (v75 != 6);
            }

            while (v77 < v76);
          }

          if (v10 < v74)
          {
            v81 = *v10;
            v82 = *v74;
            do
            {
              *v10 = v82;
              *v74 = v81;
              v83 = *(v18 + 24 * *v16);
              do
              {
                v84 = 0;
                v85 = 0;
                v86 = 0;
                v87 = v10[1];
                ++v10;
                v81 = v87;
                do
                {
                  v88 = *(v83 + 4 * v84);
                  if (v88 == v15)
                  {
                    v86 = v84;
                  }

                  if (v88 == v81)
                  {
                    v85 = v84;
                  }

                  ++v84;
                }

                while (v84 != 6);
              }

              while (v86 >= v85);
              do
              {
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v92 = *--v74;
                v82 = v92;
                do
                {
                  result = *(v83 + 4 * v89);
                  if (result == v15)
                  {
                    v91 = v89;
                  }

                  if (result == v82)
                  {
                    v90 = v89;
                  }

                  ++v89;
                }

                while (v89 != 6);
              }

              while (v91 < v90);
            }

            while (v10 < v74);
          }

          v93 = v10 - 1;
          if (v10 - 1 != v9)
          {
            *v9 = *v93;
          }

          a5 = 0;
          *v93 = v15;
        }

        v24 = v9;
        do
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = v24;
          v30 = v24[1];
          ++v24;
          v29 = v30;
          do
          {
            v31 = *(v19 + 4 * v25);
            if (v31 == v29)
            {
              v27 = v25;
            }

            if (v31 == v15)
            {
              v26 = v25;
            }

            ++v25;
          }

          while (v25 != 6);
        }

        while (v27 < v26);
        v32 = a2;
        if (v28 == v9)
        {
          v32 = a2;
          do
          {
            if (v24 >= v32)
            {
              break;
            }

            v39 = 0;
            v40 = 0;
            v41 = 0;
            v43 = *--v32;
            v42 = v43;
            do
            {
              v44 = *(v19 + 4 * v39);
              if (v44 == v42)
              {
                v41 = v39;
              }

              if (v44 == v15)
              {
                v40 = v39;
              }

              ++v39;
            }

            while (v39 != 6);
          }

          while (v41 >= v40);
        }

        else
        {
          do
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v37 = *--v32;
            v36 = v37;
            do
            {
              v38 = *(v19 + 4 * v33);
              if (v38 == v36)
              {
                v35 = v33;
              }

              if (v38 == v15)
              {
                v34 = v33;
              }

              ++v33;
            }

            while (v33 != 6);
          }

          while (v35 >= v34);
        }

        if (v24 < v32)
        {
          v45 = *v32;
          v46 = v24;
          v47 = v32;
          do
          {
            *v46 = v45;
            *v47 = v29;
            v48 = *(v18 + 24 * *v16);
            do
            {
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v28 = v46;
              v52 = v46[1];
              ++v46;
              v29 = v52;
              do
              {
                v53 = *(v48 + 4 * v49);
                if (v53 == v29)
                {
                  v51 = v49;
                }

                if (v53 == v15)
                {
                  v50 = v49;
                }

                ++v49;
              }

              while (v49 != 6);
            }

            while (v51 < v50);
            do
            {
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = *--v47;
              v45 = v57;
              do
              {
                v58 = *(v48 + 4 * v54);
                if (v58 == v45)
                {
                  v56 = v54;
                }

                if (v58 == v15)
                {
                  v55 = v54;
                }

                ++v54;
              }

              while (v54 != 6);
            }

            while (v56 >= v55);
          }

          while (v46 < v47);
        }

        if (v28 != v9)
        {
          *v9 = *v28;
        }

        *v28 = v15;
        if (v24 >= v32)
        {
          break;
        }

LABEL_73:
        a5 = 0;
        v10 = v28 + 1;
      }

      v10 = v28 + 1;
      if (result)
      {
        break;
      }

      if (!v59)
      {
        goto LABEL_73;
      }
    }

    a2 = v28;
    if (!v59)
    {
      continue;
    }

    return result;
  }
}

int *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::SidePermutation(std::vector<int> const&)::$_0 &,int *,0>(int *result, int *a2, int *a3, uint64_t **a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *a2;
  v8 = a4[1];
  v9 = *result;
  v10 = **a4;
  v11 = *(v10 + 24 * *v8);
  do
  {
    v12 = *(v11 + 4 * v4);
    if (v12 == v7)
    {
      v6 = v4;
    }

    if (v12 == v9)
    {
      v5 = v4;
    }

    ++v4;
  }

  while (v4 != 6);
  v13 = *a3;
  if (v6 >= v5)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(v11 + 4 * v18);
      if (v21 == v13)
      {
        v20 = v18;
      }

      if (v21 == v7)
      {
        v19 = v18;
      }

      ++v18;
    }

    while (v18 != 6);
    if (v20 < v19)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *a2 = v13;
      *a3 = v7;
      v25 = *a2;
      v26 = *result;
      v27 = *(v10 + 24 * *v8);
      do
      {
        v28 = *(v27 + 4 * v22);
        if (v28 == v25)
        {
          v24 = v22;
        }

        if (v28 == v26)
        {
          v23 = v22;
        }

        ++v22;
      }

      while (v22 != 6);
      if (v24 < v23)
      {
        *result = v25;
        *a2 = v26;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(v11 + 4 * v14);
      if (v17 == v13)
      {
        v16 = v14;
      }

      if (v17 == v7)
      {
        v15 = v14;
      }

      ++v14;
    }

    while (v14 != 6);
    if (v16 < v15)
    {
      *result = v13;
LABEL_39:
      *a3 = v9;
      return result;
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    *result = v7;
    *a2 = v9;
    v32 = *a3;
    v33 = *(v10 + 24 * *v8);
    do
    {
      v34 = *(v33 + 4 * v29);
      if (v34 == v32)
      {
        v31 = v29;
      }

      if (v34 == v9)
      {
        v30 = v29;
      }

      ++v29;
    }

    while (v29 != 6);
    if (v31 < v30)
    {
      *a2 = v32;
      goto LABEL_39;
    }
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::SidePermutation(std::vector<int> const&)::$_0 &,int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t **a6)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *a4;
  v17 = *a3;
  v18 = a6[1];
  v19 = **a6;
  v20 = *(v19 + 24 * *v18);
  do
  {
    v21 = *(v20 + 4 * v13);
    if (v21 == v16)
    {
      v15 = v13;
    }

    if (v21 == v17)
    {
      v14 = v13;
    }

    ++v13;
  }

  while (v13 != 6);
  if (v15 < v14)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    *a3 = v16;
    *a4 = v17;
    v25 = *a3;
    v26 = *a2;
    v20 = *(v19 + 24 * *v18);
    do
    {
      v27 = *(v20 + 4 * v22);
      if (v27 == v25)
      {
        v24 = v22;
      }

      if (v27 == v26)
      {
        v23 = v22;
      }

      ++v22;
    }

    while (v22 != 6);
    if (v24 < v23)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *a2 = v25;
      *a3 = v26;
      v31 = *a2;
      v32 = *a1;
      v20 = *(v19 + 24 * *v18);
      do
      {
        v33 = *(v20 + 4 * v28);
        if (v33 == v31)
        {
          v30 = v28;
        }

        if (v33 == v32)
        {
          v29 = v28;
        }

        ++v28;
      }

      while (v28 != 6);
      if (v30 < v29)
      {
        *a1 = v31;
        *a2 = v32;
        v20 = *(v19 + 24 * *v18);
      }
    }
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = *a5;
  v38 = *a4;
  do
  {
    v39 = *(v20 + 4 * v34);
    if (v39 == v37)
    {
      v36 = v34;
    }

    if (v39 == v38)
    {
      v35 = v34;
    }

    ++v34;
  }

  while (v34 != 6);
  if (v36 < v35)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    *a4 = v37;
    *a5 = v38;
    v43 = *a4;
    v44 = *a3;
    do
    {
      v45 = *(*(v19 + 24 * *v18) + 4 * v40);
      if (v45 == v43)
      {
        v42 = v40;
      }

      if (v45 == v44)
      {
        v41 = v40;
      }

      ++v40;
    }

    while (v40 != 6);
    if (v42 < v41)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      *a3 = v43;
      *a4 = v44;
      v49 = *a3;
      v50 = *a2;
      do
      {
        v51 = *(*(v19 + 24 * *v18) + 4 * v46);
        if (v51 == v49)
        {
          v48 = v46;
        }

        if (v51 == v50)
        {
          v47 = v46;
        }

        ++v46;
      }

      while (v46 != 6);
      if (v48 < v47)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *a2 = v49;
        *a3 = v50;
        v55 = *a2;
        v56 = *a1;
        v57 = *(v19 + 24 * *v18);
        do
        {
          v58 = *(v57 + 4 * v52);
          if (v58 == v55)
          {
            v54 = v52;
          }

          if (v58 == v56)
          {
            v53 = v52;
          }

          ++v52;
        }

        while (v52 != 6);
        if (v54 < v53)
        {
          *a1 = v55;
          *a2 = v56;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::SidePermutation(std::vector<int> const&)::$_0 &,int *>(int *a1, int *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        break;
      case 4:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = *(a2 - 1);
        v34 = a1[2];
        v35 = a3[1];
        v36 = **a3;
        do
        {
          v37 = *(*(v36 + 24 * *v35) + 4 * v30);
          if (v37 == v33)
          {
            v32 = v30;
          }

          if (v37 == v34)
          {
            v31 = v30;
          }

          ++v30;
        }

        while (v30 != 6);
        if (v32 < v31)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          a1[2] = v33;
          *(a2 - 1) = v34;
          v42 = a1[1];
          v41 = a1[2];
          do
          {
            v43 = *(*(v36 + 24 * *v35) + 4 * v38);
            if (v43 == v41)
            {
              v40 = v38;
            }

            if (v43 == v42)
            {
              v39 = v38;
            }

            ++v38;
          }

          while (v38 != 6);
          if (v40 < v39)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            a1[1] = v41;
            a1[2] = v42;
            v47 = *a1;
            v48 = *(v36 + 24 * *v35);
            do
            {
              v49 = *(v48 + 4 * v44);
              if (v49 == v41)
              {
                v46 = v44;
              }

              if (v49 == v47)
              {
                v45 = v44;
              }

              ++v44;
            }

            while (v44 != 6);
            if (v46 < v45)
            {
              *a1 = v41;
              a1[1] = v47;
            }
          }
        }

        return 1;
      case 5:
        break;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a2 - 1);
    v11 = *a1;
    do
    {
      v12 = *(*(**a3 + 24 * *a3[1]) + 4 * v7);
      if (v12 == v10)
      {
        v9 = v7;
      }

      if (v12 == v11)
      {
        v8 = v7;
      }

      ++v7;
    }

    while (v7 != 6);
    if (v9 < v8)
    {
      *a1 = v10;
      *(a2 - 1) = v11;
    }

    return 1;
  }

LABEL_17:
  v13 = a1 + 2;
  v14 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = a3[1];
  v17 = **a3;
  while (1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *v14;
    v22 = *v13;
    do
    {
      v23 = *(*(v17 + 24 * *v16) + 4 * v18);
      if (v23 == v21)
      {
        v20 = v18;
      }

      if (v23 == v22)
      {
        v19 = v18;
      }

      ++v18;
    }

    while (v18 != 6);
    if (v20 < v19)
    {
      v24 = v14;
      while (1)
      {
        *v24 = v22;
        if (v13 == a1)
        {
          break;
        }

        v24 = v13;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = *--v13;
        v22 = v28;
        do
        {
          v29 = *(*(v17 + 24 * *v16) + 4 * v25);
          if (v29 == v21)
          {
            v27 = v25;
          }

          if (v29 == v22)
          {
            v26 = v25;
          }

          ++v25;
        }

        while (v25 != 6);
        if (v27 >= v26)
        {
          goto LABEL_37;
        }
      }

      v24 = a1;
LABEL_37:
      *v24 = v21;
      if (++v15 == 8)
      {
        return v14 + 1 == a2;
      }
    }

    v13 = v14++;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(char **a1, uint64_t a2)
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
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
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
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_25D26460C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, id **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<NSString * {__strong}>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong},std::less<NSString * {__strong}>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2, uint64_t a3, id **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

float OU3DObjectRGBSizeRefiner::ComputeOverlapScore<float>(int a1, void *a2, uint64_t *a3, box3d *a4)
{
  v4 = 0;
  v5 = *a3;
  v6 = 0.0;
  do
  {
    if (*(v5 + v4))
    {
      v7 = *(*a2 + 4 * v4);
      if (v7 != 0.0)
      {
        v6 = v6 + ((v7 * *(v5 + v4)) / 255.0);
      }
    }

    ++v4;
  }

  while (v4 != 49152);
  v8 = v6;
  v9 = boxVolume(a4);
  return v8 / (pow(v9, 0.125) * 10000.0);
}

float OU3DObjectRGBSizeRefiner::ComputeOverlapScore<unsigned char>(int a1, void *a2, uint64_t *a3, box3d *a4)
{
  v4 = 0;
  v5 = *a3;
  v6 = 0.0;
  do
  {
    v7 = *(*a2 + v4);
    if (*(v5 + v4))
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v6 = v6 + ((*(v5 + v4) * v7) / 255.0);
    }

    ++v4;
  }

  while (v4 != 49152);
  v9 = v6;
  v10 = boxVolume(a4);
  return v9 / (pow(v10, 0.125) * 10000.0);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2080;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void *utils::OUImageUtils::ResizeImageRGBA(utils::OUImageUtils *this, CVPixelBufferRef pixelBuffer, int a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v7 = PixelFormatType;
  if (PixelFormatType != 1111970369 && PixelFormatType != 1380401729)
  {
    v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding(PixelFormatType, v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::ResizeImageRGBA();
    }

    goto LABEL_20;
  }

  kdebug_trace();
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v10 = Height;
  if (Width > Height)
  {
    v11 = a3;
  }

  else
  {
    v11 = ((Height / Width) * a3);
  }

  if (Width > Height)
  {
    v12 = ((Width / Height) * a3);
  }

  else
  {
    v12 = a3;
  }

  v13 = MEMORY[0x25F895950](&dest, v11, v12, 32, 0);
  if (v13)
  {
    v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::ResizeImageRGBA();
    }

LABEL_20:

    return 0;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  *color = -16777216;
  vImageBufferFill_ARGB8888(&dest, color, 0);
  src.data = CVPixelBufferGetBaseAddress(pixelBuffer);
  src.height = v10;
  src.width = Width;
  src.rowBytes = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v16 = vImageScale_ARGB8888(&src, &dest, 0, 0);
  if (v16)
  {
    v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v16, v17);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::ResizeImageRGBA();
    }

    goto LABEL_20;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  src.data = 0;
  if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], dest.width, dest.height, v7, dest.data, dest.rowBytes, 0, 0, 0, &src))
  {
    free(dest.data);
    v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v18, v19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::ResizeImageRGBA();
    }

    goto LABEL_20;
  }

  kdebug_trace();
  return src.data;
}

CVPixelBufferRef utils::OUImageUtils::SquareCropImage(void **a1, __CVBuffer *a2, double a3, int32x2_t a4, unsigned int a5)
{
  v5 = LODWORD(a3);
  v6 = HIDWORD(a3);
  v7 = a4.i32[0];
  v8 = a4.i32[1];
  if ((LODWORD(a3) | a4.i32[0] | HIDWORD(a3) | a4.i32[1]) < 0)
  {
    return 0;
  }

  kdebug_trace();
  v12 = v7 - v8;
  if (v7 - v8 < 0)
  {
    v12 = v8 - v7;
  }

  v13 = v12 >> 1;
  HIDWORD(v14) = HIDWORD(a3);
  LODWORD(v15) = LODWORD(a3);
  HIDWORD(v15) = v13 + v6;
  v16 = COERCE_DOUBLE(vdup_lane_s32(a4, 0));
  LODWORD(v14) = v13 + v5;
  v17 = v14;
  v18 = COERCE_DOUBLE(vdup_lane_s32(a4, 1));
  if (v7 > v8)
  {
    v16 = v18;
    v15 = v17;
  }

  v19 = utils::OUImageUtils::CropAndResizeImage(a1, a2, v15, v16, COERCE_DOUBLE(vdup_n_s32(a5)));
  if ((v20 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v21 = v19;
  kdebug_trace();
  return v21;
}

CVPixelBufferRef utils::OUImageUtils::CropAndResizeImage(void **a1, CVPixelBufferRef pixelBuffer, double a3, double a4, double a5)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v10 = PixelFormatType;
  v11 = 4;
  if (PixelFormatType != 1380401729 && PixelFormatType != 1111970369)
  {
    if (PixelFormatType != 24)
    {
      v21 = _OULoggingGetOSLogForCategoryObjectUnderstanding(PixelFormatType, v9);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        utils::OUImageUtils::CropAndResizeImage();
      }

      goto LABEL_14;
    }

    v11 = 3;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v14.i64[0] = SLODWORD(a4);
  v14.i64[1] = SHIDWORD(a4);
  *&src.height = vextq_s8(v14, v14, 8uLL);
  src.rowBytes = BytesPerRow;
  src.data = &BaseAddress[v11 * LODWORD(a3) + HIDWORD(a3) * BytesPerRow];
  dest.data = utils::OUImageUtils::FindOrCreateBuffer(a1, SLODWORD(a5), SHIDWORD(a5), v11);
  dest.height = SHIDWORD(a5);
  dest.width = SLODWORD(a5);
  dest.rowBytes = v11 * SLODWORD(a5);
  v15 = vImageScale_ARGB8888(&src, &dest, a1[3], 0);
  v16 = CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  if (v15)
  {
    v18 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::CropAndResizeImage();
    }

    free(dest.data);
    return 0;
  }

  v25 = 0;
  if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], SLODWORD(a5), SHIDWORD(a5), v10, dest.data, dest.rowBytes, 0, 0, 0, &v25))
  {
    free(dest.data);
    v21 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      utils::OUImageUtils::CropAndResizeImage();
    }

LABEL_14:

    return 0;
  }

  return v25;
}

CVPixelBufferRef utils::OUImageUtils::CropImage(void **a1, __CVBuffer *a2, double a3, double a4)
{
  kdebug_trace();
  v8 = utils::OUImageUtils::CropAndResizeImage(a1, a2, a3, a4, a4);
  kdebug_trace();
  return v8;
}

void *utils::OUImageUtils::FindOrCreateBuffer(utils::OUImageUtils *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *this; i != *(this + 1); i += 4)
  {
    v9 = i[3];
    if (*i == a2 && i[1] == a3 && i[2] == a4 && v9 != 0)
    {
      return v9;
    }
  }

  v13 = malloc_type_malloc(a3 * a2 * a4, 0x100004077774924uLL);
  v9 = v13;
  v14 = *(this + 1);
  v15 = *(this + 2);
  if (v14 >= v15)
  {
    v17 = (v14 - *this) >> 5;
    v18 = v17 + 1;
    if ((v17 + 1) >> 59)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v19 = v15 - *this;
    if (v19 >> 4 > v18)
    {
      v18 = v19 >> 4;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFE0)
    {
      v20 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<utils::OUImageUtils::PreAllocateInfo>>(this, v20);
    }

    v21 = (32 * v17);
    *v21 = a2;
    v21[1] = a3;
    v21[2] = a4;
    v21[3] = v13;
    v16 = 32 * v17 + 32;
    v22 = *(this + 1) - *this;
    v23 = (32 * v17 - v22);
    memcpy(v23, *this, v22);
    v24 = *this;
    *this = v23;
    *(this + 1) = v16;
    *(this + 2) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v14 = a2;
    v14[1] = a3;
    v16 = (v14 + 4);
    v14[2] = a4;
    v14[3] = v13;
  }

  *(this + 1) = v16;
  return v9;
}

uint64_t utils::ConvertCVPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  utils::ConvertCVPixelBuffer(__CVBuffer *,__CVBuffer *,std::function<long ()(vImage_Buffer const*,vImage_Buffer const*)> const&)::$_0::operator()(a1, v9);
  utils::ConvertCVPixelBuffer(__CVBuffer *,__CVBuffer *,std::function<long ()(vImage_Buffer const*,vImage_Buffer const*)> const&)::$_0::operator()(a2, __p);
  v6 = std::function<long ()(vImage_Buffer const*,vImage_Buffer const*)>::operator()(a3, v9[0], __p[0]);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return v6;
}

void sub_25D26527C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *utils::ConvertCVPixelBuffer(__CVBuffer *,__CVBuffer *,std::function<long ()(vImage_Buffer const*,vImage_Buffer const*)> const&)::$_0::operator()@<X0>(__CVBuffer *a1@<X0>, uint64_t *a2@<X8>)
{
  if (CVPixelBufferIsPlanar(a1))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a1);
    result = std::vector<vImage_Buffer>::vector[abi:ne200100](a2, PlaneCount);
    if (!PlaneCount)
    {
      return result;
    }
  }

  else
  {
    PlaneCount = 1;
    std::vector<vImage_Buffer>::vector[abi:ne200100](a2, 1uLL);
  }

  v6 = 0;
  for (i = 0; i != PlaneCount; ++i)
  {
    *(*a2 + v6 + 16) = CVPixelBufferGetWidthOfPlane(a1, i);
    *(*a2 + v6 + 8) = CVPixelBufferGetHeightOfPlane(a1, i);
    *(*a2 + v6 + 24) = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
    result = CVPixelBufferGetBaseAddressOfPlane(a1, i);
    *(*a2 + v6) = result;
    v6 += 32;
  }

  return result;
}

void sub_25D265390(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<long ()(vImage_Buffer const*,vImage_Buffer const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t utils::ConvertDepthF32ToU16(utils *this, __CVBuffer **a2, __CVBuffer **a3, uint64_t a4, unsigned int a5)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v10[0] = &unk_286EBC6F0;
  v10[3] = v10;
  v8 = utils::ConvertCVPixelBuffer(this, v7, v10);
  std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](v10);
  return v8;
}

void sub_25D2654B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CVBuffer *utils::anonymous namespace::CheckCVPixelBuffers(utils::_anonymous_namespace_ *this, __CVBuffer *a2, CVPixelBufferRef *a3, __CVBuffer **a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid in_buffer.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v4 = a4;
  v6 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType != v6)
  {
    v18 = _OULoggingGetOSLogForCategoryObjectUnderstanding(PixelFormatType, v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v19, &unk_25D2878C2);
    __cxa_throw(v19, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  if (*a3)
  {
    result = CVPixelBufferGetPixelFormatType(*a3);
    if (result != v4)
    {
      v12 = _OULoggingGetOSLogForCategoryObjectUnderstanding(result, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
      }

      v13 = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](v13, &unk_25D2878C2);
      __cxa_throw(v13, off_2799C3FC0, MEMORY[0x277D82610]);
    }
  }

  else
  {
    v14 = _OULoggingGetOSLogForCategoryObjectUnderstanding(0, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "OUImageUtils";
      _os_log_impl(&dword_25D1DB000, v14, OS_LOG_TYPE_INFO, "[%s] creating out_buffer; user is responsible to release the buffer.", &v20, 0xCu);
    }

    WidthOfPlane = CVPixelBufferGetWidthOfPlane(this, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(this, 0);
    result = CreateCVPixelBuffer(WidthOfPlane, HeightOfPlane);
    *a3 = result;
  }

  return result;
}

uint64_t utils::ConvertColor32BGRATo420f(utils *this, CVPixelBufferRef *a2, __CVBuffer **a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10 = *ymmword_25D279C10;
  if ((byte_27FC2EDA0 & 1) == 0)
  {
    v5 = *MEMORY[0x277CB86C8];
    utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::conversion_info = 0u;
    *algn_27FC2ED30 = 0u;
    xmmword_27FC2ED40 = 0u;
    unk_27FC2ED50 = 0u;
    xmmword_27FC2ED60 = 0u;
    unk_27FC2ED70 = 0u;
    xmmword_27FC2ED80 = 0u;
    unk_27FC2ED90 = 0u;
    byte_27FC2EDA0 = 1;
    if (vImageConvert_ARGBToYpCbCr_GenerateConversion(v5, &v10, &utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::conversion_info, kvImageARGB8888, kvImage420Yp8_CbCr8, 0))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25F894AD0](exception, "failed to create conversion info.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v6 = *a2;
  v11[0] = &unk_286EBC780;
  v11[3] = v11;
  v7 = utils::ConvertCVPixelBuffer(this, v6, v11);
  std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](v11);
  return v7;
}

uint64_t utils::ConvertColor420fTo32BGRA(utils *this, CVPixelBufferRef *a2, __CVBuffer **a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10 = *ymmword_25D279C10;
  if ((byte_27FC2EE30 & 1) == 0)
  {
    v5 = *MEMORY[0x277CB86E0];
    utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::conversion_info = 0u;
    unk_27FC2EDC0 = 0u;
    xmmword_27FC2EDD0 = 0u;
    unk_27FC2EDE0 = 0u;
    xmmword_27FC2EDF0 = 0u;
    unk_27FC2EE00 = 0u;
    xmmword_27FC2EE10 = 0u;
    unk_27FC2EE20 = 0u;
    byte_27FC2EE30 = 1;
    if (vImageConvert_YpCbCrToARGB_GenerateConversion(v5, &v10, &utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::conversion_info, kvImage420Yp8_CbCr8, kvImageARGB8888, 0))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25F894AD0](exception, "failed to create conversion info.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v6 = *a2;
  v11[0] = &unk_286EBC800;
  v11[3] = v11;
  v7 = utils::ConvertCVPixelBuffer(this, v6, v11);
  std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](v11);
  return v7;
}

uint64_t utils::ConvertLabelL008To32BGRA(utils *this, CVPixelBufferRef *a2, __CVBuffer **a3)
{
  CVPixelBufferLockBaseAddress(this, 1uLL);
  CVPixelBufferLockBaseAddress(*a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  v6 = CVPixelBufferGetBaseAddress(*a2);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v10 = CVPixelBufferGetBytesPerRow(*a2);
  bzero(v6, v10 * Height);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        v12 = 0;
        v13 = 2;
        do
        {
          v6[v13] = BaseAddress[v12++];
          v13 += 4;
        }

        while (Width != v12);
      }

      BaseAddress += BytesPerRow;
      v6 += v10;
    }
  }

  CVPixelBufferUnlockBaseAddress(this, 1uLL);
  v14 = *a2;

  return CVPixelBufferUnlockBaseAddress(v14, 0);
}

uint64_t utils::ConvertConfidenceL00fToVote32BGRA(utils *this, CVPixelBufferRef *a2, __CVBuffer **a3)
{
  CVPixelBufferLockBaseAddress(this, 1uLL);
  CVPixelBufferLockBaseAddress(*a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  v6 = CVPixelBufferGetBaseAddress(*a2);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v10 = CVPixelBufferGetBytesPerRow(*a2);
  bzero(v6, v10 * Height);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        v12 = 0;
        v13 = Width;
        do
        {
          if (*&BaseAddress[v12] > 0.0)
          {
            v6[v12 + 2] = 1;
          }

          v12 += 4;
          --v13;
        }

        while (v13);
      }

      BaseAddress += BytesPerRow;
      v6 += v10;
    }
  }

  CVPixelBufferUnlockBaseAddress(this, 1uLL);
  v14 = *a2;

  return CVPixelBufferUnlockBaseAddress(v14, 0);
}

void utils::WriteToTiff(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = a5;
  v9 = MEMORY[0x277CBEBC0];
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  v12 = [v9 fileURLWithPath:v11];

  v13 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a1];
  [v14 writeTIFFRepresentationOfImage:v13 toURL:v12 format:a3 colorSpace:a4 options:MEMORY[0x277CBEC10] error:0];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<utils::OUImageUtils::PreAllocateInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<vImage_Buffer>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<vImage_Buffer>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25D265E24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<vImage_Buffer>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vImage_Buffer>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vImage_Buffer>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__func<utils::ConvertDepthF32ToU16(__CVBuffer *,__CVBuffer *&)::$_0,std::allocator<utils::ConvertDepthF32ToU16(__CVBuffer *,__CVBuffer *&)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

vImage_Error std::__function::__func<utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::$_0,std::allocator<utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::operator()(uint64_t a1, const vImage_Buffer **a2, const vImage_Buffer **a3)
{
  v3 = *a2;
  v4 = *a3;
  *permuteMap = 66051;
  if ((byte_27FC2EDA0 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return vImageConvert_ARGB8888To420Yp8_CbCr8(v3, v4, v4 + 1, &utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::conversion_info, permuteMap, 0);
}

uint64_t std::__function::__func<utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::$_0,std::allocator<utils::ConvertColor32BGRATo420f(__CVBuffer *,__CVBuffer *&)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

vImage_Error std::__function::__func<utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::$_0,std::allocator<utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::operator()(uint64_t a1, const vImage_Buffer **a2, const vImage_Buffer **a3)
{
  v3 = *a2;
  v4 = *a3;
  *permuteMap = 66051;
  if ((byte_27FC2EE30 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return vImageConvert_420Yp8_CbCr8ToARGB8888(v3, v3 + 1, v4, &utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::conversion_info, permuteMap, 0xFFu, 0);
}

uint64_t std::__function::__func<utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::$_0,std::allocator<utils::ConvertColor420fTo32BGRA(__CVBuffer *,__CVBuffer *&)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id GenerateCIImage(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBF758]) initWithMTLTexture:v1 options:0];

  return v2;
}

void DownloadMTLTexture(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 width];
    v6 = [v4 height];
    v7 = *a2;
    memset(v8, 0, 24);
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = 1;
    [v4 getBytes:v7 bytesPerRow:objc_msgSend(v4 fromRegion:"width") mipmapLevel:{v8, 0}];
  }
}

BOOL IsObjectBelongType(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = *a2 + 8;
    do
    {
      v6 = *(v5 - 8);
      v7 = v6 == v3;
      v8 = v6 == v3 || v5 == v4;
      v5 += 8;
    }

    while (!v8);
  }

  return v7;
}

__CFString *ObjectTypeConversion(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"Shelf"])
  {
    v2 = @"Cabinet";
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v2;
}

uint64_t utils::OUFrameWriter::OUFrameWriter(uint64_t a1, std::string *a2, uint64_t a3, char a4)
{
  v31 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a4;
  v5 = (a1 + 40);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>((a1 + 40), a2);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = (a1 + 64);
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0u;
  v7 = (a1 + 176);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v24);
  buf.__pn_.__r_.__value_.__s.__data_[0] = 48;
  v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v25, &buf);
  *(v8 + *(*v8 - 24) + 24) = 8;
  MEMORY[0x25F894C80]();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v24, &buf);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = buf;
  std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v5->__pn_, a1 + 8);
  std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&__p, "cvplayer");
  std::__fs::filesystem::operator/[abi:ne200100](&buf, &__p, v5);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *&buf.__pn_.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&buf.__pn_.__r_.__value_.__l + 2);
  *(&buf.__pn_.__r_.__value_.__s + 23) = 0;
  buf.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = std::__fs::filesystem::__status(v5, 0);
  if (buf.__pn_.__r_.__value_.__s.__data_[0] && buf.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    v13 = _OULoggingGetOSLogForCategoryObjectUnderstanding(*&v9, *&v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v5;
      if (*(a1 + 63) < 0)
      {
        v14 = v5->__pn_.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__pn_.__r_.__value_.__r.__words + 4) = "OUFrameWriter";
      WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = v14;
      _os_log_impl(&dword_25D1DB000, v13, OS_LOG_TYPE_INFO, "[%s] path %s already exists; override existing dataset.", &buf, 0x16u);
    }
  }

  else
  {
    directories = std::__fs::filesystem::__create_directories(v5, 0);
    if (directories)
    {
      goto LABEL_17;
    }

    v13 = _OULoggingGetOSLogForCategoryObjectUnderstanding(directories, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      utils::OUFrameWriter::OUFrameWriter(a1, v5, v13);
    }
  }

LABEL_17:
  std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&__p, "color");
  std::__fs::filesystem::operator/[abi:ne200100](&buf, &__p, a1 + 64);
  std::__fs::filesystem::__create_directories(&buf, 0);
  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&__p, "depth");
  std::__fs::filesystem::operator/[abi:ne200100](&buf, &__p, a1 + 64);
  std::__fs::filesystem::__create_directories(&buf, 0);
  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&__p, "label");
  std::__fs::filesystem::operator/[abi:ne200100](&buf, &__p, a1 + 64);
  std::__fs::filesystem::__create_directories(&buf, 0);
  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&__p, "vote");
  std::__fs::filesystem::operator/[abi:ne200100](&buf, &__p, a1 + 64);
  std::__fs::filesystem::__create_directories(&buf, 0);
  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = objc_alloc_init(MEMORY[0x277CBF740]);
  v16 = *(a1 + 224);
  *(a1 + 224) = v15;

  *(a1 + 232) = CGColorSpaceCreateDeviceRGB();
  *(a1 + 240) = CGColorSpaceCreateDeviceGray();
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = *v7;
  *v7 = v17;

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = *(a1 + 184);
  *(a1 + 184) = v19;

  v24[0] = *MEMORY[0x277D82818];
  v21 = *(MEMORY[0x277D82818] + 72);
  *(v24 + *(v24[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v25 = v21;
  v26 = MEMORY[0x277D82878] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](&v29);
  return a1;
}

void sub_25D2669A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (*(v18 - 73) < 0)
  {
    operator delete(*(v18 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);

  if (*(v15 + 87) < 0)
  {
    operator delete(*v17);
  }

  if (*(v15 + 63) < 0)
  {
    operator delete(*v16);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_25D266CFC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v1);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *__return_ptr a1@<X8>, std::__fs::filesystem::path *this@<X1>, uint64_t a3@<X0>)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a1->__pn_, *a3, *(a3 + 8));
  }

  else
  {
    a1->__pn_ = *a3;
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a1, this);
}

void sub_25D266EEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](a1 + 128);
  return a1;
}

void utils::OUFrameWriter::~OUFrameWriter(utils::OUFrameWriter *this)
{
  CVPixelBufferRelease(*(this + 24));
  CVPixelBufferRelease(*(this + 25));
  CVPixelBufferRelease(*(this + 26));
  CVPixelBufferRelease(*(this + 27));
  CGColorSpaceRelease(*(this + 29));
  CGColorSpaceRelease(*(this + 30));

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void utils::OUFrameWriter::Write(utils::OUFrameWriter *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *a1 + 1;
  *a1 = v6;
  utils::OUFrameWriter::WriteFrame(a1, v7, v6);
  utils::OUFrameWriter::WriteKeyframe(a1, v5);
}

void utils::OUFrameWriter::WriteFrame(utils::OUFrameWriter *this, _OUFrame *a2, unint64_t a3)
{
  v146 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v116 = v5;
    v7 = [(_OUFrame *)v5 sceneCamera];
    v117 = v7;
    [v7 imageResolution];
    v127 = v8;
    [v7 imageResolution];
    v124 = v9;
    Width = CVPixelBufferGetWidth([(_OUFrame *)v6 sceneDepthBuffer]);
    Height = CVPixelBufferGetHeight([(_OUFrame *)v6 sceneDepthBuffer]);
    v12 = Height;
    v14 = v127 != Width || Height != v124;
    v15 = [v7 intrinsics];
    if (v14)
    {
      v114 = v17;
      v118 = v18;
      v120 = v19;
      v20.f64[0] = v127;
      v20.f64[1] = v124;
      v21.i64[0] = Width;
      v21.i64[1] = v12;
      v22 = vdivq_f64(vcvtq_f64_u64(v21), v20);
      v23 = v22.f64[1];
      v112 = v22;
      if (vabdd_f64(v22.f64[0], v22.f64[1]) > 0.000001)
      {
        v24 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v15, v16);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "OUFrameWriter";
          _os_log_impl(&dword_25D1DB000, v24, OS_LOG_TYPE_INFO, "[%s] downsample factor is not the same in x and y direction.", buf, 0xCu);
        }
      }

      *&v25 = v112.f64[0] * v114.f32[0];
      v26.i64[0] = __PAIR64__(v114.u32[1], v25);
      v26.i64[1] = v114.u32[2];
      v125 = v26;
      *&v27 = v23 * v118.f32[1];
      v28.i64[0] = __PAIR64__(v27, v118.u32[0]);
      v28.i64[1] = v118.u32[2];
      v128 = v28;
      *v26.f32 = vcvt_f32_f64(vmulq_f64(v112, vcvtq_f64_f32(*v120.i8)));
      v26.i64[1] = vextq_s8(v120, v120, 8uLL).u32[0];
      v121 = v26;
    }

    else
    {
      v17.i32[3] = 0;
      v18.i32[3] = 0;
      v19.i32[3] = 0;
      v121 = v19;
      v125 = v17;
      v128 = v18;
    }

    if (*(this + 160) != 1)
    {
      goto LABEL_22;
    }

    v29 = vceq_s32(*(this + 96), __PAIR64__(v12, Width));
    if ((vpmin_u32(v29, v29).u32[0] & 0x80000000) != 0)
    {
      v30 = vandq_s8(vandq_s8(vceqq_f32(*(this + 8), v128), vceqq_f32(*(this + 7), v125)), vceqq_f32(*(this + 9), v121));
      v30.i32[3] = v30.i32[2];
      if ((vminvq_u32(v30) & 0x80000000) != 0)
      {
        goto LABEL_21;
      }
    }

    v31 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v15, v16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "OUFrameWriter";
      _os_log_impl(&dword_25D1DB000, v31, OS_LOG_TYPE_INFO, "[%s] camera parameter have changed; the latest one will be saved.", buf, 0xCu);
    }

    if (*(this + 160))
    {
LABEL_21:
      *(this + 7) = v125;
      *(this + 8) = v128;
      *(this + 9) = v121;
    }

    else
    {
LABEL_22:
      *(this + 7) = v125;
      *(this + 8) = v128;
      *(this + 9) = v121;
      *(this + 160) = 1;
    }

    *(this + 12) = __PAIR64__(v12, Width);
    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v142, "camera.txt");
    std::__fs::filesystem::operator/[abi:ne200100](&v144, &v142, this + 64);
    if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v144;
    }

    else
    {
      v32 = v144.__r_.__value_.__r.__words[0];
    }

    std::ofstream::basic_ofstream(buf, v32, 16);
    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    if ((*(this + 160) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v33 = MEMORY[0x25F894C70](buf, *(this + 12));
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " ", 1);
    v35 = MEMORY[0x25F894C70](v34, *(this + 25));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " ", 1);
    v36 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " ", 1);
    v37 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " ", 1);
    v38 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " ", 1);
    std::ostream::operator<<();
    if (!std::filebuf::close())
    {
      std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
    }

    if (*(this + 31) >= 0)
    {
      v39 = *(this + 31);
    }

    else
    {
      v39 = *(this + 2);
    }

    v40 = &v142;
    std::string::basic_string[abi:ne200100](&v142, v39 + 1);
    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = v142.__r_.__value_.__r.__words[0];
    }

    if (v39)
    {
      if (*(this + 31) >= 0)
      {
        v41 = this + 8;
      }

      else
      {
        v41 = *(this + 1);
      }

      memmove(v40, v41, v39);
    }

    *(&v40->__r_.__value_.__l.__data_ + v39) = 95;
    std::to_string(&v140, a3);
    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v140;
    }

    else
    {
      v42 = v140.__r_.__value_.__r.__words[0];
    }

    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v140.__r_.__value_.__l.__size_;
    }

    v44 = std::string::append(&v142, v42, size);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v144.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v144.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v144, ".tiff", 5uLL);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v131.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v131.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v140, "color");
    std::__fs::filesystem::operator/[abi:ne200100](&v142, &v140, this + 64);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v138.__pn_, &v131);
    std::__fs::filesystem::operator/[abi:ne200100](&v144, &v138, &v142);
    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v130, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v130 = v144;
    }

    if (SHIBYTE(v138.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    v48 = [(_OUFrame *)v6 GetSceneColorBufferBGRA];
    v49 = v48;
    v50 = MEMORY[0x277CBF970];
    if (v14)
    {
      CVPixelBuffer = *(this + 24);
      if (!CVPixelBuffer)
      {
        CVPixelBuffer = CreateCVPixelBuffer(Width, v12);
        *(this + 24) = CVPixelBuffer;
      }

      v144.__r_.__value_.__r.__words[0] = &unk_286EBC880;
      v145 = &v144;
      v52 = utils::ConvertCVPixelBuffer(v49, CVPixelBuffer, &v144);
      v53 = std::__function::__value_func<long ()(vImage_Buffer const*,vImage_Buffer const*)>::~__value_func[abi:ne200100](&v144);
      if (v52)
      {
        v55 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v53, v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          LODWORD(v144.__r_.__value_.__l.__data_) = 136315138;
          *(v144.__r_.__value_.__r.__words + 4) = "OUFrameWriter";
          _os_log_impl(&dword_25D1DB000, v55, OS_LOG_TYPE_INFO, "[%s] failed to downsample color image.", &v144, 0xCu);
        }
      }

      else
      {
        utils::WriteToTiff(*(this + 24), &v130, *v50, *(this + 29), *(this + 28));
      }
    }

    else
    {
      utils::WriteToTiff(v48, &v130, *MEMORY[0x277CBF970], *(this + 29), *(this + 28));
    }

    v56 = [(_OUFrame *)v6 sceneDepthBuffer];
    v60 = utils::ConvertDepthF32ToU16(v56, this + 25, v57, v58, v59);
    if (v60)
    {
      v62 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v60, v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        LODWORD(v144.__r_.__value_.__l.__data_) = 136315138;
        *(v144.__r_.__value_.__r.__words + 4) = "OUFrameWriter";
        _os_log_impl(&dword_25D1DB000, v62, OS_LOG_TYPE_INFO, "[%s] failed to convert depth image.", &v144, 0xCu);
      }
    }

    else
    {
      v63 = *(this + 25);
      std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v138.__pn_, "depth");
      std::__fs::filesystem::operator/[abi:ne200100](&v140, &v138, this + 64);
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &v131);
      std::__fs::filesystem::operator/[abi:ne200100](&v142, &__p, &v140);
      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v144, v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
      }

      else
      {
        v144 = v142;
      }

      utils::WriteToTiff(v63, &v144, *MEMORY[0x277CBF980], *(this + 30), *(this + 28));
      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v142.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__pn_.__r_.__value_.__l.__data_);
      }
    }

    v64 = [(_OUFrame *)v6 semanticLabelBuffer];
    utils::ConvertLabelL008To32BGRA(v64, this + 26, v65);
    v66 = *(this + 26);
    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v138.__pn_, "label");
    std::__fs::filesystem::operator/[abi:ne200100](&v140, &v138, this + 64);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &v131);
    std::__fs::filesystem::operator/[abi:ne200100](&v142, &__p, &v140);
    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v144, v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
    }

    else
    {
      v144 = v142;
    }

    v67 = *v50;
    utils::WriteToTiff(v66, &v144, v67, *(this + 29), *(this + 28));
    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__pn_.__r_.__value_.__l.__data_);
    }

    v68 = [(_OUFrame *)v6 semanticConfidenceBuffer];
    utils::ConvertConfidenceL00fToVote32BGRA(v68, this + 27, v69);
    v70 = *(this + 27);
    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v138.__pn_, "vote");
    std::__fs::filesystem::operator/[abi:ne200100](&v140, &v138, this + 64);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &v131);
    std::__fs::filesystem::operator/[abi:ne200100](&v142, &__p, &v140);
    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v144, v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
    }

    else
    {
      v144 = v142;
    }

    utils::WriteToTiff(v70, &v144, v67, *(this + 29), *(this + 28));
    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__pn_.__r_.__value_.__l.__data_);
    }

    v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *this];
    v72 = *(this + 22);
    v132 = @"timestamp";
    v73 = MEMORY[0x277CCABB0];
    v119 = v71;
    [(_OUFrame *)v6 timestamp];
    v74 = [v73 numberWithDouble:?];
    v133 = v74;
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
    [v72 setObject:v75 forKey:v71];

    v76 = *(this + 22);
    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v142, "image_meta.json");
    std::__fs::filesystem::operator/[abi:ne200100](&v144, &v142, this + 64);
    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    v78 = *(this + 23);
    v79 = *(this + 32);
    if (v79 == 1)
    {
      v98 = [(_OUFrame *)v6 sceneCamera];
      [v98 pose];
    }

    else
    {
      [(_OUFrame *)v6 GetSceneCameraPoseInVisionWorld];
    }

    v126 = v81;
    v129 = v80;
    v122 = v83;
    v123 = v82;
    v142.__r_.__value_.__r.__words[0] = [MEMORY[0x277CCABB0] numberWithFloat:*&v80];
    v100 = v79;
    v115 = v142.__r_.__value_.__r.__words[0];
    v142.__r_.__value_.__l.__size_ = [MEMORY[0x277CCABB0] numberWithFloat:*&v126];
    v113 = v142.__r_.__value_.__l.__size_;
    [MEMORY[0x277CCABB0] numberWithFloat:*&v123];
    v111 = v99 = v78;
    v142.__r_.__value_.__r.__words[2] = v111;
    v110 = [MEMORY[0x277CCABB0] numberWithFloat:*&v122];
    v143 = v110;
    v109 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:4];
    v144.__r_.__value_.__r.__words[0] = v109;
    HIDWORD(v84) = DWORD1(v129);
    LODWORD(v84) = DWORD1(v129);
    v108 = [MEMORY[0x277CCABB0] numberWithFloat:v84];
    v140.__r_.__value_.__r.__words[0] = v108;
    HIDWORD(v85) = DWORD1(v126);
    LODWORD(v85) = DWORD1(v126);
    v107 = [MEMORY[0x277CCABB0] numberWithFloat:v85];
    v140.__r_.__value_.__l.__size_ = v107;
    HIDWORD(v86) = DWORD1(v123);
    LODWORD(v86) = DWORD1(v123);
    v106 = [MEMORY[0x277CCABB0] numberWithFloat:v86];
    v140.__r_.__value_.__r.__words[2] = v106;
    HIDWORD(v87) = DWORD1(v122);
    LODWORD(v87) = DWORD1(v122);
    v105 = [MEMORY[0x277CCABB0] numberWithFloat:v87];
    v141 = v105;
    v104 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:4];
    v144.__r_.__value_.__l.__size_ = v104;
    v103 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v129), DWORD2(v129)))}];
    v138.__pn_.__r_.__value_.__r.__words[0] = v103;
    v102 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v126), DWORD2(v126)))}];
    v138.__pn_.__r_.__value_.__l.__size_ = v102;
    v101 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v123), DWORD2(v123)))}];
    v138.__pn_.__r_.__value_.__r.__words[2] = v101;
    v88 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v122), DWORD2(v122)))}];
    v139 = v88;
    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:4];
    v144.__r_.__value_.__r.__words[2] = v89;
    v90 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v129), HIDWORD(v129)))}];
    __p.__r_.__value_.__r.__words[0] = v90;
    v91 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v126), HIDWORD(v126)))}];
    __p.__r_.__value_.__l.__size_ = v91;
    v92 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v123), HIDWORD(v123)))}];
    __p.__r_.__value_.__r.__words[2] = v92;
    v93 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v122), HIDWORD(v122)))}];
    v137 = v93;
    v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&__p count:4];
    v145 = v94;
    v95 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:4];

    v6 = v116;
    [v99 setObject:v95 forKey:v119];

    if (v100)
    {
    }

    v96 = *(this + 23);
    std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(&v142, "pose.json");
    std::__fs::filesystem::operator/[abi:ne200100](&v144, &v142, this + 64);
    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }

    *buf = *MEMORY[0x277D82810];
    *&buf[*(*buf - 24)] = *(MEMORY[0x277D82810] + 24);
    MEMORY[0x25F894BD0](&buf[8]);
    std::ostream::~ostream();
    MEMORY[0x25F894D60](&v135);
  }
}

void sub_25D268114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (*(v57 - 169) < 0)
  {
    operator delete(*(v57 - 192));
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (*(v57 - 201) < 0)
  {
    operator delete(*(v57 - 224));
  }

  if (*(v57 - 233) < 0)
  {
    operator delete(*(v57 - 256));
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  std::ofstream::~ofstream(&a57, MEMORY[0x277D82810]);
  MEMORY[0x25F894D60](&STACK[0x2F0]);

  _Unwind_Resume(a1);
}

void utils::OUFrameWriter::WriteKeyframe(void *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v24 = a2;
  if (v24)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v24, "count")}];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v4 = v24;
    v5 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v5)
    {
      v6 = *v36;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v36 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v35 + 1) + 8 * i);
          v9 = OUKeyframeToDictionary(v8);
          v10 = [v8 identifier];
          v11 = [v10 UUIDString];
          [v3 setObject:v9 forKey:v11];
        }

        v5 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v5);
    }

    v12 = a1[22];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *a1];
    v14 = [v12 objectForKeyedSubscript:v13];
    v15 = [v14 objectForKeyedSubscript:@"timestamp"];

    v16 = &unk_286EC2260;
    if (v15)
    {
      v16 = v15;
    }

    v39[0] = @"timestamp";
    v39[1] = @"objects";
    v40[0] = v16;
    v40[1] = MEMORY[0x277CBEBF8];
    v39[2] = @"keyframes";
    v40[2] = v3;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v29);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "fp_input_", 9);
    pn.__r_.__value_.__s.__data_[0] = 48;
    v19 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, &pn);
    *(v19 + *(*v19 - 24) + 24) = 3;
    v20 = MEMORY[0x25F894C80]();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ".plist", 6);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v29, &v25);
    v26 = v25;
    memset(&v25, 0, sizeof(v25));
    std::__fs::filesystem::operator/[abi:ne200100](&__p, &v26, (a1 + 5));
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      pn = __p.__pn_;
    }

    if (SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__pn_.__r_.__value_.__l.__data_);
    }

    if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_pn = &pn;
    }

    else
    {
      p_pn = pn.__r_.__value_.__r.__words[0];
    }

    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_pn];
    [v17 writeToFile:v22 atomically:1];

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    v29[0] = *MEMORY[0x277D82818];
    v23 = *(MEMORY[0x277D82818] + 72);
    *(v29 + *(v29[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v30 = v23;
    v31 = MEMORY[0x277D82878] + 16;
    if (v33 < 0)
    {
      operator delete(v32[7].__locale_);
    }

    v31 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v32);
    std::iostream::~basic_iostream();
    MEMORY[0x25F894D60](&v34);
  }
}

void sub_25D2689C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a36);

  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t a2, int a3)
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
  MEMORY[0x25F894BC0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_25D268C68(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x25F894D60](v1);
  _Unwind_Resume(a1);
}

void utils::anonymous namespace::WriteToJson(utils::_anonymous_namespace_ *this, NSDictionary *a2, const std::__fs::filesystem::path *a3)
{
  v8 = this;
  v4 = MEMORY[0x277CBEB78];
  if (SHIBYTE(a2[2].super.isa) >= 0)
  {
    isa = a2;
  }

  else
  {
    isa = a2->super.isa;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:isa];
  v7 = [v4 outputStreamToFileAtPath:v6 append:0];

  [v7 open];
  [MEMORY[0x277CCAAA0] writeJSONObject:v8 toStream:v7 options:0 error:0];
  [v7 close];
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x25F894BD0](a1 + 1);

  return std::ostream::~ostream();
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_25D268F1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F894D10](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25D268FCC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

std::string *std::__fs::filesystem::path::append[abi:ne200100]<std::string>(std::string *this, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_9;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (!*(a2 + 23))
    {
      goto LABEL_9;
    }
  }

  if (*v4 == 47)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    goto LABEL_12;
  }

LABEL_9:
  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

LABEL_12:
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 < 0)
  {
    v5 = *(a2 + 8);
  }

  std::string::append[abi:ne200100]<char const*,0>(this, v6, (v6 + v5));
  return this;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [9],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_25D26923C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<utils::OUFrameWriter::WriteFrame(_OUFrame *,unsigned long)::$_0,std::allocator<utils::OUFrameWriter::WriteFrame(_OUFrame *,unsigned long)::$_0>,long ()(vImage_Buffer const*,vImage_Buffer const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _GLOBAL__sub_I_DataFileIO_mm()
{
  v0 = objc_autoreleasePoolPush();
  ObjectUnderstandingTest::Bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ObjectUnderstandingTests"];

  objc_autoreleasePoolPop(v0);
}

void ou3dor::OU3DORParser::OU3DORParser(ou3dor::OU3DORParser *this)
{
  OU3DORIDTree::OU3DORIDTree(this);
  std::string::basic_string[abi:ne200100]<0>(v1, "Chair");
}

void sub_25D26AD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  OU3DORIDTree::~OU3DORIDTree(v20);
  _Unwind_Resume(a1);
}

void ou3dor::OU3DORParser::ParseNetworkOutput(OU3DORIDTree::Node **a1@<X0>, void *a2@<X1>, const void **a3@<X2>, unint64_t *a4@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2[1] - *a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v4 == 188)
  {
    Node = OU3DORIDTree::FindNode(a1, a3);
    v7 = Node[3];
    for (i = Node[4]; v7 != i; v7 += 8)
    {
      v8 = *v7;
      if (*(*v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v42, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v42.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v42.__r_.__value_.__l.__data_ = v9;
      }

      Range = OU3DORIDTree::FindRange(a1, &v42.__r_.__value_.__l.__data_);
      __src = 0;
      v40 = 0;
      v41 = 0;
      v11 = expf(*(*a2 + 4 * Range));
      if (Range <= SHIDWORD(Range))
      {
        v13 = 0;
        v14 = 4 * Range;
        LODWORD(v12) = Range;
        do
        {
          v15 = expf(*(*a2 + v14));
          if (v13 >= v41)
          {
            v16 = __src;
            v17 = v13 - __src;
            v18 = (v13 - __src) >> 2;
            v19 = v18 + 1;
            if ((v18 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v20 = v41 - __src;
            if ((v41 - __src) >> 1 > v19)
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
            v13 = v23 + 1;
            memcpy(v24, v16, v17);
            v25 = __src;
            __src = v24;
            v40 = v13;
            v41 = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v13++ = v15;
          }

          v40 = v13;
          v26 = *(v13 - 1);
          if (v26 >= v11)
          {
            v12 = Range;
          }

          else
          {
            v12 = v12;
          }

          if (v26 >= v11)
          {
            v11 = *(v13 - 1);
          }

          v14 += 4;
          LODWORD(Range) = Range + 1;
        }

        while (HIDWORD(Range) + 1 != Range);
      }

      else
      {
        v12 = Range;
      }

      LODWORD(v43.__r_.__value_.__l.__data_) = v12;
      {
        v27 = __src;
        v28 = 0.0;
        while (v27 != v40)
        {
          v29 = *v27++;
          v28 = v28 + v29;
        }

        NodeBasedOnID = OU3DORIDTree::FindNodeBasedOnID(a1, v12);
        if (NodeBasedOnID)
        {
          OU3DORIDTree::GetRootToNodePath(a1, v12, 45, &v38);
          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v43, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
          }

          else
          {
            v43 = v42;
          }

          if (*(NodeBasedOnID + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v44, *NodeBasedOnID, *(NodeBasedOnID + 1));
          }

          else
          {
            v33 = *NodeBasedOnID;
            v44.__r_.__value_.__r.__words[2] = *(NodeBasedOnID + 2);
            *&v44.__r_.__value_.__l.__data_ = v33;
          }

          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v38;
          }

          v34 = v11 / v28;
          v46 = v34;
          std::vector<ou3dor::OU3DORParser::AttibuteInfo>::push_back[abi:ne200100](a4, &v43);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v32 = _OULoggingGetOSLogForCategoryObjectUnderstanding(0, v30);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v43.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(v43.__r_.__value_.__r.__words[0]) = v12;
            _os_log_error_impl(&dword_25D1DB000, v32, OS_LOG_TYPE_ERROR, "There is no node for id: %d", &v43, 8u);
          }
        }
      }

      if (__src)
      {
        v40 = __src;
        operator delete(__src);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_25D26B8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  a31 = a12;
  std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__destroy_vector::operator()[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ou3dor::OU3DORParser::AttibuteInfo>::push_back[abi:ne200100](unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__emplace_back_slow_path<ou3dor::OU3DORParser::AttibuteInfo const&>(a1, a2);
  }

  else
  {
    std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__construct_one_at_end[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo const&>(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

float std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__construct_one_at_end[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo const&>(uint64_t a1, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v7 = a2[3];
    *(v4 + 64) = *(a2 + 8);
    *(v4 + 48) = v7;
  }

  result = *(a2 + 18);
  *(v4 + 72) = result;
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_25D26BA54(_Unwind_Exception *exception_object)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__emplace_back_slow_path<ou3dor::OU3DORParser::AttibuteInfo const&>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v10 = a2[3];
    *(v7 + 64) = *(a2 + 8);
    *(v7 + 48) = v10;
  }

  *(v7 + 72) = *(a2 + 18);
  *&v19 = v19 + 80;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ou3dor::OU3DORParser::AttibuteInfo>::~__split_buffer(&v17);
  return v16;
}

void sub_25D26BC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 47) < 0)
  {
    operator delete(*(v7 + 24));
  }

  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  std::__split_buffer<ou3dor::OU3DORParser::AttibuteInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 24) = v9;
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(v7 + 3) = 0;
      v10 = v7[3];
      *(a4 + 64) = *(v7 + 8);
      *(a4 + 48) = v10;
      *(v7 + 7) = 0;
      *(v7 + 8) = 0;
      *(v7 + 6) = 0;
      *(a4 + 72) = *(v7 + 18);
      v7 += 5;
      a4 += 80;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>::destroy[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo,void,0>(a1, v5);
      v5 += 5;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator_traits<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>::destroy[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>,ou3dor::OU3DORParser::AttibuteInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 80;
      std::allocator_traits<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>::destroy[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ou3dor::OU3DORParser::AttibuteInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ou3dor::OU3DORParser::AttibuteInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ou3dor::OU3DORParser::AttibuteInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    std::allocator_traits<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>::destroy[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo,void,0>(v5, v4 - 80);
  }
}

void ou3dor::OU3DORParser::AttibuteInfo::~AttibuteInfo(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<ou3dor::OU3DORParser::AttibuteInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ou3dor::OU3DORParser::AttibuteInfo>>::destroy[abi:ne200100]<ou3dor::OU3DORParser::AttibuteInfo,void,0>(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

uint64_t std::unordered_set<ou3dor::PartAttributeID>::unordered_set(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, a2, a2);
      ++a2;
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

void _GLOBAL__sub_I_OU3DORParser_mm()
{
  v97 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  *(&v2 + 1) = @"Chair-chair_type-dining";
  LODWORD(v3) = 2;
  *(&v3 + 1) = @"Chair-chair_type-swivel";
  LODWORD(v4) = 3;
  *(&v4 + 1) = @"Chair-chair_type-other";
  LODWORD(v5) = 4;
  *(&v5 + 1) = @"Chair-chair_leg_type-four";
  LODWORD(v6) = 5;
  *(&v6 + 1) = @"Chair-chair_leg_type-star";
  LODWORD(v7) = 6;
  v8 = @"Chair-chair_leg_type-other";
  v9 = 7;
  v10 = @"Chair-chair_arm_type-missing";
  v11 = 8;
  v12 = @"Chair-chair_arm_type-existing";
  v13 = 9;
  v14 = @"Chair-chair_back_type-missing";
  v15 = 10;
  v16 = @"Chair-chair_back_type-existing";
  v17 = 11;
  v18 = @"Chair-chair_seat_height-tall_seat";
  v19 = 12;
  v20 = @"Chair-chair_seat_height-normal/low_seat";
  v21 = 13;
  v22 = @"Chair-chair_seat_shape-rectangular";
  v23 = 14;
  v24 = @"Chair-chair_seat_shape-round";
  v25 = 15;
  v26 = @"Chair-chair_seat_shape-none";
  v27 = 16;
  v28 = @"Sofa-sofa_type-rectangular";
  v29 = 17;
  v30 = @"Sofa-sofa_type-lShaped";
  v31 = 18;
  v32 = @"Sofa-sofa_type-singleSeat";
  v33 = 19;
  v34 = @"Sofa-sofa_type-lShapedMain";
  v35 = 20;
  v36 = @"Sofa-sofa_type-lShapedExtension";
  v37 = 21;
  v38 = @"Sofa-sofa_type-lShapedMiddle";
  v39 = 22;
  v40 = @"Sofa-sofa_type-other";
  v41 = 23;
  v42 = @"Sofa-sofa_arm_type-missing";
  v43 = 24;
  v44 = @"Sofa-sofa_arm_type-two_arms";
  v45 = 25;
  v46 = @"Sofa-sofa_arm_type-none";
  v47 = 26;
  v48 = @"Sofa-sofa_back_type-missing";
  v49 = 27;
  v50 = @"Sofa-sofa_back_type-existing";
  v51 = 28;
  v52 = @"Table-table_type-desk";
  v53 = 29;
  v54 = @"Table-table_type-coffee";
  v55 = 30;
  v56 = @"Table-table_type-dining";
  v57 = 31;
  v58 = @"Table-table_type-other";
  v59 = 32;
  v60 = @"Table-table_shape-rectangular";
  v61 = 33;
  v62 = @"Table-table_shape-lShaped";
  v63 = 34;
  v64 = @"Table-table_shape-circularElliptic";
  v65 = 35;
  v66 = @"Table-table_shape-other";
  v67 = 36;
  v68 = @"Table-table_leg_type-two_leg";
  v69 = 37;
  v70 = @"Table-table_leg_type-four_leg";
  v71 = 38;
  v72 = @"Table-table_leg_type-none";
  v73 = 39;
  v74 = @"Table-table_attribute-with_storage";
  v75 = 40;
  v76 = @"Table-table_attribute-without_storage";
  v77 = 41;
  v78 = @"Cabinet-cabinet_type-standalone_cabinet";
  v79 = 42;
  v80 = @"Cabinet-cabinet_type-kitchen_cabinet";
  v81 = 43;
  v82 = @"Cabinet-cabinet_type-nightstand";
  v83 = 44;
  v84 = @"Cabinet-cabinet_type-none";
  v85 = 45;
  v86 = @"Cabinet-cabinet_attribute-no_countertop";
  v87 = 46;
  v88 = @"Cabinet-cabinet_attribute-with_countertop";
  v89 = 100;
  v90 = @"Sofa-sofa_arm_type-existing";
  v91 = 101;
  LODWORD(v2) = 0;
  v92 = @"Storage-storage_type-cabinet";
  v93 = 102;
  v94 = @"Storage-storage_type-shelf";
  v95 = 103;
  v96 = @"Chair-chair_type-stool";
  std::unordered_map<ou3dor::PartAttributeID,NSString * {__strong}>::unordered_map(&ou3dor::k3DORSupportedAttributeTypeMap, &v2, 50);
  for (i = 792; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<ou3dor::PartAttributeID,NSString * {__strong}>::~unordered_map[abi:ne200100], &ou3dor::k3DORSupportedAttributeTypeMap, &dword_25D1DB000);
  v4 = xmmword_25D279F60;
  v5 = unk_25D279F70;
  v6 = xmmword_25D279F80;
  v2 = xmmword_25D279F40;
  v3 = unk_25D279F50;
  v7 = 0x2E0000002DLL;
  objc_autoreleasePoolPop(v0);
}

void sub_25D26C55C(_Unwind_Exception *a1)
{
  for (i = 792; i != -8; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void ou3dor::Object3DEncoder::Object3DEncoder(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_286EBC900;
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 4);
  *(a1 + 88) = 0u;
  *(a1 + 40) = v4;
  *(a1 + 8) = v2;
  *(a1 + 24) = v3;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x25F894AD0](exception, "[3DOR] failed to get the bundle.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25D26C7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v20 = v15[15];
  v15[15] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = v15[14];
  v15[14] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *v18;
  if (*v18)
  {
    v15[12] = v22;
    operator delete(v22);
  }

  std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::~__hash_table(v16);
  _Unwind_Resume(a1);
}

void ou3dor::Object3DEncoder::Process(ou3dor::Object3DEncoder *a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  ou3dor::Object3DEncoder::AddView(a1, v5, a3);
  ou3dor::Object3DEncoder::ExtractImageFeatures(a1, [v5 sceneColorBuffer], objc_msgSend(v5, "deviceOrientation"));
}

void ou3dor::Object3DEncoder::AddView(uint64_t a1, void *a2, uint64_t *a3)
{
  v101 = *MEMORY[0x277D85DE8];
  v75 = a2;
  v4 = [v75 sceneCamera];
  v74 = v4;
  [v4 intrinsics];
  v73 = v5;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane([v75 sceneColorBuffer], 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane([v75 sceneColorBuffer], 0);
  Width = CVPixelBufferGetWidth([v75 semanticLabelBuffer]);
  Height = CVPixelBufferGetHeight([v75 semanticLabelBuffer]);
  v11 = Height;
  LODWORD(v12) = 1147207680;
  v13 = v73;
  if (*&v73 <= 900.0 || (LODWORD(v12) = 1040746633, (Width / WidthOfPlane) == 0.13333) && (*&v13 = Height / HeightOfPlane, *&v13 == 0.13333))
  {
    [v4 pose];
    v71 = v15;
    [v4 pose];
    v18 = *a3;
    v17 = a3[1];
    if (*a3 == v17)
    {
      goto LABEL_52;
    }

    v72 = __PAIR64__(v11, Width);
    v19 = v16;
    v20 = vdup_n_s32(0x3E088889u);
    while (1)
    {
      v22 = *(v18 + 144);
      if (!v22)
      {
        v47 = _OULoggingGetOSLogForCategoryObjectUnderstanding(0, v21);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25D1DB000, v47, OS_LOG_TYPE_INFO, "[3DOR] can't add view for object w/o uuid, skipping", buf, 2u);
        }

        goto LABEL_51;
      }

      v23 = v74;
      [v23 pose];
      v103 = __invert_f4(v102);
      v82 = v103.columns[1];
      v83 = v103.columns[0];
      v80 = v103.columns[3];
      v81 = v103.columns[2];
      [v23 imageResolution];
      v25 = v24;
      [v23 imageResolution];
      v26 = 0;
      v27 = 0;
      *&v28 = v25;
      *&v29 = v29;
      v77 = LODWORD(v29);
      v78 = v28;
      v79 = __PAIR64__(LODWORD(v29), v28);
      v30 = 0x80000000800000;
      v31 = vneg_f32(0x80000000800000);
      while (1)
      {
        v32 = vaddq_f32(v80, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(*(v18 + v26))), v82, *(v18 + v26), 1), v81, *(v18 + v26), 2));
        v84 = v32;
        v32.i32[0] = v32.i32[2];
        if (v32.f32[2] <= 0.0)
        {
          break;
        }

        [v23 intrinsics];
        v36 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, v84.f32[0]), v34, *v84.f32, 1), v35, v84, 2);
        if (fabsf(*&v36.i32[2]) >= 0.000001)
        {
          *v37.f32 = vdiv_f32(*v36.i8, vdup_laneq_s32(v36, 2));
          v31 = vbsl_s8(vcgt_f32(v31, *v37.f32), *v37.f32, v31);
          v30 = vbsl_s8(vcgt_f32(*v37.f32, v30), *v37.f32, v30);
          v37.i64[1] = v37.i64[0];
          v38.i32[0] = vmovn_s32(vcgeq_f32(v79, v37)).u32[0];
          v38.i32[1] = vmovn_s32(vcgeq_f32(v37, v79)).i32[1];
          v27 += vminv_u16(v38) & 1;
        }

        v26 += 16;
        if (v26 == 128)
        {
          v39 = vcvt_s32_f32(v31);
          v40 = vcvt_s32_f32(__PAIR64__(v77, v78));
          v41 = vcvt_s32_f32(v30);
          *&v42 = vand_s8(vcgez_s32(v39), vmin_s32(v40, v39));
          v43 = __PAIR64__(v40.u32[1], v41.u32[0]);
          v40.i32[1] = v41.i32[1];
          DWORD2(v91[1]) = v27;
          v44 = v42;
          v45 = DWORD1(v42);
          v85 = vsub_s32(vand_s8(vcgez_s32(v41), vmin_s32(v40, v43)), *&v42);
          *(&v42 + 1) = v85;
          *(&v91[1] + 12) = v42;
          v46 = v27;
          goto LABEL_20;
        }
      }

      v45 = 0;
      v44 = 0;
      v46 = 0;
      memset(&v91[1] + 8, 0, 20);
      v85 = 0;
LABEL_20:

      if (*(a1 + 8) > v46)
      {
        goto LABEL_51;
      }

      v48.i32[1] = v85.i32[1];
      if (v85.i32[0] <= v85.i32[1])
      {
        v49 = v85.i32[1];
      }

      else
      {
        v49 = v85.i32[0];
      }

      if (v44 >= WidthOfPlane - v49)
      {
        LODWORD(v50) = WidthOfPlane - v49;
      }

      else
      {
        LODWORD(v50) = v44;
      }

      if (WidthOfPlane - v49 >= 0)
      {
        v50 = v50;
      }

      else
      {
        v50 = 0;
      }

      if (v45 >= HeightOfPlane - v49)
      {
        v51 = HeightOfPlane - v49;
      }

      else
      {
        v51 = v45;
      }

      if (HeightOfPlane - v49 >= 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      v53 = v44 + v49;
      if (v44 + v49 >= WidthOfPlane)
      {
        v53 = WidthOfPlane;
      }

      v54 = (v53 - v50);
      v55 = v45 + v49;
      if (v55 >= HeightOfPlane)
      {
        v55 = HeightOfPlane;
      }

      v56 = (v55 - v52);
      v57 = v54 | (v56 << 32);
      v58 = v50 | (v52 << 32);
      *&v91[0] = v58;
      *(&v91[0] + 1) = v57;
      v48.i32[0] = 1147207680;
      *v59.i64 = v73;
      if (*&v73 > 900.0)
      {
        HIDWORD(v91[1]) = ((v44 * 0.13333) + 0.5);
        LODWORD(v91[2]) = ((v45 * 0.13333) + 0.5);
        DWORD1(v91[2]) = ((v85.i32[0] * 0.13333) + 0.5);
        DWORD2(v91[2]) = ((v85.i32[1] * 0.13333) + 0.5);
        v60 = vcvt_s32_f32(vmla_f32(0x3F0000003F000000, v20, vcvt_f32_s32(__PAIR64__(v54, v50))));
        v59 = vshll_n_s32(vcvt_s32_f32(vmla_f32(0x3F0000003F000000, v20, vcvt_f32_s32(__PAIR64__(v56, v52)))), 0x20uLL);
        v61.i64[0] = v60.u32[0];
        v61.i64[1] = v60.u32[1];
        v48 = vorrq_s8(v59, v61);
        v91[0] = v48;
      }

      v62 = [v75 semanticLabelBuffer];
      v63 = std::map<NSString * {__strong},std::set<unsigned char>>::at(kObjectTypeToSemanticLabels, (v18 + 128));
      ou3dor::Object3DEncoder::ComputeSemanticMaskAndScore(v62, v91, &v91[1] + 3, v63, &v88, v72);
      v64 = v90;
      v65 = v88;
      if (v90 >= 10.0)
      {
        break;
      }

      if (v88)
      {
        v66 = v88;
LABEL_50:
        operator delete(v66);
      }

LABEL_51:

      v18 += 224;
      if (v18 == v17)
      {
        goto LABEL_52;
      }
    }

    v67 = vmul_f32(vadd_f32(*v18, *(v18 + 32)), 0x3F0000003F000000);
    v68 = atan2f(v67.f32[1] - v19, v67.f32[0] - v71);
    if (v68 < 0.0)
    {
      v68 = v68 + 6.2832;
    }

    *buf = (v68 * 0.95493);
    v93 = __PAIR64__(LODWORD(v64), DWORD2(v91[1]));
    v94 = v65;
    v95 = v89;
    v88 = 0;
    v89 = 0uLL;
    v96 = v58;
    v97 = v57;
    v98 = v91[0];
    v99 = 0;
    v100 = 0;
    v69 = [v22 UUIDString];
    v70 = v69;
    std::string::basic_string[abi:ne200100]<0>(__p, [v69 UTF8String]);
    ou3dor::Object3DEncoder::AddToObjects(a1, buf, __p);
    if (v87 < 0)
    {
      operator delete(__p[0]);
    }

    v66 = v94;
    if (!v94)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v14 = _OULoggingGetOSLogForCategoryObjectUnderstanding(Height, v10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v93 = "Object3DEncoder";
    _os_log_impl(&dword_25D1DB000, v14, OS_LOG_TYPE_INFO, "[3DOR][%s] image resolution ratio != resize scale; will not extract embeddings", buf, 0xCu);
  }

LABEL_52:
}

void ou3dor::Object3DEncoder::ExtractImageFeatures(ou3dor::Object3DEncoder *this, __CVBuffer *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v4, "input_1");
  std::string::basic_string[abi:ne200100]<0>(&v3, "var_354");
  OUDnnInferenceInterface::GetInputSpan<half,void>();
}

void sub_25D26D6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void ou3dor::Object3DEncoder::ExtractObjectFeatures(ou3dor::Object3DEncoder *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v2, "feat_1");
  std::string::basic_string[abi:ne200100]<0>(&__p, "var_351");
  OUDnnInferenceInterface::GetInputSpan<half,void>();
}

void sub_25D26D97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void ou3dor::Object3DEncoder::SetEmbeddings(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = a2;
  v2 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v2)
  {
    v29 = *v34;
    do
    {
      v30 = v2;
      for (i = 0; i != v30; ++i)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v33 + 1) + 8 * i);
        v4 = [v31 identifier];
        v5 = v4 == 0;

        if (!v5)
        {
          v6 = [v31 identifier];
          v7 = [v6 UUIDString];
          v8 = v7;
          v9 = [v7 UTF8String];

          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          v10 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 48), __p);
          v11 = v10;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if (!v11)
            {
              goto LABEL_21;
            }
          }

          else if (!v10)
          {
            goto LABEL_21;
          }

          v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(v11 + 10)];
          if (*(v11 + 10) >= 1)
          {
            v13 = 0;
            do
            {
              v14 = &v11[74 * v13 + 6];
              if ((*(v14 + 584) & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              memcpy(__p, (v14 + 72), sizeof(__p));
              v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:256];
              for (j = 0; j != 512; j += 2)
              {
                LOWORD(_D0) = *(__p + j);
                __asm { FCVT            S0, H0 }

                v22 = [MEMORY[0x277CCABB0] numberWithFloat:_D0];
                [v15 addObject:v22];
              }

              [v12 addObject:v15];

              ++v13;
            }

            while (v13 < *(v11 + 10));
          }

          [v31 setEmbedding2d:v12];
          if ((v11[366] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          memcpy(__p, v11 + 302, sizeof(__p));
          v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:256];
          for (k = 0; k != 512; k += 2)
          {
            LOWORD(_D0) = *(__p + k);
            __asm { FCVT            S0, H0 }

            v26 = [MEMORY[0x277CCABB0] numberWithFloat:_D0];
            [v23 addObject:v26];
          }

          [v31 setEmbedding3d:v23];
        }

LABEL_21:
      }

      v2 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v2);
  }
}

float ou3dor::Object3DEncoder::ComputeSemanticMaskAndScore@<S0>(__CVBuffer *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, int32x2_t a6@<D0>)
{
  v8 = a1;
  if (CVPixelBufferGetPixelFormatType(a1) != 1278226488)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  CVPixelBufferLockBaseAddress(v8, 1uLL);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v8);
  BaseAddress = CVPixelBufferGetBaseAddress(v8);
  v12 = a2[3] * a2[2];
  v29 = 0;
  std::vector<BOOL>::vector(&v30, v12, &v29);
  v13 = a2[3];
  if (v13 < 1)
  {
    v22 = 0.0;
  }

  else
  {
    v25 = v8;
    v26 = a5;
    v14 = 0;
    LODWORD(v8) = 0;
    v15 = 0;
    v16 = a2[1];
    v17 = &BaseAddress[BytesPerRow * v16 + *a2];
    v18 = a2[2];
    do
    {
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = *a2;
        v8 = v8;
        do
        {
          if (v20 + v19 >= *a3 && v20 + v19 < a3[2] + *a3)
          {
            v21 = a3[1];
            if (v16 >= v21 && v16 < a3[3] + v21)
            {
              v29 = v17[v19];
              if (std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::find<unsigned char>(a4, &v29))
              {
                *(v30 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
                ++v15;
              }

              v18 = a2[2];
            }
          }

          ++v8;
          ++v19;
        }

        while (v19 < v18);
        v13 = a2[3];
      }

      v17 += BytesPerRow;
      ++v14;
      LODWORD(v16) = v16 + 1;
    }

    while (v14 < v13);
    v22 = (765 * v15);
    v8 = v25;
    a5 = v26;
  }

  CVPixelBufferUnlockBaseAddress(v8, 1uLL);
  *a5 = v30;
  result = roundf((v22 / vmul_lane_s32(a6, a6, 1).i32[0]) * 100.0) / 100.0;
  *(a5 + 8) = v31;
  *(a5 + 24) = result;
  return result;
}

void ou3dor::Object3DEncoder::AddToObjects(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 48), a3);
  if (v6)
  {

    ou3dor::Object3DEncoder::AddToObject(v6, a2, v6 + 10);
  }

  else
  {
    v10 = a3;
    v7 = std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), a3, &std::piecewise_construct, &v10, &v9);
    v8 = *a2;
    *(v7 + 14) = *(a2 + 2);
    v7[6] = v8;
    std::vector<BOOL>::__move_assign((v7 + 8), (a2 + 2));
    memcpy(v7 + 11, a2 + 5, 0x221uLL);
    *(v7 + 10) = 1;
  }
}

uint64_t ou3dor::Object3DEncoder::CalculateBinIdx(float32x2_t *a1, float32x2_t a2)
{
  v2 = vsub_f32(vmul_f32(vadd_f32(*a1, a1[4]), 0x3F0000003F000000), a2);
  v3 = atan2f(v2.f32[1], v2.f32[0]);
  if (v3 < 0.0)
  {
    v3 = v3 + 6.2832;
  }

  return (v3 * 0.95493);
}

void ou3dor::Object3DEncoder::AddToObject(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = (a3 + 2);
  v6 = (*a3)++;
  v7 = &a3[148 * v6 + 2];
  v8 = *a2;
  v7[2] = *(a2 + 2);
  *v7 = v8;
  std::vector<BOOL>::__move_assign((v7 + 4), (a2 + 2));
  memcpy(v7 + 10, a2 + 5, 0x221uLL);
  v9 = *a3;
  v10 = 126 - 2 * __clz(v9);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,false>(v5, &v5[592 * v9], v11, 1);
  v12 = *a3;
  if (v12 >= 4)
  {
    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::vector(&v29, v12, __p);
    v27 = 0;
    std::vector<BOOL>::vector(__p, 6, &v27);
    v13 = *a3;
    v14 = v29;
    if (v13 < 1)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = __p[0];
      do
      {
        v18 = *v5;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        v21 = v17[v19];
        if ((v20 & v21) == 0)
        {
          v17[v19] = v20 | v21;
          *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          ++v16;
        }

        if (++v15 >= v13)
        {
          break;
        }

        v5 += 592;
      }

      while (v16 < 3);
      if (v13 != 1 && v16 <= 2)
      {
        v22 = 1;
        do
        {
          v23 = v14[v22 >> 6];
          if ((v23 & (1 << v22)) == 0)
          {
            v14[v22 >> 6] = v23 | (1 << v22);
            ++v16;
          }

          ++v22;
        }

        while (v22 < v13 && v16 < 3);
      }
    }

    v24 = 0;
    v25 = (a3 - 146);
    do
    {
      v26 = *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24;
      ++v24;
      v25 += 148;
    }

    while ((v26 & 1) != 0);
    if (v24 < v13)
    {
      do
      {
        *v25 = *(v25 + 74);
        v25[2] = v25[150];
        std::vector<BOOL>::operator=(v25 + 2, (v25 + 152));
        memcpy(v25 + 10, v25 + 158, 0x221uLL);
        v25 += 148;
        LODWORD(v24) = v24 + 1;
      }

      while (*a3 > v24);
    }

    *a3 = v16;
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v29)
    {
      operator delete(v29);
    }
  }
}

void sub_25D26E338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ou3dor::Object3DEncoder::~Object3DEncoder(ou3dor::Object3DEncoder *this)
{
  ou3dor::Object3DEncoder::~Object3DEncoder(this);

  JUMPOUT(0x25F894DE0);
}

{
  *this = &unk_286EBC900;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::~__hash_table(this + 48);
}

void *std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(void *a1, id *a2, uint64_t a3)
{
  *a1 = *a2;
  std::unordered_set<SemanticLabelv5>::unordered_set((a1 + 1), a3);
  return a1;
}

uint64_t std::unordered_set<SemanticLabelv5>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<SemanticLabelv5,std::hash<SemanticLabelv5>,std::equal_to<SemanticLabelv5>,std::allocator<SemanticLabelv5>>::__emplace_unique_key_args<SemanticLabelv5,SemanticLabelv5 const&>(a1, i + 16, i + 16);
  }

  return a1;
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
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

void sub_25D26E4D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::__introsort<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,false>(char *result, char *a2, uint64_t a3, int a4)
{
  v6 = a2;
  ii = result;
  __dst[69] = *MEMORY[0x277D85DE8];
  v105 = a2;
  v106 = result;
  while (1)
  {
    v8 = v6 - ii;
    v9 = 0x14C1BACF914C1BADLL * ((v6 - ii) >> 4);
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v105 = (v6 - 592);
      v61 = *(v6 - 146);
      v62 = *(ii + 2);
      if (v61 > v62 || v61 == v62 && *(v6 - 147) > *(ii + 1))
      {
        v63 = &v106;
        v64 = &v105;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(v63, v64);
      }

      return result;
    }

LABEL_9:
    if (v8 <= 14207)
    {
      v71 = ii + 74;
      v73 = ii == v6 || v71 == v6;
      if (a4)
      {
        if (v73)
        {
          return result;
        }

        v74 = 0;
        v75 = ii;
        while (1)
        {
          v76 = v75;
          v75 = v71;
          v77 = *(v76 + 150);
          v78 = *(v76 + 2);
          if (v77 > v78)
          {
            break;
          }

          if (v77 == v78)
          {
            v79 = *(v76 + 149);
            if (v79 > *(v76 + 1))
            {
              goto LABEL_147;
            }
          }

LABEL_160:
          v71 = v75 + 74;
          v74 += 592;
          if (v75 + 74 == v6)
          {
            return result;
          }
        }

        v79 = *(v76 + 149);
LABEL_147:
        v100 = *(v76 + 148);
        v80 = v76[76];
        v81 = v76[77];
        v103 = v76[78];
        v76[76] = 0;
        v76[78] = 0;
        v76[77] = 0;
        memcpy(__dst, v76 + 79, 0x221uLL);
        *v75 = *v76;
        *(v75 + 2) = *(v76 + 2);
        v82 = (v76 + 2);
        std::vector<BOOL>::__move_assign((v75 + 2), (v76 + 2));
        v83 = v76 + 5;
        memcpy(v75 + 5, v76 + 5, 0x221uLL);
        if (v76 == ii)
        {
          v76 = ii;
        }

        else
        {
          v97 = v81;
          v98 = v75;
          v84 = v74;
          do
          {
            v85 = ii + v84;
            v86 = *(ii + v84 - 584);
            if (v77 <= v86)
            {
              if (v77 != v86)
              {
                v76 = (ii + v84);
                v83 = (ii + v84 + 40);
                v82 = ii + v84 + 16;
                goto LABEL_156;
              }

              if (v79 <= *(ii + v84 - 588))
              {
                goto LABEL_156;
              }
            }

            *v85 = *(v85 - 74);
            *(v85 + 2) = *(v85 - 146);
            v82 = (v76 - 72);
            std::vector<BOOL>::__move_assign((v85 + 16), (v85 - 576));
            v83 = v76 - 69;
            memcpy(v85 + 40, v85 - 552, 0x221uLL);
            v76 -= 74;
            v84 -= 592;
          }

          while (v84);
          v83 = ii + 5;
          v76 = ii;
LABEL_156:
          v75 = v98;
          v81 = v97;
        }

        *v76 = v100;
        *(v76 + 1) = v79;
        *(v76 + 2) = v77;
        if (*v82)
        {
          operator delete(*v82);
          *(v82 + 8) = 0;
          *(v82 + 16) = 0;
        }

        *v82 = v80;
        v76[3] = v81;
        v76[4] = v103;
        result = memcpy(v83, __dst, 0x221uLL);
        goto LABEL_160;
      }

      if (v73)
      {
        return result;
      }

      for (i = ii + 3; ; i += 74)
      {
        v88 = ii;
        ii = v71;
        v89 = *(v88 + 150);
        v90 = *(v88 + 2);
        if (v89 > v90)
        {
          break;
        }

        if (v89 == v90)
        {
          v91 = *(v88 + 149);
          if (v91 > *(v88 + 1))
          {
            goto LABEL_169;
          }
        }

LABEL_177:
        v71 = ii + 74;
        if (ii + 74 == v6)
        {
          return result;
        }
      }

      v91 = *(v88 + 149);
LABEL_169:
      v92 = *v71;
      v93 = v88[76];
      v104 = *(v88 + 77);
      v88[76] = 0;
      v88[78] = 0;
      v88[77] = 0;
      memcpy(__dst, v88 + 79, 0x221uLL);
      for (j = i; ; j -= 74)
      {
        j[71] = *(j - 3);
        *(j + 144) = *(j - 4);
        std::vector<BOOL>::__move_assign((j + 73), (j - 1));
        memcpy(j + 76, j + 2, 0x221uLL);
        v95 = *(j - 152);
        if (v89 <= v95 && (v89 != v95 || v91 <= *(j - 153)))
        {
          break;
        }
      }

      *(j - 6) = v92;
      *(j - 5) = v91;
      *(j - 4) = v89;
      v96 = *(j - 1);
      if (v96)
      {
        operator delete(v96);
      }

      *(j - 1) = v93;
      *j = v104;
      result = memcpy(j + 2, __dst, 0x221uLL);
      goto LABEL_177;
    }

    if (!a3)
    {
      return std::__partial_sort[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &>(ii, v6, v6);
    }

    v10 = v9 >> 1;
    v11 = &ii[74 * (v9 >> 1)];
    v12 = (v6 - 592);
    if (v8 < 0x12801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(v11, ii, v12);
      v13 = v106;
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(ii, v11, v12);
      v13 = v106;
      v14 = &v106[148 * v10];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(v106 + 148, (v14 - 592), (v105 - 148));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(v106 + 296, (v14 + 592), (v105 - 222));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(v14 - 148, v14, (v14 + 592));
      v109 = *v106;
      v15 = *(v106 + 2);
      v110 = *(v106 + 2);
      v16 = *(v106 + 3);
      v17 = *(v106 + 4);
      *(v106 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 4) = 0;
      memcpy(__dst, v13 + 10, 0x221uLL);
      v18 = *(v14 + 2);
      *v13 = *v14;
      *(v13 + 2) = v18;
      std::vector<BOOL>::__move_assign((v13 + 4), (v14 + 16));
      memcpy(v13 + 10, v14 + 40, 0x221uLL);
      *v14 = v109;
      *(v14 + 2) = v110;
      v19 = *(v14 + 2);
      if (v19)
      {
        operator delete(v19);
      }

      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
      *(v14 + 4) = v17;
      memcpy(v14 + 40, __dst, 0x221uLL);
    }

    --a3;
    if (a4)
    {
      v101 = a4;
      v20 = v13[2];
    }

    else
    {
      v21 = *(v13 - 146);
      v20 = v13[2];
      if (v21 <= v20 && (v21 != v20 || *(v13 - 147) <= *(v13 + 1)))
      {
        v41 = v105;
        v108 = v105;
        v43 = *v13;
        v42 = *(v13 + 1);
        v44 = *(v13 + 2);
        v102 = *(v13 + 6);
        *(v13 + 2) = 0;
        *(v13 + 3) = 0;
        *(v13 + 4) = 0;
        memcpy(__dst, v13 + 10, 0x221uLL);
        v45 = *(v41 - 146);
        if (v20 > v45 || v20 == v45 && v42 > *(v41 - 147))
        {
          v46 = v13[150];
          if (v20 <= v46)
          {
            v52 = v13 + 149;
            do
            {
              if (v20 == v46 && v42 > *v52)
              {
                break;
              }

              v46 = v52[149];
              v52 += 148;
            }

            while (v20 <= v46);
            k = (v52 - 1);
          }

          else
          {
            k = (v13 + 148);
          }
        }

        else
        {
          for (k = (v13 + 148); k < v41; k += 74)
          {
            v51 = *(k + 2);
            if (v20 > v51 || v20 == v51 && v42 > *(k + 1))
            {
              break;
            }
          }
        }

        v109 = k;
        if (k < v41)
        {
          for (m = v41 - 147; v20 > v45 || v20 == v45 && v42 > *(m + 147); m -= 74)
          {
            v45 = *m;
          }

          v41 = m + 73;
          v108 = (m + 73);
        }

        if (k < v41)
        {
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v109, &v108);
            v54 = v109[150];
            if (v20 <= v54)
            {
              v55 = v109 + 149;
              do
              {
                if (v20 == v54 && v42 > *v55)
                {
                  break;
                }

                v54 = v55[149];
                v55 += 148;
              }

              while (v20 <= v54);
              k = (v55 - 1);
            }

            else
            {
              k = (v109 + 148);
            }

            v109 = k;
            v56 = v108;
            do
            {
              do
              {
                v56 -= 74;
                v57 = *(v56 + 2);
              }

              while (v20 > v57);
            }

            while (v20 == v57 && v42 > *(v56 + 1));
            v108 = v56;
          }

          while (k < v56);
        }

        v58 = k - 74;
        if (k - 74 != v13)
        {
          v59 = *v58;
          v13[2] = *(k - 146);
          *v13 = v59;
          std::vector<BOOL>::__move_assign((v13 + 4), (k - 72));
          memcpy(v13 + 10, k - 69, 0x221uLL);
        }

        *v58 = v43;
        *(k - 147) = v42;
        *(k - 146) = v20;
        v60 = *(k - 72);
        if (v60)
        {
          operator delete(v60);
        }

        *(k - 72) = v44;
        *(k - 71) = v102;
        result = memcpy(k - 69, __dst, 0x221uLL);
        a4 = 0;
        ii = v109;
        goto LABEL_115;
      }

      v101 = a4;
    }

    v22 = v105;
    v24 = *v13;
    v23 = *(v13 + 1);
    v25 = *(v13 + 2);
    v99 = *(v13 + 6);
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = 0;
    memcpy(__dst, v13 + 10, 0x221uLL);
    for (n = 0; ; n += 148)
    {
      v27 = v13[n + 150];
      if (v27 <= v20 && (v27 != v20 || SLODWORD(v13[n + 149]) <= v23))
      {
        break;
      }
    }

    v28 = &v13[n + 148];
    v109 = v28;
    if (n * 4)
    {
      v29 = *(v22 - 146);
      if (v29 <= v20)
      {
        v32 = v22 - 147;
        do
        {
          if (v29 == v20 && *(v32 + 147) > v23)
          {
            break;
          }

          v29 = *v32;
          v32 -= 74;
        }

        while (v29 <= v20);
        v22 = v32 + 73;
      }

      else
      {
        v22 -= 74;
      }
    }

    else if (v28 < v22)
    {
      v30 = v22 - 74;
      v31 = *(v22 - 146);
      if (v31 <= v20)
      {
        v48 = v22 - 147;
        do
        {
          v49 = (v48 + 73);
          if (v31 == v20)
          {
            if (*(v48 + 147) > v23 || v28 >= v49)
            {
              goto LABEL_32;
            }
          }

          else if (v28 >= v49)
          {
            break;
          }

          v30 -= 74;
          v31 = *v48;
          v48 -= 74;
        }

        while (v31 <= v20);
        v22 = v48 + 73;
      }

      else
      {
LABEL_32:
        v22 = v30;
      }
    }

    v108 = v22;
    ii = v28;
    if (v28 < v22)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v109, &v108);
        for (ii = (v109 + 148); ; ii += 74)
        {
          v33 = *(ii + 2);
          if (v33 <= v20 && (v33 != v20 || *(ii + 1) <= v23))
          {
            break;
          }
        }

        v109 = ii;
        v34 = *(v108 - 146);
        if (v34 <= v20)
        {
          v36 = (v108 - 294);
          do
          {
            if (v34 == v20 && *(v36 + 147) > v23)
            {
              break;
            }

            v34 = *v36;
            v36 -= 74;
          }

          while (v34 <= v20);
          v35 = v36 + 73;
        }

        else
        {
          v35 = (v108 - 148);
        }

        v108 = v35;
      }

      while (ii < v35);
    }

    v37 = ii - 74;
    if (ii - 74 != v13)
    {
      v38 = *v37;
      v13[2] = *(ii - 146);
      *v13 = v38;
      std::vector<BOOL>::__move_assign((v13 + 4), (ii - 72));
      memcpy(v13 + 10, ii - 69, 0x221uLL);
    }

    *v37 = v24;
    *(ii - 147) = v23;
    *(ii - 146) = v20;
    v39 = *(ii - 72);
    if (v39)
    {
      operator delete(v39);
    }

    *(ii - 72) = v25;
    *(ii - 71) = v99;
    memcpy(ii - 69, __dst, 0x221uLL);
    a4 = v101;
    if (v28 < v22)
    {
      goto LABEL_57;
    }

    v40 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(v106, (ii - 74));
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(ii, v105);
    if (!result)
    {
      if (!v40)
      {
LABEL_57:
        result = std::__introsort<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,false>(v106, ii - 592, a3, v101 & 1);
        a4 = 0;
      }

LABEL_115:
      v106 = ii;
      goto LABEL_116;
    }

    if (v40)
    {
      return result;
    }

    v105 = ii - 74;
    ii = v106;
LABEL_116:
    v6 = v105;
  }

  if (v9 == 3)
  {
    v105 = (v6 - 592);
    return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(ii, (ii + 74), (v6 - 592));
  }

  if (v9 != 4)
  {
    if (v9 == 5)
    {
      v105 = (v6 - 592);
      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(ii, (ii + 74), (ii + 148), (ii + 222), (v6 - 592));
    }

    goto LABEL_9;
  }

  v105 = (v6 - 592);
  __dst[0] = ii;
  v108 = (ii + 148);
  v109 = (ii + 74);
  v107 = v6 - 592;
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(ii, (ii + 74), (ii + 148));
  v65 = *(v6 - 146);
  v66 = *(ii + 298);
  if (v65 > v66 || v65 == v66 && *(v6 - 147) > *(ii + 297))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v108, &v107);
    v67 = v108[2];
    v68 = *(ii + 150);
    if (v67 > v68 || v67 == v68 && *(v108 + 1) > *(ii + 149))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v109, &v108);
      v69 = v109[2];
      v70 = *(ii + 2);
      if (v69 > v70 || v69 == v70 && *(v109 + 1) > *(ii + 1))
      {
        v63 = __dst;
        v64 = &v109;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(v63, v64);
      }
    }
  }

  return result;
}

void *std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(uint64_t **a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v10 = **a1;
  v4 = (*a1)[2];
  v11 = *(*a1 + 2);
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  memcpy(__dst, v2 + 5, sizeof(__dst));
  v7 = *(v3 + 8);
  *v2 = *v3;
  *(v2 + 2) = v7;
  std::vector<BOOL>::__move_assign((v2 + 2), v3 + 16);
  memcpy(v2 + 5, (v3 + 40), 0x221uLL);
  *v3 = v10;
  *(v3 + 8) = v11;
  v8 = *(v3 + 16);
  if (v8)
  {
    operator delete(v8);
  }

  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  return memcpy((v3 + 40), __dst, 0x221uLL);
}

float *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(float *result, uint64_t a2, uint64_t a3)
{
  v15 = result;
  v13 = a3;
  v14 = a2;
  v3 = *(a2 + 8);
  v4 = result[2];
  if (v3 > v4 || v3 == v4 && *(a2 + 4) > *(result + 1))
  {
    v5 = *(a3 + 8);
    if (v5 > v3 || v5 == v3 && *(a3 + 4) > *(a2 + 4))
    {
      v6 = &v15;
LABEL_19:
      v10 = &v13;
      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(v6, v10);
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v15, &v14);
    v11 = *(v13 + 8);
    v12 = v14[2];
    if (v11 > v12 || v11 == v12 && *(v13 + 4) > *(v14 + 1))
    {
      v6 = &v14;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = *(a3 + 8);
    if (v7 > v3 || v7 == v3 && *(a3 + 4) > *(a2 + 4))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v14, &v13);
      v8 = v14[2];
      v9 = v15[2];
      if (v8 > v9 || v8 == v9 && *(v14 + 1) > *(v15 + 1))
      {
        v6 = &v15;
        v10 = &v14;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(v6, v10);
      }
    }
  }

  return result;
}

void *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v29 = a1;
  v26 = a4;
  v27 = a3;
  v25 = a5;
  v33 = a1;
  v31 = a3;
  v32 = a2;
  v30 = a4;
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(a1, a2, a3);
  v11 = *(a4 + 8);
  v12 = *(a3 + 8);
  if (v11 > v12 || v11 == v12 && *(a4 + 4) > *(a3 + 4))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v31, &v30);
    v13 = v31[2];
    v14 = *(a2 + 8);
    if (v13 > v14 || v13 == v14 && *(v31 + 1) > *(a2 + 4))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v32, &v31);
      v15 = v32[2];
      v16 = *(a1 + 8);
      if (v15 > v16 || v15 == v16 && *(v32 + 1) > *(a1 + 4))
      {
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v33, &v32);
      }
    }
  }

  v17 = *(a5 + 8);
  v18 = *(a4 + 8);
  if (v17 > v18 || v17 == v18 && *(a5 + 4) > *(a4 + 4))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v26, &v25);
    v19 = v26[2];
    v20 = *(a3 + 8);
    if (v19 > v20 || v19 == v20 && *(v26 + 1) > *(a3 + 4))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v27, &v26);
      v21 = v27[2];
      v22 = *(a2 + 8);
      if (v21 > v22 || v21 == v22 && *(v27 + 1) > *(a2 + 4))
      {
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v28, &v27);
        v23 = v28[2];
        v24 = *(a1 + 8);
        if (v23 > v24 || v23 == v24 && *(v28 + 1) > *(a1 + 4))
        {
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v29, &v28);
        }
      }
    }
  }

  return result;
}

char *std::__partial_sort[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &>(char *result, char *a2, uint64_t *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v53 = result;
    v6 = a2 - result;
    v7 = 0x14C1BACF914C1BADLL * ((a2 - result) >> 4);
    if (a2 - result >= 593)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = &result[592 * v8];
      do
      {
        result = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(v5, v7, v10);
        v10 -= 592;
        --v9;
      }

      while (v9);
    }

    v52 = v4;
    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        v12 = *(v11 + 2);
        v13 = v53[2];
        if (v12 > v13 || v12 == v13 && *(v11 + 1) > *(v53 + 1))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v52, &v53);
          result = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(v53, v7, v53);
          v11 = v52;
        }

        v11 += 74;
        v52 = v11;
      }

      while (v11 != a3);
      v5 = v53;
      v6 = v4 - v53;
    }

    if (v6 >= 593)
    {
      v14 = 0x14C1BACF914C1BADLL * (v6 >> 4);
      do
      {
        v15 = v4;
        v54 = *v5;
        v55 = *(v5 + 2);
        v16 = *(v5 + 3);
        v50 = *(v5 + 2);
        v17 = *(v5 + 4);
        *(v5 + 3) = 0;
        *(v5 + 4) = 0;
        *(v5 + 2) = 0;
        memcpy(__dst, v5 + 40, 0x221uLL);
        v18 = 0;
        v19 = v5;
        do
        {
          v20 = v19;
          v21 = &v19[592 * v18];
          v19 = v21 + 592;
          v22 = 2 * v18;
          v18 = (2 * v18) | 1;
          v23 = v22 + 2;
          if (v23 < v14)
          {
            v24 = *(v21 + 150);
            v25 = *(v21 + 298);
            if (v24 > v25 || v24 == v25 && *(v21 + 149) > *(v21 + 297))
            {
              v19 = v21 + 1184;
              v18 = v23;
            }
          }

          v26 = *v19;
          *(v20 + 2) = *(v19 + 2);
          *v20 = v26;
          std::vector<BOOL>::__move_assign((v20 + 16), (v19 + 16));
          memcpy(v20 + 40, v19 + 40, 0x221uLL);
        }

        while (v18 <= ((v14 - 2) >> 1));
        v4 = v15 - 74;
        if (v19 == (v15 - 74))
        {
          v33 = v54;
          *(v19 + 2) = v55;
          *v19 = v33;
          v34 = *(v19 + 2);
          if (v34)
          {
            operator delete(v34);
          }

          *(v19 + 2) = v50;
          *(v19 + 3) = v16;
          *(v19 + 4) = v17;
          v35 = v19 + 40;
          v36 = __dst;
        }

        else
        {
          v27 = *v4;
          *(v19 + 2) = *(v15 - 146);
          *v19 = v27;
          std::vector<BOOL>::__move_assign((v19 + 16), (v15 - 72));
          memcpy(v19 + 40, v15 - 69, 0x221uLL);
          *v4 = v54;
          *(v15 - 146) = v55;
          if (*(v15 - 72))
          {
            operator delete(*(v15 - 72));
          }

          *(v15 - 72) = v50;
          *(v15 - 71) = v16;
          *(v15 - 70) = v17;
          result = memcpy(v15 - 69, __dst, 0x221uLL);
          if (v19 + 592 - v5 < 593)
          {
            continue;
          }

          v28 = 0x14C1BACF914C1BADLL * ((v19 + 592 - v5) >> 4) - 2;
          v29 = v28 >> 1;
          v30 = &v5[592 * (v28 >> 1)];
          v31 = *(v30 + 2);
          v32 = *(v19 + 2);
          if (v31 <= v32)
          {
            if (v31 != v32)
            {
              continue;
            }

            v51 = *(v19 + 1);
            if (*(v30 + 1) <= v51)
            {
              continue;
            }
          }

          else
          {
            v51 = *(v19 + 1);
          }

          v46 = *v19;
          v48 = *(v19 + 3);
          v49 = *(v19 + 2);
          v47 = *(v19 + 4);
          *(v19 + 2) = 0;
          *(v19 + 3) = 0;
          *(v19 + 4) = 0;
          memcpy(__src, v19 + 40, 0x221uLL);
          v37 = *(v30 + 2);
          *v19 = *v30;
          *(v19 + 2) = v37;
          v38 = v30 + 16;
          std::vector<BOOL>::__move_assign((v19 + 16), (v30 + 16));
          v39 = v30 + 40;
          memcpy(v19 + 40, v30 + 40, 0x221uLL);
          if (v28 >= 2)
          {
            while (1)
            {
              v41 = v29 - 1;
              v29 = (v29 - 1) >> 1;
              v40 = &v5[592 * v29];
              v42 = *(v40 + 2);
              if (v42 <= v32 && (v42 != v32 || *(v40 + 1) <= v51))
              {
                break;
              }

              v43 = *v40;
              *(v30 + 2) = *(v40 + 2);
              *v30 = v43;
              v38 = v40 + 16;
              std::vector<BOOL>::__move_assign((v30 + 16), (v40 + 16));
              v39 = v40 + 40;
              memcpy(v30 + 40, v40 + 40, 0x221uLL);
              v30 = &v5[592 * v29];
              if (v41 <= 1)
              {
                goto LABEL_39;
              }
            }
          }

          v40 = v30;
LABEL_39:
          *v40 = v46;
          *(v40 + 1) = v51;
          *(v40 + 2) = v32;
          v44 = *(v40 + 2);
          if (v44)
          {
            operator delete(v44);
            v38[1] = 0;
            v38[2] = 0;
          }

          *v38 = v49;
          *(v40 + 3) = v48;
          *(v40 + 4) = v47;
          v36 = __src;
          v35 = v39;
        }

        result = memcpy(v35, v36, 0x221uLL);
      }

      while (v14-- > 2);
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  __dst[69] = *MEMORY[0x277D85DE8];
  v34 = a2;
  v35 = a1;
  v4 = 0x14C1BACF914C1BADLL * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v34 = a2 - 592;
        v5 = *(a2 - 584);
        v6 = *(a1 + 8);
        if (v5 <= v6 && (v5 != v6 || *(a2 - 588) <= *(a1 + 4)))
        {
          return 1;
        }

        v7 = &v35;
        v8 = &v34;
        goto LABEL_45;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(a1, a1 + 592, a2 - 592);
      return 1;
    case 4:
      v38 = (a1 + 592);
      __dst[0] = a1;
      v36 = a2 - 592;
      v37 = (a1 + 1184);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(a1, a1 + 592, a1 + 1184);
      v23 = *(v2 - 584);
      v24 = *(a1 + 1192);
      if (v23 <= v24 && (v23 != v24 || *(v2 - 588) <= *(a1 + 1188)))
      {
        return 1;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v37, &v36);
      v25 = v37[2];
      v26 = *(a1 + 600);
      if (v25 <= v26 && (v25 != v26 || *(v37 + 1) <= *(a1 + 596)))
      {
        return 1;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(&v38, &v37);
      v27 = v38[2];
      v28 = *(a1 + 8);
      if (v27 <= v28 && (v27 != v28 || *(v38 + 1) <= *(a1 + 4)))
      {
        return 1;
      }

      v7 = __dst;
      v8 = &v38;
LABEL_45:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ou3dor::Object3DEncoder::ObjectView *&,ou3dor::Object3DEncoder::ObjectView *&>(v7, v8);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(a1, a1 + 592, a1 + 1184, a1 + 1776, a2 - 592);
      return 1;
  }

LABEL_13:
  v9 = (a1 + 1184);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*,0>(a1, a1 + 592, a1 + 1184);
  v10 = (a1 + 1776);
  if (a1 + 1776 == v2)
  {
    return 1;
  }

  v11 = 0;
  for (i = (a1 + 1224); ; i += 148)
  {
    v13 = v10[2];
    v14 = v9[2];
    if (v13 <= v14)
    {
      if (v13 != v14)
      {
        goto LABEL_33;
      }

      v15 = *(v10 + 1);
      if (v15 <= *(v9 + 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(v10 + 1);
    }

    v30 = *v10;
    v32 = *(v10 + 3);
    v33 = *(v10 + 2);
    v31 = *(v10 + 4);
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 4) = 0;
    memcpy(__dst, v10 + 10, 0x221uLL);
    *v10 = *v9;
    v10[2] = v9[2];
    v16 = v9 + 4;
    std::vector<BOOL>::__move_assign((v10 + 4), (v9 + 4));
    v17 = v9 + 10;
    memcpy(v10 + 10, v9 + 10, 0x221uLL);
    v18 = v35;
    if (v9 != v35)
    {
      v19 = i;
      v20 = v9;
      while (1)
      {
        v21 = *(v19 - 156);
        if (v13 <= v21)
        {
          if (v13 != v21)
          {
            v9 = v20;
            goto LABEL_28;
          }

          if (v15 <= *(v19 - 157))
          {
            break;
          }
        }

        v9 = v20 - 148;
        v22 = v19 - 158;
        *(v19 - 5) = *(v19 - 79);
        *(v19 - 8) = *(v19 - 156);
        v16 = v20 - 144;
        std::vector<BOOL>::__move_assign((v19 - 6), (v19 - 154));
        v17 = v19 - 148;
        memcpy(v19, v19 - 148, 0x221uLL);
        v19 -= 148;
        v20 = v9;
        if (v22 == v18)
        {
          goto LABEL_29;
        }
      }

      v16 = v19 - 6;
      v9 = v19 - 10;
LABEL_28:
      v17 = v19;
    }

LABEL_29:
    *v9 = v30;
    *(v9 + 1) = v15;
    v9[2] = v13;
    if (*v16)
    {
      operator delete(*v16);
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
    }

    *v16 = v33;
    *(v9 + 3) = v32;
    *(v9 + 4) = v31;
    memcpy(v17, __dst, 0x221uLL);
    if (++v11 == 8)
    {
      break;
    }

    v2 = v34;
LABEL_33:
    v9 = v10;
    v10 += 148;
    if (v10 == v2)
    {
      return 1;
    }
  }

  return v10 + 148 == v34;
}

char *std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::Object3DEncoder::AddToObject(ou3dor::Object3DEncoder::ObjectView &&,ou3dor::Object3DEncoder::ObjectWithViews<3ul> &)::$_0 &,ou3dor::Object3DEncoder::ObjectView*>(char *result, uint64_t a2, char *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v5 = result;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= 0x14C1BACF914C1BADLL * ((a3 - result) >> 4))
    {
      v8 = (0x2983759F2298375ALL * ((a3 - result) >> 4)) | 1;
      v9 = &result[592 * v8];
      if (0x2983759F2298375ALL * ((a3 - result) >> 4) + 2 < a2)
      {
        v10 = *(v9 + 2);
        v11 = *(v9 + 150);
        if (v10 > v11 || v10 == v11 && *(v9 + 1) > *(v9 + 149))
        {
          v9 += 592;
          v8 = 0x2983759F2298375ALL * ((a3 - result) >> 4) + 2;
        }
      }

      v12 = *(v9 + 2);
      v13 = *(a3 + 2);
      if (v12 <= v13)
      {
        if (v12 == v13)
        {
          v14 = *(a3 + 1);
          if (*(v9 + 1) > v14)
          {
            return result;
          }
        }

        else
        {
          v14 = *(a3 + 1);
        }

        v26 = *a3;
        v28 = *(a3 + 3);
        v29 = *(a3 + 2);
        v27 = *(a3 + 4);
        *(a3 + 2) = 0;
        *(a3 + 3) = 0;
        *(a3 + 4) = 0;
        memcpy(__dst, a3 + 40, sizeof(__dst));
        v15 = *(v9 + 2);
        *a3 = *v9;
        *(a3 + 2) = v15;
        v16 = v9 + 16;
        std::vector<BOOL>::__move_assign((a3 + 16), (v9 + 16));
        v17 = v9 + 40;
        memcpy(a3 + 40, v9 + 40, 0x221uLL);
        if (v6 >= v8)
        {
          while (1)
          {
            v20 = 2 * v8;
            v8 = (2 * v8) | 1;
            v18 = &v5[592 * v8];
            v21 = v20 + 2;
            if (v21 < a2)
            {
              v22 = *(v18 + 2);
              v23 = *(v18 + 150);
              if (v22 > v23 || v22 == v23 && *(v18 + 1) > *(v18 + 149))
              {
                v18 += 592;
                v8 = v21;
              }
            }

            v24 = *(v18 + 2);
            if (v24 > v13 || v24 == v13 && *(v18 + 1) > v14)
            {
              break;
            }

            v25 = *v18;
            *(v9 + 2) = *(v18 + 2);
            *v9 = v25;
            v16 = v18 + 16;
            std::vector<BOOL>::__move_assign((v9 + 16), (v18 + 16));
            v17 = v18 + 40;
            memcpy(v9 + 40, v18 + 40, 0x221uLL);
            v9 = v18;
            if (v6 < v8)
            {
              goto LABEL_14;
            }
          }
        }

        v18 = v9;
LABEL_14:
        *v18 = v26;
        *(v18 + 1) = v14;
        *(v18 + 2) = v13;
        v19 = *(v18 + 2);
        if (v19)
        {
          operator delete(v19);
          v16[1] = 0;
          v16[2] = 0;
        }

        *v16 = v29;
        *(v18 + 3) = v28;
        *(v18 + 4) = v27;
        return memcpy(v17, __dst, 0x221uLL);
      }
    }
  }

  return result;
}

uint64_t **std::map<NSString * {__strong},std::unordered_set<SemanticLabelv5>>::map[abi:ne200100](uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::__emplace_hint_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>> const&>(a1, v4, a2, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::__emplace_hint_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::set<unsigned char>>>>::__find_equal<NSString * {__strong}>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::__construct_node<std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>> const&>();
  }

  return result;
}

void sub_25D27006C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100](void *a1, id *a2)
{
  v3 = a2 + 1;
  *a1 = *a2;
  std::unordered_set<SemanticLabelv5>::unordered_set((a1 + 1), v3);
  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a2 + 5));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unordered_set<SemanticLabelv5>>>>::destroy(a1, a2[1]);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a2 + 5));

    operator delete(a2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string const,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>::~pair(uint64_t a1)
{
  for (i = 1824; i != -544; i -= 592)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      operator delete(v3);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25D2704CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D270580(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN6ou3dor15Object3DEncoder15ObjectWithViewsILm3EEEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSG_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSP_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  bzero(&this[1], 0xB50uLL);
  for (i = 0; i != 2368; i += 592)
  {
    v6 = this + i;
    *(v6 + 6) = 0;
    *(v6 + 7) = 0;
    *(v6 + 8) = 0;
    v6[104] = 0;
    v6[616] = 0;
  }

  this[100].__r_.__value_.__s.__data_[0] = 0;
  this[121].__r_.__value_.__s.__data_[8] = 0;
  return this;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ou3dor::Object3DEncoder::ObjectWithViews<3ul>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    for (i = 230; i != -66; i -= 74)
    {
      v4 = __p[i];
      if (v4)
      {
        operator delete(v4);
      }
    }

    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void _GLOBAL__sub_I_Object3DEncoder_mm()
{
  v120[7] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  LODWORD(v64) = 0;
  *(&v64 + 1) = @"Unknown";
  LODWORD(v65) = 1;
  *(&v65 + 1) = *(&v64 + 1);
  LODWORD(v66) = 2;
  *(&v66 + 1) = *(&v65 + 1);
  LODWORD(v67) = 3;
  *(&v67 + 1) = *(&v66 + 1);
  LODWORD(v68) = 4;
  *(&v68 + 1) = *(&v67 + 1);
  LODWORD(v69) = 5;
  *(&v69 + 1) = *(&v68 + 1);
  LODWORD(v70) = 6;
  v21 = @"Door";
  *(&v70 + 1) = v21;
  LODWORD(v71) = 7;
  v20 = @"Window";
  *(&v71 + 1) = v20;
  LODWORD(v72) = 8;
  *(&v72 + 1) = *(&v69 + 1);
  LODWORD(v73) = 9;
  v18 = @"Fireplace";
  *(&v73 + 1) = v18;
  LODWORD(v74) = 10;
  *(&v74 + 1) = *(&v72 + 1);
  LODWORD(v75) = 11;
  *(&v75 + 1) = *(&v74 + 1);
  LODWORD(v76) = 12;
  v19 = @"Stairs";
  *(&v76 + 1) = v19;
  LODWORD(v77) = 13;
  v14 = @"Bed";
  *(&v77 + 1) = v14;
  LODWORD(v78) = 14;
  v79 = @"Cabinet";
  LODWORD(v80) = 15;
  v17 = @"Chair";
  v81 = v17;
  v82 = 16;
  v83 = v79;
  v84 = 17;
  v85 = v83;
  LODWORD(v86) = 18;
  v16 = @"Sofa";
  v87 = v16;
  v88 = 19;
  v15 = @"Table";
  v89 = v15;
  v90 = 20;
  v13 = @"Toilet";
  v91 = v13;
  LODWORD(v92[0]) = 21;
  v11 = @"Sink";
  v92[1] = v11;
  v93 = 22;
  v12 = @"Bathtub";
  v94 = v12;
  v95 = 23;
  v96 = *(&v75 + 1);
  LODWORD(v97[0]) = 24;
  v0 = @"Refrigerator";
  v97[1] = v0;
  v98 = 25;
  v1 = @"Stove";
  v99 = v1;
  v100 = 26;
  v2 = @"Washer";
  v101 = v2;
  LODWORD(v102[0]) = 27;
  v3 = @"Oven";
  v102[1] = v3;
  v103 = 28;
  v4 = @"Dishwasher";
  v104 = v4;
  v105 = 29;
  v106 = v96;
  LODWORD(v107[0]) = 30;
  v5 = v85;
  v107[1] = v5;
  v108 = 31;
  v109 = v106;
  v110 = 32;
  v10 = @"Screen";
  v111 = v10;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSemanticsODLabelMap, &v64, 33);
  for (i = 520; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSemanticsODLabelMap, &dword_25D1DB000);
  v74 = xmmword_25D27A068;
  v75 = unk_25D27A078;
  v76 = xmmword_25D27A088;
  v77 = unk_25D27A098;
  v70 = xmmword_25D27A028;
  v71 = unk_25D27A038;
  v72 = xmmword_25D27A048;
  v73 = unk_25D27A058;
  v66 = xmmword_25D279FE8;
  v67 = unk_25D279FF8;
  v68 = xmmword_25D27A008;
  v69 = unk_25D27A018;
  v64 = xmmword_25D279FC8;
  v65 = unk_25D279FD8;
  v78 = 28;
  std::unordered_map<int,SemanticLabelv5>::unordered_map(&kSparseSSDSemanticLabels, &v64, 29);
  __cxa_atexit(std::unordered_map<int,SemanticLabelv5>::~unordered_map[abi:ne200100], &kSparseSSDSemanticLabels, &dword_25D1DB000);
  LODWORD(v64) = 0;
  *(&v64 + 1) = v5;
  LODWORD(v65) = 1;
  *(&v65 + 1) = v0;
  LODWORD(v66) = 2;
  *(&v66 + 1) = @"Shelf";
  LODWORD(v67) = 3;
  *(&v67 + 1) = v1;
  LODWORD(v68) = 4;
  *(&v68 + 1) = v14;
  LODWORD(v69) = 5;
  *(&v69 + 1) = v11;
  LODWORD(v70) = 6;
  *(&v70 + 1) = v2;
  LODWORD(v71) = 7;
  *(&v71 + 1) = v13;
  LODWORD(v72) = 8;
  *(&v72 + 1) = v12;
  LODWORD(v73) = 9;
  *(&v73 + 1) = v3;
  LODWORD(v74) = 10;
  *(&v74 + 1) = v4;
  LODWORD(v75) = 11;
  *(&v75 + 1) = v18;
  LODWORD(v76) = 12;
  *(&v76 + 1) = @"Stool";
  LODWORD(v77) = 13;
  *(&v77 + 1) = v17;
  LODWORD(v78) = 14;
  v79 = v15;
  LODWORD(v80) = 15;
  v81 = v10;
  v82 = 16;
  v83 = v16;
  v84 = 17;
  v85 = v19;
  LODWORD(v86) = 18;
  v87 = v20;
  v88 = 19;
  v89 = v21;
  v90 = 20;
  v91 = @"BuildInCabinet";
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSparseSSDObjectLabels, &v64, 21);
  for (j = 328; j != -8; j -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSparseSSDObjectLabels, &dword_25D1DB000);
  v61 = 4366;
  v62 = 30;
  std::unordered_set<SemanticLabelv5>::unordered_set(v63, &v61, 3);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v64, &OU3DObjectTypeCabinet, v63);
  v59 = 24;
  std::unordered_set<SemanticLabelv5>::unordered_set(v60, &v59, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v67, &OU3DObjectTypeRefrigerator, v60);
  v56 = 4366;
  v57 = 30;
  std::unordered_set<SemanticLabelv5>::unordered_set(v58, &v56, 3);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v70, &OU3DObjectTypeShelf, v58);
  v54 = 25;
  std::unordered_set<SemanticLabelv5>::unordered_set(v55, &v54, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v73, &OU3DObjectTypeStove, v55);
  v52 = 13;
  std::unordered_set<SemanticLabelv5>::unordered_set(v53, &v52, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v76, &OU3DObjectTypeBed, v53);
  v50 = 21;
  std::unordered_set<SemanticLabelv5>::unordered_set(v51, &v50, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v80, &OU3DObjectTypeSink, v51);
  v48 = 26;
  std::unordered_set<SemanticLabelv5>::unordered_set(v49, &v48, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(&v86, &OU3DObjectTypeWasher, v49);
  v46 = 20;
  std::unordered_set<SemanticLabelv5>::unordered_set(v47, &v46, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v92, &OU3DObjectTypeToilet, v47);
  v44 = 22;
  std::unordered_set<SemanticLabelv5>::unordered_set(v45, &v44, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v97, &OU3DObjectTypeBathtub, v45);
  v42 = 27;
  std::unordered_set<SemanticLabelv5>::unordered_set(v43, &v42, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v102, &OU3DObjectTypeOven, v43);
  v40 = 28;
  std::unordered_set<SemanticLabelv5>::unordered_set(v41, &v40, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v107, &OU3DObjectTypeDishwasher, v41);
  v38 = 9;
  std::unordered_set<SemanticLabelv5>::unordered_set(v39, &v38, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v112, &OU3DObjectTypeFireplace, v39);
  v36 = 15;
  std::unordered_set<SemanticLabelv5>::unordered_set(v37, &v36, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v113, &OU3DObjectTypeStool, v37);
  v34 = 15;
  std::unordered_set<SemanticLabelv5>::unordered_set(v35, &v34, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v114, &OU3DObjectTypeChair, v35);
  v32 = 19;
  std::unordered_set<SemanticLabelv5>::unordered_set(v33, &v32, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v115, &OU3DObjectTypeTable, v33);
  v30 = 32;
  std::unordered_set<SemanticLabelv5>::unordered_set(v31, &v30, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v116, &OU3DObjectTypeScreen, v31);
  v28 = 18;
  std::unordered_set<SemanticLabelv5>::unordered_set(v29, &v28, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v117, &OU3DObjectTypeSofa, v29);
  v26 = 12;
  std::unordered_set<SemanticLabelv5>::unordered_set(v27, &v26, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v118, &OU3DObjectTypeStairs, v27);
  v24 = 7;
  std::unordered_set<SemanticLabelv5>::unordered_set(v25, &v24, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v119, &OU3DObjectTypeWindow, v25);
  v22 = 6;
  std::unordered_set<SemanticLabelv5>::unordered_set(v23, &v22, 1);
  std::pair<NSString * const {__strong},std::unordered_set<SemanticLabelv5>>::pair[abi:ne200100]<true,0>(v120, &OU3DObjectTypeDoor, v23);
  std::map<NSString * {__strong},std::unordered_set<SemanticLabelv5>>::map[abi:ne200100](kObjectTypeToSemanticLabels, &v64, 20);
  v8 = 960;
  do
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v63[v8]);

    v8 -= 48;
  }

  while (v8);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v23);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v25);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v27);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v29);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v31);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v33);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v35);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v37);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v39);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v41);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v43);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v45);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v47);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v49);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v51);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v53);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v55);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v58);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v60);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v63);
  __cxa_atexit(std::map<NSString * {__strong},std::unordered_set<SemanticLabelv5>>::~map[abi:ne200100], kObjectTypeToSemanticLabels, &dword_25D1DB000);
  objc_autoreleasePoolPop(context);
}

void sub_25D271318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = v66 + 920;
  v69 = -960;
  do
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v68);

    v68 -= 48;
    v69 += 48;
  }

  while (v69);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a24);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a30);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a36);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a42);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a48);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a54);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a60);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a65);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a66);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x228]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x258]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x288]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x2B8]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x2E8]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x318]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x348]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x378]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x3A8]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x3D8]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x408]);
  _Unwind_Resume(a1);
}

CVPixelBufferRef CreateCVPixelBuffer(uint64_t a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  poolOut = 0;
  v16[0] = *MEMORY[0x277CC4E30];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v17[0] = v4;
  v16[1] = *MEMORY[0x277CC4EC8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  v17[1] = v5;
  v16[2] = *MEMORY[0x277CC4DD8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  v16[3] = *MEMORY[0x277CC4DE8];
  v17[2] = v6;
  v17[3] = MEMORY[0x277CBEC10];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v8 = *MEMORY[0x277CBECE8];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v7, &poolOut);
  v9 = CVPixelBufferPoolCreatePixelBuffer(v8, poolOut, &pixelBufferOut);
  if (v9)
  {
    v12 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      CreateCVPixelBuffer(v12);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F894AD0](exception, &unk_25D2878C2);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  CVPixelBufferPoolRelease(poolOut);
  return pixelBufferOut;
}

float GetVoteWeight(float a1, float a2)
{
  v2 = vabds_f32(a1, a2);
  result = 3.0;
  if (v2 >= 0.1)
  {
    result = 2.0;
    if (v2 >= 0.2)
    {
      result = 0.0;
      if (v2 < 0.3)
      {
        return 1.0;
      }
    }
  }

  return result;
}

unint64_t HistogramMaxBin(float **a1, uint64_t a2, float a3)
{
  v6 = a1[1];
  v7 = *a1;
  if (v7 == v6 || v6 - v7 != *(a2 + 8) - *a2)
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    LOBYTE(v29) = 0;
    v8 = std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>,std::__identity,std::__less<void,void>>(v7, v6);
    v10 = (vcvtms_s32_f32(((*v9 + a3) - *v8) / a3) + 1);
    v29 = 0;
    std::vector<float>::vector[abi:ne200100](&__p, v10, &v29);
    v11 = *a1;
    v12 = __p;
    v13 = a1[1] - *a1;
    if (v13)
    {
      v14 = v13 >> 2;
      v15 = *a2;
      if (v14 <= 1)
      {
        v14 = 1;
      }

      do
      {
        v16 = *v11++;
        v17 = vcvtms_s32_f32((v16 - *v8) / a3);
        v18 = *v15++;
        v12[v17] = v18 + v12[v17];
        --v14;
      }

      while (v14);
    }

    if (v12 == v31)
    {
      v20 = v12;
    }

    else
    {
      v19 = v12 + 1;
      v20 = v12;
      if (v12 + 1 != v31)
      {
        v21 = *v12;
        v20 = v12;
        v22 = v12 + 1;
        do
        {
          v23 = *v22++;
          v24 = v23;
          if (v21 < v23)
          {
            v21 = v24;
            v20 = v19;
          }

          v19 = v22;
        }

        while (v22 != v31);
      }
    }

    v27 = *v8 + ((v20 - v12) * a3);
    v25 = *v20;
    if (v12)
    {
      v31 = v12;
      operator delete(v12);
    }

    v26 = LODWORD(v27) << 32;
  }

  return v26 | v25;
}

void SmoothObjectUponHistory(uint64_t *__return_ptr a1@<X8>, OU3DObject *a2@<X0>)
{
  v145 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_25;
  }

  v5 = [(OU3DObject *)v3 refined_box_history];

  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = [(OU3DObject *)v4 refined_box_history];
  v7 = [v6 count];

  if (v7 < 3)
  {
    goto LABEL_25;
  }

  v8 = [(OU3DObject *)v4 refined_box_history];
  v9 = v7 - 1;
  v10 = [v8 objectAtIndexedSubscript:v7 - 1];
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = [(OU3DObject *)v4 refined_box_history];
  v12 = [v11 objectAtIndexedSubscript:v9];
  v13 = [v12 refinedBox];

  if (!v13)
  {
LABEL_25:
    *a1 = 0;
    *(a1 + 128) = 0;
    goto LABEL_26;
  }

  v8 = [(OU3DObject *)v4 refined_box_history];
  v14 = [v8 objectAtIndexedSubscript:v9];
  v15 = [v14 preRefinedBox];
  if (!v15)
  {

LABEL_24:
    goto LABEL_25;
  }

  v16 = [(OU3DObject *)v4 refined_box_history];
  v17 = [v16 objectAtIndexedSubscript:v9];
  v18 = [v17 preRefinedBox];
  v19 = [v18 count];

  if (v19 != 8)
  {
    goto LABEL_25;
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v20 = [(OU3DObject *)v4 refined_box_history];
  v21 = [v20 objectAtIndexedSubscript:v9];
  v22 = [v21 preRefinedBox];
  box3dFromNSArray(v22, &v132);

  box3dToCentroidSizeAngle(__p, &v132);
  v23 = *(__p[0] + 6);
  __p[1] = __p[0];
  operator delete(__p[0]);
  if (v23 < -9.0)
  {
    goto LABEL_25;
  }

  v130 = 0;
  v129 = 0;
  v131 = 0;
  v127 = 0;
  v126 = 0;
  v128 = 0;
  v124 = 0;
  v123 = 0;
  v125 = 0;
  v121 = 0;
  v120 = 0;
  v122 = 0;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v24 = [(OU3DObject *)v4 refined_box_history];
  v25 = [v24 countByEnumeratingWithState:&v116 objects:v144 count:16];
  if (v25)
  {
    v26 = *v117;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v117 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v116 + 1) + 8 * i);
        v29 = [v28 refinedBox];
        if (v29)
        {
          v30 = [v28 refinedBox];
          v31 = [v30 count] == 8;

          if (v31)
          {
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v134 = 0u;
            v135 = 0u;
            v132 = 0u;
            v133 = 0u;
            v32 = [v28 refinedBox];
            box3dFromNSArray(v32, &v132);

            box3dToCentroidSizeAngle(__p, &v132);
            v33 = *(__p[0] + 6);
            __p[1] = __p[0];
            operator delete(__p[0]);
            *v101 = v33;
            if (vabds_f32(v33, v23) < 0.2)
            {
              std::vector<float>::push_back[abi:ne200100](&v120, v101);
              std::vector<box3d>::push_back[abi:ne200100](&v123, &v132);
            }

            std::vector<float>::push_back[abi:ne200100](&v126, v101);
            std::vector<box3d>::push_back[abi:ne200100](&v129, &v132);
          }
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v116 objects:v144 count:16];
    }

    while (v25);
  }

  v34 = (v124 - v123) >> 7;
  if (v34 > 2)
  {
    v37 = rotationZMatrix(v23);
    v115.columns[0].i32[2] = v38;
    v115.columns[1].i32[2] = v39;
    *v115.columns[0].i64 = v37;
    v115.columns[1].i64[0] = v40;
    v115.columns[2].i32[2] = v41;
    v115.columns[2].i64[0] = v42;
    std::vector<box3d>::vector[abi:ne200100](&v113, v34);
    v43 = 0;
    v44 = v34;
    do
    {
      rotateBoxCorners(&v115, (v123 + v43), &v132);
      v45 = (v113 + v43);
      v46 = v132;
      v47 = v133;
      v48 = v135;
      v45[2] = v134;
      v45[3] = v48;
      v45[1] = v47;
      v49 = v139;
      v51 = v136;
      v50 = v137;
      v45[6] = v138;
      v45[7] = v49;
      v45[4] = v51;
      v45[5] = v50;
      *v45 = v46;
      v43 += 128;
      --v44;
    }

    while (v44);
    v52 = [(OU3DObject *)v4 refined_box_history];
    v53 = [v52 lastObject];
    v54 = [v53 preRefinedBox];

    if (v54)
    {
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      box3dFromNSArray(v54, __p);
      rotateBoxCorners(&v115, __p, &v132);
      *__p = xmmword_25D27A100;
      v141 = xmmword_25D27A110;
      v142 = xmmword_25D27A120;
      v111 = 0;
      v112 = 0;
      v110 = 0;
      std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(&v110, __p, v143, 6uLL);
      std::vector<float>::vector[abi:ne200100](v109, (v111 - v110) >> 3);
      v60 = v110;
      if (v111 != v110)
      {
        v61 = 0;
        do
        {
          v62 = &v60[8 * v61];
          v63 = *(v62 + 1);
          v64 = *v62;
          std::vector<float>::vector[abi:ne200100](__p, v34);
          std::vector<float>::vector[abi:ne200100](v101, v34);
          v65 = v113 + 16 * v64;
          v66 = __p[0];
          v67 = v101[0];
          v68 = v34;
          do
          {
            v69 = *&v65[4 * (v63 & 3)];
            *v66 = v69;
            v70 = vabds_f32(v69, *((&v132 + v64) & 0xFFFFFFFFFFFFFFF3 | (4 * (v63 & 3))));
            v71 = 3.0;
            if (v70 >= 0.1)
            {
              v71 = 2.0;
              if (v70 >= 0.2)
              {
                if (v70 >= 0.3)
                {
                  v71 = 0.0;
                }

                else
                {
                  v71 = 1.0;
                }
              }
            }

            *v67++ = v71;
            ++v66;
            v65 += 128;
            --v68;
          }

          while (v68);
          v72 = HistogramMaxBin(__p, v101, 0.05);
          *(v109[0] + v61) = HIDWORD(v72);
          if (v101[0])
          {
            v101[1] = v101[0];
            operator delete(v101[0]);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          ++v61;
          v60 = v110;
        }

        while (v61 < (v111 - v110) >> 3);
      }

      v59.n128_u32[0] = *v109[0];
      LODWORD(v58) = *(v109[0] + 3);
      v73 = *(v109[0] + 4);
      v74 = *(v109[0] + 5);
      v75 = *(v109[0] + 4);
      v76 = v59;
      v76.n128_u32[1] = v58;
      v76.n128_u64[0] = vmul_f32(vadd_f32(v75, v76.n128_u64[0]), 0x3F0000003F000000);
      v76.n128_f32[2] = (v73 + v74) * 0.5;
      v96 = v59.n128_u64[0];
      v97 = v58;
      *v57.i32 = v75.f32[0] - *v109[0];
      v98 = v75;
      *&v57.i32[1] = *&v58 - v75.f32[1];
      *&v57.i32[2] = v74 - v73;
      v142 = 0u;
      memset(v143, 0, sizeof(v143));
      *__p = 0u;
      v141 = 0u;
      v77 = vzip1q_s32(v115.columns[0], v115.columns[2]);
      v99.columns[0] = vzip1q_s32(v77, v115.columns[1]);
      v99.columns[1] = vzip2q_s32(v77, vdupq_lane_s32(*v115.columns[1].f32, 1));
      v99.columns[2] = vzip1q_s32(vzip2q_s32(v115.columns[0], v115.columns[2]), vdupq_laneq_s32(v115.columns[1], 2));
      centroidSizeAngleToBox3d(v101, v76, v57, 0.0);
      rotateBoxCorners(&v99, v101, __p);
      v78 = 0;
      while (1)
      {
        v79 = vsubq_f32(*&__p[v78], *&v124[v78 * 8 - 128]);
        v80 = vmulq_f32(v79, v79);
        if (sqrtf(v80.f32[2] + vaddv_f32(*v80.f32)) > 0.15)
        {
          break;
        }

        v78 += 2;
        if (v78 == 16)
        {
          goto LABEL_52;
        }
      }

      v82 = [(OU3DObject *)v4 refined_box_history:0.15];
      v83 = [v82 lastObject];
      [v83 setIsOutlier:1];

LABEL_52:
      v84 = v114[-7];
      v85 = v114[-6];
      LODWORD(v86) = v114[-8].i64[1];
      if (vabds_f32(v86, v73) >= 0.1)
      {
        v86 = v73;
      }

      v87 = *&v114[-4].i32[2];
      if (vabds_f32(v87, v74) >= 0.1)
      {
        v87 = v74;
      }

      v85.i32[1] = HIDWORD(v114[-7].i64[0]);
      v88 = vdup_n_s32(0x3DCCCCCDu);
      v89 = vbsl_s8(vcgt_f32(v88, vabd_f32(*v85.i8, __PAIR64__(v98.u32[1], v96))), *v85.i8, __PAIR64__(v98.u32[1], v96));
      v84.i32[1] = HIDWORD(v114[-8].i64[0]);
      v90.n128_u32[3] = HIDWORD(v97);
      *v84.i8 = vbsl_s8(vcgt_f32(v88, vabd_f32(*v84.i8, __PAIR64__(v97, v98.u32[0]))), *v84.i8, __PAIR64__(v97, v98.u32[0]));
      v90.n128_u64[0] = vmul_f32(vadd_f32(*v84.i8, v89), 0x3F0000003F000000);
      v90.n128_f32[2] = (v86 + v87) * 0.5;
      *v84.i8 = vsub_f32(*v84.i8, v89);
      *&v84.i32[2] = v87 - v86;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      *v101 = 0u;
      v102 = 0u;
      v91 = vzip1q_s32(v115.columns[0], v115.columns[2]);
      v100.columns[0] = vzip1q_s32(v91, v115.columns[1]);
      v100.columns[1] = vzip2q_s32(v91, vdupq_lane_s32(*v115.columns[1].f32, 1));
      v100.columns[2] = vzip1q_s32(vzip2q_s32(v115.columns[0], v115.columns[2]), vdupq_laneq_s32(v115.columns[1], 2));
      centroidSizeAngleToBox3d(&v99, v90, v84, 0.0);
      rotateBoxCorners(&v100, &v99, v101);
      v92 = v106;
      *(a1 + 4) = v105;
      *(a1 + 5) = v92;
      v93 = v108;
      *(a1 + 6) = v107;
      *(a1 + 7) = v93;
      v94 = v102;
      *a1 = *v101;
      *(a1 + 1) = v94;
      v95 = v104;
      *(a1 + 2) = v103;
      *(a1 + 3) = v95;
      *(a1 + 128) = 1;
      if (v109[0])
      {
        v109[1] = v109[0];
        operator delete(v109[0]);
      }

      if (v110)
      {
        v111 = v110;
        operator delete(v110);
      }
    }

    else
    {
      v81 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v55, v56);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        SmoothObjectUponHistory(v81);
      }

      *a1 = 0;
      *(a1 + 128) = 0;
    }

    if (v113)
    {
      v114 = v113;
      operator delete(v113);
    }
  }

  else
  {
    v35 = [(OU3DObject *)v4 refined_box_history];
    v36 = [v35 lastObject];
    [v36 setIsOutlier:0];

    *a1 = 0;
    *(a1 + 128) = 0;
  }

  if (v120)
  {
    v121 = v120;
    operator delete(v120);
  }

  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }

  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

LABEL_26:
}

void sub_25D27230C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a57)
  {
    operator delete(a57);
  }

  if (a60)
  {
    operator delete(a60);
  }

  v65 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v65;
    operator delete(v65);
  }

  v66 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v66;
    operator delete(v66);
  }

  v67 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v67;
    operator delete(v67);
  }

  v68 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v68;
    operator delete(v68);
  }

  _Unwind_Resume(a1);
}

float *std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>,std::__identity,std::__less<void,void>>(float *result, float *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= *v2 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v9 = *v7;
        v8 = v7[1];
        if (v8 >= *v7)
        {
          if (v9 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          if (v8 >= *v6)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v8 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          if (v9 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

dispatch_queue_t CreateFixedPrioritySerialDispatchQueue(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, uint64_t a4, os_workgroup_t *a5)
{
  v8 = v6 = a2;
  dispatch_workloop_set_qos_class_floor();
  if (*a5)
  {
    dispatch_workloop_set_os_workgroup(v8, *a5);
  }

  dispatch_activate(v8);
  v9 = dispatch_queue_attr_make_with_qos_class(0, v6, 0);
  v10 = dispatch_queue_create_with_target_V2(a1, v9, v8);

  return v10;
}

dispatch_queue_t CreateFixedPrioritySerialDispatchQueue(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, os_workgroup_t *a4)
  v6 = {;
  dispatch_workloop_set_scheduler_priority();
  if (*a4)
  {
    dispatch_workloop_set_os_workgroup(v6, *a4);
  }

  dispatch_activate(v6);
  v7 = dispatch_queue_create_with_target_V2(a1, 0, v6);

  return v7;
}

id CreateWorkGroup(const char *a1)
{
  v1 = os_workgroup_attr_set_flags();
  if (v1)
  {
    v3 = v1;
    v4 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v1, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CreateWorkGroup(v3, v4);
    }

    v5 = 0;
  }

  else
  {
    v5 = os_workgroup_create();
  }

  return v5;
}

dispatch_workloop_t anonymous namespace::CreateWorkloop(_anonymous_namespace_ *this, const char *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, ".workloop");
  if (this)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, this);
    v3 = std::string::append(&v9, ".workloop", 9uLL);
    v4 = v3->__r_.__value_.__r.__words[0];
    v13[0] = v3->__r_.__value_.__l.__size_;
    *(v13 + 7) = *(&v3->__r_.__value_.__r.__words[1] + 7);
    v5 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v12 < 0)
    {
      operator delete(__p);
    }

    __p = v4;
    *v11 = v13[0];
    *&v11[7] = *(v13 + 7);
    v12 = v5;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  if (v12 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  inactive = dispatch_workloop_create_inactive(p_p);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  return inactive;
}

void sub_25D27293C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void LoadRGBToDictionary()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void LoadSemanticToDictionary()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void LoadSemanticConfToDictionary()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void FindImageFilePath(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "Loaded image file %s", &v2, 0xCu);
}

void GenerateOUFramesFromCvplayer_cold_2(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "The camera timestamps and poses have different numbers: %zu vs %zu", buf, 0x16u);
}

void OU3DKitchenObjectMerger::AlignSinkWithDishwasher(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD] Warning, sink and washer doesn't align, skip crop.", buf, 2u);
}

void ou3dod::HistoryMergeInfo::Get()
{
  {
    ou3dod::HistoryMergeInfo::Get(void)::history_merge_info = 0u;
    unk_27FC2E8A0 = 0u;
    dword_27FC2E8B0 = 1065353216;
    unk_27FC2E8B8 = 0u;
    unk_27FC2E8C8 = 0u;
    dword_27FC2E8D8 = 1065353216;
    __cxa_atexit(ou3dod::HistoryMergeInfo::~HistoryMergeInfo, &ou3dod::HistoryMergeInfo::Get(void)::history_merge_info, &dword_25D1DB000);
  }
}

void ou3dor::OU3DLShapeSofaOfflineMerger::MergeLShape(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] need_merge_list size %lu", &v3, 0xCu);
}

void ou3dod::J4InputSpecialHandling(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_ERROR, "[3DOD] input size is less than target_num_voxel %d", v2, 8u);
}

void ou3dod::J4OutputSpecialHandling(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_ERROR, "[3DOD] input size is less than min_capacity %d", v2, 8u);
}

void ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<float>()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] offline network embedding feature not matched", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] offline network rgb feature input not allocated", v2, v3, v4, v5);
}

{
    ;
  }
}

void ou3dod::OU3DAnchorFreeDetector::Preprocess(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "OU3DAnchorFreeDetector";
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[3DOD][%s] Invalid point cloud.", &v1, 0xCu);
}

void OUEspressoV2Inference::LoadModel(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "OUEspressoV2Inference";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_ERROR, "[%s] Unexpected num_functions=%lu", &v2, 0x16u);
}

double ou3dod::PrintBoxCorner(_OWORD *a1, NSObject *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = COERCE_FLOAT(*a1);
  v3 = COERCE_FLOAT(HIDWORD(*a1));
  v4 = COERCE_FLOAT(a1[1]);
  v5 = COERCE_FLOAT(HIDWORD(*(a1 + 2)));
  v6 = a1[2];
  v7 = a1[3];
  v9 = 134219776;
  v10 = v2;
  v11 = 2048;
  v12 = v3;
  v13 = 2048;
  v14 = v4;
  v15 = 2048;
  v16 = v5;
  v17 = 2048;
  v18 = *&v6;
  v19 = 2048;
  v20 = *(&v6 + 1);
  v21 = 2048;
  v22 = *&v7;
  v23 = 2048;
  v24 = *(&v7 + 1);
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] corner: %f, %f, %f, %f, %f, %f, %f, %f", &v9, 0x52u);
  return result;
}

void ou3dod::AdjustBoxCornerOrder(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] nearest_box1_corner_idx: %d, nearest_box2_corner_idx: %d", v3, 0xEu);
}

void ou3dod::MaybeClipExtendLShapeObjects()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "[3DOD Lshape merge] not l shape fill", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "[3DOD Lshape merge] skip filling the corner box", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "[3DOD Lshape merge] force merge extend corner", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "[3DOD Lshape merge] skip filling the corner box because less points", v2, v3, v4, v5);
}

void ou3dod::MaybeClipExtendLShapeObjects(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] less point %lu", &v2, 0xCu);
}

void ou3dod::MaybeClipExtendLShapeObjects(uint8_t *buf, NSObject *a2, float a3)
{
  *buf = 134217984;
  *(buf + 4) = a3;
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] overlap ratio %f", buf, 0xCu);
}

void ou3dor::OU3DOREspressoV2Interface::LoadModel(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "Network path not found: %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void ou3dor::CadModelRetriever::CadModelRetriever(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "CadModelRetriever";
  v3 = 2048;
  v4 = 256;
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[3DOR][%s] incorrect size of asset embeddings, must be multiple of %lu.", &v1, 0x16u);
}

{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "CadModelRetriever";
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[3DOR][%s] Mismatch size for asset tables.", &v1, 0xCu);
}

void ou3dor::CadModelRetriever::RetrieveCadModel(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "CadModelRetriever";
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[3DOR][%s] mismatching object embedding dimension.", &v1, 0xCu);
}

void isBoxRectangle()
{
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ou3dod::OU3DSparseSSDetector::Preprocess(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "SparseSSD";
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[3DOD][%s] Invalid point cloud.", &v1, 0xCu);
}

void ou3dod::OU3DLShapeObjectMerger::MergeLShape(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] history_l_shape_uuids_paired_ %lu", &v3, 0xCu);
}

void ou3dod::OU3DLShapeObjectMerger::MergeLShape(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] merge previous pair", buf, 2u);
}

void ou3dor::OU3DObjectRepresentation::RotateImage()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "Generating upright image starts", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_25D1DB000, v0, v1, "[OUFrame Error]: invalid device orientation. Skip data saving.", v2, v3, v4, v5);
}

void ou3dor::OU3DObjectRepresentation::AddObjectRepresentation(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[OR] The %@ has no raw box.", buf, 0xCu);
}

{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[OR] The %@ is not considered for 3dor", buf, 0xCu);
}

void ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<half>()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_25D1DB000, v0, v1, "[3DOR] output image shape w %lu", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_25D1DB000, v0, v1, "[3DOR] output image tensor shape h %lu", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_25D1DB000, v0, v1, "[3DOR] output image number of elements %lu", v2, v3, v4, v5);
}

{
    ;
  }
}

void ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] online mdoel input bind is invalid.", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] online mdoel pixel format not matched", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] online mdoel number of pixel not matched", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_25D1DB000, v0, v1, "[3DOR] online mdoel image crop size not matched", v2, v3, v4, v5);
}

{
    ;
  }
}

void OU3DObjectRGBSizeRefiner::ShouldRefineObject()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_1(&dword_25D1DB000, "[3DOD RGB Refine] Object uuid: %@ box type: %s does not need refine. ", v4, v5);
}

{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_1(&dword_25D1DB000, "[3DOD RGB Refine] Object uuid: %@ box type: %s fov length is not reached", v4, v5);
}

{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_1(&dword_25D1DB000, "[3DOD RGB Refine] Object uuid: %@ box type: %s is not supported. ", v4, v5);
}

void OU3DObjectRGBSizeRefiner::ShouldRefineObject(void *a1, uint8_t *buf, os_log_t log, float a4)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a4;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD RGB Refine] Object uuid: %@ Distance: %f is out of maximum range", buf, 0x16u);
}

void OU3DObjectRGBSizeRefiner::IsBoxInFOVCorner(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  *(buf + 9) = 1024;
  *(buf + 5) = 5;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD RGB Refine] Object uuid: %s number of visible corners: %d is less than required: %d.", buf, 0x18u);
}

void utils::OUImageUtils::ResizeImageRGBA()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void utils::OUImageUtils::CropAndResizeImage()
{
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void utils::anonymous namespace::CheckCVPixelBuffers()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void utils::OUFrameWriter::OUFrameWriter(uint64_t a1, void *a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 63) < 0)
  {
    a2 = *a2;
  }

  v3 = 136315394;
  v4 = "OUFrameWriter";
  v5 = 2080;
  v6 = a2;
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[%s] failed to create output directory %s.", &v3, 0x16u);
}

void CreateWorkGroup(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_25D1DB000, a2, OS_LOG_TYPE_ERROR, "ERROR [createWorkGroup]: Failed to set workgroup flags with error (%d)\n", v2, 8u);
}

void utils::RotateInPlace<half,void>()
{
    ;
  }
}

void ou3dod::PreprocessDense<half,true>()
{
    ;
  }
}

void ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<float>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<half>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::SetVoxelFeatures<half>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::SetVoxelFeatures<float>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<half>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>()
{
    ;
  }
}

void OUDnnInferenceInterface::GetInputSpan<half,void>()
{
    ;
  }
}

void OUDnnInferenceInterface::GetInputSpan<float,void>()
{
    ;
  }
}

void OUDnnInferenceInterface::GetOutputSpan<half,void>()
{
    ;
  }
}

void OUDnnInferenceInterface::GetOutputSpan<float,void>()
{
    ;
  }
}

void ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<float>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::GetOutputInternal<half>()
{
    ;
  }
}

void ou3dor::OU3DOROfflineEspressoV2::GetOutputInternal<float>()
{
    ;
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}