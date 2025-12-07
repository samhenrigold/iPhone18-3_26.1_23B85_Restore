uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      v10 = *(a2 + v7);
      *(v8 + 16) = *(a2 + v7 + 16);
      *v8 = v10;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      *(v8 + 24) = *(a2 + v7 + 24);
      v11 = (a2 + v7 + 32);
      v12 = *v11;
      *(a4 + v7 + 32) = *v11;
      v13 = a4 + v7 + 32;
      v14 = *(a2 + v7 + 40);
      *(v8 + 40) = v14;
      if (v14)
      {
        *(v12 + 16) = v13;
        v9[3] = v11;
        *v11 = 0;
        *(a2 + v7 + 40) = 0;
      }

      else
      {
        *(v8 + 24) = v13;
      }

      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    v19 = a4 + v7;
    v17 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::AppLmData::Oov>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>>::~__exception_guard_exceptions[abi:ne200100](v16);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 56;
      std::allocator<quasar::AppLmData::Oov>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<quasar::AppLmData::Oov>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::AppLmData::Oov>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::AppLmData::Oov>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<quasar::AppLmData::Oov>::destroy[abi:ne200100](v4, i - 56);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,false>(unint64_t a1, const std::string::value_type **a2, uint64_t a3, char a4)
{
  while (2)
  {
    v217 = (a2 - 7);
    v215 = (a2 - 4);
    v4 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v4;
        v5 = a2 - v4;
        v6 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v4) >> 3);
        v7 = v6 - 2;
        if (v6 > 2)
        {
          switch(v6)
          {
            case 3:
              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4, v4 + 56, v217);
              return;
            case 4:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4, v4 + 56, v4 + 112, v217);
              return;
            case 5:
              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4, v4 + 56, v4 + 112, v4 + 168, v217);
              return;
          }
        }

        else
        {
          if (v6 < 2)
          {
            return;
          }

          if (v6 == 2)
          {
            if (*(a2 - 33) < 0)
            {
              std::string::__init_copy_ctor_external(&v234, *(a2 - 7), *(a2 - 6));
            }

            else
            {
              v81 = *v217;
              v234.__r_.__value_.__r.__words[2] = *(a2 - 5);
              *&v234.__r_.__value_.__l.__data_ = v81;
            }

            std::set<std::string>::set[abi:ne200100](v235, v215);
            v236 = *(a2 - 2);
            if (*(v4 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v231, *v4, *(v4 + 8));
            }

            else
            {
              v212 = *v4;
              v231.__r_.__value_.__r.__words[2] = *(v4 + 16);
              *&v231.__r_.__value_.__l.__data_ = v212;
            }

            std::set<std::string>::set[abi:ne200100](v232, (v4 + 24));
            v213 = *(v4 + 48);
            v233 = v213;
            v214 = v236;
            std::__tree<std::string>::destroy(v232, v232[1]);
            if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v231.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(v235, v235[1]);
            if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v234.__r_.__value_.__l.__data_);
            }

            if (v214 > v213)
            {
              std::swap[abi:ne200100]<quasar::AppLmData::Oov>(v4, v217);
            }

            return;
          }
        }

        if (v5 <= 1343)
        {
          if (a4)
          {
            if (v4 != a2)
            {
              v82 = v4 + 56;
              if ((v4 + 56) != a2)
              {
                v83 = 0;
                v84 = v4;
                do
                {
                  v85 = v82;
                  if (*(v84 + 79) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v286, *v82, *(v84 + 64));
                  }

                  else
                  {
                    v86 = *v82;
                    v286.__r_.__value_.__r.__words[2] = *(v82 + 16);
                    *&v286.__r_.__value_.__l.__data_ = v86;
                  }

                  std::set<std::string>::set[abi:ne200100](&v287, (v84 + 80));
                  v290 = *(v84 + 104);
                  if (*(v84 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v282, *v84, *(v84 + 8));
                  }

                  else
                  {
                    v87 = *v84;
                    v282.__r_.__value_.__r.__words[2] = *(v84 + 16);
                    *&v282.__r_.__value_.__l.__data_ = v87;
                  }

                  std::set<std::string>::set[abi:ne200100](&v283, (v84 + 24));
                  v88 = *(v84 + 48);
                  v285 = v88;
                  v89 = v290;
                  std::__tree<std::string>::destroy(&v283, v284);
                  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v282.__r_.__value_.__l.__data_);
                  }

                  std::__tree<std::string>::destroy(&v287, v288);
                  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v286.__r_.__value_.__l.__data_);
                  }

                  if (v89 > v88)
                  {
                    v90 = *v85;
                    v277.__r_.__value_.__r.__words[2] = *(v85 + 16);
                    *&v277.__r_.__value_.__l.__data_ = v90;
                    *(v85 + 8) = 0;
                    *(v85 + 16) = 0;
                    *v85 = 0;
                    v91 = (v84 + 88);
                    v92 = *(v84 + 88);
                    v278 = *(v84 + 80);
                    v279 = v92;
                    v280 = *(v84 + 96);
                    if (v280)
                    {
                      *(v92 + 16) = &v279;
                      *(v84 + 80) = v91;
                      *v91 = 0;
                      *(v84 + 96) = 0;
                    }

                    else
                    {
                      v278 = &v279;
                    }

                    v281 = *(v84 + 104);
                    for (i = v83; ; i -= 56)
                    {
                      v94 = a1 + i;
                      if (*(a1 + i + 79) < 0)
                      {
                        operator delete(*(v94 + 56));
                      }

                      *(v94 + 56) = *v94;
                      *(v94 + 72) = *(v94 + 16);
                      *(v94 + 23) = 0;
                      *v94 = 0;
                      std::__tree<std::string>::__move_assign((v94 + 80), (v94 + 24));
                      *(v94 + 104) = *(v94 + 48);
                      if (!i)
                      {
                        v99 = a1;
                        goto LABEL_244;
                      }

                      if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v273, v277.__r_.__value_.__l.__data_, v277.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v273 = v277;
                      }

                      std::set<std::string>::set[abi:ne200100](&v274, &v278);
                      v276 = v281;
                      v95 = (a1 + i - 56);
                      if (*(a1 + i - 33) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v268, *v95, *(a1 + i - 48));
                      }

                      else
                      {
                        v96 = *v95;
                        v268.__r_.__value_.__r.__words[2] = *(a1 + i - 40);
                        *&v268.__r_.__value_.__l.__data_ = v96;
                      }

                      std::set<std::string>::set[abi:ne200100](&v269, (a1 + i - 32));
                      v97 = *(a1 + i - 8);
                      v272 = v97;
                      v98 = v276;
                      std::__tree<std::string>::destroy(&v269, v270);
                      if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v268.__r_.__value_.__l.__data_);
                      }

                      std::__tree<std::string>::destroy(&v274, v275);
                      if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v273.__r_.__value_.__l.__data_);
                      }

                      if (v98 <= v97)
                      {
                        break;
                      }
                    }

                    v99 = a1 + i;
LABEL_244:
                    if (*(v99 + 23) < 0)
                    {
                      operator delete(*v99);
                    }

                    v100 = a1 + i;
                    v101 = *&v277.__r_.__value_.__l.__data_;
                    *(v99 + 16) = *(&v277.__r_.__value_.__l + 2);
                    *v99 = v101;
                    *(&v277.__r_.__value_.__s + 23) = 0;
                    v277.__r_.__value_.__s.__data_[0] = 0;
                    v102 = v99 + 32;
                    std::__tree<std::string>::destroy(v100 + 24, *(v99 + 32));
                    *(v100 + 24) = v278;
                    v103 = v279;
                    *(v99 + 32) = v279;
                    v104 = v280;
                    *(v99 + 40) = v280;
                    if (v104)
                    {
                      v105 = 0;
                      *(v103 + 2) = v102;
                      v278 = &v279;
                      v279 = 0;
                      v280 = 0;
                    }

                    else
                    {
                      *(v100 + 24) = v102;
                      v105 = v279;
                    }

                    *(v99 + 48) = v281;
                    std::__tree<std::string>::destroy(&v278, v105);
                    if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v277.__r_.__value_.__l.__data_);
                    }
                  }

                  v82 = v85 + 56;
                  v83 += 56;
                  v84 = v85;
                }

                while ((v85 + 56) != a2);
              }
            }
          }

          else if (v4 != a2)
          {
            v190 = v4 + 56;
            if ((v4 + 56) != a2)
            {
              v191 = (v4 + 104);
              do
              {
                v192 = v4;
                v4 = v190;
                if (*(v192 + 79) < 0)
                {
                  std::string::__init_copy_ctor_external(&v286, *v190, *(v192 + 64));
                }

                else
                {
                  v193 = *v190;
                  v286.__r_.__value_.__r.__words[2] = *(v190 + 16);
                  *&v286.__r_.__value_.__l.__data_ = v193;
                }

                std::set<std::string>::set[abi:ne200100](&v287, (v192 + 80));
                v290 = *(v192 + 104);
                if (*(v192 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v282, *v192, *(v192 + 8));
                }

                else
                {
                  v194 = *v192;
                  v282.__r_.__value_.__r.__words[2] = *(v192 + 16);
                  *&v282.__r_.__value_.__l.__data_ = v194;
                }

                std::set<std::string>::set[abi:ne200100](&v283, (v192 + 24));
                v195 = v192;
                v196 = *(v192 + 48);
                v285 = v196;
                v197 = v290;
                std::__tree<std::string>::destroy(&v283, v284);
                if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v282.__r_.__value_.__l.__data_);
                }

                std::__tree<std::string>::destroy(&v287, v288);
                if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v286.__r_.__value_.__l.__data_);
                }

                if (v197 > v196)
                {
                  v198 = *v4;
                  v277.__r_.__value_.__r.__words[2] = *(v4 + 16);
                  *&v277.__r_.__value_.__l.__data_ = v198;
                  *(v4 + 8) = 0;
                  *(v4 + 16) = 0;
                  *v4 = 0;
                  v199 = (v195 + 88);
                  v200 = *(v195 + 88);
                  v278 = *(v195 + 80);
                  v279 = v200;
                  v280 = *(v195 + 96);
                  if (v280)
                  {
                    *(v200 + 16) = &v279;
                    *(v195 + 80) = v199;
                    *v199 = 0;
                    *(v195 + 96) = 0;
                  }

                  else
                  {
                    v278 = &v279;
                  }

                  v281 = *(v195 + 104);
                  v201 = v191;
                  do
                  {
                    v202 = (v201 - 12);
                    if (*(v201 - 25) < 0)
                    {
                      operator delete(*v202);
                    }

                    *v202 = *(v201 - 26);
                    *(v201 - 4) = *(v201 - 11);
                    *(v201 - 81) = 0;
                    *(v201 - 104) = 0;
                    std::__tree<std::string>::__move_assign(v201 - 3, v201 - 10);
                    *v201 = *(v201 - 14);
                    if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v273, v277.__r_.__value_.__l.__data_, v277.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v273 = v277;
                    }

                    std::set<std::string>::set[abi:ne200100](&v274, &v278);
                    v276 = v281;
                    if (*(v201 - 137) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v268, *(v201 - 20), *(v201 - 19));
                    }

                    else
                    {
                      v203 = *(v201 - 10);
                      v268.__r_.__value_.__r.__words[2] = *(v201 - 18);
                      *&v268.__r_.__value_.__l.__data_ = v203;
                    }

                    std::set<std::string>::set[abi:ne200100](&v269, v201 - 17);
                    v204 = *(v201 - 28);
                    v272 = v204;
                    v205 = v276;
                    std::__tree<std::string>::destroy(&v269, v270);
                    if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v268.__r_.__value_.__l.__data_);
                    }

                    std::__tree<std::string>::destroy(&v274, v275);
                    if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v273.__r_.__value_.__l.__data_);
                    }

                    v201 -= 14;
                  }

                  while (v205 > v204);
                  v206 = (v201 - 12);
                  if (*(v201 - 25) < 0)
                  {
                    operator delete(*v206);
                  }

                  v207 = *&v277.__r_.__value_.__l.__data_;
                  *(v201 - 4) = *(&v277.__r_.__value_.__l + 2);
                  *v206 = v207;
                  *(&v277.__r_.__value_.__s + 23) = 0;
                  v277.__r_.__value_.__s.__data_[0] = 0;
                  v208 = v201 - 4;
                  std::__tree<std::string>::destroy((v201 - 6), *(v201 - 2));
                  *(v201 - 3) = v278;
                  v209 = v279;
                  *(v201 - 2) = v279;
                  v210 = v280;
                  *(v201 - 1) = v280;
                  if (v210)
                  {
                    v211 = 0;
                    *(v209 + 2) = v208;
                    v278 = &v279;
                    v279 = 0;
                    v280 = 0;
                  }

                  else
                  {
                    *(v201 - 3) = v208;
                    v211 = v279;
                  }

                  *v201 = v281;
                  std::__tree<std::string>::destroy(&v278, v211);
                  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v277.__r_.__value_.__l.__data_);
                  }
                }

                v190 = v4 + 56;
                v191 += 14;
              }

              while ((v4 + 56) != a2);
            }
          }

          return;
        }

        if (!a3)
        {
          if (v4 != a2)
          {
            v106 = v7 >> 1;
            v107 = v7 >> 1;
            do
            {
              v108 = v107;
              if (v106 >= v107)
              {
                v223 = v107;
                v109 = (2 * v107) | 1;
                v110 = v4 + 56 * v109;
                v111 = 2 * v107 + 2;
                if (v111 < v6)
                {
                  if (*(v110 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v286, *v110, *(v110 + 8));
                  }

                  else
                  {
                    v112 = *v110;
                    v286.__r_.__value_.__r.__words[2] = *(v110 + 16);
                    *&v286.__r_.__value_.__l.__data_ = v112;
                  }

                  std::set<std::string>::set[abi:ne200100](&v287, (v110 + 24));
                  v290 = *(v110 + 48);
                  if (*(v110 + 79) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v282, *(v110 + 56), *(v110 + 64));
                  }

                  else
                  {
                    v113 = *(v110 + 56);
                    v282.__r_.__value_.__r.__words[2] = *(v110 + 72);
                    *&v282.__r_.__value_.__l.__data_ = v113;
                  }

                  std::set<std::string>::set[abi:ne200100](&v283, (v110 + 80));
                  v114 = *(v110 + 104);
                  v285 = v114;
                  v115 = v290;
                  std::__tree<std::string>::destroy(&v283, v284);
                  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v282.__r_.__value_.__l.__data_);
                  }

                  std::__tree<std::string>::destroy(&v287, v288);
                  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v286.__r_.__value_.__l.__data_);
                  }

                  if (v115 > v114)
                  {
                    v110 += 56;
                    v109 = v111;
                  }
                }

                if (*(v110 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v277, *v110, *(v110 + 8));
                }

                else
                {
                  v116 = *v110;
                  v277.__r_.__value_.__r.__words[2] = *(v110 + 16);
                  *&v277.__r_.__value_.__l.__data_ = v116;
                }

                std::set<std::string>::set[abi:ne200100](&v278, (v110 + 24));
                v117 = v4 + 56 * v223;
                v281 = *(v110 + 48);
                if (*(v117 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v273, *v117, *(v117 + 8));
                }

                else
                {
                  v118 = *v117;
                  v273.__r_.__value_.__r.__words[2] = *(v117 + 16);
                  *&v273.__r_.__value_.__l.__data_ = v118;
                }

                v119 = v106;
                std::set<std::string>::set[abi:ne200100](&v274, (v117 + 24));
                v120 = *(v117 + 48);
                v276 = v120;
                v121 = v281;
                std::__tree<std::string>::destroy(&v274, v275);
                if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v273.__r_.__value_.__l.__data_);
                }

                std::__tree<std::string>::destroy(&v278, v279);
                v108 = v223;
                if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v277.__r_.__value_.__l.__data_);
                }

                v122 = v121 > v120;
                v106 = v119;
                if (!v122)
                {
                  v123 = *v117;
                  v268.__r_.__value_.__r.__words[2] = *(v117 + 16);
                  *&v268.__r_.__value_.__l.__data_ = v123;
                  *(v117 + 8) = 0;
                  *(v117 + 16) = 0;
                  *v117 = 0;
                  v269 = *(v117 + 24);
                  v124 = (v117 + 32);
                  v125 = *(v117 + 32);
                  v270 = v125;
                  v271 = *(v117 + 40);
                  if (v271)
                  {
                    *(v125 + 16) = &v270;
                    *(v117 + 24) = v124;
                    *v124 = 0;
                    *(v117 + 40) = 0;
                  }

                  else
                  {
                    v269 = &v270;
                  }

                  v272 = *(v117 + 48);
                  do
                  {
                    v126 = v110;
                    if (*(v117 + 23) < 0)
                    {
                      operator delete(*v117);
                    }

                    v127 = *v110;
                    *(v117 + 16) = *(v110 + 16);
                    *v117 = v127;
                    *(v110 + 23) = 0;
                    *v110 = 0;
                    std::__tree<std::string>::__move_assign((v117 + 24), (v110 + 24));
                    *(v117 + 48) = *(v110 + 48);
                    if (v106 < v109)
                    {
                      break;
                    }

                    v128 = 2 * v109;
                    v109 = (2 * v109) | 1;
                    v110 = v4 + 56 * v109;
                    v129 = v128 + 2;
                    if (v128 + 2 < v6)
                    {
                      if (*(v110 + 23) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v263, *v110, *(v110 + 8));
                      }

                      else
                      {
                        v130 = *v110;
                        v263.__r_.__value_.__r.__words[2] = *(v110 + 16);
                        *&v263.__r_.__value_.__l.__data_ = v130;
                      }

                      std::set<std::string>::set[abi:ne200100](&v264, (v110 + 24));
                      v267 = *(v110 + 48);
                      if (*(v110 + 79) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v259, *(v110 + 56), *(v110 + 64));
                      }

                      else
                      {
                        v131 = *(v110 + 56);
                        v259.__r_.__value_.__r.__words[2] = *(v110 + 72);
                        *&v259.__r_.__value_.__l.__data_ = v131;
                      }

                      std::set<std::string>::set[abi:ne200100](&v260, (v110 + 80));
                      v132 = *(v110 + 104);
                      v262 = v132;
                      v133 = v267;
                      std::__tree<std::string>::destroy(&v260, v261);
                      if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v259.__r_.__value_.__l.__data_);
                      }

                      std::__tree<std::string>::destroy(&v264, v265);
                      if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v263.__r_.__value_.__l.__data_);
                      }

                      v122 = v133 > v132;
                      v106 = v119;
                      if (v122)
                      {
                        v110 += 56;
                        v109 = v129;
                      }
                    }

                    if (*(v110 + 23) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v255, *v110, *(v110 + 8));
                    }

                    else
                    {
                      v134 = *v110;
                      v255.__r_.__value_.__r.__words[2] = *(v110 + 16);
                      *&v255.__r_.__value_.__l.__data_ = v134;
                    }

                    std::set<std::string>::set[abi:ne200100](&v256, (v110 + 24));
                    v258 = *(v110 + 48);
                    if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v251, v268.__r_.__value_.__l.__data_, v268.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v251 = v268;
                    }

                    std::set<std::string>::set[abi:ne200100](&v252, &v269);
                    v135 = v272;
                    v254 = v272;
                    v136 = v258;
                    std::__tree<std::string>::destroy(&v252, v253);
                    if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v251.__r_.__value_.__l.__data_);
                    }

                    std::__tree<std::string>::destroy(&v256, v257);
                    if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v255.__r_.__value_.__l.__data_);
                    }

                    v117 = v126;
                  }

                  while (v136 <= v135);
                  if (*(v126 + 23) < 0)
                  {
                    operator delete(*v126);
                  }

                  v137 = *&v268.__r_.__value_.__l.__data_;
                  *(v126 + 16) = *(&v268.__r_.__value_.__l + 2);
                  *v126 = v137;
                  *(&v268.__r_.__value_.__s + 23) = 0;
                  v268.__r_.__value_.__s.__data_[0] = 0;
                  v138 = v126 + 32;
                  std::__tree<std::string>::destroy(v126 + 24, *(v126 + 32));
                  *(v126 + 24) = v269;
                  v139 = v270;
                  *(v126 + 32) = v270;
                  v140 = v271;
                  *(v126 + 40) = v271;
                  if (v140)
                  {
                    v141 = 0;
                    *(v139 + 2) = v138;
                    v269 = &v270;
                    v270 = 0;
                    v271 = 0;
                  }

                  else
                  {
                    *(v126 + 24) = v138;
                    v141 = v270;
                  }

                  *(v126 + 48) = v272;
                  std::__tree<std::string>::destroy(&v269, v141);
                  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v268.__r_.__value_.__l.__data_);
                  }

                  v108 = v223;
                }
              }

              v107 = v108 - 1;
            }

            while (v108);
            v142 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v4) >> 3);
            v220 = (v4 + 32);
            do
            {
              v143 = v4;
              v144 = *v4;
              v145 = *(v4 + 24);
              v263.__r_.__value_.__r.__words[2] = *(v4 + 16);
              *&v263.__r_.__value_.__l.__data_ = v144;
              *(v4 + 8) = 0;
              *(v4 + 16) = 0;
              *v4 = 0;
              v146 = *(v4 + 32);
              v147 = *(v4 + 40);
              v264 = v145;
              v265 = v146;
              v266 = v147;
              if (v147)
              {
                *(v146 + 16) = &v265;
                *(v4 + 24) = v220;
                *v220 = 0;
                *(v4 + 40) = 0;
              }

              else
              {
                v264 = &v265;
              }

              v148 = 0;
              v267 = *(v4 + 48);
              do
              {
                v149 = v143 + 56 * v148;
                v150 = (v149 + 56);
                v151 = 2 * v148;
                v148 = (2 * v148) | 1;
                v152 = v151 + 2;
                if (v151 + 2 < v142)
                {
                  if (*(v149 + 79) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v286, *(v149 + 56), *(v149 + 64));
                  }

                  else
                  {
                    v153 = *v150;
                    v286.__r_.__value_.__r.__words[2] = *(v149 + 72);
                    *&v286.__r_.__value_.__l.__data_ = v153;
                  }

                  std::set<std::string>::set[abi:ne200100](&v287, (v149 + 80));
                  v290 = *(v149 + 104);
                  v154 = (v149 + 112);
                  if (*(v149 + 135) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v282, *(v149 + 112), *(v149 + 120));
                  }

                  else
                  {
                    v155 = *v154;
                    v282.__r_.__value_.__r.__words[2] = *(v149 + 128);
                    *&v282.__r_.__value_.__l.__data_ = v155;
                  }

                  std::set<std::string>::set[abi:ne200100](&v283, (v149 + 136));
                  v156 = *(v149 + 160);
                  v285 = v156;
                  v157 = v290;
                  std::__tree<std::string>::destroy(&v283, v284);
                  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v282.__r_.__value_.__l.__data_);
                  }

                  std::__tree<std::string>::destroy(&v287, v288);
                  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v286.__r_.__value_.__l.__data_);
                  }

                  if (v157 > v156)
                  {
                    v150 = v154;
                    v148 = v152;
                  }
                }

                if (*(v143 + 23) < 0)
                {
                  operator delete(*v143);
                }

                v158 = *v150;
                *(v143 + 16) = v150[2];
                *v143 = v158;
                *(v150 + 23) = 0;
                *v150 = 0;
                std::__tree<std::string>::__move_assign((v143 + 24), v150 + 3);
                *(v143 + 48) = *(v150 + 12);
                v143 = v150;
              }

              while (v148 <= ((v142 - 2) >> 1));
              v159 = (a2 - 7);
              v160 = *(v150 + 23);
              if (v150 == a2 - 7)
              {
                if (v160 < 0)
                {
                  operator delete(*v150);
                }

                v166 = *&v263.__r_.__value_.__l.__data_;
                v150[2] = v263.__r_.__value_.__r.__words[2];
                *v150 = v166;
                *(&v263.__r_.__value_.__s + 23) = 0;
                v263.__r_.__value_.__s.__data_[0] = 0;
                v167 = (v150 + 4);
                std::__tree<std::string>::destroy((v150 + 3), v150[4]);
                v150[3] = v264;
                v168 = v265;
                v150[4] = v265;
                v169 = v266;
                v150[5] = v266;
                if (v169)
                {
                  *(v168 + 2) = v167;
                  v264 = &v265;
                  v265 = 0;
                  v266 = 0;
                }

                else
                {
                  v150[3] = v167;
                }

                *(v150 + 12) = v267;
              }

              else
              {
                if (v160 < 0)
                {
                  operator delete(*v150);
                }

                v161 = *v159;
                v150[2] = *(a2 - 5);
                *v150 = v161;
                *(a2 - 33) = 0;
                *(a2 - 56) = 0;
                std::__tree<std::string>::__move_assign(v150 + 3, a2 - 4);
                *(v150 + 12) = *(a2 - 2);
                if (*(a2 - 33) < 0)
                {
                  operator delete(*v159);
                }

                v162 = *&v263.__r_.__value_.__l.__data_;
                *(a2 - 5) = v263.__r_.__value_.__r.__words[2];
                *v159 = v162;
                *(&v263.__r_.__value_.__s + 23) = 0;
                v263.__r_.__value_.__s.__data_[0] = 0;
                v163 = (a2 - 3);
                std::__tree<std::string>::destroy((a2 - 4), *(a2 - 3));
                *(a2 - 4) = v264;
                v164 = v265;
                *(a2 - 3) = v265;
                v165 = v266;
                *(a2 - 2) = v266;
                if (v165)
                {
                  *(v164 + 2) = v163;
                  v264 = &v265;
                  v265 = 0;
                  v266 = 0;
                }

                else
                {
                  *(a2 - 4) = v163;
                }

                *(a2 - 2) = v267;
                v170 = v150 - v4 + 56;
                if (v170 >= 57)
                {
                  v171 = (0x6DB6DB6DB6DB6DB7 * (v170 >> 3) - 2) >> 1;
                  v172 = v4 + 56 * v171;
                  if (*(v172 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v286, *v172, *(v172 + 8));
                  }

                  else
                  {
                    v173 = *v172;
                    v286.__r_.__value_.__r.__words[2] = *(v172 + 16);
                    *&v286.__r_.__value_.__l.__data_ = v173;
                  }

                  std::set<std::string>::set[abi:ne200100](&v287, (v172 + 24));
                  v290 = *(v172 + 48);
                  if (*(v150 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v282, *v150, v150[1]);
                  }

                  else
                  {
                    v174 = *v150;
                    v282.__r_.__value_.__r.__words[2] = v150[2];
                    *&v282.__r_.__value_.__l.__data_ = v174;
                  }

                  std::set<std::string>::set[abi:ne200100](&v283, v150 + 3);
                  v175 = *(v150 + 12);
                  v285 = v175;
                  v176 = v290;
                  std::__tree<std::string>::destroy(&v283, v284);
                  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v282.__r_.__value_.__l.__data_);
                  }

                  std::__tree<std::string>::destroy(&v287, v288);
                  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v286.__r_.__value_.__l.__data_);
                  }

                  if (v176 > v175)
                  {
                    v177 = *v150;
                    v178 = v150[3];
                    v277.__r_.__value_.__r.__words[2] = v150[2];
                    *&v277.__r_.__value_.__l.__data_ = v177;
                    v150[1] = 0;
                    v150[2] = 0;
                    *v150 = 0;
                    v179 = (v150 + 4);
                    v180 = v150[4];
                    v278 = v178;
                    v279 = v180;
                    v280 = v150[5];
                    if (v280)
                    {
                      *(v180 + 2) = &v279;
                      v150[3] = v179;
                      *v179 = 0;
                      v150[5] = 0;
                    }

                    else
                    {
                      v278 = &v279;
                    }

                    v281 = *(v150 + 12);
                    do
                    {
                      v181 = v172;
                      if (*(v150 + 23) < 0)
                      {
                        operator delete(*v150);
                      }

                      v182 = *v172;
                      v150[2] = *(v172 + 16);
                      *v150 = v182;
                      *(v172 + 23) = 0;
                      *v172 = 0;
                      std::__tree<std::string>::__move_assign(v150 + 3, (v172 + 24));
                      *(v150 + 12) = *(v172 + 48);
                      if (!v171)
                      {
                        break;
                      }

                      v171 = (v171 - 1) >> 1;
                      v172 = v4 + 56 * v171;
                      if (*(v172 + 23) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v273, *v172, *(v172 + 8));
                      }

                      else
                      {
                        v183 = *v172;
                        v273.__r_.__value_.__r.__words[2] = *(v172 + 16);
                        *&v273.__r_.__value_.__l.__data_ = v183;
                      }

                      std::set<std::string>::set[abi:ne200100](&v274, (v172 + 24));
                      v276 = *(v172 + 48);
                      if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v268, v277.__r_.__value_.__l.__data_, v277.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v268 = v277;
                      }

                      std::set<std::string>::set[abi:ne200100](&v269, &v278);
                      v184 = v281;
                      v272 = v281;
                      v185 = v276;
                      std::__tree<std::string>::destroy(&v269, v270);
                      if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v268.__r_.__value_.__l.__data_);
                      }

                      std::__tree<std::string>::destroy(&v274, v275);
                      if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v273.__r_.__value_.__l.__data_);
                      }

                      v150 = v181;
                    }

                    while (v185 > v184);
                    if (*(v181 + 23) < 0)
                    {
                      operator delete(*v181);
                    }

                    v186 = *&v277.__r_.__value_.__l.__data_;
                    *(v181 + 16) = *(&v277.__r_.__value_.__l + 2);
                    *v181 = v186;
                    *(&v277.__r_.__value_.__s + 23) = 0;
                    v277.__r_.__value_.__s.__data_[0] = 0;
                    v187 = v181 + 32;
                    std::__tree<std::string>::destroy(v181 + 24, *(v181 + 32));
                    *(v181 + 24) = v278;
                    v188 = v279;
                    *(v181 + 32) = v279;
                    v189 = v280;
                    *(v181 + 40) = v280;
                    if (v189)
                    {
                      *(v188 + 2) = v187;
                      v188 = 0;
                      v278 = &v279;
                      v279 = 0;
                      v280 = 0;
                    }

                    else
                    {
                      *(v181 + 24) = v187;
                    }

                    *(v181 + 48) = v281;
                    std::__tree<std::string>::destroy(&v278, v188);
                    if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v277.__r_.__value_.__l.__data_);
                    }
                  }
                }
              }

              std::__tree<std::string>::destroy(&v264, v265);
              if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v263.__r_.__value_.__l.__data_);
              }

              a2 -= 7;
              v122 = v142-- <= 2;
            }

            while (!v122);
          }

          return;
        }

        v8 = v6 >> 1;
        v9 = (v4 + 56 * (v6 >> 1));
        if (v5 < 0x1C01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v9, v4, v217);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4, v9, v217);
          v10 = 56 * v8;
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4 + 56, v10 + v4 - 56, (a2 - 14));
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4 + 112, v4 + 56 + v10, (a2 - 21));
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v10 + v4 - 56, v9, v4 + 56 + v10);
          std::swap[abi:ne200100]<quasar::AppLmData::Oov>(v4, v9);
        }

        --a3;
        if (a4)
        {
          break;
        }

        if (*(v4 - 33) < 0)
        {
          std::string::__init_copy_ctor_external(&v228, *(v4 - 56), *(v4 - 48));
        }

        else
        {
          v11 = *(v4 - 56);
          v228.__r_.__value_.__r.__words[2] = *(v4 - 40);
          *&v228.__r_.__value_.__l.__data_ = v11;
        }

        std::set<std::string>::set[abi:ne200100](v229, (v4 - 32));
        v230 = *(v4 - 8);
        if (*(v4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v225, *v4, *(v4 + 8));
        }

        else
        {
          v12 = *v4;
          v225.__r_.__value_.__r.__words[2] = *(v4 + 16);
          *&v225.__r_.__value_.__l.__data_ = v12;
        }

        std::set<std::string>::set[abi:ne200100](v226, (v4 + 24));
        v13 = *(v4 + 48);
        v227 = v13;
        v14 = v230;
        std::__tree<std::string>::destroy(v226, v226[1]);
        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }

        std::__tree<std::string>::destroy(v229, v229[1]);
        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (v14 > v13)
        {
          break;
        }

        v48 = *v4;
        v49 = *(v4 + 24);
        v286.__r_.__value_.__r.__words[2] = *(v4 + 16);
        *&v286.__r_.__value_.__l.__data_ = v48;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        *v4 = 0;
        v50 = (v4 + 32);
        v51 = *(v4 + 32);
        v287 = v49;
        v288 = v51;
        v289 = *(v4 + 40);
        if (v289)
        {
          *(v51 + 16) = &v288;
          *(v4 + 24) = v50;
          *v50 = 0;
          *(v4 + 40) = 0;
        }

        else
        {
          v287 = &v288;
        }

        v290 = *(v4 + 48);
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v282, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
        }

        else
        {
          v282 = v286;
        }

        std::set<std::string>::set[abi:ne200100](&v283, &v287);
        v285 = v290;
        if (*(a2 - 33) < 0)
        {
          std::string::__init_copy_ctor_external(&v277, *(a2 - 7), *(a2 - 6));
        }

        else
        {
          v52 = *v217;
          v277.__r_.__value_.__r.__words[2] = *(a2 - 5);
          *&v277.__r_.__value_.__l.__data_ = v52;
        }

        std::set<std::string>::set[abi:ne200100](&v278, v215);
        v53 = *(a2 - 2);
        v281 = v53;
        v54 = v285;
        std::__tree<std::string>::destroy(&v278, v279);
        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        std::__tree<std::string>::destroy(&v283, v284);
        if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v282.__r_.__value_.__l.__data_);
        }

        v55 = v4;
        if (v54 <= v53)
        {
          for (v4 += 56; v4 < a2; v4 += 56)
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v263, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v263 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v264, &v287);
            v267 = v290;
            if (*(v4 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v259, *v4, *(v4 + 8));
            }

            else
            {
              v78 = *v4;
              v259.__r_.__value_.__r.__words[2] = *(v4 + 16);
              *&v259.__r_.__value_.__l.__data_ = v78;
            }

            std::set<std::string>::set[abi:ne200100](&v260, (v4 + 24));
            v79 = *(v4 + 48);
            v262 = v79;
            v80 = v267;
            std::__tree<std::string>::destroy(&v260, v261);
            if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v259.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v264, v265);
            if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v263.__r_.__value_.__l.__data_);
            }

            if (v80 > v79)
            {
              break;
            }
          }
        }

        else
        {
          do
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v273, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v273 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v274, &v287);
            v4 = v55 + 56;
            v276 = v290;
            if (*(v55 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&v268, *(v55 + 56), *(v55 + 64));
            }

            else
            {
              *&v268.__r_.__value_.__l.__data_ = *v4;
              v268.__r_.__value_.__r.__words[2] = *(v55 + 72);
            }

            std::set<std::string>::set[abi:ne200100](&v269, (v55 + 80));
            v56 = *(v55 + 104);
            v272 = v56;
            v57 = v276;
            std::__tree<std::string>::destroy(&v269, v270);
            if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v268.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v274, v275);
            if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v273.__r_.__value_.__l.__data_);
            }

            v55 += 56;
          }

          while (v57 <= v56);
        }

        v58 = a2;
        if (v4 < a2)
        {
          v59 = a2;
          do
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v255, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v255 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v256, &v287);
            v58 = (v59 - 7);
            v258 = v290;
            if (*(v59 - 33) < 0)
            {
              std::string::__init_copy_ctor_external(&v251, *(v59 - 7), *(v59 - 6));
            }

            else
            {
              v60 = *v58;
              v251.__r_.__value_.__r.__words[2] = *(v59 - 5);
              *&v251.__r_.__value_.__l.__data_ = v60;
            }

            std::set<std::string>::set[abi:ne200100](&v252, v59 - 4);
            v61 = *(v59 - 2);
            v254 = v61;
            v62 = v258;
            std::__tree<std::string>::destroy(&v252, v253);
            if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v251.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v256, v257);
            if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v255.__r_.__value_.__l.__data_);
            }

            v59 -= 7;
          }

          while (v62 > v61);
        }

        while (v4 < v58)
        {
          std::swap[abi:ne200100]<quasar::AppLmData::Oov>(v4, v58);
          v63 = v4;
          do
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v247, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v247 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v248, &v287);
            v4 = v63 + 56;
            v250 = v290;
            if (*(v63 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&v243, *(v63 + 56), *(v63 + 64));
            }

            else
            {
              *&v243.__r_.__value_.__l.__data_ = *v4;
              v243.__r_.__value_.__r.__words[2] = *(v63 + 72);
            }

            std::set<std::string>::set[abi:ne200100](&v244, (v63 + 80));
            v64 = *(v63 + 104);
            v246 = v64;
            v65 = v250;
            std::__tree<std::string>::destroy(&v244, v245);
            if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v243.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v248, v249);
            if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v247.__r_.__value_.__l.__data_);
            }

            v63 += 56;
          }

          while (v65 <= v64);
          v66 = v58;
          do
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v240, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v240 = v286;
            }

            std::set<std::string>::set[abi:ne200100](v241, &v287);
            v242 = v290;
            if (*(v66 - 33) < 0)
            {
              v68 = (v66 - 56);
              std::string::__init_copy_ctor_external(&v237, *(v66 - 7), *(v66 - 6));
            }

            else
            {
              v67 = *(v66 - 56);
              v68 = (v66 - 56);
              v237.__r_.__value_.__r.__words[2] = *(v66 - 5);
              *&v237.__r_.__value_.__l.__data_ = v67;
            }

            std::set<std::string>::set[abi:ne200100](v238, v66 - 4);
            v69 = *(v66 - 2);
            v239 = v69;
            v70 = v242;
            std::__tree<std::string>::destroy(v238, v238[1]);
            if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v237.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(v241, v241[1]);
            v58 = v68;
            if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v240.__r_.__value_.__l.__data_);
            }

            v66 = v68;
          }

          while (v70 > v69);
        }

        v71 = (v4 - 56);
        if (v4 - 56 != a1)
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v72 = *v71;
          *(a1 + 16) = *(v4 - 40);
          *a1 = v72;
          *(v4 - 33) = 0;
          *(v4 - 56) = 0;
          std::__tree<std::string>::__move_assign((a1 + 24), (v4 - 32));
          *(a1 + 48) = *(v4 - 8);
        }

        if (*(v4 - 33) < 0)
        {
          operator delete(*v71);
        }

        v73 = *&v286.__r_.__value_.__l.__data_;
        *(v4 - 40) = *(&v286.__r_.__value_.__l + 2);
        *v71 = v73;
        *(&v286.__r_.__value_.__s + 23) = 0;
        v286.__r_.__value_.__s.__data_[0] = 0;
        v74 = v4 - 24;
        std::__tree<std::string>::destroy(v4 - 32, *(v4 - 24));
        *(v4 - 32) = v287;
        v75 = v288;
        *(v4 - 24) = v288;
        v76 = v289;
        *(v4 - 16) = v289;
        if (v76)
        {
          v77 = 0;
          *(v75 + 2) = v74;
          v287 = &v288;
          v288 = 0;
          v289 = 0;
        }

        else
        {
          *(v4 - 32) = v74;
          v77 = v288;
        }

        *(v4 - 8) = v290;
        std::__tree<std::string>::destroy(&v287, v77);
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v286.__r_.__value_.__l.__data_);
        }

LABEL_111:
        a4 = 0;
      }

      v15 = *v4;
      v286.__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&v286.__r_.__value_.__l.__data_ = v15;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *v4 = 0;
      v16 = (v4 + 32);
      v17 = *(v4 + 32);
      v287 = *(v4 + 24);
      v288 = v17;
      v289 = *(v4 + 40);
      if (v289)
      {
        *(v17 + 16) = &v288;
        *(v4 + 24) = v16;
        *v16 = 0;
        *(v4 + 40) = 0;
      }

      else
      {
        v287 = &v288;
      }

      v18 = 0;
      v290 = *(v4 + 48);
      do
      {
        v19 = v4 + v18;
        if (*(v4 + v18 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v282, *(v19 + 56), *(v19 + 64));
        }

        else
        {
          v20 = *(v19 + 56);
          v282.__r_.__value_.__r.__words[2] = *(v19 + 72);
          *&v282.__r_.__value_.__l.__data_ = v20;
        }

        std::set<std::string>::set[abi:ne200100](&v283, (v4 + v18 + 80));
        v285 = *(v4 + v18 + 104);
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v277, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
        }

        else
        {
          v277 = v286;
        }

        std::set<std::string>::set[abi:ne200100](&v278, &v287);
        v21 = v290;
        v281 = v290;
        v22 = v285;
        std::__tree<std::string>::destroy(&v278, v279);
        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        std::__tree<std::string>::destroy(&v283, v284);
        if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v282.__r_.__value_.__l.__data_);
        }

        v18 += 56;
      }

      while (v22 > v21);
      v222 = v4 + v18;
      v23 = a2;
      if (v18 == 56)
      {
        v27 = a2;
        if (v222 < a2)
        {
          for (j = a2 - 7; ; j = v27 - 7)
          {
            if (*(j + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v273, *j, j[1]);
            }

            else
            {
              v29 = *j;
              v273.__r_.__value_.__r.__words[2] = j[2];
              *&v273.__r_.__value_.__l.__data_ = v29;
            }

            std::set<std::string>::set[abi:ne200100](&v274, j + 3);
            v276 = *(j + 12);
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v268, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v268 = v286;
            }

            v27 = j;
            std::set<std::string>::set[abi:ne200100](&v269, &v287);
            v30 = v290;
            v272 = v290;
            v31 = v276;
            std::__tree<std::string>::destroy(&v269, v270);
            if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v268.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v274, v275);
            if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v273.__r_.__value_.__l.__data_);
            }

            if (v31 > v30 || v222 >= v27)
            {
              break;
            }
          }
        }
      }

      else
      {
        do
        {
          if (*(v23 - 33) < 0)
          {
            std::string::__init_copy_ctor_external(&v263, *(v23 - 7), *(v23 - 6));
          }

          else
          {
            v24 = *(v23 - 7);
            v263.__r_.__value_.__r.__words[2] = *(v23 - 5);
            *&v263.__r_.__value_.__l.__data_ = v24;
          }

          std::set<std::string>::set[abi:ne200100](&v264, v23 - 4);
          v267 = *(v23 - 2);
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v259, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
          }

          else
          {
            v259 = v286;
          }

          v23 -= 7;
          std::set<std::string>::set[abi:ne200100](&v260, &v287);
          v25 = v290;
          v262 = v290;
          v26 = v267;
          std::__tree<std::string>::destroy(&v260, v261);
          if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v259.__r_.__value_.__l.__data_);
          }

          std::__tree<std::string>::destroy(&v264, v265);
          if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v263.__r_.__value_.__l.__data_);
          }

          v27 = v23;
        }

        while (v26 <= v25);
      }

      v4 = v222;
      v218 = v27;
      if (v222 < v27)
      {
        v32 = v27;
        do
        {
          std::swap[abi:ne200100]<quasar::AppLmData::Oov>(v4, v32);
          v33 = v4;
          do
          {
            v4 = v33 + 56;
            if (*(v33 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&v255, *(v33 + 56), *(v33 + 64));
            }

            else
            {
              *&v255.__r_.__value_.__l.__data_ = *v4;
              v255.__r_.__value_.__r.__words[2] = *(v33 + 72);
            }

            std::set<std::string>::set[abi:ne200100](&v256, (v33 + 80));
            v258 = *(v33 + 104);
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v251, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v251 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v252, &v287);
            v34 = v290;
            v254 = v290;
            v35 = v258;
            std::__tree<std::string>::destroy(&v252, v253);
            if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v251.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v256, v257);
            if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v255.__r_.__value_.__l.__data_);
            }

            v33 += 56;
          }

          while (v35 > v34);
          v36 = v32;
          do
          {
            v32 = (v36 - 56);
            if (*(v36 - 33) < 0)
            {
              std::string::__init_copy_ctor_external(&v247, *(v36 - 7), *(v36 - 6));
            }

            else
            {
              v37 = *v32;
              v247.__r_.__value_.__r.__words[2] = *(v36 - 5);
              *&v247.__r_.__value_.__l.__data_ = v37;
            }

            std::set<std::string>::set[abi:ne200100](&v248, v36 - 4);
            v250 = *(v36 - 2);
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v243, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v243 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v244, &v287);
            v38 = v290;
            v246 = v290;
            v39 = v250;
            std::__tree<std::string>::destroy(&v244, v245);
            if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v243.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v248, v249);
            if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v247.__r_.__value_.__l.__data_);
            }

            v36 = (v36 - 56);
          }

          while (v39 <= v38);
        }

        while (v4 < v32);
      }

      v40 = (v4 - 56);
      if (v4 - 56 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v41 = *v40;
        *(a1 + 16) = *(v4 - 40);
        *a1 = v41;
        *(v4 - 33) = 0;
        *(v4 - 56) = 0;
        std::__tree<std::string>::__move_assign((a1 + 24), (v4 - 32));
        *(a1 + 48) = *(v4 - 8);
      }

      if (*(v4 - 33) < 0)
      {
        operator delete(*v40);
      }

      v42 = *&v286.__r_.__value_.__l.__data_;
      *(v4 - 40) = *(&v286.__r_.__value_.__l + 2);
      *v40 = v42;
      *(&v286.__r_.__value_.__s + 23) = 0;
      v286.__r_.__value_.__s.__data_[0] = 0;
      v43 = v4 - 24;
      std::__tree<std::string>::destroy(v4 - 32, *(v4 - 24));
      *(v4 - 32) = v287;
      v44 = v288;
      *(v4 - 24) = v288;
      v45 = v289;
      *(v4 - 16) = v289;
      if (v45)
      {
        v46 = 0;
        *(v44 + 2) = v43;
        v287 = &v288;
        v288 = 0;
        v289 = 0;
      }

      else
      {
        *(v4 - 32) = v43;
        v46 = v288;
      }

      *(v4 - 8) = v290;
      std::__tree<std::string>::destroy(&v287, v46);
      if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v286.__r_.__value_.__l.__data_);
      }

      if (v222 < v218)
      {
LABEL_110:
        std::__introsort<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,false>(a1, (v4 - 56), a3, a4 & 1);
        goto LABEL_111;
      }

      v47 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *>(a1, v4 - 56);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *>(v4, a2))
      {
        break;
      }

      if (!v47)
      {
        goto LABEL_110;
      }
    }

    a2 = (v4 - 56);
    if (!v47)
    {
      continue;
    }

    break;
  }
}

void sub_1B5117744(_Unwind_Exception *a1)
{
  quasar::AppLmData::Oov::~Oov((v1 - 208));
  quasar::AppLmData::Oov::~Oov((v1 - 144));
  _Unwind_Resume(a1);
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, *a2, *(a2 + 8));
  }

  else
  {
    v46 = *a2;
  }

  std::set<std::string>::set[abi:ne200100](v47, (a2 + 24));
  v48 = *(a2 + 48);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, *a1, *(a1 + 8));
  }

  else
  {
    v43 = *a1;
  }

  std::set<std::string>::set[abi:ne200100](v44, (a1 + 24));
  v6 = *(a1 + 48);
  v45 = v6;
  v7 = v48;
  std::__tree<std::string>::destroy(v44, v44[1]);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  std::__tree<std::string>::destroy(v47, v47[1]);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v8 = *(a3 + 23);
  if (v7 <= v6)
  {
    if (v8 < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *a3, *(a3 + 8));
    }

    else
    {
      v40 = *a3;
    }

    std::set<std::string>::set[abi:ne200100](v41, (a3 + 24));
    v42 = *(a3 + 48);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *a2, *(a2 + 8));
    }

    else
    {
      v37 = *a2;
    }

    std::set<std::string>::set[abi:ne200100](v38, (a2 + 24));
    v12 = *(a2 + 48);
    v39 = v12;
    v13 = v42;
    std::__tree<std::string>::destroy(v38, v38[1]);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    std::__tree<std::string>::destroy(v41, v41[1]);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v13 > v12)
    {
      std::swap[abi:ne200100]<quasar::AppLmData::Oov>(a2, a3);
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *a2, *(a2 + 8));
      }

      else
      {
        v34 = *a2;
      }

      std::set<std::string>::set[abi:ne200100](v35, (a2 + 24));
      v36 = *(a2 + 48);
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *a1, *(a1 + 8));
      }

      else
      {
        v31 = *a1;
      }

      std::set<std::string>::set[abi:ne200100](v32, (a1 + 24));
      v17 = *(a1 + 48);
      v33 = v17;
      v18 = v36;
      std::__tree<std::string>::destroy(v32, v32[1]);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      std::__tree<std::string>::destroy(v35, v35[1]);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (v18 > v17)
      {
        v11 = a1;
        v16 = a2;
        goto LABEL_59;
      }
    }
  }

  else
  {
    if (v8 < 0)
    {
      std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
    }

    else
    {
      v28 = *a3;
    }

    std::set<std::string>::set[abi:ne200100](v29, (a3 + 24));
    v30 = *(a3 + 48);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *a2, *(a2 + 8));
    }

    else
    {
      v25 = *a2;
    }

    std::set<std::string>::set[abi:ne200100](v26, (a2 + 24));
    v9 = *(a2 + 48);
    v27 = v9;
    v10 = v30;
    std::__tree<std::string>::destroy(v26, v26[1]);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    std::__tree<std::string>::destroy(v29, v29[1]);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    v11 = a1;
    if (v10 > v9)
    {
      goto LABEL_51;
    }

    std::swap[abi:ne200100]<quasar::AppLmData::Oov>(a1, a2);
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *a3, *(a3 + 8));
    }

    else
    {
      v22 = *a3;
    }

    std::set<std::string>::set[abi:ne200100](v23, (a3 + 24));
    v24 = *(a3 + 48);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    std::set<std::string>::set[abi:ne200100](v20, (a2 + 24));
    v14 = *(a2 + 48);
    v21 = v14;
    v15 = v24;
    std::__tree<std::string>::destroy(v20, v20[1]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__tree<std::string>::destroy(v23, v23[1]);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v15 > v14)
    {
      v11 = a2;
LABEL_51:
      v16 = a3;
LABEL_59:
      std::swap[abi:ne200100]<quasar::AppLmData::Oov>(v11, v16);
    }
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(a1, a2, a3);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a4, *(a4 + 8));
  }

  else
  {
    v29 = *a4;
  }

  std::set<std::string>::set[abi:ne200100](v30, (a4 + 24));
  v31 = *(a4 + 48);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a3, *(a3 + 8));
  }

  else
  {
    v26 = *a3;
  }

  std::set<std::string>::set[abi:ne200100](v27, (a3 + 24));
  v8 = *(a3 + 48);
  v28 = v8;
  v9 = v31;
  std::__tree<std::string>::destroy(v27, v27[1]);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  std::__tree<std::string>::destroy(v30, v30[1]);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v9 > v8)
  {
    std::swap[abi:ne200100]<quasar::AppLmData::Oov>(a3, a4);
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *a3, *(a3 + 8));
    }

    else
    {
      v23 = *a3;
    }

    std::set<std::string>::set[abi:ne200100](v24, (a3 + 24));
    v25 = *(a3 + 48);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
    }

    else
    {
      v20 = *a2;
    }

    std::set<std::string>::set[abi:ne200100](v21, (a2 + 24));
    v10 = *(a2 + 48);
    v22 = v10;
    v11 = v25;
    std::__tree<std::string>::destroy(v21, v21[1]);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    std::__tree<std::string>::destroy(v24, v24[1]);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v11 > v10)
    {
      std::swap[abi:ne200100]<quasar::AppLmData::Oov>(a2, a3);
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
      }

      else
      {
        v17 = *a2;
      }

      std::set<std::string>::set[abi:ne200100](v18, (a2 + 24));
      v19 = *(a2 + 48);
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
      }

      else
      {
        __p = *a1;
      }

      std::set<std::string>::set[abi:ne200100](v15, (a1 + 24));
      v12 = *(a1 + 48);
      v16 = v12;
      v13 = v19;
      std::__tree<std::string>::destroy(v15, v15[1]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::__tree<std::string>::destroy(v18, v18[1]);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v13 > v12)
      {
        std::swap[abi:ne200100]<quasar::AppLmData::Oov>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(a1, a2, a3, a4);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *a5, *(a5 + 8));
  }

  else
  {
    v39 = *a5;
  }

  std::set<std::string>::set[abi:ne200100](v40, (a5 + 24));
  v41 = *(a5 + 48);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *a4, *(a4 + 8));
  }

  else
  {
    v36 = *a4;
  }

  std::set<std::string>::set[abi:ne200100](v37, (a4 + 24));
  v10 = *(a4 + 48);
  v38 = v10;
  v11 = v41;
  std::__tree<std::string>::destroy(v37, v37[1]);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  std::__tree<std::string>::destroy(v40, v40[1]);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v11 > v10)
  {
    std::swap[abi:ne200100]<quasar::AppLmData::Oov>(a4, a5);
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, *a4, *(a4 + 8));
    }

    else
    {
      v33 = *a4;
    }

    std::set<std::string>::set[abi:ne200100](v34, (a4 + 24));
    v35 = *(a4 + 48);
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *a3, *(a3 + 8));
    }

    else
    {
      v30 = *a3;
    }

    std::set<std::string>::set[abi:ne200100](v31, (a3 + 24));
    v12 = *(a3 + 48);
    v32 = v12;
    v13 = v35;
    std::__tree<std::string>::destroy(v31, v31[1]);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    std::__tree<std::string>::destroy(v34, v34[1]);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (v13 > v12)
    {
      std::swap[abi:ne200100]<quasar::AppLmData::Oov>(a3, a4);
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *a3, *(a3 + 8));
      }

      else
      {
        v27 = *a3;
      }

      std::set<std::string>::set[abi:ne200100](v28, (a3 + 24));
      v29 = *(a3 + 48);
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
      }

      else
      {
        v24 = *a2;
      }

      std::set<std::string>::set[abi:ne200100](v25, (a2 + 24));
      v14 = *(a2 + 48);
      v26 = v14;
      v15 = v29;
      std::__tree<std::string>::destroy(v25, v25[1]);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      std::__tree<std::string>::destroy(v28, v28[1]);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (v15 > v14)
      {
        std::swap[abi:ne200100]<quasar::AppLmData::Oov>(a2, a3);
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v21, *a2, *(a2 + 8));
        }

        else
        {
          v21 = *a2;
        }

        std::set<std::string>::set[abi:ne200100](v22, (a2 + 24));
        v23 = *(a2 + 48);
        if (*(a1 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
        }

        else
        {
          __p = *a1;
        }

        std::set<std::string>::set[abi:ne200100](v19, (a1 + 24));
        v16 = *(a1 + 48);
        v20 = v16;
        v17 = v23;
        std::__tree<std::string>::destroy(v19, v19[1]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::__tree<std::string>::destroy(v22, v22[1]);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        if (v17 > v16)
        {
          std::swap[abi:ne200100]<quasar::AppLmData::Oov>(a1, a2);
        }
      }
    }
  }
}

void sub_1B51187E4(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  quasar::AppLmData::Oov::~Oov(va);
  _Unwind_Resume(a1);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *>(uint64_t a1, uint64_t a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(a1, a1 + 56, a2 - 56);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(a1, a1 + 56, a1 + 112, a2 - 56);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56);
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
      if (*(a2 - 33) < 0)
      {
        std::string::__init_copy_ctor_external(&v51, *(a2 - 56), *(a2 - 48));
      }

      else
      {
        v51 = *(a2 - 56);
      }

      std::set<std::string>::set[abi:ne200100](v52, (a2 - 32));
      v53 = *(a2 - 8);
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v48, *a1, *(a1 + 8));
      }

      else
      {
        v48 = *a1;
      }

      std::set<std::string>::set[abi:ne200100](v49, (a1 + 24));
      v27 = *(a1 + 48);
      v50 = v27;
      v28 = v53;
      std::__tree<std::string>::destroy(v49, v49[1]);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      std::__tree<std::string>::destroy(v52, v52[1]);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (v28 > v27)
      {
        std::swap[abi:ne200100]<quasar::AppLmData::Oov>(a1, (a2 - 56));
      }

      return 1;
    }
  }

  v5 = a1 + 112;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(a1, a1 + 56, a1 + 112);
  v6 = a1 + 168;
  if (a1 + 168 == a2)
  {
    return 1;
  }

  v7 = 0;
  v30 = 0;
  while (2)
  {
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v45, *v6, *(v6 + 8));
    }

    else
    {
      v45 = *v6;
    }

    std::set<std::string>::set[abi:ne200100](v46, (v6 + 24));
    v47 = *(v6 + 48);
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, *v5, *(v5 + 8));
    }

    else
    {
      v8 = *v5;
      v42.__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&v42.__r_.__value_.__l.__data_ = v8;
    }

    std::set<std::string>::set[abi:ne200100](v43, (v5 + 24));
    v9 = *(v5 + 48);
    v44 = v9;
    v10 = v47;
    std::__tree<std::string>::destroy(v43, v43[1]);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    std::__tree<std::string>::destroy(v46, v46[1]);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (v10 <= v9)
    {
      goto LABEL_55;
    }

    *&__p.__r_.__value_.__l.__data_ = *v6;
    v11 = *(v6 + 16);
    v12 = *(v6 + 24);
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = 0;
    __p.__r_.__value_.__r.__words[2] = v11;
    v38 = v12;
    v13 = (v6 + 32);
    v14 = *(v6 + 32);
    v15 = *(v6 + 40);
    v39 = v14;
    v40 = v15;
    if (v15)
    {
      *(v14 + 16) = &v39;
      *(v6 + 24) = v13;
      *v13 = 0;
      *(v6 + 40) = 0;
    }

    else
    {
      v38 = &v39;
    }

    v41 = *(v6 + 48);
    for (i = v7; ; i -= 56)
    {
      v17 = a1 + i;
      if (*(a1 + i + 191) < 0)
      {
        operator delete(*(v17 + 168));
      }

      *(v17 + 168) = *(v17 + 112);
      *(v17 + 184) = *(v17 + 128);
      *(v17 + 135) = 0;
      *(v17 + 112) = 0;
      std::__tree<std::string>::__move_assign((v17 + 192), (v17 + 136));
      *(v17 + 216) = *(v17 + 160);
      if (i == -112)
      {
        v5 = a1;
        goto LABEL_47;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v34 = __p;
      }

      std::set<std::string>::set[abi:ne200100](v35, &v38);
      v36 = v41;
      v18 = a1 + i;
      if (*(a1 + i + 79) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v18 + 56), *(v18 + 64));
      }

      else
      {
        v31 = *(v18 + 56);
      }

      std::set<std::string>::set[abi:ne200100](v32, (a1 + i + 80));
      v19 = *(a1 + i + 104);
      v33 = v19;
      v20 = v36;
      std::__tree<std::string>::destroy(v32, v32[1]);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      std::__tree<std::string>::destroy(v35, v35[1]);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v20 <= v19)
      {
        goto LABEL_47;
      }

LABEL_44:
      v5 -= 56;
    }

    operator delete(v34.__r_.__value_.__l.__data_);
    if (v20 > v19)
    {
      goto LABEL_44;
    }

    v5 = a1 + i + 112;
LABEL_47:
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    v21 = a1 + i;
    v22 = *&__p.__r_.__value_.__l.__data_;
    *(v5 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v5 = v22;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v23 = v5 + 32;
    std::__tree<std::string>::destroy(v21 + 136, *(v5 + 32));
    v24 = v39;
    *(v21 + 136) = v38;
    *(v5 + 32) = v24;
    v25 = v40;
    *(v5 + 40) = v40;
    if (v25)
    {
      v26 = 0;
      *(v24 + 2) = v23;
      v38 = &v39;
      v39 = 0;
      v40 = 0;
    }

    else
    {
      *(v21 + 136) = v23;
      v26 = v39;
    }

    *(v5 + 48) = v41;
    std::__tree<std::string>::destroy(&v38, v26);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (++v30 != 8)
    {
LABEL_55:
      v5 = v6;
      v7 += 56;
      v6 += 56;
      if (v6 == a2)
      {
        return 1;
      }

      continue;
    }

    return v6 + 56 == a2;
  }
}

void std::swap[abi:ne200100]<quasar::AppLmData::Oov>(uint64_t a1, __int128 *a2)
{
  *__p = *a1;
  v4 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = (a1 + 24);
  v15 = v4;
  v16 = *(a1 + 24);
  v6 = (a1 + 32);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v17 = v7;
  v18 = v8;
  if (v8)
  {
    *(v7 + 16) = &v17;
    *(a1 + 24) = v6;
    *v6 = 0;
    *(a1 + 40) = 0;
    v9 = *(a1 + 23);
    v19 = *(a1 + 48);
    if (v9 < 0)
    {
      operator delete(*a1);
    }
  }

  else
  {
    v16 = &v17;
    v19 = *(a1 + 48);
  }

  v10 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v10;
  *(a2 + 23) = 0;
  *a2 = 0;
  std::__tree<std::string>::__move_assign(v5, a2 + 3);
  *(a1 + 48) = *(a2 + 12);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *__p;
  *(a2 + 2) = v15;
  v11 = a2 + 2;
  std::__tree<std::string>::destroy(a2 + 24, *(a2 + 4));
  v12 = v17;
  *(a2 + 3) = v16;
  *(a2 + 4) = v12;
  v13 = v18;
  *(a2 + 5) = v18;
  if (v13)
  {
    *(v12 + 16) = v11;
    v12 = 0;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    *(a2 + 3) = v11;
  }

  *(a2 + 12) = v19;
  std::__tree<std::string>::destroy(&v16, v12);
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B5119278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B511932C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN6quasar9AppLmData3OovEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSF_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSO_IJXspT2_EEEE(std::string *this, __int128 **a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = &this[2].__r_.__value_.__l.__size_;
  LODWORD(this[3].__r_.__value_.__l.__data_) = 1;
  return this;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::string>::destroy(a2 + 64, *(a2 + 72));
    if (*(a2 + 63) < 0)
    {
      operator delete(*(a2 + 40));
    }

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::AppLmData::Oov>>(void *a1, uint64_t *a2, uint64_t a3)
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
    std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__construct_node_hash<std::pair<std::string const,quasar::AppLmData::Oov>>();
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

void sub_1B5119670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5119710(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,quasar::AppLmData::Oov>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *&this[1].__r_.__value_.__l.__data_ = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
  v6 = a2 + 7;
  v7 = *(a2 + 7);
  this[2].__r_.__value_.__l.__size_ = v7;
  v8 = &this[2].__r_.__value_.__s.__data_[8];
  v9 = *(a2 + 8);
  this[2].__r_.__value_.__r.__words[2] = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 6) = v6;
    *v6 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    this[2].__r_.__value_.__r.__words[0] = v8;
  }

  LODWORD(this[3].__r_.__value_.__l.__data_) = *(a2 + 18);
  return this;
}

uint64_t ***std::insert_iterator<std::set<std::string>>::operator=[abi:ne200100](uint64_t ***a1, const void **a2)
{
  v3 = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string>(*a1, a1[1], a2, a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

uint64_t std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string>(uint64_t **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v4 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::AppLmData::Oov>>(void *a1, uint64_t *a2, uint64_t a3)
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
    operator new();
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

uint64_t std::pair<std::string const,quasar::AppLmData::Oov>::pair[abi:ne200100]<std::string,quasar::AppLmData::Oov,0>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(result + 40) = *(a2 + 5);
  *(result + 24) = v3;
  a2[2] = 0uLL;
  *(a2 + 3) = 0;
  *(result + 48) = *(a2 + 6);
  v4 = a2 + 7;
  v5 = *(a2 + 7);
  *(result + 56) = v5;
  v6 = result + 56;
  v7 = *(a2 + 8);
  *(result + 64) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 6) = v4;
    *v4 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *(result + 48) = v6;
  }

  *(result + 72) = *(a2 + 18);
  return result;
}

void *std::__shared_ptr_emplace<quasar::LmeDataFactory>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::LmeDataFactory>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFE4B8;
  std::allocator<quasar::LmeDataFactory>::construct[abi:ne200100]<quasar::LmeDataFactory,std::string const&>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::LmeDataFactory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFE4B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::LmeDataFactory>::construct[abi:ne200100]<quasar::LmeDataFactory,std::string const&>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v3, 0, sizeof(v3));
  quasar::LmeDataFactory::LmeDataFactory(a2, a3, 1, 1, v3);
  v4 = v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void sub_1B5119D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::GlobalLRUCache<std::string,std::vector<std::string>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFE508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::GlobalLRUCache<std::string,std::vector<std::string>>::~GlobalLRUCache(uint64_t a1)
{
  *a1 = &unk_1F2CFE558;
  v2 = (a1 + 16);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 40));
  std::__list_imp<std::pair<std::string,std::vector<std::string>>>::clear(v2);
  return a1;
}

void quasar::GlobalLRUCache<std::string,std::vector<std::string>>::~GlobalLRUCache(uint64_t a1)
{
  *a1 = &unk_1F2CFE558;
  v1 = (a1 + 16);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 40));
  std::__list_imp<std::pair<std::string,std::vector<std::string>>>::clear(v1);

  JUMPOUT(0x1B8C85350);
}

void quasar::GlobalLRUCache<std::string,std::vector<std::string>>::insert(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 40), a2);
  if (v6)
  {
    v7 = v6[5];
    v9 = *v7;
    v8 = v7[1];
    *(v9 + 8) = v8;
    *v8 = v9;
    --*(a1 + 32);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((v7 + 2));
    operator delete(v7);
    std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::__erase_unique<std::string>((a1 + 40), a2);
  }

  std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<true,0>(&__p, a2, a3);
  operator new();
}

void sub_1B511A074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::string,std::vector<std::string>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t *quasar::GlobalLRUCache<std::string,std::vector<std::string>>::get@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  *a3 = 0;
  result = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 40), a2);
  if (result)
  {
    v7 = *(a1 + 24);
    v8 = result[5];
    if (v7 != v8)
    {
      v9 = v8[1];
      if (v9 != v7)
      {
        v10 = *v8;
        *(v10 + 8) = v9;
        *v9 = v10;
        v11 = *v7;
        *(v11 + 8) = v8;
        *v8 = v11;
        *v7 = v8;
        v8[1] = v7;
      }
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v12 = v8[5];
    v13 = v8[6];

    return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a4, v12, v13, 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3));
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

uint64_t quasar::GlobalLRUCache<std::string,std::vector<std::string>>::mget(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 0;
    v17 = 0;
    do
    {
      (*(*a1 + 32))(&v15, a1, v3 + v7, &v17);
      v9 = *a2;
      v11 = v17;
      memset(v12, 0, sizeof(v12));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v12, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
      std::pair<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>::pair[abi:ne200100]<std::string const&,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>,0>(&__p, (v9 + v7), &v11);
      std::__tree<std::__value_type<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>>(a3, &__p.__r_.__value_.__l.__data_, &__p);
      v18 = &v14;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v18 = v12;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
      __p.__r_.__value_.__r.__words[0] = &v15;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      ++v8;
      v3 = *a2;
      v7 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v8);
  }

  return 0;
}

void sub_1B511A2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a13 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void std::__list_imp<std::pair<std::string,std::vector<std::string>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::pair<std::string,std::vector<std::string>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::list<std::pair<std::string,std::vector<std::string>>>::pop_back(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  *(v3 + 8) = v2;
  *v2 = v3;
  a1[2] = (a1[2] - 1);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((v1 + 2));

  operator delete(v1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::__erase_unique<std::string>(void *a1, uint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
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

std::string *std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, void *a3)
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

void sub_1B511A57C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>,0>(uint64_t a1)
{
  v2 = (a1 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

std::string *std::pair<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>::pair[abi:ne200100]<std::string const&,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>,0>(std::string *this, __int128 *a2, uint64_t a3)
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

  LODWORD(this[1].__r_.__value_.__l.__data_) = *a3;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  *&this[1].__r_.__value_.__r.__words[1] = *(a3 + 8);
  this[2].__r_.__value_.__r.__words[0] = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return this;
}

uint64_t std::pair<std::string,std::pair<quasar::PronCache<std::string,std::vector<std::string>>::ErrorCode,std::vector<std::string>>>::~pair(uint64_t a1)
{
  v3 = (a1 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::LmeDataFactoryBase::Word>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::LmeDataFactoryBase::Word>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; std::allocator_traits<std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy[abi:ne200100]<quasar::LmeDataFactoryBase::Word,0>(result, i))
  {
    i -= 80;
  }

  *(result + 8) = a2;
}

void std::allocator_traits<std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy[abi:ne200100]<quasar::LmeDataFactoryBase::Word,0>(uint64_t a1, uint64_t a2)
{
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a2 + 56, *(a2 + 64));
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

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string const&,std::string const&,int,std::set<std::string> &>(unint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, void *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v9 = 0x333333333333333;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v9);
  }

  v16 = 0;
  v17 = 80 * v5;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string const&,int,std::set<std::string> &>(a1, (80 * v5), a2, a3, a4, a5);
  v18 = 80 * v5 + 80;
  v10 = a1[1];
  v11 = 80 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v16);
  return v15;
}

void sub_1B511AB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string const&,int,std::set<std::string> &>(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 8));
  }

  else
  {
    v11 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  quasar::LmeDataFactoryBase::Word::Word(a2, &v11, &__p, *a5, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B511AC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a4;
  v18[0] = a1;
  v18[1] = &v20;
  v18[2] = &v21;
  if (a2 == a3)
  {
    v19 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = (a2 + v7);
      v9 = a4 + v7;
      v10 = *(a2 + v7);
      *(v9 + 16) = *(a2 + v7 + 16);
      *v9 = v10;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = 0;
      v11 = *(a2 + v7 + 24);
      *(v9 + 40) = *(a2 + v7 + 40);
      *(v9 + 24) = v11;
      v8[4] = 0;
      v8[5] = 0;
      v8[3] = 0;
      v12 = *(a2 + v7 + 48);
      *(v9 + 56) = *(a2 + v7 + 56);
      v13 = (a2 + v7 + 64);
      v14 = *v13;
      *(v9 + 48) = v12;
      *(a4 + v7 + 64) = v14;
      v15 = a4 + v7 + 64;
      v16 = *(a2 + v7 + 72);
      *(v9 + 72) = v16;
      if (v16)
      {
        *(v14 + 16) = v15;
        v8[7] = v13;
        *v13 = 0;
        *(a2 + v7 + 72) = 0;
      }

      else
      {
        *(v9 + 56) = v15;
      }

      v7 += 80;
    }

    while (a2 + v7 != a3);
    v21 = a4 + v7;
    v19 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy[abi:ne200100]<quasar::LmeDataFactoryBase::Word,0>(a1, v5);
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>>::~__exception_guard_exceptions[abi:ne200100](v18);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>::operator()[abi:ne200100](uint64_t *a1)
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
      std::allocator_traits<std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy[abi:ne200100]<quasar::LmeDataFactoryBase::Word,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::LmeDataFactoryBase::Word>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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
    std::allocator_traits<std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy[abi:ne200100]<quasar::LmeDataFactoryBase::Word,0>(v5, v4 - 80);
  }
}

void *std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::LmeDataFactoryBase::Word> const&>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word*,quasar::LmeDataFactoryBase::Word*>(v3, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  *(a1 + 8) = v3 + 3;
  return result;
}

void *std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__emplace_back_slow_path<std::vector<quasar::LmeDataFactoryBase::Word> const&>(char **a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word*,quasar::LmeDataFactoryBase::Word*>((24 * v2), *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
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
  std::__split_buffer<std::vector<quasar::LmeDataFactoryBase::Word>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B511B1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<quasar::LmeDataFactoryBase::Word>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word*,quasar::LmeDataFactoryBase::Word*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::LmeDataFactoryBase::Word>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B511B274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::LmeDataFactoryBase::Word>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*,quasar::LmeDataFactoryBase::Word*,quasar::LmeDataFactoryBase::Word*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 1, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        v4[1].__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v4[1].__r_.__value_.__l.__data_ = v8;
      }

      LODWORD(v4[2].__r_.__value_.__l.__data_) = *(v6 + 12);
      std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](&v4[2].__r_.__value_.__l.__size_, v6 + 56);
      v6 += 5;
      v4 = (v13 + 80);
      v13 = (v13 + 80);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

void sub_1B511B3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::pair<quasar::PronType,std::string>,float>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__tree_node<std::__value_type<std::pair<quasar::PronType,std::string>,float>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::pair<quasar::PronType,std::string>,float>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__tree_node<std::__value_type<std::pair<quasar::PronType,std::string>,float>,void *> *,long>>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__emplace_hint_unique_key_args<std::pair<quasar::PronType,std::string>,std::pair<std::pair<quasar::PronType,std::string> const,float> const&>(v5, (v5 + 8), (v4 + 4), (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__emplace_hint_unique_key_args<std::pair<quasar::PronType,std::string>,std::pair<std::pair<quasar::PronType,std::string> const,float> const&>(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__find_equal<std::pair<quasar::PronType,std::string>>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__construct_node<std::pair<std::pair<quasar::PronType,std::string> const,float> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__find_equal<std::pair<quasar::PronType,std::string>>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>::operator()[abi:ne200100](a1, a5, (a2 + 4)))
  {
    if (!std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>::operator()[abi:ne200100](a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>::operator()[abi:ne200100](a1, a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>::operator()[abi:ne200100](a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__find_equal<std::pair<quasar::PronType,std::string>>(a1, a3, a5);
}

void sub_1B511B78C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::pair<quasar::PronType,std::string>,float>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

BOOL std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 < *a3)
  {
    return 1;
  }

  if (*a3 < *a2)
  {
    return 0;
  }

  v6 = *(a3 + 8);
  v4 = a3 + 8;
  v5 = v6;
  v7 = *(v4 + 23);
  v10 = *(a2 + 8);
  v8 = a2 + 8;
  v9 = v10;
  v11 = *(v8 + 23);
  if (v11 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  if (v11 >= 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = v9;
  }

  if (v7 >= 0)
  {
    v14 = *(v4 + 23);
  }

  else
  {
    v14 = *(v4 + 8);
  }

  if (v7 >= 0)
  {
    v15 = v4;
  }

  else
  {
    v15 = v5;
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
  if (v17)
  {
    return v17 < 0;
  }

  else
  {
    return v12 < v14;
  }
}

void *std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__find_equal<std::pair<quasar::PronType,std::string>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::pair<quasar::PronType,std::string>,float>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void **std::__split_buffer<std::vector<quasar::LmeDataFactoryBase::Word>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<quasar::LmeDataFactoryBase::Word>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<quasar::LmeDataFactoryBase::Word>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void quasar::WatermarkDetector::WatermarkDetector(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2CFE5C0;
  *(v3 + 456) = xmmword_1B5AE12A0;
  *(v3 + 472) = 0xA23000016D5;
  *(v3 + 480) = 0x4023CCCCCCCCCCCDLL;
  std::string::basic_string[abi:ne200100]<0>((v3 + 488), "VoiceTrigger");
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 1065353216;
  *(a1 + 552) = 0;
  operator new();
}

void sub_1B511BB04(_Unwind_Exception *a1)
{
  v3 = *(v1 + 552);
  *(v1 + 552) = 0;
  if (v3)
  {
    MEMORY[0x1B8C85350](v3, 0x1000C40D39BF8FDLL);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v1 + 512));
  if (*(v1 + 511) < 0)
  {
    operator delete(*(v1 + 488));
  }

  quasar::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

void quasar::WatermarkDetector::finishInit(quasar::WatermarkDetector *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ",");
  quasar::splitAndTrimNoEmpty((this + 488), __p, v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = v6[0];
  v3 = v6[1];
  while (v2 != v3)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(this + 64, v2, v2);
    v2 += 3;
  }

  __p[0] = v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B511BBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::WatermarkDetector::runImpl(uint64_t a1, uint64_t a2, uint64_t *a3, quasar::SpeechRequestData **a4)
{
  InputOrigin = quasar::SpeechRequestData::getInputOrigin(*a4);
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 512), InputOrigin))
  {
    if (quasar::gLogLevel >= 4)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "WatermarkDetector not run on input origin ", 42);
      v10 = quasar::SpeechRequestData::getInputOrigin(*a4);
      v11 = *(v10 + 23);
      if (v11 >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v10;
      }

      if (v11 >= 0)
      {
        v13 = *(v10 + 23);
      }

      else
      {
        v13 = *(v10 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v12, v13);
      goto LABEL_13;
    }

LABEL_14:
    *(*a3 + 700) = 0;
    return 0;
  }

  v8 = quasar::SpeechRequestData::getEndpointStartMs(*a4) / 1000.0;
  if (v8 > 5.0)
  {
    if (quasar::gLogLevel >= 4)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "WatermarkDetector: not enough audio cached.", 43);
LABEL_13:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v41 = xmmword_1B5AE12B0;
  v42 = 1064849900;
  v43 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v44, "povey");
  v46 = 257;
  v47 = 3212836864;
  v48 = 0;
  v49 = 1;
  v14 = *a4;
  *&v41 = *(*(*a4 + 3) + 24);
  v42 = 1065353216;
  AudioBuffer = quasar::SpeechRequestData::getAudioBuffer(v14);
  quasar::RecogAudioBuffer::getRawAudioCache(&v39, *AudioBuffer);
  v16 = (v8 * *(*(*a4 + 3) + 24));
  if (v16 <= ((v40 - v39) >> 2))
  {
    v38[2] = 0;
    v38[0] = v39;
    v38[1] = v16;
    kaldi::Spectrogram::Spectrogram(v37, &v41);
    kaldi::Matrix<float>::Matrix(v36);
    kaldi::Spectrogram::Compute(v37, v38, v36, 0);
    quasar::NotchDetector::measureNotch(*(a1 + 552), v36, *(*(*a4 + 3) + 24));
    v19 = v18;
    v20 = v17;
    if (v17 < *(a1 + 480))
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v22 = *a3;
    *(v22 + 700) = v21;
    *(v22 + 704) = v17;
    v23 = *(v22 + 440);
    std::string::basic_string[abi:ne200100]<0>(&__p, "WatermarkPeakAvg");
    quasar::SpeechRequestResultData::addDumpAA(v23, &__p, 1, v20);
    if (SBYTE7(v51) < 0)
    {
      operator delete(__p);
    }

    v24 = *(*a3 + 440);
    std::string::basic_string[abi:ne200100]<0>(&__p, "WatermarkPeakMax");
    quasar::SpeechRequestResultData::addDumpAA(v24, &__p, 1, v19);
    if (SBYTE7(v51) < 0)
    {
      operator delete(__p);
    }

    v25 = *(*a3 + 440);
    std::string::basic_string[abi:ne200100]<0>(&__p, "WatermarkDetected");
    v26 = quasar::fingerprintDetectionResultString(*(*a3 + 700));
    std::string::basic_string[abi:ne200100]<0>(&v35, v26);
    quasar::SpeechRequestResultData::addDumpAA(v25, &__p, &v35);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v51) < 0)
    {
      operator delete(__p);
    }

    if (quasar::gLogLevel >= 4)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "WatermarkDetector peakMax=", 26);
      v28 = MEMORY[0x1B8C84BE0](v27, v19);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", peakAvg=", 10);
      v30 = MEMORY[0x1B8C84BE0](v29, v20);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", detected=", 11);
      v32 = quasar::fingerprintDetectionResultString(*(*a3 + 700));
      v33 = strlen(v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
    }

    kaldi::Matrix<float>::~Matrix(v36);
    kaldi::Spectrogram::~Spectrogram(v37);
  }

  else
  {
    if (quasar::gLogLevel >= 4)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "WatermarkDetector: not enough audio cached.", 43);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
    }

    *(*a3 + 700) = 0;
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  return 0;
}

void sub_1B511C0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  kaldi::Matrix<float>::~Matrix(&a16);
  kaldi::Spectrogram::~Spectrogram(&a21);
  if (__p)
  {
    a40 = __p;
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  _Unwind_Resume(a1);
}

void quasar::WatermarkDetector::registerParams(quasar::WatermarkDetector *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "watermark-detector");
  quasar::SystemConfig::enforceMinVersion(a2, 105, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "watermark-detector");
  quasar::SystemConfig::enforceMaxVersion(a2, 145, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "above-hi");
  std::string::basic_string[abi:ne200100]<0>(v4, "Frequency (in Hz) of top of upper band");
  quasar::SystemConfig::Register<int>(a2, __p, this + 456, v4, 0, 105, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "above-lo");
  std::string::basic_string[abi:ne200100]<0>(v4, "Frequency (in Hz) of bottom of upper band");
  quasar::SystemConfig::Register<int>(a2, __p, this + 460, v4, 0, 105, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "notch-hi");
  std::string::basic_string[abi:ne200100]<0>(v4, "Frequency (in Hz) of top of notch");
  quasar::SystemConfig::Register<int>(a2, __p, this + 464, v4, 0, 105, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "notch-lo");
  std::string::basic_string[abi:ne200100]<0>(v4, "Frequency (in Hz) of bottom of notch");
  quasar::SystemConfig::Register<int>(a2, __p, this + 468, v4, 0, 105, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "below-hi");
  std::string::basic_string[abi:ne200100]<0>(v4, "Frequency (in Hz) of top of lower band");
  quasar::SystemConfig::Register<int>(a2, __p, this + 472, v4, 0, 105, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "below-lo");
  std::string::basic_string[abi:ne200100]<0>(v4, "Frequency (in Hz) of bottom of lower band");
  quasar::SystemConfig::Register<int>(a2, __p, this + 476, v4, 0, 105, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "supported-input-origins-list");
  std::string::basic_string[abi:ne200100]<0>(v4, "The input origins that are supported (should be comma separated)");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 488, v4, 0, 105, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "watermark-threshold");
  std::string::basic_string[abi:ne200100]<0>(v4, "Average notch threshold value to detect a watermark");
  quasar::SystemConfig::Register<double>(a2, __p, this + 480, v4, 0, 105, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B511C65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::WatermarkDetector::~WatermarkDetector(quasar::WatermarkDetector *this)
{
  quasar::WatermarkDetector::~WatermarkDetector(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2CFE5C0;
  v2 = *(this + 69);
  *(this + 69) = 0;
  if (v2)
  {
    MEMORY[0x1B8C85350](v2, 0x1000C40D39BF8FDLL);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 64);
  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  quasar::Decoder::~Decoder(this);
}

uint64_t Array<double>::operator=(uint64_t a1, _DWORD *a2)
{
  v2 = a1;
  if (a2 != a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      MEMORY[0x1B8C85310](v4, 0x1000C8000313F17);
    }

    v5 = a2[1];
    *v2 = *a2;
    v2[1] = v5;
    v2[4] = v5;
    operator new[]();
  }

  return a1;
}

unint64_t Array<double>::operator[](int *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  if (v2 >= a1[1])
  {
    a1[1] = v2 + 1;
    if (v2 >= a1[4])
    {
      Array<double>::alloc(a1, v2, 0);
    }
  }

  return *(a1 + 1) + 8 * v2;
}

uint64_t Discount::vocabSize(Discount *this, Vocab *a2)
{
  VocabIter::VocabIter(v6, this, 0);
  v3 = 0;
  v5 = 0;
  while (VocabIter::next(v6, &v5))
  {
    if ((*(*this + 176))(this, v5))
    {
      v3 = v3;
    }

    else
    {
      v3 = (v3 + 1);
    }
  }

  LHashIter<char const*,unsigned int>::~LHashIter(v6);
  return v3;
}

void sub_1B511C9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  LHashIter<char const*,unsigned int>::~LHashIter(va);
  _Unwind_Resume(a1);
}

void GoodTuring::GoodTuring(GoodTuring *this, unsigned int a2, unsigned int a3)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = MEMORY[0x1E69E5300];
  *(this + 24) = 0;
  *this = &unk_1F2CFE698;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 6) = 0;
  *Array<double>::operator[](this + 12, 0) = 0x3FF0000000000000;
}

void sub_1B511CA74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    MEMORY[0x1B8C85310](v3, 0x1000C8000313F17);
  }

  _Unwind_Resume(exception_object);
}

double GoodTuring::discount(GoodTuring *this, unint64_t a2)
{
  result = 1.0;
  if (a2)
  {
    result = 0.0;
    if (*(this + 4) <= a2)
    {
      result = 1.0;
      if (*(this + 5) >= a2)
      {
        return *Array<double>::operator[](this + 12, a2);
      }
    }
  }

  return result;
}

BOOL GoodTuring::write(GoodTuring *this, File *a2)
{
  snprintf(ctsBuffer, 0x64uLL, "%lu", *(this + 4));
  File::fprintf(a2, "mincount %s\n", v4, ctsBuffer);
  snprintf(ctsBuffer, 0x64uLL, "%lu", *(this + 5));
  File::fprintf(a2, "maxcount %s\n", v5, ctsBuffer);
  result = File::error(a2);
  if (!result)
  {
    v7 = 1;
    do
    {
      if (*(this + 5) < v7)
      {
        break;
      }

      v8 = Array<double>::operator[](this + 12, v7);
      File::fprintf(a2, "discount %u %lf\n", v9, v7++, *v8);
      result = File::error(a2);
    }

    while (!result);
  }

  return result;
}

uint64_t GoodTuring::read(GoodTuring *this, File *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = File::getline(a2);
  if (!v4)
  {
LABEL_18:
    v10 = *(this + 4);
    if (v10 <= *(this + 5))
    {
      v11 = MEMORY[0x1E69E5300];
      do
      {
        if (*Array<double>::operator[](this + 12, v10) == 0.0)
        {
          v12 = File::position(a2, v11);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "warning: discount coefficient ", 30);
          v14 = MEMORY[0x1B8C84C30](v13, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " = 0.0\n", 7);
        }

        ++v10;
      }

      while (v10 <= *(this + 5));
    }

    return 1;
  }

  v5 = v4;
  v6 = (this + 40);
  while (1)
  {
    v20 = 0;
    v19 = 0;
    if (sscanf(v5, "mincount %99s", v21) == 1 && v21[0] != 45 && sscanf(v21, "%lu", this + 32) == 1)
    {
      goto LABEL_17;
    }

    if (sscanf(v5, "maxcount %99s", v21) == 1 && v21[0] != 45 && sscanf(v21, "%lu", this + 40) == 1)
    {
      break;
    }

    if (sscanf(v5, "discount %u %lf", &v20, &v19) != 2)
    {
      v16 = File::position(a2, MEMORY[0x1E69E5300]);
      v17 = "unrecognized parameter\n";
      v18 = 23;
      goto LABEL_26;
    }

    if (v20 > 0x64)
    {
      v9 = File::position(a2, MEMORY[0x1E69E5300]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "warning: count value out of range\n", 34);
    }

    else
    {
      v8 = v19;
      *Array<double>::operator[](this + 12, v20) = v8;
    }

LABEL_17:
    v5 = File::getline(a2);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (*v6 <= 0x64)
  {
    v7 = 0;
    do
    {
      *Array<double>::operator[](this + 12, v7++) = 0;
    }

    while (v7 <= *v6);
    goto LABEL_17;
  }

  v16 = File::position(a2, MEMORY[0x1E69E5300]);
  v17 = "maxcount value out of range\n";
  v18 = 28;
LABEL_26:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
  return 0;
}

uint64_t GoodTuring::estimate(GoodTuring *this, NgramStats *a2, uint64_t a3)
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  *&v52[8] = 0;
  v53 = 0;
  v51 = 0;
  *v52 = (a3 + 1);
  if (a3 != -1)
  {
    Array<unsigned int>::alloc(&v51, a3, 0);
  }

  TrieIter2<unsigned int,unsigned long>::TrieIter2(v50, a2 + 20, 0, -1, 0);
  v6 = 0;
  do
  {
    *Array<unsigned long>::operator[](&v54, v6++) = 0;
  }

  while (v6 <= *(this + 5) + 1);
  v7 = a3 - 1;
  while (1)
  {
    v8 = TrieIter2<unsigned int,unsigned long>::next(v50);
    if (!v8)
    {
      break;
    }

    if (!(*(**(a2 + 3) + 176))(*(a2 + 3), *(*&v52[4] + 4 * (v7 - v51))))
    {
      if ((*(**(a2 + 3) + 224))(*(a2 + 3), *(*&v52[4] + 4 * (v7 - v51))))
      {
        v9 = (*(**(a2 + 3) + 232))(*(a2 + 3), *(*&v52[4] + 4 * (v7 - v51)));
        if (v9 && *(this + 5) + 1 >= v9)
        {
          v10 = *(v8 + 8);
          v11 = Array<unsigned long>::operator[](&v54, v9);
          goto LABEL_14;
        }
      }

      else
      {
        v12 = *(v8 + 8);
        if (v12 <= *(this + 5) + 1)
        {
          v11 = Array<unsigned long>::operator[](&v54, v12);
          v10 = 1;
LABEL_14:
          *v11 += v10;
        }
      }
    }
  }

  if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
  {
    v13 = (*(*this + 24))(this);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Good-Turing discounting ", 24);
    v15 = MEMORY[0x1B8C84C10](v14, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "-grams\n", 7);
    v16 = 0;
    v17 = MEMORY[0x1E69E5318];
    do
    {
      v18 = (*(*this + 24))(this);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "GT-count [", 10);
      v20 = MEMORY[0x1B8C84C30](v19, v16);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "] = ", 4);
      v22 = Array<unsigned long>::operator[](&v54, v16);
      v23 = MEMORY[0x1B8C84C30](v21, *v22);
      std::ios_base::getloc((v23 + *(*v23 - 24)));
      v24 = std::locale::use_facet(&v57, v17);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v57);
      std::ostream::put();
      std::ostream::flush();
      ++v16;
    }

    while (v16 <= *(this + 5) + 1);
  }

  if (!*Array<unsigned long>::operator[](&v54, 1))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "warning: no singleton counts\n", 29);
    *(this + 5) = 0;
LABEL_27:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "GT discounting disabled\n", 24);
    goto LABEL_28;
  }

  v25 = *(this + 5);
  if (!v25)
  {
    goto LABEL_27;
  }

  v26 = v25 + 1;
  v27 = MEMORY[0x1E69E5300];
  while (!*Array<unsigned long>::operator[](&v54, v26))
  {
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "warning: count of count ", 24);
    v29 = MEMORY[0x1B8C84C30](v28, *(this + 5) + 1);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " is zero ", 9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "-- lowering maxcount\n", 21);
    v26 = *(this + 5);
    *(this + 5) = v26 - 1;
    if (v26 == 1)
    {
      goto LABEL_27;
    }
  }

  v32 = *(this + 5);
  if (!v32)
  {
    goto LABEL_27;
  }

  v33 = v32 + 1;
  v34 = *Array<unsigned long>::operator[](&v54, v32 + 1);
  v35 = Array<unsigned long>::operator[](&v54, 1);
  if (*(this + 5))
  {
    v36 = v33 * v34 / *v35;
    v37 = 1;
    v38 = MEMORY[0x1E69E5300];
    do
    {
      if (*Array<unsigned long>::operator[](&v54, v37))
      {
        v39 = *Array<unsigned long>::operator[](&v54, v37 + 1);
        v40 = (v37 + 1) * v39 / (v37 * *Array<unsigned long>::operator[](&v54, v37));
        v41 = (v40 - v36) / (1.0 - v36);
        if (COERCE__INT64(fabs(v41)) > 0x7FEFFFFFFFFFFFFFLL || v40 > 1.0 || v41 <= 0.000003)
        {
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "warning: discount coeff ", 24);
          v45 = MEMORY[0x1B8C84C30](v44, v37);
          v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " is out of range: ", 18);
          v47 = MEMORY[0x1B8C84BE0](v46, v41);
          v41 = 1.0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "\n", 1);
        }
      }

      else
      {
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "warning: count of count ", 24);
        v49 = MEMORY[0x1B8C84C30](v48, v37);
        v41 = 1.0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " is zero\n", 9);
      }

      *Array<double>::operator[](this + 12, v37++) = v41;
    }

    while (v37 <= *(this + 5));
  }

LABEL_28:
  TrieIter2<unsigned int,unsigned int>::~TrieIter2(v50);
  if (*&v52[4])
  {
    MEMORY[0x1B8C85310](*&v52[4], 0x1000C8052888210);
  }

  if (v55)
  {
    MEMORY[0x1B8C85310](v55, 0x1000C8000313F17);
  }

  return 1;
}

void sub_1B511D4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25)
{
  TrieIter2<unsigned int,unsigned int>::~TrieIter2(&a9);
  if (a20)
  {
    MEMORY[0x1B8C85310](a20, 0x1000C8052888210);
  }

  if (a23)
  {
    MEMORY[0x1B8C85310](a23, 0x1000C8000313F17);
  }

  _Unwind_Resume(a1);
}

double NaturalDiscount::discount(NaturalDiscount *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  result = 0.0;
  if (*(this + 4) <= a2)
  {
    LODWORD(result) = *(this + 7);
    v5 = *&result;
    result = 1.0;
    if (a4 != v5)
    {
      return ((1.0 - a4) * a4 + a3 * (a3 + 1.0)) / (a4 + a4 + a3 * (a3 + 1.0));
    }
  }

  return result;
}

double KneserNey::discount(KneserNey *this, unint64_t a2)
{
  if (!a2)
  {
    return 1.0;
  }

  result = 0.0;
  if (*(this + 4) <= a2)
  {
    return (a2 - *(this + 5)) / a2;
  }

  return result;
}

uint64_t KneserNey::write(KneserNey *this, File *a2)
{
  snprintf(ctsBuffer, 0x64uLL, "%lu", *(this + 4));
  File::fprintf(a2, "mincount %s\n", v4, ctsBuffer);
  return File::fprintf(a2, "discount1 %lf\n", v5, *(this + 5));
}

uint64_t KneserNey::read(KneserNey *this, File *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = File::getline(a2);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  while (sscanf(v5, "mincount %99s", v8) == 1 && v8[0] != 45 && sscanf(v8, "%lu", this + 32) == 1 || sscanf(v5, "discount1 %lf", this + 40) == 1)
  {
    v5 = File::getline(a2);
    if (!v5)
    {
      return 1;
    }
  }

  v7 = File::position(a2, MEMORY[0x1E69E5300]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "unrecognized parameter\n", 23);
  return 0;
}

uint64_t KneserNey::estimate(KneserNey *this, NgramStats *a2, uint64_t a3)
{
  if (!*(this + 49))
  {
    (*(*this + 112))(this, a2, a3, *(a2 + 39));
  }

  *&v29[8] = 0;
  v30 = 0;
  v28 = 0;
  *v29 = (a3 + 1);
  if (a3 != -1)
  {
    Array<unsigned int>::alloc(&v28, a3, 0);
  }

  TrieIter2<unsigned int,unsigned long>::TrieIter2(v27, a2 + 20, 0, -1, 0);
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = TrieIter2<unsigned int,unsigned long>::next(v27);
    if (!v8)
    {
      break;
    }

    if (!(*(**(a2 + 3) + 176))(*(a2 + 3), *(*&v29[4] + 4 * (-2 - v28))))
    {
      if ((*(**(a2 + 3) + 224))(*(a2 + 3), *(*&v29[4] + 4 * (-2 - v28))))
      {
        v9 = (*(**(a2 + 3) + 232))(*(a2 + 3), *(*&v29[4] + 4 * (-2 - v28)));
        if (v9 == 1)
        {
          goto LABEL_14;
        }

        if (v9 == 2)
        {
LABEL_15:
          ++v7;
        }
      }

      else
      {
        v10 = *(v8 + 8);
        if (v10 == 2)
        {
          goto LABEL_15;
        }

        if (v10 == 1)
        {
LABEL_14:
          ++v6;
        }
      }
    }
  }

  if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
  {
    v11 = (*(*this + 24))(this);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Kneser-Ney smoothing ", 21);
    v13 = MEMORY[0x1B8C84C10](v12, a3);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "-grams\n", 7);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "n1 = ", 5);
    v16 = MEMORY[0x1B8C84C30](v15, v6);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "n2 = ", 5);
    v19 = MEMORY[0x1B8C84C30](v18, v7);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v6 && v7)
  {
    *(this + 5) = v6 / (v6 + (2 * v7));
    if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
    {
      v21 = (*(*this + 24))(this);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "D = ", 4);
      v23 = MEMORY[0x1B8C84BE0](v22, *(this + 5));
      std::ios_base::getloc((v23 + *(*v23 - 24)));
      v24 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v31);
      std::ostream::put();
      std::ostream::flush();
    }

    if (*(this + 49))
    {
      (*(*this + 112))(this, a2, a3, *(a2 + 39));
    }

    v25 = 1;
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "one of required KneserNey count-of-counts is zero\n", 50);
    v25 = 0;
  }

  TrieIter2<unsigned int,unsigned int>::~TrieIter2(v27);
  if (*&v29[4])
  {
    MEMORY[0x1B8C85310](*&v29[4], 0x1000C8052888210);
  }

  return v25;
}

void sub_1B511DCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  std::locale::~locale((v20 - 72));
  TrieIter2<unsigned int,unsigned int>::~TrieIter2(&a9);
  if (a20)
  {
    MEMORY[0x1B8C85310](a20, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

uint64_t KneserNey::prepareCounts(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a3 < a4)
  {
    v4 = result;
    if (!*(result + 48))
    {
      if (!*(result + 8) && (Debug::debugAll || *(result + 12)))
      {
        v7 = (*(*result + 24))(result);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "modifying ", 10);
        v9 = MEMORY[0x1B8C84C10](v8, a3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "-gram counts for Kneser-Ney smoothing\n", 38);
      }

      *&v15[8] = 0;
      v16 = 0;
      v14 = 0;
      *v15 = (a3 + 2);
      if (a3 != -2)
      {
        Array<unsigned int>::alloc(&v14, a3 + 1, 0);
      }

      TrieIter2<unsigned int,unsigned long>::TrieIter2(v13, (a2 + 160), 0, -2, 0);
      while (1)
      {
        v10 = TrieIter2<unsigned int,unsigned long>::next(v13);
        if (!v10)
        {
          break;
        }

        if (!(*(**(a2 + 24) + 176))(*(a2 + 24), *(*&v15[4] - 4 * v14)))
        {
          *(v10 + 8) = 0;
        }
      }

      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v13);
      TrieIter2<unsigned int,unsigned long>::TrieIter2(v13, (a2 + 160), (*&v15[4] - 4 * v14), -1, 0);
      while (1)
      {
        v11 = TrieIter2<unsigned int,unsigned long>::next(v13);
        if (!v11)
        {
          break;
        }

        if (*(v11 + 8))
        {
          if (!(*(**(a2 + 24) + 176))(*(a2 + 24), *(*&v15[4] + 4 * (1 - v14))))
          {
            v17 = 0;
            Trie = Trie<unsigned int,unsigned int>::findTrie((a2 + 160), (*&v15[4] + 4 * (1 - v14)), &v17);
            if (Trie)
            {
              ++Trie[1];
            }
          }
        }
      }

      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v13);
      *(v4 + 48) = 1;
      result = *&v15[4];
      if (*&v15[4])
      {
        return MEMORY[0x1B8C85310](*&v15[4], 0x1000C8052888210);
      }
    }
  }

  return result;
}

void sub_1B511DF70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    MEMORY[0x1B8C85310](v3, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

double ModKneserNey::discount(ModKneserNey *this, unint64_t a2)
{
  if (!a2)
  {
    return 1.0;
  }

  result = 0.0;
  if (*(this + 4) <= a2)
  {
    if (a2 == 2)
    {
      return (2.0 - *(this + 7)) * 0.5;
    }

    else if (a2 == 1)
    {
      return 1.0 - *(this + 5);
    }

    else
    {
      return (a2 - *(this + 8)) / a2;
    }
  }

  return result;
}

uint64_t ModKneserNey::write(ModKneserNey *this, File *a2)
{
  snprintf(ctsBuffer, 0x64uLL, "%lu", *(this + 4));
  File::fprintf(a2, "mincount %s\n", v4, ctsBuffer);
  File::fprintf(a2, "discount1 %lf\n", v5, *(this + 5));
  File::fprintf(a2, "discount2 %lf\n", v6, *(this + 7));
  return File::fprintf(a2, "discount3+ %lf\n", v7, *(this + 8));
}

uint64_t ModKneserNey::read(ModKneserNey *this, File *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = File::getline(a2);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  while (sscanf(v5, "mincount %99s", v8) == 1 && v8[0] != 45 && sscanf(v8, "%lu", this + 32) == 1 || sscanf(v5, "discount1 %lf", this + 40) == 1 || sscanf(v5, "discount2 %lf", this + 56) == 1 || sscanf(v5, "discount3+ %lf", this + 64) == 1)
  {
    v5 = File::getline(a2);
    if (!v5)
    {
      return 1;
    }
  }

  v7 = File::position(a2, MEMORY[0x1E69E5300]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "unrecognized parameter\n", 23);
  return 0;
}

uint64_t ModKneserNey::estimate(ModKneserNey *this, NgramStats *a2, uint64_t a3)
{
  if (!*(this + 49))
  {
    (*(*this + 112))(this, a2, a3, *(a2 + 39));
  }

  *&v45[8] = 0;
  v46 = 0;
  v44 = 0;
  *v45 = (a3 + 1);
  if (a3 != -1)
  {
    Array<unsigned int>::alloc(&v44, a3, 0);
  }

  TrieIter2<unsigned int,unsigned long>::TrieIter2(v43, a2 + 20, 0, -1, 0);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = TrieIter2<unsigned int,unsigned long>::next(v43);
    if (!v10)
    {
      break;
    }

    if (!(*(**(a2 + 3) + 176))(*(a2 + 3), *(*&v45[4] + 4 * (-2 - v44))))
    {
      if ((*(**(a2 + 3) + 224))(*(a2 + 3), *(*&v45[4] + 4 * (-2 - v44))))
      {
        v11 = (*(**(a2 + 3) + 232))(*(a2 + 3), *(*&v45[4] + 4 * (-2 - v44)));
        if (v11 > 2)
        {
          if (v11 == 3)
          {
            goto LABEL_26;
          }

          if (v11 == 4)
          {
            ++v8;
          }
        }

        else
        {
          if (v11 == 1)
          {
            goto LABEL_21;
          }

          if (v11 == 2)
          {
            ++v6;
          }
        }
      }

      else
      {
        v12 = *(v10 + 8);
        if (v12 > 2)
        {
          if (v12 == 3)
          {
LABEL_26:
            ++v7;
          }

          else if (v12 == 4)
          {
            ++v8;
          }
        }

        else if (v12 == 1)
        {
LABEL_21:
          ++v9;
        }

        else if (v12 == 2)
        {
          ++v6;
        }
      }
    }
  }

  if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
  {
    v13 = (*(*this + 24))(this);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Kneser-Ney smoothing ", 21);
    v15 = MEMORY[0x1B8C84C10](v14, a3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "-grams\n", 7);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "n1 = ", 5);
    v18 = MEMORY[0x1B8C84C30](v17, v9);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v47);
    std::ostream::put();
    std::ostream::flush();
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "n2 = ", 5);
    v21 = MEMORY[0x1B8C84C30](v20, v6);
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v47);
    std::ostream::put();
    std::ostream::flush();
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "n3 = ", 5);
    v24 = MEMORY[0x1B8C84C30](v23, v7);
    std::ios_base::getloc((v24 + *(*v24 - 24)));
    v25 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v47);
    std::ostream::put();
    std::ostream::flush();
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "n4 = ", 5);
    v27 = MEMORY[0x1B8C84C30](v26, v8);
    std::ios_base::getloc((v27 + *(*v27 - 24)));
    v28 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
    (v28->__vftable[2].~facet_0)(v28, 10);
    std::locale::~locale(&v47);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v9 && v6 && v7 && v8)
  {
    v29 = v9 / (v9 + 2 * v6);
    v30 = 1.0 - (v29 + v29) * v6 / v9;
    *(this + 5) = v30;
    *(this + 7) = 2.0 - v29 * 3.0 * v7 / v6;
    *(this + 8) = v29 * -4.0 * v8 / v7 + 3.0;
    if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
    {
      v31 = (*(*this + 24))(this);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "D1 = ", 5);
      v33 = MEMORY[0x1B8C84BE0](v32, *(this + 5));
      std::ios_base::getloc((v33 + *(*v33 - 24)));
      v34 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
      (v34->__vftable[2].~facet_0)(v34, 10);
      std::locale::~locale(&v47);
      std::ostream::put();
      std::ostream::flush();
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "D2 = ", 5);
      v36 = MEMORY[0x1B8C84BE0](v35, *(this + 7));
      std::ios_base::getloc((v36 + *(*v36 - 24)));
      v37 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
      (v37->__vftable[2].~facet_0)(v37, 10);
      std::locale::~locale(&v47);
      std::ostream::put();
      std::ostream::flush();
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "D3+ = ", 6);
      v39 = MEMORY[0x1B8C84BE0](v38, *(this + 8));
      std::ios_base::getloc((v39 + *(*v39 - 24)));
      v40 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
      (v40->__vftable[2].~facet_0)(v40, 10);
      std::locale::~locale(&v47);
      std::ostream::put();
      std::ostream::flush();
      v30 = *(this + 5);
    }

    if (v30 < 0.0 || *(this + 7) < 0.0 || *(this + 8) < 0.0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "one of modified KneserNey discounts is negative\n", 48);
      goto LABEL_44;
    }

    if (*(this + 49))
    {
      (*(*this + 112))(this, a2, a3, *(a2 + 39));
    }

    v41 = 1;
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "one of required modified KneserNey count-of-counts is zero\n", 59);
LABEL_44:
    v41 = 0;
  }

  TrieIter2<unsigned int,unsigned int>::~TrieIter2(v43);
  if (*&v45[4])
  {
    MEMORY[0x1B8C85310](*&v45[4], 0x1000C8052888210);
  }

  return v41;
}

void sub_1B511EAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  std::locale::~locale((v20 - 88));
  TrieIter2<unsigned int,unsigned int>::~TrieIter2(&a9);
  if (a20)
  {
    MEMORY[0x1B8C85310](a20, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

uint64_t Discount::estimate(uint64_t a1)
{
  v1 = (*(*a1 + 24))(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "discounting method does not support float counts\n", 49);
  return 0;
}

void GoodTuring::~GoodTuring(GoodTuring *this)
{
  *this = &unk_1F2CFE698;
  v1 = *(this + 7);
  if (v1)
  {
    MEMORY[0x1B8C85310](v1, 0x1000C8000313F17);
  }
}

{
  *this = &unk_1F2CFE698;
  v1 = *(this + 7);
  if (v1)
  {
    MEMORY[0x1B8C85310](v1, 0x1000C8000313F17);
  }

  JUMPOUT(0x1B8C85350);
}

unint64_t Array<unsigned long>::operator[](int *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  if (v2 >= a1[1])
  {
    a1[1] = v2 + 1;
    if (v2 >= a1[4])
    {
      Array<unsigned long>::alloc(a1, v2, 0);
    }
  }

  return *(a1 + 1) + 8 * v2;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
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

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t kaldi::quasar::AttributeClusterer::AccumulateAttributes(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v38 = 0u;
  v39 = 0u;
  v40 = 1065353216;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 != v5)
  {
    v10 = 0;
    do
    {
      v11 = *(v5 + 40 * v10 + 16);
      if (v11)
      {
        do
        {
          std::__hash_table<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>::__emplace_unique_key_args<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AbstractAttribute * const&>(&v38, v11 + 2, v11 + 2);
          v11 = *v11;
        }

        while (v11);
        v5 = *(a1 + 16);
        v4 = *(a1 + 24);
      }

      ++v10;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) > v10);
    v12 = v39;
    if (v39)
    {
      v13 = a2 | (a3 << 32);
      do
      {
        v37 = v12[2];
        v14 = v37[2];
        if (v14 != 4 && v14 != 8)
        {
          v16 = std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::find<kaldi::quasar::AbstractAttribute *>(a4, &v37);
          v17 = v16;
          if (v16)
          {
            v19 = v16[4];
            v18 = v16[5];
            if (v19 >= v18)
            {
              v23 = v16[3];
              v24 = (v19 - v23) >> 3;
              if ((v24 + 1) >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v25 = v18 - v23;
              v26 = v25 >> 2;
              if (v25 >> 2 <= (v24 + 1))
              {
                v26 = v24 + 1;
              }

              if (v25 >= 0x7FFFFFFFFFFFFFF8)
              {
                v27 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v27 = v26;
              }

              if (v27)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((v16 + 3), v27);
              }

              *(8 * v24) = v13;
              v20 = 8 * v24 + 8;
              v28 = v16[3];
              v29 = v16[4] - v28;
              v30 = (8 * v24 - v29);
              memcpy(v30, v28, v29);
              v31 = v17[3];
              v17[3] = v30;
              v17[4] = v20;
              v17[5] = 0;
              if (v31)
              {
                operator delete(v31);
              }
            }

            else
            {
              *v19 = v13;
              v20 = (v19 + 1);
            }

            v17[4] = v20;
          }

          else
          {
            v34 = v13;
            std::vector<std::pair<int,int>>::vector[abi:ne200100](&v35, 1uLL, &v34);
            v33 = (*(*v37 + 32))(v37);
            v41 = &v33;
            v21 = std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<kaldi::quasar::AbstractAttribute *,std::piecewise_construct_t const&,std::tuple<kaldi::quasar::AbstractAttribute *&&>,std::tuple<>>(a4, &v33, &std::piecewise_construct, &v41);
            v22 = v21[3];
            if (v22)
            {
              v21[4] = v22;
              operator delete(v22);
              v21[3] = 0;
              v21[4] = 0;
              v21[5] = 0;
            }

            *(v21 + 3) = v35;
            v21[5] = v36;
          }
        }

        v12 = *v12;
      }

      while (v12);
    }
  }

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v38);
}

void sub_1B511F32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B511F3C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void **std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[2];
    if (v3)
    {
      __p[3] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::__hash_table<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>::__emplace_unique_key_args<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AbstractAttribute * const&>(void *a1, void *a2, void *a3)
{
  v5 = (*(**a2 + 16))();
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
    operator new();
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

  if (((*(*v12[2] + 24))(v12[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v12;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::__hash_table<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>::find<kaldi::quasar::AbstractAttribute *>(void *a1, void *a2)
{
  v4 = (*(**a2 + 16))();
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if ((*(*i[2] + 24))(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<kaldi::quasar::AbstractAttribute *,std::piecewise_construct_t const&,std::tuple<kaldi::quasar::AbstractAttribute *&&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v6 = (*(**a2 + 16))();
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (((*(*v13[2] + 24))(v13[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

char *std::vector<std::pair<int,int>>::__assign_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      std::vector<long long>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 8;
        v12 -= 8;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 8;
        v15 += 8;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::find<kaldi::quasar::AbstractAttribute *>(void *a1, void *a2)
{
  v4 = (*(**a2 + 16))();
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if ((*(*i[2] + 24))(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::vector<std::pair<int,int>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1B511FF50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::DecoderOptions::defaultDecoderOptions(quasar::DecoderOptions *this)
{
  {
    operator new();
  }

  return quasar::DecoderOptions::defaultDecoderOptions(void)::options;
}

void quasar::RegexRules::clear(std::locale **this)
{
  std::vector<quasar::RegexReplacementRule>::__base_destruct_at_end[abi:ne200100](this, *this);
  v3 = *this;
  *this = 0;
  this[1] = 0;
  v2 = this[2];
  this[2] = 0;
  v4 = v2;
  v5 = &v3;
  std::vector<quasar::RegexReplacementRule>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void quasar::RegexReplacementRule::RegexReplacementRule(std::regex_traits<char> *a1, __int32 *a2)
{
  v2 = std::regex_traits<char>::regex_traits(a1);
  *&v2[1].__loc_.__locale_ = 0u;
  *&v2[2].__ct_ = 0u;
  *&v2[3].__loc_.__locale_ = 0u;
  *&v2[1].__col_ = 0u;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = 0u;
  memset(v5, 0, sizeof(v5));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v3, "s/(.*)/(.*)/(g|gI);", 0);
}

void sub_1B5120510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::locale a58)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a58);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v60 - 240));
  v62 = *(v60 - 176);
  if (v62)
  {
    *(v60 - 168) = v62;
    operator delete(v62);
  }

  if (*(v58 + 87) < 0)
  {
    operator delete(*v59);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v58);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

double quasar::RegexReplacementRule::applyRule(uint64_t a1, std::__wrap_iter<const char *> a2)
{
  i = a2.__i_;
  memset(&v8, 0, sizeof(v8));
  v3 = *(a2.__i_ + 23);
  v4 = *(a2.__i_ + 1);
  if ((v3 & 0x80u) != 0)
  {
    a2.__i_ = *a2.__i_;
    v3 = v4;
  }

  if (*(a1 + 87) >= 0)
  {
    v5 = (a1 + 64);
  }

  else
  {
    v5 = *(a1 + 64);
  }

  v6.__i_ = &a2.__i_[v3];
  std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(&v8, a2, v6, a1, v5, 0);
  if (i[23] < 0)
  {
    operator delete(*i);
  }

  result = *&v8.__r_.__value_.__l.__data_;
  *i = v8;
  return result;
}

void sub_1B51206B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::RegexRules::RegexRules(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  quasar::RegexRules::loadFromFile(a1, a2);
  return a1;
}

void sub_1B5120704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<quasar::RegexReplacementRule>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL quasar::RegexRules::loadFromFile(void *a1, uint64_t a2)
{
  v39[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v36, a2, 8);
  memset(&v35, 0, sizeof(v35));
  v4 = v38;
  if (v38)
  {
    v5 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((v36 + *(v36[0] - 24)));
      v6 = std::locale::use_facet(__p, v5);
      v7 = (v6->__vftable[2].~facet_0)(v6, 10);
      std::locale::~locale(__p);
      v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v36, &v35, v7);
      if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
      {
        break;
      }

      quasar::trim(&v35);
      std::string::basic_string[abi:ne200100]<0>(__p, "#");
      if (quasar::startsWith(&v35, __p))
      {
        if (SBYTE7(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v35.__r_.__value_.__l.__size_;
        }

        if (SBYTE7(v19) < 0)
        {
          operator delete(__p[0]);
          if (size)
          {
LABEL_14:
            if (a1[1] < a1[2])
            {
              quasar::RegexReplacementRule::RegexReplacementRule(a1[1], &v35);
            }

            std::vector<quasar::RegexReplacementRule>::__emplace_back_slow_path<std::string &>(a1, &v35);
          }
        }

        else if (size)
        {
          goto LABEL_14;
        }
      }
    }

    if (v38 && !std::filebuf::close())
    {
      std::ios_base::clear((v36 + *(v36[0] - 24)), *&v37[*(v36[0] - 24) + 16] | 4);
    }

    if (quasar::gLogLevel >= 5)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Loaded ", 7);
      v11 = MEMORY[0x1B8C84C30](v10, 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " rules.", 7);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

  else if (quasar::gLogLevel >= 1)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unable to open the file to read: '", 34);
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "'", 1);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v36[0] = *MEMORY[0x1E69E54C8];
  *(v36 + *(v36[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v37);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v39);
  return v4 != 0;
}

void sub_1B5120C48(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5120CC4);
}

void sub_1B5120C6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5120C98);
}

void sub_1B5120C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a50, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&STACK[0x2D8]);
  _Unwind_Resume(a1);
}

void quasar::RegexRules::applyRules(uint64_t *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    v7.__i_ = a3;
    quasar::RegexReplacementRule::applyRule(v5, v7);
    v5 += 88;
  }
}

void sub_1B5120D48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1B8C84A00](a1 + 2);

  return std::istream::~istream();
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

void std::vector<quasar::RegexReplacementRule>::__base_destruct_at_end[abi:ne200100](uint64_t result, std::locale *a2)
{
  for (i = *(result + 8); i != a2; std::allocator_traits<std::allocator<quasar::RegexReplacementRule>>::destroy[abi:ne200100]<quasar::RegexReplacementRule,0>(result, i))
  {
    i -= 11;
  }

  *(result + 8) = a2;
}

void std::allocator_traits<std::allocator<quasar::RegexReplacementRule>>::destroy[abi:ne200100]<quasar::RegexReplacementRule,0>(int a1, std::locale *this)
{
  if (SHIBYTE(this[10].__locale_) < 0)
  {
    operator delete(this[8].__locale_);
  }

  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x1B8C850B0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5340]);
  return this;
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, char *a2, int a3)
{
  v6 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v6[1].__loc_.__locale_) = a3;
  *(&v6[1].__loc_.__locale_ + 4) = 0u;
  *(&v6[1].__col_ + 4) = 0u;
  HIDWORD(v6[2].__ct_) = 0;
  v7 = strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v7]);
}

void sub_1B5121058(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1B512199C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x1B8C85350);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            marked_count = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 1, this->__marked_count_);
            this->__marked_count_ += marked_count;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            v13 = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 0, this->__marked_count_);
            this->__marked_count_ += v13;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

LABEL_31:
            v3 = v12 + 1;
            std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v18.__traits_.__loc_);
            return v3;
          }
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v16);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        p_open_count = &this->__open_count_;
        ++this->__open_count_;
        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
LABEL_25:
          --*p_open_count;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(this, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a1, a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v10, v23, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F2CFEB68;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F2CFEB68;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_1F2CFEBB0;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F2CFEBB0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F2CFEBB0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1B8C85350);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(&v22, 0, 17);
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v18.first = *(a2 + 24);
  v18.second = v18.first;
  v18.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v18);
  v19 = v5;
  v20 = v5;
  v21 = 0;
  v22 = v18;
  v24 = v5;
  v23 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * v10;
    *v15 = v14->std::pair<const wchar_t *, const wchar_t *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
    ++v10;
  }

  while (v9 > v12++);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_1B5123044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<char const*>::__init(std::match_results<const wchar_t *> *this, unsigned int __s, const __int32 *__f, const __int32 *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const __int32 *a2, const __int32 *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100](&v41, (v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_1B5123430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::wcsub_match> *this, std::vector<std::wcsub_match>::size_type __n, std::vector<std::wcsub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const wchar_t *, const wchar_t *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const wchar_t *, const wchar_t *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const wchar_t *, const wchar_t *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const wchar_t *, const wchar_t *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::__state<char>>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::wcsub_match> *this, std::vector<std::wcsub_match>::size_type __sz, std::vector<std::wcsub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const wchar_t *>> *this, std::vector<std::pair<unsigned long, const wchar_t *>>::size_type __sz)
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
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = a1[1];
  v11 = 96 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_1B51239EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 16);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      v9 = *(v7 + 80);
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, v5);
      v5 += 12;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator<std::__state<char>>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 12;
      std::allocator<std::__state<char>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<std::__state<char>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::__state<char>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::__state<char>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100](v4, (i - 96));
  }
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::wcsub_match> *this, std::vector<std::wcsub_match>::size_type __n, std::vector<std::wcsub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        v13 = __x->std::pair<const wchar_t *, const wchar_t *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const wchar_t *, const wchar_t *> = v13;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v8 = v7 + __n;
    if (v7 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v10);
    }

    v14 = 24 * __n;
    v15 = 24 * v7;
    do
    {
      v16 = __x->std::pair<const wchar_t *, const wchar_t *>;
      *(v15 + 16) = *&__x->matched;
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    begin = this->__begin_;
    v18 = this->__end_;
    v19 = (24 * v7 + this->__begin_ - v18);
    if (v18 != this->__begin_)
    {
      v20 = (24 * v7 + this->__begin_ - v18);
      do
      {
        v21 = begin->std::pair<const wchar_t *, const wchar_t *>;
        *(v20 + 2) = *&begin->matched;
        *v20 = v21;
        v20 += 24;
        ++begin;
      }

      while (begin != v18);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = (24 * v7 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const wchar_t *>> *this, std::vector<std::pair<unsigned long, const wchar_t *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * __n);
    v11 = &v10[16 * __n];
    v12 = this->__end_ - this->__begin_;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], this->__begin_, v12);
    begin = this->__begin_;
    this->__begin_ = v13;
    this->__end_ = v11;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5123FF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B512406C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      if (++v3 != a3)
      {
        while (1)
        {
          v6 = *v3;
          if ((v6 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_14;
          }

          v5 = v6 + 10 * v5 - 48;
          if (++v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      if (v5 > a1->__marked_count_)
      {
LABEL_14:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!this)
        {
          v10 = 13;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v10 = 9;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_72;
        }

        v11 = a2[1];
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38 && (v11 | 0x20u) - 97 >= 6)
        {
          goto LABEL_72;
        }

        v4 = (a2 + 2);
        if (a2 + 2 == a3)
        {
          goto LABEL_72;
        }

        v12 = *v4;
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v13 = -87;
        }

        v6 = 16 * (v13 + v12);
LABEL_39:
        if (v4 + 1 == a3)
        {
          goto LABEL_72;
        }

        v14 = v4[1];
        v15 = -48;
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          v14 |= 0x20u;
          if ((v14 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v15 = -87;
        }

        if (v4 + 2 != a3)
        {
          v16 = v4[2];
          v17 = -48;
          if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
          {
LABEL_49:
            v18 = v17 + v16 + 16 * (v15 + v6 + v14);
            if (this)
            {
              std::string::operator=(this, v18);
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
            }

            v4 += 3;
            return v4;
          }

          v16 |= 0x20u;
          if ((v16 - 97) < 6)
          {
            v17 = -87;
            goto LABEL_49;
          }
        }

LABEL_72:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_39;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v10 = *a2;
        if (this)
        {
          v9 = this;
          goto LABEL_68;
        }

LABEL_69:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v10);
        return ++v4;
      }

      if (!this)
      {
        v10 = 11;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 11;
    }

LABEL_68:
    std::string::operator=(v9, v10);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        v10 = 12;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v10 = 10;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 10;
    }

    goto LABEL_68;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      v10 = 0;
      goto LABEL_69;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_68;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_72;
    }

    goto LABEL_64;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_72;
  }

  v8 = v7 & 0x1F;
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
}