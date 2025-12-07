void sub_29758CF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  v28 = *(v26 - 208);
  if (v28)
  {
    *(v26 - 200) = v28;
    operator delete(v28);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a11);
  std::vector<std::string>::~vector[abi:ne200100](&a14);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL16sGetOsLogContextv_block_invoke_3()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "util");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

const void **ctu::cf::CFSharedRef<__CFReadStream>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string **std::vector<std::string>::vector[abi:ne200100](std::string **a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4 - v3);
    *a1 = v6;
    a1[1] = v6;
    a1[2] = (v6 + v5);
    v9 = v6;
    do
    {
      while ((v3[23] & 0x80000000) == 0)
      {
        v7 = *v3;
        v6->__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&v6->__r_.__value_.__l.__data_ = v7;
        ++v6;
        v3 += 24;
        v9 = v6;
        if (v3 == v4)
        {
          goto LABEL_7;
        }
      }

      std::string::__init_copy_ctor_external(v6, *v3, *(v3 + 1));
      v3 += 24;
      v6 = ++v9;
    }

    while (v3 != v4);
LABEL_7:
    a1[1] = v6;
  }

  return a1;
}

void sub_29758D1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v10 + 8) = v11;
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
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
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
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

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x29C271A60](a1 + 2);

  return std::istream::~istream();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  __s2 = &a2[-2].n128_u64[1];
  v272 = a2;
  v261 = &a2[-5].n128_u64[1];
  v262 = &a2[-3];
  k = a1;
  while (1)
  {
    a1 = k;
    v9 = a2 - k;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - k) >> 3);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, &a1[1].n128_i64[1], __s2).n128_u64[0];
          return result;
        case 4:

          result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, &a1[1].n128_i64[1], &a1[3], __s2).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, &a1[1].n128_i64[1], &a1[3], &a1[4].n128_i64[1], __s2).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v116 = (a2 - 24);
        v117 = a2[-1].n128_i8[15];
        if (v117 >= 0)
        {
          v118 = &a2[-2].n128_i8[8];
        }

        else
        {
          v118 = a2[-2].n128_u64[1];
        }

        if (v117 >= 0)
        {
          v119 = a2[-1].n128_u8[15];
        }

        else
        {
          v119 = a2[-1].n128_u64[0];
        }

        v120 = a1[1].n128_i8[7];
        v121 = a1->n128_u64[0];
        v122 = a1->n128_u64[1];
        if (v120 >= 0)
        {
          v123 = a1;
        }

        else
        {
          v123 = a1->n128_u64[0];
        }

        if (v120 >= 0)
        {
          v124 = a1[1].n128_u8[7];
        }

        else
        {
          v124 = a1->n128_u64[1];
        }

        if (v124 >= v119)
        {
          v125 = v119;
        }

        else
        {
          v125 = v124;
        }

        v126 = memcmp(v118, v123, v125);
        if (v126)
        {
          if (v126 < 0)
          {
            return result;
          }
        }

        else if (v119 <= v124)
        {
          return result;
        }

        v259 = a1[1].n128_u64[0];
        v260 = a2[-1].n128_u64[1];
        result = *v116;
        *a1 = *v116;
        a1[1].n128_u64[0] = v260;
        a2[-2].n128_u64[1] = v121;
        a2[-1].n128_u64[0] = v122;
        a2[-1].n128_u64[1] = v259;
        return result;
      }
    }

    if (v9 <= 575)
    {
      if (a4)
      {
        if (a1 == a2)
        {
          return result;
        }

        v127 = (a1 + 24);
        if (&a1[1].n128_i8[8] == a2)
        {
          return result;
        }

        v128 = 0;
        v129 = a1;
        while (2)
        {
          v131 = v129;
          v129 = v127;
          v132 = v131[2].n128_i8[15];
          if (v132 >= 0)
          {
            v133 = v127;
          }

          else
          {
            v133 = v131[1].n128_u64[1];
          }

          if (v132 >= 0)
          {
            v134 = v131[2].n128_u8[15];
          }

          else
          {
            v134 = v131[2].n128_u64[0];
          }

          v135 = v131[1].n128_i8[7];
          if (v135 >= 0)
          {
            v136 = v131;
          }

          else
          {
            v136 = v131->n128_u64[0];
          }

          if (v135 >= 0)
          {
            v137 = v131[1].n128_u8[7];
          }

          else
          {
            v137 = v131->n128_u64[1];
          }

          if (v137 >= v134)
          {
            v138 = v134;
          }

          else
          {
            v138 = v137;
          }

          v139 = memcmp(v133, v136, v138);
          if (v139)
          {
            if (v139 < 0)
            {
LABEL_269:
              v127 = (v129 + 24);
              v128 += 24;
              if (&v129[1].n128_i8[8] == v272)
              {
                return result;
              }

              continue;
            }
          }

          else if (v134 <= v137)
          {
            goto LABEL_269;
          }

          break;
        }

        v140 = *v129;
        v275 = v129[1].n128_i64[0];
        v274 = v140;
        if (v275 >= 0)
        {
          v141 = &v274;
        }

        else
        {
          v141 = v140.n128_u64[0];
        }

        if (v275 >= 0)
        {
          v142 = HIBYTE(v275);
        }

        else
        {
          v142 = v140.n128_u64[1];
        }

        v129[1].n128_u64[0] = v131[1].n128_u64[0];
        *v129 = *v131;
        v131[1].n128_u8[7] = 0;
        v131->n128_u8[0] = 0;
        v130 = a1;
        if (v131 != a1)
        {
          v143 = v128;
          while (1)
          {
            v144 = (a1 + v143);
            v145 = a1->n128_i8[v143 - 1];
            if (v145 >= 0)
            {
              v146 = &a1[-1] + v143 - 8;
            }

            else
            {
              v146 = *(&a1[-1] + v143 - 8);
            }

            if (v145 >= 0)
            {
              v147 = a1->n128_u8[v143 - 1];
            }

            else
            {
              v147 = *(a1[-1].n128_u64 + v143);
            }

            if (v147 >= v142)
            {
              v148 = v142;
            }

            else
            {
              v148 = v147;
            }

            v149 = memcmp(v141, v146, v148);
            if (v149)
            {
              if (v149 < 0)
              {
                v130 = (a1 + v143);
                break;
              }
            }

            else if (v142 <= v147)
            {
              v130 = v131;
              break;
            }

            v131 = (v131 - 24);
            *v144 = *(a1 + v143 - 24);
            v144[1].n128_u64[0] = *(&a1->n128_u64[-1] + v143);
            v144[-1].n128_u8[15] = 0;
            v144[-2].n128_u8[8] = 0;
            v143 -= 24;
            if (!v143)
            {
              v130 = a1;
              break;
            }
          }
        }

        result = v274;
        v130[1].n128_u64[0] = v275;
        *v130 = result;
        goto LABEL_269;
      }

      if (a1 == a2)
      {
        return result;
      }

      v240 = (a1 + 24);
      if (&a1[1].n128_i8[8] == a2)
      {
        return result;
      }

LABEL_483:
      v241 = a1;
      a1 = v240;
      v242 = v241[2].n128_i8[15];
      if (v242 >= 0)
      {
        v243 = v240;
      }

      else
      {
        v243 = v241[1].n128_u64[1];
      }

      if (v242 >= 0)
      {
        v244 = v241[2].n128_u8[15];
      }

      else
      {
        v244 = v241[2].n128_u64[0];
      }

      v245 = v241[1].n128_i8[7];
      if (v245 >= 0)
      {
        v246 = v241;
      }

      else
      {
        v246 = v241->n128_u64[0];
      }

      if (v245 >= 0)
      {
        v247 = v241[1].n128_u8[7];
      }

      else
      {
        v247 = v241->n128_u64[1];
      }

      if (v247 >= v244)
      {
        v248 = v244;
      }

      else
      {
        v248 = v247;
      }

      v249 = memcmp(v243, v246, v248);
      if (v249)
      {
        if (v249 < 0)
        {
          goto LABEL_482;
        }
      }

      else if (v244 <= v247)
      {
        goto LABEL_482;
      }

      v250 = *a1;
      v275 = a1[1].n128_i64[0];
      v274 = v250;
      a1->n128_u64[1] = 0;
      a1[1].n128_u64[0] = 0;
      a1->n128_u64[0] = 0;
      if (v275 >= 0)
      {
        v251 = &v274;
      }

      else
      {
        v251 = v274.n128_u64[0];
      }

      if (v275 >= 0)
      {
        v252 = HIBYTE(v275);
      }

      else
      {
        v252 = v274.n128_u64[1];
      }

      for (i = a1; ; i = (i - 24))
      {
        *i = *(i - 24);
        i[1].n128_u64[0] = i[-1].n128_u64[1];
        i[-1].n128_u8[15] = 0;
        i[-2].n128_u8[8] = 0;
        v254 = i[-2].n128_i8[7];
        if (v254 >= 0)
        {
          v255 = i - 3;
        }

        else
        {
          v255 = i[-3].n128_u64[0];
        }

        if (v254 >= 0)
        {
          v256 = i[-2].n128_u8[7];
        }

        else
        {
          v256 = i[-3].n128_u64[1];
        }

        if (v256 >= v252)
        {
          v257 = v252;
        }

        else
        {
          v257 = v256;
        }

        v258 = memcmp(v251, v255, v257);
        if (v258)
        {
          if (v258 < 0)
          {
LABEL_481:
            result = v274;
            i[-1].n128_u64[1] = v275;
            *(i - 24) = result;
LABEL_482:
            v240 = (a1 + 24);
            if (&a1[1].n128_i8[8] == a2)
            {
              return result;
            }

            goto LABEL_483;
          }
        }

        else if (v252 <= v256)
        {
          goto LABEL_481;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v11 = v10 >> 1;
    v12 = a1 + 24 * (v10 >> 1);
    if (v9 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(v12, a1, __s2);
      v266 = a3 - 1;
      if ((a4 & 1) == 0)
      {
LABEL_15:
        v17 = a1[-1].n128_i8[15];
        if (v17 >= 0)
        {
          v18 = &a1[-2].n128_i8[8];
        }

        else
        {
          v18 = a1[-2].n128_u64[1];
        }

        if (v17 >= 0)
        {
          v19 = a1[-1].n128_u8[15];
        }

        else
        {
          v19 = a1[-1].n128_u64[0];
        }

        v20 = a1[1].n128_i8[7];
        if (v20 >= 0)
        {
          v21 = a1;
        }

        else
        {
          v21 = a1->n128_u64[0];
        }

        if (v20 >= 0)
        {
          v22 = a1[1].n128_u8[7];
        }

        else
        {
          v22 = a1->n128_u64[1];
        }

        if (v22 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v22;
        }

        v24 = memcmp(v18, v21, v23);
        if (v24)
        {
          if (v24 < 0)
          {
            goto LABEL_129;
          }
        }

        else if (v19 <= v22)
        {
LABEL_129:
          v69 = *a1;
          v275 = a1[1].n128_i64[0];
          v274 = v69;
          a1->n128_u64[1] = 0;
          a1[1].n128_u64[0] = 0;
          a1->n128_u64[0] = 0;
          v70 = a2;
          if (v275 >= 0)
          {
            v71 = &v274;
          }

          else
          {
            v71 = v274.n128_u64[0];
          }

          if (v275 >= 0)
          {
            v72 = HIBYTE(v275);
          }

          else
          {
            v72 = v274.n128_u64[1];
          }

          v73 = v70[-1].n128_u8[15];
          v75 = v70[-2].n128_u64[1];
          v74 = v70[-1].n128_u64[0];
          if ((v73 & 0x80u) == 0)
          {
            v76 = __s2;
          }

          else
          {
            v76 = v70[-2].n128_u64[1];
          }

          if ((v73 & 0x80u) == 0)
          {
            v77 = v70[-1].n128_u8[15];
          }

          else
          {
            v77 = v70[-1].n128_u64[0];
          }

          if (v77 >= v72)
          {
            v78 = v72;
          }

          else
          {
            v78 = v77;
          }

          v79 = memcmp(v71, v76, v78);
          if (v79)
          {
            if ((v79 & 0x80000000) == 0)
            {
LABEL_146:
              v80 = (a1 + 24);
              do
              {
                while (1)
                {
                  k = v80;
                  v81 = v80[1].n128_u8[7];
                  v82 = (v81 & 0x80u) == 0 ? k : k->n128_u64[0];
                  v83 = (v81 & 0x80u) == 0 ? v81 : k->n128_u64[1];
                  v84 = v83 >= v72 ? v72 : v83;
                  v85 = memcmp(v71, v82, v84);
                  v80 = (k + 24);
                  if (v85)
                  {
                    break;
                  }

                  if (v72 > v83)
                  {
                    goto LABEL_159;
                  }
                }
              }

              while (v85 < 0);
LABEL_159:
              j = v272;
              if (k < v272)
              {
                for (j = __s2; ; v74 = j->n128_u64[1])
                {
                  if ((v73 & 0x80u) == 0)
                  {
                    v88 = j;
                  }

                  else
                  {
                    v88 = v75;
                  }

                  if ((v73 & 0x80u) == 0)
                  {
                    v89 = v73;
                  }

                  else
                  {
                    v89 = v74;
                  }

                  if (v89 >= v72)
                  {
                    v90 = v72;
                  }

                  else
                  {
                    v90 = v89;
                  }

                  v91 = memcmp(v71, v88, v90);
                  if (v91)
                  {
                    if (v91 < 0)
                    {
                      break;
                    }
                  }

                  else if (v72 <= v89)
                  {
                    break;
                  }

                  v87 = j[-2].n128_u64[1];
                  j = (j - 24);
                  v75 = v87;
                  v73 = j[1].n128_u8[7];
                }
              }

              if (k < j)
              {
                v92 = k->n128_u64[0];
                do
                {
                  v93 = *(k + 8);
                  v94 = *j;
                  k[1].n128_u64[0] = j[1].n128_u64[0];
                  *k = v94;
                  j->n128_u64[0] = v92;
                  *(j + 8) = v93;
                  if (v275 >= 0)
                  {
                    v95 = &v274;
                  }

                  else
                  {
                    v95 = v274.n128_u64[0];
                  }

                  if (v275 >= 0)
                  {
                    v96 = HIBYTE(v275);
                  }

                  else
                  {
                    v96 = v274.n128_u64[1];
                  }

                  v97 = (k + 24);
                  do
                  {
                    while (1)
                    {
                      k = v97;
                      v98 = v97[1].n128_u8[7];
                      v92 = k->n128_u64[0];
                      v99 = (v98 & 0x80u) == 0 ? k : k->n128_u64[0];
                      v100 = (v98 & 0x80u) == 0 ? v98 : k->n128_u64[1];
                      v101 = v100 >= v96 ? v96 : v100;
                      v102 = memcmp(v95, v99, v101);
                      v97 = (k + 24);
                      if (v102)
                      {
                        break;
                      }

                      if (v96 > v100)
                      {
                        goto LABEL_196;
                      }
                    }
                  }

                  while (v102 < 0);
LABEL_196:
                  v103 = (j - 24);
                  do
                  {
                    while (1)
                    {
                      j = v103;
                      v104 = v103[1].n128_u8[7];
                      v105 = (v104 & 0x80u) == 0 ? j : j->n128_u64[0];
                      v106 = (v104 & 0x80u) == 0 ? v104 : j->n128_u64[1];
                      v107 = v106 >= v96 ? v96 : v106;
                      v108 = memcmp(v95, v105, v107);
                      v103 = (j - 24);
                      if (v108)
                      {
                        break;
                      }

                      if (v96 <= v106)
                      {
                        goto LABEL_176;
                      }
                    }
                  }

                  while ((v108 & 0x80000000) == 0);
LABEL_176:
                  ;
                }

                while (k < j);
              }

              v109 = &k[-2].n128_u64[1];
              if (&k[-2].n128_i8[8] == a1)
              {
                a2 = v272;
                a3 = v266;
                if (k[-1].n128_i8[15] < 0)
                {
                  operator delete(*v109);
                }
              }

              else
              {
                a2 = v272;
                a3 = v266;
                if (a1[1].n128_i8[7] < 0)
                {
                  operator delete(a1->n128_u64[0]);
                }

                v110 = *v109;
                a1[1].n128_u64[0] = k[-1].n128_u64[1];
                *a1 = v110;
                k[-1].n128_u8[15] = 0;
                k[-2].n128_u8[8] = 0;
              }

              a4 = 0;
              result = v274;
              k[-1].n128_u64[1] = v275;
              *v109 = result;
              continue;
            }
          }

          else if (v72 > v77)
          {
            goto LABEL_146;
          }

          for (k = (a1 + 24); k < v272; k = (k + 24))
          {
            v111 = k[1].n128_i8[7];
            if (v111 >= 0)
            {
              v112 = k;
            }

            else
            {
              v112 = k->n128_u64[0];
            }

            if (v111 >= 0)
            {
              v113 = k[1].n128_u8[7];
            }

            else
            {
              v113 = k->n128_u64[1];
            }

            if (v113 >= v72)
            {
              v114 = v72;
            }

            else
            {
              v114 = v113;
            }

            v115 = memcmp(v71, v112, v114);
            if (v115)
            {
              if ((v115 & 0x80000000) == 0)
              {
                goto LABEL_159;
              }
            }

            else if (v72 > v113)
            {
              goto LABEL_159;
            }
          }

          goto LABEL_159;
        }
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, v12, __s2);
      v13 = 3 * v11;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(&a1[1].n128_i64[1], &a1[-1] + v13 * 8 - 8, v262);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(&a1[3], &a1[1].n128_i64[v13 + 1], v261);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(&a1[-1] + v13 * 8 - 8, v12, &a1[1].n128_u64[v13 + 1]);
      v14 = a1->n128_u64[0];
      v15 = *(a1 + 8);
      v16 = *v12;
      a1[1].n128_u64[0] = *(v12 + 2);
      *a1 = v16;
      *v12 = v14;
      *(v12 + 8) = v15;
      v266 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v25 = 0;
    v26 = *a1;
    v275 = a1[1].n128_i64[0];
    v274 = v26;
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    a1->n128_u64[0] = 0;
    if (v275 >= 0)
    {
      v27 = &v274;
    }

    else
    {
      v27 = v274.n128_u64[0];
    }

    if (v275 >= 0)
    {
      v28 = HIBYTE(v275);
    }

    else
    {
      v28 = v274.n128_u64[1];
    }

    while (1)
    {
      v29 = a1[1].n128_u64[v25 / 8 + 1];
      v30 = a1[2].n128_i8[v25 + 15];
      v31 = v30 >= 0 ? &a1[1].n128_i8[v25 + 8] : a1[1].n128_u64[v25 / 8 + 1];
      v32 = v30 >= 0 ? a1[2].n128_u8[v25 + 15] : a1[2].n128_u64[v25 / 8];
      v33 = v28 >= v32 ? v32 : v28;
      v34 = memcmp(v31, v27, v33);
      if (v34)
      {
        break;
      }

      if (v32 <= v28)
      {
        goto LABEL_51;
      }

LABEL_39:
      v25 += 24;
    }

    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_51:
    v35 = (a1 + v25 + 24);
    v36 = __s2;
    if (v25)
    {
      do
      {
        while (1)
        {
          v37 = v36;
          v44 = *(v36 + 23);
          v45 = (v44 & 0x80u) == 0 ? v37 : v37->n128_u64[0];
          v46 = (v44 & 0x80u) == 0 ? v44 : v37->n128_u64[1];
          v47 = v28 >= v46 ? v46 : v28;
          v48 = memcmp(v45, v27, v47);
          v36 = &v37[-2].n128_u64[1];
          if (v48)
          {
            break;
          }

          if (v46 > v28)
          {
            goto LABEL_82;
          }
        }
      }

      while (v48 < 0);
    }

    else
    {
      v37 = v272;
      if (v35 < v272)
      {
        v38 = __s2;
        do
        {
          while (1)
          {
            v37 = v38;
            v39 = *(v38 + 23);
            v40 = (v39 & 0x80u) == 0 ? v37 : v37->n128_u64[0];
            v41 = (v39 & 0x80u) == 0 ? v39 : v37->n128_u64[1];
            v42 = v28 >= v41 ? v41 : v28;
            v43 = memcmp(v40, v27, v42);
            v38 = &v37[-2].n128_u64[1];
            if (!v43)
            {
              break;
            }

            if (v35 >= v37 || (v43 & 0x80000000) == 0)
            {
              goto LABEL_82;
            }
          }
        }

        while (v35 < v37 && v41 <= v28);
      }
    }

LABEL_82:
    k = v35;
    if (v35 < v37)
    {
      v49 = v37;
      do
      {
        v50 = *(k + 8);
        v51 = *v49;
        k[1].n128_u64[0] = v49[1].n128_u64[0];
        *k = v51;
        v49->n128_u64[0] = v29;
        *(v49 + 8) = v50;
        if (v275 >= 0)
        {
          v52 = &v274;
        }

        else
        {
          v52 = v274.n128_u64[0];
        }

        if (v275 >= 0)
        {
          v53 = HIBYTE(v275);
        }

        else
        {
          v53 = v274.n128_u64[1];
        }

        v54 = (k + 24);
        do
        {
          while (1)
          {
            k = v54;
            v55 = v54[1].n128_u8[7];
            v29 = k->n128_u64[0];
            v56 = (v55 & 0x80u) == 0 ? k : k->n128_u64[0];
            v57 = (v55 & 0x80u) == 0 ? v55 : k->n128_u64[1];
            v58 = v53 >= v57 ? v57 : v53;
            v59 = memcmp(v56, v52, v58);
            v54 = (k + 24);
            if (v59)
            {
              break;
            }

            if (v57 <= v53)
            {
              goto LABEL_104;
            }
          }
        }

        while ((v59 & 0x80000000) == 0);
LABEL_104:
        v60 = (v49 - 24);
        do
        {
          while (1)
          {
            v49 = v60;
            v61 = v60[1].n128_u8[7];
            v62 = (v61 & 0x80u) == 0 ? v49 : v49->n128_u64[0];
            v63 = (v61 & 0x80u) == 0 ? v61 : v49->n128_u64[1];
            v64 = v53 >= v63 ? v63 : v53;
            v65 = memcmp(v62, v52, v64);
            v60 = (v49 - 24);
            if (v65)
            {
              break;
            }

            if (v63 > v53)
            {
              goto LABEL_84;
            }
          }
        }

        while (v65 < 0);
LABEL_84:
        ;
      }

      while (k < v49);
    }

    v66 = (k - 24);
    if (&k[-2].n128_i8[8] == a1)
    {
      a2 = v272;
      a3 = v266;
      if (k[-1].n128_i8[15] < 0)
      {
        operator delete(a1->n128_u64[0]);
      }
    }

    else
    {
      a2 = v272;
      a3 = v266;
      if (a1[1].n128_i8[7] < 0)
      {
        operator delete(a1->n128_u64[0]);
      }

      v67 = *v66;
      a1[1].n128_u64[0] = k[-1].n128_u64[1];
      *a1 = v67;
      k[-1].n128_u8[15] = 0;
      k[-2].n128_u8[8] = 0;
    }

    result = v274;
    k[-1].n128_u64[1] = v275;
    *v66 = result;
    if (v35 < v37)
    {
LABEL_127:
      result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(a1, (k - 24), a3, a4 & 1, result).n128_u64[0];
      a4 = 0;
    }

    else
    {
      v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(a1, &k[-2].n128_u64[1]);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(k, a2))
      {
        a2 = (k - 24);
        if (v68)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v68)
      {
        goto LABEL_127;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  v150 = (v10 - 2) >> 1;
  v151 = v150;
  v263 = v9;
  while (2)
  {
    v153 = v151;
    if (v150 >= v151)
    {
      v154 = (2 * v151) | 1;
      v155 = a1 + 24 * v154;
      v156 = 2 * v151 + 2;
      if (v156 >= v10)
      {
        goto LABEL_340;
      }

      v157 = (v155 + 24);
      v158 = v155[23];
      if (v158 >= 0)
      {
        v159 = a1 + 24 * v154;
      }

      else
      {
        v159 = *v155;
      }

      if (v158 >= 0)
      {
        v160 = v155[23];
      }

      else
      {
        v160 = *(v155 + 1);
      }

      v161 = v155[47];
      if (v161 >= 0)
      {
        v162 = v155 + 24;
      }

      else
      {
        v162 = *(v155 + 3);
      }

      if (v161 >= 0)
      {
        v163 = v155[47];
      }

      else
      {
        v163 = *(v155 + 4);
      }

      if (v163 >= v160)
      {
        v164 = v160;
      }

      else
      {
        v164 = v163;
      }

      v165 = memcmp(v159, v162, v164);
      if (v165)
      {
        a2 = v272;
        if (v165 < 0)
        {
LABEL_340:
          v157 = &a1->n128_u64[3 * v154];
          v156 = (2 * v153) | 1;
        }
      }

      else
      {
        v166 = v160 >= v163;
        if (v160 == v163)
        {
          v157 = &a1->n128_u64[3 * v154];
          v156 = (2 * v153) | 1;
          a2 = v272;
        }

        else
        {
          a2 = v272;
          if (!v166)
          {
            goto LABEL_340;
          }
        }
      }

      v267 = v153;
      v167 = a1 + 24 * v153;
      v168 = *(v157 + 23);
      if (v168 >= 0)
      {
        v169 = v157;
      }

      else
      {
        v169 = *v157;
      }

      if (v168 >= 0)
      {
        v170 = *(v157 + 23);
      }

      else
      {
        v170 = v157[1];
      }

      v171 = v167[23];
      if (v171 >= 0)
      {
        v172 = a1 + 24 * v153;
      }

      else
      {
        v172 = *v167;
      }

      if (v171 >= 0)
      {
        v173 = v167[23];
      }

      else
      {
        v173 = *(v167 + 1);
      }

      if (v173 >= v170)
      {
        v174 = v170;
      }

      else
      {
        v174 = v173;
      }

      v175 = memcmp(v169, v172, v174);
      if (v175)
      {
        if (v175 < 0)
        {
LABEL_360:
          v176 = *v167;
          v275 = *(v167 + 2);
          v274 = v176;
          *(v167 + 1) = 0;
          *(v167 + 2) = 0;
          *v167 = 0;
          v177 = *v157;
          *(v167 + 2) = v157[2];
          *v167 = v177;
          *(v157 + 23) = 0;
          *v157 = 0;
          if (v150 >= v156)
          {
            v178 = &v274;
            if (v275 < 0)
            {
              v178 = v274.n128_u64[0];
            }

            __s2a = v178;
            if (v275 >= 0)
            {
              v179 = HIBYTE(v275);
            }

            else
            {
              v179 = v274.n128_u64[1];
            }

            while (1)
            {
              v181 = (2 * v156) | 1;
              v182 = a1 + 24 * v181;
              v156 = 2 * v156 + 2;
              if (v156 >= v10)
              {
                goto LABEL_390;
              }

              v152 = (v182 + 24);
              v183 = v182[23];
              v184 = v183 >= 0 ? (a1 + 24 * v181) : *v182;
              v185 = v183 >= 0 ? v182[23] : *(v182 + 1);
              v186 = v182[47];
              v187 = v186 >= 0 ? v182 + 24 : *(v182 + 3);
              v188 = v186 >= 0 ? v182[47] : *(v182 + 4);
              v189 = v188 >= v185 ? v185 : v188;
              v190 = memcmp(v184, v187, v189);
              if (v190)
              {
                break;
              }

              v191 = v185 >= v188;
              if (v185 == v188)
              {
                v152 = &a1->n128_u64[3 * v181];
                v156 = v181;
                a2 = v272;
                v150 = (v10 - 2) >> 1;
                goto LABEL_391;
              }

              a2 = v272;
              v150 = (v10 - 2) >> 1;
              if (!v191)
              {
                goto LABEL_390;
              }

LABEL_391:
              v192 = *(v152 + 23);
              if (v192 >= 0)
              {
                v193 = v152;
              }

              else
              {
                v193 = *v152;
              }

              if (v192 >= 0)
              {
                v194 = *(v152 + 23);
              }

              else
              {
                v194 = v152[1];
              }

              if (v179 >= v194)
              {
                v195 = v194;
              }

              else
              {
                v195 = v179;
              }

              v196 = memcmp(v193, __s2a, v195);
              if (v196)
              {
                if ((v196 & 0x80000000) == 0)
                {
                  goto LABEL_314;
                }
              }

              else if (v194 > v179)
              {
                goto LABEL_314;
              }

              v180 = *v152;
              v157[2] = v152[2];
              *v157 = v180;
              *(v152 + 23) = 0;
              *v152 = 0;
              v157 = v152;
              if (v150 < v156)
              {
                goto LABEL_315;
              }
            }

            a2 = v272;
            v150 = (v10 - 2) >> 1;
            if ((v190 & 0x80000000) == 0)
            {
              goto LABEL_391;
            }

LABEL_390:
            v152 = &a1->n128_u64[3 * v181];
            v156 = v181;
            goto LABEL_391;
          }

LABEL_314:
          v152 = v157;
LABEL_315:
          result = v274;
          v152[2] = v275;
          *v152 = result;
          v153 = v267;
        }
      }

      else if (v170 <= v173)
      {
        goto LABEL_360;
      }
    }

    v151 = v153 - 1;
    if (v153)
    {
      continue;
    }

    break;
  }

  v197 = 0xAAAAAAAAAAAAAAABLL * (v263 >> 3);
  do
  {
    if (v197 < 2)
    {
      goto LABEL_405;
    }

    v199 = 0;
    __s2b = a1->n128_u64[0];
    v273 = a2;
    v265 = a1[1].n128_u64[0];
    v268 = a1->n128_u64[1];
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    v200 = a1;
    a1->n128_u64[0] = 0;
    do
    {
      v202 = v200 + 24 * v199;
      v201 = (v202 + 24);
      v203 = 2 * v199;
      v199 = (2 * v199) | 1;
      v204 = v203 + 2;
      if (v203 + 2 < v197)
      {
        v207 = *(v202 + 6);
        v206 = (v202 + 48);
        v205 = v207;
        v208 = v206[-1].n128_i8[15];
        if (v208 >= 0)
        {
          v209 = v201;
        }

        else
        {
          v209 = v206[-2].n128_u64[1];
        }

        if (v208 >= 0)
        {
          v210 = v206[-1].n128_u8[15];
        }

        else
        {
          v210 = v206[-1].n128_u64[0];
        }

        v211 = v206[1].n128_i8[7];
        if (v211 >= 0)
        {
          v212 = v206;
        }

        else
        {
          v212 = v205;
        }

        if (v211 >= 0)
        {
          v213 = v206[1].n128_u8[7];
        }

        else
        {
          v213 = v206->n128_u64[1];
        }

        if (v213 >= v210)
        {
          v214 = v210;
        }

        else
        {
          v214 = v213;
        }

        v215 = memcmp(v209, v212, v214);
        if (v215)
        {
          if ((v215 & 0x80000000) == 0)
          {
            goto LABEL_409;
          }
        }

        else if (v210 > v213)
        {
LABEL_409:
          v201 = v206;
          v199 = v204;
        }
      }

      if (v200[1].n128_i8[7] < 0)
      {
        operator delete(v200->n128_u64[0]);
      }

      result = *v201;
      v200[1].n128_u64[0] = v201[1].n128_u64[0];
      *v200 = result;
      v201[1].n128_u8[7] = 0;
      v201->n128_u8[0] = 0;
      v200 = v201;
    }

    while (v199 <= ((v197 - 2) >> 1));
    if (v201 == &a2[-2].n128_i8[8])
    {
      v201->n128_u64[0] = __s2b;
      v201->n128_u64[1] = v268;
      v201[1].n128_u64[0] = v265;
      goto LABEL_405;
    }

    result = *(a2 - 24);
    v201[1].n128_u64[0] = a2[-1].n128_u64[1];
    *v201 = result;
    a2[-2].n128_u64[1] = __s2b;
    a2[-1].n128_u64[0] = v268;
    a2[-1].n128_u64[1] = v265;
    v216 = v201 - a1 + 24;
    if (v216 >= 25)
    {
      v217 = -2 - 0x5555555555555555 * (v216 >> 3);
      v218 = v217 >> 1;
      v219 = a1 + 24 * (v217 >> 1);
      v220 = v219[23];
      if (v220 >= 0)
      {
        v221 = a1 + 24 * (v217 >> 1);
      }

      else
      {
        v221 = *v219;
      }

      if (v220 >= 0)
      {
        v222 = v219[23];
      }

      else
      {
        v222 = *(v219 + 1);
      }

      v223 = v201[1].n128_i8[7];
      if (v223 >= 0)
      {
        v224 = v201;
      }

      else
      {
        v224 = v201->n128_u64[0];
      }

      if (v223 >= 0)
      {
        v225 = v201[1].n128_u8[7];
      }

      else
      {
        v225 = v201->n128_u64[1];
      }

      if (v225 >= v222)
      {
        v226 = v222;
      }

      else
      {
        v226 = v225;
      }

      v227 = memcmp(v221, v224, v226);
      if (v227)
      {
        if (v227 < 0)
        {
          goto LABEL_405;
        }
      }

      else if (v222 <= v225)
      {
        goto LABEL_405;
      }

      v228 = *v201;
      v275 = v201[1].n128_i64[0];
      v274 = v228;
      v201->n128_u64[1] = 0;
      v201[1].n128_u64[0] = 0;
      v201->n128_u64[0] = 0;
      if (v275 >= 0)
      {
        v229 = &v274;
      }

      else
      {
        v229 = v274.n128_u64[0];
      }

      if (v275 >= 0)
      {
        v230 = HIBYTE(v275);
      }

      else
      {
        v230 = v274.n128_u64[1];
      }

      v231 = *v219;
      v201[1].n128_u64[0] = *(v219 + 2);
      *v201 = v231;
      v219[23] = 0;
      *v219 = 0;
      if (v217 >= 2)
      {
        while (1)
        {
          v233 = v218 - 1;
          v218 = (v218 - 1) >> 1;
          v234 = a1 + 24 * v218;
          v235 = v234[23];
          if (v235 >= 0)
          {
            v236 = a1 + 24 * v218;
          }

          else
          {
            v236 = *v234;
          }

          if (v235 >= 0)
          {
            v237 = v234[23];
          }

          else
          {
            v237 = *(v234 + 1);
          }

          if (v230 >= v237)
          {
            v238 = v237;
          }

          else
          {
            v238 = v230;
          }

          v239 = memcmp(v236, v229, v238);
          if (v239)
          {
            if (v239 < 0)
            {
              break;
            }
          }

          else if (v237 <= v230)
          {
            break;
          }

          v232 = *v234;
          *(v219 + 2) = *(v234 + 2);
          *v219 = v232;
          v234[23] = 0;
          *v234 = 0;
          v219 = a1 + 24 * v218;
          if (v233 <= 1)
          {
            goto LABEL_477;
          }
        }
      }

      v234 = v219;
LABEL_477:
      result = v274;
      *(v234 + 2) = v275;
      *v234 = result;
      a2 = v273;
    }

LABEL_405:
    a2 = (a2 - 24);
  }

  while (v197-- > 2);
  return result;
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 23);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v6 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = *(a1 + 23);
  v13 = *a1;
  v12 = *(a1 + 8);
  if (v11 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v11 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v10 > v15)
  {
LABEL_18:
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = a3[1];
    }

    if (v10 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v10;
    }

    v22 = memcmp(v19, v9, v21);
    if (v22)
    {
      if ((v22 & 0x80000000) == 0)
      {
LABEL_29:
        v23 = *(a1 + 16);
        v24 = a3[2];
        result = *a3;
        *a1 = *a3;
        *(a1 + 16) = v24;
        *a3 = v13;
        a3[1] = v12;
        a3[2] = v23;
        return result;
      }
    }

    else if (v20 > v10)
    {
      goto LABEL_29;
    }

    v31 = *(a1 + 16);
    v32 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v32;
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v31;
    v33 = *(a3 + 23);
    if (v33 >= 0)
    {
      v34 = a3;
    }

    else
    {
      v34 = *a3;
    }

    if (v33 >= 0)
    {
      v35 = *(a3 + 23);
    }

    else
    {
      v35 = a3[1];
    }

    if (v31 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = v13;
    }

    if (v31 >= 0)
    {
      v37 = HIBYTE(v31);
    }

    else
    {
      v37 = v12;
    }

    if (v37 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v37;
    }

    v39 = memcmp(v34, v36, v38);
    if (v39)
    {
      if (v39 < 0)
      {
        return result;
      }
    }

    else if (v35 <= v37)
    {
      return result;
    }

    result = *a3;
    *(a2 + 16) = a3[2];
    *a2 = result;
    *a3 = v13;
    a3[1] = v12;
    a3[2] = v31;
    return result;
  }

  v26 = *(a3 + 23);
  if (v26 >= 0)
  {
    v27 = a3;
  }

  else
  {
    v27 = *a3;
  }

  if (v26 >= 0)
  {
    v28 = *(a3 + 23);
  }

  else
  {
    v28 = a3[1];
  }

  if (v10 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v10;
  }

  v30 = memcmp(v27, v9, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v28 <= v10)
  {
    return result;
  }

  v40 = *(a2 + 16);
  v41 = a3[2];
  *a2 = *a3;
  *(a2 + 16) = v41;
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v40;
  v42 = *(a2 + 23);
  if (v42 >= 0)
  {
    v43 = a2;
  }

  else
  {
    v43 = *a2;
  }

  if (v42 >= 0)
  {
    v44 = *(a2 + 23);
  }

  else
  {
    v44 = *(a2 + 8);
  }

  v45 = *(a1 + 23);
  v46 = *a1;
  v47 = *(a1 + 8);
  if (v45 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v45 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v44)
  {
    v50 = v44;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v43, v48, v50);
  if (!v51)
  {
    if (v44 <= v49)
    {
      return result;
    }

    goto LABEL_84;
  }

  if ((v51 & 0x80000000) == 0)
  {
LABEL_84:
    v52 = *(a1 + 16);
    v53 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v53;
    *a2 = v46;
    *(a2 + 8) = v47;
    *(a2 + 16) = v52;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  v12 = *a3;
  v13 = *(a3 + 8);
  if (v11 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v11 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if (v17 < 0)
    {
      return result;
    }
  }

  else if (v10 <= v15)
  {
    return result;
  }

  v19 = *(a3 + 16);
  v20 = a4[2];
  *a3 = *a4;
  *(a3 + 16) = v20;
  *a4 = v12;
  a4[1] = v13;
  a4[2] = v19;
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = *(a2 + 23);
  v25 = *a2;
  v26 = *(a2 + 8);
  if (v24 >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (v24 >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = *(a2 + 8);
  }

  if (v28 >= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v22, v27, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v23 <= v28)
  {
    return result;
  }

  v31 = *(a2 + 16);
  v32 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v32;
  *a3 = v25;
  *(a3 + 8) = v26;
  *(a3 + 16) = v31;
  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v34 = a2;
  }

  else
  {
    v34 = *a2;
  }

  if (v33 >= 0)
  {
    v35 = *(a2 + 23);
  }

  else
  {
    v35 = *(a2 + 8);
  }

  v36 = *(a1 + 23);
  v37 = *a1;
  v38 = *(a1 + 8);
  if (v36 >= 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = *a1;
  }

  if (v36 >= 0)
  {
    v40 = *(a1 + 23);
  }

  else
  {
    v40 = *(a1 + 8);
  }

  if (v40 >= v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = v40;
  }

  v42 = memcmp(v34, v39, v41);
  if (!v42)
  {
    if (v35 <= v40)
    {
      return result;
    }

LABEL_58:
    v43 = *(a1 + 16);
    v44 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v44;
    *a2 = v37;
    *(a2 + 8) = v38;
    *(a2 + 16) = v43;
    return result;
  }

  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  v14 = *a4;
  v15 = *(a4 + 8);
  if (v13 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (v13 >= 0)
  {
    v17 = *(a4 + 23);
  }

  else
  {
    v17 = *(a4 + 8);
  }

  if (v17 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = memcmp(v11, v16, v18);
  if (v19)
  {
    if (v19 < 0)
    {
      return result;
    }
  }

  else if (v12 <= v17)
  {
    return result;
  }

  v21 = *(a4 + 16);
  v22 = a5[2];
  *a4 = *a5;
  *(a4 + 16) = v22;
  *a5 = v14;
  a5[1] = v15;
  a5[2] = v21;
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  v26 = *(a3 + 23);
  v27 = *a3;
  v28 = *(a3 + 8);
  if (v26 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  if (v26 >= 0)
  {
    v30 = *(a3 + 23);
  }

  else
  {
    v30 = *(a3 + 8);
  }

  if (v30 >= v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = v30;
  }

  v32 = memcmp(v24, v29, v31);
  if (v32)
  {
    if (v32 < 0)
    {
      return result;
    }
  }

  else if (v25 <= v30)
  {
    return result;
  }

  v33 = *(a3 + 16);
  v34 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v34;
  *a4 = v27;
  *(a4 + 8) = v28;
  *(a4 + 16) = v33;
  v35 = *(a3 + 23);
  if (v35 >= 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = *a3;
  }

  if (v35 >= 0)
  {
    v37 = *(a3 + 23);
  }

  else
  {
    v37 = *(a3 + 8);
  }

  v38 = *(a2 + 23);
  v39 = *a2;
  v40 = *(a2 + 8);
  if (v38 >= 0)
  {
    v41 = a2;
  }

  else
  {
    v41 = *a2;
  }

  if (v38 >= 0)
  {
    v42 = *(a2 + 23);
  }

  else
  {
    v42 = *(a2 + 8);
  }

  if (v42 >= v37)
  {
    v43 = v37;
  }

  else
  {
    v43 = v42;
  }

  v44 = memcmp(v36, v41, v43);
  if (v44)
  {
    if (v44 < 0)
    {
      return result;
    }
  }

  else if (v37 <= v42)
  {
    return result;
  }

  v45 = *(a2 + 16);
  v46 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v46;
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v45;
  v47 = *(a2 + 23);
  if (v47 >= 0)
  {
    v48 = a2;
  }

  else
  {
    v48 = *a2;
  }

  if (v47 >= 0)
  {
    v49 = *(a2 + 23);
  }

  else
  {
    v49 = *(a2 + 8);
  }

  v50 = *(a1 + 23);
  v51 = *a1;
  v52 = *(a1 + 8);
  if (v50 >= 0)
  {
    v53 = a1;
  }

  else
  {
    v53 = *a1;
  }

  if (v50 >= 0)
  {
    v54 = *(a1 + 23);
  }

  else
  {
    v54 = *(a1 + 8);
  }

  if (v54 >= v49)
  {
    v55 = v49;
  }

  else
  {
    v55 = v54;
  }

  v56 = memcmp(v48, v53, v55);
  if (v56)
  {
    if (v56 < 0)
    {
      return result;
    }
  }

  else if (v49 <= v54)
  {
    return result;
  }

  v57 = *(a1 + 16);
  v58 = *(a2 + 16);
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = v58;
  *a2 = v51;
  *(a2 + 8) = v52;
  *(a2 + 16) = v57;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 3);
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
      v6 = a2 - 3;
      v7 = *(a2 - 1);
      if (v7 >= 0)
      {
        v8 = a2 - 3;
      }

      else
      {
        v8 = *(a2 - 3);
      }

      if (v7 >= 0)
      {
        v9 = *(a2 - 1);
      }

      else
      {
        v9 = *(a2 - 2);
      }

      v10 = *(a1 + 23);
      v11 = *a1;
      v12 = *(a1 + 8);
      if (v10 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (v10 >= 0)
      {
        v14 = *(a1 + 23);
      }

      else
      {
        v14 = *(a1 + 8);
      }

      if (v14 >= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 = v14;
      }

      v16 = memcmp(v8, v13, v15);
      if (v16)
      {
        if (v16 < 0)
        {
          return 1;
        }
      }

      else if (v9 <= v14)
      {
        return 1;
      }

      v40 = *(a1 + 16);
      v41 = *(v2 - 1);
      *a1 = *v6;
      *(a1 + 16) = v41;
      *(v2 - 3) = v11;
      *(v2 - 2) = v12;
      *(v2 - 1) = v40;
      return 1;
    }
  }

  v17 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, (a1 + 48));
  v18 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v42 = v2;
  while (2)
  {
    v22 = *(v18 + 23);
    if (v22 >= 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = *v18;
    }

    if (v22 >= 0)
    {
      v24 = *(v18 + 23);
    }

    else
    {
      v24 = v18[1];
    }

    v25 = *(v17 + 23);
    if (v25 >= 0)
    {
      v26 = v17;
    }

    else
    {
      v26 = *v17;
    }

    if (v25 >= 0)
    {
      v27 = *(v17 + 23);
    }

    else
    {
      v27 = *(v17 + 8);
    }

    if (v27 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    v29 = memcmp(v23, v26, v28);
    if (v29)
    {
      if (v29 < 0)
      {
        goto LABEL_32;
      }
    }

    else if (v24 <= v27)
    {
      goto LABEL_32;
    }

    v43 = v20;
    v44 = *v18;
    v45 = v18[2];
    *v18 = *v17;
    v18[2] = *(v17 + 16);
    *(v17 + 23) = 0;
    *v17 = 0;
    v30 = v19;
    while (1)
    {
      v31 = a1 + v30;
      v32 = (a1 + v30 + 24);
      if (SHIBYTE(v45) >= 0)
      {
        v33 = &v44;
      }

      else
      {
        v33 = v44;
      }

      if (SHIBYTE(v45) >= 0)
      {
        v34 = HIBYTE(v45);
      }

      else
      {
        v34 = *(&v44 + 1);
      }

      v35 = *(v31 + 47);
      if (v35 >= 0)
      {
        v36 = (a1 + v30 + 24);
      }

      else
      {
        v36 = *(a1 + v30 + 24);
      }

      if (v35 >= 0)
      {
        v37 = *(v31 + 47);
      }

      else
      {
        v37 = *(v31 + 32);
      }

      if (v37 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v37;
      }

      v39 = memcmp(v33, v36, v38);
      if (!v39)
      {
        if (v34 <= v37)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if (v39 < 0)
      {
        break;
      }

LABEL_54:
      v17 -= 24;
      *(v31 + 48) = *v32;
      *(v31 + 64) = *(a1 + v30 + 40);
      *(v31 + 47) = 0;
      *v32 = 0;
      v30 -= 24;
      if (v30 == -48)
      {
        v17 = a1;
        goto LABEL_31;
      }
    }

    v17 = a1 + v30 + 48;
LABEL_31:
    v21 = v44;
    *(v17 + 16) = v45;
    *v17 = v21;
    v20 = v43 + 1;
    v2 = v42;
    if (v43 != 7)
    {
LABEL_32:
      v17 = v18;
      v19 += 24;
      v18 += 3;
      if (v18 == v2)
      {
        return 1;
      }

      continue;
    }

    return v18 + 3 == v42;
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1, char *a2, int a3)
{
  v6 = MEMORY[0x29C271CA0]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x29EDC93D0]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = strlen(a2);
  if (std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v7]) != &a2[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_29758EDB0(_Unwind_Exception *a1)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1E437F0;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E43848;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (v11 != 64)
    {
      if (v11 == 128)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(a1, a2, a3);
      }

      if (v11 == 256)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(a1, a2, a3);
      }

LABEL_44:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
    }

LABEL_15:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, a2, a3);
  }

  v10 = *(a1 + 40);
  *(a1 + 56) = v10;
  v11 = *(a1 + 24) & 0x1F0;
  if (v11 > 0x3F)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v11)
  {
    if (v11 == 16)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, a2, a3);
    }

    if (v11 != 32)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  v13 = a2;
  while (1)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v13, a3);
    if (result == v13)
    {
      break;
    }

LABEL_25:
    v14 = result == v13;
    v13 = result;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  v15 = *(a1 + 56);
  v16 = *(a1 + 28);
  v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v13, a3);
  if (v17 != v13)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    goto LABEL_25;
  }

  result = v13;
LABEL_30:
  if (result == a2)
  {
    v18 = result;
    v19 = operator new(0x10uLL);
    result = v18;
    v20 = *(a1 + 56);
    v21 = *(v20 + 8);
    v19[1] = v21;
    *(v20 + 8) = v19;
    *(a1 + 56) = v19;
  }

  if (result != a3)
  {
LABEL_35:
    if (LOBYTE(result->__traits_.__loc_.__locale_) != 124)
    {
      return result;
    }

    v29 = *(a1 + 56);
    v30 = (&result->__traits_.__loc_.__locale_ + 1);
    v31 = (&result->__traits_.__loc_.__locale_ + 1);
    while (1)
    {
      v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v31, a3);
      if (v32 == v31)
      {
        v33 = *(a1 + 56);
        v34 = *(a1 + 28);
        v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v31, a3);
        if (v35 == v31)
        {
          v32 = v31;
LABEL_42:
          v36 = v32;
          if (v32 == v30)
          {
            v37 = operator new(0x10uLL);
            v38 = *(a1 + 56);
            v39 = *(v38 + 8);
            v37[1] = v39;
            *(v38 + 8) = v37;
            *(a1 + 56) = v37;
          }

          v22 = operator new(0x18uLL);
          v23 = *(v29 + 8);
          v22[1] = *(v10 + 8);
          v22[2] = v23;
          *v22 = &unk_2A1E43E08;
          *(v10 + 8) = v22;
          *(v29 + 8) = 0;
          v24 = operator new(0x10uLL);
          v25 = *(a1 + 56);
          v26 = *(v25 + 8);
          v24[1] = v26;
          *(v29 + 8) = v24;
          *(v25 + 8) = 0;
          v27 = operator new(0x10uLL);
          v28 = *(v29 + 8);
          *v27 = &unk_2A1E43E50;
          v27[1] = v28;
          *(v25 + 8) = v27;
          *(a1 + 56) = *(v29 + 8);
          result = v36;
          if (v36 == a3)
          {
            return result;
          }

          goto LABEL_35;
        }

        v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v35, a3, v33, (v34 + 1), (*(a1 + 28) + 1));
      }

      v14 = v32 == v31;
      v31 = v32;
      if (v14)
      {
        goto LABEL_42;
      }
    }
  }

  return result;
}

void sub_29758F258(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  result = a2;
  while (1)
  {
    v8 = result;
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, result, a3);
    if (result == v8)
    {
      break;
    }

LABEL_2:
    if (result == v8)
    {
      goto LABEL_7;
    }
  }

  v9 = a1->__end_;
  marked_count = a1->__marked_count_;
  v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v8, a3);
  if (v11 != v8)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v9, marked_count + 1, a1->__marked_count_ + 1);
    goto LABEL_2;
  }

  result = v8;
LABEL_7:
  if (v8 == a2)
  {
    v12 = result;
    v13 = operator new(0x10uLL);
    result = v12;
    v14 = a1->__end_;
    first = v14->__first_;
    v13->__first_ = first;
    v14->__first_ = v13;
    a1->__end_ = v13;
  }

  if (v8 != a3)
  {
LABEL_12:
    if (LOBYTE(result->__traits_.__loc_.__locale_) != 124)
    {
      return result;
    }

    v23 = a1->__end_;
    v24 = (&result->__traits_.__loc_.__locale_ + 1);
    v25 = (&result->__traits_.__loc_.__locale_ + 1);
    while (1)
    {
      v26 = v25;
      v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v25, a3);
      if (v25 == v26)
      {
        v27 = a1->__end_;
        v28 = a1->__marked_count_;
        v29 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v26, a3);
        if (v29 == v26)
        {
          v25 = v26;
LABEL_19:
          v30 = v25;
          if (v26 == v24)
          {
            v31 = operator new(0x10uLL);
            v32 = a1->__end_;
            v33 = v32->__first_;
            v31->__first_ = v33;
            v32->__first_ = v31;
            a1->__end_ = v31;
          }

          v16 = operator new(0x18uLL);
          v17 = v23->__first_;
          v16[1].__vftable = end->__first_;
          v16[2].__vftable = v17;
          v16->__vftable = &unk_2A1E43E08;
          end->__first_ = v16;
          v23->__first_ = 0;
          v18 = operator new(0x10uLL);
          v19 = a1->__end_;
          v20 = v19->__first_;
          v18[1].__vftable = v20;
          v23->__first_ = v18;
          v19->__first_ = 0;
          v21 = operator new(0x10uLL);
          v22 = v23->__first_;
          v21->__vftable = &unk_2A1E43E50;
          v21[1].__vftable = v22;
          v19->__first_ = v21;
          a1->__end_ = v23->__first_;
          result = v30;
          if (v26 == a3)
          {
            return result;
          }

          goto LABEL_12;
        }

        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v29, a3, v27, v28 + 1, a1->__marked_count_ + 1);
      }

      if (v25 == v26)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (LOBYTE(a2->__traits_.__loc_.__locale_) == 94)
  {
    v6 = operator new(0x18uLL);
    v7 = (*(a1 + 24) & 0x5F0) == 1024;
    v8 = *(a1 + 56);
    v9 = *(v8 + 8);
    *v6 = &unk_2A1E43940;
    v6[1] = v9;
    *(v6 + 16) = v7;
    *(v8 + 8) = v6;
    *(a1 + 56) = v6;
    v3 = (v3 + 1);
  }

  if (v3 != a3)
  {
    while (1)
    {
      if (v3 == a3)
      {
        v13 = v3;
LABEL_11:
        if (v13 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 28);
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v3, a3);
      if (v12 == v3)
      {
        break;
      }

      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v12, a3, v10, (v11 + 1), (*(a1 + 28) + 1));
      v14 = v13 == v3;
      v3 = v13;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    v13 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    v3 = (&v13->__traits_.__loc_.__locale_ + 1);
    if ((&v13->__traits_.__loc_.__locale_ + 1) != a3 || LOBYTE(v13->__traits_.__loc_.__locale_) != 36)
    {
      goto LABEL_18;
    }

    v15 = operator new(0x18uLL);
    v16 = (*(a1 + 24) & 0x5F0) == 1024;
    v17 = *(a1 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_2A1E43988;
    v15[1] = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(a1 + 56) = v15;
  }

  v13 = v3;
LABEL_18:
  v3 = v13;
  if (v13 != a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  return v3;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
LABEL_11:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 != a3)
  {
    while (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v9 = *(a1 + 56);
      v10 = (&v8->__traits_.__loc_.__locale_ + 1);
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, (&v8->__traits_.__loc_.__locale_ + 1), a3);
      if (v11 == (&v8->__traits_.__loc_.__locale_ + 1))
      {
        goto LABEL_11;
      }

      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v11, a3);
      }

      while (v11 != v8);
      if (v8 == v10)
      {
        goto LABEL_11;
      }

      v12 = operator new(0x18uLL);
      v13 = *(v9 + 8);
      v12[1] = *(v6 + 8);
      v12[2] = v13;
      *v12 = &unk_2A1E43E08;
      *(v6 + 8) = v12;
      *(v9 + 8) = 0;
      v14 = operator new(0x10uLL);
      v15 = *(a1 + 56);
      v16 = *(v15 + 8);
      v14[1] = v16;
      *(v9 + 8) = v14;
      *(v15 + 8) = 0;
      v17 = operator new(0x10uLL);
      v18 = *(v9 + 8);
      *v17 = &unk_2A1E43E50;
      v17[1] = v18;
      *(v15 + 8) = v17;
      *(a1 + 56) = *(v9 + 8);
      if (v8 == a3)
      {
        return v8;
      }
    }
  }

  return v8;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(uint64_t a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E43E08;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E43E50;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = (&v24->__traits_.__loc_.__locale_ + 1);
    }
  }

  while (v10 != a3);
  return v10;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(uint64_t a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E43E08;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E43E50;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = (&v24->__traits_.__loc_.__locale_ + 1);
    }
  }

  while (v10 != a3);
  return v10;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  locale_low = LOBYTE(a2->__traits_.__loc_.__locale_);
  if (locale_low > 0x5B)
  {
    if (locale_low == 92)
    {
      if ((&a2->__traits_.__loc_.__locale_ + 1) != a3)
      {
        v13 = BYTE1(a2->__traits_.__loc_.__locale_);
        if (v13 == 66)
        {
          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          first = v14->__end_->__first_;
          *v16 = &unk_2A1E439D0;
          *(v16 + 1) = first;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 1;
        }

        else
        {
          if (v13 != 98)
          {
            return a2;
          }

          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          v17 = v14->__end_->__first_;
          *v16 = &unk_2A1E439D0;
          *(v16 + 1) = v17;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 0;
        }

        v14->__end_->__first_ = v16;
        v14->__end_ = v16;
        return (&v15->__traits_.__loc_.__locale_ + 2);
      }

      return a2;
    }

    if (locale_low != 94)
    {
      return a2;
    }

    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9->__first_ = end->__first_;
    v12 = &unk_2A1E43940;
LABEL_14:
    v9->__vftable = v12;
    LOBYTE(v9[1].__vftable) = v10;
    end->__first_ = v9;
    v7->__end_ = v9;
    return (&v8->__traits_.__loc_.__locale_ + 1);
  }

  if (locale_low == 36)
  {
    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9->__first_ = end->__first_;
    v12 = &unk_2A1E43988;
    goto LABEL_14;
  }

  v5 = locale_low == 40;
  v4 = (&a2->__traits_.__loc_.__locale_ + 1);
  v5 = !v5 || v4 == a3;
  if (v5)
  {
    return a2;
  }

  v5 = LOBYTE(v4->__traits_.__loc_.__locale_) == 63;
  v18 = (&a2->__traits_.__loc_.__locale_ + 2);
  if (!v5 || v18 == a3)
  {
    return a2;
  }

  v20 = LOBYTE(v18->__traits_.__loc_.__locale_);
  if (v20 == 33)
  {
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v35.__loop_count_ = v29;
    *&v35.__start_.__cntrl_ = v29;
    *&v35.__traits_.__loc_.__locale_ = v29;
    *&v35.__traits_.__col_ = v29;
    v31 = a2;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
    v33 = a1;
    v35.__flags_ = a1->__flags_;
    v34 = a3;
    v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, (&v31->__traits_.__loc_.__locale_ + 3), a3);
    LODWORD(v31) = v35.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v33, &v35, 1, v33->__marked_count_);
    v33->__marked_count_ += v31;
    if (v27 == v34 || LOBYTE(v27->__traits_.__loc_.__locale_) != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_32;
  }

  if (v20 != 61)
  {
    return a2;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v35.__loop_count_ = v21;
  *&v35.__start_.__cntrl_ = v21;
  *&v35.__traits_.__loc_.__locale_ = v21;
  *&v35.__traits_.__col_ = v21;
  v23 = a2;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
  v25 = a1;
  v35.__flags_ = a1->__flags_;
  v26 = a3;
  v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, (&v23->__traits_.__loc_.__locale_ + 3), a3);
  LODWORD(v23) = v35.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v25, &v35, 0, v25->__marked_count_);
  v25->__marked_count_ += v23;
  if (v27 == v26 || LOBYTE(v27->__traits_.__loc_.__locale_) != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_32:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v35.__traits_.__loc_);
  return (&v27->__traits_.__loc_.__locale_ + 1);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low != 40)
    {
      if (locale_low == 46)
      {
        v4 = a1;
        v6 = operator new(0x10uLL);
        v7 = *(v4 + 56);
        v8 = *(v7 + 8);
        *v6 = &unk_2A1E43A60;
        v6[1] = v8;
        *(v7 + 8) = v6;
        *(v4 + 56) = v6;
        return (&this->__traits_.__loc_.__locale_ + 1);
      }

      if (locale_low - 42 >= 2)
      {
        goto LABEL_27;
      }

LABEL_47:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    v14 = (&this->__traits_.__loc_.__locale_ + 1);
    if ((&this->__traits_.__loc_.__locale_ + 1) != a3)
    {
      if ((&this->__traits_.__loc_.__locale_ + 2) != a3 && LOBYTE(v14->__traits_.__loc_.__locale_) == 63 && BYTE2(this->__traits_.__loc_.__locale_) == 58)
      {
        v15 = (a1 + 36);
        ++*(a1 + 36);
        v16 = a3;
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, (&this->__traits_.__loc_.__locale_ + 3), a3);
        if (v17 == v16)
        {
          goto LABEL_56;
        }

        v18 = v17;
        if (LOBYTE(v17->__traits_.__loc_.__locale_) != 41)
        {
          goto LABEL_56;
        }

LABEL_43:
        --*v15;
        return (&v18->__traits_.__loc_.__locale_ + 1);
      }

      if ((*(a1 + 24) & 2) != 0)
      {
        v23 = *(a1 + 28);
      }

      else
      {
        v19 = a1;
        v20 = a3;
        v21 = operator new(0x18uLL);
        a3 = v20;
        v22 = v21;
        a1 = v19;
        v23 = *(v19 + 28) + 1;
        *(v19 + 28) = v23;
        v24 = *(v19 + 56);
        v25 = *(v24 + 8);
        *v22 = &unk_2A1E43CA0;
        v22[1] = v25;
        *(v22 + 4) = v23;
        *(v24 + 8) = v22;
        *(v19 + 56) = v22;
      }

      v15 = (a1 + 36);
      ++*(a1 + 36);
      v29 = a1;
      v30 = a3;
      v31 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, v14, a3);
      if (v31 != v30)
      {
        v18 = v31;
        if (LOBYTE(v31->__traits_.__loc_.__locale_) == 41)
        {
          if ((*(v29 + 24) & 2) == 0)
          {
            v32 = operator new(0x18uLL);
            v33 = *(v29 + 56);
            v34 = *(v33 + 8);
            *v32 = &unk_2A1E43CE8;
            v32[1] = v34;
            *(v32 + 4) = v23;
            *(v33 + 8) = v32;
            *(v29 + 56) = v32;
          }

          goto LABEL_43;
        }
      }
    }

LABEL_56:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (LOBYTE(this->__traits_.__loc_.__locale_) > 0x5Bu)
  {
    if (locale_low != 92)
    {
      if (locale_low == 123)
      {
        goto LABEL_47;
      }

      goto LABEL_27;
    }

    v11 = &this->__traits_.__loc_.__locale_ + 1;
    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v13 = *v11;
    if (v13 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      return (&this->__traits_.__loc_.__locale_ + 2);
    }

    if ((v13 - 49) <= 8)
    {
      v26 = (v13 - 48);
      v9 = (&this->__traits_.__loc_.__locale_ + 2);
      if ((&this->__traits_.__loc_.__locale_ + 2) == a3)
      {
        v28 = a3;
      }

      else
      {
        while (1)
        {
          v27 = LOBYTE(v9->__traits_.__loc_.__locale_);
          if ((v27 - 48) > 9)
          {
            break;
          }

          if (v26 >= 0x19999999)
          {
            goto LABEL_57;
          }

          v26 = v27 + 10 * v26 - 48;
          v9 = (v9 + 1);
          if (v9 == a3)
          {
            v9 = a3;
            break;
          }
        }

        v28 = a3;
        if (!v26)
        {
LABEL_57:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v26 > *(a1 + 28))
      {
        goto LABEL_57;
      }

      v35 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v26);
      a1 = v35;
      a3 = v28;
      if (v9 != v11)
      {
        return v9;
      }
    }

    v36 = a1;
    v37 = a3;
    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v11, a3);
    v39 = v37;
    v9 = v38;
    if (v38 == v11)
    {
      v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(v36, v11, v39, 0);
      if (v40 == v11)
      {
        return this;
      }

      else
      {
        return v40;
      }
    }

    return v9;
  }

  if (locale_low != 91)
  {
    if (locale_low == 63)
    {
      goto LABEL_47;
    }

LABEL_27:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, this, a3);
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, this, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  v6 = *(a1 + 24) & 0x1F0;
  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low == 42)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (v6)
      {
        v19 = 1;
      }

      else
      {
        v19 = v8 == a3;
      }

      if (!v19 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 0;
        goto LABEL_34;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 0;
      goto LABEL_43;
    }

    if (locale_low == 43)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 1;
LABEL_34:
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v10, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 0);
        return v9;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 1;
      goto LABEL_43;
    }

    return this;
  }

  if (locale_low == 63)
  {
    v20 = (&this->__traits_.__loc_.__locale_ + 1);
    if (v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (v21 || LOBYTE(v20->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 1);
      return v20;
    }

    else
    {
      v22 = &this->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 0);
      return v22;
    }
  }

  else
  {
    if (locale_low != 123)
    {
      return this;
    }

    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v11 = BYTE1(this->__traits_.__loc_.__locale_);
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      goto LABEL_69;
    }

    v12 = v11 - 48;
    v13 = (&this->__traits_.__loc_.__locale_ + 2);
    if ((&this->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v14 = LOBYTE(v13->__traits_.__loc_.__locale_);
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          break;
        }

        if (v12 >= 214748364)
        {
          goto LABEL_69;
        }

        v12 = v14 + 10 * v12 - 48;
        v13 = (v13 + 1);
        if (v13 == a3)
        {
          v13 = a3;
          break;
        }
      }
    }

    if (v13 == a3)
    {
      goto LABEL_70;
    }

    v15 = LOBYTE(v13->__traits_.__loc_.__locale_);
    if (v15 != 44)
    {
      if (v15 == 125)
      {
        v16 = (&v13->__traits_.__loc_.__locale_ + 1);
        if (v6 || v16 == a3 || LOBYTE(v16->__traits_.__loc_.__locale_) != 63)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 1);
          return v16;
        }

        else
        {
          v17 = &v13->__traits_.__loc_.__locale_ + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 0);
          return v17;
        }
      }

LABEL_69:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

    if ((&v13->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v24 = BYTE1(v13->__traits_.__loc_.__locale_);
    if (v24 == 125)
    {
      v8 = (&v13->__traits_.__loc_.__locale_ + 2);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v10 = v12;
        v9 = &v13->__traits_.__loc_.__locale_ + 3;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_34;
      }

      v23 = v12;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
LABEL_43:
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v23, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
      return v8;
    }

    if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
    {
      goto LABEL_70;
    }

    v25 = v24 - 48;
    v26 = (&v13->__traits_.__loc_.__locale_ + 2);
    if (v26 != a3)
    {
      while (1)
      {
        v27 = LOBYTE(v26->__traits_.__loc_.__locale_);
        if ((v27 & 0xF8) != 0x30 && (v27 & 0xFE) != 0x38)
        {
          break;
        }

        if (v25 >= 214748364)
        {
          goto LABEL_69;
        }

        v25 = v27 + 10 * v25 - 48;
        v26 = (v26 + 1);
        if (v26 == a3)
        {
          v26 = a3;
          break;
        }
      }
    }

    if (v26 == a3 || LOBYTE(v26->__traits_.__loc_.__locale_) != 125)
    {
LABEL_70:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    if (v25 < v12)
    {
      goto LABEL_69;
    }

    v28 = (&v26->__traits_.__loc_.__locale_ + 1);
    if (v6 || v28 == a3 || LOBYTE(v28->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 1);
      return v28;
    }

    else
    {
      v29 = &v26->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 0);
      return v29;
    }
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_23;
    }

    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      ++v7;
    }

    if (v7 == a3)
    {
      goto LABEL_23;
    }

    do
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v7, a3, v8);
      v10 = v9 == v7;
      v7 = v9;
    }

    while (!v10);
    if (v9 == a3)
    {
      goto LABEL_23;
    }

    if (*v9 == 45)
    {
      v11 = v9;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      v9 = v11 + 1;
    }

    if (v9 == a3 || *v9 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v9 + 1;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v18 = a2;
          v19 = 12;
          goto LABEL_80;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v18 = a2;
          v19 = 10;
          goto LABEL_80;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v18 = a2;
            v19 = 0;
            goto LABEL_80;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        case 'c':
          if (a2 + 1 == a3)
          {
            goto LABEL_96;
          }

          v6 = a2[1];
          if (((v6 & 0xDF) - 65) > 0x19u)
          {
            goto LABEL_96;
          }

          v7 = v6 & 0x1F;
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v7;
            *(a4 + 1) = 0;
            return a2 + 2;
          }

          else
          {
            v20 = a2;
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
            return v20 + 2;
          }

        case '_':
          goto LABEL_96;
      }
    }

    goto LABEL_74;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v18 = a2;
        v19 = 13;
        goto LABEL_80;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v18 = a2;
        v19 = 9;
        goto LABEL_80;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

LABEL_74:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_96;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v18 = a2;
    v19 = v4;
LABEL_80:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
    return v18 + 1;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v9 = a2[1];
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_96;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_96;
    }

    v10 = *a2;
    v11 = -48;
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
    {
      v10 |= 0x20u;
      if ((v10 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v11 = -87;
    }

    v5 = 16 * (v11 + v10);
LABEL_46:
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v12 = a2[1];
    v13 = -48;
    if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
    {
      v12 |= 0x20u;
      if ((v12 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v13 = -87;
    }

    if (a2 + 2 != a3)
    {
      v14 = a2[2];
      v15 = -48;
      if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
      {
        goto LABEL_56;
      }

      v14 |= 0x20u;
      if ((v14 - 97) < 6)
      {
        v15 = -87;
LABEL_56:
        v16 = v14 + 16 * (v5 + v13 + v12) + v15;
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v16;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v17 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
        return v17 + 3;
      }
    }

LABEL_96:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_46;
    }

    goto LABEL_74;
  }

  if (!a4)
  {
    v18 = a2;
    v19 = 11;
    goto LABEL_80;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v4 = *a2;
  if (v4 == 93)
  {
    return;
  }

  v7 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  if (a2 + 1 == a3 || v4 != 91)
  {
    goto LABEL_23;
  }

  v8 = a2[1];
  if (v8 != 46)
  {
    if (v8 != 58)
    {
      if (v8 == 61)
      {
        std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v7 = 0;
LABEL_23:
      v17 = *(a1 + 24) & 0x1F0;
      goto LABEL_35;
    }

    if (a3 - (a2 + 2) >= 2)
    {
      v9 = a3 - a2 - 4;
      v10 = a2 + 2;
      v11 = a2 + 3;
      if (a2[2] != 58)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (*v11 == 93)
      {
        if (v10 != a3)
        {
          v25 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2 + 2, v10, *(a1 + 24) & 1);
          if (!v25)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
          }

          *(a4 + 160) |= v25;
          if (SHIBYTE(v36) < 0)
          {
            goto LABEL_70;
          }

          return;
        }
      }

      else
      {
LABEL_13:
        while (v9)
        {
          --v9;
          v10 = v11;
          v12 = *v11++;
          if (v12 == 58)
          {
            goto LABEL_12;
          }
        }
      }
    }

LABEL_88:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 - (a2 + 2) < 2)
  {
    goto LABEL_88;
  }

  v13 = a3 - a2 - 4;
  v14 = a2 + 2;
  v15 = a2 + 3;
  if (a2[2] != 46)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (*v15 != 93)
  {
LABEL_19:
    while (v13)
    {
      --v13;
      v14 = v15;
      v16 = *v15++;
      if (v16 == 46)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_88;
  }

  if (v14 == a3)
  {
    goto LABEL_88;
  }

  v19 = a1;
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2 + 2, v14, &v37);
  a1 = v19;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    a1 = v19;
  }

  v36 = v38;
  *__p = v37;
  v20 = HIBYTE(v38);
  v7 = SHIBYTE(v38);
  v21 = *(&v37 + 1);
  if (v38 < 0)
  {
    v20 = __p[1];
  }

  if ((v20 - 1) >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  a2 = v14 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  if (v38 >= 0)
  {
    v21 = SHIBYTE(v38);
  }

  if (v21)
  {
    v18 = v14 + 2;
    if (a2 == a3)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_35:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v22) = *a2;
LABEL_44:
    if (v7 < 0)
    {
      v26 = __p[0];
      __p[1] = 1;
      *__p[0] = v22;
      v26[1] = 0;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    else
    {
      HIBYTE(v36) = 1;
      LOWORD(__p[0]) = v22;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_51;
  }

  v22 = *a2;
  if (v22 != 92)
  {
    goto LABEL_44;
  }

  v23 = a1;
  if (v17)
  {
    v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, a2 + 1, a3, __p);
  }

  else
  {
    v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, a2 + 1, a3, __p, a4);
  }

  v18 = v24;
  a1 = v23;
  if (v18 == a3)
  {
LABEL_52:
    if (SHIBYTE(v36) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_69;
      }

      if (__p[1] != 1)
      {
        v28 = __p[0];
LABEL_68:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v28, *(v28 + 1));
LABEL_69:
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v28 = __p[0];
    }

    else
    {
      if (!HIBYTE(v36))
      {
        goto LABEL_69;
      }

      v28 = __p;
      if (HIBYTE(v36) != 1)
      {
        goto LABEL_68;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v28);
    goto LABEL_69;
  }

LABEL_51:
  v27 = *v18;
  if (v27 == 93)
  {
    goto LABEL_52;
  }

  v29 = v18 + 1;
  if (v18 + 1 == a3 || v27 != 45 || *v29 == 93)
  {
    goto LABEL_52;
  }

  v37 = 0uLL;
  v38 = 0;
  v30 = v18 + 2;
  if (v18 + 2 != a3 && *v29 == 91 && *v30 == 46)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v18 + 3, a3, &v37);
    goto LABEL_79;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v29) = *v29;
    goto LABEL_77;
  }

  LODWORD(v29) = *v29;
  if (v29 != 92)
  {
LABEL_77:
    HIBYTE(v38) = 1;
    LOWORD(v37) = v29;
    goto LABEL_79;
  }

  if (v17)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v30, a3, &v37);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v30, a3, &v37, a4);
  }

LABEL_79:
  *v33 = *__p;
  v34 = v36;
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  *v31 = v37;
  v32 = v38;
  v37 = 0uLL;
  v38 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](a4, v33, v31);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
LABEL_81:
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_86:
      operator delete(v37);
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_70;
      }

      return;
    }
  }

  else if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

  operator delete(v33[0]);
  if (SHIBYTE(v38) < 0)
  {
    goto LABEL_86;
  }

LABEL_82:
  if (SHIBYTE(v36) < 0)
  {
LABEL_70:
    operator delete(__p[0]);
  }
}

void sub_2975912EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_38;
  }

  v7 = a2;
  v8 = a2 + 1;
  if (*a2 != 61)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v8 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v7 = v8;
      v9 = *v8++;
      if (v9 == 61)
      {
        goto LABEL_3;
      }
    }

LABEL_38:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (v7 == a3)
  {
    goto LABEL_38;
  }

  memset(v19, 170, sizeof(v19));
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v7, v19);
  v10 = SHIBYTE(v19[2]);
  if ((SHIBYTE(v19[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v19[2]))
    {
      memset(__p, 170, sizeof(__p));
      v11 = v19;
      goto LABEL_13;
    }

LABEL_39:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v19[1];
  if (!v19[1])
  {
    goto LABEL_39;
  }

  memset(__p, 170, sizeof(__p));
  v11 = v19[0];
LABEL_13:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v11, v10 + v11, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_15:
      v12 = *(a4 + 144);
      if (v12 >= *(a4 + 152))
      {
        *(a4 + 144) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v13 = *__p;
          *(v12 + 16) = __p[2];
          *v12 = v13;
        }

        *(a4 + 144) = v12 + 24;
        *(a4 + 144) = v12 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_32;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_15;
  }

  v14 = HIBYTE(v19[2]);
  if (SHIBYTE(v19[2]) < 0)
  {
    v14 = v19[1];
  }

  if (v14 == 2)
  {
    v16 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v16 = v19[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v16, *(v16 + 1));
  }

  else
  {
    if (v14 != 1)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
    }

    v15 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v15 = v19[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v15);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_36:
    operator delete(__p[0]);
    if (SHIBYTE(v19[2]) < 0)
    {
      goto LABEL_37;
    }

    return v7 + 2;
  }

LABEL_32:
  if ((SHIBYTE(v19[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_37:
  operator delete(v19[0]);
  return v7 + 2;
}

void sub_29759159C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = a2 + 1;
  if (*a2 != 46)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v7 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v6 = v7;
      v8 = *v7++;
      if (v8 == 46)
      {
        goto LABEL_3;
      }
    }

LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (v6 == a3)
  {
    goto LABEL_14;
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 8;
    return a2 + 1;
  }

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

LABEL_25:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_75:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v4 != 34 && v4 != 47)
      {
        goto LABEL_48;
      }
    }

    else if (v4 != 92)
    {
      if (v4 == 97)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 7;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
          return a2 + 1;
        }
      }

      if (v4 == 98)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 8;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
          return a2 + 1;
        }
      }

      goto LABEL_48;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      return a2 + 1;
    }
  }

  if (*a2 <= 0x71u)
  {
    if (v4 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
        return a2 + 1;
      }
    }

    if (v4 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
        return a2 + 1;
      }
    }
  }

  else
  {
    switch(v4)
    {
      case 'r':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 13;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
          return a2 + 1;
        }

      case 't':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 9;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
          return a2 + 1;
        }

      case 'v':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 11;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
          return a2 + 1;
        }
    }
  }

LABEL_48:
  if ((v4 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_75;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v8 = *v9 + 8 * v8 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v10 = *v9 + 8 * v8 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v8 = v10;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    result = v9;
    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v9;
  }

  return result;
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_297591ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  if (result == a2 && result != a3 && (&result->__traits_.__loc_.__locale_ + 1) != a3 && LOBYTE(result->__traits_.__loc_.__locale_) == 92)
  {
    v7 = BYTE1(result->__traits_.__loc_.__locale_);
    if (v7 == 40)
    {
      v8 = (&result->__traits_.__loc_.__locale_ + 2);
      if ((*(a1 + 24) & 2) != 0)
      {
        v10 = *(a1 + 28);
      }

      else
      {
        v9 = operator new(0x18uLL);
        v10 = *(a1 + 28) + 1;
        *(a1 + 28) = v10;
        v11 = *(a1 + 56);
        v12 = *(v11 + 8);
        *v9 = &unk_2A1E43CA0;
        v9[1] = v12;
        *(v9 + 4) = v10;
        *(v11 + 8) = v9;
        *(a1 + 56) = v9;
      }

      while (v8 != a3)
      {
        v14 = *(a1 + 56);
        v15 = *(a1 + 28);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v8, a3);
        if (v16 == v8)
        {
          break;
        }

        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v16, a3, v14, (v15 + 1), (*(a1 + 28) + 1));
        v18 = v17 == v8;
        v8 = v17;
        if (v18)
        {
          goto LABEL_20;
        }
      }

      v17 = v8;
LABEL_20:
      if (v17 == a3 || (&v17->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v17->__traits_.__loc_.__locale_) != 92 || BYTE1(v17->__traits_.__loc_.__locale_) != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      result = (v17 + 2 * (BYTE1(v17->__traits_.__loc_.__locale_) == 41));
      if ((*(a1 + 24) & 2) == 0)
      {
        v19 = result;
        v20 = operator new(0x18uLL);
        result = v19;
        v21 = *(a1 + 56);
        v22 = *(v21 + 8);
        *v20 = &unk_2A1E43CE8;
        v20[1] = v22;
        *(v20 + 4) = v10;
        *(v21 + 8) = v20;
        *(a1 + 56) = v20;
      }
    }

    else if (((v7 & 0xF8) == 0x30 || (v7 & 0xFE) == 0x38) && (v7 - 49) <= 8)
    {
      if ((v7 - 48) > *(a1 + 28))
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      v13 = result;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v7 - 48);
      return (&v13->__traits_.__loc_.__locale_ + 2);
    }
  }

  return result;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = this;
  if (this == a3)
  {
    return v6;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (v6 + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92 || BYTE1(this->__traits_.__loc_.__locale_) != 123)
  {
    return v6;
  }

  v9 = (this + 2 * (BYTE1(this->__traits_.__loc_.__locale_) == 123));
  if (v9 == a3)
  {
    goto LABEL_41;
  }

  v10 = LOBYTE(v9->__traits_.__loc_.__locale_);
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    goto LABEL_41;
  }

  v11 = v10 - 48;
  v12 = (&v9->__traits_.__loc_.__locale_ + 1);
  if ((&v9->__traits_.__loc_.__locale_ + 1) != a3)
  {
    while (1)
    {
      v13 = LOBYTE(v12->__traits_.__loc_.__locale_);
      if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
      {
        break;
      }

      if (v11 >= 214748364)
      {
        goto LABEL_41;
      }

      v11 = v13 + 10 * v11 - 48;
      v12 = (v12 + 1);
      if (v12 == a3)
      {
        v12 = a3;
        break;
      }
    }
  }

  if (v12 == a3)
  {
    goto LABEL_42;
  }

  v14 = (&v12->__traits_.__loc_.__locale_ + 1);
  v15 = LOBYTE(v12->__traits_.__loc_.__locale_);
  if (v15 != 44)
  {
    if (v14 != a3 && v15 == 92 && LOBYTE(v14->__traits_.__loc_.__locale_) == 125)
    {
      v19 = &v12->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v11, a4, __mexp_begin, __mexp_end, 1);
      return v19;
    }

LABEL_42:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v14 != a3 && ((v16 = LOBYTE(v14->__traits_.__loc_.__locale_), (v16 & 0xF8) == 0x30) || (v16 & 0xFE) == 0x38))
  {
    v17 = v16 - 48;
    v14 = (&v12->__traits_.__loc_.__locale_ + 2);
    if ((&v12->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v20 = LOBYTE(v14->__traits_.__loc_.__locale_);
        if ((v20 & 0xF8) != 0x30 && (v20 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_41;
        }

        v17 = v20 + 10 * v17 - 48;
        v14 = (v14 + 1);
        if (v14 == a3)
        {
          v14 = a3;
          break;
        }
      }
    }
  }

  else
  {
    v17 = -1;
  }

  if (v14 == a3 || (&v14->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v14->__traits_.__loc_.__locale_) != 92 || BYTE1(v14->__traits_.__loc_.__locale_) != 125)
  {
    goto LABEL_42;
  }

  v18 = v14 + 2 * (BYTE1(v14->__traits_.__loc_.__locale_) == 125);
  if (v17 != -1)
  {
    if (v17 >= v11)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v17, a4, __mexp_begin, __mexp_end, 1);
      return v18;
    }

LABEL_41:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
  return v18;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 1;
    v3 = *a2;
    if (a2 + 1 != a3 || v3 != 36)
    {
      if ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
        return v4;
      }

      if (v4 == a3 || v3 != 92)
      {
        if (v3 == 46)
        {
          v10 = operator new(0x10uLL);
          end = a1->__end_;
          first = end->__first_;
          v10->__vftable = &unk_2A1E43E98;
          v10->__first_ = first;
          end->__first_ = v10;
          a1->__end_ = v10;
          return v4;
        }
      }

      else
      {
        v7 = *v4;
        if ((v7 - 36) <= 0x3A && ((1 << (v7 - 36)) & 0x580000000000441) != 0)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
          return a2 + 2;
        }
      }
    }
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (this == a3)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, this, a3);
    if (v11 != this)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  v9 = (locale_low - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_22;
  }

  if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_4;
  }

  if (v9 == 5)
  {
    if (!*(a1 + 36))
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_22:
    if ((locale_low - 123) >= 2)
    {
LABEL_23:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale_low);
      v11 = &this->__traits_.__loc_.__locale_ + 1;
      goto LABEL_32;
    }
  }

LABEL_4:
  v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, this, a3);
  v11 = v10;
  if (v10 == this)
  {
    if (LOBYTE(v10->__traits_.__loc_.__locale_) == 46)
    {
      v12 = operator new(0x10uLL);
      v13 = *(a1 + 56);
      v14 = *(v13 + 8);
      *v12 = &unk_2A1E43E98;
      v12[1] = v14;
      *(v13 + 8) = v12;
      *(a1 + 56) = v12;
      ++v11;
      goto LABEL_9;
    }

LABEL_8:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, this, a3);
  }

LABEL_9:
  if (v11 == this && v11 != a3)
  {
    v15 = *v11;
    switch(v15)
    {
      case '$':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_2A1E43988;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v21 = *(a1 + 28);
        }

        else
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 28) + 1;
          *(a1 + 28) = v21;
          v22 = *(a1 + 56);
          v23 = *(v22 + 8);
          *v20 = &unk_2A1E43CA0;
          v20[1] = v23;
          *(v20 + 4) = v21;
          *(v22 + 8) = v20;
          *(a1 + 56) = v20;
        }

        ++*(a1 + 36);
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, (v11 + 1), a3);
        if (v24 == a3 || (v11 = v24, LOBYTE(v24->__traits_.__loc_.__locale_) != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v25 = operator new(0x18uLL);
          v26 = *(a1 + 56);
          v27 = *(v26 + 8);
          *v25 = &unk_2A1E43CE8;
          v25[1] = v27;
          *(v25 + 4) = v21;
          *(v26 + 8) = v25;
          *(a1 + 56) = v25;
        }

        --*(a1 + 36);
        goto LABEL_30;
      case '^':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_2A1E43940;
        break;
      default:
        goto LABEL_31;
    }

    *v16 = v19;
    *(v16 + 16) = v17;
    *(v18 + 8) = v16;
    *(a1 + 56) = v16;
LABEL_30:
    ++v11;
  }

LABEL_31:
  if (v11 == this)
  {
    return v11;
  }

LABEL_32:
  v28 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v6, (v7 + 1), v28);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3 || (&this->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(this->__traits_.__loc_.__locale_) != 92)
  {
    return this;
  }

  v3 = BYTE1(this->__traits_.__loc_.__locale_);
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    v5 = this;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return &v5->__traits_.__loc_.__locale_ + 2;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v7 = &this->__traits_.__loc_.__locale_ + 1;

    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v7, a3, 0);
  }

  else
  {
    v8 = this;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v3);
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    return v8 + v10;
  }
}

uint64_t std::unordered_set<std::string>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *std::unique_ptr<std::__hash_node<std::string,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v23 + v26 + v32;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v32 + v24 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v25 + v27 + v38;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v50 + v48 + v59 + v49;
        v41 = __ROR8__(v50 + v48 + v59, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

void TransportService::create(uint64_t *a1@<X0>, uint64_t *a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18CB080 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v6 = qword_2A18CB080;
    if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
  v6 = qword_2A18CB080;
  if (os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
  {
LABEL_4:
    LOWORD(v16) = 0;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "IPC: Creating ARI transport service...", &v16, 2u);
  }

LABEL_5:
  v8 = *a1;
  v7 = a1[1];
  v9 = operator new(0xC8uLL);
  v10 = v9;
  v9[1] = 0;
  v11 = v9 + 1;
  v9[2] = 0;
  *v9 = &unk_2A1E49190;
  v12 = (v9 + 3);
  v16 = v8;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v14 = a2[1];
  v21[0] = v13;
  v21[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ARITransportService::ARITransportService((v9 + 3), &v16, v21);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v15 = v10[7];
  if (v15)
  {
    if (v15->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
      v10[6] = v12;
      v10[7] = v10;
      std::__shared_weak_count::__release_weak(v15);
      if (!atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    v10[6] = v12;
    v10[7] = v10;
    if (!atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_19:
      (*(*v10 + 16))(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  v16 = MEMORY[0x29EDCA5F8];
  v17 = 0x40000000;
  v18 = ___ZN19ARITransportService4initEv_block_invoke;
  v19 = &__block_descriptor_tmp_9;
  v20 = v12;
  ctu::SharedSynchronizable<ARITransportService>::execute_wrapped(v10 + 6, &v16);
  *a3 = v12;
  a3[1] = v10;
}

void sub_297593098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::~__shared_weak_count(v13);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void ARITransportService::init(ARITransportService *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN19ARITransportService4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_9;
  v1[4] = this;
  ctu::SharedSynchronizable<ARITransportService>::execute_wrapped(this + 3, v1);
}

uint64_t ARITransportService::ARITransportService(uint64_t a1, void *a2, uint64_t *a3)
{
  *a1 = &unk_2A1E48E88;
  ctu::OsLogContext::OsLogContext(v12, "com.apple.telephony.abm", "ipc.svc.ari");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v7 = dispatch_queue_create_with_target_V2("ipc.svc.ari", initially_inactive, 0);
  dispatch_set_qos_class_floor(v7, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v7);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v7;
  if (v7)
  {
    dispatch_retain(v7);
    *(a1 + 48) = 0;
    dispatch_release(v7);
  }

  else
  {
    *(a1 + 48) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 56, v13);
  MEMORY[0x29C270D60](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  v8 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = &unk_2A1E49110;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  else
  {
    *a1 = &unk_2A1E49110;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
  }

  *a1 = &unk_2A1E48E88;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 88) = 256;
  *(a1 + 112) = 0u;
  v10 = a2[1];
  *(a1 + 128) = *a2;
  *(a1 + 136) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::string::append((a1 + 144), 0x100uLL, 0);
  return a1;
}

void sub_297593354(_Unwind_Exception *a1)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*v7);
    v9 = *(v1 + 136);
    if (!v9)
    {
LABEL_3:
      std::unique_ptr<support::misc::Watchdog>::~unique_ptr[abi:ne200100]((v1 + 120));
      v10 = *(v1 + 112);
      if (!v10)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v9 = *(v1 + 136);
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v9);
  std::unique_ptr<support::misc::Watchdog>::~unique_ptr[abi:ne200100]((v1 + 120));
  v10 = *(v1 + 112);
  if (!v10)
  {
LABEL_5:
    dispatch::callback<void({block_pointer})(WakeReason)>::~callback(v6);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
    *v1 = v4;
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v5);
    MEMORY[0x29C270D60](v1 + 56);
    ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v2);
    _Unwind_Resume(a1);
  }

LABEL_4:
  dispatch_release(v10);
  goto LABEL_5;
}

void ARITransportService::~ARITransportService(void **this)
{
  *this = &unk_2A1E48E88;
  ARITransportService::cancelWakeRequest_sync(this);
  v3 = AriHostRt::Shutdown(v2);
  LogLevels = Ari::GetLogLevels(v3);
  v6 = Ari::LogConfig(LogLevels, 0, v5);
  v7 = Ari::GetLogLevels(v6);
  MEMORY[0x29C270AB0](v7, 0, 0);
  v8 = this[7];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I Gone!", v19, 2u);
    if ((*(this + 167) & 0x80000000) == 0)
    {
LABEL_3:
      v9 = this[17];
      if (!v9)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 167) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[18]);
  v9 = this[17];
  if (v9)
  {
LABEL_4:
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_5:
  v10 = this[15];
  this[15] = 0;
  if (v10)
  {
    TelephonyBasebandWatchdogStop();
    operator delete(v10);
  }

  v11 = this[14];
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = this[13];
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = this[12];
  if (v13)
  {
    _Block_release(v13);
  }

  v14 = this[10];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  *this = &unk_2A1E49110;
  v15 = this[2];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  MEMORY[0x29C270D60](this + 7);
  v16 = this[6];
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = this[5];
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = this[4];
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }
}

void ARITransportService::shutdown_sync(ARITransportService *this)
{
  ARITransportService::cancelWakeRequest_sync(this);
  v2 = AriHostRt::Shutdown(v1);
  LogLevels = Ari::GetLogLevels(v2);
  v5 = Ari::LogConfig(LogLevels, 0, v4);
  Ari::GetLogLevels(v5);

  JUMPOUT(0x29C270AB0);
}

void ARITransportService::cancelWakeRequest_sync(ARITransportService *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 14);
    *(this + 14) = 0;
    if (v3)
    {
      dispatch_release(v3);
    }

    if (*(this + 12) && *(this + 13))
    {
      if ((*(this + 167) & 0x8000000000000000) != 0)
      {
        if (*(this + 19))
        {
          goto LABEL_8;
        }
      }

      else if (*(this + 167))
      {
LABEL_8:
        v4 = xpc_dictionary_create(0, 0, 0);
        if (v4 || (v4 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v4);
            v5 = v4;
          }

          else
          {
            v5 = xpc_null_create();
          }
        }

        else
        {
          v5 = xpc_null_create();
          v4 = 0;
        }

        xpc_release(v4);
        v11 = capabilities::radio::initium(v10);
        v12 = MEMORY[0x29EDBE7D0];
        if (!v11)
        {
          v12 = MEMORY[0x29EDBE7C8];
        }

        v13 = xpc_string_create(*v12);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        xpc_dictionary_set_value(v5, *MEMORY[0x29EDBE848], v13);
        v14 = xpc_null_create();
        xpc_release(v13);
        xpc_release(v14);
        v15 = this + 144;
        if (*(this + 167) < 0)
        {
          v15 = *v15;
        }

        v16 = xpc_string_create(v15);
        if (!v16)
        {
          v16 = xpc_null_create();
        }

        xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEA28], v16);
        v17 = xpc_null_create();
        xpc_release(v16);
        xpc_release(v17);
        v18 = xpc_BOOL_create(*(this + 168));
        if (!v18)
        {
          v18 = xpc_null_create();
        }

        xpc_dictionary_set_value(v5, *MEMORY[0x29EDBF4F8], v18);
        v19 = xpc_null_create();
        xpc_release(v18);
        xpc_release(v19);
        if (v5)
        {
          xpc_retain(v5);
          v20 = v5;
          v21 = *(this + 12);
          if (v21)
          {
LABEL_40:
            v22 = _Block_copy(v21);
            goto LABEL_43;
          }
        }

        else
        {
          v20 = xpc_null_create();
          v21 = *(this + 12);
          if (v21)
          {
            goto LABEL_40;
          }
        }

        v22 = 0;
LABEL_43:
        v23 = *(this + 13);
        block = MEMORY[0x29EDCA5F8];
        v25 = 1174405120;
        v26 = ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJS1_EEEvDpT__block_invoke;
        v27 = &__block_descriptor_tmp_87;
        if (v22)
        {
          aBlock = _Block_copy(v22);
          v29 = 3;
          object = v20;
          if (v20)
          {
LABEL_45:
            xpc_retain(v20);
LABEL_48:
            dispatch_async(v23, &block);
            xpc_release(object);
            object = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v22)
            {
              _Block_release(v22);
            }

            xpc_release(v20);
            xpc_release(v5);
            return;
          }
        }

        else
        {
          aBlock = 0;
          v29 = 3;
          object = v20;
          if (v20)
          {
            goto LABEL_45;
          }
        }

        object = xpc_null_create();
        goto LABEL_48;
      }

      v6 = xpc_null_create();
      v7 = *(this + 12);
      if (v7)
      {
        v8 = _Block_copy(v7);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(this + 13);
      block = MEMORY[0x29EDCA5F8];
      v25 = 1174405120;
      v26 = ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJS1_EEEvDpT__block_invoke;
      v27 = &__block_descriptor_tmp_87;
      if (v8)
      {
        aBlock = _Block_copy(v8);
        v29 = 4;
        object = v6;
        if (v6)
        {
LABEL_19:
          xpc_retain(v6);
LABEL_22:
          dispatch_async(v9, &block);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v8)
          {
            _Block_release(v8);
          }

          xpc_release(v6);
          return;
        }
      }

      else
      {
        aBlock = 0;
        v29 = 4;
        object = v6;
        if (v6)
        {
          goto LABEL_19;
        }
      }

      object = xpc_null_create();
      goto LABEL_22;
    }
  }
}

void ARITransportService::flushAndCloseLogs_sync(ARITransportService *this)
{
  LogLevels = Ari::GetLogLevels(this);
  v3 = Ari::LogConfig(LogLevels, 0, v2);
  Ari::GetLogLevels(v3);

  JUMPOUT(0x29C270AB0);
}

void ARITransportService::shutdown(ARITransportService *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN19ARITransportService8shutdownEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_10;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19ARITransportServiceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_62_0;
  block[4] = this + 24;
  block[5] = &v4;
  v2 = this + 40;
  v1 = *(this + 5);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ___ZN19ARITransportService8shutdownEv_block_invoke(uint64_t a1)
{
  ARITransportService::cancelWakeRequest_sync(*(a1 + 32));
  v2 = AriHostRt::Shutdown(v1);
  LogLevels = Ari::GetLogLevels(v2);
  v5 = Ari::LogConfig(LogLevels, 0, v4);
  Ari::GetLogLevels(v5);

  JUMPOUT(0x29C270AB0);
}

void ___ZN19ARITransportService4initEv_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I ----------------- Setting up ----------------", buf, 2u);
  }

  v4 = capabilities::ipc::supportsPCI(v3);
  if ((v4 & 1) == 0)
  {
    v25 = GetOsLogContext()[1];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_54;
    }

    *buf = 136315906;
    *&buf[4] = "ABM ASSERT";
    *&buf[12] = 2080;
    *&buf[14] = "capabilities::ipc::supportsPCI()";
    v30 = 2080;
    v31 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/ARI/Service/ARITransportService.cpp";
    v32 = 1024;
    v33 = 125;
    goto LABEL_53;
  }

  v5 = capabilities::pci::controlChannelCount(v4);
  if (HIDWORD(v5))
  {
    v25 = GetOsLogContext()[1];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_54;
    }

    *buf = 136315906;
    *&buf[4] = "ABM ASSERT";
    *&buf[12] = 2080;
    *&buf[14] = "capabilities::pci::controlChannelCount() <= std::numeric_limits<unsigned>::max()";
    v30 = 2080;
    v31 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/ARI/Service/ARITransportService.cpp";
    v32 = 1024;
    v33 = 126;
LABEL_53:
    _os_log_fault_impl(&dword_297476000, v25, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
LABEL_54:
    __break(1u);
  }

  if (capabilities::pci::controlChannelCount(v5) != 1)
  {
    v6 = *(v1 + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "The number of control channels is not one!", buf, 2u);
    }
  }

  ARIXpcServer::create(buf);
  v7 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v8 = *(v1 + 80);
  *(v1 + 72) = v7;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *&buf[8];
  if (!*&buf[8] || atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = *(v1 + 56);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v10 = *(v1 + 56);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
LABEL_14:
    *buf = 0;
    _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_DEFAULT, "#I ----------------- ARI runtime XPC Server up ----------------", buf, 2u);
  }

LABEL_15:
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v12 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v12, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *buf = v12;
    v11 = operator new(0x20uLL);
    v11->__vftable = &unk_2A1E43EE0;
    v11->__shared_owners_ = 0;
    v11->__shared_weak_owners_ = 0;
    v11[1].__vftable = v12;
    v13 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v12;
    *(&xmmword_2A18CAF18 + 1) = v11;
    if (!v13)
    {
      v26 = v11;
      goto LABEL_24;
    }

    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v11 = *(&xmmword_2A18CAF18 + 1);
  v26 = *(&xmmword_2A18CAF18 + 1);
  v12 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_24:
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  HIBYTE(v30) = 18;
  strcpy(buf, "ICEEnableARIResets");
  if (Preferences::getPreference<BOOL>(v12, buf, (v1 + 89)))
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *(v1 + 89) = 1;
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
LABEL_27:
      v14 = v26;
      if (!v26)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  operator delete(*buf);
  v14 = v26;
  if (!v26)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_33:
  v15 = *(v1 + 89);
  v16 = *(v1 + 56);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15 == 1)
  {
    if (v17)
    {
      *buf = 0;
      v18 = "#I Allowing ARI reset requests";
LABEL_38:
      _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    }
  }

  else if (v17)
  {
    *buf = 0;
    v18 = "#I Ignoring ARI reset requests";
    goto LABEL_38;
  }

  v19 = *(v1 + 32);
  if (!v19 || (v20 = *(v1 + 24), (v21 = std::__shared_weak_count::lock(v19)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v21;
  p_shared_weak_owners = &v21->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v22);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E491E0;
  *(v24 + 1) = v20;
  *(v24 + 2) = v22;
  *(v24 + 3) = v1;
  v28 = v24;
  AriHostRt::RegisterBasebandResetDelegate();
  if (v28 == &v27)
  {
    (*(*v28 + 32))(v28);
  }

  else if (v28)
  {
    (*(*v28 + 40))(v28);
  }

  std::__shared_weak_count::__release_weak(v22);
}

void sub_297594254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t ARITransportService::engage(ARITransportService *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN19ARITransportService6engageEv_block_invoke;
  v5[3] = &unk_29EE6BD28;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19ARITransportServiceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_62_0;
  block[4] = this + 24;
  block[5] = &v10;
  v2 = this + 40;
  v1 = *(this + 5);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void ___ZN19ARITransportService6engageEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 88) == 1)
  {
    v3 = *(v2 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Skipping RT init as bypass is enabled", &v10, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    return;
  }

  aBlock[5] = MEMORY[0x29EDCA5F8];
  aBlock[6] = 0x40000000;
  aBlock[7] = ___ZN19ARITransportService6engageEv_block_invoke_11;
  aBlock[8] = &__block_descriptor_tmp_12;
  aBlock[9] = v2;
  v4 = AriHostRt::Init();
  if (v4 == -92)
  {
    v10 = operator new(0x38uLL);
    v11 = xmmword_2976A28D0;
    strcpy(v10, "Failed to open transport to communicate with baseband.");
    ARITransportService::resetBaseband_sync(v2, &v10);
LABEL_12:
    if ((SHIBYTE(v11) & 0x80000000) == 0)
    {
      return;
    }

    v6 = v10;
LABEL_22:
    operator delete(v6);
    return;
  }

  if (v4)
  {
    v10 = operator new(0x28uLL);
    v11 = xmmword_29769C700;
    strcpy(v10, "Failed to initialize ARI runtime.");
    ARITransportService::resetBaseband_sync(v2, &v10);
    goto LABEL_12;
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  *(v2 + 64) = 1;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v10, *(v2 + 8));
  if (v10)
  {
    ctu::AdaptiveTimerService::getScaledTime();
    v5 = v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_18:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN19ARITransportService6engageEv_block_invoke_13;
  aBlock[3] = &__block_descriptor_tmp_16_0;
  aBlock[4] = v2;
  v7 = operator new(0x10uLL);
  v8 = _Block_copy(aBlock);
  *v7 = "Watchdog timed out";
  TelephonyBasebandWatchdogStart();
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = *(v2 + 120);
  *(v2 + 120) = v7;
  if (v9)
  {
    TelephonyBasebandWatchdogStop();
    v6 = v9;
    goto LABEL_22;
  }
}

void sub_297594738(_Unwind_Exception *a1)
{
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_297594760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19ARITransportService6engageEv_block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Received All-Ready from ARI Runtime", v3, 2u);
  }

  ARITransportService::broadcastTransportReady_sync(v1);
}

void ARITransportService::broadcastTransportReady_sync(ARITransportService *this)
{
  v17 = 0;
  v18 = 0;
  v2 = *(this + 17);
  if (!v2)
  {
    goto LABEL_19;
  }

  v18 = std::__shared_weak_count::lock(v2);
  if (!v18)
  {
    goto LABEL_19;
  }

  v3 = *(this + 16);
  v17 = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = abm::kEventTransportIsReady[0];
  v5 = strlen(abm::kEventTransportIsReady[0]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v16 = v8 | 0x8000000000000000;
    __dst[0] = v7;
  }

  else
  {
    HIBYTE(v16) = v5;
    v7 = __dst;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  memmove(v7, v4, v6);
LABEL_13:
  *(v6 + v7) = 0;
  aBlock = 0;
  cf = 0;
  Service::broadcastEvent(v3, __dst, &cf, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_19:
  v9 = *(this + 7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I ----------------- TransportIsReady event broadcasted to other modules ----------------", v12, 2u);
  }

  *(this + 16) = 2;
  v10 = *(this + 15);
  *(this + 15) = 0;
  if (v10)
  {
    TelephonyBasebandWatchdogStop();
    operator delete(v10);
  }

  v11 = v18;
  if (v18)
  {
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_2975949D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void ___ZN19ARITransportService6engageEv_block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN19ARITransportService6engageEv_block_invoke_2;
  v2[3] = &__block_descriptor_tmp_15;
  v2[4] = v1;
  ctu::SharedSynchronizable<ARITransportService>::execute_wrapped((v1 + 24), v2);
}

void ___ZN19ARITransportService6engageEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 64) != 2)
  {
    __p = operator new(0x20uLL);
    v3 = xmmword_2976A10E0;
    strcpy(__p, "Baseband ARI engage timeout");
    ARITransportService::resetBaseband_sync(v1, &__p);
    if (SHIBYTE(v3) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_297594B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ARITransportService::resetBaseband_sync(void *a1, const char *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = a1[7];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (a2[23] >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v9;
    _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
    v5 = a1[17];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a1[17];
    if (!v5)
    {
      return;
    }
  }

  v6 = std::__shared_weak_count::lock(v5);
  v27 = v6;
  if (!v6)
  {
    return;
  }

  v26 = a1[16];
  if (!v26)
  {
    goto LABEL_39;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v7) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  v10 = xpc_string_create(*MEMORY[0x29EDBEB60]);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBEB00], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = xpc_string_create(*MEMORY[0x29EDBF750]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBEEE0], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  if (a2[23] >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = xpc_string_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBED88], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = v26;
  v18 = *MEMORY[0x29EDBEAA8];
  v19 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v19 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    p_buf = operator new(v22);
    *(&buf + 1) = v20;
    v29 = v22 | 0x8000000000000000;
    *&buf = p_buf;
LABEL_34:
    memmove(p_buf, v18, v20);
    *(p_buf + v20) = 0;
    object = v8;
    if (v8)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  HIBYTE(v29) = v19;
  p_buf = &buf;
  if (v19)
  {
    goto LABEL_34;
  }

  LOBYTE(buf) = 0;
  object = v8;
  if (v8)
  {
LABEL_29:
    xpc_retain(v8);
    goto LABEL_36;
  }

LABEL_35:
  object = xpc_null_create();
LABEL_36:
  v24 = 0;
  Service::runCommand(v17, &buf, &object, &v24);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(buf);
  }

  xpc_release(v8);
  v6 = v27;
  if (v27)
  {
LABEL_39:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v23 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v23);
    }
  }
}

void sub_297594EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ARITransportService::enterLowPower(uint64_t a1, NSObject **a2)
{
  v6 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (a1 + 24);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN19ARITransportService13enterLowPowerEN8dispatch13group_sessionE_block_invoke;
  v11[3] = &__block_descriptor_tmp_25_0;
  v10 = *a2;
  v11[4] = a1;
  group = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(group);
  }

  v13 = v6;
  v14 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<ARITransportService>::execute_wrapped(v5, v11);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v9);
}

void ___ZN19ARITransportService13enterLowPowerEN8dispatch13group_sessionE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Starting ARI RT Enter LP event", buf, 2u);
  }

  *(v2 + 168) = 0;
  if (*(v2 + 167) < 0)
  {
    *(v2 + 152) = 0;
    **(v2 + 144) = 0;
    v4 = *(v2 + 96);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(v2 + 167) = 0;
    *(v2 + 144) = 0;
    v4 = *(v2 + 96);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  if (*(v2 + 104))
  {
    v5 = _Block_copy(v4);
    v6 = v5;
    v7 = *(v2 + 104);
    *buf = MEMORY[0x29EDCA5F8];
    v19 = 1174405120;
    v20 = ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJNS1_6StatusEEEEvDpT__block_invoke;
    v21 = &__block_descriptor_tmp_85_0;
    if (v5)
    {
      v8 = _Block_copy(v5);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v23 = 2;
    dispatch_async(v7, buf);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }

LABEL_15:
  v9 = dispatch_group_create();
  if (AriHostRt::SetOPMode())
  {
    v10 = *(v2 + 56);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Failed to trigger ARI RT transition", buf, 2u);
    }
  }

  else
  {
    v11 = *(v2 + 40);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN19ARITransportService13enterLowPowerEN8dispatch13group_sessionE_block_invoke_21;
    v14[3] = &__block_descriptor_tmp_22_2;
    v12 = a1[5];
    v14[4] = v2;
    group = v12;
    if (v12)
    {
      dispatch_retain(v12);
      dispatch_group_enter(group);
    }

    v13 = a1[7];
    v16 = a1[6];
    v17 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_group_notify(v9, v11, v14);
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  if (v9)
  {
    dispatch_release(v9);
  }
}

void sub_297595344(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19ARITransportService13enterLowPowerEN8dispatch13group_sessionE_block_invoke_21(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[6])
      {
        v6 = *(v3 + 56);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I ARI Runtime completed LPM enter transition", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c44_ZTSNSt3__18weak_ptrI19ARITransportServiceEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c44_ZTSNSt3__18weak_ptrI19ARITransportServiceEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

uint64_t ARITransportService::tearDown(ARITransportService *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN19ARITransportService8tearDownEv_block_invoke;
  v5[3] = &unk_29EE6BD50;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19ARITransportServiceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_62_0;
  block[4] = this + 24;
  block[5] = &v10;
  v2 = this + 40;
  v1 = *(this + 5);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void ___ZN19ARITransportService8tearDownEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 64))
  {
    ARITransportService::cancelWakeRequest_sync(*(a1 + 40));
    v3 = *(v1 + 56);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Cancelling all ARI transactions...", buf, 2u);
    }

    AriHostRt::CancelAllTransactions(v4);
    v5 = *(v1 + 56);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      *v10 = 0;
      _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Tearing down ARI Runtime...", v10, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = AriHostRt::Shutdown(v6) == 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v7 = *(v1 + 56);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Ignoring tear down request as ARI transport state is already reset", v9, 2u);
    }
  }

  v8 = *(v1 + 120);
  *(v1 + 120) = 0;
  if (v8)
  {
    TelephonyBasebandWatchdogStop();
    operator delete(v8);
  }
}

void ARITransportService::exitLowPower(uint64_t a1, NSObject **a2)
{
  v6 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (a1 + 24);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN19ARITransportService12exitLowPowerEN8dispatch13group_sessionE_block_invoke;
  v11[3] = &__block_descriptor_tmp_33_0;
  v10 = *a2;
  v11[4] = a1;
  group = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(group);
  }

  v13 = v6;
  v14 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<ARITransportService>::execute_wrapped(v5, v11);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v9);
}

void ___ZN19ARITransportService12exitLowPowerEN8dispatch13group_sessionE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Starting ARI RT Exit LP event", buf, 2u);
  }

  if (*(v2 + 64) == 2)
  {
    ARITransportService::updateWakeReason_sync(v2);
    v4 = dispatch_group_create();
    if (AriHostRt::SetOPMode())
    {
      v5 = *(v2 + 56);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "Failed to trigger ARI RT transition", buf, 2u);
      }
    }

    else
    {
      v7 = *(v2 + 40);
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 1174405120;
      v10[2] = ___ZN19ARITransportService12exitLowPowerEN8dispatch13group_sessionE_block_invoke_27;
      v10[3] = &__block_descriptor_tmp_30_0;
      v8 = a1[5];
      v10[4] = v2;
      group = v8;
      if (v8)
      {
        dispatch_retain(v8);
        dispatch_group_enter(group);
      }

      v9 = a1[7];
      v12 = a1[6];
      v13 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      dispatch_group_notify(v4, v7, v10);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }
    }

    if (v4)
    {
      dispatch_release(v4);
    }
  }

  else
  {
    v6 = *(v2 + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Skipping Exit LPM as baseband ready is pending", buf, 2u);
    }
  }
}

void sub_297595A64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ARITransportService::updateWakeReason_sync(ARITransportService *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = (this + 144);
  if ((*(this + 167) & 0x80000000) == 0)
  {
    SystemWakeReason = TelephonyUtilGetSystemWakeReason();
    v4 = *(this + 7);
    if (SystemWakeReason)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6) = 0;
      _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch system wake reason", &v6, 2u);
      if (!*(this + 12))
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!*(this + 12))
    {
      return;
    }

    goto LABEL_11;
  }

  v5 = TelephonyUtilGetSystemWakeReason();
  v4 = *(this + 7);
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  if (*(this + 167) < 0)
  {
    v2 = *v2;
  }

  v6 = 136315138;
  v7 = v2;
  _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I System wake reason: %s", &v6, 0xCu);
  if (*(this + 12))
  {
LABEL_11:
    if (*(this + 13))
    {
      ARITransportService::getWakeReason_sync(this, 2);
    }
  }
}

void ___ZN19ARITransportService12exitLowPowerEN8dispatch13group_sessionE_block_invoke_27(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[6])
      {
        v6 = *(v3 + 56);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I ARI Runtime completed LPM exit transition", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ARITransportService::dumpState(ARITransportService *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19ARITransportServiceE20execute_wrapped_syncIZNS1_9dumpStateEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_86;
  block[4] = this + 24;
  block[5] = &v3;
  v2 = this + 40;
  v1 = *(this + 5);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ARITransportService::reportPowerDownMessages_sync(ARITransportService *this)
{
  v2 = xpc_array_create(0, 0);
  v3 = MEMORY[0x29EDCA9E0];
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v2) == v3)
    {
      xpc_retain(v2);
      v4 = v2;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  if (MEMORY[0x29C272BA0](v4) != v3)
  {
    goto LABEL_8;
  }

  if (!xpc_array_get_count(v4))
  {
    goto LABEL_8;
  }

  v5 = *(this + 17);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = std::__shared_weak_count::lock(v5);
  v23 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v22 = *(this + 16);
  if (!v22)
  {
LABEL_37:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v17 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v17);
    }

    goto LABEL_8;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v7) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  if (v4)
  {
    xpc_retain(v4);
    v9 = v4;
  }

  else
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, abm::kKeyPowerDownMessageList[0], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = v22;
  v12 = abm::kCommandSetPowerDownMessageList[0];
  v13 = strlen(abm::kCommandSetPowerDownMessageList[0]);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __dst[1] = v14;
    v21 = v16 | 0x8000000000000000;
    __dst[0] = v15;
    goto LABEL_30;
  }

  HIBYTE(v21) = v13;
  v15 = __dst;
  if (v13)
  {
LABEL_30:
    memmove(v15, v12, v14);
  }

  *(v14 + v15) = 0;
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  v18 = 0;
  Service::runCommand(v11, __dst, &object, &v18);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(v8);
  v6 = v23;
  if (v23)
  {
    goto LABEL_37;
  }

LABEL_8:
  xpc_release(v4);
}

void sub_297596020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  xpc_release(v18);
  _Unwind_Resume(a1);
}

uint64_t ARITransportService::enableBypass(ARITransportService *this, char a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = ___ZN19ARITransportService12enableBypassEb_block_invoke;
  v6[3] = &unk_29EE6BD78;
  v7 = a2;
  v6[4] = &v8;
  v6[5] = this;
  v12 = v6;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19ARITransportServiceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_62_0;
  block[4] = this + 24;
  block[5] = &v12;
  v3 = this + 40;
  v2 = *(this + 5);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }

  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t ___ZN19ARITransportService12enableBypassEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  *(v2 + 88) = v3;
  v4 = *(v2 + 56);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Bypass enable", buf, 2u);
    }

    result = AriHostRt::Shutdown(v5);
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Bypass disable", v7, 2u);
    }

    result = AriHostRt::Init("ABMRT/PCIe/ARI", 1);
  }

  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

void ARITransportService::registerForWakeReason(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN19ARITransportService21registerForWakeReasonEN8dispatch8callbackIU13block_pointerFv10WakeReasonEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_35_2;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<ARITransportService>::execute_wrapped((a1 + 24), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN19ARITransportService21registerForWakeReasonEN8dispatch8callbackIU13block_pointerFv10WakeReasonEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 104);
  *(v3 + 104) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void __copy_helper_block_e8_40c57_ZTSN8dispatch8callbackIU13block_pointerFv10WakeReasonEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c57_ZTSN8dispatch8callbackIU13block_pointerFv10WakeReasonEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ARITransportService::getWakeReason_sync(ARITransportService *this, int a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = *(this + 4);
  if (!v3 || (v5 = *(this + 3), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *(this + 7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *(this + 7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    --a2;
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I Sending request to get wake reason. Remaining-attempts=%u", buf, 8u);
  }

LABEL_6:
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v9 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v10 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(buf, v9);
    v11 = *buf;
    memset(buf, 0, sizeof(buf));
    v12 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v10 = off_2A18CADD8;
  }

  v14 = *(&off_2A18CADD8 + 1);
  v25 = v10;
  v26 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v10 + 16))(&v27, v10);
  v29 = 0;
  v30 = 0;
  if (v28)
  {
    v30 = std::__shared_weak_count::lock(v28);
    if (v30)
    {
      v29 = v27;
    }

    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v29;
    if (v29)
    {
LABEL_24:
      v20[0] = MEMORY[0x29EDCA5F8];
      v20[1] = 1174405120;
      v20[2] = ___ZN19ARITransportService18getWakeReason_syncEj_block_invoke;
      v20[3] = &__block_descriptor_tmp_40_3;
      v20[4] = this;
      v20[5] = v5;
      v21 = v7;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v22 = a2;
      v16 = _Block_copy(v20);
      v17 = *(this + 5);
      if (v17)
      {
        dispatch_retain(v17);
      }

      aBlock = v16;
      object = v17;
      (*(*v15 + 88))(v15, &aBlock);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
        v18 = v30;
        if (!v30)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }

LABEL_37:
      v18 = v30;
      if (!v30)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v15 = v29;
    if (v29)
    {
      goto LABEL_24;
    }
  }

  v19 = *(this + 7);
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_37;
  }

  *buf = 0;
  _os_log_error_impl(&dword_297476000, v19, OS_LOG_TYPE_ERROR, "Failed to get radio command driver!", buf, 2u);
  v18 = v30;
  if (!v30)
  {
    goto LABEL_40;
  }

LABEL_38:
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_40:
  std::__shared_weak_count::__release_weak(v7);
}

void sub_2975968A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(a1);
}

void ___ZN19ARITransportService18getWakeReason_syncEj_block_invoke(uint64_t a1, void *a2, ctu **a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = std::__shared_weak_count::lock(v4);
    v48 = v8;
    if (v8)
    {
      if (!*(a1 + 40))
      {
LABEL_80:
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v41 = v8;
          (v8->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v41);
        }

        return;
      }

      xdict = 0xAAAAAAAAAAAAAAAALL;
      v9 = xpc_dictionary_create(0, 0, 0);
      v10 = v9;
      if (v9)
      {
        xdict = v9;
      }

      else
      {
        v10 = xpc_null_create();
        xdict = v10;
        if (!v10)
        {
          v11 = xpc_null_create();
          v10 = 0;
          goto LABEL_11;
        }
      }

      if (MEMORY[0x29C272BA0](v10) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v10);
        goto LABEL_12;
      }

      v11 = xpc_null_create();
LABEL_11:
      xdict = v11;
LABEL_12:
      xpc_release(v10);
      v13 = capabilities::radio::initium(v12);
      v14 = MEMORY[0x29EDBE7D0];
      if (!v13)
      {
        v14 = MEMORY[0x29EDBE7C8];
      }

      v15 = xpc_string_create(*v14);
      if (!v15)
      {
        v15 = xpc_null_create();
      }

      xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE848], v15);
      v16 = xpc_null_create();
      xpc_release(v15);
      xpc_release(v16);
      v17 = (v7 + 144);
      if (*(v7 + 167) < 0)
      {
        v17 = *v17;
      }

      v18 = xpc_string_create(v17);
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEA28], v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
      v20 = xpc_BOOL_create(*(v7 + 168));
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF4F8], v20);
      v21 = xpc_null_create();
      xpc_release(v20);
      xpc_release(v21);
      if (*a2 || !*a3)
      {
        v23 = *(a1 + 56);
        if (v23)
        {
          v24 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(v7 + 40));
          v25 = *(v7 + 112);
          *(v7 + 112) = v24;
          if (v25)
          {
            dispatch_release(v25);
            v24 = *(v7 + 112);
          }

          if (v24)
          {
            v26 = dispatch_time(0, 1000000000);
            dispatch_source_set_timer(v24, v26, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
            v27 = *(v7 + 112);
            handler[0] = MEMORY[0x29EDCA5F8];
            handler[1] = 1174405120;
            handler[2] = ___ZN19ARITransportService18getWakeReason_syncEj_block_invoke_2;
            handler[3] = &__block_descriptor_tmp_36_2;
            v29 = *(a1 + 40);
            v28 = *(a1 + 48);
            handler[4] = v7;
            handler[5] = v29;
            v43 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v44 = *(a1 + 56);
            dispatch_source_set_event_handler(v27, handler);
            dispatch_activate(*(v7 + 112));
            if (v43)
            {
              std::__shared_weak_count::__release_weak(v43);
            }
          }

LABEL_79:
          xpc_release(xdict);
          v8 = v48;
          if (!v48)
          {
            return;
          }

          goto LABEL_80;
        }
      }

      else
      {
        if (*(v7 + 96) && *(v7 + 104))
        {
          ctu::cf_to_xpc(&object, *a3, v22);
          v30 = object;
          if (object && MEMORY[0x29C272BA0](object) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v30);
          }

          else
          {
            v30 = xpc_null_create();
          }

          xpc_release(object);
          v45 = v30;
          if (v30)
          {
            xpc_retain(v30);
          }

          else
          {
            v45 = xpc_null_create();
          }

          abm::ParseWakeDataIce(&v45, &xdict);
          xpc_release(v45);
          v45 = 0;
          xpc_release(v30);
        }

        v23 = 1;
      }

      if (*(v7 + 96) && *(v7 + 104))
      {
        v31 = *(v7 + 167);
        if (v31 < 0)
        {
          v31 = *(v7 + 152);
        }

        if (((v31 == 0) & ~v23) != 0)
        {
          v32 = xpc_null_create();
          v33 = *(v7 + 96);
          if (v33)
          {
            v34 = _Block_copy(v33);
          }

          else
          {
            v34 = 0;
          }

          v37 = *(v7 + 104);
          object = MEMORY[0x29EDCA5F8];
          v50 = 1174405120;
          v51 = ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJS1_EEEvDpT__block_invoke;
          v52 = &__block_descriptor_tmp_87;
          if (v34)
          {
            v38 = _Block_copy(v34);
          }

          else
          {
            v38 = 0;
          }

          aBlock = v38;
          v54 = 4;
          v55 = v32;
          if (v32)
          {
            xpc_retain(v32);
          }

          else
          {
            v55 = xpc_null_create();
          }

          dispatch_async(v37, &object);
          xpc_release(v55);
          v55 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v34)
          {
            _Block_release(v34);
          }
        }

        else
        {
          v32 = xdict;
          if (xdict)
          {
            xpc_retain(xdict);
          }

          else
          {
            v32 = xpc_null_create();
          }

          v35 = *(v7 + 96);
          if (v35)
          {
            v36 = _Block_copy(v35);
          }

          else
          {
            v36 = 0;
          }

          v39 = *(v7 + 104);
          object = MEMORY[0x29EDCA5F8];
          v50 = 1174405120;
          v51 = ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJS1_EEEvDpT__block_invoke;
          v52 = &__block_descriptor_tmp_87;
          if (v36)
          {
            v40 = _Block_copy(v36);
          }

          else
          {
            v40 = 0;
          }

          aBlock = v40;
          v54 = 3;
          v55 = v32;
          if (v32)
          {
            xpc_retain(v32);
          }

          else
          {
            v55 = xpc_null_create();
          }

          dispatch_async(v39, &object);
          xpc_release(v55);
          v55 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v36)
          {
            _Block_release(v36);
          }
        }

        xpc_release(v32);
      }

      goto LABEL_79;
    }
  }
}

void sub_297596F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, xpc_object_t a19, ...)
{
  va_start(va, a19);
  xpc_release(object);
  xpc_release(v19);
  xpc_release(a19);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN19ARITransportService18getWakeReason_syncEj_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        dispatch_source_cancel(v3[14]);
        v6 = v3[14];
        v3[14] = 0;
        if (v6)
        {
          dispatch_release(v6);
        }

        ARITransportService::getWakeReason_sync(v3, *(a1 + 56));
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrI19ARITransportServiceEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrI19ARITransportServiceEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t ARITransportService::shouldTeardownOnWillReset(ARITransportService *this)
{
  if (capabilities::coredump::supportsSPMISignalling(this))
  {
    return 1;
  }

  return MEMORY[0x2A1C6EE68]();
}

void std::__shared_ptr_emplace<ARITransportService>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E49190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void **std::unique_ptr<support::misc::Watchdog>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TelephonyBasebandWatchdogStop();
    operator delete(v2);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZZN19ARITransportService4initEvEUb_E3__0NS_9allocatorIS3_EEFvN9AriHostRt20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS4_IcEEEEijEED1Ev(uint64_t result)
{
  *result = &unk_2A1E491E0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN19ARITransportService4initEvEUb_E3__0NS_9allocatorIS3_EEFvN9AriHostRt20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS4_IcEEEEijEED0Ev(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E491E0;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZZN19ARITransportService4initEvEUb_E3__0NS_9allocatorIS3_EEFvN9AriHostRt20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS4_IcEEEEijEE7__cloneEv(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E491E0;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *_ZNKSt3__110__function6__funcIZZN19ARITransportService4initEvEUb_E3__0NS_9allocatorIS3_EEFvN9AriHostRt20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS4_IcEEEEijEE7__cloneEPNS0_6__baseISD_EE(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E491E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}