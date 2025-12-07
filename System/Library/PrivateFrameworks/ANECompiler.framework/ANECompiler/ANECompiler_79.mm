void sub_23CD21B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v31 = a27;
    if (!a27)
    {
LABEL_3:
      v32 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v31 = a27;
    if (!a27)
    {
      goto LABEL_3;
    }
  }

  operator delete(v31);
  v32 = a24;
  if (!a24)
  {
LABEL_4:
    v33 = a21;
    if (!a21)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v32);
  v33 = a21;
  if (!a21)
  {
LABEL_5:
    v34 = a18;
    if (!a18)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v33);
  v34 = a18;
  if (!a18)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(v34);
  _Unwind_Resume(exception_object);
}

void sub_23CD21C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Unwind_Resume(a1);
}

void sub_23CD21C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Unwind_Resume(a1);
}

void sub_23CD21C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Unwind_Resume(a1);
}

void sub_23CD21C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Unwind_Resume(a1);
}

void sub_23CD21C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Unwind_Resume(a1);
}

void sub_23CD21C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Unwind_Resume(a1);
}

void sub_23CD21C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Unwind_Resume(a1);
}

void sub_23CD21C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Unwind_Resume(a1);
}

void sub_23CD21CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::CliqueDecomposition::~CliqueDecomposition(operations_research::sat::_anonymous_namespace_::CliqueDecomposition *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    *(this + 9) = v5;
    operator delete(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::destroy_slots(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (*a1 > 6uLL)
  {
    v9 = a1[1];
    if (v9 >= 2)
    {
      v10 = v9 >> 1;
      do
      {
        v11 = *v2 & 0x8080808080808080;
        if (v11 != 0x8080808080808080)
        {
          v12 = v11 ^ 0x8080808080808080;
          do
          {
            v13 = v1 + 48 * (__clz(__rbit64(v12)) >> 3);
            v14 = *(v13 + 24);
            if (v14)
            {
              *(v13 + 32) = v14;
              operator delete(v14);
            }

            v15 = *v13;
            if (*v13)
            {
              *(v13 + 8) = v15;
              operator delete(v15);
            }

            --v10;
            v12 &= v12 - 1;
          }

          while (v12);
        }

        ++v2;
        v1 += 384;
      }

      while (v10);
    }
  }

  else
  {
    v3 = *(v2 + *a1) & 0x8080808080808080;
    if (v3 != 0x8080808080808080)
    {
      v4 = v1 - 48;
      v5 = v3 ^ 0x8080808080808080;
      do
      {
        v6 = v4 + 48 * (__clz(__rbit64(v5)) >> 3);
        v7 = *(v6 + 24);
        if (v7)
        {
          *(v6 + 32) = v7;
          operator delete(v7);
        }

        v8 = *v6;
        if (*v6)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v5 &= v5 - 1;
      }

      while (v5);
    }
  }
}

void absl::lts_20240722::inlined_vector_internal::Storage<long long,2ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(void *a1, void *a2)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  operator new();
}

double std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::FullyCompressTuplesRecursive(absl::lts_20240722::Span<long long const>,absl::lts_20240722::Span<std::vector<long long>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>> *)::TempData *,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2;
  v8 = (a2 - 4);
  v304 = a2 - 3;
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = (v7 - v9) >> 5;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          return *&v81;
        case 4:
          return *&v81;
        case 5:
          return *&v81;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return *&v81;
      }

      v7 = a2;
      if (v10 == 2)
      {
        v140 = a2 - 4;
        v139 = *(a2 - 4);
        v141 = (a2 - 3);
        if (v139)
        {
          v142 = *(a2 - 3);
        }

        else
        {
          v142 = a2 - 3;
        }

        v143 = *v9;
        v144 = v9 + 1;
        v145 = v9[1];
        if ((*v9 & 1) == 0)
        {
          v145 = v9 + 1;
        }

        v146 = (v145 + ((4 * v143) & 0xFFFFFFFFFFFFFFF8));
        if ((4 * v143) >> 3 >= (4 * v139) >> 3)
        {
          v147 = (4 * v139) >> 3;
        }

        else
        {
          v147 = (4 * v143) >> 3;
        }

        if ((v147 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v148 = 8 * v147;
          v149 = v142;
          v150 = &v142[v147];
          while (*v149 == *v145)
          {
            ++v149;
            ++v145;
            v148 -= 8;
            if (!v148)
            {
              v149 = v150;
              break;
            }
          }
        }

        else
        {
          v149 = v142;
        }

        if (v145 != v146 && (v149 == (v142 + ((4 * v139) & 0xFFFFFFFFFFFFFFF8)) || *v149 < *v145))
        {
          *__p = *v144;
          *v9 = 0;
          v299 = *(v9 + 6);
          v300 = *v140;
          if (v9 == v140)
          {
            v302 = *(a2 - 2);
            v306 = a2 - 1;
            *(v9 + 6) = v302;
            if (v300)
            {
              operator delete(*v141);
            }

            v301 = v306;
          }

          else
          {
            *v9 = v300;
            *v144 = *v141;
            v301 = a2 - 1;
            *(v9 + 6) = *(a2 - 2);
          }

          *v140 = v143;
          *&v81 = *__p;
          *v141 = *__p;
          *v301 = v299;
        }

        return *&v81;
      }
    }

    if (v10 <= 23)
    {
      if (a4)
      {
        if (v9 == v7)
        {
          return *&v81;
        }

        v151 = v9 + 4;
        if (v9 + 4 == a2)
        {
          return *&v81;
        }

        v152 = v9;
        while (1)
        {
          v154 = v152;
          v152 = v151;
          v155 = v154[4];
          if (v155)
          {
            v156 = v154[5];
          }

          else
          {
            v156 = v154 + 5;
          }

          v157 = *v154;
          v158 = (v154 + 1);
          v159 = v154[1];
          if ((*v154 & 1) == 0)
          {
            v159 = v154 + 1;
          }

          if ((4 * v157) >> 3 >= (4 * v155) >> 3)
          {
            v160 = (4 * v155) >> 3;
          }

          else
          {
            v160 = (4 * v157) >> 3;
          }

          if ((v160 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v161 = 8 * v160;
            v162 = v159;
            v163 = v156;
            v164 = &v156[v160];
            do
            {
              if (*v163 != *v162)
              {
                goto LABEL_294;
              }

              ++v163;
              ++v162;
              v161 -= 8;
            }

            while (v161);
            v163 = v164;
LABEL_294:
            v165 = (v159 + ((4 * v157) & 0xFFFFFFFFFFFFFFF8));
            v153 = a2;
            if (v162 == v165)
            {
              goto LABEL_280;
            }
          }

          else
          {
            v162 = v159;
            v163 = v156;
            v166 = v159 == (v159 + ((4 * v157) & 0xFFFFFFFFFFFFFFF8));
            v153 = a2;
            if (v166)
            {
              goto LABEL_280;
            }
          }

          if (v163 != (v156 + ((4 * v155) & 0xFFFFFFFFFFFFFFF8)) && *v163 >= *v162)
          {
            goto LABEL_280;
          }

          *__p = v154[4];
          *&__p[8] = *(v154 + 5);
          v310 = *(v154 + 14);
          v154[4] = *v154;
          v81 = *v158;
          *(v152 + 1) = *v158;
          *v154 = 0;
          *(v152 + 6) = *(v154 + 6);
          v167 = v9;
          if (v154 == v9)
          {
            goto LABEL_320;
          }

          v168 = v154;
          do
          {
            v170 = *(v168 - 4);
            v168 -= 4;
            v169 = v170;
            if (__p[0])
            {
              v171 = *&__p[8];
            }

            else
            {
              v171 = &__p[8];
            }

            v172 = (v168 + 1);
            v173 = v168[1];
            if ((v169 & 1) == 0)
            {
              v173 = v168 + 1;
            }

            if ((4 * v169) >> 3 >= (4 * *__p) >> 3)
            {
              v174 = (4 * *__p) >> 3;
            }

            else
            {
              v174 = (4 * v169) >> 3;
            }

            if ((v174 & 0x1FFFFFFFFFFFFFFFLL) != 0)
            {
              v175 = 8 * v174;
              v176 = v173;
              v177 = v171;
              v178 = &v171[8 * v174];
              do
              {
                if (*v177 != *v176)
                {
                  goto LABEL_316;
                }

                ++v177;
                ++v176;
                v175 -= 8;
              }

              while (v175);
              v177 = v178;
            }

            else
            {
              v176 = v173;
              v177 = v171;
            }

LABEL_316:
            if (v176 == (v173 + ((4 * v169) & 0xFFFFFFFFFFFFFFF8)) || v177 != &v171[(4 * *__p) & 0xFFFFFFFFFFFFFFF8] && *v177 >= *v176)
            {
              v167 = v154;
LABEL_320:
              if (v167 != __p)
              {
                goto LABEL_321;
              }

LABEL_324:
              v179 = __p[0];
              *(v167 + 6) = v310;
              if (v179)
              {
                operator delete(*&__p[8]);
              }

              goto LABEL_279;
            }

            *v154 = v169;
            v81 = *v172;
            *(v154 + 1) = *v172;
            *(v154 - 4) = 0;
            *(v154 + 6) = *(v154 - 2);
            v154 = v168;
          }

          while (v168 != v9);
          v167 = v9;
          if (v9 == __p)
          {
            goto LABEL_324;
          }

LABEL_321:
          if (*v167)
          {
            operator delete(v167[1]);
          }

          *v167 = *__p;
          *&v81 = *&__p[8];
          *(v167 + 1) = *&__p[8];
          *__p = 0;
          *(v167 + 6) = v310;
LABEL_279:
          v153 = a2;
LABEL_280:
          v151 = v152 + 4;
          if (v152 + 4 == v153)
          {
            return *&v81;
          }
        }
      }

      if (v9 == v7)
      {
        return *&v81;
      }

      v274 = v9 + 4;
      if (v9 + 4 == a2)
      {
        return *&v81;
      }

      while (2)
      {
        v275 = a1;
        a1 = v274;
        v276 = v275[4];
        v277 = v275[5];
        if ((v276 & 1) == 0)
        {
          v277 = v275 + 5;
        }

        v278 = *v275;
        v279 = v275 + 1;
        if (*v275)
        {
          v279 = v275[1];
        }

        if ((4 * v278) >> 3 >= (4 * v276) >> 3)
        {
          v280 = (4 * v276) >> 3;
        }

        else
        {
          v280 = (4 * v278) >> 3;
        }

        if ((v280 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v281 = 8 * v280;
          v282 = v279;
          v283 = v277;
          v284 = &v277[v280];
          do
          {
            if (*v283 != *v282)
            {
              goto LABEL_513;
            }

            ++v283;
            ++v282;
            v281 -= 8;
          }

          while (v281);
          v283 = v284;
LABEL_513:
          v285 = a2;
          if (v282 == (v279 + ((4 * v278) & 0xFFFFFFFFFFFFFFF8)))
          {
            goto LABEL_500;
          }

LABEL_516:
          if (v283 == (v277 + ((4 * v276) & 0xFFFFFFFFFFFFFFF8)) || *v283 < *v282)
          {
            *__p = v275[4];
            *&__p[8] = *(v275 + 5);
            *a1 = 0;
            v310 = *(v275 + 14);
            v286 = *v275;
            v287 = a1;
            do
            {
              v288 = v287;
              v287 = v275;
              *v288 = v286;
              v81 = *(v275 + 1);
              *(v288 + 1) = v81;
              *v275 = 0;
              *(v288 + 6) = *(v275 + 6);
              v289 = *(v275 - 4);
              v275 -= 4;
              v286 = v289;
              v291 = __p[0];
              v290 = *&__p[8];
              if (__p[0])
              {
                v292 = *&__p[8];
              }

              else
              {
                v292 = &__p[8];
              }

              v293 = *(v287 - 3);
              if ((v286 & 1) == 0)
              {
                v293 = v287 - 3;
              }

              if ((4 * v286) >> 3 >= (4 * *__p) >> 3)
              {
                v294 = (4 * *__p) >> 3;
              }

              else
              {
                v294 = (4 * v286) >> 3;
              }

              if ((v294 & 0x1FFFFFFFFFFFFFFFLL) != 0)
              {
                v295 = 8 * v294;
                v296 = v293;
                v297 = v292;
                v298 = &v292[v294];
                do
                {
                  if (*v297 != *v296)
                  {
                    goto LABEL_533;
                  }

                  ++v297;
                  ++v296;
                  v295 -= 8;
                }

                while (v295);
                v297 = v298;
              }

              else
              {
                v296 = v293;
                v297 = v292;
              }

LABEL_533:
              ;
            }

            while (v296 != (v293 + ((4 * v286) & 0xFFFFFFFFFFFFFFF8)) && (v297 == (v292 + ((4 * *__p) & 0xFFFFFFFFFFFFFFF8)) || *v297 < *v296));
            if (v287 == __p)
            {
              *(v287 + 6) = v310;
              if (v291)
              {
                operator delete(v290);
              }
            }

            else
            {
              *v287 = *__p;
              *&v81 = *&__p[8];
              *(v287 + 1) = *&__p[8];
              *__p = 0;
              *(v287 + 6) = v310;
            }
          }
        }

        else
        {
          v282 = v279;
          v283 = v277;
          v285 = a2;
          if (v279 != (v279 + ((4 * v278) & 0xFFFFFFFFFFFFFFF8)))
          {
            goto LABEL_516;
          }
        }

LABEL_500:
        v274 = a1 + 4;
        if (a1 + 4 == v285)
        {
          return *&v81;
        }

        continue;
      }
    }

    if (!a3)
    {
      break;
    }

    v12 = &v9[4 * (v10 >> 1)];
    if (v10 < 0x81)
    {
      --a3;
      v17 = *a1;
      v7 = a2;
      if (a4)
      {
        goto LABEL_30;
      }

LABEL_15:
      v18 = *(a1 - 4);
      if (v18)
      {
        v19 = *(a1 - 3);
      }

      else
      {
        v19 = a1 - 3;
      }

      v20 = v17 & 1;
      v21 = (a1 + 1);
      if (v17)
      {
        v22 = a1[1];
      }

      else
      {
        v22 = a1 + 1;
      }

      v23 = v17 >> 1;
      v24 = (8 * (v17 >> 1)) >> 3;
      if (v24 >= (4 * v18) >> 3)
      {
        v25 = (4 * v18) >> 3;
      }

      else
      {
        v25 = (8 * (v17 >> 1)) >> 3;
      }

      if ((v25 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v26 = 8 * v25;
        v27 = v22;
        v28 = v19;
        v29 = &v19[v25];
        while (*v28 == *v27)
        {
          ++v28;
          ++v27;
          v26 -= 8;
          if (!v26)
          {
            v28 = v29;
            break;
          }
        }
      }

      else
      {
        v27 = v22;
        v28 = v19;
      }

      if (v27 != &v22[v23] && (v28 == (v19 + ((4 * v18) & 0xFFFFFFFFFFFFFFF8)) || *v28 < *v27))
      {
        goto LABEL_35;
      }

      *__p = v17;
      v81 = *v21;
      *&__p[8] = *v21;
      *a1 = 0;
      v310 = *(a1 + 6);
      if (v17)
      {
        v82 = *&__p[8];
      }

      else
      {
        v82 = &__p[8];
      }

      v83 = *v8;
      v84 = a2 - 3;
      v85 = *v304;
      if (*v8)
      {
        v84 = *v304;
      }

      if ((4 * v83) >> 3 >= v24)
      {
        v86 = v24;
      }

      else
      {
        v86 = (4 * v83) >> 3;
      }

      if ((v86 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v87 = 8 * v86;
        v88 = v84;
        v89 = v82;
        v90 = &v82[v86];
        while (*v89 == *v88)
        {
          ++v89;
          ++v88;
          v87 -= 8;
          if (!v87)
          {
            v89 = v90;
            break;
          }
        }
      }

      else
      {
        v88 = v84;
        v89 = v82;
      }

      v91 = &v82[v23];
      if (v88 != (v84 + ((4 * v83) & 0xFFFFFFFFFFFFFFF8)) && (v89 == v91 || *v89 < *v88))
      {
        v9 = a1;
        while (1)
        {
          while (1)
          {
            v93 = v9[4];
            v9 += 4;
            v92 = v93;
            v94 = v9 + 1;
            if (v93)
            {
              v94 = v9[1];
            }

            v95 = (4 * v92) >> 3 >= v24 ? v24 : (4 * v92) >> 3;
            if ((v95 & 0x1FFFFFFFFFFFFFFFLL) == 0)
            {
              break;
            }

            v96 = 8 * v95;
            v97 = v94;
            v98 = v82;
            v99 = &v82[v95];
            while (*v98 == *v97)
            {
              ++v98;
              ++v97;
              v96 -= 8;
              if (!v96)
              {
                v98 = v99;
                break;
              }
            }

            if (v97 != (v94 + ((4 * v92) & 0xFFFFFFFFFFFFFFF8)))
            {
              goto LABEL_167;
            }
          }

          v97 = v94;
          v98 = v82;
          if (v94 != (v94 + ((4 * v92) & 0xFFFFFFFFFFFFFFF8)))
          {
LABEL_167:
            if (v98 == v91 || *v98 < *v97)
            {
              goto LABEL_188;
            }
          }
        }
      }

      v9 = a1 + 4;
      v100 = a1;
      while (v9 < v7)
      {
        v103 = v100[5];
        v101 = v100 + 5;
        v102 = v103;
        v104 = *(v101 - 1);
        if ((v104 & 1) == 0)
        {
          v102 = v101;
        }

        v100 = v9;
        if ((4 * v104) >> 3 >= v24)
        {
          v105 = v24;
        }

        else
        {
          v105 = (4 * v104) >> 3;
        }

        if ((v105 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v106 = 8 * v105;
          v107 = v102;
          v108 = v82;
          v109 = &v82[v105];
          while (*v108 == *v107)
          {
            ++v108;
            ++v107;
            v106 -= 8;
            if (!v106)
            {
              v108 = v109;
              break;
            }
          }

          if (v107 == (v102 + ((4 * v104) & 0xFFFFFFFFFFFFFFF8)))
          {
            goto LABEL_171;
          }
        }

        else
        {
          v107 = v102;
          v108 = v82;
          if (v102 == (v102 + ((4 * v104) & 0xFFFFFFFFFFFFFFF8)))
          {
            goto LABEL_171;
          }
        }

        if (v108 == v91 || *v108 < *v107)
        {
          break;
        }

LABEL_171:
        v9 += 4;
      }

LABEL_188:
      v110 = v7;
      if (v9 < v7)
      {
        while (1)
        {
          if ((v83 & 1) == 0)
          {
            v85 = v7 - 3;
          }

          v111 = (4 * v83) >> 3 >= v24 ? v24 : (4 * v83) >> 3;
          if ((v111 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v112 = 8 * v111;
            v113 = v85;
            v114 = v82;
            v115 = &v82[v111];
            while (*v114 == *v113)
            {
              ++v114;
              ++v113;
              v112 -= 8;
              if (!v112)
              {
                v114 = v115;
                break;
              }
            }
          }

          else
          {
            v113 = v85;
            v114 = v82;
          }

          v110 = v7 - 4;
          if (v113 == (v85 + ((4 * v83) & 0xFFFFFFFFFFFFFFF8)) || v114 != v91 && *v114 >= *v113)
          {
            break;
          }

          v83 = *(v7 - 8);
          v85 = *(v7 - 7);
          v7 -= 4;
        }
      }

      if (v9 < v110)
      {
        v116 = *v9;
        do
        {
          v308 = *(v9 + 1);
          *v9 = 0;
          v117 = *(v9 + 6);
          *v9 = *v110;
          *(v9 + 1) = *(v110 + 1);
          *(v9 + 6) = *(v110 + 6);
          *v110 = v116;
          *&v81 = v308;
          *(v110 + 1) = v308;
          *(v110 + 6) = v117;
          v118 = *&__p[8];
          if ((__p[0] & 1) == 0)
          {
            v118 = &__p[8];
          }

          v119 = (v118 + ((4 * *__p) & 0xFFFFFFFFFFFFFFF8));
          v120 = (4 * *__p) >> 3;
          do
          {
            do
            {
              while (1)
              {
                v121 = v9[4];
                v9 += 4;
                v116 = v121;
                v122 = v9 + 1;
                if (v121)
                {
                  v122 = v9[1];
                }

                v123 = (4 * v116) >> 3 >= v120 ? (4 * *__p) >> 3 : (4 * v116) >> 3;
                if ((v123 & 0x1FFFFFFFFFFFFFFFLL) != 0)
                {
                  break;
                }

                v125 = v122;
                v126 = v118;
                if (v122 != (v122 + ((4 * v116) & 0xFFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_224;
                }
              }

              v124 = 8 * v123;
              v125 = v122;
              v126 = v118;
              v127 = &v118[v123];
              while (*v126 == *v125)
              {
                ++v126;
                ++v125;
                v124 -= 8;
                if (!v124)
                {
                  v126 = v127;
                  break;
                }
              }
            }

            while (v125 == (v122 + ((4 * v116) & 0xFFFFFFFFFFFFFFF8)));
LABEL_224:
            ;
          }

          while (v126 != v119 && *v126 >= *v125);
          do
          {
            v129 = *(v110 - 4);
            v110 -= 4;
            v128 = v129;
            v130 = v110 + 1;
            if (v129)
            {
              v130 = v110[1];
            }

            if ((4 * v128) >> 3 >= v120)
            {
              v131 = (4 * *__p) >> 3;
            }

            else
            {
              v131 = (4 * v128) >> 3;
            }

            if ((v131 & 0x1FFFFFFFFFFFFFFFLL) != 0)
            {
              v132 = 8 * v131;
              v133 = v130;
              v134 = v118;
              v135 = &v118[v131];
              while (*v134 == *v133)
              {
                ++v134;
                ++v133;
                v132 -= 8;
                if (!v132)
                {
                  v134 = v135;
                  break;
                }
              }
            }

            else
            {
              v133 = v130;
              v134 = v118;
            }
          }

          while (v133 != (v130 + ((4 * v128) & 0xFFFFFFFFFFFFFFF8)) && (v134 == v119 || *v134 < *v133));
        }

        while (v9 < v110);
      }

      v136 = v9 - 4;
      if (v9 - 4 != a1)
      {
        if (*a1)
        {
          operator delete(*v21);
        }

        *a1 = *(v9 - 4);
        v81 = *(v9 - 3);
        *v21 = v81;
        *(v9 - 4) = 0;
        *(a1 + 6) = *(v9 - 2);
      }

      if (v136 == __p)
      {
        v138 = __p[0];
        *(v9 - 2) = v310;
        v7 = a2;
        if (v138)
        {
          operator delete(*&__p[8]);
        }

        a4 = 0;
      }

      else
      {
        if (*v136)
        {
          operator delete(*(v9 - 3));
        }

        *(v9 - 4) = *__p;
        *&v81 = *&__p[8];
        *(v9 - 3) = *&__p[8];
        *(v9 - 2) = v310;
        v7 = a2;
        a4 = 0;
      }
    }

    else
    {
      v13 = 4 * (v10 >> 1);
      v14 = *a1;
      *__p = *(a1 + 1);
      *a1 = 0;
      v15 = *(a1 + 6);
      v16 = *v12;
      if ((v10 & 0xFFFFFFFFFFFFFFELL) != 0)
      {
        *a1 = v16;
        *(a1 + 1) = *(v12 + 1);
        *(a1 + 6) = *(v12 + 6);
      }

      else
      {
        *(a1 + 6) = *(v12 + 6);
        if (v16)
        {
          operator delete(v12[1]);
        }
      }

      *v12 = v14;
      *(v12 + 1) = *__p;
      *(v12 + 6) = v15;
      --a3;
      v17 = *a1;
      v7 = a2;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_30:
      v20 = v17 & 1;
      v23 = v17 >> 1;
      v24 = (4 * v17) >> 3;
LABEL_35:
      *__p = v17;
      *&__p[8] = *(a1 + 1);
      *a1 = 0;
      v310 = *(a1 + 6);
      v30 = *&__p[8];
      if (!v20)
      {
        v30 = &__p[8];
      }

      v31 = &v30[v23];
      v32 = a1;
      do
      {
        v33 = v32;
        v35 = v32[4];
        v32 += 4;
        v34 = v35;
        v36 = v32 + 1;
        if (v35)
        {
          v36 = v32[1];
        }

        if (v24 >= (4 * v34) >> 3)
        {
          v37 = (4 * v34) >> 3;
        }

        else
        {
          v37 = v24;
        }

        if ((v37 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v38 = 8 * v37;
          v39 = v30;
          v40 = v36;
          v41 = &v36[v37];
          while (*v40 == *v39)
          {
            ++v40;
            ++v39;
            v38 -= 8;
            if (!v38)
            {
              v40 = v41;
              break;
            }
          }
        }

        else
        {
          v39 = v30;
          v40 = v36;
        }
      }

      while (v39 != v31 && (v40 == (v36 + ((4 * v34) & 0xFFFFFFFFFFFFFFF8)) || *v40 < *v39));
      v42 = v7;
      if (v33 != a1)
      {
        while (1)
        {
          while (1)
          {
            v44 = *(v42 - 4);
            v42 -= 4;
            v43 = v44;
            v45 = v42 + 1;
            if (v44)
            {
              v45 = v42[1];
            }

            v46 = v24 >= (4 * v43) >> 3 ? (4 * v43) >> 3 : v24;
            if ((v46 & 0x1FFFFFFFFFFFFFFFLL) == 0)
            {
              break;
            }

            v47 = 8 * v46;
            v48 = v30;
            v49 = v45;
            v50 = &v45[v46];
            while (*v49 == *v48)
            {
              ++v49;
              ++v48;
              v47 -= 8;
              if (!v47)
              {
                v49 = v50;
                break;
              }
            }

            if (v48 != v31)
            {
              goto LABEL_66;
            }
          }

          v48 = v30;
          v49 = v45;
          if (v30 != v31)
          {
LABEL_66:
            if (v49 == (v45 + ((4 * v43) & 0xFFFFFFFFFFFFFFF8)) || *v49 < *v48)
            {
              goto LABEL_88;
            }
          }
        }
      }

      v42 = v7;
      if (v32 < v7)
      {
        v42 = v7;
        while (1)
        {
          v52 = *(v42 - 4);
          v42 -= 4;
          v51 = v52;
          v53 = v42 + 1;
          if (v52)
          {
            v53 = v42[1];
          }

          if (v24 >= (4 * v51) >> 3)
          {
            v54 = (4 * v51) >> 3;
          }

          else
          {
            v54 = v24;
          }

          if ((v54 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v55 = 8 * v54;
            v56 = v30;
            v57 = v53;
            v58 = &v53[v54];
            while (*v57 == *v56)
            {
              ++v57;
              ++v56;
              v55 -= 8;
              if (!v55)
              {
                v57 = v58;
                break;
              }
            }

            if (v56 == v31)
            {
              goto LABEL_71;
            }

LABEL_85:
            if (v57 == (v53 + ((4 * v51) & 0xFFFFFFFFFFFFFFF8)) || v32 >= v42 || *v57 < *v56)
            {
              break;
            }
          }

          else
          {
            v56 = v30;
            v57 = v53;
            if (v30 != v31)
            {
              goto LABEL_85;
            }

LABEL_71:
            if (v32 >= v42)
            {
              break;
            }
          }
        }
      }

LABEL_88:
      v9 = v32;
      if (v32 >= v42)
      {
        goto LABEL_124;
      }

      v59 = v42;
      while (2)
      {
        v307 = *(v9 + 1);
        *v9 = 0;
        v60 = *(v9 + 6);
        *v9 = *v59;
        *(v9 + 1) = *(v59 + 8);
        *(v9 + 6) = *(v59 + 24);
        *v59 = v34;
        *(v59 + 8) = v307;
        *(v59 + 24) = v60;
        v61 = *&__p[8];
        if ((__p[0] & 1) == 0)
        {
          v61 = &__p[8];
        }

        v62 = (v61 + ((4 * *__p) & 0xFFFFFFFFFFFFFFF8));
        v63 = (4 * *__p) >> 3;
        do
        {
          v64 = v9[4];
          v9 += 4;
          v34 = v64;
          v65 = v9 + 1;
          if (v64)
          {
            v65 = v9[1];
          }

          if (v63 >= (4 * v34) >> 3)
          {
            v66 = (4 * v34) >> 3;
          }

          else
          {
            v66 = (4 * *__p) >> 3;
          }

          if ((v66 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v67 = 8 * v66;
            v68 = v61;
            v69 = v65;
            v70 = &v65[v66];
            while (*v69 == *v68)
            {
              ++v69;
              ++v68;
              v67 -= 8;
              if (!v67)
              {
                v69 = v70;
                break;
              }
            }
          }

          else
          {
            v68 = v61;
            v69 = v65;
          }
        }

        while (v68 != v62 && (v69 == (v65 + ((4 * v34) & 0xFFFFFFFFFFFFFFF8)) || *v69 < *v68));
        do
        {
          do
          {
            while (1)
            {
              v72 = *(v59 - 32);
              v59 -= 32;
              v71 = v72;
              v73 = (v59 + 8);
              if (v72)
              {
                v73 = *(v59 + 8);
              }

              v74 = v63 >= (4 * v71) >> 3 ? (4 * v71) >> 3 : (4 * *__p) >> 3;
              if ((v74 & 0x1FFFFFFFFFFFFFFFLL) != 0)
              {
                break;
              }

              v76 = v61;
              v77 = v73;
              if (v61 != v62)
              {
                goto LABEL_121;
              }
            }

            v75 = 8 * v74;
            v76 = v61;
            v77 = v73;
            v78 = &v73[v74];
            while (*v77 == *v76)
            {
              ++v77;
              ++v76;
              v75 -= 8;
              if (!v75)
              {
                v77 = v78;
                break;
              }
            }
          }

          while (v76 == v62);
LABEL_121:
          ;
        }

        while (v77 != (v73 + ((4 * v71) & 0xFFFFFFFFFFFFFFF8)) && *v77 >= *v76);
        if (v9 < v59)
        {
          continue;
        }

        break;
      }

LABEL_124:
      v79 = v9 - 4;
      if (v9 - 4 != a1)
      {
        if (*a1)
        {
          operator delete(a1[1]);
        }

        *a1 = *(v9 - 4);
        *(a1 + 1) = *(v9 - 3);
        *(v9 - 4) = 0;
        *(a1 + 6) = *(v9 - 2);
      }

      if (v79 == __p)
      {
        v137 = __p[0];
        *(v9 - 2) = v310;
        if (v137)
        {
          operator delete(*&__p[8]);
        }
      }

      else
      {
        if (*v79)
        {
          operator delete(*(v9 - 3));
        }

        *(v9 - 4) = *__p;
        *(v9 - 3) = *&__p[8];
        *(v9 - 2) = v310;
      }

      if (v32 < v42)
      {
LABEL_135:
        a4 = 0;
      }

      else
      {
        {
          a2 = v9 - 4;
          if (v80)
          {
            return *&v81;
          }

          goto LABEL_1;
        }

        if (!v80)
        {
          goto LABEL_135;
        }
      }
    }
  }

  if (v9 == v7)
  {
    return *&v81;
  }

  v180 = v11 >> 1;
  v181 = v11 >> 1;
  while (2)
  {
    v182 = v181;
    v183 = 32 * v181;
    if (v180 < (32 * v181) >> 5)
    {
      goto LABEL_329;
    }

    v184 = (v183 >> 4) | 1;
    v185 = &a1[4 * v184];
    if ((v183 >> 4) + 2 < v10)
    {
      v186 = v185[4];
      v187 = *v185;
      v188 = v185 + 1;
      if (*v185)
      {
        v188 = v185[1];
      }

      v189 = v185 + 5;
      if (v186)
      {
        v189 = v185[5];
      }

      if ((4 * v186) >> 3 >= (4 * v187) >> 3)
      {
        v190 = (4 * v187) >> 3;
      }

      else
      {
        v190 = (4 * v186) >> 3;
      }

      if ((v190 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v191 = 8 * v190;
        v192 = v189;
        v193 = v188;
        v194 = &v188[v190];
        while (*v193 == *v192)
        {
          ++v193;
          ++v192;
          v191 -= 8;
          if (!v191)
          {
            v193 = v194;
            break;
          }
        }

        if (v192 == (v189 + ((4 * v186) & 0xFFFFFFFFFFFFFFF8)))
        {
          goto LABEL_350;
        }
      }

      else
      {
        v192 = v189;
        v193 = v188;
        if (v189 == (v189 + ((4 * v186) & 0xFFFFFFFFFFFFFFF8)))
        {
          goto LABEL_350;
        }
      }

      if (v193 == (v188 + ((4 * v187) & 0xFFFFFFFFFFFFFFF8)) || *v193 < *v192)
      {
        v185 += 4;
        v184 = (v183 >> 4) + 2;
      }
    }

LABEL_350:
    v195 = &a1[v183 / 8];
    v196 = *v185;
    if (*v185)
    {
      v197 = v185[1];
    }

    else
    {
      v197 = v185 + 1;
    }

    v198 = *v195;
    v199 = (v195 + 1);
    v200 = v195[1];
    if ((*v195 & 1) == 0)
    {
      v200 = v195 + 1;
    }

    if ((4 * v198) >> 3 >= (4 * v196) >> 3)
    {
      v201 = (4 * v196) >> 3;
    }

    else
    {
      v201 = (4 * v198) >> 3;
    }

    if ((v201 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v202 = 8 * v201;
      v203 = v200;
      v204 = v197;
      v205 = &v197[v201];
      while (*v204 == *v203)
      {
        ++v204;
        ++v203;
        v202 -= 8;
        if (!v202)
        {
          v204 = v205;
          break;
        }
      }

      if (v203 == (v200 + ((4 * v198) & 0xFFFFFFFFFFFFFFF8)))
      {
        goto LABEL_368;
      }

      goto LABEL_366;
    }

    v203 = v200;
    v204 = v197;
    if (v200 != (v200 + ((4 * v198) & 0xFFFFFFFFFFFFFFF8)))
    {
LABEL_366:
      if (v204 == (v197 + ((4 * v196) & 0xFFFFFFFFFFFFFFF8)) || *v204 < *v203)
      {
        goto LABEL_329;
      }
    }

LABEL_368:
    *__p = *v195;
    v81 = *v199;
    *&__p[8] = *v199;
    *v195 = 0;
    v310 = *(v195 + 6);
    while (1)
    {
      v206 = v185;
      if (v195 != v185)
      {
        if (*v195)
        {
          operator delete(v195[1]);
        }

        *v195 = *v206;
        v81 = *(v206 + 1);
        *(v195 + 1) = v81;
        *v206 = 0;
      }

      *(v195 + 6) = *(v206 + 6);
      if (v180 < v184)
      {
        break;
      }

      v207 = 2 * v184;
      v184 = (2 * v184) | 1;
      v185 = &a1[4 * v184];
      v208 = v207 + 2;
      if (v208 < v10)
      {
        v209 = v185[4];
        v210 = *v185;
        v211 = v185 + 1;
        if (*v185)
        {
          v211 = v185[1];
        }

        v212 = v185 + 5;
        if (v209)
        {
          v212 = v185[5];
        }

        if ((4 * v209) >> 3 >= (4 * v210) >> 3)
        {
          v213 = (4 * v210) >> 3;
        }

        else
        {
          v213 = (4 * v209) >> 3;
        }

        if ((v213 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v214 = 8 * v213;
          v215 = v212;
          v216 = v211;
          v217 = &v211[v213];
          while (*v216 == *v215)
          {
            ++v216;
            ++v215;
            v214 -= 8;
            if (!v214)
            {
              v216 = v217;
              break;
            }
          }

          if (v215 == (v212 + ((4 * v209) & 0xFFFFFFFFFFFFFFF8)))
          {
            goto LABEL_393;
          }

LABEL_390:
          if (v216 == (v211 + ((4 * v210) & 0xFFFFFFFFFFFFFFF8)) || *v216 < *v215)
          {
            v185 += 4;
            v184 = v208;
          }

          goto LABEL_393;
        }

        v215 = v212;
        v216 = v211;
        if (v212 != (v212 + ((4 * v209) & 0xFFFFFFFFFFFFFFF8)))
        {
          goto LABEL_390;
        }
      }

LABEL_393:
      v218 = v185 + 1;
      v219 = *v185;
      if (*v185)
      {
        v218 = v185[1];
      }

      if (__p[0])
      {
        v220 = *&__p[8];
      }

      else
      {
        v220 = &__p[8];
      }

      if ((4 * *__p) >> 3 >= (4 * v219) >> 3)
      {
        v221 = (4 * v219) >> 3;
      }

      else
      {
        v221 = (4 * *__p) >> 3;
      }

      if ((v221 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v222 = 8 * v221;
        v223 = v220;
        v224 = v218;
        v225 = &v218[v221];
        while (*v224 == *v223)
        {
          ++v224;
          ++v223;
          v222 -= 8;
          if (!v222)
          {
            v224 = v225;
            break;
          }
        }

        v195 = v206;
        if (v223 != (v220 + ((4 * *__p) & 0xFFFFFFFFFFFFFFF8)))
        {
          goto LABEL_409;
        }
      }

      else
      {
        v223 = v220;
        v224 = v218;
        v195 = v206;
        if (v220 != (v220 + ((4 * *__p) & 0xFFFFFFFFFFFFFFF8)))
        {
LABEL_409:
          if (v224 == (v218 + ((4 * v219) & 0xFFFFFFFFFFFFFFF8)))
          {
            break;
          }

          v195 = v206;
          if (*v224 < *v223)
          {
            break;
          }
        }
      }
    }

    if (v206 == __p)
    {
      v226 = __p[0];
      *(v206 + 6) = v310;
      if (v226)
      {
        operator delete(*&__p[8]);
      }
    }

    else
    {
      if (*v206)
      {
        operator delete(v206[1]);
      }

      *v206 = *__p;
      *&v81 = *&__p[8];
      *(v206 + 1) = *&__p[8];
      *(v206 + 6) = v310;
    }

LABEL_329:
    v181 = v182 - 1;
    if (v182)
    {
      continue;
    }

    break;
  }

  while (2)
  {
    v228 = 0;
    v229 = *a1;
    v230 = a1[1];
    v231 = a1[2];
    *a1 = 0;
    v232 = a1;
    v233 = *(a1 + 6);
    while (2)
    {
      v234 = &v232[4 * v228];
      v235 = v234 + 4;
      v236 = 2 * v228;
      v228 = (2 * v228) | 1;
      v237 = v236 + 2;
      if (v237 < v10)
      {
        v240 = v234[8];
        v238 = v234 + 8;
        v239 = v240;
        v241 = *(v238 - 4);
        v242 = v238 - 3;
        if (v241)
        {
          v242 = *(v238 - 3);
        }

        v243 = v238 + 1;
        if (v239)
        {
          v243 = v238[1];
        }

        if ((4 * v239) >> 3 >= (4 * v241) >> 3)
        {
          v244 = (4 * v241) >> 3;
        }

        else
        {
          v244 = (4 * v239) >> 3;
        }

        if ((v244 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v245 = 8 * v244;
          v246 = v243;
          v247 = v242;
          v248 = &v242[v244];
          while (*v247 == *v246)
          {
            ++v247;
            ++v246;
            v245 -= 8;
            if (!v245)
            {
              v247 = v248;
              break;
            }
          }

          if (v246 == (v243 + ((4 * v239) & 0xFFFFFFFFFFFFFFF8)))
          {
            goto LABEL_439;
          }
        }

        else
        {
          v246 = v243;
          v247 = v242;
          if (v243 == (v243 + ((4 * v239) & 0xFFFFFFFFFFFFFFF8)))
          {
            goto LABEL_439;
          }
        }

        if (v247 == (v242 + ((4 * v241) & 0xFFFFFFFFFFFFFFF8)) || *v247 < *v246)
        {
          v235 = v238;
          v228 = v237;
        }
      }

LABEL_439:
      if (v232 != v235)
      {
        if (*v232)
        {
          operator delete(v232[1]);
        }

        *v232 = *v235;
        v81 = *(v235 + 1);
        *(v232 + 1) = v81;
        *v235 = 0;
      }

      *(v232 + 6) = *(v235 + 6);
      v232 = v235;
      if (v228 <= ((v10 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    v249 = *v235;
    if (v235 == a2 - 4)
    {
      if (v249)
      {
        operator delete(v235[1]);
      }

      *v235 = v229;
      v235[1] = v230;
      v235[2] = v231;
      *(v235 + 6) = v233;
      goto LABEL_418;
    }

    if (v249)
    {
      operator delete(v235[1]);
    }

    *v235 = *(a2 - 4);
    v81 = *(a2 - 3);
    *(v235 + 1) = v81;
    *(v235 + 6) = *(a2 - 2);
    *(a2 - 4) = v229;
    *(a2 - 3) = v230;
    *(a2 - 2) = v231;
    *(a2 - 2) = v233;
    v250 = (v235 - a1 + 32) >> 5;
    v227 = v250 < 2;
    v251 = v250 - 2;
    if (v227)
    {
      goto LABEL_418;
    }

    v252 = (v235 + 1);
    v253 = v251 >> 1;
    v254 = &a1[4 * (v251 >> 1)];
    v255 = v254[1];
    v256 = *v254;
    if ((*v254 & 1) == 0)
    {
      v255 = v254 + 1;
    }

    v257 = *v235;
    v258 = v235[1];
    if ((*v235 & 1) == 0)
    {
      v258 = v235 + 1;
    }

    if ((4 * v257) >> 3 >= (4 * v256) >> 3)
    {
      v259 = (4 * v256) >> 3;
    }

    else
    {
      v259 = (4 * v257) >> 3;
    }

    if ((v259 & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      v261 = v258;
      v262 = v255;
      if (v258 == (v258 + ((4 * v257) & 0xFFFFFFFFFFFFFFF8)))
      {
        goto LABEL_418;
      }

      goto LABEL_465;
    }

    v260 = 8 * v259;
    v261 = v258;
    v262 = v255;
    v263 = &v255[v259];
    while (*v262 == *v261)
    {
      ++v262;
      ++v261;
      v260 -= 8;
      if (!v260)
      {
        v262 = v263;
        break;
      }
    }

    if (v261 != (v258 + ((4 * v257) & 0xFFFFFFFFFFFFFFF8)))
    {
LABEL_465:
      if (v262 == (v255 + ((4 * v256) & 0xFFFFFFFFFFFFFFF8)) || *v262 < *v261)
      {
        *__p = *v235;
        v81 = *v252;
        *&__p[8] = *v252;
        *v235 = 0;
        v310 = *(v235 + 6);
        while (1)
        {
          v264 = v254;
          if (v235 != v254)
          {
            if (*v235)
            {
              operator delete(v235[1]);
            }

            *v235 = *v264;
            v81 = *(v264 + 1);
            *(v235 + 1) = v81;
            *v264 = 0;
          }

          *(v235 + 6) = *(v264 + 6);
          if (!v253)
          {
            break;
          }

          v253 = (v253 - 1) >> 1;
          v254 = &a1[4 * v253];
          v265 = v254 + 1;
          v266 = *v254;
          if (*v254)
          {
            v265 = v254[1];
          }

          v267 = &__p[8];
          if (__p[0])
          {
            v267 = *&__p[8];
          }

          v268 = (4 * *__p) >> 3 >= (4 * v266) >> 3 ? (4 * v266) >> 3 : (4 * *__p) >> 3;
          if ((v268 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v269 = 8 * v268;
            v270 = v267;
            v271 = v265;
            v272 = &v265[v268];
            while (*v271 == *v270)
            {
              ++v271;
              ++v270;
              v269 -= 8;
              if (!v269)
              {
                v271 = v272;
                break;
              }
            }
          }

          else
          {
            v270 = v267;
            v271 = v265;
          }

          if (v270 == (v267 + ((4 * *__p) & 0xFFFFFFFFFFFFFFF8)))
          {
            break;
          }

          v235 = v264;
          if (v271 != (v265 + ((4 * v266) & 0xFFFFFFFFFFFFFFF8)))
          {
            v235 = v264;
            if (*v271 >= *v270)
            {
              break;
            }
          }
        }

        if (v264 == __p)
        {
          v273 = __p[0];
          *(v264 + 6) = v310;
          if (v273)
          {
            operator delete(*&__p[8]);
          }
        }

        else
        {
          if (*v264)
          {
            operator delete(v264[1]);
          }

          *v264 = *__p;
          *&v81 = *&__p[8];
          *(v264 + 1) = *&__p[8];
          *(v264 + 6) = v310;
        }
      }
    }

LABEL_418:
    a2 -= 4;
    v227 = v10-- <= 2;
    if (!v227)
    {
      continue;
    }

    return *&v81;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::FullyCompressTuplesRecursive(absl::lts_20240722::Span<long long const>,absl::lts_20240722::Span<std::vector<long long>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>> *)::TempData *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = (a2 + 1);
  if (*a2)
  {
    v5 = a2[1];
  }

  else
  {
    v5 = a2 + 1;
  }

  v6 = *a1;
  v7 = a1 + 1;
  if (*a1)
  {
    v8 = a1[1];
  }

  else
  {
    v8 = a1 + 1;
  }

  v9 = (4 * v3) & 0xFFFFFFFFFFFFFFF8;
  v10 = v6 >> 1;
  v11 = &v8[v6 >> 1];
  v12 = (4 * v3) >> 3;
  v13 = (8 * (v6 >> 1)) >> 3;
  if (v13 >= v12)
  {
    v14 = (4 * v3) >> 3;
  }

  else
  {
    v14 = (8 * (v6 >> 1)) >> 3;
  }

  if ((v14 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = 8 * v14;
    v16 = v5;
    v17 = &v5[v14];
    while (*v16 == *v8)
    {
      ++v16;
      ++v8;
      v15 -= 8;
      if (!v15)
      {
        v16 = v17;
        break;
      }
    }

    v18 = (v5 + v9);
    if (v8 == v11)
    {
LABEL_32:
      v26 = *a3;
      v27 = (a3 + 1);
      v28 = a3[1];
      if ((*a3 & 1) == 0)
      {
        v28 = a3 + 1;
      }

      if (v12 >= (4 * v26) >> 3)
      {
        v29 = (4 * v26) >> 3;
      }

      else
      {
        v29 = (4 * v3) >> 3;
      }

      if ((v29 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v30 = 8 * v29;
        v31 = v28;
        v32 = &v28[v29];
        while (*v31 == *v5)
        {
          ++v31;
          ++v5;
          v30 -= 8;
          if (!v30)
          {
            v31 = v32;
            break;
          }
        }

        if (v5 == v18)
        {
          return result;
        }
      }

      else
      {
        v31 = v28;
        if (v5 == v18)
        {
          return result;
        }
      }

      if (v31 == (v28 + ((4 * v26) & 0xFFFFFFFFFFFFFFF8)) || *v31 < *v5)
      {
        v88 = *v4;
        *a2 = 0;
        v33 = *(a2 + 6);
        v34 = *a3;
        if (a2 == a3)
        {
          *(a2 + 6) = *(a3 + 6);
          if (v34)
          {
            v76 = a2;
            v79 = a2 + 1;
            v71 = a1;
            v83 = a3;
            v64 = a3 + 1;
            v67 = a1 + 1;
            v62 = v3;
            v60 = v33;
            operator delete(*v27);
            v33 = v60;
            v3 = v62;
            v27 = v64;
            v7 = v67;
            a1 = v71;
            a2 = v76;
            v4 = v79;
            a3 = v83;
          }
        }

        else
        {
          *a2 = v34;
          *v4 = *v27;
          *(a2 + 6) = *(a3 + 6);
        }

        *a3 = v3;
        result = v88;
        *v27 = v88;
        *(a3 + 6) = v33;
        v36 = *a2;
        if (*a2)
        {
          v37 = a2[1];
        }

        else
        {
          v37 = v4;
        }

        v38 = *a1;
        v39 = a1[1];
        if ((*a1 & 1) == 0)
        {
          v39 = v7;
        }

        v40 = (v39 + ((4 * v38) & 0xFFFFFFFFFFFFFFF8));
        if ((4 * v38) >> 3 >= (4 * v36) >> 3)
        {
          v41 = (4 * v36) >> 3;
        }

        else
        {
          v41 = (4 * v38) >> 3;
        }

        if ((v41 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v42 = 8 * v41;
          v43 = v37;
          v44 = (v37 + 8 * v41);
          while (*v43 == *v39)
          {
            ++v43;
            ++v39;
            v42 -= 8;
            if (!v42)
            {
              v43 = v44;
              break;
            }
          }
        }

        else
        {
          v43 = v37;
        }

        if (v39 != v40 && (v43 == (v37 + ((4 * v36) & 0xFFFFFFFFFFFFFFF8)) || *v43 < *v39))
        {
          v91 = *v7;
          *a1 = 0;
          v57 = *(a1 + 6);
          v58 = *a2;
          if (a1 == a2)
          {
            *(a1 + 6) = *(a2 + 6);
            if (v58)
            {
              v78 = a2;
              v82 = v4;
              v86 = v38;
              v74 = v57;
              operator delete(*v4);
              v57 = v74;
              v38 = v86;
              a2 = v78;
              v4 = v82;
            }
          }

          else
          {
            *a1 = v58;
            *v7 = *v4;
            *(a1 + 6) = *(a2 + 6);
          }

          *a2 = v38;
          result = v91;
          *v4 = v91;
          *(a2 + 6) = v57;
        }
      }

      return result;
    }
  }

  else
  {
    v16 = v5;
    v18 = (v5 + v9);
    if (v8 == v11)
    {
      goto LABEL_32;
    }
  }

  if (v16 != v18 && *v16 >= *v8)
  {
    goto LABEL_32;
  }

  v19 = *a3;
  v21 = (a3 + 1);
  v20 = a3[1];
  if ((*a3 & 1) == 0)
  {
    v20 = a3 + 1;
  }

  if (v12 >= (4 * v19) >> 3)
  {
    v22 = (4 * v19) >> 3;
  }

  else
  {
    v22 = v12;
  }

  if ((v22 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = 8 * v22;
    v24 = v20;
    v25 = &v20[v22];
    while (*v24 == *v5)
    {
      ++v24;
      ++v5;
      v23 -= 8;
      if (!v23)
      {
        v24 = v25;
        break;
      }
    }

    if (v5 == v18)
    {
      goto LABEL_68;
    }

LABEL_63:
    if (v24 == (v20 + ((4 * v19) & 0xFFFFFFFFFFFFFFF8)) || *v24 < *v5)
    {
      v89 = *v7;
      *a1 = 0;
      v45 = *(a1 + 6);
      v46 = *a3;
      if (a1 == a3)
      {
        *(a1 + 6) = *(a3 + 6);
        if (v46)
        {
          v85 = a3;
          v69 = v6;
          v73 = a3 + 1;
          v81 = v45;
          operator delete(*v21);
          v45 = v81;
          v6 = v69;
          v21 = v73;
          a3 = v85;
        }
      }

      else
      {
        *a1 = v46;
        *v7 = *v21;
        *(a1 + 6) = *(a3 + 6);
      }

      *a3 = v6;
      result = v89;
      *v21 = v89;
      *(a3 + 6) = v45;
      return result;
    }

    goto LABEL_68;
  }

  v24 = v20;
  if (v5 != v18)
  {
    goto LABEL_63;
  }

LABEL_68:
  v90 = *v7;
  *a1 = 0;
  v47 = *(a1 + 6);
  v48 = *a2;
  if (a1 == a2)
  {
    *(a1 + 6) = *(a2 + 6);
    if (v48)
    {
      v77 = a2;
      v84 = a3;
      v80 = a2 + 1;
      v68 = v6;
      v72 = a3 + 1;
      v61 = v6 >> 1;
      v63 = (8 * (v6 >> 1)) >> 3;
      v65 = v47;
      operator delete(*v4);
      v47 = v65;
      v10 = v61;
      v13 = v63;
      v6 = v68;
      v21 = v72;
      a2 = v77;
      v4 = v80;
      a3 = v84;
    }
  }

  else
  {
    *a1 = v48;
    *v7 = *v4;
    *(a1 + 6) = *(a2 + 6);
  }

  *a2 = v6;
  result = v90;
  *v4 = v90;
  *(a2 + 6) = v47;
  v49 = *a3;
  if (*a3)
  {
    v50 = a3[1];
  }

  else
  {
    v50 = v21;
  }

  v51 = a2[1];
  if ((v6 & 1) == 0)
  {
    v51 = v4;
  }

  v52 = &v51[v10];
  if (v13 >= (4 * v49) >> 3)
  {
    v53 = (4 * v49) >> 3;
  }

  else
  {
    v53 = v13;
  }

  if ((v53 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v54 = 8 * v53;
    v55 = v50;
    v56 = (v50 + 8 * v53);
    while (*v55 == *v51)
    {
      ++v55;
      ++v51;
      v54 -= 8;
      if (!v54)
      {
        v55 = v56;
        break;
      }
    }
  }

  else
  {
    v55 = v50;
  }

  if (v51 != v52 && (v55 == (v50 + ((4 * v49) & 0xFFFFFFFFFFFFFFF8)) || *v55 < *v51))
  {
    v92 = *v4;
    *a2 = 0;
    v59 = *a3;
    if (a2 == a3)
    {
      *(a2 + 6) = *(a3 + 6);
      if (v59)
      {
        v87 = a3;
        v70 = v6;
        v75 = v21;
        v66 = v47;
        operator delete(*v21);
        v47 = v66;
        v6 = v70;
        v21 = v75;
        a3 = v87;
      }
    }

    else
    {
      *a2 = v59;
      *v4 = *v21;
      *(a2 + 6) = *(a3 + 6);
    }

    *a3 = v6;
    result = v92;
    *v21 = v92;
    *(a3 + 6) = v47;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::FullyCompressTuplesRecursive(absl::lts_20240722::Span<long long const>,absl::lts_20240722::Span<std::vector<long long>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>> *)::TempData *,0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v9 = *a4;
  v10 = (a4 + 1);
  if (*a4)
  {
    v11 = a4[1];
  }

  else
  {
    v11 = a4 + 1;
  }

  v12 = *a3;
  v14 = (a3 + 8);
  v13 = *(a3 + 8);
  if ((*a3 & 1) == 0)
  {
    v13 = (a3 + 8);
  }

  v15 = (v13 + ((4 * v12) & 0xFFFFFFFFFFFFFFF8));
  if ((4 * v12) >> 3 >= (4 * v9) >> 3)
  {
    v16 = (4 * v9) >> 3;
  }

  else
  {
    v16 = (4 * v12) >> 3;
  }

  if ((v16 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v18 = v11;
    if (v13 == v15)
    {
      return result;
    }

LABEL_17:
    if (v18 != (v11 + ((4 * v9) & 0xFFFFFFFFFFFFFFF8)) && *v18 >= *v13)
    {
      return result;
    }

    v50 = *v14;
    *a3 = 0;
    v20 = *(a3 + 24);
    v21 = *a4;
    if (a3 == a4)
    {
      *(a3 + 24) = *(a4 + 6);
      if (v21)
      {
        v46 = v12;
        v47 = v20;
        operator delete(*v10);
        v20 = v47;
        v12 = v46;
        v10 = (a4 + 1);
      }
    }

    else
    {
      *a3 = v21;
      *v14 = *v10;
      *(a3 + 24) = *(a4 + 6);
    }

    *a4 = v12;
    result = v50;
    *v10 = v50;
    *(a4 + 6) = v20;
    v22 = *a3;
    if (*a3)
    {
      v23 = *(a3 + 8);
    }

    else
    {
      v23 = (a3 + 8);
    }

    v24 = *a2;
    v26 = (a2 + 8);
    v25 = *(a2 + 8);
    if ((*a2 & 1) == 0)
    {
      v25 = (a2 + 8);
    }

    v27 = (v25 + ((4 * v24) & 0xFFFFFFFFFFFFFFF8));
    if ((4 * v24) >> 3 >= (4 * v22) >> 3)
    {
      v28 = (4 * v22) >> 3;
    }

    else
    {
      v28 = (4 * v24) >> 3;
    }

    if ((v28 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v29 = 8 * v28;
      v30 = v23;
      v31 = &v23[v28];
      while (*v30 == *v25)
      {
        ++v30;
        ++v25;
        v29 -= 8;
        if (!v29)
        {
          v30 = v31;
          break;
        }
      }

      if (v25 == v27)
      {
        return result;
      }
    }

    else
    {
      v30 = v23;
      if (v25 == v27)
      {
        return result;
      }
    }

    if (v30 == (v23 + ((4 * v22) & 0xFFFFFFFFFFFFFFF8)) || *v30 < *v25)
    {
      v51 = *v26;
      *a2 = 0;
      v32 = *(a2 + 24);
      v33 = *a3;
      if (a2 == a3)
      {
        *(a2 + 24) = *(a3 + 24);
        if (v33)
        {
          v49 = v24;
          v48 = v32;
          operator delete(*v14);
          v32 = v48;
          v24 = v49;
        }
      }

      else
      {
        *a2 = v33;
        *v26 = *v14;
        *(a2 + 24) = *(a3 + 24);
      }

      *a3 = v24;
      result = v51;
      *v14 = v51;
      *(a3 + 24) = v32;
      v34 = *a2;
      if (*a2)
      {
        v35 = *(a2 + 8);
      }

      else
      {
        v35 = (a2 + 8);
      }

      v36 = *a1;
      v37 = (a1 + 8);
      v38 = *(a1 + 8);
      if ((*a1 & 1) == 0)
      {
        v38 = (a1 + 8);
      }

      v39 = (v38 + ((4 * v36) & 0xFFFFFFFFFFFFFFF8));
      if ((4 * v36) >> 3 >= (4 * v34) >> 3)
      {
        v40 = (4 * v34) >> 3;
      }

      else
      {
        v40 = (4 * v36) >> 3;
      }

      if ((v40 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v41 = 8 * v40;
        v42 = v35;
        v43 = &v35[v40];
        while (*v42 == *v38)
        {
          ++v42;
          ++v38;
          v41 -= 8;
          if (!v41)
          {
            v42 = v43;
            break;
          }
        }
      }

      else
      {
        v42 = v35;
      }

      if (v38 != v39 && (v42 == (v35 + ((4 * v34) & 0xFFFFFFFFFFFFFFF8)) || *v42 < *v38))
      {
        v52 = *v37;
        *a1 = 0;
        v44 = *(a1 + 24);
        v45 = *a2;
        if (a1 == a2)
        {
          *(a1 + 24) = *(a2 + 24);
          if (v45)
          {
            operator delete(*v26);
          }
        }

        else
        {
          *a1 = v45;
          *v37 = *v26;
          *(a1 + 24) = *(a2 + 24);
        }

        *a2 = v36;
        result = v52;
        *v26 = v52;
        *(a2 + 24) = v44;
      }
    }

    return result;
  }

  v17 = 8 * v16;
  v18 = v11;
  v19 = &v11[v16];
  while (*v18 == *v13)
  {
    ++v18;
    ++v13;
    v17 -= 8;
    if (!v17)
    {
      v18 = v19;
      break;
    }
  }

  if (v13 != v15)
  {
    goto LABEL_17;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::FullyCompressTuplesRecursive(absl::lts_20240722::Span<long long const>,absl::lts_20240722::Span<std::vector<long long>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>> *)::TempData *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v11 = *a5;
  v12 = (a5 + 1);
  if (*a5)
  {
    v13 = a5[1];
  }

  else
  {
    v13 = a5 + 1;
  }

  v14 = *a4;
  v16 = (a4 + 8);
  v15 = *(a4 + 8);
  if ((*a4 & 1) == 0)
  {
    v15 = (a4 + 8);
  }

  v17 = (v15 + ((4 * v14) & 0xFFFFFFFFFFFFFFF8));
  if ((4 * v14) >> 3 >= (4 * v11) >> 3)
  {
    v18 = (4 * v11) >> 3;
  }

  else
  {
    v18 = (4 * v14) >> 3;
  }

  if ((v18 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v20 = v13;
    if (v15 == v17)
    {
      return result;
    }

LABEL_17:
    if (v20 != (v13 + ((4 * v11) & 0xFFFFFFFFFFFFFFF8)) && *v20 >= *v15)
    {
      return result;
    }

    v65 = *v16;
    *a4 = 0;
    v22 = *(a4 + 24);
    v23 = *a5;
    if (a4 == a5)
    {
      *(a4 + 24) = *(a5 + 6);
      if (v23)
      {
        v60 = v14;
        v61 = v22;
        operator delete(*v12);
        v22 = v61;
        v14 = v60;
        v12 = (a5 + 1);
      }
    }

    else
    {
      *a4 = v23;
      *v16 = *v12;
      *(a4 + 24) = *(a5 + 6);
    }

    *a5 = v14;
    result = v65;
    *v12 = v65;
    *(a5 + 6) = v22;
    v24 = *a4;
    if (*a4)
    {
      v25 = *(a4 + 8);
    }

    else
    {
      v25 = (a4 + 8);
    }

    v26 = *a3;
    v28 = (a3 + 1);
    v27 = a3[1];
    if ((*a3 & 1) == 0)
    {
      v27 = a3 + 1;
    }

    v29 = (v27 + ((4 * v26) & 0xFFFFFFFFFFFFFFF8));
    if ((4 * v26) >> 3 >= (4 * v24) >> 3)
    {
      v30 = (4 * v24) >> 3;
    }

    else
    {
      v30 = (4 * v26) >> 3;
    }

    if ((v30 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v31 = 8 * v30;
      v32 = v25;
      v33 = &v25[v30];
      while (*v32 == *v27)
      {
        ++v32;
        ++v27;
        v31 -= 8;
        if (!v31)
        {
          v32 = v33;
          break;
        }
      }

      if (v27 == v29)
      {
        return result;
      }
    }

    else
    {
      v32 = v25;
      if (v27 == v29)
      {
        return result;
      }
    }

    if (v32 == (v25 + ((4 * v24) & 0xFFFFFFFFFFFFFFF8)) || *v32 < *v27)
    {
      v66 = *v28;
      *a3 = 0;
      v34 = *(a3 + 6);
      v35 = *a4;
      if (a3 == a4)
      {
        *(a3 + 6) = *(a4 + 24);
        if (v35)
        {
          v63 = v26;
          v62 = v34;
          operator delete(*v16);
          v34 = v62;
          v26 = v63;
        }
      }

      else
      {
        *a3 = v35;
        *v28 = *v16;
        *(a3 + 6) = *(a4 + 24);
      }

      *a4 = v26;
      result = v66;
      *v16 = v66;
      *(a4 + 24) = v34;
      v36 = *a3;
      v37 = a3[1];
      if ((*a3 & 1) == 0)
      {
        v37 = a3 + 1;
      }

      v38 = *a2;
      v40 = (a2 + 1);
      v39 = a2[1];
      if ((*a2 & 1) == 0)
      {
        v39 = a2 + 1;
      }

      v41 = (v39 + ((4 * v38) & 0xFFFFFFFFFFFFFFF8));
      if ((4 * v38) >> 3 >= (4 * v36) >> 3)
      {
        v42 = (4 * v36) >> 3;
      }

      else
      {
        v42 = (4 * v38) >> 3;
      }

      if ((v42 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v43 = 8 * v42;
        v44 = v37;
        v45 = &v37[v42];
        while (*v44 == *v39)
        {
          ++v44;
          ++v39;
          v43 -= 8;
          if (!v43)
          {
            v44 = v45;
            break;
          }
        }
      }

      else
      {
        v44 = v37;
      }

      if (v39 != v41 && (v44 == (v37 + ((4 * v36) & 0xFFFFFFFFFFFFFFF8)) || *v44 < *v39))
      {
        v67 = *v40;
        *a2 = 0;
        v46 = *(a2 + 6);
        v47 = *a3;
        if (a2 == a3)
        {
          *(a2 + 6) = *(a3 + 6);
          if (v47)
          {
            v64 = v46;
            operator delete(*v28);
            v46 = v64;
          }
        }

        else
        {
          *a2 = v47;
          *v40 = *v28;
          *(a2 + 6) = *(a3 + 6);
        }

        *a3 = v38;
        result = v67;
        *v28 = v67;
        *(a3 + 6) = v46;
        v48 = *a2;
        if (*a2)
        {
          v49 = a2[1];
        }

        else
        {
          v49 = a2 + 1;
        }

        v50 = *a1;
        v51 = (a1 + 1);
        v52 = a1[1];
        if ((*a1 & 1) == 0)
        {
          v52 = a1 + 1;
        }

        v53 = (v52 + ((4 * v50) & 0xFFFFFFFFFFFFFFF8));
        if ((4 * v50) >> 3 >= (4 * v48) >> 3)
        {
          v54 = (4 * v48) >> 3;
        }

        else
        {
          v54 = (4 * v50) >> 3;
        }

        if ((v54 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v55 = 8 * v54;
          v56 = v49;
          v57 = &v49[v54];
          while (*v56 == *v52)
          {
            ++v56;
            ++v52;
            v55 -= 8;
            if (!v55)
            {
              v56 = v57;
              break;
            }
          }
        }

        else
        {
          v56 = v49;
        }

        if (v52 != v53 && (v56 == (v49 + ((4 * v48) & 0xFFFFFFFFFFFFFFF8)) || *v56 < *v52))
        {
          v68 = *v51;
          *a1 = 0;
          v58 = *(a1 + 6);
          v59 = *a2;
          if (a1 == a2)
          {
            *(a1 + 6) = *(a2 + 6);
            if (v59)
            {
              operator delete(*v40);
            }
          }

          else
          {
            *a1 = v59;
            *v51 = *v40;
            *(a1 + 6) = *(a2 + 6);
          }

          *a2 = v50;
          result = v68;
          *v40 = v68;
          *(a2 + 6) = v58;
        }
      }
    }

    return result;
  }

  v19 = 8 * v18;
  v20 = v13;
  v21 = &v13[v18];
  while (*v20 == *v15)
  {
    ++v20;
    ++v15;
    v19 -= 8;
    if (!v19)
    {
      v20 = v21;
      break;
    }
  }

  if (v15 != v17)
  {
    goto LABEL_17;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::FullyCompressTuplesRecursive(absl::lts_20240722::Span<long long const>,absl::lts_20240722::Span<std::vector<long long>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>> *)::TempData *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        return 1;
      case 4:
        return 1;
      case 5:
        return 1;
    }

LABEL_24:
    v18 = a1 + 64;
    v19 = a1 + 96;
    if (a1 + 96 == a2)
    {
      return 1;
    }

    v20 = 0;
    while (1)
    {
      v21 = *v19;
      v22 = *(v19 + 8);
      if ((*v19 & 1) == 0)
      {
        v22 = (v19 + 8);
      }

      v23 = *v18;
      v24 = (v18 + 8);
      if (*v18)
      {
        v24 = *(v18 + 8);
      }

      if ((4 * v23) >> 3 >= (4 * v21) >> 3)
      {
        v25 = (4 * v21) >> 3;
      }

      else
      {
        v25 = (4 * v23) >> 3;
      }

      if ((v25 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v26 = 8 * v25;
        v27 = v24;
        v28 = v22;
        v29 = &v22[v25];
        while (*v28 == *v27)
        {
          ++v28;
          ++v27;
          v26 -= 8;
          if (!v26)
          {
            v28 = v29;
            break;
          }
        }

        if (v27 == (v24 + ((4 * v23) & 0xFFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = v24;
        v28 = v22;
        if (v24 == (v24 + ((4 * v23) & 0xFFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }
      }

      if (v28 == (v22 + ((4 * v21) & 0xFFFFFFFFFFFFFFF8)) || *v28 < *v27)
      {
        *__p = *v19;
        *&__p[8] = *(v19 + 8);
        *v19 = 0;
        v45 = *(v19 + 24);
        v30 = v19;
        while (1)
        {
          v31 = v18;
          if (v30 != v18)
          {
            if (*v30)
            {
              operator delete(*(v30 + 8));
            }

            *v30 = *v18;
            *(v30 + 8) = *(v18 + 8);
            *v18 = 0;
          }

          *(v30 + 24) = *(v18 + 24);
          if (v18 == a1)
          {
            break;
          }

          v18 -= 32;
          v32 = *(v31 - 32);
          v33 = *&__p[8];
          if ((__p[0] & 1) == 0)
          {
            v33 = &__p[8];
          }

          v34 = *(v31 - 24);
          if ((v32 & 1) == 0)
          {
            v34 = (v31 - 24);
          }

          if ((4 * v32) >> 3 >= (4 * *__p) >> 3)
          {
            v35 = (4 * *__p) >> 3;
          }

          else
          {
            v35 = (4 * v32) >> 3;
          }

          if ((v35 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v36 = 8 * v35;
            v37 = v34;
            v38 = v33;
            v39 = &v33[8 * v35];
            while (*v38 == *v37)
            {
              ++v38;
              ++v37;
              v36 -= 8;
              if (!v36)
              {
                v38 = v39;
                break;
              }
            }
          }

          else
          {
            v37 = v34;
            v38 = v33;
          }

          if (v37 != (v34 + ((4 * v32) & 0xFFFFFFFFFFFFFFF8)))
          {
            v30 = v31;
            if (v38 == &v33[(4 * *__p) & 0xFFFFFFFFFFFFFFF8])
            {
              continue;
            }

            v30 = v31;
            if (*v38 < *v37)
            {
              continue;
            }
          }

          goto LABEL_70;
        }

        v31 = a1;
LABEL_70:
        if (v31 == __p)
        {
          v40 = (__p[0] & 1) == 0;
          *(v31 + 24) = v45;
          if (!v40)
          {
            operator delete(*&__p[8]);
          }
        }

        else
        {
          if (*v31)
          {
            operator delete(*(v31 + 8));
          }

          *v31 = *__p;
          *(v31 + 8) = *&__p[8];
          *__p = 0;
          *(v31 + 24) = v45;
        }

        if (++v20 == 8)
        {
          return v19 + 32 == a2;
        }
      }

LABEL_28:
      v18 = v19;
      v19 += 32;
      if (v19 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_24;
  }

  v6 = (a2 - 32);
  v5 = *(a2 - 32);
  v7 = (a2 - 24);
  if (v5)
  {
    v8 = *(a2 - 24);
  }

  else
  {
    v8 = (a2 - 24);
  }

  v9 = *a1;
  v10 = (a1 + 8);
  v11 = *(a1 + 8);
  if ((*a1 & 1) == 0)
  {
    v11 = (a1 + 8);
  }

  v12 = (v11 + ((4 * v9) & 0xFFFFFFFFFFFFFFF8));
  if ((4 * v9) >> 3 >= (4 * v5) >> 3)
  {
    v13 = (4 * v5) >> 3;
  }

  else
  {
    v13 = (4 * v9) >> 3;
  }

  if ((v13 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v15 = v8;
    if (v11 != v12)
    {
      goto LABEL_79;
    }

    return 1;
  }

  v14 = 8 * v13;
  v15 = v8;
  v16 = &v8[v13];
  while (*v15 == *v11)
  {
    ++v15;
    ++v11;
    v14 -= 8;
    if (!v14)
    {
      v15 = v16;
      break;
    }
  }

  if (v11 == v12)
  {
    return 1;
  }

LABEL_79:
  if (v15 != (v8 + ((4 * v5) & 0xFFFFFFFFFFFFFFF8)) && *v15 >= *v11)
  {
    return 1;
  }

  *__p = *v10;
  *a1 = 0;
  v41 = *(a1 + 24);
  v42 = *v6;
  if (v6 == a1)
  {
    v43 = (a2 - 8);
    *(a1 + 24) = *(a2 - 8);
    if (v42)
    {
      operator delete(*v7);
    }
  }

  else
  {
    *a1 = v42;
    *v10 = *v7;
    v43 = (a2 - 8);
    *(a1 + 24) = *(a2 - 8);
  }

  *v6 = v9;
  *v7 = *__p;
  *v43 = v41;
  return 1;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,false>(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a3;
  while (2)
  {
    v62 = a2;
    v63 = (a2 - 24);
    v59 = (a2 - 72);
    v60 = (a2 - 48);
    v9 = result;
    while (1)
    {
      while (1)
      {
        result = v9;
        v10 = &a2[-v9];
        v11 = 0xAAAAAAAAAAAAAAABLL * (&a2[-v9] >> 3);
        if (v11 > 2)
        {
          switch(v11)
          {
            case 3uLL:

              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v9, (v9 + 24), v63);
              return;
            case 4uLL:

              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v9, (v9 + 24), (v9 + 48), v63);
              return;
            case 5uLL:

              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v9, (v9 + 24), (v9 + 48), (v9 + 72), v63);
              return;
          }
        }

        else
        {
          if (v11 < 2)
          {
            return;
          }

          if (v11 == 2)
          {
            v36 = *v9;
            v37 = *(v9 + 8);
            if (*v9 != v37)
            {
              v38 = 0;
              v65 = *(a2 - 2);
              v67 = *(a2 - 3);
              while (1)
              {
                v39 = v67 + v38 * 8;
                if (v67 + v38 * 8 == v65)
                {
                  break;
                }

                v40 = SHIBYTE(v36[v38 + 2]);
                v41 = *(v39 + 23);
                if (v41 >= 0)
                {
                  v42 = *(v39 + 23);
                }

                else
                {
                  v42 = *(v39 + 8);
                }

                if (v41 >= 0)
                {
                  v43 = (v67 + v38 * 8);
                }

                else
                {
                  v43 = *v39;
                }

                if (v40 >= 0)
                {
                  v44 = HIBYTE(v36[v38 + 2]);
                }

                else
                {
                  v44 = v36[v38 + 1];
                }

                if (v40 >= 0)
                {
                  v45 = &v36[v38];
                }

                else
                {
                  v45 = v36[v38];
                }

                if (v44 >= v42)
                {
                  v46 = v42;
                }

                else
                {
                  v46 = v44;
                }

                v47 = memcmp(v43, v45, v46);
                v48 = v42 < v44;
                if (v47)
                {
                  v48 = v47 < 0;
                }

                if (v48)
                {
                  break;
                }

                v49 = memcmp(v45, v43, v46);
                v50 = v44 < v42;
                if (v49)
                {
                  v50 = v49 < 0;
                }

                if (!v50)
                {
                  v38 += 3;
                  if (&v36[v38] != v37)
                  {
                    continue;
                  }
                }

                return;
              }

              *result = v67;
              *(a2 - 3) = v36;
              v57 = *(result + 8);
              *(result + 8) = *(a2 - 2);
              *(a2 - 2) = v57;
              v58 = *(result + 16);
              *(result + 16) = *(a2 - 1);
              *(a2 - 1) = v58;
            }

            return;
          }
        }

        if (v10 <= 575)
        {
          if (a5)
          {

            std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(v9, a2);
          }

          else
          {

            std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(v9, a2);
          }

          return;
        }

        if (!a4)
        {
          if (v9 != a2)
          {
            v51 = (v11 - 2) >> 1;
            v52 = v51 + 1;
            v53 = (v9 + 24 * v51);
            do
            {
              std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(v9, v6, v11, v53);
              v53 -= 3;
              --v52;
            }

            while (v52);
            v54 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
            v55 = v62;
            do
            {
              std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<std::string> *>(v9, v55, v6, v54);
              v55 -= 24;
            }

            while (v54-- > 2);
          }

          return;
        }

        v12 = v11 >> 1;
        v13 = v9 + 24 * (v11 >> 1);
        if (v10 < 0xC01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v13, v9, v63);
          v66 = a4 - 1;
          if (a5)
          {
            goto LABEL_16;
          }
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v9, v13, v63);
          v14 = 24 * v12;
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>((v9 + 24), (v14 + v9 - 24), v60);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>((v9 + 48), (v9 + 24 + v14), v59);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>((v14 + v9 - 24), v13, (v9 + 24 + v14));
          v15 = *v9;
          *v9 = *v13;
          *v13 = v15;
          v16 = *(v9 + 8);
          *(v9 + 8) = *(v13 + 8);
          *(v13 + 8) = v16;
          v17 = *(v9 + 16);
          *(v9 + 16) = *(v13 + 16);
          *(v13 + 16) = v17;
          v66 = a4 - 1;
          if (a5)
          {
            goto LABEL_16;
          }
        }

        v22 = *v9;
        v21 = *(v9 + 8);
        if (*v9 != v21)
        {
          break;
        }

LABEL_45:
        v6 = a3;
        a2 = v62;
        v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<std::string> *,std::__less<void,void> &>(result, v62);
        a5 = 0;
        a4 = v66;
      }

      v24 = *(v9 - 24);
      v23 = *(v9 - 16);
      while (v24 != v23)
      {
        v25 = *(v22 + 23);
        v26 = *(v24 + 23);
        if (v26 >= 0)
        {
          v27 = *(v24 + 23);
        }

        else
        {
          v27 = v24[1];
        }

        if (v26 >= 0)
        {
          v28 = v24;
        }

        else
        {
          v28 = *v24;
        }

        if (v25 >= 0)
        {
          v29 = *(v22 + 23);
        }

        else
        {
          v29 = v22[1];
        }

        if (v25 >= 0)
        {
          v30 = v22;
        }

        else
        {
          v30 = *v22;
        }

        if (v29 >= v27)
        {
          v31 = v27;
        }

        else
        {
          v31 = v29;
        }

        v32 = memcmp(v28, v30, v31);
        v33 = v27 < v29;
        if (v32)
        {
          v33 = v32 < 0;
        }

        if (v33)
        {
          break;
        }

        v34 = memcmp(v30, v28, v31);
        v35 = v29 < v27;
        if (v34)
        {
          v35 = v34 < 0;
        }

        if (!v35)
        {
          v24 += 3;
          v22 += 3;
          if (v22 != v21)
          {
            continue;
          }
        }

        goto LABEL_45;
      }

LABEL_16:
      v6 = a3;
      a2 = v62;
      v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<std::string> *,std::__less<void,void> &>(result, v62);
      a4 = v66;
      if ((v19 & 1) == 0)
      {
        goto LABEL_19;
      }

      v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(result, v18);
      v9 = (v18 + 3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(v18 + 3, v62))
      {
        break;
      }

      if (!v20)
      {
LABEL_19:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,false>(result, v18, a3, v66, a5 & 1);
        a5 = 0;
        v9 = (v18 + 3);
      }
    }

    a2 = v18;
    if (!v20)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(const void ***a1, const void ***a2, const void ***a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_26:
    if (v3 == v4)
    {
      return 0;
    }

    v20 = 0;
    v22 = *a3;
    v21 = a3[1];
    while (1)
    {
      v23 = &v22[v20];
      if (&v22[v20] == v21)
      {
        break;
      }

      v24 = SHIBYTE(v3[v20 + 2]);
      v25 = *(v23 + 23);
      if (v25 >= 0)
      {
        v26 = *(v23 + 23);
      }

      else
      {
        v26 = v23[1];
      }

      if (v25 >= 0)
      {
        v27 = &v22[v20];
      }

      else
      {
        v27 = *v23;
      }

      if (v24 >= 0)
      {
        v28 = HIBYTE(v3[v20 + 2]);
      }

      else
      {
        v28 = v3[v20 + 1];
      }

      if (v24 >= 0)
      {
        v29 = &v3[v20];
      }

      else
      {
        v29 = v3[v20];
      }

      if (v28 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v28;
      }

      v31 = memcmp(v27, v29, v30);
      v32 = v26 < v28;
      if (v31)
      {
        v32 = v31 < 0;
      }

      if (v32)
      {
        break;
      }

      v33 = memcmp(v29, v27, v30);
      result = 0;
      v35 = v33 == 0;
      v36 = v33 < 0;
      if (v35)
      {
        v36 = v28 < v26;
      }

      if (!v36)
      {
        v20 += 3;
        if (&v3[v20] != v4)
        {
          continue;
        }
      }

      return result;
    }

    *a2 = v22;
    *a3 = v3;
    v69 = a2[1];
    a2[1] = a3[1];
    a3[1] = v69;
    v70 = a2[2];
    a2[2] = a3[2];
    a3[2] = v70;
    v71 = *a1;
    v72 = a1[1];
    if (*a1 != v72)
    {
      v73 = 0;
      v75 = *a2;
      v74 = a2[1];
      while (1)
      {
        v76 = &v75[v73];
        if (&v75[v73] == v74)
        {
          break;
        }

        v77 = SHIBYTE(v71[v73 + 2]);
        v78 = *(v76 + 23);
        if (v78 >= 0)
        {
          v79 = *(v76 + 23);
        }

        else
        {
          v79 = v76[1];
        }

        if (v78 >= 0)
        {
          v80 = &v75[v73];
        }

        else
        {
          v80 = *v76;
        }

        if (v77 >= 0)
        {
          v81 = HIBYTE(v71[v73 + 2]);
        }

        else
        {
          v81 = v71[v73 + 1];
        }

        if (v77 >= 0)
        {
          v82 = &v71[v73];
        }

        else
        {
          v82 = v71[v73];
        }

        if (v81 >= v79)
        {
          v83 = v79;
        }

        else
        {
          v83 = v81;
        }

        v84 = memcmp(v80, v82, v83);
        v85 = v79 < v81;
        if (v84)
        {
          v85 = v84 < 0;
        }

        if (v85)
        {
          break;
        }

        v86 = memcmp(v82, v80, v83);
        v87 = v81 < v79;
        if (v86)
        {
          v87 = v86 < 0;
        }

        result = 1;
        if (!v87)
        {
          v73 += 3;
          if (&v71[v73] != v72)
          {
            continue;
          }
        }

        return result;
      }

      *a1 = v75;
      *a2 = v71;
      v92 = a1[1];
      a1[1] = a2[1];
      a2[1] = v92;
      v89 = a1 + 2;
      v90 = a2 + 2;
LABEL_133:
      v93 = *v89;
      *v89 = *v90;
      *v90 = v93;
    }
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = &v3[v7];
      if (&v3[v7] == v4)
      {
        break;
      }

      v9 = SHIBYTE(v5[v7 + 2]);
      v10 = *(v8 + 23);
      if (v10 >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = v8[1];
      }

      if (v10 >= 0)
      {
        v12 = &v3[v7];
      }

      else
      {
        v12 = *v8;
      }

      if (v9 >= 0)
      {
        v13 = HIBYTE(v5[v7 + 2]);
      }

      else
      {
        v13 = v5[v7 + 1];
      }

      if (v9 >= 0)
      {
        v14 = &v5[v7];
      }

      else
      {
        v14 = v5[v7];
      }

      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      v16 = memcmp(v12, v14, v15);
      v17 = v11 < v13;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (v17)
      {
        break;
      }

      v18 = memcmp(v14, v12, v15);
      v19 = v13 < v11;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (!v19)
      {
        v7 += 3;
        if (&v5[v7] != v6)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    if (v3 != v4)
    {
      v37 = *a3;
      v98 = a3[1];
      v94 = *a3;
      v38 = v3;
      while (v37 != v98)
      {
        v39 = *(v38 + 23);
        v40 = *(v37 + 23);
        if (v40 >= 0)
        {
          v41 = *(v37 + 23);
        }

        else
        {
          v41 = v37[1];
        }

        if (v40 >= 0)
        {
          v42 = v37;
        }

        else
        {
          v42 = *v37;
        }

        if (v39 >= 0)
        {
          v43 = *(v38 + 23);
        }

        else
        {
          v43 = v38[1];
        }

        if (v39 >= 0)
        {
          v44 = v38;
        }

        else
        {
          v44 = *v38;
        }

        if (v43 >= v41)
        {
          v45 = v41;
        }

        else
        {
          v45 = v43;
        }

        v46 = memcmp(v42, v44, v45);
        v47 = v41 < v43;
        if (v46)
        {
          v47 = v46 < 0;
        }

        if (v47)
        {
          break;
        }

        v48 = memcmp(v44, v42, v45);
        v49 = v43 < v41;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          v37 += 3;
          v38 += 3;
          if (v38 != v4)
          {
            continue;
          }
        }

        goto LABEL_77;
      }

      *a1 = v94;
      *a3 = v5;
      v88 = a1[1];
      a1[1] = a3[1];
      a3[1] = v88;
      v89 = a1 + 2;
      v90 = a3 + 2;
      goto LABEL_133;
    }

LABEL_77:
    *a1 = v3;
    *a2 = v5;
    v50 = a1[1];
    a1[1] = a2[1];
    a2[1] = v50;
    v51 = a1[2];
    a1[2] = a2[2];
    a2[2] = v51;
    v52 = *a2;
    v53 = a2[1];
    if (*a2 != v53)
    {
      v54 = 0;
      v56 = *a3;
      v55 = a3[1];
      while (1)
      {
        v57 = &v56[v54];
        if (&v56[v54] == v55)
        {
          break;
        }

        v58 = SHIBYTE(v52[v54 + 2]);
        v59 = *(v57 + 23);
        if (v59 >= 0)
        {
          v60 = *(v57 + 23);
        }

        else
        {
          v60 = v57[1];
        }

        if (v59 >= 0)
        {
          v61 = &v56[v54];
        }

        else
        {
          v61 = *v57;
        }

        if (v58 >= 0)
        {
          v62 = HIBYTE(v52[v54 + 2]);
        }

        else
        {
          v62 = v52[v54 + 1];
        }

        if (v58 >= 0)
        {
          v63 = &v52[v54];
        }

        else
        {
          v63 = v52[v54];
        }

        if (v62 >= v60)
        {
          v64 = v60;
        }

        else
        {
          v64 = v62;
        }

        v65 = memcmp(v61, v63, v64);
        v66 = v60 < v62;
        if (v65)
        {
          v66 = v65 < 0;
        }

        if (v66)
        {
          break;
        }

        v67 = memcmp(v63, v61, v64);
        v68 = v62 < v60;
        if (v67)
        {
          v68 = v67 < 0;
        }

        result = 1;
        if (!v68)
        {
          v54 += 3;
          if (&v52[v54] != v53)
          {
            continue;
          }
        }

        return result;
      }

      *a2 = v56;
      *a3 = v52;
      v91 = a2[1];
      a2[1] = a3[1];
      a3[1] = v91;
      v90 = a3 + 2;
      v89 = a2 + 2;
      goto LABEL_133;
    }
  }

  return 1;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(const void ***a1, const void ***a2, const void ***a3, const void ***a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a2, a3);
  v6 = *a3;
  v7 = a3[1];
  v59 = a3;
  if (*a3 != v7)
  {
    v8 = 0;
    v10 = *a4;
    v9 = a4[1];
    while (1)
    {
      v11 = &v10[v8];
      if (&v10[v8] == v9)
      {
        break;
      }

      v12 = SHIBYTE(v6[v8 + 2]);
      v13 = *(v11 + 23);
      if (v13 >= 0)
      {
        v14 = *(v11 + 23);
      }

      else
      {
        v14 = v11[1];
      }

      if (v13 >= 0)
      {
        v15 = &v10[v8];
      }

      else
      {
        v15 = *v11;
      }

      if (v12 >= 0)
      {
        v16 = HIBYTE(v6[v8 + 2]);
      }

      else
      {
        v16 = v6[v8 + 1];
      }

      if (v12 >= 0)
      {
        v17 = &v6[v8];
      }

      else
      {
        v17 = v6[v8];
      }

      if (v16 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v16;
      }

      result = memcmp(v15, v17, v18);
      v19 = v14 < v16;
      if (result)
      {
        v19 = result < 0;
      }

      if (v19)
      {
        break;
      }

      result = memcmp(v17, v15, v18);
      v20 = v16 < v14;
      if (result)
      {
        v20 = result < 0;
      }

      if (!v20)
      {
        v8 += 3;
        if (&v6[v8] != v7)
        {
          continue;
        }
      }

      return result;
    }

    *v59 = v10;
    *a4 = v6;
    v21 = v59[1];
    v59[1] = a4[1];
    a4[1] = v21;
    v22 = v59[2];
    v59[2] = a4[2];
    a4[2] = v22;
    v23 = *a2;
    v24 = a2[1];
    if (*a2 != v24)
    {
      v25 = 0;
      v27 = *v59;
      v26 = v59[1];
      while (1)
      {
        v28 = &v27[v25];
        if (&v27[v25] == v26)
        {
          break;
        }

        v29 = SHIBYTE(v23[v25 + 2]);
        v30 = *(v28 + 23);
        if (v30 >= 0)
        {
          v31 = *(v28 + 23);
        }

        else
        {
          v31 = v28[1];
        }

        if (v30 >= 0)
        {
          v32 = &v27[v25];
        }

        else
        {
          v32 = *v28;
        }

        if (v29 >= 0)
        {
          v33 = HIBYTE(v23[v25 + 2]);
        }

        else
        {
          v33 = v23[v25 + 1];
        }

        if (v29 >= 0)
        {
          v34 = &v23[v25];
        }

        else
        {
          v34 = v23[v25];
        }

        if (v33 >= v31)
        {
          v35 = v31;
        }

        else
        {
          v35 = v33;
        }

        result = memcmp(v32, v34, v35);
        v36 = v31 < v33;
        if (result)
        {
          v36 = result < 0;
        }

        if (v36)
        {
          break;
        }

        result = memcmp(v34, v32, v35);
        v37 = v33 < v31;
        if (result)
        {
          v37 = result < 0;
        }

        if (!v37)
        {
          v25 += 3;
          if (&v23[v25] != v24)
          {
            continue;
          }
        }

        return result;
      }

      *a2 = v27;
      *v59 = v23;
      v38 = a2[1];
      a2[1] = v59[1];
      v59[1] = v38;
      v39 = a2[2];
      a2[2] = v59[2];
      v59[2] = v39;
      v40 = *a1;
      v41 = a1[1];
      if (*a1 != v41)
      {
        v42 = 0;
        v44 = *a2;
        v43 = a2[1];
        while (1)
        {
          v45 = &v44[v42];
          if (&v44[v42] == v43)
          {
            break;
          }

          v46 = SHIBYTE(v40[v42 + 2]);
          v47 = *(v45 + 23);
          if (v47 >= 0)
          {
            v48 = *(v45 + 23);
          }

          else
          {
            v48 = v45[1];
          }

          if (v47 >= 0)
          {
            v49 = &v44[v42];
          }

          else
          {
            v49 = *v45;
          }

          if (v46 >= 0)
          {
            v50 = HIBYTE(v40[v42 + 2]);
          }

          else
          {
            v50 = v40[v42 + 1];
          }

          if (v46 >= 0)
          {
            v51 = &v40[v42];
          }

          else
          {
            v51 = v40[v42];
          }

          if (v50 >= v48)
          {
            v52 = v48;
          }

          else
          {
            v52 = v50;
          }

          result = memcmp(v49, v51, v52);
          v53 = v48 < v50;
          if (result)
          {
            v53 = result < 0;
          }

          if (v53)
          {
            break;
          }

          result = memcmp(v51, v49, v52);
          v54 = v50 < v48;
          if (result)
          {
            v54 = result < 0;
          }

          if (!v54)
          {
            v42 += 3;
            if (&v40[v42] != v41)
            {
              continue;
            }
          }

          return result;
        }

        *a1 = v44;
        *a2 = v40;
        v55 = a1[1];
        a1[1] = a2[1];
        a2[1] = v55;
        v56 = a1[2];
        a1[2] = a2[2];
        a2[2] = v56;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(const void ***a1, const void ***a2, const void ***a3, const void ***a4, const void ***a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a2, a3, a4);
  v7 = *a4;
  v8 = a4[1];
  v78 = a4;
  if (*a4 != v8)
  {
    v9 = 0;
    v10 = *a5;
    v11 = a5[1];
    while (1)
    {
      v12 = &v10[v9];
      if (&v10[v9] == v11)
      {
        break;
      }

      v13 = SHIBYTE(v7[v9 + 2]);
      v14 = *(v12 + 23);
      if (v14 >= 0)
      {
        v15 = *(v12 + 23);
      }

      else
      {
        v15 = v12[1];
      }

      if (v14 >= 0)
      {
        v16 = &v10[v9];
      }

      else
      {
        v16 = *v12;
      }

      if (v13 >= 0)
      {
        v17 = HIBYTE(v7[v9 + 2]);
      }

      else
      {
        v17 = v7[v9 + 1];
      }

      if (v13 >= 0)
      {
        v18 = &v7[v9];
      }

      else
      {
        v18 = v7[v9];
      }

      if (v17 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      result = memcmp(v16, v18, v19);
      v20 = v15 < v17;
      if (result)
      {
        v20 = result < 0;
      }

      if (v20)
      {
        break;
      }

      result = memcmp(v18, v16, v19);
      v21 = v17 < v15;
      if (result)
      {
        v21 = result < 0;
      }

      if (!v21)
      {
        v9 += 3;
        if (&v7[v9] != v8)
        {
          continue;
        }
      }

      return result;
    }

    *v78 = v10;
    *a5 = v7;
    v22 = v78[1];
    v78[1] = a5[1];
    a5[1] = v22;
    v23 = v78[2];
    v78[2] = a5[2];
    a5[2] = v23;
    v24 = *a3;
    v25 = a3[1];
    if (*a3 != v25)
    {
      v26 = 0;
      v27 = *v78;
      v28 = v78[1];
      while (1)
      {
        v29 = &v27[v26];
        if (&v27[v26] == v28)
        {
          break;
        }

        v30 = SHIBYTE(v24[v26 + 2]);
        v31 = *(v29 + 23);
        if (v31 >= 0)
        {
          v32 = *(v29 + 23);
        }

        else
        {
          v32 = v29[1];
        }

        if (v31 >= 0)
        {
          v33 = &v27[v26];
        }

        else
        {
          v33 = *v29;
        }

        if (v30 >= 0)
        {
          v34 = HIBYTE(v24[v26 + 2]);
        }

        else
        {
          v34 = v24[v26 + 1];
        }

        if (v30 >= 0)
        {
          v35 = &v24[v26];
        }

        else
        {
          v35 = v24[v26];
        }

        if (v34 >= v32)
        {
          v36 = v32;
        }

        else
        {
          v36 = v34;
        }

        result = memcmp(v33, v35, v36);
        v37 = v32 < v34;
        if (result)
        {
          v37 = result < 0;
        }

        if (v37)
        {
          break;
        }

        result = memcmp(v35, v33, v36);
        v38 = v34 < v32;
        if (result)
        {
          v38 = result < 0;
        }

        if (!v38)
        {
          v26 += 3;
          if (&v24[v26] != v25)
          {
            continue;
          }
        }

        return result;
      }

      *a3 = v27;
      *v78 = v24;
      v39 = a3[1];
      a3[1] = v78[1];
      v78[1] = v39;
      v40 = a3[2];
      a3[2] = v78[2];
      v78[2] = v40;
      v41 = *a2;
      v42 = a2[1];
      if (*a2 != v42)
      {
        v43 = 0;
        v44 = *a3;
        v45 = a3[1];
        while (1)
        {
          v46 = &v44[v43];
          if (&v44[v43] == v45)
          {
            break;
          }

          v47 = SHIBYTE(v41[v43 + 2]);
          v48 = *(v46 + 23);
          if (v48 >= 0)
          {
            v49 = *(v46 + 23);
          }

          else
          {
            v49 = v46[1];
          }

          if (v48 >= 0)
          {
            v50 = &v44[v43];
          }

          else
          {
            v50 = *v46;
          }

          if (v47 >= 0)
          {
            v51 = HIBYTE(v41[v43 + 2]);
          }

          else
          {
            v51 = v41[v43 + 1];
          }

          if (v47 >= 0)
          {
            v52 = &v41[v43];
          }

          else
          {
            v52 = v41[v43];
          }

          if (v51 >= v49)
          {
            v53 = v49;
          }

          else
          {
            v53 = v51;
          }

          result = memcmp(v50, v52, v53);
          v54 = v49 < v51;
          if (result)
          {
            v54 = result < 0;
          }

          if (v54)
          {
            break;
          }

          result = memcmp(v52, v50, v53);
          v55 = v51 < v49;
          if (result)
          {
            v55 = result < 0;
          }

          if (!v55)
          {
            v43 += 3;
            if (&v41[v43] != v42)
            {
              continue;
            }
          }

          return result;
        }

        *a2 = v44;
        *a3 = v41;
        v56 = a2[1];
        a2[1] = a3[1];
        a3[1] = v56;
        v57 = a2[2];
        a2[2] = a3[2];
        a3[2] = v57;
        v58 = *a1;
        v59 = a1[1];
        if (*a1 != v59)
        {
          v60 = 0;
          v61 = *a2;
          v62 = a2[1];
          while (1)
          {
            v63 = &v61[v60];
            if (&v61[v60] == v62)
            {
              break;
            }

            v64 = SHIBYTE(v58[v60 + 2]);
            v65 = *(v63 + 23);
            if (v65 >= 0)
            {
              v66 = *(v63 + 23);
            }

            else
            {
              v66 = v63[1];
            }

            if (v65 >= 0)
            {
              v67 = &v61[v60];
            }

            else
            {
              v67 = *v63;
            }

            if (v64 >= 0)
            {
              v68 = HIBYTE(v58[v60 + 2]);
            }

            else
            {
              v68 = v58[v60 + 1];
            }

            if (v64 >= 0)
            {
              v69 = &v58[v60];
            }

            else
            {
              v69 = v58[v60];
            }

            if (v68 >= v66)
            {
              v70 = v66;
            }

            else
            {
              v70 = v68;
            }

            result = memcmp(v67, v69, v70);
            v71 = v66 < v68;
            if (result)
            {
              v71 = result < 0;
            }

            if (v71)
            {
              break;
            }

            result = memcmp(v69, v67, v70);
            v72 = v68 < v66;
            if (result)
            {
              v72 = result < 0;
            }

            if (!v72)
            {
              v60 += 3;
              if (&v58[v60] != v59)
              {
                continue;
              }
            }

            return result;
          }

          *a1 = v61;
          *a2 = v58;
          v73 = a1[1];
          a1[1] = a2[1];
          a2[1] = v73;
          v74 = a1[2];
          a1[2] = a2[2];
          a2[2] = v74;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(void *result, void *a2)
{
  v32 = result;
  if (result != a2)
  {
    v2 = result + 3;
    if (result + 3 != a2)
    {
      v3 = result;
      do
      {
        v36 = v2;
        v5 = *v3;
        v6 = v3[1];
        if (*v3 != v6)
        {
          v7 = 0;
          v8 = v3[4];
          v37 = v3[3];
          while (1)
          {
            v9 = &v37[v7];
            if (&v37[v7] == v8)
            {
              break;
            }

            v10 = SHIBYTE(v5[v7 + 2]);
            v11 = *(v9 + 23);
            if (v11 >= 0)
            {
              v12 = *(v9 + 23);
            }

            else
            {
              v12 = v9[1];
            }

            if (v11 >= 0)
            {
              v13 = &v37[v7];
            }

            else
            {
              v13 = *v9;
            }

            if (v10 >= 0)
            {
              v14 = HIBYTE(v5[v7 + 2]);
            }

            else
            {
              v14 = v5[v7 + 1];
            }

            if (v10 >= 0)
            {
              v15 = &v5[v7];
            }

            else
            {
              v15 = v5[v7];
            }

            if (v14 >= v12)
            {
              v16 = v12;
            }

            else
            {
              v16 = v14;
            }

            result = memcmp(v13, v15, v16);
            v17 = v12 < v14;
            if (result)
            {
              v17 = result < 0;
            }

            if (v17)
            {
              break;
            }

            result = memcmp(v15, v13, v16);
            v18 = v14 < v12;
            if (result)
            {
              v18 = result < 0;
            }

            if (!v18)
            {
              v7 += 3;
              if (&v5[v7] != v6)
              {
                continue;
              }
            }

            goto LABEL_6;
          }

          v31 = v3[5];
          *v36 = 0;
          v36[1] = 0;
          v36[2] = 0;
          v3[3] = v5;
          *(v36 + 1) = *(v3 + 1);
          *v3 = 0;
          v3[1] = 0;
          v3[2] = 0;
          v4 = v32;
          if (v3 != v32)
          {
            while (1)
            {
              v4 = v3;
              v19 = *(v3 - 3);
              v20 = *(v3 - 2);
              v3 -= 3;
              if (v19 == v20)
              {
                break;
              }

              v34 = v19;
              v35 = v4;
              v21 = v37;
              while (v21 != v8)
              {
                v22 = *(v19 + 23);
                v23 = *(v21 + 23);
                if (v23 >= 0)
                {
                  v24 = *(v21 + 23);
                }

                else
                {
                  v24 = v21[1];
                }

                if (v23 >= 0)
                {
                  v25 = v21;
                }

                else
                {
                  v25 = *v21;
                }

                if (v22 >= 0)
                {
                  v26 = *(v19 + 23);
                }

                else
                {
                  v26 = v19[1];
                }

                if (v22 >= 0)
                {
                  v27 = v19;
                }

                else
                {
                  v27 = *v19;
                }

                if (v26 >= v24)
                {
                  v28 = v24;
                }

                else
                {
                  v28 = v26;
                }

                result = memcmp(v25, v27, v28);
                v29 = v24 < v26;
                if (result)
                {
                  v29 = result < 0;
                }

                if (v29)
                {
                  break;
                }

                result = memcmp(v27, v25, v28);
                v30 = v26 < v24;
                if (result)
                {
                  v30 = result < 0;
                }

                if (!v30)
                {
                  v21 += 3;
                  v19 += 3;
                  if (v19 != v20)
                  {
                    continue;
                  }
                }

                v4 = v35;
                goto LABEL_5;
              }

              *v35 = v34;
              *(v35 + 1) = *(v35 - 1);
              *v3 = 0;
              v3[1] = 0;
              v3[2] = 0;
              if (v3 == v32)
              {
                v4 = v32;
                break;
              }
            }
          }

LABEL_5:
          *v4 = v37;
          v4[1] = v8;
          v4[2] = v31;
        }

LABEL_6:
        v3 = v36;
        v2 = v36 + 3;
      }

      while (v36 + 3 != a2);
    }
  }

  return result;
}

const void ***std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(const void ***result, const void ***a2)
{
  if (result != a2)
  {
    while (result + 3 != a2)
    {
      v37 = result + 3;
      v3 = *result;
      v4 = result[1];
      if (*result != v4)
      {
        v2 = result;
        v5 = 0;
        v6 = result[4];
        v38 = result[3];
        while (1)
        {
          v7 = &v38[v5];
          if (&v38[v5] == v6)
          {
            break;
          }

          v8 = SHIBYTE(v3[v5 + 2]);
          v9 = *(v7 + 23);
          if (v9 >= 0)
          {
            v10 = *(v7 + 23);
          }

          else
          {
            v10 = v7[1];
          }

          if (v9 >= 0)
          {
            v11 = &v38[v5];
          }

          else
          {
            v11 = *v7;
          }

          if (v8 >= 0)
          {
            v12 = HIBYTE(v3[v5 + 2]);
          }

          else
          {
            v12 = v3[v5 + 1];
          }

          if (v8 >= 0)
          {
            v13 = &v3[v5];
          }

          else
          {
            v13 = v3[v5];
          }

          if (v12 >= v10)
          {
            v14 = v10;
          }

          else
          {
            v14 = v12;
          }

          v15 = memcmp(v11, v13, v14);
          v16 = v10 < v12;
          if (v15)
          {
            v16 = v15 < 0;
          }

          if (v16)
          {
            break;
          }

          v17 = memcmp(v13, v11, v14);
          v18 = v12 < v10;
          if (v17)
          {
            v18 = v17 < 0;
          }

          if (!v18)
          {
            v5 += 3;
            if (&v3[v5] != v4)
            {
              continue;
            }
          }

          goto LABEL_5;
        }

        v33 = v2[5];
        v37[1] = 0;
        v37[2] = 0;
        *v37 = v3;
        *(v37 + 1) = *(v2 + 1);
        while (1)
        {
          *v2 = 0;
          v2[1] = 0;
          v2[2] = 0;
          v19 = *(v2 - 3);
          v20 = *(v2 - 2);
          if (v19 == v20)
          {
            break;
          }

          v35 = *(v2 - 3);
          v36 = v2;
          v2 -= 3;
          v21 = v38;
          while (v21 != v6)
          {
            v22 = *(v19 + 23);
            v23 = *(v21 + 23);
            if (v23 >= 0)
            {
              v24 = *(v21 + 23);
            }

            else
            {
              v24 = v21[1];
            }

            if (v23 >= 0)
            {
              v25 = v21;
            }

            else
            {
              v25 = *v21;
            }

            if (v22 >= 0)
            {
              v26 = *(v19 + 23);
            }

            else
            {
              v26 = v19[1];
            }

            if (v22 >= 0)
            {
              v27 = v19;
            }

            else
            {
              v27 = *v19;
            }

            if (v26 >= v24)
            {
              v28 = v24;
            }

            else
            {
              v28 = v26;
            }

            v29 = memcmp(v25, v27, v28);
            v30 = v24 < v26;
            if (v29)
            {
              v30 = v29 < 0;
            }

            if (v30)
            {
              break;
            }

            v31 = memcmp(v27, v25, v28);
            v32 = v26 < v24;
            if (v31)
            {
              v32 = v31 < 0;
            }

            if (!v32)
            {
              v21 += 3;
              v19 += 3;
              if (v19 != v20)
              {
                continue;
              }
            }

            v2 = v36;
            goto LABEL_4;
          }

          *v36 = v35;
          *(v36 + 1) = *(v2 + 1);
        }

LABEL_4:
        *v2 = v38;
        v2[1] = v6;
        v2[2] = v33;
      }

LABEL_5:
      result = v37;
    }
  }

  return result;
}

const void ***std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<std::string> *,std::__less<void,void> &>(const void ***a1, const void ***a2)
{
  v2 = *a1;
  v3 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v4 = *(a2 - 3);
  v116 = v2;
  v109 = v2;
  v5 = *(&v2 + 1);
  v107 = a2 - 3;
  v108 = v3;
  v111 = *(a2 - 2);
  if (v4 == v111)
  {
LABEL_26:
    v19 = a1;
    v20 = a2;
    v21 = a1 + 3;
    if (a1 + 3 < a2)
    {
      while (1)
      {
        v38 = v19[3];
        v37 = v19[4];
        v114 = v21;
        if (v38 != v37)
        {
          break;
        }

LABEL_57:
        v19 = v114;
        v21 = v114 + 3;
        v20 = a2;
        if (v114 + 3 >= a2)
        {
          goto LABEL_85;
        }
      }

      v39 = v116;
      while (v39 != v5)
      {
        v40 = *(v38 + 23);
        v41 = *(v39 + 23);
        if (v41 >= 0)
        {
          v42 = *(v39 + 23);
        }

        else
        {
          v42 = v39[1];
        }

        if (v41 >= 0)
        {
          v43 = v39;
        }

        else
        {
          v43 = *v39;
        }

        if (v40 >= 0)
        {
          v44 = *(v38 + 23);
        }

        else
        {
          v44 = v38[1];
        }

        if (v40 >= 0)
        {
          v45 = v38;
        }

        else
        {
          v45 = *v38;
        }

        if (v44 >= v42)
        {
          v46 = v42;
        }

        else
        {
          v46 = v44;
        }

        v47 = memcmp(v43, v45, v46);
        v48 = v42 < v44;
        if (v47)
        {
          v48 = v47 < 0;
        }

        if (v48)
        {
          break;
        }

        v49 = memcmp(v45, v43, v46);
        v50 = v44 < v42;
        if (v49)
        {
          v50 = v49 < 0;
        }

        if (!v50)
        {
          v39 += 3;
          v38 += 3;
          if (v38 != v37)
          {
            continue;
          }
        }

        goto LABEL_57;
      }

      v21 = v114;
      v20 = a2;
    }
  }

  else
  {
    v6 = v2;
    v7 = *(a2 - 3);
    while (v6 != v5)
    {
      v8 = *(v7 + 23);
      v9 = *(v6 + 23);
      if (v9 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      if (v9 >= 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = *v6;
      }

      if (v8 >= 0)
      {
        v12 = *(v7 + 23);
      }

      else
      {
        v12 = v7[1];
      }

      if (v8 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v11, v13, v14);
      v16 = v10 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (v16)
      {
        break;
      }

      v17 = memcmp(v13, v11, v14);
      v18 = v12 < v10;
      if (v17)
      {
        v18 = v17 < 0;
      }

      if (!v18)
      {
        v6 += 3;
        v7 += 3;
        if (v7 != v111)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    v22 = a1;
    do
    {
LABEL_29:
      v23 = v22[3];
      v24 = v22[4];
      v22 += 3;
    }

    while (v23 == v24);
    v113 = v22;
    v25 = v116;
    while (v25 != v5)
    {
      v26 = *(v23 + 23);
      v27 = *(v25 + 23);
      if (v27 >= 0)
      {
        v28 = *(v25 + 23);
      }

      else
      {
        v28 = v25[1];
      }

      if (v27 >= 0)
      {
        v29 = v25;
      }

      else
      {
        v29 = *v25;
      }

      if (v26 >= 0)
      {
        v30 = *(v23 + 23);
      }

      else
      {
        v30 = v23[1];
      }

      if (v26 >= 0)
      {
        v31 = v23;
      }

      else
      {
        v31 = *v23;
      }

      if (v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v29, v31, v32);
      v34 = v28 < v30;
      if (v33)
      {
        v34 = v33 < 0;
      }

      if (v34)
      {
        break;
      }

      v35 = memcmp(v31, v29, v32);
      v36 = v30 < v28;
      if (v35)
      {
        v36 = v35 < 0;
      }

      v25 += 3;
      v23 += 3;
      if (v36)
      {
        v22 = v113;
        goto LABEL_29;
      }

      if (v23 == v24)
      {
        v22 = v113;
        goto LABEL_29;
      }
    }

    v20 = a2;
    v21 = v113;
  }

LABEL_85:
  v51 = v21;
  if (v21 < v20)
  {
    if (v4 == v111)
    {
      v20 = v107;
      v65 = v21;
      if (v21 >= v107)
      {
        goto LABEL_173;
      }

      goto LABEL_114;
    }

    v20 = v107;
    do
    {
      v53 = v116;
      while (v53 != v5)
      {
        v54 = *(v4 + 23);
        v55 = *(v53 + 23);
        if (v55 >= 0)
        {
          v56 = *(v53 + 23);
        }

        else
        {
          v56 = v53[1];
        }

        if (v55 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = *v53;
        }

        if (v54 >= 0)
        {
          v58 = *(v4 + 23);
        }

        else
        {
          v58 = v4[1];
        }

        if (v54 >= 0)
        {
          v59 = v4;
        }

        else
        {
          v59 = *v4;
        }

        if (v58 >= v56)
        {
          v60 = v56;
        }

        else
        {
          v60 = v58;
        }

        v61 = memcmp(v57, v59, v60);
        v62 = v56 < v58;
        if (v61)
        {
          v62 = v61 < 0;
        }

        if (v62)
        {
          break;
        }

        v63 = memcmp(v59, v57, v60);
        v64 = v58 < v56;
        if (v63)
        {
          v64 = v63 < 0;
        }

        if (!v64)
        {
          v53 += 3;
          v4 += 3;
          if (v4 != v111)
          {
            continue;
          }
        }

        goto LABEL_113;
      }

      v4 = *(v20 - 3);
      v52 = *(v20 - 2);
      v20 -= 3;
      v111 = v52;
    }

    while (v4 != v52);
  }

LABEL_113:
  v65 = v51;
  if (v51 >= v20)
  {
    goto LABEL_173;
  }

LABEL_114:
  v66 = *v65;
  v67 = *v20;
  do
  {
    *v65 = v67;
    *v20 = v66;
    v68 = v65[1];
    v65[1] = v20[1];
    v20[1] = v68;
    v69 = v65[2];
    v65[2] = v20[2];
    v20[2] = v69;
    do
    {
LABEL_118:
      v71 = v65[3];
      v70 = v65[4];
      v65 += 3;
    }

    while (v71 == v70);
    v112 = v71;
    v115 = v65;
    v72 = v116;
    while (v72 != v5)
    {
      v73 = *(v71 + 23);
      v74 = *(v72 + 23);
      if (v74 >= 0)
      {
        v75 = *(v72 + 23);
      }

      else
      {
        v75 = v72[1];
      }

      if (v74 >= 0)
      {
        v76 = v72;
      }

      else
      {
        v76 = *v72;
      }

      if (v73 >= 0)
      {
        v77 = *(v71 + 23);
      }

      else
      {
        v77 = v71[1];
      }

      if (v73 >= 0)
      {
        v78 = v71;
      }

      else
      {
        v78 = *v71;
      }

      if (v77 >= v75)
      {
        v79 = v75;
      }

      else
      {
        v79 = v77;
      }

      v80 = memcmp(v76, v78, v79);
      v81 = v75 < v77;
      if (v80)
      {
        v81 = v80 < 0;
      }

      if (v81)
      {
        break;
      }

      v82 = memcmp(v78, v76, v79);
      v83 = v77 < v75;
      if (v82)
      {
        v83 = v82 < 0;
      }

      v72 += 3;
      v71 += 3;
      if (v83)
      {
        v65 = v115;
        goto LABEL_118;
      }

      if (v71 == v70)
      {
        v65 = v115;
        goto LABEL_118;
      }
    }

    while (1)
    {
      v67 = *(v20 - 3);
      v84 = *(v20 - 2);
      v20 -= 3;
      if (v67 == v84)
      {
        break;
      }

      v118 = v20;
      v85 = v116;
      v86 = v67;
      while (v85 != v5)
      {
        v87 = *(v86 + 23);
        v88 = *(v85 + 23);
        if (v88 >= 0)
        {
          v89 = *(v85 + 23);
        }

        else
        {
          v89 = v85[1];
        }

        if (v88 >= 0)
        {
          v90 = v85;
        }

        else
        {
          v90 = *v85;
        }

        if (v87 >= 0)
        {
          v91 = *(v86 + 23);
        }

        else
        {
          v91 = v86[1];
        }

        if (v87 >= 0)
        {
          v92 = v86;
        }

        else
        {
          v92 = *v86;
        }

        if (v91 >= v89)
        {
          v93 = v89;
        }

        else
        {
          v93 = v91;
        }

        v94 = memcmp(v90, v92, v93);
        v95 = v89 < v91;
        if (v94)
        {
          v95 = v94 < 0;
        }

        if (v95)
        {
          break;
        }

        v96 = memcmp(v92, v90, v93);
        v97 = v91 < v89;
        if (v96)
        {
          v97 = v96 < 0;
        }

        if (!v97)
        {
          v85 += 3;
          v86 += 3;
          if (v86 != v84)
          {
            continue;
          }
        }

        v20 = v118;
        goto LABEL_116;
      }

      v20 = v118;
    }

LABEL_116:
    v66 = v112;
    v65 = v115;
  }

  while (v115 < v20);
LABEL_173:
  v98 = *a1;
  if (v65 - 3 == a1)
  {
    v99 = v108;
    if (v98)
    {
      v103 = *(v65 - 2);
      v104 = *a1;
      if (v103 != v98)
      {
        do
        {
          v105 = *(v103 - 1);
          v103 -= 3;
          if (v105 < 0)
          {
            operator delete(*v103);
          }
        }

        while (v103 != v98);
        v104 = *(v65 - 3);
      }

      *(v65 - 2) = v98;
      operator delete(v104);
    }
  }

  else
  {
    v99 = v108;
    if (v98)
    {
      v100 = a1[1];
      v101 = *a1;
      if (v100 != v98)
      {
        do
        {
          v102 = *(v100 - 1);
          v100 -= 3;
          if (v102 < 0)
          {
            operator delete(*v100);
          }
        }

        while (v100 != v98);
        v101 = *a1;
      }

      a1[1] = v98;
      operator delete(v101);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *(v65 - 3);
    a1[2] = *(v65 - 1);
  }

  *(v65 - 3) = v109;
  *(v65 - 1) = v99;
  return v65;
}

const void ***std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<std::string> *,std::__less<void,void> &>(const void ***a1, const void ***a2)
{
  v2 = *a1;
  v91 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v92 = v2;
  v3 = *(&v2 + 1);
  v4 = a1 + 3;
  v97 = a1[3];
  v99 = v2;
  if (v2 == *(&v2 + 1))
  {
    goto LABEL_159;
  }

  v95 = a2;
  v5 = a1[4];
  v6 = a1;
LABEL_4:
  v7 = 0;
  v8 = v4;
  do
  {
    v9 = &v97[v7];
    if (&v97[v7] == v5)
    {
      goto LABEL_3;
    }

    v10 = SHIBYTE(v99[v7 + 2]);
    v11 = *(v9 + 23);
    if (v11 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = v9[1];
    }

    if (v11 >= 0)
    {
      v13 = &v97[v7];
    }

    else
    {
      v13 = *v9;
    }

    if (v10 >= 0)
    {
      v14 = HIBYTE(v99[v7 + 2]);
    }

    else
    {
      v14 = v99[v7 + 1];
    }

    if (v10 >= 0)
    {
      v15 = &v99[v7];
    }

    else
    {
      v15 = v99[v7];
    }

    if (v14 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v14;
    }

    v17 = memcmp(v13, v15, v16);
    v18 = v12 < v14;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (v18)
    {
LABEL_3:
      v5 = v8[4];
      v4 = v8 + 3;
      v97 = v8[3];
      v6 = v8;
      goto LABEL_4;
    }

    v19 = memcmp(v15, v13, v16);
    v20 = v14 < v12;
    if (v19)
    {
      v20 = v19 < 0;
    }

    if (v20)
    {
      break;
    }

    v7 += 3;
  }

  while (&v99[v7] != v3);
  if (v6 != a1)
  {
LABEL_29:
    v21 = *(v95 - 3);
    v95 -= 3;
    v22 = v95[1];
    v23 = v99;
    while (v21 != v22)
    {
      v24 = *(v23 + 23);
      v25 = *(v21 + 23);
      if (v25 >= 0)
      {
        v26 = *(v21 + 23);
      }

      else
      {
        v26 = v21[1];
      }

      if (v25 >= 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = *v21;
      }

      if (v24 >= 0)
      {
        v28 = *(v23 + 23);
      }

      else
      {
        v28 = v23[1];
      }

      if (v24 >= 0)
      {
        v29 = v23;
      }

      else
      {
        v29 = *v23;
      }

      if (v28 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v28;
      }

      v31 = memcmp(v27, v29, v30);
      v32 = v26 < v28;
      if (v31)
      {
        v32 = v31 < 0;
      }

      if (v32)
      {
        break;
      }

      v33 = memcmp(v29, v27, v30);
      v34 = v28 < v26;
      if (v33)
      {
        v34 = v33 < 0;
      }

      v21 += 3;
      v23 += 3;
      if (v34 || v23 == v3)
      {
        goto LABEL_29;
      }
    }

LABEL_82:
    a2 = v95;
LABEL_83:
    v4 = v8;
    goto LABEL_84;
  }

  a2 = v95;
  v4 = v8;
  if (v8 >= v95)
  {
    goto LABEL_84;
  }

  if (v99 != v3)
  {
LABEL_56:
    v35 = *(a2 - 3);
    v95 = a2 - 3;
    v36 = *(a2 - 2);
    v37 = v99;
    while (v35 != v36)
    {
      v38 = *(v37 + 23);
      v39 = *(v35 + 23);
      if (v39 >= 0)
      {
        v40 = *(v35 + 23);
      }

      else
      {
        v40 = v35[1];
      }

      if (v39 >= 0)
      {
        v41 = v35;
      }

      else
      {
        v41 = *v35;
      }

      if (v38 >= 0)
      {
        v42 = *(v37 + 23);
      }

      else
      {
        v42 = v37[1];
      }

      if (v38 >= 0)
      {
        v43 = v37;
      }

      else
      {
        v43 = *v37;
      }

      if (v42 >= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = v42;
      }

      v45 = memcmp(v41, v43, v44);
      v46 = v40 < v42;
      if (v45)
      {
        v46 = v45 < 0;
      }

      if (v46)
      {
        break;
      }

      v47 = memcmp(v43, v41, v44);
      v48 = v42 < v40;
      if (v47)
      {
        v48 = v47 < 0;
      }

      if (!v48)
      {
        v35 += 3;
        v37 += 3;
        if (v37 != v3)
        {
          continue;
        }
      }

      a2 = v95;
      if (v8 < v95)
      {
        goto LABEL_56;
      }

      goto LABEL_83;
    }

    goto LABEL_82;
  }

  do
  {
    a2 -= 3;
LABEL_159:
    ;
  }

  while (v4 < a2);
LABEL_84:
  v49 = v4;
  v93 = v4;
  if (v4 < a2)
  {
    v50 = a2;
    v51 = *a2;
    v49 = v93;
    do
    {
      *v49 = v51;
      *v50 = v97;
      v52 = v49[1];
      v49[1] = v50[1];
      v50[1] = v52;
      v53 = v49[2];
      v49[2] = v50[2];
      v50[2] = v53;
LABEL_89:
      v54 = v49[3];
      v97 = v54;
      v98 = v49 + 3;
      v55 = v49[4];
      v56 = v99;
      do
      {
        if (v54 == v55)
        {
          v49 = v98;
          goto LABEL_89;
        }

        v57 = *(v56 + 23);
        v58 = *(v54 + 23);
        if (v58 >= 0)
        {
          v59 = *(v54 + 23);
        }

        else
        {
          v59 = v54[1];
        }

        if (v58 >= 0)
        {
          v60 = v54;
        }

        else
        {
          v60 = *v54;
        }

        if (v57 >= 0)
        {
          v61 = *(v56 + 23);
        }

        else
        {
          v61 = v56[1];
        }

        if (v57 >= 0)
        {
          v62 = v56;
        }

        else
        {
          v62 = *v56;
        }

        if (v61 >= v59)
        {
          v63 = v59;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v60, v62, v63);
        v65 = v59 < v61;
        if (v64)
        {
          v65 = v64 < 0;
        }

        if (v65)
        {
          v49 = v98;
          goto LABEL_89;
        }

        v66 = memcmp(v62, v60, v63);
        v67 = v61 < v59;
        if (v66)
        {
          v67 = v66 < 0;
        }

        if (v67)
        {
          break;
        }

        v54 += 3;
        v56 += 3;
      }

      while (v56 != v3);
LABEL_115:
      v68 = *(v50 - 3);
      v69 = *(v50 - 2);
      v50 -= 3;
      v96 = v68;
      v70 = v99;
      while (v68 != v69)
      {
        v71 = *(v70 + 23);
        v72 = *(v68 + 23);
        if (v72 >= 0)
        {
          v73 = *(v68 + 23);
        }

        else
        {
          v73 = v68[1];
        }

        if (v72 >= 0)
        {
          v74 = v68;
        }

        else
        {
          v74 = *v68;
        }

        if (v71 >= 0)
        {
          v75 = *(v70 + 23);
        }

        else
        {
          v75 = v70[1];
        }

        if (v71 >= 0)
        {
          v76 = v70;
        }

        else
        {
          v76 = *v70;
        }

        if (v75 >= v73)
        {
          v77 = v73;
        }

        else
        {
          v77 = v75;
        }

        v78 = memcmp(v74, v76, v77);
        v79 = v73 < v75;
        if (v78)
        {
          v79 = v78 < 0;
        }

        if (v79)
        {
          break;
        }

        v80 = memcmp(v76, v74, v77);
        v81 = v75 < v73;
        if (v80)
        {
          v81 = v80 < 0;
        }

        v68 += 3;
        v70 += 3;
        if (v81 || v70 == v3)
        {
          goto LABEL_115;
        }
      }

      v49 = v98;
      v51 = v96;
    }

    while (v98 < v50);
  }

  v82 = *a1;
  if (v49 - 3 == a1)
  {
    v83 = v91;
    if (v82)
    {
      v87 = *(v49 - 2);
      v88 = *a1;
      if (v87 != v82)
      {
        do
        {
          v89 = *(v87 - 1);
          v87 -= 3;
          if (v89 < 0)
          {
            operator delete(*v87);
          }
        }

        while (v87 != v82);
        v88 = *(v49 - 3);
      }

      *(v49 - 2) = v82;
      operator delete(v88);
    }
  }

  else
  {
    v83 = v91;
    if (v82)
    {
      v84 = a1[1];
      v85 = *a1;
      if (v84 != v82)
      {
        do
        {
          v86 = *(v84 - 1);
          v84 -= 3;
          if (v86 < 0)
          {
            operator delete(*v84);
          }
        }

        while (v84 != v82);
        v85 = *a1;
      }

      a1[1] = v82;
      operator delete(v85);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *(v49 - 3);
    a1[2] = *(v49 - 1);
  }

  *(v49 - 3) = v92;
  *(v49 - 1) = v83;
  return v49 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(const void ***a1, const void ***a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *a1;
      v4 = a1[1];
      if (*a1 != v4)
      {
        v5 = 0;
        v6 = *(a2 - 3);
        v7 = *(a2 - 2);
        while (1)
        {
          v8 = &v6[v5];
          if (&v6[v5] == v7)
          {
            break;
          }

          v9 = SHIBYTE(v3[v5 + 2]);
          v10 = *(v8 + 23);
          if (v10 >= 0)
          {
            v11 = *(v8 + 23);
          }

          else
          {
            v11 = v8[1];
          }

          if (v10 >= 0)
          {
            v12 = &v6[v5];
          }

          else
          {
            v12 = *v8;
          }

          if (v9 >= 0)
          {
            v13 = HIBYTE(v3[v5 + 2]);
          }

          else
          {
            v13 = v3[v5 + 1];
          }

          if (v9 >= 0)
          {
            v14 = &v3[v5];
          }

          else
          {
            v14 = v3[v5];
          }

          if (v13 >= v11)
          {
            v15 = v11;
          }

          else
          {
            v15 = v13;
          }

          v16 = memcmp(v12, v14, v15);
          v17 = v11 < v13;
          if (v16)
          {
            v17 = v16 < 0;
          }

          if (v17)
          {
            break;
          }

          v18 = memcmp(v14, v12, v15);
          v19 = v13 < v11;
          if (v18)
          {
            v19 = v18 < 0;
          }

          result = 1;
          if (!v19)
          {
            v5 += 3;
            if (&v3[v5] != v4)
            {
              continue;
            }
          }

          return result;
        }

        *a1 = v6;
        *(a2 - 3) = v3;
        v56 = a1[1];
        a1[1] = *(a2 - 2);
        *(a2 - 2) = v56;
        v57 = a1[2];
        a1[2] = *(a2 - 1);
        *(a2 - 1) = v57;
        return 1;
      }

      return 1;
    }
  }

  v21 = a1 + 6;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a1 + 3, a1 + 6);
  v23 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v24 = a2;
  v59 = 0;
  while (1)
  {
    v26 = *v21;
    v27 = v21[1];
    if (*v21 != v27)
    {
      v28 = 0;
      v29 = v23[1];
      v65 = *v23;
      v63 = v23;
      while (1)
      {
        v30 = &v65[v28];
        if (&v65[v28] == v29)
        {
          break;
        }

        v31 = SHIBYTE(v26[v28 + 2]);
        v32 = *(v30 + 23);
        if (v32 >= 0)
        {
          v33 = *(v30 + 23);
        }

        else
        {
          v33 = v30[1];
        }

        if (v32 >= 0)
        {
          v34 = &v65[v28];
        }

        else
        {
          v34 = *v30;
        }

        if (v31 >= 0)
        {
          v35 = HIBYTE(v26[v28 + 2]);
        }

        else
        {
          v35 = v26[v28 + 1];
        }

        if (v31 >= 0)
        {
          v36 = &v26[v28];
        }

        else
        {
          v36 = v26[v28];
        }

        if (v35 >= v33)
        {
          v37 = v33;
        }

        else
        {
          v37 = v35;
        }

        v38 = memcmp(v34, v36, v37);
        v39 = v33 < v35;
        if (v38)
        {
          v39 = v38 < 0;
        }

        if (v39)
        {
          break;
        }

        v40 = memcmp(v36, v34, v37);
        v41 = v35 < v33;
        if (v40)
        {
          v41 = v40 < 0;
        }

        if (!v41)
        {
          v28 += 3;
          if (&v26[v28] != v27)
          {
            continue;
          }
        }

        v24 = a2;
        v23 = v63;
        goto LABEL_39;
      }

      v58 = v63[2];
      v63[1] = 0;
      v63[2] = 0;
      *v63 = v26;
      *(v63 + 1) = *(v21 + 1);
      *v21 = 0;
      v21[1] = 0;
      v21[2] = 0;
      v25 = a1;
      if (v21 != a1)
      {
        while (1)
        {
          v25 = v21;
          v42 = *(v21 - 3);
          v43 = *(v21 - 2);
          v21 -= 3;
          if (v42 == v43)
          {
            break;
          }

          v61 = v42;
          v62 = v25;
          v44 = v65;
          while (v44 != v29)
          {
            v45 = *(v42 + 23);
            v46 = *(v44 + 23);
            if (v46 >= 0)
            {
              v47 = *(v44 + 23);
            }

            else
            {
              v47 = v44[1];
            }

            if (v46 >= 0)
            {
              v48 = v44;
            }

            else
            {
              v48 = *v44;
            }

            if (v45 >= 0)
            {
              v49 = *(v42 + 23);
            }

            else
            {
              v49 = v42[1];
            }

            if (v45 >= 0)
            {
              v50 = v42;
            }

            else
            {
              v50 = *v42;
            }

            if (v49 >= v47)
            {
              v51 = v47;
            }

            else
            {
              v51 = v49;
            }

            v52 = memcmp(v48, v50, v51);
            v53 = v47 < v49;
            if (v52)
            {
              v53 = v52 < 0;
            }

            if (v53)
            {
              break;
            }

            v54 = memcmp(v50, v48, v51);
            v55 = v49 < v47;
            if (v54)
            {
              v55 = v54 < 0;
            }

            if (!v55)
            {
              v44 += 3;
              v42 += 3;
              if (v42 != v43)
              {
                continue;
              }
            }

            v25 = v62;
            goto LABEL_38;
          }

          *v62 = v61;
          *(v62 + 1) = *(v62 - 1);
          *v21 = 0;
          v21[1] = 0;
          v21[2] = 0;
          if (v21 == a1)
          {
            v25 = a1;
            break;
          }
        }
      }

LABEL_38:
      *v25 = v65;
      v25[1] = v29;
      v25[2] = v58;
      ++v59;
      v24 = a2;
      v23 = v63;
      if (v59 == 8)
      {
        return v63 + 3 == a2;
      }
    }

LABEL_39:
    v21 = v23;
    v23 += 3;
    if (v23 == v24)
    {
      return 1;
    }
  }
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(uint64_t result, uint64_t a2, uint64_t a3, const void ***a4)
{
  v79 = result;
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v73 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v6 = (result + 24 * ((0x5555555555555556 * ((a4 - result) >> 3)) | 1));
      v71 = v6;
      v74 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
      {
        v7 = v6[3];
        v8 = v6[4];
        if (v7 != v8)
        {
          v69 = v6 + 3;
          v76 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
          v10 = *v6;
          v9 = v6[1];
          while (v10 != v9)
          {
            v11 = *(v7 + 23);
            v12 = *(v10 + 23);
            if (v12 >= 0)
            {
              v13 = *(v10 + 23);
            }

            else
            {
              v13 = v10[1];
            }

            if (v12 >= 0)
            {
              v14 = v10;
            }

            else
            {
              v14 = *v10;
            }

            if (v11 >= 0)
            {
              v15 = *(v7 + 23);
            }

            else
            {
              v15 = v7[1];
            }

            if (v11 >= 0)
            {
              v16 = v7;
            }

            else
            {
              v16 = *v7;
            }

            if (v15 >= v13)
            {
              v17 = v13;
            }

            else
            {
              v17 = v15;
            }

            result = memcmp(v14, v16, v17);
            v18 = v13 < v15;
            if (result)
            {
              v18 = result < 0;
            }

            if (v18)
            {
              break;
            }

            result = memcmp(v16, v14, v17);
            v19 = v15 < v13;
            if (result)
            {
              v19 = result < 0;
            }

            if (!v19)
            {
              v10 += 3;
              v7 += 3;
              if (v7 != v8)
              {
                continue;
              }
            }

            goto LABEL_31;
          }

          v71 = v69;
          v74 = v76;
        }
      }

LABEL_31:
      v20 = a4[1];
      v77 = *a4;
      if (*a4 == v20)
      {
LABEL_56:
        v68 = a4[2];
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        v33 = v71;
        v34 = v71[2];
        *a4 = *v71;
        a4[2] = v34;
        *v71 = 0;
        v71[1] = 0;
        v71[2] = 0;
        v35 = v74;
        if (v73 >= v74)
        {
          while (1)
          {
            v70 = v33;
            v37 = (2 * v35) | 1;
            v33 = v79 + 24 * v37;
            v38 = 2 * v35 + 2;
            v75 = v37;
            if (v38 < a3)
            {
              v39 = (v79 + 24 * v37);
              v40 = v33 + 24;
              v41 = *(v33 + 24);
              v42 = v39[4];
              if (v41 == v42)
              {
                v33 = v79 + 24 * v37;
              }

              else
              {
                v66 = v40;
                v67 = v38;
                v44 = *v39;
                v43 = v39[1];
                v72 = v79 + 24 * v37;
                while (v44 != v43)
                {
                  v45 = *(v41 + 23);
                  v46 = *(v44 + 23);
                  if (v46 >= 0)
                  {
                    v47 = *(v44 + 23);
                  }

                  else
                  {
                    v47 = v44[1];
                  }

                  if (v46 >= 0)
                  {
                    v48 = v44;
                  }

                  else
                  {
                    v48 = *v44;
                  }

                  if (v45 >= 0)
                  {
                    v49 = *(v41 + 23);
                  }

                  else
                  {
                    v49 = v41[1];
                  }

                  if (v45 >= 0)
                  {
                    v50 = v41;
                  }

                  else
                  {
                    v50 = *v41;
                  }

                  if (v49 >= v47)
                  {
                    v51 = v47;
                  }

                  else
                  {
                    v51 = v49;
                  }

                  result = memcmp(v48, v50, v51);
                  v52 = v47 < v49;
                  if (result)
                  {
                    v52 = result < 0;
                  }

                  if (v52)
                  {
                    break;
                  }

                  result = memcmp(v50, v48, v51);
                  v53 = v49 < v47;
                  if (result)
                  {
                    v53 = result < 0;
                  }

                  if (!v53)
                  {
                    v44 += 3;
                    v41 += 3;
                    if (v41 != v42)
                    {
                      continue;
                    }
                  }

                  v33 = v72;
                  goto LABEL_88;
                }

                v33 = v66;
                v75 = v67;
              }
            }

LABEL_88:
            if (v77 != v20)
            {
              break;
            }

LABEL_58:
            v36 = *(v33 + 16);
            *v70 = *v33;
            *(v70 + 16) = v36;
            *v33 = 0;
            *(v33 + 8) = 0;
            *(v33 + 16) = 0;
            v35 = v75;
            if (v73 < v75)
            {
              goto LABEL_115;
            }
          }

          v54 = *v33;
          v55 = *(v33 + 8);
          v56 = v77;
          while (v54 != v55)
          {
            v57 = *(v56 + 23);
            v58 = *(v54 + 23);
            if (v58 >= 0)
            {
              v59 = *(v54 + 23);
            }

            else
            {
              v59 = v54[1];
            }

            if (v58 >= 0)
            {
              v60 = v54;
            }

            else
            {
              v60 = *v54;
            }

            if (v57 >= 0)
            {
              v61 = *(v56 + 23);
            }

            else
            {
              v61 = v56[1];
            }

            if (v57 >= 0)
            {
              v62 = v56;
            }

            else
            {
              v62 = *v56;
            }

            if (v61 >= v59)
            {
              v63 = v59;
            }

            else
            {
              v63 = v61;
            }

            result = memcmp(v60, v62, v63);
            v64 = v59 < v61;
            if (result)
            {
              v64 = result < 0;
            }

            if (v64)
            {
              break;
            }

            result = memcmp(v62, v60, v63);
            v65 = v61 < v59;
            if (result)
            {
              v65 = result < 0;
            }

            if (!v65)
            {
              v54 += 3;
              v56 += 3;
              if (v56 != v20)
              {
                continue;
              }
            }

            goto LABEL_58;
          }

          v33 = v70;
        }

LABEL_115:
        *v33 = v77;
        *(v33 + 8) = v20;
        *(v33 + 16) = v68;
      }

      else
      {
        v21 = *v71;
        v22 = v71[1];
        v23 = *a4;
        while (v21 != v22)
        {
          v24 = *(v23 + 23);
          v25 = *(v21 + 23);
          if (v25 >= 0)
          {
            v26 = *(v21 + 23);
          }

          else
          {
            v26 = v21[1];
          }

          if (v25 >= 0)
          {
            v27 = v21;
          }

          else
          {
            v27 = *v21;
          }

          if (v24 >= 0)
          {
            v28 = *(v23 + 23);
          }

          else
          {
            v28 = v23[1];
          }

          if (v24 >= 0)
          {
            v29 = v23;
          }

          else
          {
            v29 = *v23;
          }

          if (v28 >= v26)
          {
            v30 = v26;
          }

          else
          {
            v30 = v28;
          }

          result = memcmp(v27, v29, v30);
          v31 = v26 < v28;
          if (result)
          {
            v31 = result < 0;
          }

          if (v31)
          {
            break;
          }

          result = memcmp(v29, v27, v30);
          v32 = v28 < v26;
          if (result)
          {
            v32 = result < 0;
          }

          if (!v32)
          {
            v21 += 3;
            v23 += 3;
            if (v23 != v20)
            {
              continue;
            }
          }

          goto LABEL_56;
        }
      }
    }
  }

  return result;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<std::string> *>(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(a1, a3, a4);
    v11 = v10;
    v12 = *v10;
    if (v10 == (a2 - 24))
    {
      if (v12)
      {
        v16 = v10[1];
        v17 = *v10;
        if (v16 != v12)
        {
          do
          {
            v18 = *(v16 - 1);
            v16 -= 3;
            if (v18 < 0)
            {
              operator delete(*v16);
            }
          }

          while (v16 != v12);
          v17 = *v11;
        }

        v11[1] = v12;
        operator delete(v17);
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
      }

      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
    }

    else
    {
      if (v12)
      {
        v13 = v10[1];
        v14 = *v10;
        if (v13 != v12)
        {
          do
          {
            v15 = *(v13 - 1);
            v13 -= 3;
            if (v15 < 0)
            {
              operator delete(*v13);
            }
          }

          while (v13 != v12);
          v14 = *v11;
        }

        v11[1] = v12;
        operator delete(v14);
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
      }

      *v11 = *(a2 - 24);
      v11[2] = *(a2 - 8);
      *(a2 - 24) = v5;
      *(a2 - 16) = v6;
      *(a2 - 8) = v7;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(a1, (v11 + 3), a3, 0xAAAAAAAAAAAAAAABLL * (v11 + 3 - a1));
    }
  }
}

void sub_23CD27ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(void ***a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = 0;
  v6 = (a3 - 2) / 2;
  v32 = v6;
  do
  {
    v8 = &a1[3 * v5];
    v9 = v8 + 3;
    v10 = 2 * v5;
    v5 = (2 * v5) | 1;
    v11 = v10 + 2;
    if (v11 < v3)
    {
      v37 = v11;
      v14 = v8[6];
      v13 = v8[7];
      v12 = v8 + 6;
      if (v14 != v13)
      {
        v34 = v9;
        v35 = v5;
        v16 = *(v12 - 3);
        v15 = *(v12 - 2);
        v36 = v12;
        while (v16 != v15)
        {
          v17 = *(v14 + 23);
          v18 = *(v16 + 23);
          if (v18 >= 0)
          {
            v19 = *(v16 + 23);
          }

          else
          {
            v19 = v16[1];
          }

          if (v18 >= 0)
          {
            v20 = v16;
          }

          else
          {
            v20 = *v16;
          }

          if (v17 >= 0)
          {
            v21 = *(v14 + 23);
          }

          else
          {
            v21 = v14[1];
          }

          if (v17 >= 0)
          {
            v22 = v14;
          }

          else
          {
            v22 = *v14;
          }

          if (v21 >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = v21;
          }

          v24 = memcmp(v20, v22, v23);
          v25 = v19 < v21;
          if (v24)
          {
            v25 = v24 < 0;
          }

          if (v25)
          {
            break;
          }

          v26 = memcmp(v22, v20, v23);
          v27 = v21 < v19;
          if (v26)
          {
            v27 = v26 < 0;
          }

          if (!v27)
          {
            v16 += 3;
            v14 += 3;
            if (v14 != v13)
            {
              continue;
            }
          }

          v6 = v32;
          v3 = a3;
          v9 = v34;
          v5 = v35;
          goto LABEL_33;
        }

        v9 = v36;
        v5 = v37;
        v6 = v32;
        v3 = a3;
      }
    }

LABEL_33:
    v28 = *a1;
    if (*a1)
    {
      v29 = a1[1];
      v7 = *a1;
      if (v29 != v28)
      {
        do
        {
          v30 = *(v29 - 1);
          v29 -= 3;
          if (v30 < 0)
          {
            operator delete(*v29);
          }
        }

        while (v29 != v28);
        v7 = *a1;
      }

      a1[1] = v28;
      operator delete(v7);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *v9;
    a1[2] = v9[2];
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    a1 = v9;
  }

  while (v5 <= v6);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = result;
  v36 = a4 - 2;
  if (a4 >= 2)
  {
    v33 = (a2 - 24);
    v4 = *(a2 - 16);
    v35 = *(a2 - 24);
    if (v35 != v4)
    {
      v34 = v36 >> 1;
      v5 = (result + 24 * (v36 >> 1));
      v7 = *v5;
      v6 = v5[1];
      v8 = *(a2 - 24);
      while (v7 != v6)
      {
        v9 = *(v8 + 23);
        v10 = *(v7 + 23);
        if (v10 >= 0)
        {
          v11 = *(v7 + 23);
        }

        else
        {
          v11 = v7[1];
        }

        if (v10 >= 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = *v7;
        }

        if (v9 >= 0)
        {
          v13 = *(v8 + 23);
        }

        else
        {
          v13 = v8[1];
        }

        if (v9 >= 0)
        {
          v14 = v8;
        }

        else
        {
          v14 = *v8;
        }

        if (v13 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v13;
        }

        result = memcmp(v12, v14, v15);
        v16 = v11 < v13;
        if (result)
        {
          v16 = result < 0;
        }

        if (v16)
        {
          break;
        }

        result = memcmp(v14, v12, v15);
        v17 = v13 < v11;
        if (result)
        {
          v17 = result < 0;
        }

        if (!v17)
        {
          v7 += 3;
          v8 += 3;
          if (v8 != v4)
          {
            continue;
          }
        }

        return result;
      }

      v32 = *(a2 - 8);
      *v33 = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v18 = v5[2];
      *(a2 - 24) = *v5;
      *(a2 - 8) = v18;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
      if (v36 >= 2)
      {
        while (2)
        {
          v40 = v5;
          v19 = v35;
          v37 = v34 - 1;
          v34 = (v34 - 1) >> 1;
          v5 = (v38 + 24 * v34);
          v20 = *v5;
          v21 = v5[1];
          while (v20 != v21)
          {
            v22 = *(v19 + 23);
            v23 = *(v20 + 23);
            if (v23 >= 0)
            {
              v24 = *(v20 + 23);
            }

            else
            {
              v24 = v20[1];
            }

            if (v23 >= 0)
            {
              v25 = v20;
            }

            else
            {
              v25 = *v20;
            }

            if (v22 >= 0)
            {
              v26 = *(v19 + 23);
            }

            else
            {
              v26 = v19[1];
            }

            if (v22 >= 0)
            {
              v27 = v19;
            }

            else
            {
              v27 = *v19;
            }

            if (v26 >= v24)
            {
              v28 = v24;
            }

            else
            {
              v28 = v26;
            }

            result = memcmp(v25, v27, v28);
            v29 = v24 < v26;
            if (result)
            {
              v29 = result < 0;
            }

            if (v29)
            {
              break;
            }

            result = memcmp(v27, v25, v28);
            v30 = v26 < v24;
            if (result)
            {
              v30 = result < 0;
            }

            if (!v30)
            {
              v20 += 3;
              v19 += 3;
              if (v19 != v4)
              {
                continue;
              }
            }

            v5 = v40;
            goto LABEL_57;
          }

          v31 = v5[2];
          *v40 = *v5;
          v40[2] = v31;
          *v5 = 0;
          v5[1] = 0;
          v5[2] = 0;
          if (v37 >= 2)
          {
            continue;
          }

          break;
        }
      }

LABEL_57:
      *v5 = v35;
      v5[1] = v4;
      v5[2] = v32;
    }
  }

  return result;
}

char *std::__stable_partition_impl<std::_ClassicAlgPolicy,operations_research::sat::MoveOneUnprocessedLiteralLast(absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>> const&,int,std::vector<operations_research::sat::Literal> *)::$_0 &,std::__wrap_iter<operations_research::sat::Literal*>,long,std::pair<operations_research::sat::Literal*,long>>(int32x2_t *a1, int32x2_t *a2, uint64_t ***a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a4 == 3)
  {
    v7 = a1 + 4;
    v8 = a1->i32[1];
    v9 = **a3;
    v10 = *(v9 + 10);
    if (*(v9 + 10))
    {
      goto LABEL_7;
    }

    while (!*(v9 + 11))
    {
      v9 = *(v9 + 8 * v10 + 256);
      v10 = *(v9 + 10);
      if (*(v9 + 10))
      {
LABEL_7:
        v11 = 0;
        do
        {
          v12 = (v10 + v11) >> 1;
          if (*(v9 + 12 + 4 * v12) < v8)
          {
            v11 = v12 + 1;
          }

          else
          {
            v10 = (v10 + v11) >> 1;
          }
        }

        while (v11 != v10);
      }
    }

    while (v10 == *(v9 + 10))
    {
      LODWORD(v10) = *(v9 + 8);
      v9 = *v9;
      if (*(v9 + 11))
      {
        goto LABEL_77;
      }
    }

    if (*(v9 + 4 * v10 + 12) <= v8)
    {
      v42 = (*a3)[1];
      if (v9 != v42 || v10 != *(v42 + 10))
      {
        v6 = a1->i32[0];
        a1->i32[0] = v8;
        a1->i32[1] = v6;
        a1->i32[1] = a2->i32[0];
        goto LABEL_18;
      }
    }

LABEL_77:
    a1->i32[1] = a2->i32[0];
    a2->i32[0] = v8;
    *a1 = vrev64_s32(*a1);
    return v7;
  }

  if (a4 != 2)
  {
    if (a6 < a4)
    {
      v14 = a4 / 2;
      v15 = (a1 + 4 * (a4 / 2));
      v16 = *a3;
      v17 = a4 / 2;
      v18 = (v15 - 4);
      v19 = v15[-1].i32[1];
      v20 = **a3;
      v21 = *(v20 + 10);
      if (*(v20 + 10))
      {
        goto LABEL_25;
      }

      while (1)
      {
        while (!*(v20 + 11))
        {
          v20 = v20[v21 + 32];
          v21 = *(v20 + 10);
          if (*(v20 + 10))
          {
LABEL_25:
            v23 = 0;
            do
            {
              v24 = (v21 + v23) >> 1;
              if (*(v20 + v24 + 3) < v19)
              {
                v23 = v24 + 1;
              }

              else
              {
                v21 = (v21 + v23) >> 1;
              }
            }

            while (v23 != v21);
          }
        }

        while (v21 == *(v20 + 10))
        {
          LODWORD(v21) = *(v20 + 8);
          v20 = *v20;
          if (*(v20 + 11))
          {
            goto LABEL_40;
          }
        }

        v25 = v16[1];
        if (*(v20 + v21 + 3) <= v19 && (v20 != v25 || v21 != *(v25 + 10)))
        {
          v44 = a2;
          v45 = a3;
          v46 = a4;
          v47 = a5;
          v48 = a6;
          a1 = std::__stable_partition_impl<std::_ClassicAlgPolicy,operations_research::sat::MoveOneUnprocessedLiteralLast(absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>> const&,int,std::vector<operations_research::sat::Literal> *)::$_0 &,std::__wrap_iter<operations_research::sat::Literal*>,long,std::pair<operations_research::sat::Literal*,long>>(a1, v18, a3, v17, a5, a6);
          a4 = v46;
          a6 = v48;
          a3 = v45;
          a5 = v47;
          a2 = v44;
          v16 = *v45;
          break;
        }

LABEL_40:
        if (v18 == a1)
        {
          break;
        }

        --v17;
        v22 = v18[-1].i32[1];
        v18 = (v18 - 4);
        v19 = v22;
        v20 = *v16;
        v21 = *(*v16 + 10);
        if (*(*v16 + 10))
        {
          goto LABEL_25;
        }
      }

      v49 = a2 + 1;
      v50 = a4 - v14;
      v51 = v15;
      v52 = v15->i32[0];
      v53 = *v16;
      v54 = *(*v16 + 10);
      if (*(*v16 + 10))
      {
        goto LABEL_84;
      }

      while (1)
      {
        while (!*(v53 + 11))
        {
          v53 = v53[v54 + 32];
          v54 = *(v53 + 10);
          if (*(v53 + 10))
          {
LABEL_84:
            v55 = 0;
            do
            {
              v56 = (v54 + v55) >> 1;
              if (*(v53 + v56 + 3) < v52)
              {
                v55 = v56 + 1;
              }

              else
              {
                v54 = (v54 + v55) >> 1;
              }
            }

            while (v55 != v54);
          }
        }

        while (v54 == *(v53 + 10))
        {
          LODWORD(v54) = *(v53 + 8);
          v53 = *v53;
          if (*(v53 + 11))
          {
            goto LABEL_100;
          }
        }

        v57 = v16[1];
        if (*(v53 + v54 + 3) > v52)
        {
          break;
        }

        if (v53 == v57 && v54 == *(v57 + 10))
        {
          break;
        }

        v51 = (v51 + 4);
        if (v51 == a2)
        {
          return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Literal *>,std::__wrap_iter<operations_research::sat::Literal *>>(a1, v15, v49);
        }

        --v50;
        v52 = v51->i32[0];
        v53 = *v16;
        v54 = *(*v16 + 10);
        if (*(*v16 + 10))
        {
          goto LABEL_84;
        }
      }

LABEL_100:
      v59 = a1;
      v49 = std::__stable_partition_impl<std::_ClassicAlgPolicy,operations_research::sat::MoveOneUnprocessedLiteralLast(absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>> const&,int,std::vector<operations_research::sat::Literal> *)::$_0 &,std::__wrap_iter<operations_research::sat::Literal*>,long,std::pair<operations_research::sat::Literal*,long>>(v51, a2, a3, v50, a5, a6);
      a1 = v59;
      return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Literal *>,std::__wrap_iter<operations_research::sat::Literal *>>(a1, v15, v49);
    }

    v27 = a1 + 1;
    *a5 = a1->i32[0];
    v28 = (a5 + 4);
    if (&a1->u8[4] != a2)
    {
      v29 = *a3;
      v30 = *v27;
      v31 = **a3;
      v32 = *(v31 + 10);
      if (*(v31 + 10))
      {
        goto LABEL_49;
      }

LABEL_54:
      while (!*(v31 + 11))
      {
        v31 = v31[v32 + 32];
        v32 = *(v31 + 10);
        if (*(v31 + 10))
        {
LABEL_49:
          v33 = 0;
          do
          {
            v34 = (v32 + v33) >> 1;
            if (*(v31 + v34 + 3) < v30)
            {
              v33 = v34 + 1;
            }

            else
            {
              v32 = (v32 + v33) >> 1;
            }
          }

          while (v33 != v32);
        }
      }

      while (v32 == *(v31 + 10))
      {
        LODWORD(v32) = *(v31 + 8);
        v31 = *v31;
        if (*(v31 + 11))
        {
LABEL_45:
          *v28++ = v30;
          if (++v27 == a2)
          {
            goto LABEL_64;
          }

LABEL_46:
          v30 = *v27;
          v31 = *v29;
          v32 = *(*v29 + 10);
          if (*(*v29 + 10))
          {
            goto LABEL_49;
          }

          goto LABEL_54;
        }
      }

      v35 = v29[1];
      if (*(v31 + v32 + 3) > v30)
      {
        goto LABEL_45;
      }

      if (v31 == v35 && v32 == *(v35 + 10))
      {
        goto LABEL_45;
      }

      a1->i32[0] = v30;
      a1 = (a1 + 4);
      if (++v27 != a2)
      {
        goto LABEL_46;
      }
    }

LABEL_64:
    a1->i32[0] = *v27;
    v7 = a1 + 4;
    if (v28 > a5)
    {
      v37 = (a5 + 4);
      if (v28 > a5 + 4)
      {
        v37 = v28;
      }

      v38 = v37 + ~a5;
      if (v38 >= 0x1C && a1 - a5 + 4 >= 0x20)
      {
        v60 = (v38 >> 2) + 1;
        v61 = 4 * (v60 & 0x7FFFFFFFFFFFFFF8);
        v39 = (a5 + v61);
        v40 = &v7[v61];
        v62 = (&a1[2] + 4);
        v63 = (a5 + 16);
        v64 = v60 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v65 = *v63;
          *(v62 - 1) = *(v63 - 1);
          *v62 = v65;
          v62 += 2;
          v63 += 2;
          v64 -= 8;
        }

        while (v64);
        result = a1 + 4;
        if (v60 == (v60 & 0x7FFFFFFFFFFFFFF8))
        {
          return result;
        }
      }

      else
      {
        v39 = a5;
        result = a1 + 4;
        v40 = v7;
      }

      do
      {
        v41 = *v39++;
        *v40 = v41;
        v40 += 4;
      }

      while (v39 < v28);
      return result;
    }

    return v7;
  }

  v6 = a1->i32[0];
  a1->i32[0] = a2->i32[0];
LABEL_18:
  a2->i32[0] = v6;
  return a2;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Literal *>,std::__wrap_iter<operations_research::sat::Literal *>>(char *__src, uint64_t a2, _DWORD *__dst)
{
  v4 = __dst;
  v5 = a2 - __src;
  if (a2 == __src)
  {
    return v4;
  }

  v6 = __dst - a2;
  if (__dst == a2)
  {
    return __src;
  }

  if (__src + 4 == a2)
  {
    v8 = *__src;
    v9 = __src;
    memmove(__src, __src + 4, v6);
    v10 = &v9[v6];
    *v10 = v8;
    return v10;
  }

  else if ((a2 + 4) == __dst)
  {
    v11 = *(__dst - 1);
    v12 = __src + 4;
    v13 = (__dst - 1) - __src;
    if (__dst - 1 != __src)
    {
      v14 = __src;
      memmove(__src + 4, __src, v13);
      __src = v14;
    }

    *__src = v11;
    return v12;
  }

  else
  {
    v15 = v5 >> 2;
    v16 = v6 >> 2;
    if (v5 >> 2 == v6 >> 2)
    {
      v17 = __src + 4;
      v18 = (a2 + 4);
      do
      {
        v19 = *(v17 - 1);
        *(v17 - 1) = *(v18 - 1);
        *(v18 - 1) = v19;
        if (v17 == a2)
        {
          break;
        }

        v17 += 4;
      }

      while (v18++ != __dst);
      return a2;
    }

    else
    {
      v21 = v5 >> 2;
      do
      {
        v22 = v21;
        v21 = v16;
        v16 = v22 % v16;
      }

      while (v16);
      v23 = &__src[4 * v21];
      do
      {
        v25 = *(v23 - 1);
        v23 -= 4;
        v24 = v25;
        v26 = &v23[v5];
        v27 = v23;
        do
        {
          v28 = v26;
          *v27 = *v26;
          v29 = (__dst - v26) >> 2;
          v30 = __OFSUB__(v15, v29);
          v32 = v15 - v29;
          v31 = (v32 < 0) ^ v30;
          v26 = &__src[4 * v32];
          if (v31)
          {
            v26 = &v28[4 * v15];
          }

          v27 = v28;
        }

        while (v26 != v23);
        *v28 = v24;
      }

      while (v23 != __src);
      return &__src[v6];
    }
  }
}

unint64_t absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::try_emplace_impl<std::vector<long long> const&>@<X0>(unint64_t *a1@<X0>, absl::lts_20240722::hash_internal::MixingHashState **a2@<X1>, uint64_t a3@<X8>, unint64_t a4@<X3>, const unint64_t *a5@<X4>)
{
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, a2[1] - *a2, a4, a5);
  v15 = 0;
  v16 = *a2;
  v17 = a2[1] - *a2;
  v18 = (((v14 + (v17 >> 3)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + (v17 >> 3)));
  v19 = a1[2];
  v20 = *a1;
  v21 = vdup_n_s8(v18 & 0x7F);
  v22 = ((v18 >> 7) ^ (v19 >> 12)) & *a1;
  v23 = *(v19 + v22);
  v24 = vceq_s8(v23, v21);
  if (v24)
  {
LABEL_2:
    v25 = a1[3];
    v35 = v15;
    v36 = a3;
    v33 = v25;
    v34 = v20;
    while (1)
    {
      v26 = (v22 + (__clz(__rbit64(v24)) >> 3)) & v20;
      v27 = v25 + 48 * v26;
      if (*(v27 + 8) - *v27 == v17)
      {
        result = memcmp(*v27, v16, v17);
        if (!result)
        {
          break;
        }
      }

      v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v15 = v35;
      a3 = v36;
      v25 = v33;
      v20 = v34;
      if (!v24)
      {
        goto LABEL_6;
      }
    }

    *v36 = v19 + v26;
    *(v36 + 8) = v27;
    *(v36 + 16) = 0;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v29 = vceq_s8(v23, 0x8080808080808080);
      if (v29)
      {
        break;
      }

      v15 += 8;
      v22 = (v15 + v22) & v20;
      v23 = *(v19 + v22);
      v24 = vceq_s8(v23, v21);
      if (v24)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v18, (v22 + (__clz(__rbit64(v29)) >> 3)) & v20, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::GetPolicyFunctions(void)::value);
    v30 = a1[2] + result;
    v31 = (a1[3] + 48 * result);
    *a3 = v30;
    *(a3 + 8) = v31;
    *(a3 + 16) = 1;
    v31[1] = 0;
    v31[2] = 0;
    *v31 = 0;
    v32 = a2[1] - *a2;
    if (v32)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
  }

  return result;
}

void sub_23CD28880(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,48ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::vector<long long> const,std::vector<int>> *)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v7 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, *(a2 + 8) - *a2, a4, a5) + ((*(a2 + 8) - *a2) >> 3);
  v8 = ((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v7);
  v9 = *(a1 + 8);
  v10 = v9[2];
  v11 = *v9;
  v12 = ((v8 >> 7) ^ (v10 >> 12)) & *v9;
  if (*(v10 + v12) >= -1)
  {
    v13 = 0;
    for (i = *(v10 + v12) & ~(*(v10 + v12) << 7) & 0x8080808080808080; !i; i = *(v10 + v12) & ~(*(v10 + v12) << 7) & 0x8080808080808080)
    {
      v13 += 8;
      v12 = (v13 + v12) & v11;
    }

    v12 = (v12 + (__clz(__rbit64(i)) >> 3)) & v11;
  }

  else
  {
    v13 = 0;
  }

  v15 = v8 & 0x7F;
  *(v10 + v12) = v15;
  *(v10 + ((v12 - 7) & v11) + (v11 & 7)) = v15;
  v16 = (**(a1 + 16) + 48 * v12);
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  *v16 = *a2;
  v16[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v16[3] = 0;
  v16[4] = 0;
  v16[5] = 0;
  *(v16 + 3) = *(a2 + 24);
  v16[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v17 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v17;
    operator delete(v17);
  }

  return v13;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::transfer_slot_fn(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = *a3;
  a2[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 3) = *(a3 + 24);
  a2[5] = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v3 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v3;
    operator delete(v3);
  }
}

char *std::vector<operations_research::sat::BasicKnapsackSolver::State>::__assign_with_size[abi:ne200100]<operations_research::sat::BasicKnapsackSolver::State*,operations_research::sat::BasicKnapsackSolver::State*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void operations_research::sat::VarDomination::Reset(operations_research::sat::VarDomination *this, int a2)
{
  *this = 0;
  *(this + 30) = 2 * a2;
  operator new();
}

void operations_research::sat::VarDomination::CanOnlyDominateEachOther(uint64_t a1, int *a2, uint64_t a3)
{
  if (!*a1)
  {
    v21 = v3;
    v22 = v4;
    v8 = a1 + 32;
    v7 = *(a1 + 32);
    *(a1 + 40) = v7;
    if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 4 * a3;
      do
      {
        v10 = *a2++;
        v11 = 2 * v10;
        v12 = 2 * ~v10;
        if (v10 < 0)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = v11;
        }

        v20 = v13;
        std::vector<int>::push_back[abi:ne200100](v8, &v20);
        v9 -= 4;
      }

      while (v9);
      v7 = *(a1 + 32);
      v14 = *(a1 + 40);
      if (v7 != v14)
      {
        operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v7, v14 - v7);
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        if (v15 != v16)
        {
          v17 = *(a1 + 64);
          v18 = *(a1 + 32);
          do
          {
            v19 = *v18;
            *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~((1 << (v19 ^ 1u)) | (1 << v19));
            *v18++ = v19 ^ 1;
          }

          while (v18 != v16);
        }

        operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v15, v16 - v15);
        v7 = *(a1 + 32);
      }
    }

    *(a1 + 40) = v7;
  }
}

void operations_research::sat::VarDomination::ActivityShouldNotChange(uint64_t a1, int *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (!*a1)
  {
    v27 = v6;
    v28 = v7;
    operations_research::sat::VarDomination::FillTempRanks(a1, 0, 0, 0, a2, a3, a4, a5, a6);
    v9 = *(a1 + 32);
    *(a1 + 40) = v9;
    v10 = *(a1 + 8);
    if (*(a1 + 16) != v10)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (v12 >= 1 && *(v10 + 16 * v11 + 8) != *(v10 + 16 * v12 - 8))
        {
          v13 = *(a1 + 32);
          v14 = *(a1 + 40);
          if (v13 != v14)
          {
            operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v13, v14 - v13);
            v15 = *(a1 + 32);
            v16 = *(a1 + 40);
            if (v15 != v16)
            {
              v17 = *(a1 + 64);
              v18 = *(a1 + 32);
              do
              {
                v19 = *v18;
                *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~((1 << (v19 ^ 1u)) | (1 << v19));
                *v18++ = v19 ^ 1;
              }

              while (v18 != v16);
            }

            operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v15, v16 - v15);
            v13 = *(a1 + 32);
            v10 = *(a1 + 8);
          }

          *(a1 + 40) = v13;
        }

        v26 = *(v10 + 16 * v11);
        std::vector<int>::push_back[abi:ne200100](a1 + 32, &v26);
        v11 = ++v12;
        v10 = *(a1 + 8);
      }

      while (v12 < ((*(a1 + 16) - v10) >> 4));
      v9 = *(a1 + 32);
      v20 = *(a1 + 40);
      if (v9 != v20)
      {
        operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v9, v20 - v9);
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        if (v21 != v22)
        {
          v23 = *(a1 + 64);
          v24 = *(a1 + 32);
          do
          {
            v25 = *v24;
            *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~((1 << (v25 ^ 1u)) | (1 << v25));
            *v24++ = v25 ^ 1;
          }

          while (v24 != v22);
        }

        operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v21, v22 - v21);
        v9 = *(a1 + 32);
      }
    }

    *(a1 + 40) = v9;
  }
}

void operations_research::sat::VarDomination::FillTempRanks(uint64_t a1, int a2, int *a3, uint64_t a4, int *a5, unint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v16 = a1 + 8;
  v15 = *(a1 + 8);
  *(a1 + 16) = v15;
  if (a8)
  {
    if (a6)
    {
      v18 = 0;
      v19 = a2 << 31 >> 31;
      v20 = 1;
      do
      {
        v21 = *(a7 + 8 * v18);
        if (v21)
        {
          v22 = a5[v18];
          v23 = v22 ^ v19;
          v24 = 2 * (v22 ^ v19);
          v25 = 2 * (v22 ^ ~v19);
          if (v23 < 0)
          {
            v26 = v25 + 1;
          }

          else
          {
            v26 = v24;
          }

          if (v21 < 1)
          {
            *&v49 = v26 ^ 1;
            v21 = -v21;
          }

          else
          {
            *&v49 = v26;
          }

          *(&v49 + 1) = v21;
          std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v16, &v49);
        }

        v18 = v20++;
      }

      while (a6 > v18);
      v27 = *(a1 + 8);
      v15 = *(a1 + 16);
    }

    else
    {
      v27 = v15;
    }

    v34 = 126 - 2 * __clz(v15 - v27);
    if (v15 == v27)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *,false>(v27, v15, &v49, v35, 1, a9);
    v36 = *(a1 + 8);
    v37 = *(a1 + 16) - v36;
    if ((v37 >> 4) >= 1)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = (v37 >> 4) & 0x7FFFFFFF;
      v42 = (v36 + 8);
      do
      {
        if (*v42 != v40)
        {
          v40 = *v42;
          v39 = v38;
        }

        *v42 = v39;
        v42 += 2;
        ++v38;
      }

      while (v41 != v38);
    }
  }

  else if ((a6 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = a2 << 31 >> 31;
    v29 = 4 * a6;
    do
    {
      v30 = *a5++;
      v31 = 2 * (v30 ^ v28);
      v32 = 2 * (v30 ^ ~v28);
      if ((v30 ^ v28) < 0)
      {
        v33 = v32 + 1;
      }

      else
      {
        v33 = v31;
      }

      v49 = v33;
      std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v16, &v49);
      v29 -= 4;
    }

    while (v29);
  }

  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v43 = ((*(a1 + 16) - *(a1 + 8)) >> 4);
    v44 = 4 * a4;
    do
    {
      v45 = *a3++;
      v46 = 2 * ~v45;
      v47 = 2 * v45;
      if (v45 >= 0)
      {
        v48 = v47 + 1;
      }

      else
      {
        v48 = v46;
      }

      *&v49 = v48;
      *(&v49 + 1) = v43;
      std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v16, &v49);
      v44 -= 4;
    }

    while (v44);
  }
}