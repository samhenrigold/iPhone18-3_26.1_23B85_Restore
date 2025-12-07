void ***std::__exception_guard_exceptions<std::vector<operations_research::sat::CtEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            *(v4 - 7) = v6;
            operator delete(v6);
          }

          v4 -= 120;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<operations_research::sat::CtEvent>,operations_research::sat::CtEvent*,operations_research::sat::CtEvent*,operations_research::sat::CtEvent*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v8 = *v5;
      v9 = v5[1];
      v10 = v5[2];
      *(a4 + 48) = *(v5 + 6);
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
      *a4 = v8;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      v12 = *(v5 + 7);
      v11 = *(v5 + 8);
      if (v11 != v12)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v6 = v5[5];
      v7 = v5[6];
      *(a4 + 111) = *(v5 + 111);
      *(a4 + 80) = v6;
      *(a4 + 96) = v7;
      v5 = (v5 + 120);
      a4 += 120;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_23CCEDAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 64) = v12;
    operator delete(v12);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::CtEvent>,operations_research::sat::CtEvent*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::CtEvent>,operations_research::sat::CtEvent*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 64);
      if (v5)
      {
        *(v3 - 56) = v5;
        operator delete(v5);
      }

      v3 -= 120;
    }
  }

  return a1;
}

uint64_t std::vector<operations_research::sat::CtEvent>::__emplace_back_slow_path<operations_research::sat::CtEvent const&>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x222222222222222)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v4 = 0x222222222222222;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x222222222222222)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = *(a2 + 56);
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v8 = *(a2 + 64);
  if (v8 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = *(a2 + 96);
  *(v5 + 80) = *(a2 + 80);
  *(v5 + 96) = v9;
  *(v5 + 111) = *(a2 + 111);
  v10 = *a1;
  v11 = a1[1];
  v12 = v5 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v5 + *a1 - v11;
    do
    {
      v15 = *v13;
      v16 = *(v13 + 2);
      v17 = v13[6];
      *(v14 + 16) = *(v13 + 1);
      *(v14 + 32) = v16;
      *v14 = v15;
      *(v14 + 48) = v17;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 56) = *(v13 + 7);
      *(v14 + 72) = v13[9];
      v13[7] = 0;
      v13[8] = 0;
      v13[9] = 0;
      v18 = *(v13 + 5);
      v19 = *(v13 + 6);
      *(v14 + 111) = *(v13 + 111);
      *(v14 + 80) = v18;
      *(v14 + 96) = v19;
      v13 += 15;
      v14 += 120;
    }

    while (v13 != v11);
    do
    {
      v20 = v10[7];
      if (v20)
      {
        v10[8] = v20;
        operator delete(v20);
      }

      v10 += 15;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v5 + 120;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v5 + 120;
}

void sub_23CCEDD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 64) = v6;
    operator delete(v6);
  }

  std::__split_buffer<operations_research::sat::CtEvent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::CtEvent>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 120;
        *(a1 + 16) = v2 - 120;
        v5 = *(v2 - 64);
        if (!v5)
        {
          break;
        }

        *(v2 - 56) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 120;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,false>(char *a1, char *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v178 = (a2 - 240);
    v179 = (a2 - 120);
    v177 = (a2 - 360);
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = &a2[-v7];
          v9 = 0xEEEEEEEEEEEEEEEFLL * (&a2[-v7] >> 3);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), v179);
                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), (a1 + 240), v179);
                return;
              case 5:

                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), a1 + 15, (a1 + 360), v179);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 2) < *(a1 + 13))
              {
                v270 = *(a1 + 6);
                v254 = *(a1 + 1);
                v262 = *(a1 + 2);
                v246 = *a1;
                v81 = *(a1 + 56);
                v82 = *(a1 + 9);
                *(a1 + 8) = 0;
                *(a1 + 9) = 0;
                *(a1 + 7) = 0;
                *&v220[15] = *(a1 + 111);
                v212 = *(a1 + 5);
                *v220 = *(a1 + 6);
                v83 = *(a2 - 104);
                v84 = *(a2 - 88);
                v85 = *(a2 - 120);
                *(a1 + 6) = *(a2 - 9);
                *(a1 + 1) = v83;
                *(a1 + 2) = v84;
                *a1 = v85;
                *(a1 + 56) = *(a2 - 4);
                *(a1 + 9) = *(a2 - 6);
                *(a2 - 7) = 0;
                *(a2 - 6) = 0;
                *(a2 - 8) = 0;
                v86 = *(a2 - 40);
                v87 = *(a2 - 24);
                *(a1 + 111) = *(a2 - 9);
                *(a1 + 5) = v86;
                *(a1 + 6) = v87;
                *(a2 - 9) = v270;
                *(a2 - 88) = v262;
                *(a2 - 104) = v254;
                *(a2 - 120) = v246;
                v88 = *(a2 - 8);
                if (v88)
                {
                  *(a2 - 7) = v88;
                  v191 = v81;
                  operator delete(v88);
                  v81 = v191;
                }

                *(a2 - 4) = v81;
                *(a2 - 6) = v82;
                *(a2 - 9) = *&v220[15];
                *(a2 - 40) = v212;
                *(a2 - 24) = *v220;
              }

              return;
            }
          }

          if (v8 <= 2879)
          {
            v89 = a1 + 120;
            v91 = a1 == a2 || v89 == a2;
            if (a4)
            {
              if (!v91)
              {
                v92 = 0;
                v93 = a1;
                do
                {
                  v94 = v89;
                  if (*(v93 + 28) < *(v93 + 13))
                  {
                    v95 = a2;
                    v271 = *(v89 + 6);
                    v255 = *(v89 + 1);
                    v263 = *(v89 + 2);
                    v247 = *v89;
                    v96 = *(v93 + 22);
                    v192 = *(v93 + 184);
                    *(v93 + 23) = 0;
                    *(v93 + 24) = 0;
                    *(v93 + 22) = 0;
                    v221 = *(v93 + 27);
                    v213 = *(v93 + 200);
                    v97 = *(v93 + 28);
                    v237 = v93[234];
                    v233 = *(v93 + 116);
                    v98 = v92;
                    while (1)
                    {
                      v99 = v98;
                      v100 = &a1[v98];
                      v101 = *&a1[v98 + 16];
                      *(v100 + 120) = *&a1[v98];
                      *(v100 + 136) = v101;
                      *(v100 + 152) = *&a1[v98 + 32];
                      *(v100 + 21) = *&a1[v98 + 48];
                      v102 = *&a1[v98 + 176];
                      if (v102)
                      {
                        *(v100 + 23) = v102;
                        operator delete(v102);
                        *(v100 + 23) = 0;
                        *(v100 + 24) = 0;
                      }

                      *(v100 + 11) = *(v100 + 56);
                      *(v100 + 24) = *(v100 + 9);
                      *(v100 + 8) = 0;
                      *(v100 + 9) = 0;
                      *(v100 + 7) = 0;
                      v103 = *(v100 + 6);
                      *(v100 + 200) = *(v100 + 5);
                      *(v100 + 216) = v103;
                      *(v100 + 231) = *(v100 + 111);
                      if (!v99)
                      {
                        break;
                      }

                      v98 = v99 - 120;
                      if (v97 >= *&a1[v99 - 16])
                      {
                        v104 = &a1[v99];
                        goto LABEL_104;
                      }
                    }

                    v104 = a1;
LABEL_104:
                    v105 = &a1[v99];
                    *(v104 + 6) = v271;
                    *(v104 + 1) = v255;
                    *(v104 + 2) = v263;
                    *v104 = v247;
                    v106 = *(v105 + 7);
                    if (v106)
                    {
                      *(v104 + 8) = v106;
                      operator delete(v106);
                      *(v105 + 8) = 0;
                      *(v105 + 9) = 0;
                    }

                    *(v105 + 7) = v96;
                    *(v104 + 4) = v192;
                    *(v105 + 12) = v221;
                    *(v105 + 5) = v213;
                    *(v104 + 13) = v97;
                    *(v104 + 56) = v233;
                    v104[114] = v237;
                    a2 = v95;
                  }

                  v89 = v94 + 120;
                  v92 += 120;
                  v93 = v94;
                }

                while (v94 + 120 != a2);
              }
            }

            else if (!v91)
            {
              do
              {
                v168 = v89;
                if (*(a1 + 28) < *(a1 + 13))
                {
                  v274 = *(v89 + 6);
                  v258 = *(v89 + 1);
                  v266 = *(v89 + 2);
                  v250 = *v89;
                  v196 = *(a1 + 11);
                  v169 = *(a1 + 24);
                  *(a1 + 23) = 0;
                  *(a1 + 24) = 0;
                  *(a1 + 22) = 0;
                  v224 = *(a1 + 27);
                  v216 = *(a1 + 200);
                  v170 = *(a1 + 28);
                  v239 = a1[234];
                  v236 = *(a1 + 116);
                  v171 = v89;
                  do
                  {
                    v174 = *(v171 - 104);
                    *v171 = *(v171 - 120);
                    *(v171 + 1) = v174;
                    *(v171 + 2) = *(v171 - 88);
                    *(v171 + 6) = *(v171 - 9);
                    v175 = *(v171 + 7);
                    if (v175)
                    {
                      *(v171 + 8) = v175;
                      operator delete(v175);
                      *(v171 + 8) = 0;
                      *(v171 + 9) = 0;
                    }

                    *(v171 + 56) = *(v171 - 4);
                    *(v171 + 9) = *(v171 - 6);
                    *(v171 - 7) = 0;
                    *(v171 - 6) = 0;
                    *(v171 - 8) = 0;
                    v172 = *(v171 - 24);
                    *(v171 + 5) = *(v171 - 40);
                    *(v171 + 6) = v172;
                    *(v171 + 111) = *(v171 - 9);
                    v173 = *(v171 - 17);
                    v171 -= 120;
                  }

                  while (v170 < v173);
                  *(v171 + 6) = v274;
                  *(v171 + 1) = v258;
                  *(v171 + 2) = v266;
                  *v171 = v250;
                  v176 = *(v171 + 7);
                  if (v176)
                  {
                    *(v171 + 8) = v176;
                    operator delete(v176);
                  }

                  *(v171 + 56) = v196;
                  *(v171 + 9) = v169;
                  *(v171 + 12) = v224;
                  *(v171 + 5) = v216;
                  *(v171 + 13) = v170;
                  v171[114] = v239;
                  *(v171 + 56) = v236;
                }

                v89 = v168 + 120;
                a1 = v168;
              }

              while (v168 + 120 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v182 = a2;
              v107 = v10 >> 1;
              v108 = v10 >> 1;
              do
              {
                v109 = v108;
                v110 = 120 * v108;
                v111 = 0xEEEEEEEEEEEEEEEFLL * ((120 * v108) >> 3);
                if (v107 >= v111)
                {
                  v112 = 2 * v111;
                  v113 = (2 * v111) | 1;
                  v114 = &a1[120 * v113];
                  v115 = v112 + 2;
                  if (v115 < v9 && *(v114 + 13) < *(v114 + 28))
                  {
                    v114 += 120;
                    v113 = v115;
                  }

                  v116 = &a1[v110];
                  v117 = *&a1[v110 + 104];
                  if (*(v114 + 13) >= v117)
                  {
                    v272 = *(v116 + 6);
                    v256 = *(v116 + 1);
                    v264 = *(v116 + 2);
                    v248 = *v116;
                    v193 = *(v116 + 56);
                    v186 = *(v116 + 9);
                    *(v116 + 8) = 0;
                    *(v116 + 9) = 0;
                    *(v116 + 7) = 0;
                    v222 = *(v116 + 12);
                    v214 = *(v116 + 5);
                    v238 = v116[114];
                    v234 = *(v116 + 56);
                    do
                    {
                      v118 = v116;
                      v116 = v114;
                      v119 = *v114;
                      v120 = *(v114 + 1);
                      v121 = *(v114 + 2);
                      *(v118 + 6) = *(v114 + 6);
                      *(v118 + 1) = v120;
                      *(v118 + 2) = v121;
                      *v118 = v119;
                      v122 = *(v118 + 7);
                      if (v122)
                      {
                        *(v118 + 8) = v122;
                        operator delete(v122);
                        *(v118 + 7) = 0;
                        *(v118 + 8) = 0;
                        *(v118 + 9) = 0;
                      }

                      *(v118 + 56) = *(v116 + 56);
                      *(v118 + 9) = *(v116 + 9);
                      *(v116 + 7) = 0;
                      *(v116 + 8) = 0;
                      *(v116 + 9) = 0;
                      v123 = *(v116 + 5);
                      v124 = *(v116 + 6);
                      *(v118 + 111) = *(v116 + 111);
                      *(v118 + 5) = v123;
                      *(v118 + 6) = v124;
                      if (v107 < v113)
                      {
                        break;
                      }

                      v125 = 2 * v113;
                      v113 = (2 * v113) | 1;
                      v114 = &a1[120 * v113];
                      v126 = v125 + 2;
                      if (v126 < v9 && *(v114 + 13) < *(v114 + 28))
                      {
                        v114 += 120;
                        v113 = v126;
                      }
                    }

                    while (*(v114 + 13) >= v117);
                    *(v116 + 6) = v272;
                    *(v116 + 1) = v256;
                    *(v116 + 2) = v264;
                    *v116 = v248;
                    v127 = *(v116 + 7);
                    if (v127)
                    {
                      *(v116 + 8) = v127;
                      operator delete(v127);
                    }

                    *(v116 + 56) = v193;
                    *(v116 + 9) = v186;
                    *(v116 + 5) = v214;
                    *(v116 + 12) = v222;
                    *(v116 + 13) = v117;
                    *(v116 + 56) = v234;
                    v116[114] = v238;
                  }
                }

                v108 = v109 - 1;
              }

              while (v109);
              v128 = 0xEEEEEEEEEEEEEEEFLL * (v8 >> 3);
              v129 = v182;
              do
              {
                v131 = 0;
                v194 = *(a1 + 7);
                v230 = *(a1 + 6);
                v223 = *(a1 + 1);
                v227 = *(a1 + 2);
                v215 = *a1;
                v187 = *(a1 + 8);
                v183 = *(a1 + 9);
                *(a1 + 8) = 0;
                *(a1 + 9) = 0;
                v235 = *(a1 + 5);
                *v242 = *(a1 + 6);
                *&v242[15] = *(a1 + 111);
                v132 = a1;
                *(a1 + 7) = 0;
                do
                {
                  v136 = &v132[120 * v131];
                  v137 = v136 + 120;
                  if (2 * v131 + 2 >= v128)
                  {
                    v131 = (2 * v131) | 1;
                  }

                  else
                  {
                    v138 = *(v136 + 28);
                    v139 = *(v136 + 43);
                    v140 = v136 + 240;
                    if (v138 >= v139)
                    {
                      v131 = (2 * v131) | 1;
                    }

                    else
                    {
                      v137 = v140;
                      v131 = 2 * v131 + 2;
                    }
                  }

                  v141 = *v137;
                  v142 = *(v137 + 1);
                  v143 = *(v137 + 2);
                  *(v132 + 6) = *(v137 + 6);
                  *(v132 + 1) = v142;
                  *(v132 + 2) = v143;
                  *v132 = v141;
                  v144 = *(v132 + 7);
                  if (v144)
                  {
                    *(v132 + 8) = v144;
                    operator delete(v144);
                    *(v132 + 7) = 0;
                    *(v132 + 8) = 0;
                    *(v132 + 9) = 0;
                  }

                  v133 = v137 + 56;
                  *(v132 + 56) = *(v137 + 56);
                  *(v132 + 9) = *(v137 + 9);
                  *(v137 + 7) = 0;
                  *(v137 + 8) = 0;
                  *(v137 + 9) = 0;
                  v134 = *(v137 + 5);
                  v135 = *(v137 + 6);
                  *(v132 + 111) = *(v137 + 111);
                  *(v132 + 5) = v134;
                  *(v132 + 6) = v135;
                  v132 = v137;
                }

                while (v131 <= ((v128 - 2) >> 1));
                v145 = v129 - 120;
                if (v137 == v129 - 120)
                {
                  *(v137 + 6) = v230;
                  *(v137 + 1) = v223;
                  *(v137 + 2) = v227;
                  *v137 = v215;
                  v167 = *(v137 + 7);
                  if (v167)
                  {
                    *(v137 + 8) = v167;
                    operator delete(v167);
                  }

                  *(v137 + 7) = v194;
                  *(v137 + 8) = v187;
                  *(v137 + 9) = v183;
                  *(v137 + 111) = *&v242[15];
                  *(v137 + 6) = *v242;
                  *(v137 + 5) = v235;
                }

                else
                {
                  v146 = *(v129 - 120);
                  v147 = *(v129 - 104);
                  v148 = *(v129 - 88);
                  *(v137 + 6) = *(v129 - 9);
                  *(v137 + 1) = v147;
                  *(v137 + 2) = v148;
                  *v137 = v146;
                  v149 = *(v137 + 7);
                  if (v149)
                  {
                    *(v137 + 8) = v149;
                    operator delete(v149);
                    *v133 = 0;
                    *(v137 + 8) = 0;
                    *(v137 + 9) = 0;
                  }

                  *(v137 + 56) = *(v129 - 4);
                  *(v137 + 9) = *(v129 - 6);
                  *(v129 - 8) = 0;
                  *(v129 - 7) = 0;
                  *(v129 - 6) = 0;
                  v150 = *(v129 - 40);
                  v151 = *(v129 - 24);
                  *(v137 + 111) = *(v129 - 9);
                  *(v137 + 6) = v151;
                  *(v137 + 5) = v150;
                  *(v129 - 9) = v230;
                  *(v129 - 104) = v223;
                  *(v129 - 88) = v227;
                  *v145 = v215;
                  v152 = *(v129 - 8);
                  if (v152)
                  {
                    *(v129 - 7) = v152;
                    operator delete(v152);
                  }

                  v153 = v129 - 40;
                  *(v129 - 8) = v194;
                  *(v129 - 7) = v187;
                  *(v129 - 6) = v183;
                  *(v153 + 31) = *&v242[15];
                  *v153 = v235;
                  *(v153 + 1) = *v242;
                  v154 = v137 + 120 - a1;
                  if (v154 >= 121)
                  {
                    v155 = (-2 - 0x1111111111111111 * (v154 >> 3)) >> 1;
                    v156 = &a1[120 * v155];
                    v157 = *(v137 + 13);
                    if (*(v156 + 13) < v157)
                    {
                      v273 = *(v137 + 6);
                      v257 = *(v137 + 1);
                      v265 = *(v137 + 2);
                      v249 = *v137;
                      v195 = *(v137 + 56);
                      v158 = *(v137 + 9);
                      *(v137 + 8) = 0;
                      *(v137 + 9) = 0;
                      *v133 = 0;
                      v208 = *(v137 + 12);
                      v205 = *(v137 + 5);
                      v202 = v137[114];
                      v199 = *(v137 + 56);
                      do
                      {
                        v159 = v156;
                        v160 = *v156;
                        v161 = *(v156 + 1);
                        v162 = *(v156 + 2);
                        *(v137 + 6) = *(v156 + 6);
                        *(v137 + 1) = v161;
                        *(v137 + 2) = v162;
                        *v137 = v160;
                        v163 = *(v137 + 7);
                        if (v163)
                        {
                          *(v137 + 8) = v163;
                          operator delete(v163);
                          *(v137 + 7) = 0;
                          *(v137 + 8) = 0;
                          *(v137 + 9) = 0;
                        }

                        *(v137 + 56) = *(v159 + 56);
                        *(v137 + 9) = *(v159 + 9);
                        *(v159 + 7) = 0;
                        *(v159 + 8) = 0;
                        *(v159 + 9) = 0;
                        v164 = *(v159 + 5);
                        v165 = *(v159 + 6);
                        *(v137 + 111) = *(v159 + 111);
                        *(v137 + 5) = v164;
                        *(v137 + 6) = v165;
                        if (!v155)
                        {
                          break;
                        }

                        v155 = (v155 - 1) >> 1;
                        v156 = &a1[120 * v155];
                        v137 = v159;
                      }

                      while (*(v156 + 13) < v157);
                      *(v159 + 6) = v273;
                      *(v159 + 1) = v257;
                      *(v159 + 2) = v265;
                      *v159 = v249;
                      v166 = *(v159 + 7);
                      if (v166)
                      {
                        *(v159 + 8) = v166;
                        operator delete(v166);
                      }

                      *(v159 + 56) = v195;
                      *(v159 + 9) = v158;
                      *(v159 + 5) = v205;
                      *(v159 + 12) = v208;
                      *(v159 + 13) = v157;
                      *(v159 + 56) = v199;
                      v159[114] = v202;
                    }
                  }
                }

                v130 = v128-- <= 2;
                v129 = v145;
              }

              while (!v130);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = &a1[120 * (v9 >> 1)];
          if (v8 < 0x3C01)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(v12, a1, v179);
            --a3;
            if (a4)
            {
              goto LABEL_21;
            }
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, v12, v179);
            v13 = 120 * v11;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>((a1 + 120), &a1[v13 - 120], v178);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1 + 15, &a1[v13 + 120], v177);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(&a1[v13 - 120], v12, &a1[v13 + 120]);
            v267 = *(a1 + 6);
            v251 = *(a1 + 1);
            v259 = *(a1 + 2);
            v243 = *a1;
            v14 = *(a1 + 56);
            v15 = *(a1 + 9);
            *(a1 + 8) = 0;
            *(a1 + 9) = 0;
            *(a1 + 7) = 0;
            *&v217[15] = *(a1 + 111);
            v209 = *(a1 + 5);
            *v217 = *(a1 + 6);
            v17 = *(v12 + 1);
            v16 = *(v12 + 2);
            v18 = *v12;
            *(a1 + 6) = *(v12 + 6);
            *(a1 + 1) = v17;
            *(a1 + 2) = v16;
            *a1 = v18;
            *(a1 + 56) = *(v12 + 56);
            *(a1 + 9) = *(v12 + 9);
            *(v12 + 8) = 0;
            *(v12 + 9) = 0;
            *(v12 + 7) = 0;
            v19 = *(v12 + 5);
            v20 = *(v12 + 6);
            *(a1 + 111) = *(v12 + 111);
            *(a1 + 5) = v19;
            *(a1 + 6) = v20;
            *(v12 + 6) = v267;
            *(v12 + 1) = v251;
            *(v12 + 2) = v259;
            *v12 = v243;
            v21 = *(v12 + 7);
            if (v21)
            {
              *(v12 + 8) = v21;
              v188 = v14;
              operator delete(v21);
              v14 = v188;
            }

            *(v12 + 56) = v14;
            *(v12 + 9) = v15;
            *(v12 + 111) = *&v217[15];
            *(v12 + 5) = v209;
            *(v12 + 6) = *v217;
            --a3;
            if (a4)
            {
LABEL_21:
              v22 = *(a1 + 13);
              break;
            }
          }

          v22 = *(a1 + 13);
          if (*(a1 - 2) < v22)
          {
            break;
          }

          v228 = *(a1 + 6);
          v218 = *(a1 + 1);
          v225 = *(a1 + 2);
          v210 = *a1;
          v184 = *(a1 + 56);
          v23 = *(a1 + 9);
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
          v203 = *(a1 + 5);
          v206 = *(a1 + 12);
          v24 = *(a1 + 13);
          v197 = *(a1 + 56);
          v200 = a1[114];
          if (v24 >= *(a2 - 2))
          {
            v58 = a1 + 120;
            do
            {
              v7 = v58;
              if (v58 >= a2)
              {
                break;
              }

              v59 = *(v58 + 13);
              v58 += 120;
            }

            while (v24 >= v59);
          }

          else
          {
            v25 = a1;
            do
            {
              v7 = (v25 + 120);
              v26 = *(v25 + 28);
              v25 += 120;
            }

            while (v24 >= v26);
          }

          v60 = a2;
          if (v7 < a2)
          {
            v61 = a2;
            do
            {
              v60 = v61 - 120;
              v62 = *(v61 - 2);
              v61 -= 120;
            }

            while (v24 < v62);
          }

          while (v7 < v60)
          {
            v269 = *(v7 + 48);
            v253 = *(v7 + 16);
            v261 = *(v7 + 32);
            v245 = *v7;
            v63 = *(v7 + 56);
            v64 = *(v7 + 72);
            *(v7 + 64) = 0;
            *(v7 + 72) = 0;
            *(v7 + 56) = 0;
            *&v241[15] = *(v7 + 111);
            v232 = *(v7 + 80);
            *v241 = *(v7 + 96);
            v66 = *(v60 + 1);
            v65 = *(v60 + 2);
            v67 = *v60;
            *(v7 + 48) = *(v60 + 6);
            *(v7 + 16) = v66;
            *(v7 + 32) = v65;
            *v7 = v67;
            *(v7 + 56) = *(v60 + 56);
            *(v7 + 72) = *(v60 + 9);
            *(v60 + 7) = 0;
            *(v60 + 8) = 0;
            *(v60 + 9) = 0;
            v68 = *(v60 + 5);
            v69 = *(v60 + 6);
            *(v7 + 111) = *(v60 + 111);
            *(v7 + 80) = v68;
            *(v7 + 96) = v69;
            *(v60 + 6) = v269;
            *(v60 + 1) = v253;
            *(v60 + 2) = v261;
            *v60 = v245;
            v70 = *(v60 + 7);
            if (v70)
            {
              *(v60 + 8) = v70;
              v190 = v63;
              operator delete(v70);
              v63 = v190;
            }

            *(v60 + 56) = v63;
            *(v60 + 9) = v64;
            *(v60 + 5) = v232;
            *(v60 + 6) = *v241;
            *(v60 + 111) = *&v241[15];
            do
            {
              v71 = *(v7 + 224);
              v7 += 120;
            }

            while (v24 >= v71);
            do
            {
              v72 = *(v60 - 2);
              v60 -= 120;
            }

            while (v24 < v72);
          }

          v73 = (v7 - 120);
          if ((v7 - 120) != a1)
          {
            v74 = *v73;
            v75 = *(v7 - 104);
            v76 = *(v7 - 88);
            *(a1 + 6) = *(v7 - 72);
            *(a1 + 1) = v75;
            *(a1 + 2) = v76;
            *a1 = v74;
            v77 = *(a1 + 7);
            if (v77)
            {
              *(a1 + 8) = v77;
              operator delete(v77);
              *(a1 + 7) = 0;
              *(a1 + 8) = 0;
              *(a1 + 9) = 0;
            }

            *(a1 + 56) = *(v7 - 64);
            *(a1 + 9) = *(v7 - 48);
            *(v7 - 64) = 0;
            *(v7 - 56) = 0;
            *(v7 - 48) = 0;
            v78 = *(v7 - 40);
            v79 = *(v7 - 24);
            *(a1 + 111) = *(v7 - 9);
            *(a1 + 5) = v78;
            *(a1 + 6) = v79;
          }

          *(v7 - 72) = v228;
          *(v7 - 104) = v218;
          *(v7 - 88) = v225;
          *v73 = v210;
          v80 = *(v7 - 64);
          if (v80)
          {
            *(v7 - 56) = v80;
            operator delete(v80);
          }

          a4 = 0;
          *(v7 - 64) = v184;
          *(v7 - 48) = v23;
          *(v7 - 24) = v206;
          *(v7 - 40) = v203;
          *(v7 - 16) = v24;
          *(v7 - 6) = v200;
          *(v7 - 8) = v197;
        }

        v185 = a3;
        v27 = 0;
        v229 = *(a1 + 6);
        v219 = *(a1 + 1);
        v226 = *(a1 + 2);
        v211 = *a1;
        v181 = *(a1 + 56);
        v28 = *(a1 + 9);
        *(a1 + 7) = 0;
        *(a1 + 8) = 0;
        *(a1 + 9) = 0;
        v204 = *(a1 + 5);
        v207 = *(a1 + 12);
        v201 = a1[114];
        v198 = *(a1 + 56);
        do
        {
          v29 = *&a1[v27 + 224];
          v27 += 120;
        }

        while (v29 < v22);
        v30 = &a1[v27];
        v31 = a2;
        v32 = a2;
        if (v27 == 120)
        {
          v35 = a2;
          while (v30 < v35)
          {
            v33 = v35 - 120;
            v36 = *(v35 - 2);
            v35 -= 120;
            if (v36 < v22)
            {
              goto LABEL_30;
            }
          }

          v33 = v35;
          v7 = v30;
        }

        else
        {
          do
          {
            v33 = v32 - 120;
            v34 = *(v32 - 2);
            v32 -= 120;
          }

          while (v34 >= v22);
LABEL_30:
          v7 = v30;
          if (v30 < v33)
          {
            v37 = v33;
            do
            {
              v268 = *(v7 + 48);
              v252 = *(v7 + 16);
              v260 = *(v7 + 32);
              v244 = *v7;
              v38 = *(v7 + 56);
              v39 = *(v7 + 72);
              *(v7 + 64) = 0;
              *(v7 + 72) = 0;
              *(v7 + 56) = 0;
              *&v240[15] = *(v7 + 111);
              v231 = *(v7 + 80);
              *v240 = *(v7 + 96);
              v41 = *(v37 + 16);
              v40 = *(v37 + 32);
              v42 = *v37;
              *(v7 + 48) = *(v37 + 48);
              *(v7 + 16) = v41;
              *(v7 + 32) = v40;
              *v7 = v42;
              *(v7 + 56) = *(v37 + 56);
              *(v7 + 72) = *(v37 + 72);
              *(v37 + 56) = 0;
              *(v37 + 64) = 0;
              *(v37 + 72) = 0;
              v43 = *(v37 + 80);
              v44 = *(v37 + 96);
              *(v7 + 111) = *(v37 + 111);
              *(v7 + 80) = v43;
              *(v7 + 96) = v44;
              *(v37 + 48) = v268;
              *(v37 + 16) = v252;
              *(v37 + 32) = v260;
              *v37 = v244;
              v45 = *(v37 + 56);
              if (v45)
              {
                *(v37 + 64) = v45;
                v189 = v38;
                operator delete(v45);
                v38 = v189;
              }

              *(v37 + 56) = v38;
              *(v37 + 72) = v39;
              *(v37 + 80) = v231;
              *(v37 + 96) = *v240;
              *(v37 + 111) = *&v240[15];
              do
              {
                v46 = *(v7 + 224);
                v7 += 120;
              }

              while (v46 < v22);
              do
              {
                v47 = *(v37 - 16);
                v37 -= 120;
              }

              while (v47 >= v22);
            }

            while (v7 < v37);
          }
        }

        v48 = (v7 - 120);
        if ((v7 - 120) != a1)
        {
          v49 = *v48;
          v50 = *(v7 - 104);
          v51 = *(v7 - 88);
          *(a1 + 6) = *(v7 - 72);
          *(a1 + 1) = v50;
          *(a1 + 2) = v51;
          *a1 = v49;
          v52 = *(a1 + 7);
          if (v52)
          {
            *(a1 + 8) = v52;
            operator delete(v52);
            *(a1 + 7) = 0;
            *(a1 + 8) = 0;
            *(a1 + 9) = 0;
          }

          *(a1 + 56) = *(v7 - 64);
          *(a1 + 9) = *(v7 - 48);
          *(v7 - 64) = 0;
          *(v7 - 56) = 0;
          *(v7 - 48) = 0;
          v53 = *(v7 - 40);
          v54 = *(v7 - 24);
          *(a1 + 111) = *(v7 - 9);
          *(a1 + 5) = v53;
          *(a1 + 6) = v54;
        }

        *(v7 - 72) = v229;
        *(v7 - 104) = v219;
        *(v7 - 88) = v226;
        *v48 = v211;
        v55 = *(v7 - 64);
        if (v55)
        {
          *(v7 - 56) = v55;
          operator delete(v55);
        }

        *(v7 - 64) = v181;
        *(v7 - 48) = v28;
        *(v7 - 24) = v207;
        *(v7 - 40) = v204;
        *(v7 - 16) = v22;
        *(v7 - 6) = v201;
        *(v7 - 8) = v198;
        v56 = v30 >= v33;
        a2 = v31;
        a3 = v185;
        if (v56)
        {
          break;
        }

LABEL_48:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,false>(a1, (v7 - 120), v185, a4 & 1);
        a4 = 0;
      }

      v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*>(a1, (v7 - 120));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*>(v7, a2))
      {
        break;
      }

      if ((v57 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    a2 = (v7 - 120);
    if ((v57 & 1) == 0)
    {
      continue;
    }

    break;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  result.n128_u64[0] = *(a2 + 13);
  v6 = *(a3 + 13);
  if (result.n128_f64[0] >= *(a1 + 13))
  {
    if (v6 < result.n128_f64[0])
    {
      v58 = *a2;
      v63 = a2[1];
      v68 = a2[2];
      v73 = *(a2 + 6);
      v15 = a2 + 7;
      v16 = *(a2 + 56);
      v17 = *(a2 + 9);
      *(a2 + 56) = 0uLL;
      *(a2 + 9) = 0;
      *&v54[15] = *(a2 + 111);
      v50 = a2[5];
      *v54 = a2[6];
      v18 = *(a3 + 6);
      v20 = a3[1];
      v19 = a3[2];
      *a2 = *a3;
      a2[1] = v20;
      a2[2] = v19;
      *(a2 + 6) = v18;
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 9) = *(a3 + 9);
      *(a3 + 56) = 0uLL;
      *(a3 + 9) = 0;
      LODWORD(v18) = *(a3 + 111);
      v21 = a3[6];
      a2[5] = a3[5];
      a2[6] = v21;
      *(a2 + 111) = v18;
      *(a3 + 6) = v73;
      a3[1] = v63;
      a3[2] = v68;
      *a3 = v58;
      v22 = *(a3 + 7);
      if (v22)
      {
        *(a3 + 8) = v22;
        v23 = a1;
        v47 = v16;
        operator delete(v22);
        v16 = v47;
        a1 = v23;
      }

      *(a3 + 56) = v16;
      *(a3 + 9) = v17;
      result.n128_u64[1] = *(&v50 + 1);
      a3[5] = v50;
      a3[6] = *v54;
      *(a3 + 111) = *&v54[15];
      result.n128_u64[0] = *(a2 + 13);
      if (result.n128_f64[0] < *(a1 + 13))
      {
        v59 = *a1;
        v64 = a1[1];
        v69 = a1[2];
        v74 = *(a1 + 6);
        v24 = *(a1 + 56);
        v25 = *(a1 + 9);
        *(a1 + 56) = 0uLL;
        *(a1 + 9) = 0;
        *&v55[15] = *(a1 + 111);
        v51 = a1[5];
        *v55 = a1[6];
        v26 = *(a2 + 6);
        v28 = a2[1];
        v27 = a2[2];
        *a1 = *a2;
        a1[1] = v28;
        a1[2] = v27;
        *(a1 + 6) = v26;
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 9) = *(a2 + 9);
        *v15 = 0;
        *(a2 + 8) = 0;
        *(a2 + 9) = 0;
        LODWORD(v26) = *(a2 + 111);
        v29 = a2[6];
        a1[5] = a2[5];
        a1[6] = v29;
        *(a1 + 111) = v26;
        *(a2 + 6) = v74;
        a2[1] = v64;
        a2[2] = v69;
        *a2 = v59;
        v30 = *(a2 + 7);
        if (v30)
        {
          *(a2 + 8) = v30;
          v48 = v24;
          operator delete(v30);
          v24 = v48;
        }

        *(a2 + 56) = v24;
        *(a2 + 9) = v25;
        result = v51;
        a2[5] = v51;
        a2[6] = *v55;
        *(a2 + 111) = *&v55[15];
      }
    }
  }

  else
  {
    if (v6 < result.n128_f64[0])
    {
      v57 = *a1;
      v62 = a1[1];
      v67 = a1[2];
      v72 = *(a1 + 6);
      v7 = *(a1 + 56);
      v8 = *(a1 + 9);
      a1[4] = 0uLL;
      *(a1 + 7) = 0;
      *&v53[15] = *(a1 + 111);
      v49 = a1[5];
      *v53 = a1[6];
      v9 = *a3;
      v10 = a3[1];
      v11 = a3[2];
      *(a1 + 6) = *(a3 + 6);
      a1[1] = v10;
      a1[2] = v11;
      *a1 = v9;
      *(a1 + 56) = *(a3 + 56);
      *(a1 + 9) = *(a3 + 9);
      *(a3 + 56) = 0uLL;
      *(a3 + 9) = 0;
      v12 = a3[5];
      v13 = a3[6];
      *(a1 + 111) = *(a3 + 111);
      a1[5] = v12;
      a1[6] = v13;
      *a3 = v57;
      a3[1] = v62;
      a3[2] = v67;
      *(a3 + 6) = v72;
      v14 = *(a3 + 7);
      if (v14)
      {
        *(a3 + 8) = v14;
        v46 = v7;
        operator delete(v14);
        v7 = v46;
      }

      *(a3 + 56) = v7;
      *(a3 + 9) = v8;
LABEL_20:
      result = v49;
      a3[5] = v49;
      a3[6] = *v53;
      *(a3 + 111) = *&v53[15];
      return result;
    }

    v60 = *a1;
    v65 = a1[1];
    v70 = a1[2];
    v31 = *(a1 + 7);
    v75 = *(a1 + 6);
    v32 = *(a1 + 8);
    v33 = *(a1 + 9);
    a1[4] = 0uLL;
    *(a1 + 7) = 0;
    *&v56[15] = *(a1 + 111);
    v52 = a1[5];
    *v56 = a1[6];
    v34 = *a2;
    v35 = a2[1];
    v36 = a2[2];
    *(a1 + 6) = *(a2 + 6);
    a1[1] = v35;
    a1[2] = v36;
    *a1 = v34;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 9) = *(a2 + 9);
    *(a2 + 56) = 0uLL;
    *(a2 + 9) = 0;
    v37 = a2[5];
    v38 = a2[6];
    *(a1 + 111) = *(a2 + 111);
    a1[5] = v37;
    a1[6] = v38;
    *a2 = v60;
    a2[1] = v65;
    a2[2] = v70;
    *(a2 + 6) = v75;
    v39 = *(a2 + 7);
    if (v39)
    {
      *(a2 + 8) = v39;
      operator delete(v39);
    }

    *(a2 + 7) = v31;
    *(a2 + 8) = v32;
    *(a2 + 9) = v33;
    result.n128_u64[1] = *(&v52 + 1);
    a2[5] = v52;
    a2[6] = *v56;
    *(a2 + 111) = *&v56[15];
    result.n128_u64[0] = *(a3 + 13);
    if (result.n128_f64[0] < *(a2 + 13))
    {
      v61 = *a2;
      v66 = a2[1];
      v71 = a2[2];
      v76 = *(a2 + 6);
      *(a2 + 8) = 0;
      *(a2 + 9) = 0;
      *(a2 + 7) = 0;
      v49 = a2[5];
      *v53 = a2[6];
      *&v53[15] = *(a2 + 111);
      v40 = *a3;
      v41 = a3[1];
      v42 = a3[2];
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v41;
      a2[2] = v42;
      *a2 = v40;
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 9) = *(a3 + 9);
      *(a3 + 7) = 0;
      *(a3 + 8) = 0;
      *(a3 + 9) = 0;
      v43 = *(a3 + 111);
      v44 = a3[6];
      a2[5] = a3[5];
      a2[6] = v44;
      *(a2 + 111) = v43;
      *(a3 + 6) = v76;
      a3[1] = v66;
      a3[2] = v71;
      *a3 = v61;
      v45 = *(a3 + 7);
      if (v45)
      {
        *(a3 + 8) = v45;
        operator delete(v45);
      }

      *(a3 + 7) = v31;
      *(a3 + 8) = v32;
      *(a3 + 9) = v33;
      goto LABEL_20;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, a2, a3);
  result.n128_u64[0] = *(a4 + 104);
  if (result.n128_f64[0] < *(a3 + 104))
  {
    v39 = *a3;
    v42 = *(a3 + 16);
    v45 = *(a3 + 32);
    v48 = *(a3 + 48);
    v9 = *(a3 + 56);
    v10 = *(a3 + 72);
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *&v36[15] = *(a3 + 111);
    v33 = *(a3 + 80);
    *v36 = *(a3 + 96);
    v11 = *(a4 + 48);
    v13 = *(a4 + 16);
    v12 = *(a4 + 32);
    *a3 = *a4;
    *(a3 + 16) = v13;
    *(a3 + 32) = v12;
    *(a3 + 48) = v11;
    *(a3 + 56) = *(a4 + 56);
    *(a3 + 72) = *(a4 + 72);
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    LODWORD(v11) = *(a4 + 111);
    v14 = *(a4 + 96);
    *(a3 + 80) = *(a4 + 80);
    *(a3 + 96) = v14;
    *(a3 + 111) = v11;
    *(a4 + 48) = v48;
    *(a4 + 16) = v42;
    *(a4 + 32) = v45;
    *a4 = v39;
    v15 = *(a4 + 56);
    if (v15)
    {
      *(a4 + 64) = v15;
      v30 = v9;
      operator delete(v15);
      v9 = v30;
    }

    *(a4 + 56) = v9;
    *(a4 + 72) = v10;
    result.n128_u64[1] = *(&v33 + 1);
    *(a4 + 80) = v33;
    *(a4 + 96) = *v36;
    *(a4 + 111) = *&v36[15];
    result.n128_u64[0] = *(a3 + 104);
    if (result.n128_f64[0] < *(a2 + 104))
    {
      v40 = *a2;
      v43 = *(a2 + 16);
      v46 = *(a2 + 32);
      v49 = *(a2 + 48);
      v16 = *(a2 + 56);
      v17 = *(a2 + 72);
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *&v37[15] = *(a2 + 111);
      v34 = *(a2 + 80);
      *v37 = *(a2 + 96);
      v18 = *(a3 + 48);
      v20 = *(a3 + 16);
      v19 = *(a3 + 32);
      *a2 = *a3;
      *(a2 + 16) = v20;
      *(a2 + 32) = v19;
      *(a2 + 48) = v18;
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 72) = *(a3 + 72);
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
      LODWORD(v18) = *(a3 + 111);
      v21 = *(a3 + 96);
      *(a2 + 80) = *(a3 + 80);
      *(a2 + 96) = v21;
      *(a2 + 111) = v18;
      *(a3 + 48) = v49;
      *(a3 + 16) = v43;
      *(a3 + 32) = v46;
      *a3 = v40;
      v22 = *(a3 + 56);
      if (v22)
      {
        *(a3 + 64) = v22;
        v31 = v16;
        operator delete(v22);
        v16 = v31;
      }

      *(a3 + 56) = v16;
      *(a3 + 72) = v17;
      result.n128_u64[1] = *(&v34 + 1);
      *(a3 + 80) = v34;
      *(a3 + 96) = *v37;
      *(a3 + 111) = *&v37[15];
      result.n128_u64[0] = *(a2 + 104);
      if (result.n128_f64[0] < *(a1 + 104))
      {
        v41 = *a1;
        v44 = *(a1 + 16);
        v47 = *(a1 + 32);
        v50 = *(a1 + 48);
        v23 = *(a1 + 56);
        v24 = *(a1 + 72);
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *&v38[15] = *(a1 + 111);
        v35 = *(a1 + 80);
        *v38 = *(a1 + 96);
        v25 = *(a2 + 48);
        v27 = *(a2 + 16);
        v26 = *(a2 + 32);
        *a1 = *a2;
        *(a1 + 16) = v27;
        *(a1 + 32) = v26;
        *(a1 + 48) = v25;
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = *(a2 + 72);
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 72) = 0;
        LODWORD(v25) = *(a2 + 111);
        v28 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v28;
        *(a1 + 111) = v25;
        *(a2 + 48) = v50;
        *(a2 + 16) = v44;
        *(a2 + 32) = v47;
        *a2 = v41;
        v29 = *(a2 + 56);
        if (v29)
        {
          *(a2 + 64) = v29;
          v32 = v23;
          operator delete(v29);
          v23 = v32;
        }

        *(a2 + 56) = v23;
        *(a2 + 72) = v24;
        result = v35;
        *(a2 + 80) = v35;
        *(a2 + 96) = *v38;
        *(a2 + 111) = *&v38[15];
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, a2, a3, a4);
  result.n128_u64[0] = *(a5 + 13);
  if (result.n128_f64[0] < *(a4 + 13))
  {
    v51 = *a4;
    v55 = a4[1];
    v59 = a4[2];
    v63 = *(a4 + 6);
    v11 = *(a4 + 56);
    v12 = *(a4 + 9);
    *(a4 + 7) = 0;
    *(a4 + 8) = 0;
    *(a4 + 9) = 0;
    *&v47[15] = *(a4 + 111);
    v43 = a4[5];
    *v47 = a4[6];
    v13 = *(a5 + 6);
    v15 = a5[1];
    v14 = a5[2];
    *a4 = *a5;
    a4[1] = v15;
    a4[2] = v14;
    *(a4 + 6) = v13;
    *(a4 + 56) = *(a5 + 56);
    *(a4 + 9) = *(a5 + 9);
    *(a5 + 7) = 0;
    *(a5 + 8) = 0;
    *(a5 + 9) = 0;
    LODWORD(v13) = *(a5 + 111);
    v16 = a5[6];
    a4[5] = a5[5];
    a4[6] = v16;
    *(a4 + 111) = v13;
    *(a5 + 6) = v63;
    a5[1] = v55;
    a5[2] = v59;
    *a5 = v51;
    v17 = *(a5 + 7);
    if (v17)
    {
      *(a5 + 8) = v17;
      v39 = v11;
      operator delete(v17);
      v11 = v39;
    }

    *(a5 + 56) = v11;
    *(a5 + 9) = v12;
    result.n128_u64[1] = *(&v43 + 1);
    a5[5] = v43;
    a5[6] = *v47;
    *(a5 + 111) = *&v47[15];
    result.n128_u64[0] = *(a4 + 13);
    if (result.n128_f64[0] < *(a3 + 13))
    {
      v52 = *a3;
      v56 = a3[1];
      v60 = a3[2];
      v64 = *(a3 + 6);
      v18 = *(a3 + 56);
      v19 = *(a3 + 9);
      *(a3 + 7) = 0;
      *(a3 + 8) = 0;
      *(a3 + 9) = 0;
      *&v48[15] = *(a3 + 111);
      v44 = a3[5];
      *v48 = a3[6];
      v20 = *(a4 + 6);
      v22 = a4[1];
      v21 = a4[2];
      *a3 = *a4;
      a3[1] = v22;
      a3[2] = v21;
      *(a3 + 6) = v20;
      *(a3 + 56) = *(a4 + 56);
      *(a3 + 9) = *(a4 + 9);
      *(a4 + 7) = 0;
      *(a4 + 8) = 0;
      *(a4 + 9) = 0;
      LODWORD(v20) = *(a4 + 111);
      v23 = a4[6];
      a3[5] = a4[5];
      a3[6] = v23;
      *(a3 + 111) = v20;
      *(a4 + 6) = v64;
      a4[1] = v56;
      a4[2] = v60;
      *a4 = v52;
      v24 = *(a4 + 7);
      if (v24)
      {
        *(a4 + 8) = v24;
        v40 = v18;
        operator delete(v24);
        v18 = v40;
      }

      *(a4 + 56) = v18;
      *(a4 + 9) = v19;
      result.n128_u64[1] = *(&v44 + 1);
      a4[5] = v44;
      a4[6] = *v48;
      *(a4 + 111) = *&v48[15];
      result.n128_u64[0] = *(a3 + 13);
      if (result.n128_f64[0] < *(a2 + 13))
      {
        v53 = *a2;
        v57 = a2[1];
        v61 = a2[2];
        v65 = *(a2 + 6);
        v25 = *(a2 + 56);
        v26 = *(a2 + 9);
        *(a2 + 7) = 0;
        *(a2 + 8) = 0;
        *(a2 + 9) = 0;
        *&v49[15] = *(a2 + 111);
        v45 = a2[5];
        *v49 = a2[6];
        v27 = *(a3 + 6);
        v29 = a3[1];
        v28 = a3[2];
        *a2 = *a3;
        a2[1] = v29;
        a2[2] = v28;
        *(a2 + 6) = v27;
        *(a2 + 56) = *(a3 + 56);
        *(a2 + 9) = *(a3 + 9);
        *(a3 + 7) = 0;
        *(a3 + 8) = 0;
        *(a3 + 9) = 0;
        LODWORD(v27) = *(a3 + 111);
        v30 = a3[6];
        a2[5] = a3[5];
        a2[6] = v30;
        *(a2 + 111) = v27;
        *(a3 + 6) = v65;
        a3[1] = v57;
        a3[2] = v61;
        *a3 = v53;
        v31 = *(a3 + 7);
        if (v31)
        {
          *(a3 + 8) = v31;
          v41 = v25;
          operator delete(v31);
          v25 = v41;
        }

        *(a3 + 56) = v25;
        *(a3 + 9) = v26;
        result.n128_u64[1] = *(&v45 + 1);
        a3[5] = v45;
        a3[6] = *v49;
        *(a3 + 111) = *&v49[15];
        result.n128_u64[0] = *(a2 + 13);
        if (result.n128_f64[0] < *(a1 + 13))
        {
          v54 = *a1;
          v58 = a1[1];
          v62 = a1[2];
          v66 = *(a1 + 6);
          v32 = *(a1 + 56);
          v33 = *(a1 + 9);
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
          *&v50[15] = *(a1 + 111);
          v46 = a1[5];
          *v50 = a1[6];
          v34 = *(a2 + 6);
          v36 = a2[1];
          v35 = a2[2];
          *a1 = *a2;
          a1[1] = v36;
          a1[2] = v35;
          *(a1 + 6) = v34;
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 9) = *(a2 + 9);
          *(a2 + 7) = 0;
          *(a2 + 8) = 0;
          *(a2 + 9) = 0;
          LODWORD(v34) = *(a2 + 111);
          v37 = a2[6];
          a1[5] = a2[5];
          a1[6] = v37;
          *(a1 + 111) = v34;
          *(a2 + 6) = v66;
          a2[1] = v58;
          a2[2] = v62;
          *a2 = v54;
          v38 = *(a2 + 7);
          if (v38)
          {
            *(a2 + 8) = v38;
            v42 = v32;
            operator delete(v38);
            v32 = v42;
          }

          *(a2 + 56) = v32;
          *(a2 + 9) = v33;
          result = v46;
          a2[5] = v46;
          a2[6] = *v50;
          *(a2 + 111) = *&v50[15];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*>(uint64_t a1, __int128 *a2)
{
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), (a2 - 120));
        v5 = 1;
        return v5 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, a1 + 120, a1 + 240, a2 - 120);
        v5 = 1;
        return v5 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), (a1 + 240), (a1 + 360), (a2 - 120));
        v5 = 1;
        return v5 & 1;
    }

LABEL_14:
    v14 = (a1 + 240);
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), (a1 + 240));
    v16 = (a1 + 360);
    if ((a1 + 360) == a2)
    {
LABEL_29:
      v32 = 1;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = *(v16 + 13);
        if (v19 < v14[13])
        {
          v43 = *v16;
          v45 = v16[1];
          v47 = v16[2];
          v20 = *(v16 + 7);
          v49 = *(v16 + 6);
          v21 = v16[5];
          v35 = v16[4];
          *(v16 + 7) = 0;
          *(v16 + 8) = 0;
          *(v16 + 9) = 0;
          v41 = *(v16 + 12);
          v39 = v21;
          v37 = *(v16 + 114);
          v22 = v17;
          v36 = *(v16 + 56);
          while (1)
          {
            v23 = v22;
            v24 = a1 + v22;
            v25 = (a1 + v22 + 360);
            v26 = *(v24 + 256);
            *v25 = *(v24 + 240);
            v25[1] = v26;
            v25[2] = *(v24 + 272);
            *(v24 + 408) = *(v24 + 288);
            v27 = *(v24 + 416);
            if (v27)
            {
              *(v24 + 424) = v27;
              operator delete(v27);
              *(v24 + 424) = 0;
              *(v24 + 432) = 0;
            }

            *(v24 + 416) = *(v24 + 296);
            *(v24 + 432) = *(v24 + 312);
            *(v24 + 304) = 0;
            *(v24 + 312) = 0;
            *(v24 + 296) = 0;
            v28 = *(v24 + 336);
            *(v24 + 440) = *(v24 + 320);
            *(v24 + 456) = v28;
            v15 = *(v24 + 351);
            *(v24 + 471) = v15;
            if (v23 == -240)
            {
              break;
            }

            v22 = v23 - 120;
            if (v19 >= *(a1 + v23 + 224))
            {
              v29 = a1 + v22 + 360;
              goto LABEL_26;
            }
          }

          v29 = a1;
LABEL_26:
          v30 = a1 + v23;
          *v29 = v43;
          *(v29 + 16) = v45;
          *(v29 + 32) = v47;
          *(v29 + 48) = v49;
          v31 = *(v30 + 296);
          if (v31)
          {
            *(v29 + 64) = v31;
            operator delete(v31);
            *(v30 + 304) = 0;
            *(v30 + 312) = 0;
          }

          *(v30 + 296) = v20;
          *(v29 + 64) = v35;
          *(v30 + 320) = v39;
          *(v30 + 336) = v41;
          *(v29 + 104) = v19;
          *(v29 + 112) = v36;
          ++v18;
          *(v29 + 114) = v37;
          if (v18 == 8)
          {
            break;
          }
        }

        v14 = v16;
        v17 += 120;
        v16 = (v16 + 120);
        if (v16 == a2)
        {
          goto LABEL_29;
        }
      }

      v32 = 0;
      LOBYTE(v15) = (v16 + 120) == a2;
    }

    v5 = v32 | v15;
    return v5 & 1;
  }

  if (v4 < 2)
  {
LABEL_3:
    v5 = 1;
    return v5 & 1;
  }

  if (v4 != 2)
  {
    goto LABEL_14;
  }

  if (*(a2 - 2) >= *(a1 + 104))
  {
    goto LABEL_3;
  }

  v42 = *a1;
  v44 = *(a1 + 16);
  v46 = *(a1 + 32);
  v48 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *&v40[15] = *(a1 + 111);
  v38 = *(a1 + 80);
  *v40 = *(a1 + 96);
  v8 = *(a2 - 9);
  v9 = *(a2 - 88);
  v10 = *(a2 - 104);
  *a1 = *(a2 - 120);
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 56) = *(a2 - 4);
  *(a1 + 72) = *(a2 - 6);
  *(a2 - 8) = 0;
  *(a2 - 7) = 0;
  *(a2 - 6) = 0;
  v11 = (a2 - 40);
  LODWORD(v8) = *(a2 - 9);
  v12 = *(a2 - 24);
  *(a1 + 80) = *(a2 - 40);
  *(a1 + 96) = v12;
  *(a1 + 111) = v8;
  *(a2 - 9) = v48;
  *(a2 - 88) = v46;
  *(a2 - 104) = v44;
  *(a2 - 120) = v42;
  v13 = *(a2 - 8);
  if (v13)
  {
    *(a2 - 7) = v13;
    v34 = v6;
    operator delete(v13);
    v6 = v34;
  }

  *(a2 - 4) = v6;
  *(a2 - 6) = v7;
  *v11 = v38;
  *(a2 - 24) = *v40;
  *(a2 - 9) = *&v40[15];
  v5 = 1;
  return v5 & 1;
}

__n128 std::__function::__func<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F44748;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 1);
  if (result)
  {
    v5 = *(a1 + 8);
    v6[0] = *(a1 + 16);
    v6[1] = v3;
    v6[2] = v5;
    result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(v5, 1);
    if (result)
    {
      operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(v6, 0);
      result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 0);
      if (result)
      {
        operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(v6, 1);
        return 1;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat41CreateNoOverlapCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat41CreateNoOverlapCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat41CreateNoOverlapCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat41CreateNoOverlapCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(void **a1, int a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = 0uLL;
  v3 = a1[2];
  if ((-1431655765 * ((v3[11] - v3[10]) >> 3)) >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = a1[1][34];
    do
    {
      v7 = *(v3[19] + 4 * v5);
      if (v7 == -1 || ((*(*(v3[3] + 24) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) != 0)
      {
        v8 = v3[29];
        v9 = *(v8 + 8 * v5);
        if (v9 >= 1)
        {
          v10 = (v3[13] + v4);
          v11 = *v10;
          v12 = v3[31];
          v14 = v10[1];
          v13 = v10[2];
          *&v53 = *(v3[30] + 8 * v5);
          v16 = v3[32];
          v15 = v3[33];
          *(&v53 + 1) = -*(v16 + 8 * v5);
          v54 = *(v12 + 8 * v5);
          v55 = -*(v15 + 8 * v5);
          v56 = *(v8 + 8 * v5);
          v57 = 0u;
          __p = 0u;
          v59 = 0;
          v64 = 0;
          v65 = 0;
          v60 = v11;
          v61 = v14;
          v62 = v13;
          v17 = v11;
          if (v11 == -1)
          {
            v20 = v13;
            if (v13 < 0x8000000000000003)
            {
              v20 = -INFINITY;
            }

            if (v13 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v20 = INFINITY;
            }
          }

          else
          {
            v18 = v14;
            v19 = -INFINITY;
            if (v14 < 0x8000000000000003)
            {
              v18 = -INFINITY;
            }

            if (v14 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v18 = INFINITY;
            }

            if (v13 >= 0x8000000000000003)
            {
              v19 = v13;
            }

            if (v13 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v19 = INFINITY;
            }

            v20 = v19 + v18 * *(*v6 + 8 * v17);
          }

          v63 = v20;
          *&v57 = 1;
          *(&v57 + 1) = v9;
          std::vector<operations_research::sat::CtEvent>::push_back[abi:ne200100](&v47, &v53);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          v3 = a1[2];
        }
      }

      ++v5;
      v4 += 24;
    }

    while (v5 < (-1431655765 * ((v3[11] - v3[10]) >> 3)));
  }

  if (a2)
  {
    v21 = 6;
  }

  else
  {
    v21 = 0;
  }

  v46 = v21;
  v22 = v45;
  if (a2)
  {
    v23 = (v45 + 6);
    qmemcpy(v45, "Mirror", 6);
    v21 = v46;
  }

  else
  {
    v23 = v45;
  }

  *v23 = 0;
  *&v53 = "NoOverlapCompletionTimeExhaustive";
  *(&v53 + 1) = 33;
  if ((v21 & 0x80u) != 0)
  {
    v22 = v45[0];
  }

  v51 = v22;
  v52 = v21;
  absl::lts_20240722::StrCat(&v53, &v51, &v44);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v49 = &v41;
  v50 = 0;
  if (v48 != v47)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v48 - v47) >> 3) < 0x222222222222223)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(&v44, &v41, 1, *a1, a1[1]);
  v24 = v41;
  if (v41)
  {
    v25 = v42;
    v26 = v41;
    if (v42 != v41)
    {
      do
      {
        v27 = *(v25 - 8);
        if (v27)
        {
          *(v25 - 7) = v27;
          operator delete(v27);
        }

        v25 -= 120;
      }

      while (v25 != v24);
      v26 = v41;
    }

    v42 = v24;
    operator delete(v26);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  *&v53 = "NoOverlapCompletionTimeQueyrane";
  *(&v53 + 1) = 31;
  v28 = v46;
  v29 = v45;
  if ((v46 & 0x80u) != 0)
  {
    v29 = v45[0];
    v28 = v45[1];
  }

  v51 = v29;
  v52 = v28;
  absl::lts_20240722::StrCat(&v53, &v51, &v44);
  v30 = v47;
  v39 = v47;
  v38 = v48;
  v40 = v48;
  v48 = 0uLL;
  v47 = 0;
  operations_research::sat::GenerateCompletionTimeCutsWithEnergy(&v44, &v39, 1, 1, *a1, a1[1]);
  if (v30)
  {
    for (i = v38; i != v30; i -= 120)
    {
      v32 = *(i - 8);
      if (v32)
      {
        *(i - 7) = v32;
        operator delete(v32);
      }
    }

    operator delete(v30);
  }

  if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_59:
    operator delete(v45[0]);
    v33 = v47;
    if (!v47)
    {
      return;
    }

    goto LABEL_60;
  }

  operator delete(v44.__r_.__value_.__l.__data_);
  if (v46 < 0)
  {
    goto LABEL_59;
  }

LABEL_56:
  v33 = v47;
  if (!v47)
  {
    return;
  }

LABEL_60:
  v34 = v48;
  v35 = v33;
  if (v48 != v33)
  {
    do
    {
      v36 = *(v34 - 8);
      if (v36)
      {
        *(v34 - 7) = v36;
        operator delete(v36);
      }

      v34 -= 120;
    }

    while (v34 != v33);
    v35 = v47;
  }

  *&v48 = v33;
  operator delete(v35);
}

void sub_23CCF049C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  std::__exception_guard_exceptions<std::vector<operations_research::sat::CtEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a32);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::vector<operations_research::sat::CtEvent>::~vector[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F447C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 16), 1);
  if (result)
  {
    operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(*(a1 + 24));
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v8[0] = *(a1 + 8);
    v8[1] = v5;
    v8[2] = v3;
    v7 = *(a1 + 32);
    v9 = *(a1 + 16);
    v10 = v7;
    v11 = v6;
    result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(v9, 1);
    if (result)
    {
      operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(v8, 0);
      result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 16), 0);
      if (result)
      {
        operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(v8, 1);
        return 1;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat42CreateCumulativeCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat42CreateCumulativeCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat42CreateCumulativeCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat42CreateCumulativeCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(uint64_t a1, int a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = 0uLL;
  v3 = *(a1 + 24);
  if ((-1431655765 * ((v3[11] - v3[10]) >> 3)) >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(*(a1 + 16) + 272);
    do
    {
      v7 = *(v3[19] + 4 * v5);
      if (v7 == -1 || ((*(*(v3[3] + 24) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7)) && *(v3[29] + 8 * v5) >= 1)
      {
        v8 = operations_research::sat::SchedulingDemandHelper::DemandMin(*(a1 + 32), v5);
        v3 = *(a1 + 24);
        if (v8 >= 1)
        {
          v9 = v3[29];
          *&v52 = *(v3[30] + 8 * v5);
          v10 = v3[31];
          *(&v52 + 1) = -*(v3[32] + 8 * v5);
          v53 = *(v10 + 8 * v5);
          v54 = -*(v3[33] + 8 * v5);
          v55 = *(v9 + 8 * v5);
          v56 = 0u;
          memset(__p, 0, sizeof(__p));
          LODWORD(v58) = -1;
          *(&v58 + 1) = 0;
          v59 = 0;
          v61 = 0;
          IsFixed = 0;
          v11 = (v3[13] + v4);
          v12 = *(v11 + 2);
          v58 = *v11;
          v59 = v12;
          if (v58 == -1)
          {
            v15 = v59;
            if (v59 < 0x8000000000000003)
            {
              v15 = -INFINITY;
            }

            if (v59 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v15 = INFINITY;
            }
          }

          else
          {
            v13 = *(&v58 + 1);
            v14 = -INFINITY;
            if (*(&v58 + 1) < 0x8000000000000003)
            {
              v13 = -INFINITY;
            }

            if (*(&v58 + 1) > 0x7FFFFFFFFFFFFFFDLL)
            {
              v13 = INFINITY;
            }

            if (v59 >= 0x8000000000000003)
            {
              v14 = v59;
            }

            if (v59 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v14 = INFINITY;
            }

            v15 = v14 + v13 * *(*v6 + 8 * v58);
          }

          v60 = v15;
          *&v56 = operations_research::sat::SchedulingDemandHelper::DemandMin(*(a1 + 32), v5);
          v16 = *(a1 + 32);
          *(&v56 + 1) = *(*(v16 + 8) + 8 * v5);
          v17 = *(v16 + 17) + v4;
          if (v17 != __p)
          {
            std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(__p, *v17, *(v17 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 8) - *v17) >> 3));
            v16 = *(a1 + 32);
          }

          IsFixed = operations_research::sat::SchedulingDemandHelper::DemandIsFixed(v16, v5);
          std::vector<operations_research::sat::CtEvent>::push_back[abi:ne200100](&v46, &v52);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          v3 = *(a1 + 24);
        }
      }

      ++v5;
      v4 += 24;
    }

    while (v5 < (-1431655765 * ((v3[11] - v3[10]) >> 3)));
  }

  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  if (v18 != -1)
  {
    v19 -= *(*(*a1 + 40) + ((8 * v18) ^ 8)) * *(a1 + 48);
  }

  if (a2)
  {
    v20 = 6;
  }

  else
  {
    v20 = 0;
  }

  v45 = v20;
  v21 = v44;
  if (a2)
  {
    v22 = (v44 + 6);
    qmemcpy(v44, "Mirror", 6);
    v20 = v45;
  }

  else
  {
    v22 = v44;
  }

  *v22 = 0;
  *&v52 = "CumulativeCompletionTimeExhaustive";
  *(&v52 + 1) = 34;
  if ((v20 & 0x80u) != 0)
  {
    v21 = v44[0];
  }

  v50 = v21;
  v51 = v20;
  absl::lts_20240722::StrCat(&v52, &v50, &v43);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v48 = &v40;
  v49 = 0;
  if (v47 != v46)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v47 - v46) >> 3) < 0x222222222222223)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(&v43, &v40, v19, *(a1 + 8), *(a1 + 16));
  v23 = v40;
  if (v40)
  {
    v24 = v41;
    v25 = v40;
    if (v41 != v40)
    {
      do
      {
        v26 = *(v24 - 8);
        if (v26)
        {
          *(v24 - 7) = v26;
          operator delete(v26);
        }

        v24 -= 120;
      }

      while (v24 != v23);
      v25 = v40;
    }

    v41 = v23;
    operator delete(v25);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  *&v52 = "CumulativeCompletionTimeQueyrane";
  *(&v52 + 1) = 32;
  v27 = v45;
  v28 = v44;
  if ((v45 & 0x80u) != 0)
  {
    v28 = v44[0];
    v27 = v44[1];
  }

  v50 = v28;
  v51 = v27;
  absl::lts_20240722::StrCat(&v52, &v50, &v43);
  v29 = v46;
  v38 = v46;
  v37 = v47;
  v39 = v47;
  v47 = 0uLL;
  v46 = 0;
  operations_research::sat::GenerateCompletionTimeCutsWithEnergy(&v43, &v38, v19, 1, *(a1 + 8), *(a1 + 16));
  if (v29)
  {
    for (i = v37; i != v29; i -= 120)
    {
      v31 = *(i - 8);
      if (v31)
      {
        *(i - 7) = v31;
        operator delete(v31);
      }
    }

    operator delete(v29);
  }

  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

LABEL_64:
    operator delete(v44[0]);
    v32 = v46;
    if (!v46)
    {
      return;
    }

    goto LABEL_65;
  }

  operator delete(v43.__r_.__value_.__l.__data_);
  if (v45 < 0)
  {
    goto LABEL_64;
  }

LABEL_61:
  v32 = v46;
  if (!v46)
  {
    return;
  }

LABEL_65:
  v33 = v47;
  v34 = v32;
  if (v47 != v32)
  {
    do
    {
      v35 = *(v33 - 8);
      if (v35)
      {
        *(v33 - 7) = v35;
        operator delete(v35);
      }

      v33 -= 120;
    }

    while (v33 != v32);
    v34 = v46;
  }

  *&v47 = v32;
  operator delete(v34);
}

void sub_23CCF0CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  std::__exception_guard_exceptions<std::vector<operations_research::sat::CtEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a32);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::vector<operations_research::sat::CtEvent>::~vector[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

operations_research::sat::SatPostsolver *operations_research::sat::SatPostsolver::SatPostsolver(operations_research::sat::SatPostsolver *this, unsigned int a2)
{
  *(this + 8) = 0u;
  *(this + 104) = 0u;
  v3 = (this + 104);
  *this = a2;
  *(this + 1) = a2;
  *(this + 17) = 0;
  v4 = (this + 136);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 116) = 0u;
  if (!a2)
  {
    goto LABEL_12;
  }

  std::vector<int>::__append((this + 104), a2);
  if (a2 < 1)
  {
    goto LABEL_9;
  }

  v6 = *v3;
  if (a2 <= 7)
  {
    v7 = 0;
    do
    {
LABEL_8:
      v6->i32[v7] = v7;
      ++v7;
    }

    while (a2 != v7);
    goto LABEL_9;
  }

  v7 = a2 & 0x7FFFFFF8;
  v8 = xmmword_23CE38660;
  v9 = v6 + 1;
  v10.i64[0] = 0x400000004;
  v10.i64[1] = 0x400000004;
  v11.i64[0] = 0x800000008;
  v11.i64[1] = 0x800000008;
  v12 = v7;
  do
  {
    v9[-1] = v8;
    *v9 = vaddq_s32(v8, v10);
    v8 = vaddq_s32(v8, v11);
    v9 += 2;
    v12 -= 8;
  }

  while (v12);
  if (v7 != a2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v13 = 2 * a2;
  if ((2 * a2) <= 0)
  {
LABEL_12:
    v13 = 0;
    v14 = *v4;
    goto LABEL_13;
  }

  v14 = *(this + 17);
  if (*(this + 32) > v13)
  {
    v15 = v14 + (((v13 + 63) >> 3) & 0x1FFFFFF8);
    *(v15 - 8) &= ~(-2 << (v13 + 63));
  }

LABEL_13:
  *(this + 32) = v13;
  v16 = (v13 + 63) >> 6;
  v19 = 0;
  v17 = (*(this + 18) - v14) >> 3;
  if (v16 <= v17)
  {
    if (v16 < v17)
    {
      *(this + 18) = v14 + 8 * v16;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(v4, v16 - v17, &v19);
  }

  return this;
}

void sub_23CCF0EC8(_Unwind_Exception *a1)
{
  v6 = *v3;
  if (*v3)
  {
    v1[18] = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_3:
      v8 = v1[10];
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
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

  v1[14] = v7;
  operator delete(v7);
  v8 = v1[10];
  if (!v8)
  {
LABEL_4:
    std::deque<int>::~deque[abi:ne200100]((v1 + 4));
    v9 = *v4;
    if (!*v4)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v1[11] = v8;
  operator delete(v8);
  std::deque<int>::~deque[abi:ne200100]((v1 + 4));
  v9 = *v4;
  if (!*v4)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  v1[2] = v9;
  operator delete(v9);
  _Unwind_Resume(a1);
}

void operations_research::sat::SatPostsolver::Add(unint64_t *a1, int a2, unsigned int *a3, uint64_t a4)
{
  v15 = operations_research::sat::SatPostsolver::ApplyReverseMapping(a1, a2);
  std::vector<int>::push_back[abi:ne200100]((a1 + 10), &v15);
  v14 = a1[9];
  std::vector<int>::push_back[abi:ne200100]((a1 + 1), &v14);
  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = 4 * a4;
    do
    {
      v8 = operations_research::sat::SatPostsolver::ApplyReverseMapping(a1, *a3);
      v9 = a1[6];
      v10 = a1[5];
      if (v9 == v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = ((v9 - v10) << 7) - 1;
      }

      v12 = a1[9];
      v13 = v12 + a1[8];
      if (v11 == v13)
      {
        std::deque<operations_research::sat::Literal>::__add_back_capacity(a1 + 4);
        v10 = a1[5];
        v12 = a1[9];
        v13 = a1[8] + v12;
      }

      *(*(v10 + ((v13 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v13 & 0x3FF)) = v8;
      a1[9] = v12 + 1;
      ++a3;
      v7 -= 4;
    }

    while (v7);
  }
}

uint64_t operations_research::sat::SatPostsolver::ApplyReverseMapping(uint64_t a1, int a2)
{
  v2 = a2;
  v3 = a2 >> 1;
  v4 = *(a1 + 104);
  v5 = (a1 + 104);
  if (a2 >> 1 >= ((*(a1 + 112) - v4) >> 2))
  {
    do
    {
      v7 = *(a1 + 4);
      *(a1 + 4) = v7 + 1;
      v15 = v7;
      std::vector<int>::push_back[abi:ne200100](v5, &v15);
      v4 = *(a1 + 104);
    }

    while (v3 >= ((*(a1 + 112) - v4) >> 2));
    v8 = 2 * *(a1 + 4);
    if (v8 < 1)
    {
      v8 = 0;
    }

    else if (*(a1 + 128) > v8)
    {
      v9 = *(a1 + 136) + (((v8 + 63) >> 3) & 0x1FFFFFF8);
      *(v9 - 8) &= ~(-2 << (v8 + 63));
    }

    *(a1 + 128) = v8;
    v10 = *(a1 + 136);
    v11 = *(a1 + 144);
    v12 = (v8 + 63) >> 6;
    v16 = 0;
    v13 = (v11 - v10) >> 3;
    if (v12 <= v13)
    {
      if (v12 < v13)
      {
        *(a1 + 144) = v10 + 8 * v12;
      }
    }

    else
    {
      std::vector<unsigned long long>::__append(a1 + 136, v12 - v13, &v16);
      v4 = *v5;
    }
  }

  return v2 & 1 | (2 * *(v4 + 4 * v3));
}

uint64_t operations_research::sat::SatPostsolver::FixVariable(uint64_t a1, int a2)
{
  result = operations_research::sat::SatPostsolver::ApplyReverseMapping(a1, a2);
  *(*(a1 + 136) + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  return result;
}

void operations_research::sat::SatPresolver::AddBinaryClause(uint64_t a1, int a2, int a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = a2;
  v3[1] = a3;
  operations_research::sat::SatPresolver::AddClause(a1, v3, 2);
}

void operations_research::sat::SatPresolver::AddClause(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 336);
  v7 = -1431655765 * (&v6[-*(a1 + 328)] >> 3);
  v86 = v7;
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    if (((4 * a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = *(a1 + 344);
  if (v6 < v9)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    v8 = (v6 + 24);
    *(v6 + 2) = 0;
  }

  else
  {
    v10 = *(a1 + 328);
    v11 = v6 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = 24 * v12;
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    v8 = 24 * v12 + 24;
    v17 = (24 * v12 - v11);
    memcpy(v17, v10, v11);
    *(a1 + 328) = v17;
    *(a1 + 336) = v8;
    *(a1 + 344) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  *(a1 + 336) = v8;
  v19 = *(a1 + 264);
  v18 = *(a1 + 272);
  if (v19 == v18 << 6)
  {
    if ((v19 + 1) < 0)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v19 > 0x3FFFFFFFFFFFFFFELL)
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18 << 7;
      v21 = (v19 & 0x3FFFFFFFFFFFFFC0) + 64;
      if (v20 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }
    }

    std::vector<BOOL>::reserve((a1 + 256), v22);
    v19 = *(a1 + 264);
  }

  v23 = *(a1 + 296);
  v24 = *(a1 + 288);
  *(a1 + 264) = v19 + 1;
  *(*(a1 + 256) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
  if (v23 == v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = ((v23 - v24) << 7) - 1;
  }

  v26 = *(a1 + 320);
  v27 = v26 + *(a1 + 312);
  if (v25 == v27)
  {
    std::deque<int>::__add_back_capacity((a1 + 280));
    v24 = *(a1 + 288);
    v26 = *(a1 + 320);
    v27 = *(a1 + 312) + v26;
  }

  *(*(v24 + ((v27 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v27 & 0x3FF)) = v7;
  *(a1 + 320) = v26 + 1;
  v28 = *(a1 + 336);
  v29 = *(a1 + 448);
  v30 = *(v28 - 24);
  v31 = *(v28 - 16);
  if (v29 == *(a1 + 456))
  {
    v34 = 0;
    v32 = (v31 - v30) >> 2;
  }

  else
  {
    v32 = (v31 - v30) >> 2;
    if (v31 == v30)
    {
      v34 = 0;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v35 = 1;
      do
      {
        v36 = *(v30 + 4 * v33);
        v37 = *(v29 + 4 * v36);
        *(v30 + 4 * v33) = v37;
        v34 |= v36 != v37;
        v33 = v35++;
      }

      while (v32 > v33);
    }
  }

  v38 = 126 - 2 * __clz(v32);
  if (v31 == v30)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v30, v31, &v87, v39, 1);
  v40 = *(v28 - 24);
  v41 = *(v28 - 16);
  if (v40 != v41)
  {
    v42 = v40 + 1;
    while (v42 != v41)
    {
      v43 = *(v42 - 1);
      v44 = *v42++;
      if (v43 == v44)
      {
        v45 = v42 - 2;
        while (v42 != v41)
        {
          v46 = v43;
          v43 = *v42;
          if (v46 != *v42)
          {
            v45[1] = v43;
            ++v45;
          }

          ++v42;
        }

        if (v45 + 1 != v41)
        {
          v41 = v45 + 1;
          *(v28 - 16) = v45 + 1;
        }

        break;
      }
    }
  }

  v47 = v41 - v40;
  if (v47 < 2)
  {
LABEL_55:
    v50 = (*(a1 + 328) + 24 * v86);
    v52 = *v50;
    v51 = v50[1];
    if (v52 == v51)
    {
      v53 = 0;
    }

    else
    {
      v53 = 0;
      if (v51 - 1 == v52)
      {
        v54 = v52;
      }

      else
      {
        v65 = 0;
        v66 = (((v51 - 1) - v52) >> 2) + 1;
        v54 = &v52[v66 & 0x7FFFFFFFFFFFFFFELL];
        v67 = v52 + 1;
        v68 = v66 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v72 = *(v67 - 1) >> 1;
          v69 = *v67 >> 1;
          v70 = -v72 < 0;
          v71 = -v72 & 0x3F;
          LOBYTE(v72) = v72 & 0x3F;
          if (!v70)
          {
            v72 = -v71;
          }

          v70 = -v69 < 0;
          v73 = -v69 & 0x3F;
          LOBYTE(v69) = v69 & 0x3F;
          if (!v70)
          {
            v69 = -v73;
          }

          v53 |= 1 << v72;
          v65 |= 1 << v69;
          v67 += 2;
          v68 -= 2;
        }

        while (v68);
        v53 |= v65;
        if (v66 == (v66 & 0x7FFFFFFFFFFFFFFELL))
        {
          goto LABEL_76;
        }
      }

      do
      {
        v74 = *v54++;
        v75 = -(v74 >> 1) & 0x3F;
        v76 = (v74 >> 1) & 0x3F;
        if (v74 >> 1 <= 0)
        {
          v76 = -v75;
        }

        v53 |= 1 << v76;
      }

      while (v54 != v51);
    }

LABEL_76:
    v85 = v53;
    std::vector<long long>::push_back[abi:ne200100]((a1 + 352), &v85);
    v77 = *(a1 + 1456);
    if (((v77 != 0) & v34) == 1)
    {
      operations_research::sat::DratProofHandler::AddClause(v77, *(v28 - 24), (*(v28 - 16) - *(v28 - 24)) >> 2);
      operations_research::sat::DratProofHandler::DeleteClause(*(a1 + 1456), a2, a3);
    }

    v78 = (*(*(v28 - 16) - 4) | 1) + 1;
    v79 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 400) - *(a1 + 392)) >> 3);
    if (v78 > v79)
    {
      std::vector<std::vector<int>>::__append(a1 + 392, v78 - v79);
      v80 = *(a1 + 416);
      v81 = (*(a1 + 424) - v80) >> 2;
      if (v78 <= v81)
      {
        if (v78 < v81)
        {
          *(a1 + 424) = v80 + 4 * v78;
        }
      }

      else
      {
        std::vector<int>::__append((a1 + 416), v78 - v81);
      }
    }

    v82 = *(v28 - 24);
    for (i = *(v28 - 16); v82 != i; ++*(*(a1 + 416) + 4 * v84))
    {
      v84 = *v82++;
      std::vector<int>::push_back[abi:ne200100](*(a1 + 392) + 24 * v84, &v86);
    }

    return;
  }

  v48 = 2;
  v49 = 1;
  while ((v40[v49] ^ v40[v48 - 2]) != 1)
  {
    v49 = v48++;
    if (v47 <= v49)
    {
      goto LABEL_55;
    }
  }

  v56 = *(a1 + 288);
  v55 = *(a1 + 296);
  v57 = ((v55 - v56) << 7) - 1;
  v58 = v55 == v56;
  ++*(a1 + 472);
  v60 = *(a1 + 312);
  v59 = *(a1 + 320);
  if (v58)
  {
    v57 = 0;
  }

  *(a1 + 320) = v59 - 1;
  if ((v57 - (v59 + v60) + 1) >= 0x800)
  {
    operator delete(*(v55 - 8));
    *(a1 + 296) -= 8;
  }

  v61 = *(a1 + 336);
  v64 = *(v61 - 24);
  v63 = v61 - 24;
  v62 = v64;
  if (v64)
  {
    *(*(a1 + 336) - 16) = v62;
    operator delete(v62);
  }

  *(a1 + 336) = v63;
  --*(a1 + 264);
}

void sub_23CCF1840(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatPresolver::SetNumVariables(operations_research::sat::SatPresolver *this, int a2)
{
  v2 = 2 * a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 50) - *(this + 49)) >> 3);
  if (v2 > v3)
  {
    std::vector<std::vector<int>>::__append(this + 392, v2 - v3);
    v5 = *(this + 52);
    v6 = (*(this + 53) - v5) >> 2;
    if (v2 <= v6)
    {
      if (v2 < v6)
      {
        *(this + 53) = v5 + 4 * v2;
      }
    }

    else
    {

      std::vector<int>::__append((this + 416), v2 - v6);
    }
  }
}

void operations_research::sat::SatPresolver::AddClauseInternal(uint64_t a1, int **a2)
{
  v4 = *(a1 + 1456);
  if (v4)
  {
    operations_research::sat::DratProofHandler::AddClause(v4, *a2, a2[1] - *a2);
  }

  v6 = *(a1 + 328);
  v5 = *(a1 + 336);
  v7 = v5 - v6;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3);
  v51 = -1431655765 * ((v5 - v6) >> 3);
  v9 = *(a1 + 344);
  if (v5 >= v9)
  {
    v11 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v6) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = (8 * ((v5 - v6) >> 3));
    v10 = v14 + 3;
    v15 = v14 - v7;
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    memcpy(v14 - v7, v6, v7);
    *(a1 + 328) = v15;
    *(a1 + 336) = v10;
    *(a1 + 344) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    v10 = v5 + 24;
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
  }

  *(a1 + 336) = v10;
  v16 = *(v10 - 3);
  *(v10 - 3) = *a2;
  *a2 = v16;
  v17 = *(v10 - 2);
  *(v10 - 2) = a2[1];
  a2[1] = v17;
  v18 = *(v10 - 1);
  *(v10 - 1) = a2[2];
  a2[2] = v18;
  v20 = *(a1 + 264);
  v19 = *(a1 + 272);
  if (v20 == v19 << 6)
  {
    if ((v20 + 1) < 0)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v20 > 0x3FFFFFFFFFFFFFFELL)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19 << 7;
      v22 = (v20 & 0x3FFFFFFFFFFFFFC0) + 64;
      if (v21 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }
    }

    std::vector<BOOL>::reserve((a1 + 256), v23);
    v20 = *(a1 + 264);
  }

  v24 = *(a1 + 296);
  v25 = *(a1 + 288);
  *(a1 + 264) = v20 + 1;
  *(*(a1 + 256) + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
  if (v24 == v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = ((v24 - v25) << 7) - 1;
  }

  v27 = *(a1 + 320);
  v28 = v27 + *(a1 + 312);
  if (v26 == v28)
  {
    std::deque<int>::__add_back_capacity((a1 + 280));
    v25 = *(a1 + 288);
    v27 = *(a1 + 320);
    v28 = *(a1 + 312) + v27;
  }

  *(*(v25 + ((v28 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v28 & 0x3FF)) = v8;
  *(a1 + 320) = v27 + 1;
  v29 = *(a1 + 336);
  v30 = *(v29 - 24);
  v31 = *(v29 - 16);
  if (v30 != v31)
  {
    do
    {
      v32 = *v30++;
      std::vector<int>::push_back[abi:ne200100](*(a1 + 392) + 24 * v32, &v51);
      ++*(*(a1 + 416) + 4 * v32);
      operations_research::sat::SatPresolver::UpdatePriorityQueue(a1, (v32 >> 1));
      operations_research::sat::SatPresolver::UpdateBvaPriorityQueue(a1, v32);
    }

    while (v30 != v31);
    LODWORD(v8) = v51;
  }

  v33 = (*(a1 + 328) + 24 * v8);
  v35 = *v33;
  v34 = v33[1];
  if (v35 == v34)
  {
    v36 = 0;
    goto LABEL_46;
  }

  v36 = 0;
  if (v34 - 1 == v35)
  {
    v37 = v35;
    do
    {
LABEL_43:
      v47 = *v37++;
      v48 = -(v47 >> 1) & 0x3F;
      v49 = (v47 >> 1) & 0x3F;
      if (v47 >> 1 <= 0)
      {
        v49 = -v48;
      }

      v36 |= 1 << v49;
    }

    while (v37 != v34);
    goto LABEL_46;
  }

  v38 = 0;
  v39 = (((v34 - 1) - v35) >> 2) + 1;
  v37 = &v35[v39 & 0x7FFFFFFFFFFFFFFELL];
  v40 = v35 + 1;
  v41 = v39 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v45 = *(v40 - 1) >> 1;
    v42 = *v40 >> 1;
    v43 = -v45 < 0;
    v44 = -v45 & 0x3F;
    LOBYTE(v45) = v45 & 0x3F;
    if (!v43)
    {
      v45 = -v44;
    }

    v43 = -v42 < 0;
    v46 = -v42 & 0x3F;
    LOBYTE(v42) = v42 & 0x3F;
    if (!v43)
    {
      v42 = -v46;
    }

    v36 |= 1 << v45;
    v38 |= 1 << v42;
    v40 += 2;
    v41 -= 2;
  }

  while (v41);
  v36 |= v38;
  if (v39 != (v39 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_43;
  }

LABEL_46:
  v50 = v36;
  std::vector<long long>::push_back[abi:ne200100]((a1 + 352), &v50);
}

void operations_research::sat::SatPresolver::UpdatePriorityQueue(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v31[3] = v2;
    v31[4] = v3;
    v5 = (v4 + 16 * a2);
    v6 = (*(a1[52] + 4 * ((2 * a2) | 1)) + *(a1[52] + (a2 << 33 >> 30)));
    v5[1] = v6;
    v7 = *v5;
    if ((v7 & 0x80000000) == 0 && (v8 = a1[4], v9 = (a1[5] - v8) >> 3, v9 > v7) && (v10 = *(v8 + 8 * v7), v10 == v5))
    {
      if (*(*(v8 + 8 * ((v7 - 1) / 2)) + 8) <= v6)
      {
        v24 = (2 * v7) | 1;
        v25 = v24;
        if (v9 <= v24)
        {
          v23 = *v5;
          v21 = *v5;
        }

        else
        {
          v26 = 2 * v7;
          v27 = v10[1];
          while (1)
          {
            v21 = v26 + 2;
            if (v9 <= v26 + 2 || (v28 = *(v8 + 8 * v25), v29 = *(v8 + 8 * v21), v30 = *(v29 + 8), *(v28 + 8) <= v30))
            {
              v29 = *(v8 + 8 * v24);
              v30 = *(v29 + 8);
              v21 = v24;
            }

            if (v27 <= v30)
            {
              break;
            }

            *(v8 + 8 * v7) = v29;
            *v29 = v7;
            v26 = 2 * v21;
            v24 = (2 * v21) | 1;
            v25 = v24;
            LODWORD(v7) = v21;
            if (v9 <= v24)
            {
              goto LABEL_31;
            }
          }

          v21 = v7;
LABEL_31:
          v23 = v21;
        }
      }

      else if (v7)
      {
        v19 = v10[1];
        while (1)
        {
          v20 = v7 - 1;
          v21 = (v7 - 1) >> 1;
          v22 = *(v8 + 8 * v21);
          v23 = v7;
          if (*(v22 + 8) <= v19)
          {
            break;
          }

          *(v8 + 8 * v7) = v22;
          *v22 = v7;
          LODWORD(v7) = v20 >> 1;
          if (v20 < 2)
          {
            v23 = v20 >> 1;
            goto LABEL_32;
          }
        }

        v21 = v7;
      }

      else
      {
        v23 = 0;
        v21 = 0;
      }

LABEL_32:
      *(v8 + 8 * v23) = v10;
      *v10 = v21;
    }

    else
    {
      v31[0] = v5;
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100]((a1 + 4), v31);
      v12 = a1[4];
      v13 = ((a1[5] - v12) >> 3) - 1;
      v14 = *(v12 + 8 * v13);
      if (v13 < 1)
      {
        v18 = v13;
      }

      else
      {
        v15 = *(v14 + 8);
        while (1)
        {
          v16 = v13 - 1;
          v17 = *(v12 + 8 * ((v13 - 1) >> 1));
          v18 = v13;
          if (*(v17 + 8) <= v15)
          {
            break;
          }

          *(v12 + 8 * v13) = v17;
          *v17 = v13;
          v13 = v16 >> 1;
          if (v16 <= 1)
          {
            v18 = v16 >> 1;
            v13 = v16 >> 1;
            break;
          }
        }
      }

      *(v12 + 8 * v18) = v14;
      *v14 = v13;
    }
  }
}

void *operations_research::sat::SatPresolver::UpdateBvaPriorityQueue(void *result, int a2)
{
  if (result[12])
  {
    v2 = (*(result[8] + (((result[11] + a2) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(result + 88) + a2));
    v3 = *(result[52] + 4 * a2);
    v2[1] = v3;
    v4 = *v2;
    if ((v4 & 0x80000000) == 0)
    {
      v5 = result[14];
      v6 = (result[15] - v5) >> 3;
      if (v6 > v4)
      {
        v7 = v5[v4];
        if (v7 == v2)
        {
          if (v5[(v4 - 1) / 2][1] >= v3)
          {
            v12 = (2 * v4) | 1;
            v13 = v12;
            if (v6 <= v12)
            {
              v5[v4] = v7;
              *v7 = v4;
            }

            else
            {
              v14 = 2 * v4;
              v15 = v7[1];
              while (1)
              {
                v16 = v14 + 2;
                if (v6 <= v14 + 2 || (v17 = v5[v13], v18 = v5[v16], v19 = v18[1], v17[1] >= v19))
                {
                  v18 = v5[v12];
                  v19 = v18[1];
                  v16 = v12;
                }

                if (v15 >= v19)
                {
                  break;
                }

                v5[v4] = v18;
                *v18 = v4;
                v14 = 2 * v16;
                v12 = (2 * v16) | 1;
                v13 = v12;
                LODWORD(v4) = v16;
                if (v6 <= v12)
                {
                  goto LABEL_24;
                }
              }

              v16 = v4;
LABEL_24:
              v5[v16] = v7;
              *v7 = v16;
            }
          }

          else if (v4)
          {
            v8 = v7[1];
            while (1)
            {
              v9 = v4 - 1;
              v10 = (v4 - 1) >> 1;
              v11 = v5[v10];
              if (v11[1] >= v8)
              {
                break;
              }

              v5[v4] = v11;
              *v11 = v4;
              LODWORD(v4) = v9 >> 1;
              if (v9 < 2)
              {
                v5[v10] = v7;
                *v7 = v10;
                return result;
              }
            }

            v5[v4] = v7;
            *v7 = v4;
          }

          else
          {
            *v5 = v7;
            *v7 = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::SatPresolver::ProcessAllClauses(operations_research::sat::SatPresolver *this)
{
  v2 = *(this + 39);
  v3 = (v2 >> 7) & 0x1FFFFFFFFFFFFF8;
  v4 = *(this + 36);
  if (*(this + 37) == v4)
  {
    v12 = 0;
    v6 = 0;
    v13 = 0;
    v22 = 0;
    v17 = 0;
    v7 = (this + 320);
    v10 = (v4 + 8 * ((*(this + 40) + v2) >> 10));
    v32[0] = this;
    goto LABEL_16;
  }

  v5 = *(this + 39) & 0x3FFLL;
  v6 = (*(v4 + v3) + 4 * v5);
  v7 = (this + 320);
  v8 = *(this + 40) + v2;
  v9 = (v8 >> 7) & 0x1FFFFFFFFFFFFF8;
  v10 = (v4 + v9);
  v11 = v8 & 0x3FF;
  v12 = (*(v4 + v9) + 4 * v11);
  v32[0] = this;
  if (v12 == v6)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v13 = (v11 | ((v9 - v3) << 7)) - v5;
  if (v13 < 129)
  {
LABEL_13:
    v22 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  v31 = (v4 + v9);
  v14 = v12;
  v15 = v6;
  v16 = (v11 | ((v9 - v3) << 7)) - v5;
  if (v13 >= 0x1FFFFFFFFFFFFFFFLL)
  {
    v17 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = (v11 | ((v9 - v3) << 7)) - v5;
  }

  v18 = MEMORY[0x277D826F0];
  while (1)
  {
    v19 = operator new(4 * v17, v18);
    if (v19)
    {
      break;
    }

    v20 = v17 >> 1;
    v21 = v17 > 1;
    v17 >>= 1;
    if (!v21)
    {
      v22 = 0;
      v17 = v20;
      goto LABEL_15;
    }
  }

  v22 = v19;
LABEL_15:
  v6 = v15;
  v12 = v14;
  v10 = v31;
  v13 = v16;
LABEL_16:
  std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>((v4 + v3), v6, v10, v12, v32, v13, v22, v17);
  if (v22)
  {
    operator delete(v22);
  }

  if (!*v7)
  {
    return 1;
  }

  v23 = 0;
  do
  {
    v24 = *(this + 36);
    v25 = (*(v24 + ((*(this + 39) >> 7) & 0x1FFFFFFFFFFFFF8)))[*(this + 39) & 0x3FFLL];
    *(*(this + 32) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v25);
    v26 = *(this + 40) - 1;
    v27 = *(this + 39) + 1;
    *(this + 39) = v27;
    *(this + 40) = v26;
    if (v27 >= 0x800)
    {
      operator delete(*v24);
      *(this + 36) += 8;
      *(this + 39) -= 1024;
    }

    result = operations_research::sat::SatPresolver::ProcessClauseToSimplifyOthers(this, v25);
    if (!result)
    {
      break;
    }

    if (++v23 >= 1000)
    {
      if ((*(this + 48) + *(this + 47)) >= 1000000001)
      {
        if (dword_27E25D370 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_1::operator() const(void)::site, dword_27E25D370))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 320);
          v30 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v32, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, "Aborting ProcessAllClauses() because work limit has been reached", 0x40uLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v32);
          return 1;
        }

        return 1;
      }

      if (*(this + 183))
      {
        v29 = result;
        if (operations_research::TimeLimit::LimitReached(*(this + 183)))
        {
          return v29;
        }

        v23 = 0;
        result = v29;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  while (*v7);
  return result;
}

void sub_23CCF2300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CCF2314(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SatPresolver::ProcessClauseToSimplifyOthers(operations_research::sat::SatPresolver *this, uint64_t a2)
{
  v2 = *(this + 41) + 24 * a2;
  v3 = *(v2 + 8);
  v4 = *v2;
  if (*v2 == v3)
  {
    return 1;
  }

  v5 = a2;
  v79 = (*(this + 41) + 24 * a2);
  v7 = *v4;
  v8 = *(this + 52);
  v9 = *(v8 + 4 * *v4);
  do
  {
    v11 = *v4++;
    v10 = v11;
    v12 = *(v8 + 4 * v11);
    if (v12 < v9)
    {
      v7 = v10;
      v9 = v12;
    }
  }

  while (v4 != v3);
  result = operations_research::sat::SatPresolver::ProcessClauseToSimplifyOthersUsingLiteral(this, a2, v7);
  if (result)
  {
    v14 = v79;
    v15 = *v79;
    v16 = v79[1];
    if (*v79 != v16)
    {
      v17 = 0x7FFFFFFF;
      v18 = -1;
      do
      {
        v19 = *v15;
        if (*v15 != v7 && *(*(this + 52) + 4 * v19) < v17)
        {
          v17 = *(*(this + 52) + 4 * v19);
          v18 = *v15;
        }

        ++v15;
      }

      while (v15 != v16);
      if (v18 != -1 && *(*(this + 52) + 4 * v18) < *(*(this + 52) + 4 * (v7 ^ 1)))
      {

        return operations_research::sat::SatPresolver::ProcessClauseToSimplifyOthersUsingLiteral(this, v5, v18);
      }
    }

    v20 = v7 ^ 1u;
    v21 = (*(this + 49) + 24 * v20);
    begin = v21->__begin_;
    end = v21->__end_;
    if (v21->__begin_ == end)
    {
      v25 = 0;
      v24 = 0;
      v72 = v20 << 32;
      v73 = 0;
      v75 = 1;
      goto LABEL_74;
    }

    v24 = 0;
    v25 = 0;
    v26 = *(*(this + 44) + 8 * v5);
    v78 = *(this + 49) + 24 * v20;
    v77 = v26;
LABEL_23:
    v27 = *begin;
    v28 = *(*(this + 44) + 8 * *begin);
    if (!v28)
    {
      goto LABEL_22;
    }

    if ((v26 & ~v28) != 0 || (v29 = v27, v30 = *(this + 41), v31 = (v30 + 24 * v27), v32 = *v31, v33 = v31[1], v34 = v33 - *v31, v35 = v34 >> 2, v37 = *v14, v36 = v14[1], v38 = v36 - *v14, v34 >> 2 < v38))
    {
LABEL_21:
      v21->__begin_[v24++] = v27;
      goto LABEL_22;
    }

    *(this + 48) += v38 + v35;
    if (v37 == v36)
    {
      goto LABEL_47;
    }

    v39 = v35 - v38;
    v40 = v34 - 4;
    v41 = v32;
    while (1)
    {
      v42 = *v41;
      v43 = *v37;
      if (*v37 == *v41)
      {
        ++v37;
      }

      else
      {
        if ((v43 ^ v42) == 1)
        {
          v44 = v37 + 1;
          if (v44 != v36)
          {
            v45 = 1;
            do
            {
              v46 = v41[v45];
              v47 = *v44;
              if (*v44 == v46)
              {
                ++v44;
              }

              else
              {
                if ((v47 ^ v46) == 1)
                {
                  goto LABEL_21;
                }

                if (v47 < v46)
                {
                  goto LABEL_21;
                }

                if (--v39 < 0)
                {
                  goto LABEL_21;
                }
              }

              ++v45;
            }

            while (v44 != v36);
          }

          if (v41 + 1 != v33)
          {
            memmove(v41, v41 + 1, v40);
            v29 = v27;
            v26 = v77;
            v21 = v78;
            v14 = v79;
            v30 = *(this + 41);
            v32 = *(v30 + 24 * v27);
          }

          v31[1] = (v41 + v40);
          v33 = *(v30 + 24 * v29 + 8);
LABEL_47:
          if (v32 == v33)
          {
            return 0;
          }

          v48 = *(this + 182);
          if (v48)
          {
            v49 = v29;
            operations_research::sat::DratProofHandler::AddClause(v48, v32, v33 - v32);
            v29 = v49;
            v26 = v77;
            v21 = v78;
            v14 = v79;
            v50 = *(this + 41) + 24 * v49;
            v32 = *v50;
            v33 = *(v50 + 8);
          }

          if (v32 == v33)
          {
            v51 = 0;
          }

          else
          {
            v51 = 0;
            if (v33 - 1 == v32)
            {
              v52 = v32;
              goto LABEL_61;
            }

            v53 = 0;
            v54 = (((v33 - 1) - v32) >> 2) + 1;
            v52 = &v32[v54 & 0x7FFFFFFFFFFFFFFELL];
            v55 = v32 + 1;
            v56 = v54 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v60 = *(v55 - 1) >> 1;
              v57 = *v55 >> 1;
              v58 = -v60 < 0;
              v59 = -v60 & 0x3F;
              LOBYTE(v60) = v60 & 0x3F;
              if (!v58)
              {
                v60 = -v59;
              }

              v58 = -v57 < 0;
              v61 = -v57 & 0x3F;
              LOBYTE(v57) = v57 & 0x3F;
              if (!v58)
              {
                v57 = -v61;
              }

              v51 |= 1 << v60;
              v53 |= 1 << v57;
              v55 += 2;
              v56 -= 2;
            }

            while (v56);
            v51 |= v53;
            if (v54 != (v54 & 0x7FFFFFFFFFFFFFFELL))
            {
              do
              {
LABEL_61:
                v62 = *v52++;
                v63 = -(v62 >> 1) & 0x3F;
                v64 = (v62 >> 1) & 0x3F;
                if (v62 >> 1 <= 0)
                {
                  v64 = -v63;
                }

                v51 |= 1 << v64;
              }

              while (v52 != v33);
            }
          }

          *(*(this + 44) + 8 * v29) = v51;
          v65 = *(this + 32);
          v25 = 1;
          v66 = *(v65 + 8 * (v29 >> 6));
          if ((v66 & (1 << v29)) == 0)
          {
            v67 = *(this + 37);
            v68 = *(this + 36);
            *(v65 + 8 * (v29 >> 6)) = v66 | (1 << v29);
            if (v67 == v68)
            {
              v69 = 0;
            }

            else
            {
              v69 = ((v67 - v68) << 7) - 1;
            }

            v70 = *(this + 40);
            v71 = v70 + *(this + 39);
            if (v69 == v71)
            {
              std::deque<int>::__add_back_capacity(this + 35);
              v26 = v77;
              v21 = v78;
              v14 = v79;
              v68 = *(this + 36);
              v70 = *(this + 40);
              v71 = *(this + 39) + v70;
            }

            *(*(v68 + ((v71 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v71 & 0x3FF)) = v27;
            *(this + 40) = v70 + 1;
            v25 = 1;
          }

LABEL_22:
          if (++begin != end)
          {
            goto LABEL_23;
          }

          begin = v21->__begin_;
          v72 = (v7 ^ 1u) << 32;
          v73 = v24;
          v74 = v21->__end_ - v21->__begin_;
          v75 = v24 >= v74;
          if (v24 > v74)
          {
            v76 = v25;
            std::vector<int>::__append(v21, v24 - v74);
            v25 = v76;
            goto LABEL_76;
          }

LABEL_74:
          if (!v75)
          {
            v21->__end_ = &begin[v73];
          }

LABEL_76:
          *(*(this + 52) + (v72 >> 30)) = v24;
          if (v25)
          {
            operations_research::sat::SatPresolver::UpdatePriorityQueue(this, (v7 >> 1));
          }

          return 1;
        }

        if (v43 < v42)
        {
          goto LABEL_21;
        }

        if (--v39 < 0)
        {
          goto LABEL_21;
        }
      }

      ++v41;
      v40 -= 4;
      if (v37 == v36)
      {
        goto LABEL_47;
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::SatPresolver::Presolve(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  v6 = *(a1 + 1472);
  if (*v6 == 1)
  {
    v7 = *(a2 + 8);
    v8 = v7 & 0x3F;
    v9 = 0;
    if (v7 > 0x3F || v8 != 0)
    {
      v11 = 0;
      v12 = *a2;
      v13 = *a2 + 8 * (v7 >> 6);
      do
      {
        v9 += (*v12 >> v11) & 1;
        v12 += v11 == 63;
        if (v11 == 63)
        {
          v11 = 0;
        }

        else
        {
          ++v11;
        }
      }

      while (v12 != v13 || v11 != v8);
    }

    v42 = "[SAT presolve] num removable Booleans: ";
    v43 = 39;
    v39 = v41;
    v40 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v9, v41, v4) - v41;
    v38[0].__r_.__value_.__r.__words[0] = " / ";
    v38[0].__r_.__value_.__l.__size_ = 3;
    v16 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a2 + 8), v37, v15);
    v36[0] = v37;
    v36[1] = v16 - v37;
    absl::lts_20240722::StrCat(&v42, &v39, v38, v36, &__p);
    operations_research::SolverLogger::LogInfo(v6, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 349, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v19 = *(a1 + 1472);
      if (*v19 != 1)
      {
LABEL_21:
        operations_research::sat::SatPresolver::DisplayStats(a1, 0.0, v17);
        goto LABEL_22;
      }
    }

    else
    {
      v19 = *(a1 + 1472);
      if (*v19 != 1)
      {
        goto LABEL_21;
      }
    }

    v42 = "[SAT presolve] num trivial clauses: ";
    v43 = 36;
    v20 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 472), v41, v18);
    v39 = v41;
    v40 = v20 - v41;
    absl::lts_20240722::StrCat(&v42, &v39, v38);
    operations_research::SolverLogger::LogInfo(v19, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 351, v38);
    if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38[0].__r_.__value_.__l.__data_);
    }

    goto LABEL_21;
  }

LABEL_22:
  result = operations_research::sat::SatPresolver::ProcessAllClauses(a1);
  if (result)
  {
    if (**(a1 + 1472) == 1)
    {
      v22 = absl::lts_20240722::GetCurrentTimeNanos(result);
      operations_research::sat::SatPresolver::DisplayStats(a1, (v22 - CurrentTimeNanos) * 0.000000001, v23);
    }

    v24 = *(a1 + 1464);
    if ((!v24 || (operations_research::TimeLimit::LimitReached(v24) & 1) == 0) && (*(a1 + 384) + *(a1 + 376)) <= 1000000000)
    {
      operations_research::sat::SatPresolver::InitializePriorityQueue(a1);
      v26 = *(a1 + 32);
      if (((*(a1 + 40) - v26) >> 3) >= 1)
      {
        while (1)
        {
          v31 = (*v26)[1];
          v25 = AdjustablePriorityQueue<operations_research::sat::SatPresolver::PQElement,std::less<operations_research::sat::SatPresolver::PQElement>>::Remove(a1 + 24, *v26);
          if ((*(*a2 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v31))
          {
            if (operations_research::sat::SatPresolver::CrossProduct(a1, 2 * v31))
            {
              result = operations_research::sat::SatPresolver::ProcessAllClauses(a1);
              if (!result)
              {
                return result;
              }
            }

            v25 = *(a1 + 1464);
            if (v25)
            {
              v25 = operations_research::TimeLimit::LimitReached(v25);
              if (v25)
              {
                break;
              }
            }

            if ((*(a1 + 384) + *(a1 + 376)) > 1000000000)
            {
              break;
            }
          }

          v26 = *(a1 + 32);
          if (((*(a1 + 40) - v26) >> 3) <= 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        if (**(a1 + 1472) == 1)
        {
          v27 = absl::lts_20240722::GetCurrentTimeNanos(v25);
          operations_research::sat::SatPresolver::DisplayStats(a1, (v27 - CurrentTimeNanos) * 0.000000001, v28);
        }

        if (*(a1 + 1049) == 1)
        {
          *(a1 + 8) = *a1;
          operations_research::sat::SatPresolver::InitializeBvaPriorityQueue(a1);
          v30 = *(a1 + 112);
          if (((*(a1 + 120) - v30) >> 3) >= 1)
          {
            do
            {
              v32 = (*v30)[1];
              AdjustablePriorityQueue<operations_research::sat::SatPresolver::BvaPqElement,std::less<operations_research::sat::SatPresolver::BvaPqElement>>::Remove(a1 + 104, *v30);
              operations_research::sat::SatPresolver::SimpleBva(a1, v32);
              v29 = *(a1 + 1464);
              if (v29)
              {
                v29 = operations_research::TimeLimit::LimitReached(v29);
                if (v29)
                {
                  break;
                }
              }

              v30 = *(a1 + 112);
            }

            while (((*(a1 + 120) - v30) >> 3) > 0);
          }

          if (**(a1 + 1472) == 1)
          {
            v33 = absl::lts_20240722::GetCurrentTimeNanos(v29);
            operations_research::sat::SatPresolver::DisplayStats(a1, (v33 - CurrentTimeNanos) * 0.000000001, v34);
          }
        }
      }
    }

    return 1;
  }

  return result;
}

void sub_23CCF2C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatPresolver::DisplayStats(operations_research::sat::SatPresolver *this, long double a2, char *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(this + 41);
  v4 = *(this + 42);
  if (v3 == v4)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *v3;
      v9 = v3[1];
      v3 += 3;
      if (v9 - v8 == 4)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = v6;
      }

      if (v8 == v9)
      {
        v5 = v5;
      }

      else
      {
        v7 += (v9 - v8) >> 2;
        v6 = v10;
        v5 = (v5 + 1);
      }
    }

    while (v3 != v4);
  }

  v28 = v6;
  v29 = v7;
  v27 = 0;
  v26 = 0;
  v11 = *(this + 52);
  v12 = *(this + 53) - v11;
  if ((v12 >> 3) >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (v12 >> 3) & 0x7FFFFFFF;
    do
    {
      v18 = (v11 + (v13 >> 30));
      v19 = *v18;
      v20 = v18[1];
      if (v19 | v20)
      {
        v26 = ++v14;
        if (v19)
        {
          v21 = v20 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          HIDWORD(v27) = ++v16;
        }

        else if (v19 == 1 || v20 == 1)
        {
          LODWORD(v27) = ++v15;
        }
      }

      v13 += 0x200000000;
      --v17;
    }

    while (v17);
  }

  v23 = *(this + 184);
  if (*v23)
  {
    *&v36 = "[SAT presolve] [";
    *(&v36 + 1) = 16;
    *&v34 = v35;
    *(&v34 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v35, a2, a3);
    *&v33 = "s]";
    *(&v33 + 1) = 2;
    *&v32 = " clauses:";
    *(&v32 + 1) = 9;
    *&v30 = v31;
    *(&v30 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(v5, v31, v24) - v31;
    absl::lts_20240722::StrCat<char [11],int,char [7],int,char [16],int,char [20],int,char [20],int>(&__p, " literals:", &v36, &v34, &v33, &v32, &v30, &v29, " vars:", &v26, " one_side_vars:", &v27 + 1, " simple_definition:", &v27, " singleton_clauses:", &v28);
    operations_research::SolverLogger::LogInfo(v23, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 942, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23CCF2EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatPresolver::InitializePriorityQueue(operations_research::sat::SatPresolver *this)
{
  v2 = *(this + 53) - *(this + 52);
  v3 = (v2 >> 3);
  v4 = (*(this + 1) - *this) >> 4;
  if (v3 <= v4)
  {
    if (v3 < v4)
    {
      *(this + 1) = *this + 16 * v3;
    }
  }

  else
  {
    std::vector<operations_research::sat::SatPresolver::PQElement>::__append(this, v3 - v4);
  }

  if ((v2 >> 3) >= 1)
  {
    v5 = 0;
    v6 = (v2 >> 3) & 0x7FFFFFFF;
    do
    {
      v8 = *this + 16 * v5;
      *(v8 + 4) = v5;
      v9 = (*(this + 52) + (v5 << 33 >> 30));
      *(v8 + 8) = (v9[1] + *v9);
      v16 = v8;
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](this + 32, &v16);
      v10 = *(this + 4);
      v11 = ((*(this + 5) - v10) >> 3) - 1;
      v12 = *(v10 + 8 * v11);
      if (v11 < 1)
      {
        v7 = v11;
      }

      else
      {
        v13 = *(v12 + 8);
        while (1)
        {
          v14 = v11 - 1;
          v15 = *(v10 + 8 * ((v11 - 1) >> 1));
          v7 = v11;
          if (*(v15 + 8) <= v13)
          {
            break;
          }

          *(v10 + 8 * v11) = v15;
          *v15 = v11;
          v11 = v14 >> 1;
          if (v14 <= 1)
          {
            v7 = v14 >> 1;
            v11 = v14 >> 1;
            break;
          }
        }
      }

      *(v10 + 8 * v7) = v12;
      *v12 = v11;
      ++v5;
    }

    while (v5 != v6);
  }
}

uint64_t operations_research::sat::SatPresolver::CrossProduct(uint64_t a1, int a2)
{
  v2 = *(a1 + 416);
  v3 = *(v2 + 4 * a2);
  v4 = a2 ^ 1;
  v5 = *(v2 + 4 * (a2 ^ 1));
  if (!(v3 | v5))
  {
    return 0;
  }

  v8 = v3 < 2 || v5 < 2;
  if (!v8 && v5 * v3 > *(a1 + 976))
  {
    return 0;
  }

  v9 = *(a1 + 980);
  v10 = *(a1 + 392);
  v11 = (v10 + 24 * a2);
  v12 = *v11;
  v13 = v11[1];
  if (v12 == v13)
  {
    v15 = 0;
    goto LABEL_22;
  }

  v14 = *(a1 + 328);
  if (v13 - 1 == v12)
  {
    v15 = 0;
    v16 = v12;
    do
    {
LABEL_19:
      v31 = *v16++;
      v32 = v9 + ((*(v14 + 24 * v31 + 8) - *(v14 + 24 * v31)) >> 2);
      if (*(v14 + 24 * v31 + 8) == *(v14 + 24 * v31))
      {
        v32 = 0;
      }

      v15 += v32;
    }

    while (v16 != v13);
    goto LABEL_22;
  }

  v17 = 0;
  v18 = 0;
  v19 = (((v13 - 1) - v12) >> 2) + 1;
  v16 = &v12[v19 & 0x7FFFFFFFFFFFFFFELL];
  v20 = v12 + 1;
  v21 = v19 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v22 = (v14 + 24 * *(v20 - 1));
    v23 = (v14 + 24 * *v20);
    v25 = *v23;
    v24 = v23[1];
    v27 = v22[1] - *v22;
    v26 = v27 == 0;
    v28 = v9 + (v27 >> 2);
    if (v26)
    {
      v28 = 0;
    }

    v29 = v24 - v25;
    v26 = v29 == 0;
    v30 = v9 + (v29 >> 2);
    if (v26)
    {
      v30 = 0;
    }

    v17 += v28;
    v18 += v30;
    v20 += 2;
    v21 -= 2;
  }

  while (v21);
  v15 = v18 + v17;
  if (v19 != (v19 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_19;
  }

LABEL_22:
  v33 = (v10 + 24 * v4);
  v34 = *v33;
  v35 = v33[1];
  if (v34 != v35)
  {
    v36 = *(a1 + 328);
    if (v35 - 1 == v34)
    {
      v37 = v34;
    }

    else
    {
      v38 = 0;
      v39 = (((v35 - 1) - v34) >> 2) + 1;
      v37 = &v34[v39 & 0x7FFFFFFFFFFFFFFELL];
      v40 = v34 + 1;
      v41 = v39 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v42 = (v36 + 24 * *(v40 - 1));
        v43 = (v36 + 24 * *v40);
        v45 = *v43;
        v44 = v43[1];
        v46 = v42[1] - *v42;
        v26 = v46 == 0;
        v47 = v9 + (v46 >> 2);
        if (v26)
        {
          v47 = 0;
        }

        v48 = v44 - v45;
        v26 = v48 == 0;
        v49 = v9 + (v48 >> 2);
        if (v26)
        {
          v49 = 0;
        }

        v15 += v47;
        v38 += v49;
        v40 += 2;
        v41 -= 2;
      }

      while (v41);
      v15 += v38;
      if (v39 == (v39 & 0x7FFFFFFFFFFFFFFELL))
      {
        goto LABEL_35;
      }
    }

    do
    {
      v50 = *v37++;
      v51 = v9 + ((*(v36 + 24 * v50 + 8) - *(v36 + 24 * v50)) >> 2);
      if (*(v36 + 24 * v50 + 8) == *(v36 + 24 * v50))
      {
        v51 = 0;
      }

      v15 += v51;
    }

    while (v37 != v35);
  }

LABEL_35:
  if (v3 >= v5)
  {
    v52 = a2;
  }

  else
  {
    v52 = v4;
  }

  v53 = v52;
  v54 = (v10 + 24 * v52);
  v55 = *v54;
  v56 = v54[1];
  if (*v54 == v56)
  {
    goto LABEL_64;
  }

  v57 = 0;
  while (2)
  {
    v58 = *v55;
    v59 = *(a1 + 328);
    v60 = (v59 + 24 * *v55);
    v61 = *v60;
    v62 = v60[1];
    if (v61 == v62)
    {
      goto LABEL_40;
    }

    v63 = *(a1 + 392) + 24 * (v52 ^ 1);
    v64 = *v63;
    v65 = *(v63 + 8);
    if (v64 == v65)
    {
      goto LABEL_61;
    }

    v66 = 1;
    while (2)
    {
      v67 = (v59 + 24 * *v64);
      v68 = *v67;
      v69 = v67[1];
      if (*v67 == v69)
      {
        goto LABEL_44;
      }

      v70 = ((v69 - v68) >> 2) + ((v62 - v61) >> 2) - 2;
      v71 = v61;
      while (v68 != v69)
      {
        v72 = *v68;
        v73 = *v71;
        if (*v71 == *v68)
        {
          --v70;
LABEL_56:
          ++v71;
          v68 += 4;
          if (v71 == v62)
          {
            break;
          }
        }

        else
        {
          if ((v73 ^ v72) == 1)
          {
            if (v73 != v52)
            {
              goto LABEL_44;
            }

            goto LABEL_56;
          }

          if (v73 < v72)
          {
            ++v71;
          }

          else
          {
            v68 += 4;
          }

          if (v71 == v62)
          {
            break;
          }
        }
      }

      if ((v70 & 0x80000000) == 0)
      {
        v66 = 0;
        result = 0;
        v57 += v9 + v70;
        if (v57 > v15)
        {
          return result;
        }
      }

LABEL_44:
      if (++v64 != v65)
      {
        continue;
      }

      break;
    }

    if (v66)
    {
LABEL_61:
      if (*(a1 + 1048) == 1)
      {
        operations_research::sat::SatPostsolver::Add(*(a1 + 440), v52, v61, v62 - v61);
        operations_research::sat::SatPresolver::Remove(a1, v58);
      }
    }

LABEL_40:
    if (++v55 != v56)
    {
      continue;
    }

    break;
  }

  v10 = *(a1 + 392);
  v53 = v52;
LABEL_64:
  __p = 0;
  v104 = 0;
  v105 = 0;
  v74 = (v10 + 24 * v53);
  v75 = *v74;
  v76 = v74[1];
  if (*v74 != v76)
  {
    do
    {
      v77 = *v75;
      v78 = (*(a1 + 328) + 24 * *v75);
      if (*v78 != v78[1])
      {
        v79 = *(a1 + 392) + 24 * (v52 ^ 1);
        v80 = *v79;
        v81 = *(v79 + 8);
        while (v80 != v81)
        {
          v82 = *(a1 + 328);
          v83 = v82 + 24 * *v80;
          if (*v83 != *(v83 + 8))
          {
            if (operations_research::sat::ComputeResolvant(v52, (v82 + 24 * v77), v83, &__p))
            {
              operations_research::sat::SatPresolver::AddClauseInternal(a1, &__p);
            }
          }

          ++v80;
        }
      }

      ++v75;
    }

    while (v75 != v76);
    v10 = *(a1 + 392);
    v84 = (v10 + 24 * v53);
    v75 = *v84;
    v76 = v84[1];
  }

  if (v75 != v76)
  {
    do
    {
      v85 = *v75;
      v86 = *(a1 + 328) + 24 * *v75;
      v87 = *v86;
      v88 = *(v86 + 8);
      if (v87 != v88)
      {
        operations_research::sat::SatPostsolver::Add(*(a1 + 440), v52, v87, v88 - v87);
        operations_research::sat::SatPresolver::Remove(a1, v85);
      }

      ++v75;
    }

    while (v75 != v76);
    v10 = *(a1 + 392);
    v75 = *(v10 + 24 * v53);
  }

  v89 = v52 << 32;
  v90 = (v10 + 24 * v53);
  *v90 = 0;
  v90[1] = 0;
  v90[2] = 0;
  if (v75)
  {
    operator delete(v75);
  }

  *(*(a1 + 416) + (v89 >> 30)) = 0;
  v91 = v53 ^ 1u;
  v92 = v91;
  v93 = *(a1 + 392);
  v94 = (v93 + 24 * v91);
  v95 = *v94;
  v96 = v94[1];
  if (*v94 != v96)
  {
    do
    {
      v97 = *v95;
      v98 = *(a1 + 328) + 24 * *v95;
      v99 = *v98;
      v100 = *(v98 + 8);
      if (v99 != v100)
      {
        operations_research::sat::SatPostsolver::Add(*(a1 + 440), v53 ^ 1, v99, v100 - v99);
        operations_research::sat::SatPresolver::Remove(a1, v97);
      }

      ++v95;
    }

    while (v95 != v96);
    v93 = *(a1 + 392);
    v95 = *(v93 + 24 * v91);
  }

  v101 = v91 << 32;
  v102 = (v93 + 24 * v92);
  *v102 = 0;
  v102[1] = 0;
  v102[2] = 0;
  if (v95)
  {
    operator delete(v95);
  }

  *(*(a1 + 416) + (v101 >> 30)) = 0;
  if (__p)
  {
    v104 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_23CCF35BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatPresolver::InitializeBvaPriorityQueue(operations_research::sat::SatPresolver *this)
{
  v2 = this + 112;
  v3 = (*(this + 53) - *(this + 52)) >> 2;
  *(this + 15) = *(this + 14);
  v15 = 0xFFFFFFFFFFFFFFFFLL;
  std::deque<operations_research::sat::SatPresolver::BvaPqElement>::assign(this + 7, (v3 & 0xFFFFFFFE), &v15);
  if ((v3 & 0xFFFFFFFE) >= 1)
  {
    v4 = 0;
    v5 = v3 & 0xFFFFFFFE;
    do
    {
      v7 = *(*(this + 8) + (((*(this + 11) + v4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 88) + v4);
      *(v7 + 4) = v4;
      v8 = *(*(this + 52) + 4 * v4);
      *(v7 + 8) = v8;
      if (v8 >= 3)
      {
        *&v15 = v7;
        std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v2, &v15);
        v9 = *(this + 14);
        v10 = ((*(this + 15) - v9) >> 3) - 1;
        v11 = *(v9 + 8 * v10);
        if (v10 < 1)
        {
          v6 = v10;
        }

        else
        {
          v12 = *(v11 + 8);
          while (1)
          {
            v13 = v10 - 1;
            v14 = *(v9 + 8 * ((v10 - 1) >> 1));
            v6 = v10;
            if (*(v14 + 8) >= v12)
            {
              break;
            }

            *(v9 + 8 * v10) = v14;
            *v14 = v10;
            v10 = v13 >> 1;
            if (v13 <= 1)
            {
              v6 = v13 >> 1;
              v10 = v13 >> 1;
              break;
            }
          }
        }

        *(v9 + 8 * v6) = v11;
        *v11 = v10;
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void operations_research::sat::SatPresolver::SimpleBva(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v298 = *MEMORY[0x277D85DE8];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 400) - *(a1 + 392)) >> 3);
  __x[0] = 0;
  v6 = *(a1 + 184);
  v7 = *(a1 + 192);
  v5 = (a1 + 184);
  v8 = (v7 - v6) >> 2;
  v275 = v5;
  v292 = a2;
  if (v4 <= v8)
  {
    if (v4 < v8)
    {
      *(a1 + 192) = v6 + 4 * v4;
    }
  }

  else
  {
    std::vector<int>::__append(v5, v4 - v8, __x);
  }

  v294 = v2;
  *v295 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *&v295[8] = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *&v295[16] = 0;
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::insert_hint_unique<operations_research::sat::Literal,operations_research::sat::Literal&>(v295, absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node, 0, &v294, __x, &v294);
  v9 = (a1 + 136);
  if ((a1 + 136) != v295)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear((a1 + 136));
    v10 = *(a1 + 152);
    v11 = *&v295[8];
    v12 = *(a1 + 136);
    *(a1 + 136) = *v295;
    *v295 = v12;
    *(a1 + 144) = v11;
    *&v295[16] = v10;
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v295);
  v14 = *(a1 + 392) + 24 * v2;
  v273 = (a1 + 160);
  if (a1 + 160 != v14)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v273, *v14, *(v14 + 8), (*(v14 + 8) - *v14) >> 2);
    v9 = (a1 + 136);
  }

  v272 = 0;
  v15 = 0;
  v270 = v2;
  v271 = v2 << 32;
  v288 = v2;
  v16 = *(a1 + 208);
  v17 = *(a1 + 168);
  while (1)
  {
    *v295 = -1;
    *(a1 + 216) = v16;
    v18 = *(a1 + 160);
    if (v18 == v17)
    {
      break;
    }

    v19 = 0;
    v280 = v15;
    v277 = v17;
    do
    {
      v20 = (*(a1 + 328) + 24 * *v18);
      v21 = v20[1];
      v22 = *v20;
      if (*v20 != v21)
      {
        v23 = 0x7FFFFFFF;
        v24 = -1;
        do
        {
          v25 = *v22;
          if (*v22 != v2 && *(*(a1 + 416) + 4 * v25) < v23)
          {
            v23 = *(*(a1 + 416) + 4 * v25);
            v24 = *v22;
          }

          ++v22;
        }

        while (v22 != v21);
        if (v24 != -1)
        {
          v26 = *(a1 + 392) + 24 * v24;
          v27 = *v26;
          v28 = *(v26 + 8);
          if (*v26 != v28)
          {
            v290 = *v18 << 32;
            v282 = v18;
            do
            {
              v29 = *v20;
              v30 = v20[1];
              v31 = *(*(a1 + 328) + 24 * *v27);
              v32 = *(*(a1 + 328) + 24 * *v27 + 8);
              if (v30 - *v20 == v32 - v31)
              {
                v33 = -1;
                while (v29 != v30)
                {
                  if (v31 == v32)
                  {
                    if (*v29 != v2)
                    {
                      goto LABEL_24;
                    }

                    break;
                  }

                  v34 = *v31;
                  v35 = *v29;
                  if (*v29 == *v31)
                  {
                    ++v29;
                    ++v31;
                  }

                  else if (v35 >= v34)
                  {
                    if (v33 != -1)
                    {
                      goto LABEL_24;
                    }

                    ++v31;
                    v33 = v34;
                  }

                  else
                  {
                    if (v35 != v2)
                    {
                      goto LABEL_24;
                    }

                    ++v29;
                  }
                }

                if (v31 != v32)
                {
                  if (v33 != -1)
                  {
                    goto LABEL_24;
                  }

                  v33 = *v31;
                }

                if (v33 != -1)
                {
                  v36 = *v9;
                  v37 = *(*v9 + 10);
                  if (*(*v9 + 10))
                  {
                    goto LABEL_44;
                  }

                  while (1)
                  {
                    do
                    {
                      if (*(v36 + 11))
                      {
                        while (1)
                        {
                          v41 = *(v36 + 10);
                          if (v37 != v41)
                          {
                            break;
                          }

                          LODWORD(v37) = *(v36 + 8);
                          v36 = *v36;
                          if (*(v36 + 11))
                          {
                            v42 = *(a1 + 144);
                            v43 = *(v42 + 10);
                            v44 = v43;
                            v45 = v43;
                            goto LABEL_69;
                          }
                        }

                        v42 = *(a1 + 144);
                        v44 = *(v42 + 10);
                        v46 = v36 == v42 && v37 == v44;
                        v45 = *(v42 + 10);
                        if (v46)
                        {
                          goto LABEL_69;
                        }

                        if (v33 < *(v36 + 4 * v37 + 12))
                        {
                          v44 = v37;
                          goto LABEL_68;
                        }

                        if (*(v36 + 11))
                        {
                          v44 = v37 + 1;
                          if (v37 + 1 == v41)
                          {
                            v47 = v36;
                            while (1)
                            {
                              v42 = *v47;
                              if (*(*v47 + 11))
                              {
                                break;
                              }

                              v48 = v47[8];
                              v47 = *v47;
                              if (v48 != *(v42 + 10))
                              {
                                v44 = v48;
                                v13 = v13 & 0xFFFFFFFF00000000 | v37;
                                if (v42 != v36)
                                {
                                  goto LABEL_78;
                                }

                                goto LABEL_65;
                              }
                            }
                          }

LABEL_68:
                          v42 = v36;
                          v45 = v37;
LABEL_69:
                          v13 = v13 & 0xFFFFFFFF00000000 | v45;
                          LODWORD(v37) = v45;
                          v36 = v42;
                          if (*(v42 + 11))
                          {
LABEL_66:
                            if (v44 != v37)
                            {
                              goto LABEL_24;
                            }

LABEL_97:
                            if ((v288 ^ v33) == 1 && dword_27E25D388 >= 1)
                            {
                              v69 = v19;
                              v70 = v13;
                              IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SatPresolver::SimpleBva(operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>)::$_0::operator() const(void)::site, dword_27E25D388);
                              v17 = v277;
                              v9 = (a1 + 136);
                              v15 = v280;
                              v13 = v70;
                              v18 = v282;
                              v19 = v69;
                              if (IsEnabled1)
                              {
                                v72 = absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 436);
                                v73 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v72, 1);
                                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v73, "self-subsumbtion", 0x10uLL);
                                absl::lts_20240722::log_internal::LogMessage::~LogMessage(__x);
                                v17 = v277;
                                v9 = (a1 + 136);
                                v15 = v280;
                                v13 = v70;
                                v18 = v282;
                                v19 = v69;
                              }
                            }

                            v58 = *(a1 + 216);
                            v59 = *(a1 + 224);
                            if (v58 >= v59)
                            {
                              v284 = v19;
                              v286 = v13;
                              v61 = *(a1 + 208);
                              v62 = (v58 - v61) >> 3;
                              v63 = v62 + 1;
                              if ((v62 + 1) >> 61)
                              {
                                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                              }

                              v64 = v59 - v61;
                              if (v64 >> 2 > v63)
                              {
                                v63 = v64 >> 2;
                              }

                              if (v64 >= 0x7FFFFFFFFFFFFFF8)
                              {
                                v65 = 0x1FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v65 = v63;
                              }

                              if (v65)
                              {
                                if (!(v65 >> 61))
                                {
                                  operator new();
                                }

                                std::__throw_bad_array_new_length[abi:ne200100]();
                              }

                              *(8 * v62) = v290 | v33;
                              memcpy(0, v61, v58 - v61);
                              v16 = (8 * v62 + 8);
                              *(a1 + 208) = 0;
                              *(a1 + 216) = v16;
                              *(a1 + 224) = 0;
                              if (v61)
                              {
                                operator delete(v61);
                                v16 = (8 * v62 + 8);
                              }

                              v17 = v277;
                              v9 = (a1 + 136);
                              v15 = v280;
                              v13 = v286;
                              v18 = v282;
                              v19 = v284;
                              v60 = v33;
                            }

                            else
                            {
                              v60 = v33;
                              *v58 = v290 | v33;
                              v16 = (v58 + 1);
                            }

                            LODWORD(v2) = v292;
                            *(a1 + 216) = v16;
                            v66 = *(a1 + 184);
                            v67 = 4 * v60;
                            v68 = (*(v66 + v67) + 1);
                            *(v66 + v67) = v68;
                            if (v68 > v19)
                            {
                              *v295 = v33;
                              v19 = v68;
                            }

                            goto LABEL_24;
                          }

                          goto LABEL_70;
                        }

                        v50 = v36 + 8 * (v37 + 1) + 256;
                        do
                        {
                          v42 = *v50;
                          v51 = *(*v50 + 11);
                          v50 = *v50 + 256;
                        }

                        while (!v51);
                        v44 = 0;
                        v13 = v13 & 0xFFFFFFFF00000000 | v37;
                        if (v42 != v36)
                        {
LABEL_78:
                          if (*(v36 + 11))
                          {
                            goto LABEL_79;
                          }

                          goto LABEL_72;
                        }

LABEL_65:
                        if (*(v42 + 11))
                        {
                          goto LABEL_66;
                        }

LABEL_70:
                        if (v44 == v37)
                        {
                          goto LABEL_97;
                        }

                        if (*(v36 + 11))
                        {
LABEL_79:
                          v49 = -v13;
                          goto LABEL_80;
                        }

LABEL_72:
                        v36 += 8 * (v13 + 1);
                        do
                        {
                          v36 = *(v36 + 256);
                        }

                        while (!*(v36 + 11));
                        v49 = 1;
LABEL_80:
                        v52 = *(v36 + 8);
                        v53 = *v36;
                        v54 = v44;
                        while (1)
                        {
                          v55 = *(v53 + 8 * v52 + 256);
                          if (!*(v55 + 11))
                          {
                            do
                            {
                              v55 = *(v55 + 256);
                            }

                            while (!*(v55 + 11));
                            v52 = *(v55 + 8);
                            v53 = *v55;
                          }

                          if (v55 == v42)
                          {
                            break;
                          }

                          v56 = *(v55 + 10);
                          if (v53 == v42 && v52 == v54)
                          {
                            goto LABEL_95;
                          }

                          if (v52 >= *(v53 + 10))
                          {
                            while (1)
                            {
                              v52 = *(v53 + 8);
                              v53 = *v53;
                              if (v53 == v42 && v52 == v54)
                              {
                                break;
                              }

                              if (v52 < *(v53 + 10))
                              {
                                goto LABEL_81;
                              }
                            }

LABEL_95:
                            v54 = v56;
                            break;
                          }

LABEL_81:
                          v49 += v56 + 1;
                          ++v52;
                        }

                        if (!(v54 + v49))
                        {
                          goto LABEL_97;
                        }

                        goto LABEL_24;
                      }

                      v38 = v36 + 8 * v37 + 256;
                      v36 = *v38;
                      v37 = *(*v38 + 10);
                    }

                    while (!*(*v38 + 10));
LABEL_44:
                    v39 = 0;
                    do
                    {
                      v40 = (v37 + v39) >> 1;
                      if (*(v36 + 12 + 4 * v40) < v33)
                      {
                        v39 = v40 + 1;
                      }

                      else
                      {
                        v37 = (v37 + v39) >> 1;
                      }
                    }

                    while (v39 != v37);
                  }
                }
              }

LABEL_24:
              ++v27;
            }

            while (v27 != v28);
          }
        }
      }

      ++v18;
    }

    while (v18 != v17);
    if (*v295 == -1)
    {
      break;
    }

    v74 = *(a1 + 152);
    v75 = ~v74 + v19 * v74;
    if (v75 <= v272)
    {
      break;
    }

    v76 = v13;
    if (!v74)
    {
      operator new();
    }

    v77 = *v9;
    v78 = *(*v9 + 10);
    if (*(*v9 + 10))
    {
      goto LABEL_124;
    }

    while (2)
    {
      if (!v77[11])
      {
        v77 = *&v77[8 * v78 + 256];
        v78 = v77[10];
        if (!v77[10])
        {
          continue;
        }

LABEL_124:
        v79 = 0;
        do
        {
          v80 = (v78 + v79) >> 1;
          if (*&v77[4 * v80 + 12] < *v295)
          {
            v79 = v80 + 1;
          }

          else
          {
            v78 = (v78 + v79) >> 1;
          }
        }

        while (v79 != v78);
        continue;
      }

      break;
    }

    v81 = v78;
    v82 = v77;
    while (v78 == v82[10])
    {
      LODWORD(v78) = v82[8];
      v82 = *v82;
      if (v82[11])
      {
        goto LABEL_135;
      }
    }

    if (*v295 >= *&v82[4 * v78 + 12])
    {
      goto LABEL_136;
    }

LABEL_135:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::internal_emplace<operations_research::sat::Literal&>(v9, v77, v81, v295);
    v9 = (a1 + 136);
    v15 = v280;
    v13 = v76;
LABEL_136:
    v272 = v75;
    v17 = *(a1 + 160);
    *(a1 + 168) = v17;
    v16 = *(a1 + 208);
    v83 = *(a1 + 216);
    if (v16 == v83)
    {
      LODWORD(v2) = v292;
      *(a1 + 216) = v16;
      if (++v15 == 100)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v84 = v275;
      LODWORD(v2) = v292;
      do
      {
        v84->__begin_[*v16] = 0;
        if (*v16 == *v295)
        {
          v85 = *(a1 + 176);
          if (v17 < v85)
          {
            *v17 = v16[1];
            v17 += 4;
          }

          else
          {
            v86 = *v273;
            v87 = v17 - *v273;
            v88 = v87 >> 2;
            v89 = (v87 >> 2) + 1;
            if (v89 >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v90 = v85 - v86;
            if (v90 >> 1 > v89)
            {
              v89 = v90 >> 1;
            }

            if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v91 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v91 = v89;
            }

            if (v91)
            {
              if (!(v91 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v92 = v16;
            *(4 * v88) = v16[1];
            v17 = (4 * v88 + 4);
            memcpy(0, v86, v87);
            *(a1 + 160) = 0;
            *(a1 + 168) = v17;
            *(a1 + 176) = 0;
            if (v86)
            {
              operator delete(v86);
            }

            v84 = v275;
            v9 = (a1 + 136);
            v15 = v280;
            v13 = v76;
            v16 = v92;
            LODWORD(v2) = v292;
          }

          *(a1 + 168) = v17;
        }

        v16 += 2;
      }

      while (v16 != v83);
      v16 = *(a1 + 208);
      *(a1 + 216) = v16;
      if (++v15 == 100)
      {
LABEL_156:
        *(a1 + 216) = v16;
        if (v272 <= *(a1 + 1040))
        {
          return;
        }

        goto LABEL_162;
      }
    }
  }

  v93 = *(a1 + 208);
  if (v93 != v16)
  {
    begin = v275->__begin_;
    v95 = *(a1 + 208);
    do
    {
      v96 = *v95;
      v95 += 2;
      begin[v96] = 0;
    }

    while (v95 != v16);
  }

  *(a1 + 216) = v93;
  if (v272 <= *(a1 + 1040))
  {
    return;
  }

LABEL_162:
  v98 = *(a1 + 392);
  v97 = *(a1 + 400);
  v99 = 0xAAAAAAAAAAAAAAABLL * ((v97 - v98) >> 3);
  v274 = 0xAAAAAAAB00000000 * ((v97 - v98) >> 3);
  v100 = (v274 + 0x200000000) >> 32;
  if (v100 <= v99)
  {
    if (v100 < v99)
    {
      v101 = v98 + 24 * v100;
      if (v97 != v101)
      {
        v102 = *(a1 + 400);
        do
        {
          v104 = *(v102 - 24);
          v102 -= 24;
          v103 = v104;
          if (v104)
          {
            *(v97 - 16) = v103;
            operator delete(v103);
          }

          v97 = v102;
        }

        while (v102 != v101);
      }

      *(a1 + 400) = v101;
    }
  }

  else
  {
    std::vector<std::vector<int>>::__append(a1 + 392, v100 - v99);
  }

  v105 = *(a1 + 416);
  v106 = (*(a1 + 424) - v105) >> 2;
  if (v100 <= v106)
  {
    if (v100 < v106)
    {
      *(a1 + 424) = v105 + 4 * v100;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 416), v100 - v106);
  }

  std::deque<operations_research::sat::SatPresolver::BvaPqElement>::resize((a1 + 56), v100);
  v107 = *(a1 + 88);
  v108 = *(a1 + 64);
  *(*(v108 + (((v107 + (v274 >> 32)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v107 + BYTE4(v274)) + 4) = v99;
  v269 = v99 + 1;
  v276 = v99 + 1;
  *(*(v108 + (((v107 + v269) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v107 + v99 + 1) + 4) = v99 + 1;
  v109 = *(a1 + 1456);
  if (v109)
  {
    operations_research::sat::DratProofHandler::AddOneVariable(v109);
  }

  v110 = *(a1 + 144);
  v111 = **(a1 + 136);
  v112 = v110[10];
  if (v111 != v110 || v110[10])
  {
    v113 = 0;
    do
    {
      __x[0] = *&v111[4 * v113 + 12];
      __x[1] = v99;
      std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((a1 + 232), __x, v297, 2uLL);
      operations_research::sat::SatPresolver::AddClauseInternal(a1, (a1 + 232));
      if (v111[11])
      {
        if (++v113 == v111[10])
        {
          v114 = v111;
          while (1)
          {
            v115 = *v114;
            if (*(*v114 + 11))
            {
              break;
            }

            v116 = v114[8];
            v114 = *v114;
            if (v116 != v115[10])
            {
              v111 = v115;
              v113 = v116;
              break;
            }
          }
        }
      }

      else
      {
        v117 = &v111[8 * (v113 + 1) + 256];
        do
        {
          v111 = *v117;
          v118 = *(*v117 + 11);
          v117 = *v117 + 256;
        }

        while (!v118);
        v113 = 0;
      }
    }

    while (v111 != v110 || v113 != v112);
  }

  v119 = *(a1 + 160);
  v120 = *(a1 + 168);
  if (v119 != v120)
  {
    do
    {
      v121 = v119;
      v122 = *(a1 + 328) + 24 * *v119;
      if (a1 + 232 != v122)
      {
        std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((a1 + 232), *v122, *(v122 + 8), (*(v122 + 8) - *v122) >> 2);
      }

      v123 = *(a1 + 232);
      v124 = *(a1 + 240);
      if (v123 != v124)
      {
        v125 = *(a1 + 232);
        while (*v125 != v292)
        {
          if (++v125 == v124)
          {
            goto LABEL_200;
          }
        }

        *v125 = v276;
      }

LABEL_200:
      v126 = 126 - 2 * __clz((v124 - v123) >> 2);
      if (v124 == v123)
      {
        v127 = 0;
      }

      else
      {
        v127 = v126;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v123, v124, __x, v127, 1);
      operations_research::sat::SatPresolver::AddClauseInternal(a1, (a1 + 232));
      v119 = v121 + 1;
    }

    while (v121 + 1 != v120);
    v119 = *(a1 + 160);
    v120 = *(a1 + 168);
  }

  v128 = v292;
  if (v119 == v120)
  {
    goto LABEL_359;
  }

  v278 = v120;
  while (2)
  {
    v281 = *v119;
    v283 = (*(a1 + 328) + 24 * *v119);
    v129 = *v283;
    v130 = v283[1];
    v279 = v119;
    if (*v283 == v130)
    {
      v134 = -1;
    }

    else
    {
      v131 = 0x7FFFFFFF;
      v132 = -1;
      do
      {
        v133 = *v129;
        if (*v129 != v128 && *(*(a1 + 416) + 4 * v133) < v131)
        {
          v131 = *(*(a1 + 416) + 4 * v133);
          v132 = *v129;
        }

        ++v129;
      }

      while (v129 != v130);
      v134 = v132;
    }

    v285 = v134;
    v135 = *(a1 + 144);
    v136 = **(a1 + 136);
    v293 = v135;
    v287 = v135[10];
    if (v136 == v135 && v135[10] == 0)
    {
      goto LABEL_358;
    }

    v138 = 0;
    while (2)
    {
      v139 = *&v136[4 * v138 + 12];
      if (v139 == v128)
      {
        goto LABEL_347;
      }

      v140 = *(a1 + 392) + 24 * v285;
      v141 = *v140;
      v142 = *(v140 + 8);
      if (*v140 == v142)
      {
        goto LABEL_347;
      }

      v143 = v283[1];
      v144 = *(a1 + 328);
      while (2)
      {
        v146 = *v141;
        v147 = (v144 + 24 * v146);
        v148 = *v147;
        v149 = v147[1];
        if (v143 - *v283 != v149 - *v147)
        {
          goto LABEL_226;
        }

        v145 = -1;
        if (*v283 == v143)
        {
          v151 = v148;
          goto LABEL_241;
        }

        v150 = *v283;
        v151 = v148;
        while (v151 != v149)
        {
          v152 = *v151;
          v153 = *v150;
          if (*v150 == *v151)
          {
            ++v150;
            ++v151;
          }

          else if (v153 >= v152)
          {
            if (v145 != -1)
            {
              goto LABEL_224;
            }

            ++v151;
            v145 = v152;
          }

          else
          {
            if (v153 != v128)
            {
              goto LABEL_224;
            }

            ++v150;
          }

          if (v150 == v143)
          {
            goto LABEL_241;
          }
        }

        if (*v150 != v128)
        {
LABEL_224:
          v145 = -1;
          goto LABEL_225;
        }

LABEL_241:
        if (v151 == v149)
        {
          goto LABEL_225;
        }

        if (v145 != -1)
        {
          goto LABEL_224;
        }

        v145 = *v151;
LABEL_225:
        if (v145 != v139)
        {
LABEL_226:
          if (++v141 == v142)
          {
            goto LABEL_347;
          }

          continue;
        }

        break;
      }

      *(*(a1 + 352) + 8 * v146) = 0;
      v291 = v138;
      v289 = v146;
      if (v148 == v149)
      {
        v154 = *(a1 + 1456);
        if (!v154)
        {
          goto LABEL_345;
        }

LABEL_246:
        operations_research::sat::DratProofHandler::DeleteClause(v154, *(v144 + 24 * v146), (*(v144 + 24 * v146 + 8) - *(v144 + 24 * v146)) >> 2);
        v138 = v291;
        v128 = v292;
        v155 = *(a1 + 328) + 24 * v289;
        v156 = *v155;
        *(v155 + 8) = 0;
        *(v155 + 16) = 0;
        *v155 = 0;
        if (v156)
        {
          goto LABEL_346;
        }

        goto LABEL_347;
      }

      while (2)
      {
        v159 = *v148;
        v160 = *(a1 + 416);
        --*(v160 + 4 * *v148);
        if (*a1 == *(a1 + 8))
        {
LABEL_276:
          if (!*(a1 + 96))
          {
            goto LABEL_250;
          }

          goto LABEL_277;
        }

        v161 = (*a1 + 16 * (v159 >> 1));
        v162 = (*(v160 + 4 * (v159 | 1)) + *(v160 + 4 * (v159 & 0xFFFFFFFE)));
        v161[1] = v162;
        v163 = *v161;
        v164 = *(a1 + 40);
        if ((v163 & 0x80000000) != 0 || (v165 = *(a1 + 32), v166 = (v164 - v165) >> 3, v166 <= v163) || (v167 = *&v165[8 * v163], v167 != v161))
        {
          v168 = *(a1 + 48);
          if (v164 >= v168)
          {
            v170 = *(a1 + 32);
            v171 = v164 - v170;
            v172 = (v164 - v170) >> 3;
            v173 = v172 + 1;
            if ((v172 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v174 = v168 - v170;
            if (v174 >> 2 > v173)
            {
              v173 = v174 >> 2;
            }

            if (v174 >= 0x7FFFFFFFFFFFFFF8)
            {
              v175 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v175 = v173;
            }

            if (v175)
            {
              if (!(v175 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v176 = v159;
            v177 = (v164 - v170) >> 3;
            v178 = (8 * v172);
            v179 = (8 * v172 - 8 * v177);
            *v178 = v161;
            v169 = v178 + 1;
            memcpy(v179, v170, v171);
            *(a1 + 32) = v179;
            *(a1 + 40) = v169;
            *(a1 + 48) = 0;
            if (v170)
            {
              operator delete(v170);
            }

            v138 = v291;
            LODWORD(v146) = v289;
            v159 = v176;
            v128 = v292;
          }

          else
          {
            *v164 = v161;
            v169 = v164 + 8;
          }

          *(a1 + 40) = v169;
          v180 = *(a1 + 32);
          v181 = ((v169 - v180) >> 3) - 1;
          v182 = *(v180 + 8 * v181);
          if (v181 < 1)
          {
            v186 = v181;
          }

          else
          {
            v183 = *(v182 + 8);
            while (1)
            {
              v184 = v181 - 1;
              v185 = *(v180 + 8 * ((v181 - 1) >> 1));
              v186 = v181;
              if (*(v185 + 8) <= v183)
              {
                break;
              }

              *(v180 + 8 * v181) = v185;
              *v185 = v181;
              v181 = v184 >> 1;
              if (v184 <= 1)
              {
                v186 = v184 >> 1;
                v181 = v184 >> 1;
                break;
              }
            }
          }

          *(v180 + 8 * v186) = v182;
          *v182 = v181;
          goto LABEL_276;
        }

        if (*(*&v165[8 * ((v163 - 1) / 2)] + 8) > v162)
        {
          if (v163)
          {
            v201 = v167[1];
            while (1)
            {
              v202 = v163 - 1;
              v203 = (v163 - 1) >> 1;
              v204 = *&v165[8 * v203];
              if (*(v204 + 8) <= v201)
              {
                break;
              }

              *&v165[8 * v163] = v204;
              *v204 = v163;
              LODWORD(v163) = v202 >> 1;
              if (v202 < 2)
              {
                *&v165[8 * v203] = v167;
                *v167 = v203;
                if (*(a1 + 96))
                {
                  goto LABEL_277;
                }

                goto LABEL_250;
              }
            }

            *&v165[8 * v163] = v167;
            *v167 = v163;
            if (*(a1 + 96))
            {
              goto LABEL_277;
            }

            goto LABEL_250;
          }

          *v165 = v167;
          *v167 = 0;
          if (!*(a1 + 96))
          {
            goto LABEL_250;
          }

LABEL_277:
          v187 = *(a1 + 88);
          v188 = *(a1 + 64);
          v189 = (*(v188 + (((v187 + (v159 & 0xFFFFFFFE)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v187 + (v159 & 0xFE)));
          v190 = *(a1 + 416);
          v191 = *(v190 + 4 * (v159 & 0xFFFFFFFE));
          v189[1] = v191;
          v192 = *v189;
          if ((v192 & 0x80000000) == 0)
          {
            v193 = *(a1 + 112);
            v194 = (*(a1 + 120) - v193) >> 3;
            if (v194 > v192)
            {
              v195 = *(v193 + 8 * v192);
              if (v195 == v189)
              {
                if (*(*(v193 + 8 * ((v192 - 1) / 2)) + 8) >= v191)
                {
                  v213 = (2 * v192) | 1;
                  v214 = v213;
                  if (v194 > v213)
                  {
                    v215 = 2 * v192;
                    v216 = v195[1];
                    while (1)
                    {
                      v198 = v215 + 2;
                      if (v194 <= v215 + 2 || (v217 = *(v193 + 8 * v214), v218 = *(v193 + 8 * v198), v219 = *(v218 + 8), *(v217 + 8) >= v219))
                      {
                        v218 = *(v193 + 8 * v213);
                        v219 = *(v218 + 8);
                        v198 = v213;
                      }

                      if (v216 >= v219)
                      {
                        break;
                      }

                      *(v193 + 8 * v192) = v218;
                      *v218 = v192;
                      v215 = 2 * v198;
                      v213 = (2 * v198) | 1;
                      v214 = v213;
                      LODWORD(v192) = v198;
                      if (v194 <= v213)
                      {
                        goto LABEL_320;
                      }
                    }

                    v198 = v192;
LABEL_320:
                    v200 = v198;
LABEL_321:
                    *(v193 + 8 * v200) = v195;
                    LODWORD(v192) = v198;
                  }
                }

                else if (v192)
                {
                  v196 = v195[1];
                  while (1)
                  {
                    v197 = v192 - 1;
                    v198 = (v192 - 1) >> 1;
                    v199 = *(v193 + 8 * v198);
                    v200 = v192;
                    if (*(v199 + 8) >= v196)
                    {
                      break;
                    }

                    *(v193 + 8 * v192) = v199;
                    *v199 = v192;
                    LODWORD(v192) = v197 >> 1;
                    if (v197 < 2)
                    {
                      v200 = v197 >> 1;
                      goto LABEL_321;
                    }
                  }

                  v198 = v192;
                  goto LABEL_321;
                }

                *v195 = v192;
              }
            }
          }

          v220 = (*(v188 + (((v187 + (v159 | 1)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v187 + (v159 | 1)));
          v221 = *(v190 + 4 * (v159 | 1));
          v220[1] = v221;
          v222 = *v220;
          if ((v222 & 0x80000000) != 0)
          {
            goto LABEL_250;
          }

          v223 = *(a1 + 112);
          v224 = (*(a1 + 120) - v223) >> 3;
          if (v224 <= v222)
          {
            goto LABEL_250;
          }

          v225 = *(v223 + 8 * v222);
          if (v225 != v220)
          {
            goto LABEL_250;
          }

          if (*(*(v223 + 8 * ((v222 - 1) / 2)) + 8) >= v221)
          {
            v229 = (2 * v222) | 1;
            v230 = v229;
            if (v224 <= v229)
            {
              v157 = *v220;
              goto LABEL_341;
            }

            v231 = 2 * v222;
            v232 = v225[1];
            while (1)
            {
              v158 = v231 + 2;
              if (v224 <= v231 + 2 || (v233 = *(v223 + 8 * v230), v234 = *(v223 + 8 * v158), v235 = *(v234 + 8), *(v233 + 8) >= v235))
              {
                v234 = *(v223 + 8 * v229);
                v235 = *(v234 + 8);
                v158 = v229;
              }

              if (v232 >= v235)
              {
                break;
              }

              *(v223 + 8 * v222) = v234;
              *v234 = v222;
              v231 = 2 * v158;
              v229 = (2 * v158) | 1;
              v230 = v229;
              LODWORD(v222) = v158;
              if (v224 <= v229)
              {
                goto LABEL_343;
              }
            }

            v158 = v222;
LABEL_343:
            v157 = v158;
          }

          else if (v222)
          {
            v226 = v225[1];
            while (1)
            {
              v227 = v222 - 1;
              v158 = (v222 - 1) >> 1;
              v228 = *(v223 + 8 * v158);
              v157 = v222;
              if (*(v228 + 8) >= v226)
              {
                break;
              }

              *(v223 + 8 * v222) = v228;
              *v228 = v222;
              LODWORD(v222) = v227 >> 1;
              if (v227 < 2)
              {
                v157 = v227 >> 1;
                goto LABEL_249;
              }
            }

LABEL_341:
            v158 = v222;
          }

          else
          {
            v157 = 0;
            v158 = 0;
          }

LABEL_249:
          *(v223 + 8 * v157) = v225;
          *v225 = v158;
          goto LABEL_250;
        }

        v205 = (2 * v163) | 1;
        v206 = v205;
        if (v166 <= v205)
        {
          *&v165[8 * v163] = v167;
          *v167 = v163;
          if (!*(a1 + 96))
          {
            goto LABEL_250;
          }

          goto LABEL_277;
        }

        v207 = 2 * v163;
        v208 = v167[1];
        while (1)
        {
          v209 = v207 + 2;
          if (v166 <= v207 + 2 || (v210 = *&v165[8 * v206], v211 = *&v165[8 * v209], v212 = *(v211 + 8), *(v210 + 8) <= v212))
          {
            v211 = *&v165[8 * v205];
            v212 = *(v211 + 8);
            v209 = v205;
          }

          if (v208 <= v212)
          {
            break;
          }

          *&v165[8 * v163] = v211;
          *v211 = v163;
          v207 = 2 * v209;
          v205 = (2 * v209) | 1;
          v206 = v205;
          LODWORD(v163) = v209;
          if (v166 <= v205)
          {
            goto LABEL_317;
          }
        }

        v209 = v163;
LABEL_317:
        *&v165[8 * v209] = v167;
        *v167 = v209;
        if (*(a1 + 96))
        {
          goto LABEL_277;
        }

LABEL_250:
        if (++v148 != v149)
        {
          continue;
        }

        break;
      }

      v144 = *(a1 + 328);
      v154 = *(a1 + 1456);
      if (v154)
      {
        goto LABEL_246;
      }

LABEL_345:
      v236 = v144 + 24 * v146;
      v156 = *v236;
      *(v236 + 8) = 0;
      *(v236 + 16) = 0;
      *v236 = 0;
      if (v156)
      {
LABEL_346:
        operator delete(v156);
      }

LABEL_347:
      if (v136[11])
      {
        if (++v138 == v136[10])
        {
          v237 = v136;
          while (1)
          {
            v238 = *v237;
            if (*(*v237 + 11))
            {
              break;
            }

            v239 = v237[8];
            v237 = *v237;
            if (v239 != v238[10])
            {
              v138 = v239;
              v136 = v238;
              break;
            }
          }
        }
      }

      else
      {
        v240 = &v136[8 * (v138 + 1) + 256];
        do
        {
          v136 = *v240;
          v241 = *(*v240 + 11);
          v240 = *v240 + 256;
        }

        while (!v241);
        v138 = 0;
      }

      if (v136 != v293 || v138 != v287)
      {
        continue;
      }

      break;
    }

LABEL_358:
    operations_research::sat::SatPresolver::Remove(a1, v281);
    v119 = v279 + 1;
    v128 = v292;
    if (v279 + 1 != v278)
    {
      continue;
    }

    break;
  }

LABEL_359:
  if (!*(a1 + 96))
  {
    return;
  }

  v242 = *(*(a1 + 64) + (((*(a1 + 88) + (v274 >> 32)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 88) + BYTE4(v274));
  v243 = *(*(a1 + 416) + (v274 >> 30));
  *(v242 + 8) = v243;
  if (v243 < 3)
  {
LABEL_369:
    v251 = *(*(a1 + 64) + (((*(a1 + 88) + v269) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 88) + v269);
    v252 = *(*(a1 + 416) + 4 * v276);
    *(v251 + 8) = v252;
    if (v252 >= 3)
    {
      *__x = v251;
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 112, __x);
      v253 = *(a1 + 112);
      v254 = ((*(a1 + 120) - v253) >> 3) - 1;
      v255 = *(v253 + 8 * v254);
      if (v254 < 1)
      {
        *(v253 + 8 * v254) = v255;
        *v255 = v254;
        if (!*(a1 + 96))
        {
          return;
        }
      }

      else
      {
        v256 = *(v255 + 8);
        while (1)
        {
          v257 = v254 - 1;
          v258 = *(v253 + 8 * ((v254 - 1) >> 1));
          v259 = v254;
          if (*(v258 + 8) >= v256)
          {
            break;
          }

          *(v253 + 8 * v254) = v258;
          *v258 = v254;
          v254 = v257 >> 1;
          if (v257 <= 1)
          {
            v259 = v257 >> 1;
            v254 = v257 >> 1;
            break;
          }
        }

        *(v253 + 8 * v259) = v255;
        *v255 = v254;
        if (!*(a1 + 96))
        {
          return;
        }
      }
    }

    v260 = *(*(a1 + 64) + (((*(a1 + 88) + v270) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 88) + v270);
    v261 = *(*(a1 + 416) + (v271 >> 30));
    *(v260 + 8) = v261;
    if (v261 >= 3)
    {
      *__x = v260;
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 112, __x);
      v262 = *(a1 + 112);
      v263 = ((*(a1 + 120) - v262) >> 3) - 1;
      v264 = *(v262 + 8 * v263);
      if (v263 < 1)
      {
        v268 = v263;
      }

      else
      {
        v265 = *(v264 + 8);
        while (1)
        {
          v266 = v263 - 1;
          v267 = *(v262 + 8 * ((v263 - 1) >> 1));
          v268 = v263;
          if (*(v267 + 8) >= v265)
          {
            break;
          }

          *(v262 + 8 * v263) = v267;
          *v267 = v263;
          v263 = v266 >> 1;
          if (v266 <= 1)
          {
            v268 = v266 >> 1;
            v263 = v266 >> 1;
            break;
          }
        }
      }

      *(v262 + 8 * v268) = v264;
      *v264 = v263;
    }

    return;
  }

  *__x = v242;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 112, __x);
  v244 = *(a1 + 112);
  v245 = ((*(a1 + 120) - v244) >> 3) - 1;
  v246 = *(v244 + 8 * v245);
  if (v245 < 1)
  {
    *(v244 + 8 * v245) = v246;
    *v246 = v245;
    if (!*(a1 + 96))
    {
      return;
    }

    goto LABEL_369;
  }

  v247 = *(v246 + 8);
  while (1)
  {
    v248 = v245 - 1;
    v249 = *(v244 + 8 * ((v245 - 1) >> 1));
    v250 = v245;
    if (*(v249 + 8) >= v247)
    {
      break;
    }

    *(v244 + 8 * v245) = v249;
    *v249 = v245;
    v245 = v248 >> 1;
    if (v248 <= 1)
    {
      v250 = v248 >> 1;
      v245 = v248 >> 1;
      break;
    }
  }

  *(v244 + 8 * v250) = v246;
  *v246 = v245;
  if (*(a1 + 96))
  {
    goto LABEL_369;
  }
}

void sub_23CCF4F3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::deque<operations_research::sat::SatPresolver::BvaPqElement>::resize(unint64_t *a1, unint64_t a2)
{
  v3 = a1[5];
  if (a2 > v3)
  {
    v4 = a2 - v3;

    std::deque<operations_research::sat::SatPresolver::BvaPqElement>::__append(a1, v4);
    return;
  }

  if (a2 >= v3)
  {
    return;
  }

  v5 = a1[4];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * (v5 >> 8));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *v8 + 16 * v5;
    if (!a2)
    {
LABEL_12:
      v11 = v5 + v3;
      v12 = (v7 + 8 * ((v5 + v3) >> 8));
      v13 = v6 - v7;
      if (v6 != v7)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  v10 = a2 + ((v9 - *v8) >> 4);
  if (v10 >= 1)
  {
    v8 += 8 * (v10 >> 8);
    v9 = *v8 + 16 * v10;
    goto LABEL_12;
  }

  v15 = 255 - v10;
  v16 = 510 - v10;
  if (v15 >= 0)
  {
    v16 = v15;
  }

  v8 -= 8 * (v16 >> 8);
  v17 = v15;
  v18 = -v15;
  if (v18 >= 0)
  {
    v19 = -v18;
  }

  else
  {
    v19 = v17;
  }

  v9 = *v8 + 16 * (255 - v19);
  v11 = v5 + v3;
  v12 = (v7 + 8 * ((v5 + v3) >> 8));
  v13 = v6 - v7;
  if (v6 != v7)
  {
LABEL_13:
    v14 = *v12 + 16 * v11;
    if (v14 == v9)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = 0;
  if (!v9)
  {
    return;
  }

LABEL_22:
  v20 = ((v14 - *v12) >> 4) + 32 * (v12 - v8) - ((v9 - *v8) >> 4);
  if (v20 >= 1)
  {
    v21 = v6 == v7 ? 0 : 32 * v13 - 1;
    v22 = v3 - v20;
    a1[5] = v22;
    if (v21 - v5 - v22 >= 0x200)
    {
      do
      {
        operator delete(*(v6 - 8));
        v23 = a1[1];
        v6 = a1[2] - 8;
        a1[2] = v6;
        if (v6 == v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = 32 * (v6 - v23) - 1;
        }
      }

      while (v24 - (a1[5] + a1[4]) > 0x1FF);
    }
  }
}

void operations_research::sat::SatPresolver::Remove(operations_research::sat::SatPresolver *this, int a2)
{
  *(*(this + 44) + 8 * a2) = 0;
  v4 = *(this + 41);
  v5 = (v4 + 24 * a2);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v8 = *v6++;
      --*(*(this + 52) + 4 * v8);
      operations_research::sat::SatPresolver::UpdatePriorityQueue(this, (v8 >> 1));
      operations_research::sat::SatPresolver::UpdateBvaPriorityQueue(this, v8 & 0xFFFFFFFE);
      operations_research::sat::SatPresolver::UpdateBvaPriorityQueue(this, v8 | 1);
    }

    while (v6 != v7);
    v4 = *(this + 41);
  }

  v9 = *(this + 182);
  if (v9)
  {
    operations_research::sat::DratProofHandler::DeleteClause(v9, *(v4 + 24 * a2), (*(v4 + 24 * a2 + 8) - *(v4 + 24 * a2)) >> 2);
    v4 = *(this + 41);
  }

  v10 = v4 + 24 * a2;
  v11 = *v10;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  if (v11)
  {

    operator delete(v11);
  }
}

uint64_t operations_research::sat::SatPresolver::ProcessClauseToSimplifyOthersUsingLiteral(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 328);
  v4 = *(*(a1 + 352) + 8 * a2);
  v5 = *(a1 + 392) + 24 * a3;
  v7 = *v5;
  v6 = *(v5 + 8);
  *(a1 + 376) += (v6 - *v5) >> 2;
  if (v6 != v7)
  {
    v10 = 0;
    v11 = (v3 + 24 * a2);
    while (1)
    {
      v13 = *v7;
      v14 = *(*(a1 + 352) + 8 * *v7);
      if (!v14)
      {
        goto LABEL_4;
      }

      v15 = v4 & ~v14;
      if (v13 == a2 || v15 != 0)
      {
        goto LABEL_5;
      }

      v17 = v13;
      v18 = *(a1 + 328) + 24 * v13;
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = v19 - *v18;
      v22 = v21 >> 2;
      v24 = *v11;
      v23 = v11[1];
      v25 = v23 - *v11;
      if (v21 >> 2 < v25)
      {
        goto LABEL_5;
      }

      *(a1 + 384) += v25 + v22;
      if (v24 == v23)
      {
LABEL_3:
        v12 = v11;
        operations_research::sat::SatPresolver::Remove(a1, v13);
        v11 = v12;
LABEL_4:
        v10 = 1;
        goto LABEL_5;
      }

      v26 = v22 - v25;
      v27 = v21 - 4;
      while (1)
      {
        v28 = *v20;
        v29 = *v24;
        if (*v24 == *v20)
        {
          ++v24;
          goto LABEL_16;
        }

        if ((v29 ^ v28) == 1)
        {
          break;
        }

        if (v29 < v28)
        {
          goto LABEL_5;
        }

        if (--v26 < 0)
        {
          goto LABEL_5;
        }

LABEL_16:
        ++v20;
        v27 -= 4;
        if (v24 == v23)
        {
          goto LABEL_3;
        }
      }

      v30 = v24 + 1;
      if (v30 != v23)
      {
        v31 = 1;
        do
        {
          v32 = v20[v31];
          v33 = *v30;
          if (*v30 == v32)
          {
            ++v30;
          }

          else
          {
            if ((v33 ^ v32) == 1)
            {
              goto LABEL_5;
            }

            if (v33 < v32)
            {
              goto LABEL_5;
            }

            if (--v26 < 0)
            {
              goto LABEL_5;
            }
          }

          ++v31;
        }

        while (v30 != v23);
        v28 = *v20;
      }

      v77 = v11;
      v76 = v10;
      if (v20 + 1 != v19)
      {
        memmove(v20, v20 + 1, v27);
        v17 = v13;
        v11 = v77;
      }

      *(v18 + 8) = v20 + v27;
      if (v28 == -1)
      {
        goto LABEL_3;
      }

      v34 = *(a1 + 328) + 24 * v17;
      v35 = *v34;
      v36 = *(v34 + 8);
      if (v35 == v36)
      {
        return 0;
      }

      v37 = *(a1 + 1456);
      if (v37)
      {
        v38 = v17;
        operations_research::sat::DratProofHandler::AddClause(v37, v35, v36 - v35);
        v17 = v38;
        v39 = *(a1 + 328) + 24 * v38;
        v35 = *v39;
        v36 = *(v39 + 8);
      }

      if (v35 == v36)
      {
        v40 = 0;
      }

      else
      {
        v40 = 0;
        if (v36 - 1 == v35)
        {
          v41 = v35;
          goto LABEL_49;
        }

        v42 = 0;
        v43 = (((v36 - 1) - v35) >> 2) + 1;
        v41 = &v35[v43 & 0x7FFFFFFFFFFFFFFELL];
        v44 = v35 + 1;
        v45 = v43 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v49 = *(v44 - 1) >> 1;
          v46 = *v44 >> 1;
          v47 = -v49 < 0;
          v48 = -v49 & 0x3F;
          LOBYTE(v49) = v49 & 0x3F;
          if (!v47)
          {
            v49 = -v48;
          }

          v47 = -v46 < 0;
          v50 = -v46 & 0x3F;
          LOBYTE(v46) = v46 & 0x3F;
          if (!v47)
          {
            v46 = -v50;
          }

          v40 |= 1 << v49;
          v42 |= 1 << v46;
          v44 += 2;
          v45 -= 2;
        }

        while (v45);
        v40 |= v42;
        if (v43 != (v43 & 0x7FFFFFFFFFFFFFFELL))
        {
          do
          {
LABEL_49:
            v51 = *v41++;
            v52 = -(v51 >> 1) & 0x3F;
            v53 = (v51 >> 1) & 0x3F;
            if (v51 >> 1 <= 0)
            {
              v53 = -v52;
            }

            v40 |= 1 << v53;
          }

          while (v41 != v36);
        }
      }

      *(*(a1 + 352) + 8 * v17) = v40;
      v54 = *(a1 + 392) + 24 * v28;
      v56 = *v54;
      v55 = *(v54 + 8);
      if (*v54 != v55)
      {
        while (*v56 != v13)
        {
          if (++v56 == v55)
          {
            goto LABEL_64;
          }
        }

        if (v56 != v55)
        {
          for (i = v56 + 1; i != v55; ++i)
          {
            if (*i != v13)
            {
              *v56++ = *i;
            }
          }
        }
      }

      if (v56 != v55)
      {
        *(v54 + 8) = v56;
      }

LABEL_64:
      --*(*(a1 + 416) + 4 * v28);
      v58 = (v28 >> 1);
      v59 = v17;
      operations_research::sat::SatPresolver::UpdatePriorityQueue(a1, v58);
      v60 = *(a1 + 256);
      v61 = *(v60 + 8 * (v59 >> 6));
      if ((v61 & (1 << v59)) != 0)
      {
        v11 = v77;
        v10 = v76;
      }

      else
      {
        v62 = *(a1 + 296);
        v63 = *(a1 + 288);
        *(v60 + 8 * (v59 >> 6)) = v61 | (1 << v59);
        if (v62 == v63)
        {
          v64 = 0;
        }

        else
        {
          v64 = ((v62 - v63) << 7) - 1;
        }

        v65 = *(a1 + 320);
        v66 = v65 + *(a1 + 312);
        if (v64 == v66)
        {
          std::deque<int>::__add_back_capacity((a1 + 280));
          v63 = *(a1 + 288);
          v65 = *(a1 + 320);
          v66 = *(a1 + 312) + v65;
        }

        v11 = v77;
        v10 = v76;
        *(*(v63 + ((v66 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v66 & 0x3FF)) = v13;
        *(a1 + 320) = v65 + 1;
      }

LABEL_5:
      if (++v7 == v6)
      {
        if ((v10 & 1) == 0)
        {
          return 1;
        }

        v67 = (*(a1 + 392) + 24 * a3);
        begin = v67->__begin_;
        end = v67->__end_;
        if (v67->__begin_ == end)
        {
          v70 = 0;
          v74 = end - begin;
        }

        else
        {
          LODWORD(v70) = 0;
          v71 = *(a1 + 352);
          v72 = v67->__begin_;
          do
          {
            v73 = *v72;
            if (*(v71 + 8 * v73))
            {
              begin[v70] = v73;
              LODWORD(v70) = v70 + 1;
            }

            ++v72;
          }

          while (v72 != end);
          v70 = v70;
          v74 = end - begin;
          if (v70 > v74)
          {
            std::vector<int>::__append(v67, v70 - v74);
            return 1;
          }
        }

        if (v74 > v70)
        {
          v67->__end_ = &begin[v70];
        }

        return 1;
      }
    }
  }

  return 1;
}

uint64_t operations_research::sat::ComputeResolvant(int a1, char **a2, char **a3, char **a4)
{
  v7 = *a4;
  a4[1] = *a4;
  v8 = *a3;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    goto LABEL_16;
  }

  if (v8 == a3[1])
  {
LABEL_15:
    v7 = a4[1];
LABEL_16:
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a4, v7, v10, v9, (v9 - v10) >> 2);
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a4, a4[1], v8, a3[1], (a3[1] - v8) >> 2);
    return 1;
  }

  while (1)
  {
    v12 = *v8;
    v13 = *v10;
    if (*v10 == *v8)
    {
      std::vector<int>::push_back[abi:ne200100](a4, v10);
      v10 += 4;
      v8 += 4;
      v9 = a2[1];
      if (v10 == v9)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    if ((v13 ^ v12) == 1)
    {
      break;
    }

    if (v13 >= v12)
    {
      std::vector<int>::push_back[abi:ne200100](a4, v8);
      v8 += 4;
      v9 = a2[1];
      if (v10 == v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      std::vector<int>::push_back[abi:ne200100](a4, v10);
      v10 += 4;
      v9 = a2[1];
      if (v10 == v9)
      {
        goto LABEL_15;
      }
    }

LABEL_9:
    if (v8 == a3[1])
    {
      goto LABEL_15;
    }
  }

  if (v13 == a1)
  {
    v10 += 4;
    v8 += 4;
    v9 = a2[1];
    if (v10 == v9)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  return 0;
}

void std::deque<operations_research::sat::SatPresolver::BvaPqElement>::assign(unint64_t *a1, unint64_t a2, _OWORD *a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * (v5 >> 8));
  if (v4 < a2)
  {
    if (v6 == v7)
    {
      v9 = 0;
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = (*v8 + 16 * v5);
      if (!v4)
      {
LABEL_11:

LABEL_13:
        std::deque<operations_research::sat::SatPresolver::BvaPqElement>::__append(a1, a2, a3);
        return;
      }
    }

    do
    {
      *v9++ = *a3;
      if ((v9 - *v8) == 4096)
      {
        v15 = *(v8 + 1);
        v8 += 8;
        v9 = v15;
      }

      --v4;
    }

    while (v4);
    a2 -= a1[5];

    goto LABEL_13;
  }

  if (v6 == v7)
  {
    v10 = 0;
    if (!a2)
    {
LABEL_7:
      v11 = v5 + v4;
      v12 = (v7 + 8 * ((v5 + v4) >> 8));
      v13 = v6 - v7;
      if (v6 != v7)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v10 = (*v8 + 16 * v5);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  do
  {
    *v10++ = *a3;
    if ((v10 - *v8) == 4096)
    {
      v16 = *(v8 + 1);
      v8 += 8;
      v10 = v16;
    }

    --a2;
  }

  while (a2);
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v11 = v5 + v4;
  v12 = (v7 + 8 * ((v5 + v4) >> 8));
  v13 = v6 - v7;
  if (v6 != v7)
  {
LABEL_8:
    v14 = *v12 + 16 * v11;
    if (v14 == v10)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = 0;
  if (!v10)
  {
    return;
  }

LABEL_27:
  v17 = ((v14 - *v12) >> 4) + 32 * (v12 - v8) - ((v10 - *v8) >> 4);
  if (v17 >= 1)
  {
    v18 = 32 * v13 - 1;
    if (v6 == v7)
    {
      v18 = 0;
    }

    v19 = v4 - v17;
    a1[5] = v19;
    if (v18 - (v5 + v19) >= 0x200)
    {
      do
      {
        operator delete(*(v6 - 8));
        v20 = a1[1];
        v6 = a1[2] - 8;
        v21 = 32 * (v6 - v20) - 1;
        a1[2] = v6;
        if (v6 == v20)
        {
          v21 = 0;
        }
      }

      while (v21 - (a1[5] + a1[4]) > 0x1FF);
    }
  }
}

char *absl::lts_20240722::StrCat<char [11],int,char [7],int,char [16],int,char [20],int,char [20],int>@<X0>(std::string *__return_ptr a1@<X8>, char *__s@<X5>, _OWORD *a3@<X0>, __int128 *a4@<X1>, _OWORD *a5@<X2>, __int128 *a6@<X3>, _OWORD *a7@<X4>, unsigned int *a8@<X6>, const char *a9@<X7>, unsigned int *a10, const char *a11, unsigned int *a12, const char *a13, unsigned int *a14, const char *a15, unsigned int *a16)
{
  v70 = *MEMORY[0x277D85DE8];
  v18 = *a4;
  v49[0] = *a3;
  v49[1] = v18;
  v19 = *a6;
  v49[2] = *a5;
  v49[3] = v19;
  v49[4] = *a7;
  v50 = __s;
  v51 = strlen(__s);
  v21 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a8, v48, v20);
  v46 = v48;
  v47 = v21 - v48;
  v52 = v48;
  v53 = v21 - v48;
  v22 = strlen(a9);
  v54 = a9;
  v55 = v22;
  v24 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a10, v45, v23);
  v43 = v45;
  v44 = v24 - v45;
  v56 = v45;
  v57 = v24 - v45;
  v25 = strlen(a11);
  v58 = a11;
  v59 = v25;
  v27 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a12, v42, v26);
  v40 = v42;
  v41 = v27 - v42;
  v60 = v42;
  v61 = v27 - v42;
  v28 = strlen(a13);
  v62 = a13;
  v63 = v28;
  v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a14, v39, v29);
  v37 = v39;
  v38 = v30 - v39;
  v64 = v39;
  v65 = v30 - v39;
  v31 = strlen(a15);
  v66 = a15;
  v67 = v31;
  v35 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a16, v36, v32) - v36;
  v68 = v36;
  v69 = v35;
  return absl::lts_20240722::strings_internal::CatPieces(v49, 15, a1);
}

void operations_research::sat::ProbeAndFindEquivalentLiteral(uint64_t a1, unint64_t *a2, uint64_t a3, std::vector<int> *a4, uint64_t a5)
{
  v106 = *MEMORY[0x277D85DE8];
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  operations_research::sat::SatSolver::Backtrack(a1, 0);
  a4->__end_ = a4->__begin_;
  v9 = *(*(a1 + 216) + 12);
  v10 = *(operations_research::sat::SatSolver::parameters(a1) + 504);
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = a1;
  v77 = v10 + operations_research::sat::SatSolver::deterministic_time(a1);
  v11 = (2 * *(a1 + 16));
  v70 = 0;
  v71 = 0;
  v72 = 0;
  FindStronglyConnectedComponents<int,operations_research::sat::PropagationGraph,std::vector<std::vector<int>>>(v11, &v73, &v70);
  v61 = v9;
  v63 = a5;
  v69 = 0;
  v67 = 0u;
  *v68 = 0u;
  *v65 = 0u;
  *v66 = 0u;
  operations_research::MergingPartition::Reset(v65, v11);
  v12 = v70;
  v13 = v71;
  if (v70 != v71)
  {
    do
    {
      v14 = *v12;
      if ((v12[1] - *v12) >= 5)
      {
        if (a4->__begin_ != a4->__end_ || (__x[0] = -1, !v11) || (std::vector<int>::__append(a4, v11, __x), v14 = *v12, (v12[1] - *v12) >= 5))
        {
          v15 = *v14;
          v16 = 2;
          v17 = 1;
          do
          {
            v18 = v14[v17];
            operations_research::MergingPartition::MergePartsOf(v65, v15, v18);
            operations_research::MergingPartition::MergePartsOf(v65, v15 ^ 1, v18 ^ 1);
            v17 = v16;
            v14 = *v12;
            ++v16;
          }

          while (v17 < v12[1] - *v12);
        }
      }

      v12 += 3;
    }

    while (v12 != v13);
  }

  operations_research::sat::SatSolver::Backtrack(a1, 0);
  if (a4->__begin_ == a4->__end_ || v11 < 1)
  {
    v21 = 0;
    v22 = v63;
    if (!v63)
    {
      goto LABEL_42;
    }

    goto LABEL_18;
  }

  v34 = 0;
  v35 = *(a1 + 216);
  do
  {
    RootAndCompressPath = operations_research::MergingPartition::GetRootAndCompressPath(v65, v34);
    v37 = *(v35 + 24);
    v38 = *(v37 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (((v38 >> (v34 & 0x3E)) & 3) != 0 && ((*(v37 + ((RootAndCompressPath >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (RootAndCompressPath & 0x3E)) & 3) == 0)
    {
      v39 = RootAndCompressPath ^ (((v38 >> v34) & 1) == 0);
      if ((operations_research::sat::SatSolver::AddUnitClause(a1, v39) & 1) == 0)
      {
        goto LABEL_44;
      }

      if (a3)
      {
        __x[0] = v39;
        operations_research::sat::DratProofHandler::AddClause(a3, __x, 1);
      }
    }

    ++v34;
  }

  while (v11 != v34);
  v40 = 0;
  v41 = 0;
  do
  {
    v42 = operations_research::MergingPartition::GetRootAndCompressPath(v65, v40);
    a4->__begin_[v40] = v42;
    v43 = *(v35 + 24);
    v44 = *(v43 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8));
    v45 = *(v43 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8));
    v46 = v45 & (3 << (v40 & 0x3E));
    if (((v44 >> (v42 & 0x3E)) & 3) != 0)
    {
      if (!v46)
      {
        v47 = v40 ^ (((v44 >> v42) & 1) == 0);
        if ((operations_research::sat::SatSolver::AddUnitClause(a1, v47) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (a3)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v46)
    {
      v47 = v42 ^ (((v45 >> v40) & 1) == 0);
      if ((operations_research::sat::SatSolver::AddUnitClause(a1, v47) & 1) == 0)
      {
        goto LABEL_44;
      }

      if (a3)
      {
LABEL_33:
        __x[0] = v47;
        operations_research::sat::DratProofHandler::AddClause(a3, __x, 1);
      }
    }

    else if (v40 != v42)
    {
      v48 = v42 ^ 1;
      __x[0] = v40;
      __x[1] = v42 ^ 1;
      operations_research::sat::SatPostsolver::Add(a2, v40, __x, 2);
      ++v41;
      if (a3)
      {
        __x[0] = v40;
        __x[1] = v48;
        operations_research::sat::DratProofHandler::AddClause(a3, __x, 2);
      }
    }

    ++v40;
  }

  while (v11 != v40);
  v21 = (v41 / 2);
  v22 = v63;
  if (!v63)
  {
LABEL_42:
    if ((*(operations_research::sat::SatSolver::parameters(a1) + 290) & 1) != 0 || dword_27E25D3A0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::ProbeAndFindEquivalentLiteral(operations_research::sat::SatSolver *,operations_research::sat::SatPostsolver *,operations_research::sat::DratProofHandler *,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>> *,operations_research::SolverLogger *)::$_0::operator() const(void)::site, dword_27E25D3A0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 1263);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__x, "Probing. fixed ", 0xFuLL);
      LODWORD(v86[0]) = v61;
      v55 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(__x, v86);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v55, " + ", 3uLL);
      LODWORD(v86[0]) = *(*(a1 + 216) + 12) - v61;
      v56 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v55, v86);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v56, " equiv ", 7uLL);
      LODWORD(v86[0]) = v21;
      v57 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v56, v86);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v57, " total ", 7uLL);
      LODWORD(v86[0]) = *(a1 + 16);
      v58 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v57, v86);
      v59 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, " wtime: ", 8uLL);
      v86[0] = (absl::lts_20240722::GetCurrentTimeNanos(v59) - CurrentTimeNanos) * 0.000000001;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v58, v86);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__x);
    }

    goto LABEL_44;
  }

LABEL_18:
  if (*v22 == 1)
  {
    v23 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v61, v81, v19);
    *&v80 = v81;
    *(&v80 + 1) = v23 - v81;
    v25 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(*(a1 + 216) + 12) - v61), v79, v24);
    *&v78 = v79;
    *(&v78 + 1) = v25 - v79;
    v26 = *(a1 + 16);
    v27 = absl::lts_20240722::GetCurrentTimeNanos(v25);
    *__x = "[Pure SAT probing] fixed ";
    v89 = 25;
    v90 = v80;
    v91 = " + ";
    v92 = 3;
    v93 = v78;
    v94 = " equiv ";
    v95 = 7;
    v29 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v21, v87, v28);
    *&v86[0] = v87;
    *&v86[1] = v29 - v87;
    v96 = v87;
    v97 = v29 - v87;
    v98 = " total ";
    v99 = 7;
    v31 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v26, v85, v30);
    v84[4] = v85;
    v84[5] = v31 - v85;
    v100 = v85;
    v101 = v31 - v85;
    v102 = " wtime: ";
    v103 = 8;
    v33 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v84, (v27 - CurrentTimeNanos) * 0.000000001, v32);
    v82 = v84;
    v83 = v33;
    v104 = v84;
    v105 = v33;
    absl::lts_20240722::strings_internal::CatPieces(__x, 10, &__p);
    operations_research::SolverLogger::LogInfo(v63, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 1259, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_44:
  if (v68[0])
  {
    operator delete(v68[0]);
  }

  if (v66[1])
  {
    *&v67 = v66[1];
    operator delete(v66[1]);
  }

  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  v49 = v70;
  if (v70)
  {
    v50 = v71;
    v51 = v70;
    if (v71 != v70)
    {
      v52 = v71;
      do
      {
        v54 = *(v52 - 3);
        v52 -= 24;
        v53 = v54;
        if (v54)
        {
          *(v50 - 2) = v53;
          operator delete(v53);
        }

        v50 = v52;
      }

      while (v52 != v49);
      v51 = v70;
    }

    v71 = v49;
    operator delete(v51);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }
}

void sub_23CCF6350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  operations_research::MergingPartition::~MergingPartition(&a17);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a27);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void FindStronglyConnectedComponents<int,operations_research::sat::PropagationGraph,std::vector<std::vector<int>>>(uint64_t a1, double *a2, uint64_t a3)
{
  *__p = 0u;
  v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  *v3 = 0u;
  *v4 = 0u;
  StronglyConnectedComponentsFinder<int,operations_research::sat::PropagationGraph,std::vector<std::vector<int>>>::FindStronglyConnectedComponents(v3, a1, a2, a3);
  if (__p[1])
  {
    *&v8 = __p[1];
    operator delete(__p[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v4[1])
  {
    *&v5 = v4[1];
    operator delete(v4[1]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

char **std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char **result, char *a2, int **a3, int *a4, uint64_t *a5, unint64_t a6, int *a7, int64_t a8)
{
  if (a6 < 2)
  {
    return result;
  }

  v8 = a2;
  if (a6 == 2)
  {
    if (*a3 == a4)
    {
      a4 = *(a3 - 1) + 1024;
    }

    v9 = *(a4 - 1);
    v10 = *a2;
    v11 = *(*a5 + 328);
    if (*(v11 + 24 * v9 + 8) - *(v11 + 24 * v9) < *(v11 + 24 * v10 + 8) - *(v11 + 24 * v10))
    {
      *a2 = v9;
      *(a4 - 1) = v10;
    }

    return result;
  }

  v12 = result;
  if (a6 > 128)
  {
    v27 = a6 >> 1;
    v28 = (a6 >> 1) + ((a2 - *result) >> 2);
    if (v28 < 1)
    {
      v31 = 1023 - v28;
      v29 = &result[-(v31 >> 10)];
      v30 = &(*v29)[~v31 & 0x3FF];
    }

    else
    {
      v29 = &result[v28 >> 10];
      v30 = &(*v29)[v28 & 0x3FF];
    }

    v56 = a4;
    v33 = a6 - v27;
    if (a6 <= a8)
    {
      v40 = a7;
      std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(result, a2, v29, v30, a5, a6 >> 1, a7);
      v41 = &v40[v27];
      result = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v29, v30, a3, v56, a5, v33, v41);
      v42 = &v40[a6];
      v43 = *a5;
      v44 = v41;
      while (v44 != v42)
      {
        v45 = *v44;
        v46 = *v40;
        v47 = *(*(v43 + 328) + 24 * v45 + 8) - *(*(v43 + 328) + 24 * v45) >= *(*(v43 + 328) + 24 * v46 + 8) - *(*(v43 + 328) + 24 * v46);
        v48 = *(*(v43 + 328) + 24 * v45 + 8) - *(*(v43 + 328) + 24 * v45) < *(*(v43 + 328) + 24 * v46 + 8) - *(*(v43 + 328) + 24 * v46);
        if (*(*(v43 + 328) + 24 * v45 + 8) - *(*(v43 + 328) + 24 * v45) >= *(*(v43 + 328) + 24 * v46 + 8) - *(*(v43 + 328) + 24 * v46))
        {
          v45 = *v40;
        }

        *v8++ = v45;
        v49 = *v12;
        if ((v8 - *v12) == 4096)
        {
          v50 = *(v12 + 1);
          v12 += 8;
          v49 = v50;
          v8 = v50;
        }

        v40 += v47;
        v44 += v48;
        if (v40 == v41)
        {
          while (v44 != v42)
          {
            v51 = *v44++;
            *v8++ = v51;
            if (v8 - v49 == 4096)
            {
              v52 = *(v12 + 1);
              v12 += 8;
              v49 = v52;
              v8 = v52;
            }
          }

          return result;
        }
      }

      if (v40 != v41)
      {
        v53 = *v12;
        do
        {
          v54 = *v40++;
          *v8++ = v54;
          if (v8 - v53 == 4096)
          {
            v55 = *(v12 + 1);
            v12 += 8;
            v53 = v55;
            v8 = v55;
          }
        }

        while (v40 != v41);
      }
    }

    else
    {
      v36 = a6 - v27;
      std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(result, a2, v29, v30, a5, a6 >> 1, a7, a8);
      std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v29, v30, a3, v56, a5, v36, a7, a8);
      return std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v12, v8, v29, v30, a3, v56, a5, v27, v36, a7, a8);
    }
  }

  else if (a2 != a4)
  {
    v13 = a2 + 4;
    v14 = *result;
    if (a2 + 4 - *result == 4096)
    {
      v12 = (result + 1);
      v14 = result[1];
      v13 = v14;
    }

    if (v13 != a4)
    {
      v15 = *(*a5 + 328);
      while (1)
      {
        v16 = v12;
        v17 = v13;
        if (v13 == v14)
        {
          v16 = v12 - 8;
          v17 = *(v12 - 1) + 4096;
        }

        v20 = *(v17 - 4);
        v18 = (v17 - 4);
        v19 = v20;
        v21 = *v13;
        v22 = *(v15 + 24 * v21 + 8) - *(v15 + 24 * v21);
        result = *(v15 + 24 * v20 + 8);
        if (v22 < result - *(v15 + 24 * v20))
        {
          break;
        }

        v13 = (v13 + 4);
        if (v13 - v14 == 4096)
        {
          goto LABEL_27;
        }

LABEL_14:
        if (v13 == a4)
        {
          return result;
        }
      }

      result = v13;
      do
      {
        v25 = v18;
        *result = v19;
        if (v18 == a2)
        {
          break;
        }

        if (v18 == *v16)
        {
          v23 = *(v16 - 1);
          v16 -= 8;
          v18 = (v23 + 4096);
        }

        v24 = *(v18 - 1);
        v18 -= 4;
        v19 = v24;
        result = v25;
      }

      while (v22 < *(v15 + 24 * v24 + 8) - *(v15 + 24 * v24));
      *v25 = v21;
      v13 = (v13 + 4);
      if (v13 - v14 != 4096)
      {
        goto LABEL_14;
      }

LABEL_27:
      v26 = *(v12 + 1);
      v12 += 8;
      v14 = v26;
      v13 = v26;
      goto LABEL_14;
    }
  }

  return result;
}

char **std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char **result, char *a2, int **a3, int *a4, uint64_t *a5, unint64_t a6, int *a7)
{
  if (a6)
  {
    if (a6 == 1)
    {
LABEL_10:
      *a7 = *a2;
      return result;
    }

    if (a6 == 2)
    {
      if (*a3 == a4)
      {
        a4 = *(a3 - 1) + 1024;
      }

      v9 = *(a4 - 1);
      v7 = a4 - 1;
      v8 = v9;
      v10 = *(*a5 + 328);
      v11 = *(v10 + 24 * v9 + 8) - *(v10 + 24 * v9);
      v12 = *(v10 + 24 * *a2 + 8) - *(v10 + 24 * *a2);
      if (v11 >= v12)
      {
        v8 = *a2;
      }

      *a7++ = v8;
      if (v11 >= v12)
      {
        a2 = v7;
      }

      goto LABEL_10;
    }

    if (a6 > 8)
    {
      v25 = a6 >> 1;
      v26 = (a6 >> 1) + ((a2 - *result) >> 2);
      v29 = a4;
      if (v26 < 1)
      {
        v32 = 1023 - v26;
        v30 = &result[-(v32 >> 10)];
        v31 = &(*v30)[4 * (~v32 & 0x3FF)];
      }

      else
      {
        v30 = &result[v26 >> 10];
        v31 = &(*v30)[4 * (v26 & 0x3FF)];
      }

      v33 = result;
      v34 = a2;
      v36 = a7;
      std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(result, a2, v30, v31, a5, a6 >> 1, a7, v25);
      result = std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v30, v31, a3, v29, a5, a6 - v25, &v36[v25], a6 - v25);
      if (v34 == v31)
      {
        v37 = v31;
        v38 = v36;
LABEL_32:
        if (v37 != v29)
        {
          v39 = *v30;
          do
          {
            v40 = *v37;
            v37 += 4;
            *v38 = v40;
            if (v37 - v39 == 4096)
            {
              v41 = v30[1];
              ++v30;
              v39 = v41;
              v37 = v41;
            }

            ++v38;
          }

          while (v37 != v29);
        }
      }

      else
      {
        v42 = *a5;
        v37 = v31;
        v38 = v36;
        v43 = v33;
        while (v37 != v29)
        {
          v44 = *v37;
          v45 = *v34;
          if (*(*(v42 + 328) + 24 * v44 + 8) - *(*(v42 + 328) + 24 * v44) >= *(*(v42 + 328) + 24 * v45 + 8) - *(*(v42 + 328) + 24 * v45))
          {
            *v38 = v45;
            v34 += 4;
            if (&v34[-*v43] == 4096)
            {
              v47 = v43[1];
              ++v43;
              v34 = v47;
            }
          }

          else
          {
            *v38 = v44;
            v37 += 4;
            if (v37 - *v30 == 4096)
            {
              v46 = v30[1];
              ++v30;
              v37 = v46;
            }
          }

          ++v38;
          if (v34 == v31)
          {
            goto LABEL_32;
          }
        }

        if (v34 != v31)
        {
          v48 = *v43;
          do
          {
            v49 = *v34;
            v34 += 4;
            *v38 = v49;
            if (v34 - v48 == 4096)
            {
              v50 = v43[1];
              ++v43;
              v48 = v50;
              v34 = v50;
            }

            ++v38;
          }

          while (v34 != v31);
        }
      }
    }

    else if (a2 != a4)
    {
      v13 = 0;
      v14 = *a5;
      *a7 = *a2;
      v15 = *result;
      for (i = a7; ; i = v18)
      {
        a2 += 4;
        if (a2 - v15 == 4096)
        {
          v17 = result[1];
          ++result;
          v15 = v17;
          a2 = v17;
        }

        if (a2 == a4)
        {
          break;
        }

        v18 = i + 1;
        v19 = *a2;
        v20 = *i;
        v21 = *(v14 + 328);
        if (*(v21 + 24 * v19 + 8) - *(v21 + 24 * v19) >= *(v21 + 24 * v20 + 8) - *(v21 + 24 * v20))
        {
          *v18 = v19;
        }

        else
        {
          i[1] = v20;
          v22 = a7;
          if (i != a7)
          {
            v23 = v13;
            while (1)
            {
              v22 = (a7 + v23);
              v24 = *(a7 + v23 - 4);
              if (*(v21 + 24 * *a2 + 8) - *(v21 + 24 * *a2) >= *(v21 + 24 * v24 + 8) - *(v21 + 24 * v24))
              {
                break;
              }

              *v22 = v24;
              v23 -= 4;
              if (!v23)
              {
                v22 = a7;
                break;
              }
            }
          }

          *v22 = *a2;
        }

        v13 += 4;
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *result, int *a2, char *a3, int *a4, char *a5, int *a6, uint64_t *a7, uint64_t a8, int64_t a9, char *a10, int64_t a11)
{
  v11 = a9;
  if (!a9)
  {
    return result;
  }

  v14 = result;
  result = a10;
  while (v11 > a11 && a8 > a11)
  {
    if (!a8)
    {
      return result;
    }

    v16 = *a4;
    v17 = *(*a7 + 328);
    v18 = a8 + 1;
    while (1)
    {
      v19 = *a2;
      if (*(v17 + 24 * v16 + 8) - *(v17 + 24 * v16) < *(v17 + 24 * v19 + 8) - *(v17 + 24 * v19))
      {
        break;
      }

      if ((++a2 - *v14) == 4096)
      {
        v20 = *(v14 + 1);
        v14 += 8;
        a2 = v20;
      }

      if (--v18 == 1)
      {
        return result;
      }
    }

    if ((v18 - 1) >= v11)
    {
      if (v18 == 2)
      {
        *a2 = v16;
        *a4 = v19;
        return result;
      }

      v38 = (v18 - 1) / 2;
      v29 = v14;
      v30 = a2;
      if (v18 < 3)
      {
LABEL_38:
        if (a6 == a4)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v39 = v38 + ((a2 - *v14) >> 2);
        if (v39 >= 1)
        {
          v29 = &v14[8 * (v39 >> 10)];
          v30 = *v29 + (v39 & 0x3FF);
          goto LABEL_38;
        }

        v52 = 1023 - v39;
        v29 = &v14[-8 * (v52 >> 10)];
        v30 = *v29 + (~v52 & 0x3FF);
        if (a6 == a4)
        {
LABEL_69:
          v21 = 0;
          v22 = a3;
          v23 = a4;
          v117 = a11;
          v118 = result;
          v116 = a3;
          if (v30 == a4)
          {
            goto LABEL_74;
          }

LABEL_70:
          if (a4 == v23)
          {
            v60 = v30;
            v58 = v29;
          }

          else
          {
            v114 = a6;
            v115 = a5;
            v53 = v22;
            v54 = a7;
            v55 = v38;
            v56 = v21;
            v57 = std::__rotate_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v29, v30, a3, a4, v53, v23);
            v21 = v56;
            v38 = v55;
            a7 = v54;
            a6 = v114;
            a5 = v115;
            v58 = v57;
            v60 = v59;
            a11 = v117;
            result = v118;
          }

          goto LABEL_75;
        }
      }

      v40 = (a4 - *a3) >> 2;
      v41 = ((a6 - *a5) >> 2) + ((a5 - a3) << 7) - v40;
      if (!v41)
      {
        goto LABEL_69;
      }

      v42 = *(v17 + 24 * *v30 + 8) - *(v17 + 24 * *v30);
      v23 = a4;
      v22 = a3;
      while (2)
      {
        v43 = v41 >> 1;
        if (v41 == 1)
        {
          v44 = v23;
          v45 = v22;
          if (*(v17 + 24 * *v23 + 8) - *(v17 + 24 * *v23) < v42)
          {
            goto LABEL_55;
          }

LABEL_42:
          v41 = v43;
          if (!v43)
          {
            if (v23 == a4)
            {
              v21 = 0;
              v117 = a11;
              v118 = result;
              v116 = v22;
              if (v30 == a4)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v21 = (&v23[-*v22] >> 2) + ((v22 - a3) << 7) - v40;
              v117 = a11;
              v118 = result;
              v116 = v22;
              if (v30 == a4)
              {
                goto LABEL_74;
              }
            }

            goto LABEL_70;
          }

          continue;
        }

        break;
      }

      v46 = v43 + (&v23[-*v22] >> 2);
      if (v46 < 1)
      {
        v47 = 2046 - v46;
        if (1023 - v46 >= 0)
        {
          v47 = 1023 - v46;
        }

        v45 = &v22[-8 * (v47 >> 10)];
        if (v46 - 1023 >= 0)
        {
          v48 = -((v46 - 1023) & 0x3FF);
        }

        else
        {
          v48 = (1023 - v46) & 0x3FF;
        }

        v44 = (*v45 + 4 * (1023 - v48));
        if (*(v17 + 24 * *v44 + 8) - *(v17 + 24 * *v44) >= v42)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v45 = &v22[8 * (v46 >> 10)];
        v44 = (*v45 + 4 * (v46 & 0x3FF));
        if (*(v17 + 24 * *v44 + 8) - *(v17 + 24 * *v44) >= v42)
        {
          goto LABEL_42;
        }
      }

LABEL_55:
      v23 = (v44 + 1);
      if ((v44 - *v45 + 4) == 4096)
      {
        v49 = *(v45 + 1);
        v45 += 8;
        v23 = v49;
      }

      v43 = v41 + ~v43;
      v22 = v45;
      goto LABEL_42;
    }

    v21 = v11 / 2;
    v22 = a3;
    v23 = a4;
    if ((v11 + 1) >= 3)
    {
      v24 = v21 + ((a4 - *a3) >> 2);
      if (v24 < 1)
      {
        v51 = 1023 - v24;
        v22 = &a3[-8 * (v51 >> 10)];
        v23 = (*v22 + 4 * (~v51 & 0x3FF));
        if (a4 == a2)
        {
LABEL_66:
          v38 = 0;
          v29 = v14;
          v30 = a2;
          v117 = a11;
          v118 = result;
          v116 = v22;
          if (a2 == a4)
          {
            goto LABEL_74;
          }

          goto LABEL_70;
        }

        goto LABEL_16;
      }

      v22 = &a3[8 * (v24 >> 10)];
      v23 = (*v22 + 4 * (v24 & 0x3FF));
    }

    if (a4 == a2)
    {
      goto LABEL_66;
    }

LABEL_16:
    v25 = *v14;
    v26 = (a2 - *v14) >> 2;
    v27 = ((a4 - *a3) >> 2) + ((a3 - v14) << 7) - v26;
    if (!v27)
    {
      goto LABEL_66;
    }

    v28 = *(v17 + 24 * *v23 + 8) - *(v17 + 24 * *v23);
    v29 = v14;
    v30 = a2;
    do
    {
      v31 = v27 >> 1;
      v32 = v30;
      v33 = v29;
      if (v27 == 1)
      {
        if (v28 < *(v17 + 24 * *v30 + 8) - *(v17 + 24 * *v30))
        {
          goto LABEL_19;
        }

LABEL_32:
        v30 = v32 + 1;
        v25 = *v33;
        if ((v32 + 1) - *v33 == 4096)
        {
          v37 = v33[1];
          ++v33;
          v25 = v37;
          v30 = v37;
        }

        v31 = v27 + ~v31;
        v29 = v33;
        goto LABEL_19;
      }

      v34 = v31 + ((v30 - v25) >> 2);
      if (v34 >= 1)
      {
        v33 = &v29[v34 >> 10];
        v32 = *v33 + (v34 & 0x3FF);
        if (v28 < *(v17 + 24 * *v32 + 8) - *(v17 + 24 * *v32))
        {
          goto LABEL_19;
        }

        goto LABEL_32;
      }

      v35 = 2046 - v34;
      if (1023 - v34 >= 0)
      {
        v35 = 1023 - v34;
      }

      v33 = &v29[-(v35 >> 10)];
      if (v34 - 1023 >= 0)
      {
        v36 = -((v34 - 1023) & 0x3FF);
      }

      else
      {
        v36 = (1023 - v34) & 0x3FF;
      }

      v32 = *v33 + 1023 - v36;
      if (v28 >= *(v17 + 24 * *v32 + 8) - *(v17 + 24 * *v32))
      {
        goto LABEL_32;
      }

LABEL_19:
      v27 = v31;
    }

    while (v31);
    v50 = (v30 - v25) >> 2;
    if (v30 == a2)
    {
      v38 = 0;
    }

    else
    {
      v38 = v50 + ((v29 - v14) << 7) - v26;
    }

    v21 = v11 / 2;
    v117 = a11;
    v118 = result;
    v116 = v22;
    if (v30 != a4)
    {
      goto LABEL_70;
    }

LABEL_74:
    v60 = v23;
    v58 = v22;
LABEL_75:
    a8 = ~v38 + v18;
    v61 = v11 - v21;
    if (v38 + v21 >= (v11 - (v38 + v21) + v18 - 1))
    {
      v66 = a7;
      v67 = a8;
      a8 = v38;
      v61 = v21;
      std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v58, v60, v116, v23, a5, a6, a7, v67, v11 - v21, result, a11);
      a3 = v29;
      v23 = v30;
      a5 = v58;
      a6 = v60;
    }

    else
    {
      v112 = result;
      v113 = a11;
      v62 = v14;
      v63 = a2;
      v64 = a5;
      v65 = a6;
      v66 = a7;
      std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v62, v63, v29, v30, v58, v60, a7, v38, v21, v112, v113);
      a5 = v64;
      a6 = v65;
      v14 = v58;
      a2 = v60;
      a3 = v116;
    }

    v11 = v61;
    a4 = v23;
    a11 = v117;
    result = v118;
    a7 = v66;
    if (!v61)
    {
      return result;
    }
  }

  if (a8 <= v11)
  {
    if (a2 == a4)
    {
      return result;
    }

    v75 = 0;
    v76 = *v14;
    v77 = *v14;
    v78 = a2;
    v79 = v14;
    do
    {
      v80 = *v78++;
      *&result[v75] = v80;
      if (v78 - v77 == 4096)
      {
        v81 = *(v79 + 1);
        v79 += 8;
        v77 = v81;
        v78 = v81;
      }

      v75 += 4;
    }

    while (v78 != a4);
    if (!v75)
    {
      return result;
    }

    v82 = &result[v75];
    v83 = *a7;
    v84 = result;
    while (1)
    {
      if (a4 == a6)
      {
        v104 = *v14;
        v103 = (v14 + 8);
        v102 = v104;
        v105 = &result[v75];
        while (1)
        {
          if ((v105 - v84) >> 2 >= (v102 - a2 + 4096) >> 2)
          {
            v106 = (v102 - a2 + 4096) >> 2;
          }

          else
          {
            v106 = (v105 - v84) >> 2;
          }

          if ((v106 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            result = memmove(a2, v84, 4 * v106);
          }

          v84 += 4 * v106;
          if (v82 == v84)
          {
            break;
          }

          v107 = *v103++;
          v102 = v107;
          a2 = v107;
        }

        return result;
      }

      v85 = *a4;
      v86 = *v84;
      if (*(*(v83 + 328) + 24 * v85 + 8) - *(*(v83 + 328) + 24 * v85) >= *(*(v83 + 328) + 24 * v86 + 8) - *(*(v83 + 328) + 24 * v86))
      {
        *a2++ = v86;
        v84 += 4;
        if (a2 - v76 == 4096)
        {
          goto LABEL_102;
        }
      }

      else
      {
        *a2 = v85;
        if ((++a4 - *a3) == 4096)
        {
          v87 = *(a3 + 1);
          a3 += 8;
          a4 = v87;
          if (++a2 - v76 == 4096)
          {
LABEL_102:
            v88 = *(v14 + 1);
            v14 += 8;
            v76 = v88;
            a2 = v88;
          }
        }

        else if (++a2 - v76 == 4096)
        {
          goto LABEL_102;
        }
      }

      if (v82 == v84)
      {
        return result;
      }
    }
  }

  if (a6 == a4)
  {
    return result;
  }

  v68 = 0;
  v69 = *a3;
  v70 = *a3;
  v71 = a4;
  v72 = a3;
  do
  {
    v73 = *v71++;
    *&result[v68] = v73;
    if (v71 - v70 == 4096)
    {
      v74 = *(v72 + 1);
      v72 += 8;
      v70 = v74;
      v71 = v74;
    }

    v68 += 4;
  }

  while (v71 != a6);
  if (!v68)
  {
    return result;
  }

  v89 = &result[v68];
  v90 = *a7;
  while (2)
  {
    if (a2 != a4)
    {
      v91 = a4;
      if (v69 == a4)
      {
        v91 = (*(a3 - 1) + 4096);
      }

      v92 = v89 - 4;
      v93 = *(v89 - 1);
      v94 = *(v90 + 328);
      if (*(v94 + 24 * v93 + 8) - *(v94 + 24 * v93) >= *(v94 + 24 * *(v91 - 1) + 8) - *(v94 + 24 * *(v91 - 1)))
      {
        v98 = *a5;
        v99 = a6;
        if (a6 == *a5)
        {
          v99 = (*(a5 - 1) + 4096);
        }

        *(v99 - 1) = v93;
        v89 = v92;
        if (a6 == v98)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v95 = a4;
        if (v69 == a4)
        {
          v95 = (*(a3 - 1) + 4096);
          v96 = *a5;
          v97 = a6;
          if (a6 == *a5)
          {
            goto LABEL_120;
          }

LABEL_112:
          *(v97 - 1) = *(v95 - 1);
          if (v69 != a4)
          {
            goto LABEL_113;
          }

LABEL_121:
          v100 = *(a3 - 1);
          a3 -= 8;
          v69 = v100;
          a4 = v100 + 1023;
          if (a6 == v96)
          {
LABEL_122:
            v101 = *(a5 - 1);
            a5 -= 8;
            a6 = (v101 + 4096);
          }
        }

        else
        {
          v96 = *a5;
          v97 = a6;
          if (a6 != *a5)
          {
            goto LABEL_112;
          }

LABEL_120:
          *(*(a5 - 1) + 4092) = *(v95 - 1);
          if (v69 == a4)
          {
            goto LABEL_121;
          }

LABEL_113:
          --a4;
          if (a6 == v96)
          {
            goto LABEL_122;
          }
        }
      }

      --a6;
      if (v89 == result)
      {
        return result;
      }

      continue;
    }

    break;
  }

  if (v89 != result)
  {
    v108 = *a5;
    do
    {
      while (1)
      {
        v111 = *(v89 - 1);
        v89 -= 4;
        v110 = v111;
        if (a6 == v108)
        {
          break;
        }

        *--a6 = v110;
        if (v89 == result)
        {
          return result;
        }
      }

      v109 = *(a5 - 1);
      a5 -= 8;
      v108 = v109;
      v109[1023] = v110;
      a6 = v109 + 1023;
    }

    while (v89 != result);
  }

  return result;
}

char *std::__rotate_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(const void ***a1, char *a2, char *a3, char *a4, const void **a5, char *a6)
{
  v8 = (a2 - *a1) >> 2;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v8 + 1;
    v10 = &a1[(v8 + 1) >> 10];
    v11 = *v10 + 4 * (v9 & 0x3FF);
    if (v11 != a4)
    {
      goto LABEL_3;
    }

LABEL_9:
    v16 = *a2;
    v24 = a1;
    v25 = a2;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>>>(v10, v11, a5, a6, &v24);
    result = v24;
    *v25 = v16;
    return result;
  }

  v14 = 1022 - v8;
  v15 = ~v14;
  v10 = &a1[-(v14 >> 10)];
  v11 = *v10 + 4 * (v15 & 0x3FF);
  if (v11 == a4)
  {
    goto LABEL_9;
  }

LABEL_3:
  v12 = &a4[-*a3] >> 2;
  if (v12 < 0)
  {
    if ((*&a3[-8 * ((1022 - v12) >> 10)] + 4 * (~(1022 - v12) & 0x3FF)) != a6)
    {
      goto LABEL_5;
    }
  }

  else if ((*&a3[((v12 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v12 + 1) & 0x3FF)) != a6)
  {
LABEL_5:

    return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(a1, a2, a3, a4, a5, a6);
  }

  v17 = (a6 - *a5) >> 2;
  if (v17 < 2)
  {
    v22 = 1024 - v17;
    v20 = &a5[-(v22 >> 10)];
    v21 = (*v20 + 4 * (~v22 & 0x3FF));
  }

  else
  {
    v19 = v17 - 1;
    v20 = &a5[v19 >> 10];
    v21 = (*v20 + 4 * (v19 & 0x3FF));
  }

  v23 = *v21;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, a2, v20, v21, a5, a6, &v24);
  result = v26;
  *a2 = v23;
  return result;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *result, char *a2, char *a3, char *a4, char *a5, char *a6)
{
  if (a4 == a2)
  {
    v6 = 0;
    if (a6 != a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = 0;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v6 = (&a4[-*a3] >> 2) + ((a3 - result) << 7) - (&a2[-*result] >> 2);
  if (a6 == a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v7 = (&a6[-*a5] >> 2) + ((a5 - a3) << 7) - (&a4[-*a3] >> 2);
  if (v6 == v7)
  {
LABEL_11:
    if (a2 == a4 || a4 == a6)
    {
      return a3;
    }

    v15 = *result;
    v16 = a3;
    v17 = a4;
    while (1)
    {
      v19 = *a2;
      *a2 = *v17;
      a2 += 4;
      *v17 = v19;
      if (a2 - v15 == 4096)
      {
        v20 = *(result + 1);
        result += 8;
        v15 = v20;
        a2 = v20;
        v17 += 4;
        if (&v17[-*v16] == 4096)
        {
LABEL_22:
          v21 = *(v16 + 1);
          v16 += 8;
          v17 = v21;
        }
      }

      else
      {
        v17 += 4;
        if (&v17[-*v16] == 4096)
        {
          goto LABEL_22;
        }
      }

      if (a2 == a4 || v17 == a6)
      {
        return a3;
      }
    }
  }

LABEL_4:
  v8 = v7;
  v9 = v6;
  do
  {
    v10 = v9;
    v9 = v8;
    v8 = v10 % v8;
  }

  while (v8);
  v11 = v9 + (&a2[-*result] >> 2);
  if (v11 < 1)
  {
    v22 = 1023 - v11;
    v23 = 2046 - v11;
    if (1023 - v11 >= 0)
    {
      v23 = 1023 - v11;
    }

    v12 = &result[-8 * (v23 >> 10)];
    v13 = *v12;
    v24 = v22 & 0x3FF;
    v26 = -v22;
    v25 = v26 < 0;
    v27 = v26 & 0x3FF;
    if (!v25)
    {
      v24 = -v27;
    }

    v14 = &v13[4 * (1023 - v24)];
    if (v14 == a2)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v12 = &result[8 * (v11 >> 10)];
    v13 = *v12;
    v14 = (*v12 + 4 * (v11 & 0x3FF));
    if (v14 == a2)
    {
      goto LABEL_82;
    }
  }

  if (!v6)
  {
LABEL_66:
    if (v14 == v13)
    {
      v50 = *(v12 - 1);
      v12 -= 8;
      v13 = v50;
      v14 = v50 + 4096;
    }

    v52 = *(v14 - 1);
    v14 -= 4;
    v51 = v52;
    v53 = v14;
    v54 = v14;
    v55 = v12;
    while (1)
    {
      v56 = v54;
      *v53 = *v54;
      if (a6 != v54)
      {
        v57 = (&a6[-*a5] >> 2) + ((a5 - v55) << 7);
        v58 = &v54[-*v55] >> 2;
        if (v57 - v58 > 0)
        {
          goto LABEL_70;
        }

        if (v57 != v58)
        {
          v59 = (&a2[-*result] >> 2) - (v57 - v58);
          if (v59 <= 0)
          {
            v60 = 2046 - v59;
            if (1023 - v59 >= 0)
            {
              v60 = 1023 - v59;
            }

            v55 = &result[-8 * (v60 >> 10)];
            if (v59 - 1023 >= 0)
            {
              v61 = -((v59 - 1023) & 0x3FF);
            }

            else
            {
              v61 = (1023 - v59) & 0x3FF;
            }

            v54 = (*v55 + 4 * (1023 - v61));
          }

          else
          {
            v55 = &result[8 * (v59 >> 10)];
            v54 = (*v55 + 4 * (v59 & 0x3FF));
          }

          goto LABEL_70;
        }
      }

      v54 = a2;
      v55 = result;
LABEL_70:
      v53 = v56;
      if (v54 == v14)
      {
        *v56 = v51;
        if (v14 == a2)
        {
          goto LABEL_82;
        }

        goto LABEL_66;
      }
    }
  }

  while (2)
  {
    if (v14 == v13)
    {
      v33 = *(v12 - 1);
      v12 -= 8;
      v13 = v33;
      v14 = v33 + 4092;
      v28 = *(v33 + 1023);
      v30 = v6 + 1023;
      if (v6 + 1023 >= 1)
      {
        goto LABEL_33;
      }

LABEL_35:
      v34 = 2046 - v30;
      if (1023 - v30 >= 0)
      {
        v34 = 1023 - v30;
      }

      v31 = &v12[-8 * (v34 >> 10)];
      if (v30 - 1023 >= 0)
      {
        v35 = -((v30 - 1023) & 0x3FF);
      }

      else
      {
        v35 = (1023 - v30) & 0x3FF;
      }

      v32 = (*v31 + 4 * (1023 - v35));
      goto LABEL_41;
    }

    v29 = *(v14 - 1);
    v14 -= 4;
    v28 = v29;
    v30 = v6 + ((v14 - v13) >> 2);
    if (v30 < 1)
    {
      goto LABEL_35;
    }

LABEL_33:
    v31 = &v12[8 * (v30 >> 10)];
    v32 = (*v31 + 4 * (v30 & 0x3FF));
LABEL_41:
    v36 = v14;
    do
    {
      v37 = v32;
      *v36 = *v32;
      if (a6 == v32)
      {
        v39 = v6;
        v38 = v6 == 0;
        if (v6 >= 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v41 = (&a6[-*a5] >> 2) + ((a5 - v31) << 7) - (&v32[-*v31] >> 2);
        v42 = __OFSUB__(v6, v41);
        v39 = v6 - v41;
        v38 = v39 == 0;
        if (v39 < 0 == v42)
        {
LABEL_46:
          if (v38)
          {
            v32 = a2;
            v31 = result;
            goto LABEL_43;
          }

          v40 = v39 + (&a2[-*result] >> 2);
          if (v40 >= 1)
          {
            v31 = &result[8 * (v40 >> 10)];
LABEL_53:
            v32 = (*v31 + 4 * (v40 & 0x3FF));
            goto LABEL_43;
          }

          v43 = 1023 - v40;
          v45 = 2046 - v40;
          if (1023 - v40 >= 0)
          {
            v45 = 1023 - v40;
          }

          v31 = &result[-8 * (v45 >> 10)];
          goto LABEL_60;
        }
      }

      v40 = v6 + (&v37[-*v31] >> 2);
      if (v40 >= 1)
      {
        v31 += 8 * (v40 >> 10);
        goto LABEL_53;
      }

      v43 = 1023 - v40;
      v44 = 2046 - v40;
      if (v43 >= 0)
      {
        v44 = v43;
      }

      v31 -= 8 * (v44 >> 10);
LABEL_60:
      v46 = v43 & 0x3FF;
      v47 = -v43;
      v25 = v47 < 0;
      v48 = v47 & 0x3FF;
      if (v25)
      {
        v49 = v46;
      }

      else
      {
        v49 = -v48;
      }

      v32 = (*v31 + 4 * (1023 - v49));
LABEL_43:
      v36 = v37;
    }

    while (v32 != v14);
    *v37 = v28;
    if (v14 != a2)
    {
      continue;
    }

    break;
  }

LABEL_82:
  if (v7)
  {
    v62 = v7 + (&a2[-*result] >> 2);
    if (v62 >= 1)
    {
      return &result[8 * (v62 >> 10)];
    }

    v63 = 1023 - v62;
    v64 = 2046 - v62;
    if (v63 >= 0)
    {
      v64 = v63;
    }

    result -= 8 * (v64 >> 10);
  }

  return result;
}