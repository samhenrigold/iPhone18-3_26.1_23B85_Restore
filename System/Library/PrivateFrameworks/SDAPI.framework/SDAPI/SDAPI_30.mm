void sub_262713430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (LOBYTE(STACK[0x470]) == 1 && a20 != v20 && a20 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void *TGrammarManager2::search(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{
  a1[8] = a5;
  v8 = *(a1[5] + 56);
  v90[0] = &unk_287526DC0;
  v90[1] = a2;
  v90[2] = a3;
  v90[3] = a4;
  v90[4] = v8;
  v9 = a1[7];
  ActiveConfigHandle = TParam::getActiveConfigHandle((v9 + 18256));
  v11 = *(v9 + TParam::getValidConfig((v9 + 18256), ActiveConfigHandle) + 18408);
  v12 = a1[6];
  v12[8] = v11;
  (*(*v12 + 16))(v12);
  v13 = a1[7];
  v14 = TParam::getActiveConfigHandle((v13 + 4040));
  v15 = *(v13 + 4 * TParam::getValidConfig((v13 + 4040), v14) + 4200);
  v16 = a1[6];
  v17 = *(v16 + 16);
  *(v16 + 24) = v15;
  (*(v17 + 16))();
  AllProductions = TParser::getAllProductions(a1[6], v90);
  TAllocator::TAllocator(v89, 2048);
  if (AllProductions)
  {
    v78 = 0;
    v20 = a2;
    while (1)
    {
      if (TGrammarCompiler::getAttributeValue(AllProductions, dword_26288A894, v89, 0) > 1)
      {
        goto LABEL_57;
      }

      v21 = v19;
      if (*v19)
      {
        LOBYTE(v80[0]) = 0;
        {
          operator new();
        }

        v22 = TLocaleInfo::stringToFloat(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v21, v80);
        if (LOBYTE(v80[0]) == 1)
        {
          loggableUnicode(v21, &__p);
          p_p = &__p;
          if (SHIBYTE(v84[0].__locale_) < 0)
          {
            p_p = __p;
          }

          tknPrintf("Error: 'priority' was '%s'. Expected a double-precision value.\n", v23, p_p);
          goto LABEL_10;
        }

        v25 = v22;
      }

      else
      {
        v25 = 0.0;
      }

      if (TGrammarCompiler::getAttributeValue(AllProductions, dword_26288A8B8, v89, 0) > 1)
      {
        goto LABEL_57;
      }

      v26 = v19;
      if (!*v19)
      {
        tknPrintString("Error: 'result' was ''. Ignored production.\n");
        goto LABEL_57;
      }

      v27 = AllProductions[2];
      LOBYTE(v80[0]) = 0;
      AttributeValue = TGrammarCompiler::getAttributeValue(AllProductions, dword_26288A8D4, v89, v80);
      v30 = 0;
      if (LOBYTE(v80[0]) != 1 || AttributeValue > 1)
      {
        goto LABEL_25;
      }

      v31 = v29;
      v88 = 0;
      {
        operator new();
      }

      v32 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v31, &v88);
      if (!v88)
      {
        v30 = v32;
        if (v27 <= v32)
        {
          loggableUnicode(v31, &__p);
          v52 = &__p;
          if (SHIBYTE(v84[0].__locale_) < 0)
          {
            v52 = __p;
          }

          tknPrintf("Error: 'resultStart' was '%s'. Expected an integer value in the range [0,%lld).\n", v51, v52, v27);
          goto LABEL_52;
        }

LABEL_25:
        LOBYTE(v80[0]) = 0;
        v35 = TGrammarCompiler::getAttributeValue(AllProductions, dword_26288A904, v89, v80);
        v37 = 0;
        if (LOBYTE(v80[0]) != 1 || v35 > 1)
        {
LABEL_34:
          LMScore = TGrammarManager2::getLMScore(a1, v26, v20, v30 + a3, v27 - (v30 + v37));
          v43 = v78;
          if (v78 <= LMScore)
          {
            v43 = LMScore;
          }

          v78 = v43;
          v44 = a6[1];
          v45 = a6[2];
          if (v44 >= v45)
          {
            v47 = 0x6DB6DB6DB6DB6DB7 * ((v44 - *a6) >> 3);
            v48 = v47 + 1;
            if ((v47 + 1) > 0x492492492492492)
            {
              std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
            }

            v49 = 0x6DB6DB6DB6DB6DB7 * ((v45 - *a6) >> 3);
            if (2 * v49 > v48)
            {
              v48 = 2 * v49;
            }

            if (v49 >= 0x249249249249249)
            {
              v50 = 0x492492492492492;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<TGrammarManager2Result>>(a6, v50);
            }

            v55 = 56 * v47;
            *v55 = AllProductions;
            *(v55 + 8) = v26;
            *(v55 + 16) = v27;
            *(v55 + 24) = v30;
            *(v55 + 32) = v37;
            *(v55 + 40) = v25;
            *(v55 + 48) = LMScore;
            v46 = (56 * v47 + 56);
            v56 = a6[1] - *a6;
            v57 = (v55 - v56);
            memcpy((v55 - v56), *a6, v56);
            v58 = *a6;
            *a6 = v57;
            a6[1] = v46;
            a6[2] = 0;
            if (v58)
            {
              operator delete(v58);
            }
          }

          else
          {
            *v44 = AllProductions;
            *(v44 + 1) = v26;
            *(v44 + 2) = v27;
            *(v44 + 3) = v30;
            *(v44 + 4) = v37;
            *(v44 + 5) = v25;
            v46 = v44 + 56;
            *(v44 + 12) = LMScore;
          }

          a6[1] = v46;
          v20 = a2;
          goto LABEL_57;
        }

        v38 = v36;
        v88 = 0;
        {
          operator new();
        }

        v39 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v38, &v88);
        if (!v88)
        {
          if (v30 < v39)
          {
            v37 = v27 - v39;
            if (v27 >= v39)
            {
              goto LABEL_34;
            }
          }

          loggableUnicode(v38, &__p);
          v54 = &__p;
          if (SHIBYTE(v84[0].__locale_) < 0)
          {
            v54 = __p;
          }

          tknPrintf("Error: 'resultEnd' was '%s'. Expected an integer value in the range (%lld,%lld).\n", v53, v54, v30, v27);
LABEL_52:
          if ((SHIBYTE(v84[0].__locale_) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

LABEL_11:
          operator delete(__p);
          goto LABEL_57;
        }

        loggableUnicode(v38, &__p);
        v41 = &__p;
        if (SHIBYTE(v84[0].__locale_) < 0)
        {
          v41 = __p;
        }

        tknPrintf("Error: 'resultEnd' was '%s'. Expected an integer value.\n", v40, v41);
        goto LABEL_10;
      }

      loggableUnicode(v31, &__p);
      v34 = &__p;
      if (SHIBYTE(v84[0].__locale_) < 0)
      {
        v34 = __p;
      }

      tknPrintf("Error: 'resultStart' was '%s'. Expected an integer value.\n", v33, v34);
LABEL_10:
      if (SHIBYTE(v84[0].__locale_) < 0)
      {
        goto LABEL_11;
      }

LABEL_57:
      AllProductions = *AllProductions;
      if (!AllProductions)
      {
        v59 = (v78 + 1);
        goto LABEL_66;
      }
    }
  }

  v59 = 1.0;
  v20 = a2;
LABEL_66:
  if (*(a1 + 24) == 1)
  {
    tknPrintf("Parse chart at index %llu:\n", v19, a3);
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    TParser::logChart(a1[6], &__p);
    std::stringbuf::str();
    if (v81 >= 0)
    {
      v60 = v80;
    }

    else
    {
      v60 = v80[0];
    }

    tknPrintString(v60);
    v20 = a2;
    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    __p = *MEMORY[0x277D82828];
    *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
    v83 = MEMORY[0x277D82878] + 16;
    if (v86 < 0)
    {
      operator delete(v85);
    }

    v83 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v84);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v87);
  }

  v61 = *a6;
  v62 = a6[1];
  v63 = *a6;
  if (*a6 != v62)
  {
    v64 = 0x6DB6DB6DB6DB6DB7 * ((v62 - v63) >> 3);
    v65 = v64 <= 1 ? 1 : 0x6DB6DB6DB6DB6DB7 * ((v62 - v63) >> 3);
    v66 = v63 + 40;
    do
    {
      v61.n128_u32[0] = *(v66 + 2);
      v61.n128_f64[0] = *v66 + v61.n128_u64[0] / v59;
      *v66 = v61.n128_u64[0];
      v66 += 56;
      --v65;
    }

    while (v65);
    __p = sortResult;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*,false>(v63, v62, &__p, 126 - 2 * __clz(v64), 1, v61);
    if (*(a1 + 8) == 1)
    {
      tknPrintString("Parse tree for word sequence:");
      if (*(*a6 + 2))
      {
        v67 = 0;
        v68 = 112 * a3 + 16;
        do
        {
          tknPrintString(" ");
          loggableUnicode(**(*v20 + v68), &__p);
          if (SHIBYTE(v84[0].__locale_) >= 0)
          {
            v69 = &__p;
          }

          else
          {
            v69 = __p;
          }

          tknPrintString(v69);
          if (SHIBYTE(v84[0].__locale_) < 0)
          {
            operator delete(__p);
          }

          ++v67;
          v68 += 112;
        }

        while (v67 < *(*a6 + 2));
      }

      tknPrintString("\n");
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      v71 = *a6;
      v70 = a6[1];
      if (v70 != *a6)
      {
        v72 = 0;
        v73 = 0;
        do
        {
          v74 = &v71[v72];
          if (*(v71 + 2) != *&v71[v72 + 2] || v71[5] != v74[5])
          {
            break;
          }

          if (*(v71 + 3) == *&v71[v72 + 3] && *(v71 + 4) == *&v71[v72 + 4])
          {
            TParser::logTree(a1[6], *v74, &__p);
            std::stringbuf::str();
            if (v81 >= 0)
            {
              v75 = v80;
            }

            else
            {
              v75 = v80[0];
            }

            tknPrintString(v75);
            if (v81 < 0)
            {
              operator delete(v80[0]);
            }

            v71 = *a6;
            v70 = a6[1];
          }

          ++v73;
          v72 += 7;
        }

        while (v73 < 0x6DB6DB6DB6DB6DB7 * ((v70 - v71) >> 3));
      }

      __p = *MEMORY[0x277D82828];
      *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
      v83 = MEMORY[0x277D82878] + 16;
      if (v86 < 0)
      {
        operator delete(v85);
      }

      v83 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v84);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v87);
    }
  }

  return TAllocator::clear(v89);
}

void sub_262713FE4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  MEMORY[0x26672B1B0](v28, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  TAllocator::clear((v29 - 184));
  _Unwind_Resume(a1);
}

BOOL sortResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = v2 == v3;
  v5 = v2 > v3;
  if (v4)
  {
    return *(a1 + 40) < *(a2 + 40);
  }

  else
  {
    return v5;
  }
}

{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = v2 == v3;
  v5 = v2 > v3;
  if (v4)
  {
    return *(a1 + 40) < *(a2 + 40);
  }

  else
  {
    return v5;
  }
}

BOOL TWordVerifier::verifyTerminal(uint64_t a1, unsigned int *a2, char a3, std::string *a4)
{
  MEMORY[0x26672AEC0](a4, &byte_262899963);
  if (a3)
  {
    return 0;
  }

  v9 = TLexicon::checkName(*(a1 + 8), a2, 1, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v9 != 0;
  if (v9)
  {
    loggableUnicode(a2, __p);
    if (v15 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    MEMORY[0x26672AEC0](a4, v10);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = " is an invalid token name.";
LABEL_10:
    std::string::append(a4, v11);
    return v8;
  }

  if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(*(a1 + 8), a2))
  {
    loggableUnicode(a2, __p);
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    MEMORY[0x26672AEC0](a4, v13);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = " isn't lexicalized.";
    goto LABEL_10;
  }

  return 0;
}

void sub_26271428C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TGrammarManager2Result>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*,false>(__int128 *a1, char *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = (a2 - 56);
  v158 = (a2 - 112);
  v10 = a2 - 168;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        if ((*a3)((a2 - 56), v11))
        {
          goto LABEL_75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v123 = (*a3)((v11 + 56), v11);
      v124 = (*a3)(v11 + 7, (v11 + 56));
      if (v123)
      {
        if (v124)
        {
          v264 = *(v11 + 6);
          v210 = v11[1];
          v237 = v11[2];
          v183 = *v11;
          v125 = v11[8];
          *v11 = v11[7];
          v11[1] = v125;
          v11[2] = v11[9];
          *(v11 + 12) = *(v11 + 40);
          *(v11 + 40) = v264;
          v11[8] = v210;
          v11[9] = v237;
          v11[7] = v183;
        }

        else
        {
          v266 = *(v11 + 6);
          v212 = v11[1];
          v239 = v11[2];
          v185 = *v11;
          v139 = *(v11 + 72);
          *v11 = *(v11 + 56);
          v11[1] = v139;
          v11[2] = *(v11 + 88);
          *(v11 + 12) = *(v11 + 26);
          *(v11 + 26) = v266;
          *(v11 + 88) = v239;
          *(v11 + 72) = v212;
          *(v11 + 56) = v185;
          if ((*a3)(v11 + 7, (v11 + 56)))
          {
            v140 = *(v11 + 13);
            v141 = *(v11 + 88);
            v142 = *(v11 + 56);
            v143 = v11[8];
            *(v11 + 56) = v11[7];
            v144 = *(v11 + 72);
            *(v11 + 72) = v143;
            *(v11 + 88) = v11[9];
            *(v11 + 26) = *(v11 + 40);
            v11[7] = v142;
            v11[8] = v144;
            v11[9] = v141;
            *(v11 + 40) = v140;
          }
        }
      }

      else if (v124)
      {
        v133 = *(v11 + 13);
        v134 = *(v11 + 88);
        v135 = *(v11 + 56);
        v136 = v11[8];
        *(v11 + 56) = v11[7];
        v137 = *(v11 + 72);
        *(v11 + 72) = v136;
        *(v11 + 88) = v11[9];
        *(v11 + 26) = *(v11 + 40);
        v11[7] = v135;
        v11[8] = v137;
        v11[9] = v134;
        *(v11 + 40) = v133;
        if ((*a3)((v11 + 56), v11))
        {
          v265 = *(v11 + 6);
          v211 = v11[1];
          v238 = v11[2];
          v184 = *v11;
          v138 = *(v11 + 72);
          *v11 = *(v11 + 56);
          v11[1] = v138;
          v11[2] = *(v11 + 88);
          *(v11 + 12) = *(v11 + 26);
          *(v11 + 26) = v265;
          *(v11 + 88) = v238;
          *(v11 + 72) = v211;
          *(v11 + 56) = v184;
        }
      }

      if (!(*a3)(v9, v11 + 7))
      {
        return result;
      }

      v146 = v11[8];
      v145 = v11[9];
      v147 = v11[7];
      v148 = *(v11 + 20);
      v150 = *(v9 + 16);
      v149 = *(v9 + 32);
      v151 = *v9;
      *(v11 + 40) = *(v9 + 48);
      v11[8] = v150;
      v11[9] = v149;
      v11[7] = v151;
      *(v9 + 48) = v148;
      *v9 = v147;
      *(v9 + 16) = v146;
      *(v9 + 32) = v145;
      if (!(*a3)(v11 + 7, (v11 + 56)))
      {
        return result;
      }

      v152 = *(v11 + 13);
      v153 = *(v11 + 88);
      v154 = *(v11 + 56);
      v155 = v11[8];
      *(v11 + 56) = v11[7];
      v156 = *(v11 + 72);
      *(v11 + 72) = v155;
      *(v11 + 88) = v11[9];
      *(v11 + 26) = *(v11 + 40);
      v11[7] = v154;
      v11[8] = v156;
      v11[9] = v153;
      *(v11 + 40) = v152;
LABEL_100:
      if ((*a3)((v11 + 56), v11))
      {
        v267 = *(v11 + 6);
        v213 = v11[1];
        v240 = v11[2];
        v186 = *v11;
        v157 = *(v11 + 72);
        *v11 = *(v11 + 56);
        v11[1] = v157;
        v11[2] = *(v11 + 88);
        *(v11 + 12) = *(v11 + 26);
        result = v186;
        *(v11 + 26) = v267;
        *(v11 + 88) = v240;
        *(v11 + 72) = v213;
        *(v11 + 56) = v186;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*,0>(v11, (v11 + 56), v11 + 7, (v11 + 168), (a2 - 56), a3).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v14 <= 1343)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*,TGrammarManager2Result*>(v11, a2, a2, a3, result);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = v11 + 56 * (v15 >> 1);
    v18 = *a3;
    if (v14 >= 0x1C01)
    {
      v19 = v18(v17, v11);
      v20 = (*a3)((a2 - 56), v17);
      if (v19)
      {
        if (v20)
        {
          v241 = *(a1 + 6);
          v187 = a1[1];
          v214 = a1[2];
          v160 = *a1;
          v21 = *v9;
          v22 = *(a2 - 40);
          v23 = *(a2 - 24);
          *(a1 + 12) = *(a2 - 2);
          a1[1] = v22;
          a1[2] = v23;
          *a1 = v21;
          goto LABEL_27;
        }

        v247 = *(a1 + 6);
        v193 = a1[1];
        v220 = a1[2];
        v166 = *a1;
        v41 = *v17;
        v42 = *(v17 + 16);
        v43 = *(v17 + 32);
        *(a1 + 12) = *(v17 + 48);
        a1[1] = v42;
        a1[2] = v43;
        *a1 = v41;
        *(v17 + 48) = v247;
        *(v17 + 16) = v193;
        *(v17 + 32) = v220;
        *v17 = v166;
        if ((*a3)((a2 - 56), v17))
        {
          v241 = *(v17 + 48);
          v187 = *(v17 + 16);
          v214 = *(v17 + 32);
          v160 = *v17;
          v44 = *v9;
          v45 = *(a2 - 40);
          v46 = *(a2 - 24);
          *(v17 + 48) = *(a2 - 2);
          *(v17 + 16) = v45;
          *(v17 + 32) = v46;
          *v17 = v44;
LABEL_27:
          *v9 = v160;
          *(a2 - 40) = v187;
          *(a2 - 24) = v214;
          *(a2 - 2) = v241;
        }
      }

      else if (v20)
      {
        v243 = *(v17 + 48);
        v189 = *(v17 + 16);
        v216 = *(v17 + 32);
        v162 = *v17;
        v29 = *v9;
        v30 = *(a2 - 40);
        v31 = *(a2 - 24);
        *(v17 + 48) = *(a2 - 2);
        *(v17 + 16) = v30;
        *(v17 + 32) = v31;
        *v17 = v29;
        *v9 = v162;
        *(a2 - 40) = v189;
        *(a2 - 24) = v216;
        *(a2 - 2) = v243;
        if ((*a3)(v17, a1))
        {
          v244 = *(a1 + 6);
          v190 = a1[1];
          v217 = a1[2];
          v163 = *a1;
          v32 = *v17;
          v33 = *(v17 + 16);
          v34 = *(v17 + 32);
          *(a1 + 12) = *(v17 + 48);
          a1[1] = v33;
          a1[2] = v34;
          *a1 = v32;
          *(v17 + 48) = v244;
          *(v17 + 16) = v190;
          *(v17 + 32) = v217;
          *v17 = v163;
        }
      }

      v47 = a1 + 56 * v16 - 56;
      v48 = (*a3)(v47, (a1 + 56));
      v49 = (*a3)(v158, v47);
      if (v48)
      {
        if (v49)
        {
          v50 = *(a1 + 88);
          v51 = *(a1 + 72);
          v52 = *(a1 + 56);
          v53 = *(a1 + 13);
          v55 = *(a2 - 6);
          v54 = *(a2 - 5);
          v56 = *(a2 - 16);
          *(a1 + 56) = *v158;
          *(a1 + 26) = v56;
          *(a1 + 88) = v54;
          *(a1 + 72) = v55;
          *(a2 - 16) = v53;
          *v158 = v52;
          *(a2 - 6) = v51;
          *(a2 - 5) = v50;
        }

        else
        {
          v170 = *(a1 + 56);
          v197 = *(a1 + 72);
          v224 = *(a1 + 88);
          v251 = *(a1 + 13);
          v69 = *(a1 + 14 * v16 - 2);
          v71 = *(a1 + 56 * v16 - 40);
          v70 = *(a1 + 56 * v16 - 24);
          *(a1 + 56) = *v47;
          *(a1 + 72) = v71;
          *(a1 + 88) = v70;
          *(a1 + 26) = v69;
          *(a1 + 56 * v16 - 40) = v197;
          *(a1 + 56 * v16 - 24) = v224;
          *(a1 + 14 * v16 - 2) = v251;
          *v47 = v170;
          if ((*a3)(v158, (a1 + 56 * v16 - 56)))
          {
            v252 = *(a1 + 7 * v16 - 1);
            v198 = *(a1 + 56 * v16 - 40);
            v225 = *(a1 + 56 * v16 - 24);
            v171 = *v47;
            v72 = *v158;
            v73 = *(a2 - 6);
            v74 = *(a2 - 5);
            *(a1 + 14 * v16 - 2) = *(a2 - 16);
            *(a1 + 56 * v16 - 40) = v73;
            *(a1 + 56 * v16 - 24) = v74;
            *v47 = v72;
            *v158 = v171;
            *(a2 - 6) = v198;
            *(a2 - 5) = v225;
            *(a2 - 16) = v252;
          }
        }
      }

      else if (v49)
      {
        v248 = *(a1 + 7 * v16 - 1);
        v194 = *(a1 + 56 * v16 - 40);
        v221 = *(a1 + 56 * v16 - 24);
        v167 = *v47;
        v57 = *v158;
        v58 = *(a2 - 6);
        v59 = *(a2 - 5);
        *(a1 + 14 * v16 - 2) = *(a2 - 16);
        *(a1 + 56 * v16 - 40) = v58;
        *(a1 + 56 * v16 - 24) = v59;
        *v47 = v57;
        *v158 = v167;
        *(a2 - 6) = v194;
        *(a2 - 5) = v221;
        *(a2 - 16) = v248;
        if ((*a3)((a1 + 56 * v16 - 56), (a1 + 56)))
        {
          v168 = *(a1 + 56);
          v195 = *(a1 + 72);
          v222 = *(a1 + 88);
          v249 = *(a1 + 13);
          v60 = *(a1 + 14 * v16 - 2);
          v62 = *(a1 + 56 * v16 - 40);
          v61 = *(a1 + 56 * v16 - 24);
          *(a1 + 56) = *v47;
          *(a1 + 72) = v62;
          *(a1 + 88) = v61;
          *(a1 + 26) = v60;
          *(a1 + 56 * v16 - 40) = v195;
          *(a1 + 56 * v16 - 24) = v222;
          *(a1 + 14 * v16 - 2) = v249;
          *v47 = v168;
        }
      }

      v75 = a1 + 56 * v16;
      v76 = (*a3)((v75 + 56), a1 + 7);
      v77 = (*a3)((a2 - 168), (v75 + 56));
      if (v76)
      {
        if (v77)
        {
          v79 = a1[8];
          v78 = a1[9];
          v80 = a1[7];
          v81 = *(a1 + 20);
          v83 = *(a2 - 152);
          v82 = *(a2 - 136);
          v84 = *v10;
          *(a1 + 40) = *(a2 - 30);
          a1[8] = v83;
          a1[9] = v82;
          a1[7] = v84;
          *(a2 - 30) = v81;
          *v10 = v80;
          *(a2 - 152) = v79;
          *(a2 - 136) = v78;
        }

        else
        {
          v174 = a1[7];
          v201 = a1[8];
          v228 = a1[9];
          v255 = *(a1 + 20);
          v91 = *(v75 + 26);
          v92 = *(v75 + 88);
          v93 = *(v75 + 72);
          a1[7] = *(v75 + 56);
          a1[8] = v93;
          a1[9] = v92;
          *(a1 + 40) = v91;
          *(v75 + 72) = v201;
          *(v75 + 88) = v228;
          *(v75 + 26) = v255;
          *(v75 + 56) = v174;
          if ((*a3)((a2 - 168), (v75 + 56)))
          {
            v256 = *(v75 + 13);
            v202 = *(v75 + 72);
            v229 = *(v75 + 88);
            v175 = *(v75 + 56);
            v94 = *v10;
            v95 = *(a2 - 152);
            v96 = *(a2 - 136);
            *(v75 + 26) = *(a2 - 30);
            *(v75 + 88) = v96;
            *(v75 + 72) = v95;
            *(v75 + 56) = v94;
            *v10 = v175;
            *(a2 - 152) = v202;
            *(a2 - 136) = v229;
            *(a2 - 30) = v256;
          }
        }
      }

      else if (v77)
      {
        v253 = *(v75 + 13);
        v199 = *(v75 + 72);
        v226 = *(v75 + 88);
        v172 = *(v75 + 56);
        v85 = *v10;
        v86 = *(a2 - 152);
        v87 = *(a2 - 136);
        *(v75 + 26) = *(a2 - 30);
        *(v75 + 88) = v87;
        *(v75 + 72) = v86;
        *(v75 + 56) = v85;
        *v10 = v172;
        *(a2 - 152) = v199;
        *(a2 - 136) = v226;
        *(a2 - 30) = v253;
        if ((*a3)((v75 + 56), a1 + 7))
        {
          v173 = a1[7];
          v200 = a1[8];
          v227 = a1[9];
          v254 = *(a1 + 20);
          v88 = *(v75 + 26);
          v89 = *(v75 + 88);
          v90 = *(v75 + 72);
          a1[7] = *(v75 + 56);
          a1[8] = v90;
          a1[9] = v89;
          *(a1 + 40) = v88;
          *(v75 + 72) = v200;
          *(v75 + 88) = v227;
          *(v75 + 26) = v254;
          *(v75 + 56) = v173;
        }
      }

      v97 = (*a3)(v17, v47);
      v98 = (*a3)((v75 + 56), v17);
      if (v97)
      {
        if (v98)
        {
          v257 = *(v47 + 48);
          v203 = *(v47 + 16);
          v230 = *(v47 + 32);
          v176 = *v47;
          v99 = *(v75 + 72);
          *v47 = *(v75 + 56);
          *(v47 + 16) = v99;
          *(v47 + 32) = *(v75 + 88);
          *(v47 + 48) = *(v75 + 26);
          goto LABEL_55;
        }

        v260 = *(v47 + 48);
        v206 = *(v47 + 16);
        v233 = *(v47 + 32);
        v179 = *v47;
        v102 = *(v17 + 16);
        *v47 = *v17;
        *(v47 + 16) = v102;
        *(v47 + 32) = *(v17 + 32);
        *(v47 + 48) = *(v17 + 48);
        *(v17 + 16) = v206;
        *(v17 + 32) = v233;
        *(v17 + 48) = v260;
        *v17 = v179;
        if ((*a3)((v75 + 56), v17))
        {
          v257 = *(v17 + 48);
          v203 = *(v17 + 16);
          v230 = *(v17 + 32);
          v176 = *v17;
          v103 = *(v75 + 72);
          *v17 = *(v75 + 56);
          *(v17 + 16) = v103;
          *(v17 + 32) = *(v75 + 88);
          *(v17 + 48) = *(v75 + 26);
LABEL_55:
          *(v75 + 72) = v203;
          *(v75 + 88) = v230;
          *(v75 + 26) = v257;
          *(v75 + 56) = v176;
        }
      }

      else if (v98)
      {
        v258 = *(v17 + 48);
        v204 = *(v17 + 16);
        v231 = *(v17 + 32);
        v177 = *v17;
        v100 = *(v75 + 72);
        *v17 = *(v75 + 56);
        *(v17 + 16) = v100;
        *(v17 + 32) = *(v75 + 88);
        *(v17 + 48) = *(v75 + 26);
        *(v75 + 72) = v204;
        *(v75 + 88) = v231;
        *(v75 + 26) = v258;
        *(v75 + 56) = v177;
        if ((*a3)(v17, v47))
        {
          v259 = *(v47 + 48);
          v205 = *(v47 + 16);
          v232 = *(v47 + 32);
          v178 = *v47;
          v101 = *(v17 + 16);
          *v47 = *v17;
          *(v47 + 16) = v101;
          *(v47 + 32) = *(v17 + 32);
          *(v47 + 48) = *(v17 + 48);
          *(v17 + 16) = v205;
          *(v17 + 32) = v232;
          *(v17 + 48) = v259;
          *v17 = v178;
        }
      }

      v261 = *(a1 + 6);
      v207 = a1[1];
      v234 = a1[2];
      v180 = *a1;
      v104 = *v17;
      v105 = *(v17 + 16);
      v106 = *(v17 + 32);
      *(a1 + 12) = *(v17 + 48);
      a1[1] = v105;
      a1[2] = v106;
      *a1 = v104;
      *(v17 + 48) = v261;
      *(v17 + 16) = v207;
      *(v17 + 32) = v234;
      *v17 = v180;
      goto LABEL_57;
    }

    v24 = v18(v11, v17);
    v25 = (*a3)((a2 - 56), a1);
    if (v24)
    {
      if (v25)
      {
        v242 = *(v17 + 48);
        v188 = *(v17 + 16);
        v215 = *(v17 + 32);
        v161 = *v17;
        v26 = *v9;
        v27 = *(a2 - 40);
        v28 = *(a2 - 24);
        *(v17 + 48) = *(a2 - 2);
        *(v17 + 16) = v27;
        *(v17 + 32) = v28;
        *v17 = v26;
LABEL_36:
        *v9 = v161;
        *(a2 - 40) = v188;
        *(a2 - 24) = v215;
        *(a2 - 2) = v242;
        goto LABEL_57;
      }

      v250 = *(v17 + 48);
      v196 = *(v17 + 16);
      v223 = *(v17 + 32);
      v169 = *v17;
      v63 = *a1;
      v64 = a1[1];
      v65 = a1[2];
      *(v17 + 48) = *(a1 + 12);
      *(v17 + 16) = v64;
      *(v17 + 32) = v65;
      *v17 = v63;
      *(a1 + 12) = v250;
      a1[1] = v196;
      a1[2] = v223;
      *a1 = v169;
      if ((*a3)((a2 - 56), a1))
      {
        v242 = *(a1 + 6);
        v188 = a1[1];
        v215 = a1[2];
        v161 = *a1;
        v66 = *v9;
        v67 = *(a2 - 40);
        v68 = *(a2 - 24);
        *(a1 + 12) = *(a2 - 2);
        a1[1] = v67;
        a1[2] = v68;
        *a1 = v66;
        goto LABEL_36;
      }
    }

    else if (v25)
    {
      v245 = *(a1 + 6);
      v191 = a1[1];
      v218 = a1[2];
      v164 = *a1;
      v35 = *v9;
      v36 = *(a2 - 40);
      v37 = *(a2 - 24);
      *(a1 + 12) = *(a2 - 2);
      a1[1] = v36;
      a1[2] = v37;
      *a1 = v35;
      *v9 = v164;
      *(a2 - 40) = v191;
      *(a2 - 24) = v218;
      *(a2 - 2) = v245;
      if ((*a3)(a1, v17))
      {
        v246 = *(v17 + 48);
        v192 = *(v17 + 16);
        v219 = *(v17 + 32);
        v165 = *v17;
        v38 = *a1;
        v39 = a1[1];
        v40 = a1[2];
        *(v17 + 48) = *(a1 + 12);
        *(v17 + 16) = v39;
        *(v17 + 32) = v40;
        *v17 = v38;
        *(a1 + 12) = v246;
        a1[1] = v192;
        a1[2] = v219;
        *a1 = v165;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 56), a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TGrammarManager2Result *,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&)>(a1, a2, a3);
      goto LABEL_64;
    }

    v107 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TGrammarManager2Result *,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&)>(a1, a2, a3);
    if ((v108 & 1) == 0)
    {
      goto LABEL_62;
    }

    v109 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(a1, v107, a3);
    v11 = (v107 + 56);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>((v107 + 56), a2, a3))
    {
      a4 = -v13;
      a2 = v107;
      if (v109)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v109)
    {
LABEL_62:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*,false>(a1, v107, a3, -v13, a5 & 1);
      v11 = (v107 + 56);
LABEL_64:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  v110 = (*a3)((v11 + 56), v11);
  v111 = (*a3)(v9, (v11 + 56));
  if ((v110 & 1) == 0)
  {
    if (!v111)
    {
      return result;
    }

    v126 = *(v11 + 88);
    v127 = *(v11 + 72);
    v128 = *(v11 + 56);
    v129 = *(v11 + 13);
    v131 = *(v9 + 16);
    v130 = *(v9 + 32);
    v132 = *(v9 + 48);
    *(v11 + 56) = *v9;
    *(v11 + 26) = v132;
    *(v11 + 88) = v130;
    *(v11 + 72) = v131;
    *(v9 + 48) = v129;
    *v9 = v128;
    *(v9 + 16) = v127;
    *(v9 + 32) = v126;
    goto LABEL_100;
  }

  if (v111)
  {
LABEL_75:
    v263 = *(v11 + 6);
    v209 = v11[1];
    v236 = v11[2];
    v182 = *v11;
    v120 = *v9;
    v121 = *(v9 + 16);
    v122 = *(v9 + 32);
    *(v11 + 12) = *(v9 + 48);
    v11[1] = v121;
    v11[2] = v122;
    *v11 = v120;
    *v9 = v182;
    *(v9 + 16) = v209;
    result = v236;
    *(v9 + 32) = v236;
    *(v9 + 48) = v263;
    return result;
  }

  v262 = *(v11 + 6);
  v208 = v11[1];
  v235 = v11[2];
  v181 = *v11;
  v112 = *(v11 + 72);
  *v11 = *(v11 + 56);
  v11[1] = v112;
  v11[2] = *(v11 + 88);
  *(v11 + 12) = *(v11 + 26);
  *(v11 + 26) = v262;
  *(v11 + 88) = v235;
  *(v11 + 72) = v208;
  *(v11 + 56) = v181;
  if ((*a3)(v9, (v11 + 56)))
  {
    result = *(v11 + 88);
    v113 = *(v11 + 72);
    v114 = *(v11 + 56);
    v115 = *(v11 + 13);
    v117 = *(v9 + 16);
    v116 = *(v9 + 32);
    v118 = *(v9 + 48);
    *(v11 + 56) = *v9;
    *(v11 + 26) = v118;
    *(v11 + 88) = v116;
    *(v11 + 72) = v117;
    *(v9 + 48) = v115;
    *v9 = v114;
    *(v9 + 16) = v113;
    *(v9 + 32) = result;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t (**a6)(__int128 *, __int128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = a1[1];
      v14 = a1[2];
      v16 = *a1;
      v17 = *(a1 + 6);
      v19 = a3[1];
      v18 = a3[2];
      v20 = *a3;
      *(a1 + 12) = *(a3 + 12);
      a1[1] = v19;
      a1[2] = v18;
      *a1 = v20;
LABEL_9:
      *(a3 + 12) = v17;
      *a3 = v16;
      a3[1] = v15;
      a3[2] = v14;
      goto LABEL_10;
    }

    v36 = a1[1];
    v35 = a1[2];
    v37 = *a1;
    v38 = *(a1 + 6);
    v40 = a2[1];
    v39 = a2[2];
    v41 = *a2;
    *(a1 + 12) = *(a2 + 12);
    a1[1] = v40;
    a1[2] = v39;
    *a1 = v41;
    *(a2 + 12) = v38;
    *a2 = v37;
    a2[1] = v36;
    a2[2] = v35;
    if ((*a6)(a3, a2))
    {
      v15 = a2[1];
      v14 = a2[2];
      v16 = *a2;
      v17 = *(a2 + 6);
      v43 = a3[1];
      v42 = a3[2];
      v44 = *a3;
      *(a2 + 12) = *(a3 + 12);
      a2[1] = v43;
      a2[2] = v42;
      *a2 = v44;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v22 = a2[1];
    v21 = a2[2];
    v23 = *a2;
    v24 = *(a2 + 6);
    v26 = a3[1];
    v25 = a3[2];
    v27 = *a3;
    *(a2 + 12) = *(a3 + 12);
    a2[1] = v26;
    a2[2] = v25;
    *a2 = v27;
    *(a3 + 12) = v24;
    *a3 = v23;
    a3[1] = v22;
    a3[2] = v21;
    if ((*a6)(a2, a1))
    {
      v29 = a1[1];
      v28 = a1[2];
      v30 = *a1;
      v31 = *(a1 + 6);
      v33 = a2[1];
      v32 = a2[2];
      v34 = *a2;
      *(a1 + 12) = *(a2 + 12);
      a1[1] = v33;
      a1[2] = v32;
      *a1 = v34;
      *(a2 + 12) = v31;
      *a2 = v30;
      a2[1] = v29;
      a2[2] = v28;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v46 = a3[1];
    v45 = a3[2];
    v47 = *a3;
    v48 = *(a3 + 6);
    v50 = a4[1];
    v49 = a4[2];
    v51 = *a4;
    *(a3 + 12) = *(a4 + 12);
    a3[1] = v50;
    a3[2] = v49;
    *a3 = v51;
    *(a4 + 12) = v48;
    *a4 = v47;
    a4[1] = v46;
    a4[2] = v45;
    if ((*a6)(a3, a2))
    {
      v53 = a2[1];
      v52 = a2[2];
      v54 = *a2;
      v55 = *(a2 + 6);
      v57 = a3[1];
      v56 = a3[2];
      v58 = *a3;
      *(a2 + 12) = *(a3 + 12);
      a2[1] = v57;
      a2[2] = v56;
      *a2 = v58;
      *(a3 + 12) = v55;
      *a3 = v54;
      a3[1] = v53;
      a3[2] = v52;
      if ((*a6)(a2, a1))
      {
        v60 = a1[1];
        v59 = a1[2];
        v61 = *a1;
        v62 = *(a1 + 6);
        v64 = a2[1];
        v63 = a2[2];
        v65 = *a2;
        *(a1 + 12) = *(a2 + 12);
        a1[1] = v64;
        a1[2] = v63;
        *a1 = v65;
        *(a2 + 12) = v62;
        *a2 = v61;
        a2[1] = v60;
        a2[2] = v59;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v68 = a4[1];
    v67 = a4[2];
    v69 = *a4;
    v70 = *(a4 + 6);
    v72 = a5[1];
    v71 = a5[2];
    v73 = *a5;
    *(a4 + 12) = *(a5 + 12);
    a4[1] = v72;
    a4[2] = v71;
    *a4 = v73;
    *(a5 + 12) = v70;
    *a5 = v69;
    a5[1] = v68;
    a5[2] = v67;
    if ((*a6)(a4, a3))
    {
      v75 = a3[1];
      v74 = a3[2];
      v76 = *a3;
      v77 = *(a3 + 6);
      v79 = a4[1];
      v78 = a4[2];
      v80 = *a4;
      *(a3 + 12) = *(a4 + 12);
      a3[1] = v79;
      a3[2] = v78;
      *a3 = v80;
      *(a4 + 12) = v77;
      *a4 = v76;
      a4[1] = v75;
      a4[2] = v74;
      if ((*a6)(a3, a2))
      {
        v82 = a2[1];
        v81 = a2[2];
        v83 = *a2;
        v84 = *(a2 + 6);
        v86 = a3[1];
        v85 = a3[2];
        v87 = *a3;
        *(a2 + 12) = *(a3 + 12);
        a2[1] = v86;
        a2[2] = v85;
        *a2 = v87;
        *(a3 + 12) = v84;
        *a3 = v83;
        a3[1] = v82;
        a3[2] = v81;
        if ((*a6)(a2, a1))
        {
          v88 = a1[1];
          result = a1[2];
          v89 = *a1;
          v90 = *(a1 + 6);
          v92 = a2[1];
          v91 = a2[2];
          v93 = *a2;
          *(a1 + 12) = *(a2 + 12);
          a1[1] = v92;
          a1[2] = v91;
          *a1 = v93;
          *(a2 + 12) = v90;
          *a2 = v89;
          a2[1] = v88;
          a2[2] = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v22 = v3;
    v23 = v4;
    v6 = result;
    v7 = result + 56;
    if (result + 56 != a2)
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
          v12 = *(v10 + 16);
          v18 = *v10;
          v19 = v12;
          v20 = *(v10 + 32);
          v21 = *(v10 + 48);
          v13 = v9;
          while (1)
          {
            v14 = v6 + v13;
            v15 = *(v6 + v13 + 16);
            *(v14 + 56) = *(v6 + v13);
            *(v14 + 72) = v15;
            *(v14 + 88) = *(v6 + v13 + 32);
            *(v14 + 104) = *(v6 + v13 + 48);
            if (!v13)
            {
              break;
            }

            v13 -= 56;
            result = (*a3)(&v18, v13 + v6);
            if ((result & 1) == 0)
            {
              v16 = v6 + v13 + 56;
              goto LABEL_10;
            }
          }

          v16 = v6;
LABEL_10:
          v17 = v19;
          *v16 = v18;
          *(v16 + 16) = v17;
          *(v16 + 32) = v20;
          *(v16 + 48) = v21;
        }

        v7 = v10 + 56;
        v9 += 56;
      }

      while (v10 + 56 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v19 = v3;
    v20 = v4;
    v6 = result;
    v7 = result + 56;
    if (result + 56 != a2)
    {
      v9 = result - 56;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v11 = *(v6 + 16);
          v15 = *v6;
          v16 = v11;
          v17 = *(v6 + 32);
          v18 = *(v6 + 48);
          v12 = v9;
          do
          {
            v13 = *(v12 + 72);
            *(v12 + 112) = *(v12 + 56);
            *(v12 + 128) = v13;
            *(v12 + 144) = *(v12 + 88);
            *(v12 + 160) = *(v12 + 104);
            result = (*a3)(&v15, v12);
            v12 -= 56;
          }

          while ((result & 1) != 0);
          v14 = v16;
          *(v12 + 112) = v15;
          *(v12 + 128) = v14;
          *(v12 + 144) = v17;
          *(v12 + 160) = v18;
        }

        v7 = v6 + 56;
        v9 += 56;
      }

      while (v6 + 56 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TGrammarManager2Result *,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  v29 = a1[2];
  v30 = *(a1 + 6);
  if ((*a3)(&v27, (a2 - 56)))
  {
    v7 = a1;
    do
    {
      v7 = (v7 + 56);
    }

    while (((*a3)(&v27, v7) & 1) == 0);
  }

  else
  {
    v8 = (a1 + 56);
    do
    {
      v7 = v8;
      if (v8 >= v4)
      {
        break;
      }

      v9 = (*a3)(&v27, v8);
      v8 = (v7 + 56);
    }

    while (!v9);
  }

  if (v7 < v4)
  {
    do
    {
      v4 = (v4 - 56);
    }

    while (((*a3)(&v27, v4) & 1) != 0);
  }

  while (v7 < v4)
  {
    v10 = *v7;
    v11 = v7[1];
    v12 = v7[2];
    v34 = *(v7 + 6);
    v32 = v11;
    v33 = v12;
    v31 = v10;
    v13 = *v4;
    v14 = v4[1];
    v15 = v4[2];
    *(v7 + 12) = *(v4 + 12);
    v7[1] = v14;
    v7[2] = v15;
    *v7 = v13;
    v16 = v31;
    v17 = v32;
    v18 = v33;
    *(v4 + 12) = v34;
    v4[1] = v17;
    v4[2] = v18;
    *v4 = v16;
    do
    {
      v7 = (v7 + 56);
    }

    while (!(*a3)(&v27, v7));
    do
    {
      v4 = (v4 - 56);
    }

    while (((*a3)(&v27, v4) & 1) != 0);
  }

  v19 = (v7 - 56);
  if ((v7 - 56) != a1)
  {
    v20 = *v19;
    v21 = *(v7 - 40);
    v22 = *(v7 - 24);
    *(a1 + 12) = *(v7 - 2);
    a1[1] = v21;
    a1[2] = v22;
    *a1 = v20;
  }

  v23 = v27;
  v24 = v28;
  v25 = v29;
  *(v7 - 2) = v30;
  *(v7 - 40) = v24;
  *(v7 - 24) = v25;
  *v19 = v23;
  return v7;
}

char *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TGrammarManager2Result *,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&)>(char *a1, char *a2, uint64_t (**a3)(char *, __int128 *))
{
  v6 = 0;
  v7 = *(a1 + 1);
  v26 = *a1;
  v27 = v7;
  v28 = *(a1 + 2);
  v29 = *(a1 + 6);
  do
  {
    v6 += 56;
  }

  while (((*a3)(&a1[v6], &v26) & 1) != 0);
  v8 = &a1[v6];
  v9 = &a1[v6 - 56];
  if (v6 == 56)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 56;
    }

    while (((*a3)(a2, &v26) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 56;
    }

    while (!(*a3)(a2, &v26));
  }

  if (v8 < a2)
  {
    v10 = &a1[v6];
    v11 = a2;
    do
    {
      v13 = *(v10 + 1);
      v30 = *v10;
      v12 = v30;
      v31 = v13;
      v32 = *(v10 + 2);
      v14 = v32;
      v33 = *(v10 + 6);
      v15 = v33;
      v16 = *(v11 + 12);
      v18 = *(v11 + 1);
      v17 = *(v11 + 2);
      *v10 = *v11;
      *(v10 + 1) = v18;
      *(v10 + 2) = v17;
      *(v10 + 12) = v16;
      *(v11 + 1) = v13;
      *(v11 + 2) = v14;
      *(v11 + 12) = v15;
      *v11 = v12;
      do
      {
        v10 += 56;
      }

      while (((*a3)(v10, &v26) & 1) != 0);
      do
      {
        v11 -= 56;
      }

      while (!(*a3)(v11, &v26));
    }

    while (v10 < v11);
    v9 = v10 - 56;
  }

  if (v9 != a1)
  {
    v19 = *v9;
    v20 = *(v9 + 1);
    v21 = *(v9 + 2);
    *(a1 + 12) = *(v9 + 12);
    *(a1 + 1) = v20;
    *(a1 + 2) = v21;
    *a1 = v19;
  }

  v22 = v26;
  v23 = v27;
  v24 = v28;
  *(v9 + 12) = v29;
  *(v9 + 1) = v23;
  *(v9 + 2) = v24;
  *v9 = v22;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v16 = a2 - 56;
      v17 = (*a3)((a1 + 56), a1);
      v18 = (*a3)(v16, (a1 + 56));
      if (v17)
      {
        if (v18)
        {
          v20 = *(a1 + 16);
          v19 = *(a1 + 32);
          v21 = *a1;
          v22 = *(a1 + 48);
          v24 = *(v16 + 16);
          v23 = *(v16 + 32);
          v25 = *v16;
          *(a1 + 48) = *(v16 + 48);
          *(a1 + 16) = v24;
          *(a1 + 32) = v23;
          *a1 = v25;
        }

        else
        {
          v69 = *(a1 + 48);
          v71 = *(a1 + 16);
          v70 = *(a1 + 32);
          v72 = *a1;
          v73 = *(a1 + 72);
          *a1 = *(a1 + 56);
          *(a1 + 16) = v73;
          *(a1 + 32) = *(a1 + 88);
          *(a1 + 48) = *(a1 + 104);
          *(a1 + 56) = v72;
          *(a1 + 72) = v71;
          *(a1 + 88) = v70;
          *(a1 + 104) = v69;
          if (!(*a3)(v16, (a1 + 56)))
          {
            return 1;
          }

          v19 = *(a1 + 88);
          v20 = *(a1 + 72);
          v21 = *(a1 + 56);
          v22 = *(a1 + 104);
          v75 = *(v16 + 16);
          v74 = *(v16 + 32);
          v76 = *(v16 + 48);
          *(a1 + 56) = *v16;
          *(a1 + 104) = v76;
          *(a1 + 88) = v74;
          *(a1 + 72) = v75;
        }

        *(v16 + 48) = v22;
        *v16 = v21;
        *(v16 + 16) = v20;
        result = 1;
        *(v16 + 32) = v19;
        return result;
      }

      if (!v18)
      {
        return 1;
      }

      v42 = *(a1 + 88);
      v43 = *(a1 + 72);
      v44 = *(a1 + 56);
      v45 = *(a1 + 104);
      v47 = *(v16 + 16);
      v46 = *(v16 + 32);
      v48 = *(v16 + 48);
      *(a1 + 56) = *v16;
      *(a1 + 104) = v48;
      *(a1 + 88) = v46;
      *(a1 + 72) = v47;
      *(v16 + 48) = v45;
      *v16 = v44;
      *(v16 + 16) = v43;
      *(v16 + 32) = v42;
LABEL_50:
      if ((*a3)((a1 + 56), a1))
      {
        v114 = *(a1 + 48);
        v116 = *(a1 + 16);
        v115 = *(a1 + 32);
        v117 = *a1;
        v118 = *(a1 + 72);
        *a1 = *(a1 + 56);
        *(a1 + 16) = v118;
        *(a1 + 32) = *(a1 + 88);
        *(a1 + 48) = *(a1 + 104);
        *(a1 + 56) = v117;
        *(a1 + 72) = v116;
        *(a1 + 88) = v115;
        result = 1;
        *(a1 + 104) = v114;
        return result;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*,0>(a1, (a1 + 56), (a1 + 112), (a1 + 168), (a2 - 56), a3);
      return 1;
    }

    v34 = a2 - 56;
    v35 = (*a3)((a1 + 56), a1);
    v36 = (*a3)((a1 + 112), (a1 + 56));
    if ((v35 & 1) == 0)
    {
      if (v36)
      {
        v59 = *(a1 + 104);
        v60 = *(a1 + 88);
        v61 = *(a1 + 56);
        v62 = *(a1 + 128);
        *(a1 + 56) = *(a1 + 112);
        v63 = *(a1 + 72);
        *(a1 + 72) = v62;
        *(a1 + 88) = *(a1 + 144);
        *(a1 + 104) = *(a1 + 160);
        *(a1 + 112) = v61;
        *(a1 + 128) = v63;
        *(a1 + 144) = v60;
        *(a1 + 160) = v59;
        if ((*a3)((a1 + 56), a1))
        {
          v64 = *(a1 + 48);
          v66 = *(a1 + 16);
          v65 = *(a1 + 32);
          v67 = *a1;
          v68 = *(a1 + 72);
          *a1 = *(a1 + 56);
          *(a1 + 16) = v68;
          *(a1 + 32) = *(a1 + 88);
          *(a1 + 48) = *(a1 + 104);
          *(a1 + 56) = v67;
          *(a1 + 72) = v66;
          *(a1 + 88) = v65;
          *(a1 + 104) = v64;
        }
      }

      goto LABEL_47;
    }

    if (v36)
    {
      v37 = *(a1 + 48);
      v39 = *(a1 + 16);
      v38 = *(a1 + 32);
      v40 = *a1;
      v41 = *(a1 + 128);
      *a1 = *(a1 + 112);
      *(a1 + 16) = v41;
      *(a1 + 32) = *(a1 + 144);
      *(a1 + 48) = *(a1 + 160);
      *(a1 + 112) = v40;
      *(a1 + 128) = v39;
    }

    else
    {
      v94 = *(a1 + 48);
      v96 = *(a1 + 16);
      v95 = *(a1 + 32);
      v97 = *a1;
      v98 = *(a1 + 72);
      *a1 = *(a1 + 56);
      *(a1 + 16) = v98;
      *(a1 + 32) = *(a1 + 88);
      *(a1 + 48) = *(a1 + 104);
      *(a1 + 56) = v97;
      *(a1 + 72) = v96;
      *(a1 + 88) = v95;
      *(a1 + 104) = v94;
      if (!(*a3)((a1 + 112), (a1 + 56)))
      {
        goto LABEL_47;
      }

      v37 = *(a1 + 104);
      v38 = *(a1 + 88);
      v99 = *(a1 + 56);
      v100 = *(a1 + 128);
      *(a1 + 56) = *(a1 + 112);
      v101 = *(a1 + 72);
      *(a1 + 72) = v100;
      *(a1 + 88) = *(a1 + 144);
      *(a1 + 104) = *(a1 + 160);
      *(a1 + 112) = v99;
      *(a1 + 128) = v101;
    }

    *(a1 + 144) = v38;
    *(a1 + 160) = v37;
LABEL_47:
    if (!(*a3)(v34, (a1 + 112)))
    {
      return 1;
    }

    v103 = *(a1 + 128);
    v102 = *(a1 + 144);
    v104 = *(a1 + 112);
    v105 = *(a1 + 160);
    v107 = *(v34 + 16);
    v106 = *(v34 + 32);
    v108 = *v34;
    *(a1 + 160) = *(v34 + 48);
    *(a1 + 128) = v107;
    *(a1 + 144) = v106;
    *(a1 + 112) = v108;
    *(v34 + 48) = v105;
    *v34 = v104;
    *(v34 + 16) = v103;
    *(v34 + 32) = v102;
    if (!(*a3)((a1 + 112), (a1 + 56)))
    {
      return 1;
    }

    v109 = *(a1 + 104);
    v110 = *(a1 + 88);
    v111 = *(a1 + 56);
    v112 = *(a1 + 128);
    *(a1 + 56) = *(a1 + 112);
    v113 = *(a1 + 72);
    *(a1 + 72) = v112;
    *(a1 + 88) = *(a1 + 144);
    *(a1 + 104) = *(a1 + 160);
    *(a1 + 112) = v111;
    *(a1 + 128) = v113;
    *(a1 + 144) = v110;
    *(a1 + 160) = v109;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 56);
    if ((*a3)((a2 - 56), a1))
    {
      v9 = *(a1 + 16);
      v8 = *(a1 + 32);
      v10 = *a1;
      v11 = *(a1 + 48);
      v13 = *(a2 - 40);
      v12 = *(a2 - 24);
      v14 = *v7;
      *(a1 + 48) = *(a2 - 8);
      *(a1 + 16) = v13;
      *(a1 + 32) = v12;
      *a1 = v14;
      *(a2 - 8) = v11;
      *v7 = v10;
      *(a2 - 40) = v9;
      result = 1;
      *(a2 - 24) = v8;
      return result;
    }

    return 1;
  }

LABEL_13:
  v26 = (a1 + 112);
  v27 = (*a3)((a1 + 56), a1);
  v28 = (*a3)((a1 + 112), (a1 + 56));
  if (v27)
  {
    if (v28)
    {
      v29 = *(a1 + 48);
      v31 = *(a1 + 16);
      v30 = *(a1 + 32);
      v32 = *a1;
      v33 = *(a1 + 128);
      *a1 = *v26;
      *(a1 + 16) = v33;
      *(a1 + 32) = *(a1 + 144);
      *(a1 + 48) = *(a1 + 160);
      *v26 = v32;
      *(a1 + 128) = v31;
    }

    else
    {
      v77 = *(a1 + 48);
      v79 = *(a1 + 16);
      v78 = *(a1 + 32);
      v80 = *a1;
      v81 = *(a1 + 72);
      *a1 = *(a1 + 56);
      *(a1 + 16) = v81;
      *(a1 + 32) = *(a1 + 88);
      *(a1 + 48) = *(a1 + 104);
      *(a1 + 56) = v80;
      *(a1 + 72) = v79;
      *(a1 + 88) = v78;
      *(a1 + 104) = v77;
      if (!(*a3)((a1 + 112), (a1 + 56)))
      {
        goto LABEL_33;
      }

      v29 = *(a1 + 104);
      v30 = *(a1 + 88);
      v82 = *(a1 + 56);
      v83 = *(a1 + 128);
      *(a1 + 56) = *v26;
      v84 = *(a1 + 72);
      *(a1 + 72) = v83;
      *(a1 + 88) = *(a1 + 144);
      *(a1 + 104) = *(a1 + 160);
      *v26 = v82;
      *(a1 + 128) = v84;
    }

    *(a1 + 144) = v30;
    *(a1 + 160) = v29;
  }

  else if (v28)
  {
    v49 = *(a1 + 104);
    v50 = *(a1 + 88);
    v51 = *(a1 + 56);
    v52 = *(a1 + 128);
    *(a1 + 56) = *v26;
    v53 = *(a1 + 72);
    *(a1 + 72) = v52;
    *(a1 + 88) = *(a1 + 144);
    *(a1 + 104) = *(a1 + 160);
    *v26 = v51;
    *(a1 + 128) = v53;
    *(a1 + 144) = v50;
    *(a1 + 160) = v49;
    if ((*a3)((a1 + 56), a1))
    {
      v54 = *(a1 + 48);
      v56 = *(a1 + 16);
      v55 = *(a1 + 32);
      v57 = *a1;
      v58 = *(a1 + 72);
      *a1 = *(a1 + 56);
      *(a1 + 16) = v58;
      *(a1 + 32) = *(a1 + 88);
      *(a1 + 48) = *(a1 + 104);
      *(a1 + 56) = v57;
      *(a1 + 72) = v56;
      *(a1 + 88) = v55;
      *(a1 + 104) = v54;
    }
  }

LABEL_33:
  v85 = a1 + 168;
  if (a1 + 168 == a2)
  {
    return 1;
  }

  v86 = 0;
  v87 = 0;
  while (1)
  {
    if ((*a3)(v85, v26))
    {
      v88 = *(v85 + 16);
      v119 = *v85;
      v120 = v88;
      v121 = *(v85 + 32);
      v122 = *(v85 + 48);
      v89 = v86;
      while (1)
      {
        v90 = a1 + v89;
        v91 = *(a1 + v89 + 128);
        *(v90 + 168) = *(a1 + v89 + 112);
        *(v90 + 184) = v91;
        *(v90 + 200) = *(a1 + v89 + 144);
        *(v90 + 216) = *(a1 + v89 + 160);
        if (v89 == -112)
        {
          break;
        }

        v89 -= 56;
        if (((*a3)(&v119, (v90 + 56)) & 1) == 0)
        {
          v92 = a1 + v89 + 168;
          goto LABEL_41;
        }
      }

      v92 = a1;
LABEL_41:
      v93 = v120;
      *v92 = v119;
      *(v92 + 16) = v93;
      *(v92 + 32) = v121;
      *(v92 + 48) = v122;
      if (++v87 == 8)
      {
        return v85 + 56 == a2;
      }
    }

    v26 = v85;
    v86 += 56;
    v85 += 56;
    if (v85 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*,TGrammarManager2Result*>(char *a1, char *a2, char *a3, uint64_t (**a4)(int64_t, __n128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 57)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = &a1[56 * v11];
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(v8, a4, v10, v13);
        v13 = (v13 - 56);
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
          v16 = *(v14 + 1);
          v15 = *(v14 + 2);
          v17 = *v14;
          v18 = *(v14 + 6);
          v20 = *(v8 + 1);
          v19 = *(v8 + 2);
          v21 = *v8;
          *(v14 + 12) = *(v8 + 12);
          *(v14 + 1) = v20;
          *(v14 + 2) = v19;
          *v14 = v21;
          *(v8 + 12) = v18;
          *v8 = v17;
          *(v8 + 1) = v16;
          *(v8 + 2) = v15;
          a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(v8, a4, v10, v8);
        }

        v14 += 56;
      }

      while (v14 != a3);
    }

    if (v9 >= 57)
    {
      v22 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 3);
      v39 = v8;
      do
      {
        v40 = v7;
        v23 = 0;
        v41 = *v8;
        v42 = *(v8 + 1);
        v43 = *(v8 + 2);
        v44 = *(v8 + 6);
        v24 = v8;
        do
        {
          v25 = &v24[56 * v23];
          v26 = (v25 + 56);
          v27 = (2 * v23) | 1;
          v28 = 2 * v23 + 2;
          if (v28 < v22)
          {
            v29 = v25 + 7;
            if ((*a4)(&v25[3].n128_i64[1], v25 + 7))
            {
              v26 = v29;
              v27 = v28;
            }
          }

          v30 = *v26;
          v31 = v26[1];
          v32 = v26[2];
          *(v24 + 12) = v26[3].n128_u32[0];
          *(v24 + 1) = v31;
          *(v24 + 2) = v32;
          *v24 = v30;
          v24 = v26;
          v23 = v27;
        }

        while (v27 <= ((v22 - 2) >> 1));
        v7 = v40 - 56;
        if (v26 == (v40 - 56))
        {
          v26[3].n128_u32[0] = v44;
          v26[1] = v42;
          v26[2] = v43;
          *v26 = v41;
          v8 = v39;
        }

        else
        {
          v33 = *v7;
          v34 = *(v40 - 40);
          v35 = *(v40 - 24);
          v26[3].n128_u32[0] = *(v40 - 2);
          v26[1] = v34;
          v26[2] = v35;
          *v26 = v33;
          v36 = &v26[3].n128_i64[1];
          *v7 = v41;
          *(v40 - 40) = v42;
          *(v40 - 24) = v43;
          *(v40 - 2) = v44;
          v8 = v39;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(v39, v36, a4, 0x6DB6DB6DB6DB6DB7 * ((v36 - v39) >> 3));
        }
      }

      while (v22-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(uint64_t a1, uint64_t (**a2)(int64_t, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v29 = v4;
    v30 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - a1) >> 3))
    {
      v12 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 56 * v12;
      v14 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && (*a2)(a1 + 56 * v12, (v13 + 56)))
      {
        v13 += 56;
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v16 = v7[1];
        v25 = *v7;
        v26 = v16;
        v27 = v7[2];
        v28 = v7[3].n128_u64[0];
        do
        {
          v17 = v13;
          v18 = *v13;
          v19 = *(v13 + 16);
          v20 = *(v13 + 32);
          v7[3].n128_u32[0] = *(v13 + 48);
          v7[1] = v19;
          v7[2] = v20;
          *v7 = v18;
          if (v9 < v12)
          {
            break;
          }

          v21 = (2 * v12) | 1;
          v13 = a1 + 56 * v21;
          v22 = 2 * v12 + 2;
          if (v22 < a3)
          {
            if ((*a2)(a1 + 56 * v21, (v13 + 56)))
            {
              v13 += 56;
              v21 = v22;
            }
          }

          v7 = v17;
          v12 = v21;
        }

        while (!(*a2)(v13, &v25));
        result = v25;
        v23 = v26;
        v24 = v27;
        *(v17 + 48) = v28;
        *(v17 + 16) = v23;
        *(v17 + 32) = v24;
        *v17 = result;
      }
    }
  }

  return result;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v23 = v4;
    v24 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 56 * (v6 >> 1));
    v11 = (a2 - 56);
    if ((*a3)(v10, (a2 - 56)))
    {
      v13 = v11[1];
      v19 = *v11;
      v20 = v13;
      v21 = v11[2];
      v22 = *(v11 + 6);
      do
      {
        v14 = v10;
        v15 = *v10;
        v16 = v10[1];
        v17 = v10[2];
        *(v11 + 12) = *(v10 + 12);
        v11[1] = v16;
        v11[2] = v17;
        *v11 = v15;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 56 * v9);
        v11 = v14;
      }

      while (((*a3)(v10, &v19) & 1) != 0);
      v18 = v20;
      *v14 = v19;
      v14[1] = v18;
      result = *&v21;
      v14[2] = v21;
      *(v14 + 12) = v22;
    }
  }

  return result;
}

unint64_t StartupLatticePostProbParamSpecMgr(void)
{
  v0 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v0, "LatticePostProbDenominator", &byte_262899963, &byte_262899963, &sLatticePostProbDenominatorIntHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v1, "LatticePostProbAcousticScoreScale", &byte_262899963, &byte_262899963, &sLatticePostProbAcousticScoreScaleIntHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v2, "LatticePostProbWordDurationScoreScale", &byte_262899963, &byte_262899963, &sLatticePostProbWordDurationScoreScaleIntHistory);
  v3 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v3, "LatticePostProbLMScoreScale", &byte_262899963, &byte_262899963, &sLatticePostProbLMScoreScaleIntHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v4, "LatticePostProbStateWordPenaltyScale", &byte_262899963, &byte_262899963, &sLatticePostProbStateWordPenaltyScaleIntHistory);
  v5 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v5, "LatticePostProbPerWordPenaltyScale", &byte_262899963, &byte_262899963, &sLatticePostProbPerWordPenaltyScaleIntHistory);
  v6 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v6, "LatticePostProbInterWordSilencePenaltyScale", &byte_262899963, &byte_262899963, &sLatticePostProbInterWordSilencePenaltyScaleIntHistory);
  ParamSpecMgr::addParam(qword_281051F90, v1);
  ParamSpecMgr::addParam(qword_281051F90, v0);
  ParamSpecMgr::addParam(qword_281051F90, v6);
  ParamSpecMgr::addParam(qword_281051F90, v3);
  ParamSpecMgr::addParam(qword_281051F90, v5);
  ParamSpecMgr::addParam(qword_281051F90, v4);
  ParamSpecMgr::addParam(qword_281051F90, v2);
  v7 = qword_281051F90;

  return ParamSpecMgr::sortParams(v7);
}

_DWORD *LatticePostProbParamSet::LatticePostProbParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287525280;
  LatticePostProbParamSet::setDefaults(a1);
  return a1;
}

void sub_2627169D4(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t LatticePostProbParamSet::LatticePostProbParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287525280;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t LatticePostProbParamSet::setDefaults(LatticePostProbParamSet *this)
{
  *(this + 10) = ParamSpecMgr::ParamGetDefault_int(qword_281051F90, 1, 0, 0);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051F90, 2, 0, 0);
  *(this + 12) = ParamSpecMgr::ParamGetDefault_int(qword_281051F90, 3, 0, 0);
  *(this + 13) = ParamSpecMgr::ParamGetDefault_int(qword_281051F90, 4, 0, 0);
  *(this + 14) = ParamSpecMgr::ParamGetDefault_int(qword_281051F90, 5, 0, 0);
  *(this + 15) = ParamSpecMgr::ParamGetDefault_int(qword_281051F90, 6, 0, 0);
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051F90, 7, 0, 0);
  *(this + 16) = result;
  return result;
}

uint64_t LatticePostProbParamSet::sizeObject(uint64_t a1, int a2)
{
  v3 = sizeObject(a1 + 8, a2);
  v4 = 28;
  if ((a2 == 3) | gShadowDiagnosticShowIdealizedObjectSizes & 1)
  {
    v4 = 0;
  }

  return v3 + 16 * (a2 != 3) + v4;
}

uint64_t LatticePostProbParamSet::getBoolParameter(int a1, int a2)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        v2 = 1;
        goto LABEL_17;
      case 2:
        v2 = 2;
        goto LABEL_17;
      case 3:
        v2 = 3;
LABEL_17:
        throwWrongTypeForParamId(v2, "int", "BOOL");
        return 0;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v2 = 6;
      goto LABEL_17;
    }

    if (a2 == 7)
    {
      v2 = 7;
      goto LABEL_17;
    }
  }

  throwWrongParamIdValue(a2, "BOOL");
  return 0;
}

uint64_t LatticePostProbParamSet::getIntParameter(unsigned int *a1, int a2, int a3)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        if (a3 <= 1)
        {
          if (!a3)
          {
            return a1[10];
          }

          if (a3 == 1)
          {
            v3 = qword_281051F90;
            v4 = 1;
            goto LABEL_38;
          }

          goto LABEL_61;
        }

        if (a3 == 2)
        {
          v10 = qword_281051F90;
          v11 = 1;
          goto LABEL_77;
        }

        if (a3 != 3)
        {
          goto LABEL_61;
        }

        v7 = qword_281051F90;
        v8 = 1;
LABEL_60:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v7, v8);
      case 2:
        if (a3 <= 1)
        {
          if (!a3)
          {
            return a1[11];
          }

          if (a3 == 1)
          {
            v3 = qword_281051F90;
            v4 = 2;
            goto LABEL_38;
          }

          goto LABEL_61;
        }

        if (a3 != 2)
        {
          if (a3 == 3)
          {
            v7 = qword_281051F90;
            v8 = 2;
            goto LABEL_60;
          }

          goto LABEL_61;
        }

        v10 = qword_281051F90;
        v11 = 2;
        goto LABEL_77;
      case 3:
        if (a3 <= 1)
        {
          if (a3)
          {
            if (a3 == 1)
            {
              v3 = qword_281051F90;
              v4 = 3;
              goto LABEL_38;
            }

            goto LABEL_61;
          }

          return a1[12];
        }

        if (a3 != 2)
        {
          if (a3 == 3)
          {
            v7 = qword_281051F90;
            v8 = 3;
            goto LABEL_60;
          }

          goto LABEL_61;
        }

        v10 = qword_281051F90;
        v11 = 3;
        goto LABEL_77;
    }

LABEL_25:
    throwWrongParamIdValue(a2, "int");
    return 0;
  }

  if (a2 > 5)
  {
    if (a2 == 6)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[15];
        }

        if (a3 == 1)
        {
          v3 = qword_281051F90;
          v4 = 6;
          goto LABEL_38;
        }

        goto LABEL_61;
      }

      if (a3 == 2)
      {
        v10 = qword_281051F90;
        v11 = 6;
        goto LABEL_77;
      }

      if (a3 != 3)
      {
        goto LABEL_61;
      }

      v7 = qword_281051F90;
      v8 = 6;
      goto LABEL_60;
    }

    if (a2 == 7)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[16];
        }

        if (a3 == 1)
        {
          v3 = qword_281051F90;
          v4 = 7;
          goto LABEL_38;
        }

        goto LABEL_61;
      }

      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v7 = qword_281051F90;
          v8 = 7;
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      v10 = qword_281051F90;
      v11 = 7;
LABEL_77:
      v12 = ParamSpecMgr::getParamByParamId(v10, v11);
    }

    goto LABEL_25;
  }

  if (a2 == 4)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        return a1[13];
      }

      if (a3 == 1)
      {
        v3 = qword_281051F90;
        v4 = 4;
        goto LABEL_38;
      }

      goto LABEL_61;
    }

    if (a3 == 2)
    {
      v10 = qword_281051F90;
      v11 = 4;
      goto LABEL_77;
    }

    if (a3 != 3)
    {
      goto LABEL_61;
    }

    v7 = qword_281051F90;
    v8 = 4;
    goto LABEL_60;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        v7 = qword_281051F90;
        v8 = 5;
        goto LABEL_60;
      }

LABEL_61:
      throwWrongQueryMode(a3, "int");
      return 0;
    }

    v10 = qword_281051F90;
    v11 = 5;
    goto LABEL_77;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v3 = qword_281051F90;
      v4 = 5;
LABEL_38:
      v5 = ParamSpecMgr::getParamByParamId(v3, v4);
    }

    goto LABEL_61;
  }

  return a1[14];
}

double LatticePostProbParamSet::getDoubleParameter(int a1, int a2)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        v2 = 1;
        goto LABEL_17;
      case 2:
        v2 = 2;
        goto LABEL_17;
      case 3:
        v2 = 3;
LABEL_17:
        throwWrongTypeForParamId(v2, "int", "double");
        return 0.0;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v2 = 6;
      goto LABEL_17;
    }

    if (a2 == 7)
    {
      v2 = 7;
      goto LABEL_17;
    }
  }

  throwWrongParamIdValue(a2, "double");
  return 0.0;
}

uint64_t LatticePostProbParamSet::getStringParameter(int a1, int a2)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        v2 = 1;
        goto LABEL_17;
      case 2:
        v2 = 2;
        goto LABEL_17;
      case 3:
        v2 = 3;
LABEL_17:
        throwWrongTypeForParamId(v2, "int", "string");
        return 0;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v2 = 6;
      goto LABEL_17;
    }

    if (a2 == 7)
    {
      v2 = 7;
      goto LABEL_17;
    }
  }

  throwWrongParamIdValue(a2, "string");
  return 0;
}

uint64_t LatticePostProbParamSet::getEnumParameter(int a1, int a2)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        v2 = 1;
        goto LABEL_17;
      case 2:
        v2 = 2;
        goto LABEL_17;
      case 3:
        v2 = 3;
LABEL_17:
        throwWrongTypeForParamId(v2, "int", "BOOL");
        return 0;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v2 = 6;
      goto LABEL_17;
    }

    if (a2 == 7)
    {
      v2 = 7;
      goto LABEL_17;
    }
  }

  throwWrongParamIdValue(a2, "enum");
  return 0;
}

double LatticePostProbParamSet::setBoolParameter(LatticePostProbParamSet *this, int a2)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        throwWrongTypeForParamId(1, "int", "BOOL");
        break;
      case 2:
        break;
      case 3:
LABEL_14:
        throwWrongTypeForParamId(a2, "int", "BOOL");
LABEL_15:
        throwWrongTypeForParamId(a2, "int", "BOOL");
LABEL_16:
        throwWrongTypeForParamId(a2, "int", "BOOL");
        goto LABEL_17;
      default:
        goto LABEL_19;
    }

    throwWrongTypeForParamId(a2, "int", "BOOL");
    goto LABEL_14;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2 == 6)
  {
LABEL_17:
    throwWrongTypeForParamId(a2, "int", "BOOL");
    goto LABEL_18;
  }

  if (a2 == 7)
  {
LABEL_18:
    throwWrongTypeForParamId(a2, "int", "BOOL");
  }

LABEL_19:

  return throwWrongParamIdValue(a2, "BOOL");
}

void LatticePostProbParamSet::setIntParameter(LatticePostProbParamSet *this, int a2, int a3)
{
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F90, 2);
        if (ParamByParamId)
        {
        }

        IntParamSpec::validateValue(ParamByParamId, a3, 0, 0);
        if (!*(this + 9))
        {
          *(this + 11) = a3;
          return;
        }

        v6 = "LatticePostProbDenominator";
        goto LABEL_40;
      }

      if (a2 == 3)
      {
        v7 = ParamSpecMgr::getParamByParamId(qword_281051F90, 3);
        if (v7)
        {
        }

        IntParamSpec::validateValue(v7, a3, 0, 0);
        if (!*(this + 9))
        {
          *(this + 12) = a3;
          return;
        }

        v6 = "LatticePostProbInterWordSilencePenaltyScale";
        goto LABEL_40;
      }

      goto LABEL_25;
    }

    v9 = ParamSpecMgr::getParamByParamId(qword_281051F90, 1);
    if (v9)
    {
    }

    IntParamSpec::validateValue(v9, a3, 0, 0);
    if (!*(this + 9))
    {
      *(this + 10) = a3;
      return;
    }

    v6 = "LatticePostProbAcousticScoreScale";
LABEL_40:

    throwParamSetSetFailed(v6, "int");
    return;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      v10 = ParamSpecMgr::getParamByParamId(qword_281051F90, 4);
      if (v10)
      {
      }

      IntParamSpec::validateValue(v10, a3, 0, 0);
      if (!*(this + 9))
      {
        *(this + 13) = a3;
        return;
      }

      v6 = "LatticePostProbLMScoreScale";
    }

    else
    {
      v5 = ParamSpecMgr::getParamByParamId(qword_281051F90, 5);
      if (v5)
      {
      }

      IntParamSpec::validateValue(v5, a3, 0, 0);
      if (!*(this + 9))
      {
        *(this + 14) = a3;
        return;
      }

      v6 = "LatticePostProbPerWordPenaltyScale";
    }

    goto LABEL_40;
  }

  if (a2 == 6)
  {
    v11 = ParamSpecMgr::getParamByParamId(qword_281051F90, 6);
    if (v11)
    {
    }

    IntParamSpec::validateValue(v11, a3, 0, 0);
    if (!*(this + 9))
    {
      *(this + 15) = a3;
      return;
    }

    v6 = "LatticePostProbStateWordPenaltyScale";
    goto LABEL_40;
  }

  if (a2 == 7)
  {
    v8 = ParamSpecMgr::getParamByParamId(qword_281051F90, 7);
    if (v8)
    {
    }

    IntParamSpec::validateValue(v8, a3, 0, 0);
    if (!*(this + 9))
    {
      *(this + 16) = a3;
      return;
    }

    v6 = "LatticePostProbWordDurationScoreScale";
    goto LABEL_40;
  }

LABEL_25:

  throwWrongParamIdValue(a2, "int");
}

double LatticePostProbParamSet::setDoubleParameter(LatticePostProbParamSet *this, int a2, double a3)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        throwWrongTypeForParamId(1, "int", "double");
        break;
      case 2:
        break;
      case 3:
LABEL_14:
        throwWrongTypeForParamId(a2, "int", "double");
LABEL_15:
        throwWrongTypeForParamId(a2, "int", "double");
LABEL_16:
        throwWrongTypeForParamId(a2, "int", "double");
        goto LABEL_17;
      default:
        goto LABEL_19;
    }

    throwWrongTypeForParamId(a2, "int", "double");
    goto LABEL_14;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2 == 6)
  {
LABEL_17:
    throwWrongTypeForParamId(a2, "int", "double");
    goto LABEL_18;
  }

  if (a2 == 7)
  {
LABEL_18:
    throwWrongTypeForParamId(a2, "int", "double");
  }

LABEL_19:

  return throwWrongParamIdValue(a2, "double");
}

double LatticePostProbParamSet::setStringParameter(LatticePostProbParamSet *this, int a2, const char *a3)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        throwWrongTypeForParamId(1, "int", "string");
        break;
      case 2:
        break;
      case 3:
LABEL_14:
        throwWrongTypeForParamId(a2, "int", "string");
LABEL_15:
        throwWrongTypeForParamId(a2, "int", "string");
LABEL_16:
        throwWrongTypeForParamId(a2, "int", "string");
        goto LABEL_17;
      default:
        goto LABEL_19;
    }

    throwWrongTypeForParamId(a2, "int", "string");
    goto LABEL_14;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2 == 6)
  {
LABEL_17:
    throwWrongTypeForParamId(a2, "int", "string");
    goto LABEL_18;
  }

  if (a2 == 7)
  {
LABEL_18:
    throwWrongTypeForParamId(a2, "int", "string");
  }

LABEL_19:

  return throwWrongParamIdValue(a2, "string");
}

double LatticePostProbParamSet::setEnumParameter(LatticePostProbParamSet *this, int a2)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        throwWrongTypeForParamId(1, "int", "BOOL");
        break;
      case 2:
        break;
      case 3:
LABEL_14:
        throwWrongTypeForParamId(a2, "int", "BOOL");
LABEL_15:
        throwWrongTypeForParamId(a2, "int", "BOOL");
LABEL_16:
        throwWrongTypeForParamId(a2, "int", "BOOL");
        goto LABEL_17;
      default:
        goto LABEL_19;
    }

    throwWrongTypeForParamId(a2, "int", "BOOL");
    goto LABEL_14;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2 == 6)
  {
LABEL_17:
    throwWrongTypeForParamId(a2, "int", "BOOL");
    goto LABEL_18;
  }

  if (a2 == 7)
  {
LABEL_18:
    throwWrongTypeForParamId(a2, "int", "BOOL");
  }

LABEL_19:

  return throwWrongParamIdValue(a2, "enum");
}

void LatticePostProbParamSet::~LatticePostProbParamSet(LatticePostProbParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);

  JUMPOUT(0x26672B1B0);
}

uint64_t getPropCheckTokenExistence(void)
{
  {
    operator new();
  }

  return getPropCheckTokenExistence(void)::p;
}

void TGlobalParamManager::TGlobalParamManager(TGlobalParamManager *this, TLocaleInfo *a2)
{
  TParamManager::TParamManager(this, 0, a2);
  *v3 = &unk_287526030;
  v4 = (v3 + 18);
  TBoolParam::TBoolParam((v3 + 18), "C", "A", 0, 0, "1", &dword_26288AC68);
  TBoolParam::TBoolParam(this + 392, "C", "I", 0, 1, "1", &dword_26288AC68);
  TBoolParam::TBoolParam(this + 640, "C", "I", 0, 0, "1", &dword_26288AC68);
  TBoolParam::TBoolParam(this + 888, "L", "I", 0, 0, "1", &dword_26288AC68);
  TBoolParam::TBoolParam(this + 1136, "C", "I", 0, 0, "1", &dword_26288AC68);
  TBoolParam::TBoolParam(this + 1384, "D", "D", 32, 1, "1", &dword_26288AC68);
  TBoolParam::TBoolParam(this + 1632, "D", "D", 288, 1, "1", &dword_26288AC68);
  TStringParam::TStringParam(this + 1880, "D", "D", 32, &dword_26288AC68, "1", &dword_26288AC68);
  TStringParam::TStringParam(this + 3256, "D", "D", 288, &dword_26288AC68, "1", &dword_26288AC68);
  TIntParam::TIntParam((this + 4632), "D", "D", 32, -1, 10, 5, "1", &dword_26288AC68);
  TIntParam::TIntParam((this + 4984), "D", "D", 288, -1, 10, 5, "1", &dword_26288AC68);
  TStringParam::TStringParam(this + 667, "D");
  TStringParam::TStringParam(this + 839, "D");
  TFloatParam::TFloatParam(this + 8088, "D", "D", 32, "1", &dword_26288AC68, 0.0);
  TFloatParam::TFloatParam(this + 8624, "D", "D", 288, "1", &dword_26288AC68, 0.0);
  TParamManager::add(this, v4);
  TParamManager::add(this, (this + 392));
  TParamManager::add(this, (this + 640));
  TParamManager::add(this, (this + 888));
  TParamManager::add(this, (this + 1136));
  TParamManager::add(this, (this + 1384));
  TParamManager::add(this, (this + 1632));
  TParamManager::add(this, (this + 1880));
  TParamManager::add(this, (this + 3256));
  TParamManager::add(this, (this + 4632));
  TParamManager::add(this, (this + 4984));
  MEMORY[0x26672AF30](this + 5376, "D");
  MEMORY[0x26672AF30](this + 5400, "1");
  MEMORY[0x26672AF30](this + 5424, &dword_26288AC68);
  *(this + 681) |= 0x20uLL;
  std::vector<std::wstring>::vector[abi:ne200100](v16, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v15, 4uLL);
  v5 = 0;
  v6 = "a";
  do
  {
    MEMORY[0x26672AF30](&v16[0][v5], v6);
    v6 += wcslen(v6) + 1;
    ++v5;
  }

  while (v5 != 4);
  TStringParam::setAllowables(this + 5336, v16, 0, 0);
  TStringParam::setOriginal(this + 667, 0, &dword_26288AC68);
  TParamManager::add(this, (this + 5336));
  v17 = v15;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v17);
  v15[0] = v16;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v15);
  MEMORY[0x26672AF30](this + 6752, "D");
  MEMORY[0x26672AF30](this + 6776, "1");
  MEMORY[0x26672AF30](this + 6800, &dword_26288AC68);
  *(this + 853) |= 0x120uLL;
  std::vector<std::wstring>::vector[abi:ne200100](v16, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v15, 4uLL);
  v7 = 0;
  v8 = "a";
  do
  {
    MEMORY[0x26672AF30](&v16[0][v7], v8);
    v8 += wcslen(v8) + 1;
    ++v7;
  }

  while (v7 != 4);
  TStringParam::setAllowables(this + 6712, v16, 0, 0);
  TStringParam::setOriginal(this + 839, 0, &dword_26288AC68);
  TParamManager::add(this, (this + 6712));
  v17 = v15;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v17);
  v15[0] = v16;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v15);
  TParamManager::add(this, (this + 8088));
  TParamManager::add(this, (this + 8624));
  *(this + 17) = 1;
  ActiveConfigHandle = TParam::getActiveConfigHandle(v4);
  g_bCrashOnError = *(this + TParam::getValidConfig(v4, ActiveConfigHandle) + 296);
  v10 = TParam::getActiveConfigHandle((this + 392));
  g_bCheckVocCompatibility = *(this + TParam::getValidConfig((this + 392), v10) + 544);
  v11 = TParam::getActiveConfigHandle((this + 888));
  g_bLogMemoryLeaks = *(this + TParam::getValidConfig((this + 888), v11) + 1040);
  v12 = TParam::getActiveConfigHandle((this + 1136));
  g_bCheckLexicon = *(this + TParam::getValidConfig((this + 1136), v12) + 1288);
  v13 = getPropCheckTokenExistence();
  v14 = TParam::getActiveConfigHandle((this + 640));
  v13[8] = *(this + TParam::getValidConfig((this + 640), v14) + 792);
  (*(*v13 + 16))(v13);
}

void sub_262718584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  TParam::~TParam((v13 + v20));
  TParam::~TParam((v13 + v19));
  TStringParam::~TStringParam((v13 + v18));
  TStringParam::~TStringParam((v13 + v17));
  TParam::~TParam((v13 + v16));
  TParam::~TParam((v13 + v15));
  TStringParam::~TStringParam(v13 + 407);
  TStringParam::~TStringParam(v13 + 235);
  TBoolParam::~TBoolParam(v13 + 204);
  TBoolParam::~TBoolParam(v13 + 173);
  TBoolParam::~TBoolParam(v13 + 142);
  TBoolParam::~TBoolParam(v13 + 111);
  TBoolParam::~TBoolParam(v13 + 80);
  TBoolParam::~TBoolParam(v13 + 49);
  TBoolParam::~TBoolParam(v14);
  TParamManager::~TParamManager(v13);
  _Unwind_Resume(a1);
}

uint64_t TGlobalParamManager::notifyChange(uint64_t this, const TParam *a2)
{
  v2 = this;
  v3 = (this + 144);
  if ((this + 144) == a2)
  {
    ActiveConfigHandle = TParam::getActiveConfigHandle((this + 144));
    this = TParam::getValidConfig(v3, ActiveConfigHandle);
    v8 = *(v2 + this + 296);
    v9 = &g_bCrashOnError;
LABEL_13:
    *v9 = v8;
    return this;
  }

  if ((this + 392) == a2)
  {
    v10 = TParam::getActiveConfigHandle((this + 392));
    this = TParam::getValidConfig((v2 + 392), v10);
    v8 = *(v2 + this + 544);
    v9 = &g_bCheckVocCompatibility;
    goto LABEL_13;
  }

  if ((this + 888) == a2)
  {
    v11 = TParam::getActiveConfigHandle((this + 888));
    this = TParam::getValidConfig((v2 + 888), v11);
    v8 = *(v2 + this + 1040);
    v9 = &g_bLogMemoryLeaks;
    goto LABEL_13;
  }

  if ((this + 1136) == a2)
  {
    v12 = TParam::getActiveConfigHandle((this + 1136));
    this = TParam::getValidConfig((v2 + 1136), v12);
    v8 = *(v2 + this + 1288);
    v9 = &g_bCheckLexicon;
    goto LABEL_13;
  }

  if ((this + 640) == a2)
  {
    v4 = getPropCheckTokenExistence();
    v5 = TParam::getActiveConfigHandle((v2 + 640));
    v4[8] = *(v2 + TParam::getValidConfig((v2 + 640), v5) + 792);
    v6 = *(*v4 + 16);

    return v6(v4);
  }

  return this;
}

void TGlobalParamManager::~TGlobalParamManager(void **this)
{
  TGlobalParamManager::~TGlobalParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287526030;
  TParam::~TParam(this + 1078);
  TParam::~TParam(this + 1011);
  this[839] = &unk_287528A10;
  v16 = this + 1008;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = this + 1005;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = this + 1002;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v2 = this + 999;
  v3 = -1152;
  do
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  TParam::~TParam(this + 839);
  this[667] = &unk_287528A10;
  v16 = this + 836;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = this + 833;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = this + 830;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v4 = this + 827;
  v5 = -1152;
  do
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v4 -= 3;
    v5 += 24;
  }

  while (v5);
  TParam::~TParam(this + 667);
  TParam::~TParam(this + 623);
  TParam::~TParam(this + 579);
  this[407] = &unk_287528A10;
  v16 = this + 576;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = this + 573;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = this + 570;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v6 = this + 567;
  v7 = -1152;
  do
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v6 -= 3;
    v7 += 24;
  }

  while (v7);
  TParam::~TParam(this + 407);
  this[235] = &unk_287528A10;
  v16 = this + 404;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = this + 401;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = this + 398;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v16);
  for (i = 0; i != -144; i -= 3)
  {
    if (SHIBYTE(this[i + 397]) < 0)
    {
      operator delete(this[i + 395]);
    }
  }

  TParam::~TParam(this + 235);
  v9 = 0;
  this[204] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v9 + 234]) < 0)
    {
      operator delete(this[v9 + 232]);
    }

    v9 -= 3;
  }

  while (v9 != -6);
  TParam::~TParam(this + 204);
  v10 = 0;
  this[173] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v10 + 203]) < 0)
    {
      operator delete(this[v10 + 201]);
    }

    v10 -= 3;
  }

  while (v10 != -6);
  TParam::~TParam(this + 173);
  v11 = 0;
  this[142] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v11 + 172]) < 0)
    {
      operator delete(this[v11 + 170]);
    }

    v11 -= 3;
  }

  while (v11 != -6);
  TParam::~TParam(this + 142);
  v12 = 0;
  this[111] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v12 + 141]) < 0)
    {
      operator delete(this[v12 + 139]);
    }

    v12 -= 3;
  }

  while (v12 != -6);
  TParam::~TParam(this + 111);
  v13 = 0;
  this[80] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v13 + 110]) < 0)
    {
      operator delete(this[v13 + 108]);
    }

    v13 -= 3;
  }

  while (v13 != -6);
  TParam::~TParam(this + 80);
  v14 = 0;
  this[49] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v14 + 79]) < 0)
    {
      operator delete(this[v14 + 77]);
    }

    v14 -= 3;
  }

  while (v14 != -6);
  TParam::~TParam(this + 49);
  v15 = 0;
  this[18] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v15 + 48]) < 0)
    {
      operator delete(this[v15 + 46]);
    }

    v15 -= 3;
  }

  while (v15 != -6);
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);
}

uint64_t TChartInfo::TChartInfo(uint64_t result, void *a2, uint64_t a3)
{
  *result = 0;
  *(result + 424) = 0;
  v3 = a2[3];
  *(result + 408) = v3;
  *(result + 416) = a3;
  v4 = *(v3 + 8);
  if (v4 != 1)
  {
    v5 = v4 - 2;
    v6 = (result + 8 * v4 - 8);
    do
    {
      if (*(*(*(result + 408) + 24) + v5) == 1)
      {
        *v6 = 0;
      }

      else
      {
        *v6 = a2[7];
        a2 = a2[6];
      }

      --v5;
      --v6;
    }

    while (v5 != -1);
  }

  return result;
}

uint64_t TParser::TParser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_287523E50;
  *(a1 + 8) = 0;
  v6 = a1 + 16;
  *(a1 + 16) = &unk_287523E28;
  *(a1 + 24) = 0;
  TAllocator::TAllocator((a1 + 48), 2048);
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  (*(*a1 + 16))(a1);
  *(a1 + 24) = 10;
  (*(*(a1 + 16) + 16))(v6);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  if (*(a1 + 48) >= 0x801uLL)
  {
    TAllocator::clear((a1 + 48));
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return a1;
}

void sub_262718ECC(_Unwind_Exception *a1)
{
  v4 = v1[20];
  if (v4)
  {
    v1[21] = v4;
    operator delete(v4);
  }

  v5 = v1[17];
  if (v5)
  {
    v1[18] = v5;
    operator delete(v5);
  }

  v6 = v1[14];
  if (v6)
  {
    v1[15] = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    v1[12] = v7;
    operator delete(v7);
  }

  TAllocator::clear((v1 + 6));
  _Unwind_Resume(a1);
}

void TParser::~TParser(TParser *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  TAllocator::clear((this + 48));
}

void *TParser::getCell(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[11];
  v7 = a1 + 11;
  if (a3 >= (a1[12] - v6) >> 3)
  {
    std::vector<TState *>::reserve(a1 + 11, 2 * (a3 + 1));
    v10 = 0;
    std::vector<TFileObject *>::resize(v7, a3 + 1, &v10);
    goto LABEL_7;
  }

  result = *(v6 + 8 * a3);
  if (!result)
  {
LABEL_7:
    result = TAllocator::allocate((a1 + 6), 32);
    v9 = *(a1[11] + 8 * a3);
    *result = a2;
    result[1] = 0;
    result[2] = 0;
    result[3] = v9;
    *(a1[11] + 8 * a3) = result;
    return result;
  }

  while (*result != a2)
  {
    result = result[3];
    if (!result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void *TParser::addOpenProduction(void *a1, void *a2)
{
  v3 = a2[3];
  if (v3)
  {
    v4 = (*(v3 + 16) + 8 * a2[4]);
  }

  else
  {
    v4 = a2 + 6;
  }

  result = TParser::getCell(a1, *v4, a2[2] + a2[1]);
  *a2 = result[1];
  result[1] = a2;
  return result;
}

void TParser::addClosedProduction(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) && *(a2 + 24))
  {
    TChartInfo::TChartInfo(__p, a2, a1 + 48);
    (*(**(a1 + 40) + 16))(*(a1 + 40), __p);
    if (v30)
    {
      return;
    }

    *(a2 + 40) = __p[0];
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (*(v4 + 16) + 8 * *(a2 + 32));
  }

  else
  {
    v5 = (a2 + 48);
  }

  Cell = TParser::getCell(a1, *v5, *(a2 + 8));
  v7 = Cell[2];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v7[2];
      v11 = *(a2 + 16);
      if (v10 < v11)
      {
        break;
      }

      if (v10 <= v11)
      {
        if (v7[5] == *(a2 + 40) || (v12 = *(a1 + 40)) != 0 && ((*(*v12 + 32))(v12, v7, a2) & 1) != 0)
        {
          if (*(a1 + 8) != 1)
          {
            return;
          }

          v20 = *(a2 + 8);
          v21 = *(a2 + 16);
          v22 = *(a2 + 24);
          if (v22)
          {
            v23 = *(v22 + 16) + 8 * *(a2 + 32);
          }

          else
          {
            v23 = a2 + 48;
          }

          loggableUnicode(*(*v23 + 16), __p);
          if (v29 >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          tknPrintf("Warning: ignoring duplicate parse for token range [%llu,%llu] with symbol %s (rules %llu and %llu)\n", v26, v20, v21, v27, **(a2 + 24), *v7[3]);
          goto LABEL_47;
        }

        ++v9;
      }

      else
      {
        v8 = v7;
      }

      v7 = *v7;
    }

    while (v7);
    if (v9 > *(a1 + 24))
    {
      if (*(a1 + 8) != 1)
      {
        return;
      }

      v13 = *(a2 + 24);
      if (v13)
      {
        v14 = *(v13 + 16) + 8 * *(a2 + 32);
      }

      else
      {
        v14 = a2 + 48;
      }

      loggableUnicode(*(*v14 + 16), __p);
      if (v29 >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      tknPrintf("Warning: grammar over-generating symbol %s for token range [%llu,%llu]. Ignoring parse. (rule %llu)\n", v24, v25, *(a2 + 8), *(a2 + 16), **(a2 + 24));
LABEL_47:
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    if (v8)
    {
      goto LABEL_24;
    }
  }

  v8 = Cell + 2;
LABEL_24:
  *a2 = *v8;
  *v8 = a2;
  for (i = Cell[1]; i; i = *i)
  {
    v16 = TAllocator::allocate((a1 + 48), 64);
    v17 = i[3];
    v16[3] = v17;
    v18 = i[4];
    do
    {
      v19 = *(*(v17 + 24) + 1 + v18++);
    }

    while ((v19 & 1) != 0);
    v16[4] = v18;
    *v16 = 0;
    v16[1] = i[1];
    v16[2] = *(a2 + 16) + i[2];
    v16[6] = i;
    v16[7] = a2;
    v16[5] = 0;
    ++*(a1 + 184);
    if (v17 && *(v17 + 8) - 1 != v18)
    {
      TParser::addOpenProduction(a1, v16);
    }

    else
    {
      TParser::addClosedProduction(a1, v16);
    }
  }

  TParser::startNewProductions(a1, a2);
}

void sub_2627193D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TParser::startNewProductions(void *a1, void *a2)
{
  v4 = a2[3];
  if (v4)
  {
    v5 = (*(v4 + 16) + 8 * a2[4]);
  }

  else
  {
    v5 = (a2 + 6);
  }

  v6 = **v5;
  if (!v6)
  {
    return;
  }

  do
  {
    v7 = *(a1[11] + 8 * a2[1]);
    if (!v7)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v8 = *v7;
      if (v7[1])
      {
        v9 = a1[4];
        if ((*(v8 + 8) & 4) == 0)
        {
          break;
        }
      }

      else
      {
        v9 = a1[4];
      }

      if (v8 == v9[1])
      {
        break;
      }

LABEL_12:
      v7 = v7[3];
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    v10 = *(v8 + 24) + v9[8] * *(*(v6[2] + 8 * v6[1] - 8) + 24);
    if (((*(v9[15] + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_12;
    }

    v11 = TAllocator::allocate((a1 + 6), 64);
    v12 = 0;
    v11[3] = v6;
    v13 = v6[3];
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = *(v13 + v12++);
      ++v14;
    }

    while ((v16 & 1) != 0);
    do
    {
      v17 = *(v13 + v15++);
    }

    while ((v17 & 1) != 0);
    v11[4] = v15 - 1;
    *(v11 + 1) = *(a2 + 1);
    *v11 = 0;
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = a2;
    ++a1[23];
    if (v6[1] == v15)
    {
      TParser::addClosedProduction(a1, v11);
    }

    else
    {
      TParser::addOpenProduction(a1, v11);
    }

LABEL_20:
    v6 = v6[4];
  }

  while (v6);
}

uint64_t TParser::getAllProductions(void *a1, uint64_t a2)
{
  ++a1[25];
  std::vector<TItnRule *>::resize(a1 + 11, 0);
  Cell = TParser::getCell(a1, *(a1[4] + 8), 0);
  v5 = a1[11];
  if (a1[12] != v5)
  {
    v6 = 0;
    do
    {
      if (*(v5 + 8 * v6))
      {
        std::vector<TWord const*>::resize(a1 + 14, 0);
        std::vector<unsigned long>::resize(a1 + 17, 0);
        std::vector<void const*>::resize(a1 + 20, 0);
        (*(*a2 + 16))(a2, v6, a1 + 14, a1 + 17, a1 + 20, a1 + 6);
        if (a1[14] != a1[15])
        {
          v7 = 0;
          do
          {
            v8 = TAllocator::allocate((a1 + 6), 64);
            v9 = *(a1[14] + 8 * v7);
            v8[2] = *(a1[17] + 8 * v7);
            v8[3] = 0;
            v8[4] = 0;
            v8[5] = 0;
            *v8 = 0;
            v8[1] = v6;
            v8[6] = v9;
            v8[7] = 0;
            v8[5] = *(a1[20] + 8 * v7);
            ++a1[23];
            TParser::addClosedProduction(a1, v8);
            ++v7;
            v10 = a1[15] - a1[14];
          }

          while (v7 < v10 >> 3);
          a1[24] += v10 >> 3;
        }
      }

      ++v6;
      v5 = a1[11];
    }

    while (v6 < (a1[12] - v5) >> 3);
  }

  return Cell[2];
}

void std::vector<void const*>::resize(void *result, unint64_t a2)
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
    std::vector<void const*>::__append(result, a2 - v2);
  }
}

uint64_t *TParser::logChart(uint64_t *result, void *a2)
{
  if (result[12] != result[11])
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = MEMORY[0x26672B080](a2, v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": terminals\n", 12);
      for (i = *(v3[11] + 8 * v4); i; i = i[3])
      {
        if ((*(*i + 8) & 4) != 0)
        {
          for (j = i[2]; j; j = *j)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "    ", 4);
            TProduction::log(j, v3[5], a2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
          }
        }
      }

      v8 = MEMORY[0x26672B080](a2, v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": closed productions\n", 21);
      for (k = *(v3[11] + 8 * v4); k; k = k[3])
      {
        if ((*(*k + 8) & 4) == 0)
        {
          for (m = k[2]; m; m = *m)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "    ", 4);
            TProduction::log(m, v3[5], a2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
          }
        }
      }

      v11 = MEMORY[0x26672B080](a2, v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": open productions\n", 19);
      for (n = *(v3[11] + 8 * v4); n; n = *(n + 24))
      {
        for (ii = *(n + 8); ii; ii = *ii)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "    ", 4);
          TProduction::log(ii, v3[5], a2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
        }
      }

      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "----\n", 5);
      ++v4;
    }

    while (v4 < (v3[12] - v3[11]) >> 3);
  }

  return result;
}

void *TProduction::log(void *a1, uint64_t a2, void *a3)
{
  if (a1[3])
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "span ", 5);
    v7 = MEMORY[0x26672B080](v6, a1[2]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    v8 = operator<<(a3, *(*(*(a1[3] + 16) + 8 * *(a1[3] + 8) - 8) + 16));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " =", 2);
    if (*(a1[3] + 8) != 1)
    {
      v9 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, " ", 1);
        if (v9 == a1[4])
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, ". ", 2);
        }

        v10 = a1[3];
        if (*(*(v10 + 24) + v9) == 1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "[", 1);
          v10 = a1[3];
        }

        v11 = *(*(v10 + 16) + 8 * v9);
        if ((*(v11 + 8) & 4) != 0)
        {
          v25 = 34;
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, &v25, 1);
          v13 = operator<<(v12, *(*(*(a1[3] + 16) + 8 * v9) + 16));
          v26 = 34;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v26, 1);
        }

        else
        {
          operator<<(a3, *(v11 + 16));
        }

        v14 = a1[3];
        if (*(*(v14 + 24) + v9) == 1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "]", 1);
          v14 = a1[3];
        }

        ++v9;
      }

      while (v9 < *(v14 + 8) - 1);
    }

    v15 = 1;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, " ", 1);
    v16 = a1[3];
    if (v16)
    {
      v15 = a1[4] + 1 == *(v16 + 8);
    }

    if (a2)
    {
      if (v15)
      {
        (*(*a2 + 24))(a2, a1, a3);
      }
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, " // line ", 9);
    return MEMORY[0x26672B080](v17, *a1[3]);
  }

  else
  {
    v23 = 96;
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, &v23, 1);
    v20 = a1[3];
    if (v20)
    {
      v21 = (*(v20 + 16) + 8 * a1[4]);
    }

    else
    {
      v21 = a1 + 6;
    }

    v22 = operator<<(v19, *(*v21 + 16));
    v24 = 96;
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &v24, 1);
  }
}

void TParser::logTree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a4 + 23) < 0)
  {
    if (!*(a4 + 8))
    {
      goto LABEL_9;
    }

    v12 = *a4;
  }

  else
  {
    v12 = a4;
    if (!*(a4 + 23))
    {
      goto LABEL_9;
    }
  }

  v13 = strlen(v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "|\n", 2);
  v15 = a4;
  if (*(a4 + 23) < 0)
  {
    v15 = *a4;
  }

  v16 = strlen(v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "|", 1);
LABEL_9:
  if ((*(a3 + 8) & 4) != 0)
  {
    v30 = operator<<(v29, *(a3 + 16));
    if (a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    operator<<(a6, *(a3 + 16));
    if (a2)
    {
LABEL_11:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, " ", 1);
      v18 = *(a1 + 40);
      if (v18)
      {
        (*(*v18 + 24))(v18, a2, a6);
      }

      if (*(a2 + 24))
      {
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, " // line ", 9);
        MEMORY[0x26672B080](v19, **(a2 + 24));
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "\n", 1);
      v20 = *(a2 + 24);
      if (v20)
      {
        memset(v33, 0, sizeof(v33));
        v21 = v20[1];
        v22 = v21 - 1;
        if (v21 == 1)
        {
          if (a5)
          {
            v31 = "|  ";
          }

          else
          {
            v31 = "   ";
          }

          std::string::append(a4, v31);
        }

        else
        {
          v23 = v20[3];
          v24 = v21 - 2;
          do
          {
            *(v33 + v24) = 0;
            if ((*(v23 + v24) & 1) == 0)
            {
              *(v33 + v24) = *(a2 + 56);
              a2 = *(a2 + 48);
            }

            --v24;
          }

          while (v24 != -1);
          if (a5)
          {
            v25 = "|  ";
          }

          else
          {
            v25 = "   ";
          }

          std::string::append(a4, v25);
          v26 = 0;
          do
          {
            v27 = *(v33 + v26);
            v28 = *(v20[2] + 8 * v26);
            if (*(a4 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
            }

            else
            {
              __p = *a4;
            }

            TParser::logTree(a1, v27, v28, &__p, ++v26 < v22, a6);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          while (v22 != v26);
        }
      }

      return;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "? // skipped", 12);

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "\n", 1);
}

void TParser::logTree(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v4 = a2[3];
    if (v4)
    {
      v5 = (*(v4 + 16) + 8 * a2[4]);
    }

    else
    {
      v5 = a2 + 6;
    }

    v6 = *v5;
    v8 = 0;
    LOBYTE(__p) = 0;
    TParser::logTree(a1, a2, v6, &__p, 0, a3);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_262719FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2)
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
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void MrecInitModule_netmgr_net(void)
{
  if (!gParDebugBest)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugBest", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugBest = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugBest);
  }

  if (!gParDebugTrueBestPelThreshScore)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugTrueBestPelThreshScore", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugTrueBestPelThreshScore = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugTrueBestPelThreshScore);
  }
}

uint64_t BestData::newOrTiedBestNode(uint64_t this, int a2, const Node *a3, HmmNet *a4)
{
  if (*(this + 32) != a2 || *(a3 + 11) < *(this + 22))
  {
    *(this + 32) = a2;
    v4 = *a3;
    *(this + 8) = *(a3 + 2);
    *this = v4;
    v5 = *(a3 + 12);
    *(this + 20) = *(a3 + 5);
    *(this + 12) = v5;
    *(this + 24) = a4;
  }

  return this;
}

uint64_t NetStats::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 100;
  }
}

double NetStats::resetStats(NetStats *this)
{
  *this = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  return result;
}

double NetStats::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a1 + 96) = *(a2 + 96);
  return result;
}

int32x2_t NetStats::operator-=(uint64_t a1, uint64_t a2)
{
  *a1 = vsub_s32(*a1, *a2);
  *(a1 + 8) -= *(a2 + 8);
  *(a1 + 16) = vsubq_s64(*(a1 + 16), *(a2 + 16));
  *(a1 + 32) -= *(a2 + 32);
  *(a1 + 40) = vsubq_s32(*(a1 + 40), *(a2 + 40));
  *(a1 + 56) = vsubq_s32(*(a1 + 56), *(a2 + 56));
  *(a1 + 72) = vsubq_s32(*(a1 + 72), *(a2 + 72));
  result = vsub_s32(*(a1 + 88), *(a2 + 88));
  *(a1 + 88) = result;
  *(a1 + 96) -= *(a2 + 96);
  return result;
}

uint64_t NetMgr::NetMgr(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  *(a1 + 4) = *a4;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  PhnIndexSet::PhnIndexSet((a1 + 40), 0);
  v7 = *a4;
  HistoryMgr::HistoryMgr(a1 + 56, &v7);
  *(a1 + 192) = 0x100000001;
  *(a1 + 200) = 1310740000;
  *(a1 + 204) = 0;
  *(a1 + 212) = -65536;
  *(a1 + 216) = 0;
  *(a1 + 248) = 20000;
  *(a1 + 224) = xmmword_26288BE90;
  *(a1 + 240) = 5629499534213140000;
  *(a1 + 256) = 0x100000001;
  *(a1 + 264) = 1310740000;
  *(a1 + 276) = -65536;
  *(a1 + 268) = 0;
  *(a1 + 280) = 0;
  *(a1 + 312) = 20000;
  *(a1 + 288) = xmmword_26288BE90;
  *(a1 + 304) = 5629499534213140000;
  *(a1 + 302480) = 0u;
  *(a1 + 302496) = 0u;
  *(a1 + 302512) = 0u;
  *(a1 + 302528) = 0u;
  *(a1 + 302544) = 0u;
  *(a1 + 302560) = 0u;
  *(a1 + 302572) = 0u;
  *(a1 + 302688) = 0;
  *(a1 + 302656) = 0u;
  *(a1 + 302672) = 0u;
  *(a1 + 302624) = 0u;
  *(a1 + 302640) = 0u;
  *(a1 + 302592) = 0u;
  *(a1 + 302608) = 0u;
  *(a1 + 302696) = 0u;
  *(a1 + 302712) = 0u;
  *(a1 + 302728) = 0u;
  *(a1 + 302744) = 0u;
  *(a1 + 302760) = 0u;
  *(a1 + 302776) = 0u;
  *(a1 + 302792) = 0;
  *(a1 + 302794) = 257;
  *(a1 + 302796) = 0x100000001;
  *(a1 + 302804) = 1310740000;
  *(a1 + 302818) = -1;
  *(a1 + 302816) = 0;
  *(a1 + 302808) = 0;
  *(a1 + 302904) = 0u;
  *(a1 + 302920) = 0u;
  *(a1 + 302872) = 0u;
  *(a1 + 302888) = 0u;
  *(a1 + 302840) = 0u;
  *(a1 + 302856) = 0u;
  *(a1 + 302824) = 0u;
  DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::DgnIdFactory(a1 + 302936);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void sub_26271A4C0(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 302920);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 302904);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 302888);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 302872);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 302856);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 302840);
  DgnIArray<Utterance *>::~DgnIArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 302560);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 302544);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 302528);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 302512);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 302496);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  HistoryMgr::~HistoryMgr((v1 + 56));
  BitArray::~BitArray((v1 + 40));
  _Unwind_Resume(a1);
}

void NetMgr::~NetMgr(NetMgr *this)
{
  DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::~DgnIdFactory(this + 302936);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 302920);
  DgnIArray<Utterance *>::~DgnIArray(this + 302904);
  DgnIArray<Utterance *>::~DgnIArray(this + 302888);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 302872);
  DgnIArray<Utterance *>::~DgnIArray(this + 302856);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 302840);
  DgnIArray<Utterance *>::~DgnIArray(this + 302824);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 302560);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 302544);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 302528);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 302512);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 302496);
  DgnIArray<Utterance *>::~DgnIArray(this + 302480);
  HistoryMgr::~HistoryMgr((this + 56));
  BitArray::~BitArray((this + 40));
}

void NetMgr::printSize(NetMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 534);
  if (v180)
  {
    v13 = v179;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v179);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 535);
  if (v180)
  {
    v18 = v179;
  }

  else
  {
    v18 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v179);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 536);
  if (v180)
  {
    v20 = v179;
  }

  else
  {
    v20 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v179);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 537);
  if (v180)
  {
    v23 = v179;
  }

  else
  {
    v23 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v23, v21, v21, 0);
  DgnString::~DgnString(&v179);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v24 = 4;
  }

  else
  {
    v24 = 8;
  }

  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 538);
  if (v180)
  {
    v26 = v179;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v26, v24, v24, 0);
  v176 = a6;
  v175 = a3;
  DgnString::~DgnString(&v179);
  *a4 += v24;
  *a5 += v24;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 4;
  }

  else
  {
    v27 = 8;
  }

  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 539);
  if (v180)
  {
    v29 = v179;
  }

  else
  {
    v29 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v29, v27, v27, 0);
  DgnString::~DgnString(&v179);
  *a4 += v27;
  *a5 += v27;
  v30 = PhnIndexSet::sizeObject();
  v31 = PhnIndexSet::sizeObject();
  v32 = this;
  v33 = PhnIndexSet::sizeObject();
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 541);
  if (v180)
  {
    v35 = v179;
  }

  else
  {
    v35 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v15, &byte_262899963, v16, v16, v35, v30, v31, v33);
  DgnString::~DgnString(&v179);
  *a4 += v30;
  *a5 += v31;
  *v176 += v33;
  v179 = 0;
  v177 = 0;
  v178 = 0;
  HistoryMgr::printSize((v32 + 14), 0xFFFFFFFFLL, v15, &v179, &v178, &v177);
  *a4 += v179;
  *a5 += v178;
  *v176 += v177;
  v36 = sizeObject((v32 + 48), 0);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 4;
  }

  else
  {
    v37 = 8;
  }

  v38 = v36 + v37 + 26;
  v39 = sizeObject((v32 + 48), 1);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v40 = 4;
  }

  else
  {
    v40 = 8;
  }

  v41 = v39 + v40 + 26;
  v42 = sizeObject((v32 + 48), 3);
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 543);
  if (v180)
  {
    v44 = v179;
  }

  else
  {
    v44 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v15, &byte_262899963, v16, v16, v44, v38, v41, v42);
  DgnString::~DgnString(&v179);
  *a4 += v38;
  *a5 += v41;
  *v176 += v42;
  v45 = sizeObject((v32 + 64), 0);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 4;
  }

  else
  {
    v46 = 8;
  }

  v47 = v45 + v46 + 26;
  v48 = sizeObject((v32 + 64), 1);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v49 = 4;
  }

  else
  {
    v49 = 8;
  }

  v50 = v48 + v49 + 26;
  v51 = sizeObject((v32 + 64), 3);
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 545);
  if (v180)
  {
    v53 = v179;
  }

  else
  {
    v53 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v15, &byte_262899963, v16, v16, v53, v47, v50, v51);
  DgnString::~DgnString(&v179);
  *a4 += v47;
  *a5 += v50;
  *v176 += v51;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 547);
  if (v180)
  {
    v55 = v179;
  }

  else
  {
    v55 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v15, &byte_262899963, v16, v16, v55, 151072, 151072, 0);
  DgnString::~DgnString(&v179);
  *a4 += 151072;
  *a5 += 151072;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 549);
  if (v180)
  {
    v57 = v179;
  }

  else
  {
    v57 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v15, &byte_262899963, v16, v16, v57, 151072, 151072, 0);
  DgnString::~DgnString(&v179);
  *a4 += 151072;
  *a5 += 151072;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 551);
  if (v180)
  {
    v59 = v179;
  }

  else
  {
    v59 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v15, &byte_262899963, v16, v16, v59, 4, 4, 0);
  DgnString::~DgnString(&v179);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 553);
  if (v180)
  {
    v61 = v179;
  }

  else
  {
    v61 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v15, &byte_262899963, v16, v16, v61, 4, 4, 0);
  DgnString::~DgnString(&v179);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 555);
  if (v180)
  {
    v63 = v179;
  }

  else
  {
    v63 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &byte_262899963, v16, v16, v63, 4, 4, 0);
  DgnString::~DgnString(&v179);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 557);
  if (v180)
  {
    v65 = v179;
  }

  else
  {
    v65 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v15, &byte_262899963, v16, v16, v65, 4, 4, 0);
  DgnString::~DgnString(&v179);
  *a4 += 4;
  *a5 += 4;
  v66 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 12;
  }

  v67 = v32[75622];
  v68 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v68 = 3;
  }

  v69 = ((v32[75623] - v67 + v67) << v68) + v66;
  v70 = (v67 << v68) + v66;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 559);
  if (v180)
  {
    v72 = v179;
  }

  else
  {
    v72 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v15, &byte_262899963, v16, v16, v72, v69, v70, 0);
  DgnString::~DgnString(&v179);
  *a4 += v69;
  *a5 += v70;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 12;
  }

  else
  {
    v73 = 16;
  }

  v74 = v32[75626];
  v75 = v32[75627];
  if (v75 >= v74)
  {
    v76 = 0;
    if (v74 > 0)
    {
      v73 += 4 * (v74 - 1) + 4;
    }

    v77 = v73 + 4 * (v75 - v74);
  }

  else
  {
    v76 = 4 * v74;
    v77 = v73;
  }

  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 561);
  if (v180)
  {
    v79 = v179;
  }

  else
  {
    v79 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v15, &byte_262899963, v16, v16, v79, v77, v73, v76);
  DgnString::~DgnString(&v179);
  *a4 += v77;
  *a5 += v73;
  *v176 += v76;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v80 = 12;
  }

  else
  {
    v80 = 16;
  }

  v81 = v32[75630];
  v82 = v32[75631];
  if (v82 >= v81)
  {
    v83 = 0;
    if (v81 > 0)
    {
      v80 += 4 * (v81 - 1) + 4;
    }

    v84 = v80 + 4 * (v82 - v81);
  }

  else
  {
    v83 = 4 * v81;
    v84 = v80;
  }

  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 563);
  if (v180)
  {
    v86 = v179;
  }

  else
  {
    v86 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v15, &byte_262899963, v16, v16, v86, v84, v80, v83);
  DgnString::~DgnString(&v179);
  *a4 += v84;
  *a5 += v80;
  *v176 += v83;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v87 = 12;
  }

  else
  {
    v87 = 16;
  }

  v88 = v32[75634];
  v89 = v32[75635];
  v90 = v89 >= v88;
  v91 = v89 - v88;
  if (v90)
  {
    if (v88 > 0)
    {
      v92 = (v88 - 1) + v87 + 1;
    }

    else
    {
      v92 = v87;
    }

    v87 = v92 + v91;
    v88 = 0;
  }

  else
  {
    v92 = v87;
  }

  v93 = v88;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 565);
  if (v180)
  {
    v95 = v179;
  }

  else
  {
    v95 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v15, &byte_262899963, v16, v16, v95, v87, v92, v93);
  DgnString::~DgnString(&v179);
  *a4 += v87;
  *a5 += v92;
  *v176 += v93;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v96 = 12;
  }

  else
  {
    v96 = 16;
  }

  v97 = v32[75638];
  v98 = v32[75639];
  if (v98 >= v97)
  {
    v99 = 0;
    if (v97 > 0)
    {
      v96 += 2 * (v97 - 1) + 2;
    }

    v100 = v96 + 2 * (v98 - v97);
  }

  else
  {
    v99 = 2 * v97;
    v100 = v96;
  }

  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 567);
  if (v180)
  {
    v102 = v179;
  }

  else
  {
    v102 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v15, &byte_262899963, v16, v16, v102, v100, v96, v99);
  DgnString::~DgnString(&v179);
  *a4 += v100;
  *a5 += v96;
  *v176 += v99;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v103 = 12;
  }

  else
  {
    v103 = 16;
  }

  v104 = v32[75642];
  v105 = v32[75643];
  if (v105 >= v104)
  {
    v106 = 0;
    if (v104 > 0)
    {
      v103 += 4 * (v104 - 1) + 4;
    }

    v107 = v103 + 4 * (v105 - v104);
  }

  else
  {
    v106 = 4 * v104;
    v107 = v103;
  }

  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 568);
  if (v180)
  {
    v109 = v179;
  }

  else
  {
    v109 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v15, &byte_262899963, v16, v16, v109, v107, v103, v106);
  DgnString::~DgnString(&v179);
  *a4 += v107;
  *a5 += v103;
  *v176 += v106;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 587);
  if (v180)
  {
    v111 = v179;
  }

  else
  {
    v111 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v15, &byte_262899963, v16, v16, v111, 100, 100, 0);
  DgnString::~DgnString(&v179);
  *a4 += 100;
  *a5 += 100;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 589);
  if (v180)
  {
    v113 = v179;
  }

  else
  {
    v113 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v15, &byte_262899963, v16, v16, v113, 100, 100, 0);
  DgnString::~DgnString(&v179);
  *a4 += 100;
  *a5 += 100;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 590);
  if (v180)
  {
    v115 = v179;
  }

  else
  {
    v115 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v15, &byte_262899963, v16, v16, v115, 12, 12, 0);
  DgnString::~DgnString(&v179);
  *a4 += 12;
  *a5 += 12;
  v116 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v116 = 12;
  }

  v117 = v32[75708];
  v118 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v118 = 3;
  }

  v119 = ((v32[75709] - v117 + v117) << v118) + v116;
  v120 = (v117 << v118) + v116;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 592);
  if (v180)
  {
    v122 = v179;
  }

  else
  {
    v122 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v121, v15, &byte_262899963, v16, v16, v122, v119, v120, 0);
  DgnString::~DgnString(&v179);
  *a4 += v119;
  *a5 += v120;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v123 = 12;
  }

  else
  {
    v123 = 16;
  }

  v124 = v32[75712];
  v125 = v32[75713];
  if (v125 >= v124)
  {
    v126 = 0;
    if (v124 > 0)
    {
      v123 += 4 * (v124 - 1) + 4;
    }

    v127 = v123 + 4 * (v125 - v124);
  }

  else
  {
    v126 = 4 * v124;
    v127 = v123;
  }

  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 594);
  if (v180)
  {
    v129 = v179;
  }

  else
  {
    v129 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v128, v15, &byte_262899963, v16, v16, v129, v127, v123, v126);
  DgnString::~DgnString(&v179);
  *a4 += v127;
  *a5 += v123;
  *v176 += v126;
  v130 = sizeObject<FrameTypeInfo>((v32 + 75714), 0);
  v131 = sizeObject<FrameTypeInfo>((v32 + 75714), 1);
  sizeObject(&v179, 2);
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 595);
  if (v180)
  {
    v133 = v179;
  }

  else
  {
    v133 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v15, &byte_262899963, v16, v16, v133, v130, v131, 0);
  DgnString::~DgnString(&v179);
  *a4 += v130;
  *a5 += v131;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v134 = 12;
  }

  else
  {
    v134 = 16;
  }

  v135 = v32[75720];
  v136 = v32[75721];
  if (v136 >= v135)
  {
    v137 = 0;
    if (v135 > 0)
    {
      v134 += 4 * (v135 - 1) + 4;
    }

    v138 = v134 + 4 * (v136 - v135);
  }

  else
  {
    v137 = 4 * v135;
    v138 = v134;
  }

  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 596);
  if (v180)
  {
    v140 = v179;
  }

  else
  {
    v140 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v139, v15, &byte_262899963, v16, v16, v140, v138, v134, v137);
  DgnString::~DgnString(&v179);
  *a4 += v138;
  *a5 += v134;
  *v176 += v137;
  v141 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v141 = 12;
  }

  v142 = v32[75724];
  v143 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v143 = 3;
  }

  v144 = ((v32[75725] - v142 + v142) << v143) + v141;
  v145 = (v142 << v143) + v141;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 597);
  if (v180)
  {
    v147 = v179;
  }

  else
  {
    v147 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v146, v15, &byte_262899963, v16, v16, v147, v144, v145, 0);
  DgnString::~DgnString(&v179);
  *a4 += v144;
  *a5 += v145;
  v148 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v148 = 12;
  }

  v149 = v32[75728];
  v150 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v150 = 3;
  }

  v151 = ((v32[75729] - v149 + v149) << v150) + v148;
  v152 = (v149 << v150) + v148;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 598);
  if (v180)
  {
    v154 = v179;
  }

  else
  {
    v154 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v153, v15, &byte_262899963, v16, v16, v154, v151, v152, 0);
  DgnString::~DgnString(&v179);
  *a4 += v151;
  *a5 += v152;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v155 = 12;
  }

  else
  {
    v155 = 16;
  }

  v156 = v32[75732];
  v157 = v32[75733];
  if (v157 >= v156)
  {
    v158 = 0;
    if (v156 > 0)
    {
      v155 += 4 * (v156 - 1) + 4;
    }

    v159 = v155 + 4 * (v157 - v156);
  }

  else
  {
    v158 = 4 * v156;
    v159 = v155;
  }

  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 599);
  if (v180)
  {
    v161 = v179;
  }

  else
  {
    v161 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v160, v15, &byte_262899963, v16, v16, v161, v159, v155, v158);
  DgnString::~DgnString(&v179);
  *a4 += v159;
  *a5 += v155;
  *v176 += v158;
  v162 = v32[75736];
  v163 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v163 = 3;
  }

  v164 = v162 << v163;
  v165 = (v32[75737] - v162 + v162) << v163;
  v166 = v32[75740] * v162;
  v167 = 36;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v167 = 28;
  }

  v168 = v167 + v166;
  v169 = v168 + v165;
  v170 = v168 + v164;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 601);
  if (v180)
  {
    v172 = v179;
  }

  else
  {
    v172 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v15, &byte_262899963, v16, v16, v172, v169, v170, v166);
  DgnString::~DgnString(&v179);
  *a4 += v169;
  *a5 += v170;
  *v176 += v166;
  getShipObjectSizeDescription(&v179, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/netmgr.cpp", 602);
  if (v180)
  {
    v174 = v179;
  }

  else
  {
    v174 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v173, v175, &byte_262899963, (35 - v175), (35 - v175), v174, *a4, *a5, *v176);
  DgnString::~DgnString(&v179);
}

double NetMgr::addEmptyNet(uint64_t a1, uint64_t a2)
{
  v4 = MemChunkAlloc(0xA0uLL, 0);

  return EmptyNet::EmptyNet(v4, a1, a2);
}

uint64_t NetMgr::addSilNet(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = *(a1 + 8);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v10 = MemChunkAlloc(0xC0uLL, 0);
      result = AcousticNet::AcousticNet(v10, a1, a2, 1, 0, 0, 0, 0);
      *(result + 160) = 0u;
      *(result + 176) = 0u;
      v7 = &unk_287528CE0;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v8 = MemChunkAlloc(0xC0uLL, 0);
      result = AcousticNet::AcousticNet(v8, a1, a2, 1, 0, 0, 0, 0);
      *(result + 160) = 0u;
      *(result + 176) = 0u;
      v7 = &unk_2875260D0;
    }
  }

  else
  {
    if (!v5)
    {
      v9 = MemChunkAlloc(0xC0uLL, 0);
      result = AcousticNet::AcousticNet(v9, a1, a2, 1, 0, 0, 0, 0);
      *result = &unk_287523810;
      *(result + 160) = 0u;
      *(result + 176) = 0u;
      return result;
    }

    if (v5 != 1)
    {
      return result;
    }

    v6 = MemChunkAlloc(0xC0uLL, 0);
    result = AcousticNet::AcousticNet(v6, a1, a2, 1, 0, 0, 0, 0);
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    v7 = &unk_287528898;
  }

  *result = v7;
  return result;
}

void NetMgr::addNonSilNet(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  if (a5 == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  if (a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 2;
  }

  if (a6)
  {
    v15 = (a7 / a6);
    v9 = (a7 % a6);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v23 = MemChunkAlloc(0xC0uLL, 0);
      v18 = AcousticNet::AcousticNet(v23, a1, a2, v14, 0, 0, 0, a8);
      *(v18 + 160) = 0u;
      *(v18 + 176) = 0u;
      v19 = &unk_287528CE0;
    }

    else
    {
      if (v16 != 3)
      {
        return;
      }

      v20 = MemChunkAlloc(0xC0uLL, 0);
      v18 = AcousticNet::AcousticNet(v20, a1, a2, v14, 0, 0, 0, a8);
      *(v18 + 160) = 0u;
      *(v18 + 176) = 0u;
      v19 = &unk_2875260D0;
    }

    goto LABEL_23;
  }

  if (v16)
  {
    if (v16 != 1)
    {
      return;
    }

    v17 = MemChunkAlloc(0xC0uLL, 0);
    v18 = AcousticNet::AcousticNet(v17, a1, a2, v14, 0, v15, v9, a8);
    *(v18 + 160) = 0u;
    *(v18 + 176) = 0u;
    v19 = &unk_287528898;
    goto LABEL_23;
  }

  v21 = *(a1 + 12);
  if (!v21)
  {
    v24 = MemChunkAlloc(0xC0uLL, 0);
    v25 = AcousticNet::AcousticNet(v24, a1, a2, v14, 0, v15, v9, a8);
    *v25 = &unk_287523810;
    *(v25 + 160) = 0u;
    *(v25 + 176) = 0u;
    return;
  }

  if (v21 == 1)
  {
    if (v14 == 4)
    {
      v26 = MemChunkAlloc(0x120uLL, 0);
      v18 = BaseSyncNet::BaseSyncNet(v26, a1, a2, 4, 1, v15, v9, a4, a8);
      v19 = &unk_287526F30;
LABEL_23:
      *v18 = v19;
      return;
    }

    if (v14 == 3)
    {
      v22 = MemChunkAlloc(0x170uLL, 0);
      SyncNet::SyncNet(v22, a1, a2, 3, v15, v9, a4, a8);
    }

    else
    {
      v27 = MemChunkAlloc(0x130uLL, 0);
      NonCoartSyncNet::NonCoartSyncNet(v27, a1, a2, 2, v15, v9, a4, a8);
    }
  }
}

void (***DgnDelete<HmmNet>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void NetMgr::beginNetMgrSyncRecog(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v12 = a1 + 299008;
  HistoryMgr::beginHistoryMgrSyncRecog((a1 + 56));
  *(a1 + 24) = a4;
  *(a1 + 32) = a3;
  *(a1 + 16) = a2;
  *(v12 + 3568) = 0;
  *(v12 + 3576) = 0;
  *(a1 + 302696) = 0u;
  *(a1 + 302712) = 0u;
  *(a1 + 302728) = 0u;
  *(a1 + 302744) = 0u;
  *(a1 + 302760) = 0u;
  *(a1 + 302776) = 0;
  *(a1 + 302592) = 0u;
  *(a1 + 302608) = 0u;
  *(a1 + 302624) = 0u;
  *(a1 + 302640) = 0u;
  *(a1 + 302656) = 0u;
  *(a1 + 302672) = 0u;
  *(a1 + 302688) = 0;
  if (a2)
  {
    v13 = **a2;
  }

  else
  {
    v13 = 1;
  }

  PhnIndexSet::PhnIndexSet(v16, v13);
  v14 = v16[0];
  *v16[0] |= 1u;
  v15 = *(a1 + 16);
  if (v15)
  {
    *(v14 + ((*(*v15 + 56) >> 3) & 0x1FFC)) |= 1 << *(*v15 + 56);
  }

  BitArray::operator=((a1 + 40), v16);
  *(a1 + 244) = 0;
  *(a1 + 224) = xmmword_26288BE90;
  *(a1 + 240) = 20000;
  *(a1 + 256) = 0x100000001;
  *(a1 + 264) = 1310740000;
  *(a1 + 276) = -65536;
  *(a1 + 268) = 0;
  *(a1 + 280) = 0;
  *(a1 + 312) = 20000;
  *(a1 + 288) = xmmword_26288BE90;
  *(a1 + 304) = 5629499534213140000;
  bzero((a1 + 320), 0x49C48uLL);
  *(v12 + 3464) = a6;
  *(v12 + 3468) = a5;
  *(a1 + 192) = 0x100000001;
  *(a1 + 200) = 1310740000;
  *(a1 + 204) = 0;
  *(a1 + 212) = -65536;
  *(a1 + 216) = 0;
  *(a1 + 246) = 1310740000;
  BitArray::~BitArray(v16);
}

void *NetMgr::endNetMgrSyncRecog(NetMgr *this)
{
  *(this + 37822) = 0;
  *(this + 75646) = 0;
  *(this + 302696) = 0u;
  *(this + 302712) = 0u;
  *(this + 302728) = 0u;
  *(this + 302744) = 0u;
  *(this + 302760) = 0u;
  *(this + 37847) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 18912) = 0u;
  *(this + 18913) = 0u;
  *(this + 18914) = 0u;
  *(this + 18915) = 0u;
  *(this + 18916) = 0u;
  *(this + 18917) = 0u;
  *(this + 75672) = 0;
  return HistoryMgr::beginHistoryMgrSyncRecog((this + 56));
}

int32x2_t NetMgr::beginNetMgrFrame(NetMgr *this, int a2)
{
  v2 = *(this + 58);
  if (v2 != a2)
  {
    *(this + 32) = *(this + 24);
    *(this + 66) = *(this + 50);
    *(this + 268) = *(this + 204);
    *(this + 69) = *(this + 53);
    *(this + 35) = *(this + 27);
    *(this + 77) = *(this + 61);
    *(this + 156) = *(this + 124);
    *(this + 74) = v2;
    *(this + 36) = *(this + 28);
    *(this + 300) = *(this + 236);
    *(this + 24) = 0x100000001;
    *(this + 50) = 1310740000;
    *(this + 53) = -65536;
    *(this + 204) = 0;
    *(this + 27) = 0;
    *(this + 61) = 1310720000;
    *(this + 124) = 20000;
    *(this + 28) = 20000;
    result = vdup_n_s32(0x4E20u);
    *(this + 236) = result;
    *(this + 58) = a2;
  }

  return result;
}

uint64_t NetMgr::normalizeBestAndComputeEstimatedThresh(NetMgr *this, int a2, int a3, int *a4)
{
  *(this + 24) = 0x100000001;
  *(this + 50) = 1310740000;
  *(this + 204) = 0;
  *(this + 53) = -65536;
  *(this + 27) = 0;
  *(this + 56) = 20000;
  *(this + 236) = vdup_n_s32(0x4E20u);
  *(this + 61) = 1310720000;
  if (a2 == -16)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    *(this + 57) = 0;
    v12 = 20000;
    v13 = 0xFFFFLL;
  }

  else
  {
    v12 = *(this + 72);
    if (v12 == 20000)
    {
      v10 = 0;
      v11 = 0;
      v13 = 0xFFFFLL;
    }

    else
    {
      v13 = *(this + 139);
      v10 = *(this + 67) >> 8;
      v11 = *(this + 276);
    }

    v21 = 0;
    BestDataMaybeShadow = NetMgr::getBestDataMaybeShadow(this, 0, &v21, &v20, &v19);
    v9 = *(this + 73);
    *(this + 57) = v9;
    v15 = *(BestDataMaybeShadow + 32);
    if (v15 == 20000)
    {
      v8 = 0;
    }

    else
    {
      v16 = v15 - v9 + v21 + *(BestDataMaybeShadow + 36);
      *(this + 122) = v16;
      v8 = v16;
      v9 += v16;
      *(this + 57) = v9;
    }
  }

  *a4 = v9;
  v17 = *(this + 3);
  if (v17)
  {
    *(v17 + 256) = v8;
    a3 = NetMgr::computeEstimatedThreshThisFrame(this, a2, v13, v10, v11, v12, a3);
  }

  if (a3 >= 5000)
  {
    return 5000;
  }

  else
  {
    return a3;
  }
}

uint64_t NetMgr::getBestDataMaybeShadow(NetMgr *this, int a2, int *a3, int *a4, BOOL *a5)
{
  v5 = this + 299008;
  v6 = 256;
  if (a2)
  {
    v6 = 192;
  }

  result = this + v6;
  v8 = *(v5 + 870);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v5 + 436);
      v14 = *(v13 + 4 * v9);
      if (v14 != 20000)
      {
        v15 = *(*(v5 + 434) + 8 * v9) + v6;
        v16 = *(v15 + 32);
        if (v16 != 20000)
        {
          v17 = *(result + 32);
          if (v17 == 20000 || v16 + v14 + *(v15 + 36) < v17 + v10 + *(result + 36))
          {
            v11 = *(*(v5 + 438) + 4 * v9);
            v12 = *(*(v5 + 440) + v9);
            v10 = *(v13 + 4 * v9);
            result = *(*(v5 + 434) + 8 * v9) + v6;
          }
        }
      }

      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  *a3 = v10;
  *a4 = v11;
  *a5 = v12 & 1;
  return result;
}

uint64_t NetMgr::computeEstimatedThreshThisFrame(NetMgr *this, int a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a2 == -16)
  {
    v8 = *(this + 3);
LABEL_4:
    ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(v8, 0);
    return (ScoreNoBackoff + a7);
  }

  v8 = *(this + 3);
  if (a6 == 20000)
  {
    goto LABEL_4;
  }

  v12 = PelScoreCache::getScoreNoBackoff(v8, a3) + a6;
  if (-a5 > a4)
  {
    v13 = -a5;
  }

  else
  {
    v13 = a4;
  }

  v14 = v12 - v13;
  if (a4 < 0)
  {
    ScoreNoBackoff = v14;
  }

  else
  {
    ScoreNoBackoff = v12;
  }

  return (ScoreNoBackoff + a7);
}

uint64_t NetMgr::computeThreshScore(NetMgr *this, int a2, int a3, __int16 a4, int a5, unsigned int *a6, unint64_t *a7)
{
  v12 = this + 299008;
  if (*(this + 75618))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (2)
    {
      v17 = 37768 - v13;
      v18 = v13 - 5000;
      v19 = (this + 4 * v13++ + 320);
      while (*v19)
      {
        v14 += *v19;
        *v19 = 0;
        if (!v16)
        {
          v16 = v14 >= *(v12 + 866);
          if (v14 >= *(v12 + 866))
          {
            v15 = v18;
          }

          break;
        }

        ++v13;
        ++v18;
        ++v19;
        v16 = 1;
        if (!--v17)
        {
          goto LABEL_12;
        }
      }

      if (v17 != 1)
      {
        continue;
      }

      break;
    }

    if (v16)
    {
LABEL_12:
      *(this + 59) = v15;
    }
  }

  if (*(v12 + 867))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (2)
    {
      v24 = 37768 - v20;
      v25 = v20 - 5000;
      v26 = (this + 4 * v20++ + 151392);
      while (*v26)
      {
        v23 += *v26;
        *v26 = 0;
        if (!v21)
        {
          v21 = v23 >= *(v12 + 867);
          if (v23 >= *(v12 + 867))
          {
            v22 = v25;
          }

          break;
        }

        ++v20;
        ++v25;
        ++v26;
        v21 = 1;
        if (!--v24)
        {
          goto LABEL_24;
        }
      }

      if (v24 != 1)
      {
        continue;
      }

      break;
    }

    if (v21)
    {
LABEL_24:
      *(this + 60) = v22;
    }
  }

  if (a6)
  {
    v27 = *a6;
    if (*a6 <= *(v12 + 865))
    {
      v27 = *(v12 + 865);
    }

    *a6 = v27;
  }

  if (a7)
  {
    *a7 += *(v12 + 865);
  }

  *(v12 + 432) = 0;
  *v43 = 0;
  v42 = 0;
  BestDataMaybeShadow = NetMgr::getBestDataMaybeShadow(this, 1, &v43[1], v43, &v42);
  v29 = *(BestDataMaybeShadow + 32);
  if (v29 == 20000)
  {
    v43[0] = 0;
    v30 = a3 + a2;
    v31 = a3 + a2;
LABEL_37:
    v33 = v30 - a3;
    goto LABEL_38;
  }

  v31 = a3 + a2;
  v30 = v29 + a3 + a2 + v43[1];
  if (v42)
  {
    v32 = *(BestDataMaybeShadow + 22);
  }

  else
  {
    v32 = *(this + 107);
  }

  v33 = v29 + v31 + v43[1];
  if (!v32)
  {
    goto LABEL_37;
  }

LABEL_38:
  v34 = *(this + 59);
  v35 = *(this + 60);
  if (v34 >= v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = *(this + 59);
  }

  if (v34 != 20000)
  {
    v33 = v36;
  }

  if (v35 >= v33)
  {
    v37 = v33;
  }

  else
  {
    v37 = *(this + 60);
  }

  if (v35 != 20000)
  {
    v33 = v37;
  }

  if (v43[0] == 20000)
  {
    v38 = 5000;
  }

  else
  {
    v38 = v30 - a4 + LOWORD(v43[0]);
  }

  if (v33 < v38)
  {
    v38 = v33;
  }

  *(this + 124) = v38;
  if (v29 != 20000)
  {
    v39 = *(this + 123);
    if (v39 != 20000)
    {
      v40 = v31 - a5 + v39;
      if (v40 >= v38)
      {
        LOWORD(v40) = v38;
      }

      *(this + 124) = v40;
    }
  }

  if (v33 >= 5000)
  {
    return 5000;
  }

  else
  {
    return v33;
  }
}

int32x2_t NetMgr::adjustBestForBWBack(NetMgr *this, int a2, int a3, int *a4)
{
  *(this + 24) = 0x100000001;
  *(this + 50) = 1310740000;
  *(this + 204) = 0;
  v4 = (this + 204);
  *(this + 53) = -65536;
  *(this + 27) = 0;
  result = vdup_n_s32(0x4E20u);
  *(this + 236) = result;
  *(this + 61) = 1310720000;
  if (a3 == -16)
  {
    v6 = 0;
    v7 = 0;
    *(this + 57) = 0;
  }

  else
  {
    v7 = *(this + 73);
    *(this + 57) = v7;
    v6 = *(this + 72);
    if (v6 == 20000)
    {
      v6 = 0;
    }

    else
    {
      *(this + 122) = v6;
      v7 += v6;
      v6 = v6;
      *(this + 50) = *(this + 66);
      *(this + 24) = *(this + 32);
      *(this + 53) = *(this + 69);
      *v4 = *(this + 268);
      *(this + 27) = *(this + 35);
      *(this + 101) = 20000;
      *(this + 56) = 20000;
      *(this + 57) = v7;
    }
  }

  *a4 = v7;
  v8 = *(this + 3);
  if (v8)
  {
    *(v8 + 256) = v6;
  }

  if (a2)
  {
    result = 0x100000001;
    *(this + 24) = 0x100000001;
    *(this + 50) = 1310740000;
    *(this + 107) = -1;
    *v4 = 0;
    *(this + 106) = 0;
    *(this + 27) = 0;
    *(this + 123) = 20000;
  }

  return result;
}

uint64_t *NetMgr::shadowBest(uint64_t *this, NetMgr *a2, int a3, int a4, char a5)
{
  v9 = this + 37376;
  v10 = *(this + 75622);
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = 0;
  while (*(this[37810] + 8 * v11) != a2)
  {
    if (v10 == ++v11)
    {
      goto LABEL_7;
    }
  }

  *(this[37812] + 4 * v11) = a3;
  *(this[37814] + 4 * v11) = a4;
  *(this[37816] + v11) = a5;
  LODWORD(v10) = *(this + 75622);
  if (v10 == v11)
  {
LABEL_7:
    if (v10 == *(this + 75623))
    {
      this = DgnPrimArray<unsigned long long>::reallocElts((this + 37810), 1, 1);
      LODWORD(v10) = *(v9 + 870);
    }

    *(v9[434] + 8 * v10) = a2;
    *(v9 + 870) = v10 + 1;
    v12 = *(v9 + 874);
    if (v12 == *(v9 + 875))
    {
      this = DgnPrimArray<unsigned int>::reallocElts((v9 + 436), 1, 1);
      v12 = *(v9 + 874);
    }

    *(v9[436] + 4 * v12) = a3;
    ++*(v9 + 874);
    v13 = *(v9 + 878);
    if (v13 == *(v9 + 879))
    {
      this = DgnPrimArray<unsigned int>::reallocElts((v9 + 438), 1, 1);
      v13 = *(v9 + 878);
    }

    *(v9[438] + 4 * v13) = a4;
    ++*(v9 + 878);
    v14 = *(v9 + 882);
    if (v14 == *(v9 + 883))
    {
      this = DgnPrimArray<char>::reallocElts((v9 + 440), 1, 1);
      v14 = *(v9 + 882);
    }

    *(v9[440] + v14) = a5;
    *(v9 + 882) = v14 + 1;
  }

  return this;
}

uint64_t NetMgr::estimateActivePelsPrevFrame(uint64_t this, BitArray *a2)
{
  v2 = *a2;
  **a2 |= 1u;
  v3 = *(this + 278);
  if (v3 != 0xFFFF)
  {
    *(v2 + ((v3 >> 3) & 0x1FFC)) |= 1 << v3;
  }

  v4 = *(this + 214);
  if (v4 != 0xFFFF)
  {
    *(v2 + ((v4 >> 3) & 0x1FFC)) |= 1 << v4;
  }

  return this;
}

double EmptyNet::EmptyNet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HmmNet::HmmNet(a1, a2, a3, 0, 1, 0);
  *&result = 0x100000001;
  *(v4 + 116) = 0x100000001;
  *(v4 + 124) = 1310740000;
  *v4 = &unk_287523558;
  *(v4 + 128) = 0x100000001;
  *(v4 + 136) = 1310740000;
  *(v4 + 140) = 0;
  *(v4 + 148) = -65536;
  *(v4 + 152) = 0;
  return result;
}

uint64_t NonCoartSyncNet::NonCoartSyncNet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v9 = BaseSyncNet::BaseSyncNet(a1, a2, a3, a4, 1, a5, a6, a7, a8);
  *(v9 + 288) = 0x100000001;
  *(v9 + 296) = 1310740000;
  *v9 = &unk_287527A18;
  if (!*(v9 + 228))
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1 + 216, 1, 0);
  }

  return a1;
}

double SyncNet::SyncNet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = BaseSyncNet::BaseSyncNet(a1, a2, a3, a4, 0, a5, a6, a7, a8);
  *v8 = &unk_2875236A8;
  *(v8 + 312) = 0;
  *(v8 + 320) = 0;
  *(v8 + 296) = 0;
  *(v8 + 304) = 0;
  *&result = 0x100000001;
  *(v8 + 328) = 0x100000001;
  *(v8 + 336) = 1310740000;
  *(v8 + 340) = 0;
  *(v8 + 348) = -65536;
  *(v8 + 352) = 85899345940000;
  *(v8 + 360) = 0;
  *(v8 + 288) = 0;
  return result;
}

uint64_t DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::DgnIdFactory(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = MemChunkSuggestAllocExtraItems(0xFFC00uLL, 0x10uLL, 0);
  *(a1 + 24) = 16 * (v2 + 65472);
  *(a1 + 28) = (v2 + 65472);
  *(a1 + 16) = 0;
  return a1;
}

uint64_t DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::~DgnIdFactory(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = v2 - 1;
    do
    {
      v4 = *(*a1 + 8 * v3);
      if (v4)
      {
        MemChunkFree(v4, 0);
      }

      v5 = v3-- + 1;
    }

    while (v5 > 1);
  }

  return DgnIArray<Utterance *>::~DgnIArray(a1);
}

void MrecInitModule_nbchoice_kernel(void)
{
  if (!gParDebugShowConfidence)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugShowConfidence", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugShowConfidence = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugShowConfidence);
  }
}

uint64_t NBestChoice::NBestChoice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 0;
  *(a1 + 36) = *a3;
  *(a1 + 52) = *(a3 + 16);
  *(a1 + 60) = *(a3 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  DgnArray<WordLatticeLC>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  return a1;
}

void NBestChoice::~NBestChoice(NBestChoice *this)
{
  DgnDelete<DgnPrimArray<unsigned int>>(*(this + 2));
  DgnDelete<DgnArray<Germ>>(*(this + 3));
  DgnArray<WordLatticeLC>::releaseAll(this);
}

void NBestChoiceList::printSize(NBestChoiceList *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v30, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/nbchoice.cpp", 1085);
  if (v31)
  {
    v13 = v30;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v30);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v15 = sizeObject<NBestChoice *>(this, 0);
  v16 = sizeObject<NBestChoice *>(this, 1);
  getShipObjectSizeDescription(&v30, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/nbchoice.cpp", 1086);
  if (v31)
  {
    v18 = v30;
  }

  else
  {
    v18 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v18, v15, v16, 0);
  DgnString::~DgnString(&v30);
  *a4 += v15;
  *a5 += v16;
  getShipObjectSizeDescription(&v30, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/nbchoice.cpp", 1088);
  if (v31)
  {
    v20 = v30;
  }

  else
  {
    v20 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v30);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v30, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/nbchoice.cpp", 1090);
  if (v31)
  {
    v22 = v30;
  }

  else
  {
    v22 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v22, 4, 4, 0);
  DgnString::~DgnString(&v30);
  *a4 += 4;
  *a5 += 4;
  v23 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  v24 = 248;
  if (!*(this + 3))
  {
    v24 = 0;
  }

  v25 = v24 + v23;
  getShipObjectSizeDescription(&v30, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/nbchoice.cpp", 1092);
  if (v31)
  {
    v27 = v30;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v27, v25, v25, 0);
  DgnString::~DgnString(&v30);
  *a4 += v25;
  *a5 += v25;
  getShipObjectSizeDescription(&v30, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/nbchoice.cpp", 1093);
  if (v31)
  {
    v29 = v30;
  }

  else
  {
    v29 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, a3, &byte_262899963, (35 - a3), (35 - a3), v29, *a4, *a5, *a6);
  DgnString::~DgnString(&v30);
}

void sub_26271D164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<NBestChoice *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += sizeObject(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

uint64_t sizeObject<WordLatticeLC>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = -16;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v15 = 1879048192;
  v16 = 0;
  v17 = -1;
  v11[0] = &unk_2875281A8;
  v11[1] = 0xBFF0000000000000;
  v18 = 0x3FFF;
  v19 = xmmword_26286CC40;
  v4 = sizeObject(v11, 2);
  if (v2 == 3)
  {
    v5 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 12;
    }

    else
    {
      v5 = 16;
    }

    if ((v2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 112 * v7 - 112;
        do
        {
          v5 += sizeObject(*a1 + v9, v2);
          --v8;
          v9 -= 112;
        }

        while (v8 > 1);
      }

      if (!v2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  WordLatticeLC::~WordLatticeLC(v11);
  return v5;
}

uint64_t *DgnArray<WordConfidenceInfo>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 696 * v6, 696 * v5, 696 * v5, 1);
  *(a1 + 12) = result / 0x2B8;
  *a1 = v8;
  return result;
}

void *DgnArray<WordLatticeLC>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 112 * v2 - 112;
    do
    {
      (**(*a1 + v3))(*a1 + v3);
      v3 -= 112;
    }

    while (v3 != -112);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void DgnArray<WordLatticeLC>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a1 + v9))(*a1 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 12);
  if (a4 <= v10)
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<WordLatticeLC>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    WordLatticeLC::WordLatticeLC((*a1 + 112 * v12), (*a2 + 112 * a3));
    v12 = *(a1 + 8) + 1;
    *(a1 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v14 = v12;
      v15 = 112 * v12 - 112;
      do
      {
        --v14;
        (**(*a1 + v15))(*a1 + v15);
        v15 -= 112;
      }

      while (v14 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v12 < a4)
  {
    v16 = a4 - v12;
    v17 = 112 * v12 + 96;
    do
    {
      v18 = (*a1 + v17);
      *(v18 - 20) = -16;
      *(v18 - 76) = 0uLL;
      *(v18 - 60) = 0uLL;
      *(v18 - 3) = 0uLL;
      *(v18 - 4) = 1879048192;
      *(v18 - 6) = 0;
      *(v18 - 2) = -1;
      *(v18 - 12) = &unk_2875281A8;
      *(v18 - 11) = 0xBFF0000000000000;
      *(v18 - 1) = 0x3FFF;
      *v18 = xmmword_26286CC40;
      v17 += 112;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

void DgnArray<WordConfidenceInfo>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  *(a1 + 8) = 0;
  v8 = *(a1 + 12);
  if (a4 <= v8)
  {
    v9 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    DgnArray<WordConfidenceInfo>::reallocElts(a1, a4 - v8, 0);
    v9 = *(a1 + 8);
  }

  v11 = a4;
  v10 = v9;
  do
  {
    memcpy((*a1 + 696 * v10), (*a2 + 696 * a3), 0x2B8uLL);
    v10 = *(a1 + 8) + 1;
    *(a1 + 8) = v10;
    ++a3;
    --v11;
  }

  while (v11);
LABEL_6:
  if (v10 < a4)
  {
    v12 = a4 - v10;
    v13 = 696 * v10;
    do
    {
      bzero((*a1 + v13), 0x2B8uLL);
      v13 += 696;
      --v12;
    }

    while (v12);
  }

  *(a1 + 8) = a4;
}

uint64_t sizeObject<WordConfidenceInfo>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 680 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 680 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

void MrecInitModule_multilm_lm(void)
{
  if (!gParDebugLMInterpolationWeights)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugLMInterpolationWeights", &unk_26288BEF0, &unk_26288BEF0, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugLMInterpolationWeights = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugLMInterpolationWeights);
  }
}

void MultiLanguageModel::MultiLanguageModel(MultiLanguageModel *this, int a2, const WordList *a3)
{
  LanguageModel::LanguageModel(this, a2, a3);
  *(v4 + 40) = 0u;
  *v4 = &unk_2875262B8;
  *(v4 + 116) = 0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 99) = 0u;
  DgnString::DgnString((v4 + 120));
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 152) = 0;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = 0x10000001DLL;
  *(this + 60) = 1;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = 0;
  *(this + 68) = 0;
  *(this + 35) = -1;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 140) = -1;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 79) = 0xFFFFFFFFFFFFLL;
  *(this + 80) = 0;
  *(this + 82) = 0;
  *(this + 81) = 0;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 700) = 0u;
}

void sub_26271DAD0(_Unwind_Exception *a1)
{
  DgnArray<DgnString>::releaseAll((v1 + 12));
  DgnArray<DgnString>::releaseAll((v1 + 10));
  DgnIArray<Utterance *>::~DgnIArray((v1 + 8));
  DgnIOwnArray<LanguageModel *>::releaseAll(v2);
  LanguageModel::~LanguageModel(v1);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::~MultiLanguageModel(RecentBuffer **this)
{
  *this = &unk_2875262B8;
  DgnDelete<RecentBuffer>(this[1]);
  this[1] = 0;
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 88));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 86));
  DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll((this + 84));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 80));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 75));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 73));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 71));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 68));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 66));
  DgnArray<DgnString>::releaseAll((this + 64));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 62));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 60));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 58));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 56));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 54));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 52));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 50));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 48));
  DgnArray<DgnString>::releaseAll((this + 46));
  DgnArray<DgnString>::releaseAll((this + 44));
  DgnIArray<Utterance *>::~DgnIArray((this + 42));
  DgnArray<DgnString>::releaseAll((this + 40));
  DgnIOwnArray<PelSegment *>::releaseAll((this + 38));
  DgnIArray<Utterance *>::~DgnIArray((this + 36));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 31));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 27));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 25));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 23));
  DgnArray<DgnString>::releaseAll((this + 21));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 17));
  DgnString::~DgnString((this + 15));
  DgnArray<DgnString>::releaseAll((this + 12));
  DgnArray<DgnString>::releaseAll((this + 10));
  DgnIArray<Utterance *>::~DgnIArray((this + 8));
  DgnIOwnArray<LanguageModel *>::releaseAll((this + 5));

  LanguageModel::~LanguageModel(this);
}

{
  MultiLanguageModel::~MultiLanguageModel(this);

  JUMPOUT(0x26672B1B0);
}

RecentBuffer *DgnDelete<RecentBuffer>(RecentBuffer *result)
{
  if (result)
  {
    RecentBuffer::~RecentBuffer(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void MultiLanguageModel::printSize(MultiLanguageModel *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 542);
  if (v257)
  {
    v13 = v256;
  }

  else
  {
    v13 = &unk_26288BEF0;
  }

  v253 = a3;
  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288BEF0, a3, &unk_26288BEF0, v13);
  DgnString::~DgnString(&v256);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288BEF0);
  v256 = 0;
  v254 = 0;
  v255 = 0;
  v15 = (a3 + 1);
  LanguageModel::printSize(this, 0xFFFFFFFFLL, v15, &v256, &v255, &v254);
  *a4 += v256;
  *a5 += v255;
  *a6 += v254;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 546);
  if (v257)
  {
    v17 = v256;
  }

  else
  {
    v17 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v16, v15, &unk_26288BEF0, v15, &unk_26288BEF0, v17);
  DgnString::~DgnString(&v256);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v18, v15, &unk_26288BEF0);
  v19 = *(this + 12);
  v252 = v15;
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(this + 5);
      if (*(v24 + 8 * v20))
      {
        v256 = 0;
        v254 = 0;
        v255 = 0;
        (*(**(v24 + 8 * v20) + 16))(*(v24 + 8 * v20), v20, (v253 + 2), &v256, &v255, &v254);
        v21 += v256;
        v22 += v255;
        v23 += v254;
        v19 = *(this + 12);
      }

      ++v20;
    }

    while (v20 < v19);
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v19 = 0;
  }

  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = v25 + v21;
  v27 = v25 + v22;
  v28 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v28 = 3;
  }

  v29 = v26 + (*(this + 13) << v28);
  v30 = v27 + (v19 << v28);
  v31 = (34 - v253);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 546);
  if (v257)
  {
    v33 = v256;
  }

  else
  {
    v33 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v252, &unk_26288BEF0, v31, v31, v33, v29, v30, v23);
  DgnString::~DgnString(&v256);
  *a4 += v29;
  *a5 += v30;
  *a6 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 4;
  }

  else
  {
    v34 = 8;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 548);
  if (v257)
  {
    v36 = v256;
  }

  else
  {
    v36 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v252, &unk_26288BEF0, v31, v31, v36, v34, v34, 0);
  DgnString::~DgnString(&v256);
  *a4 += v34;
  *a5 += v34;
  v37 = sizeObject<DgnString>(this + 80, 0);
  v38 = sizeObject<DgnString>(this + 80, 1);
  v39 = sizeObject<DgnString>(this + 80, 3);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 550);
  if (v257)
  {
    v41 = v256;
  }

  else
  {
    v41 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v252, &unk_26288BEF0, v31, v31, v41, v37, v38, v39);
  DgnString::~DgnString(&v256);
  *a4 += v37;
  *a5 += v38;
  *a6 += v39;
  v42 = sizeObject<DgnString>(this + 96, 0);
  v43 = sizeObject<DgnString>(this + 96, 1);
  v44 = sizeObject<DgnString>(this + 96, 3);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 552);
  if (v257)
  {
    v46 = v256;
  }

  else
  {
    v46 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v252, &unk_26288BEF0, v31, v31, v46, v42, v43, v44);
  DgnString::~DgnString(&v256);
  *a4 += v42;
  *a5 += v43;
  *a6 += v44;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 12;
  }

  else
  {
    v47 = 16;
  }

  v48 = *(this + 36);
  v49 = *(this + 37);
  if (v49 >= v48)
  {
    v50 = 0;
    if (v48 > 0)
    {
      v47 += 4 * (v48 - 1) + 4;
    }

    v51 = v47 + 4 * (v49 - v48);
  }

  else
  {
    v50 = 4 * v48;
    v51 = v47;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 554);
  if (v257)
  {
    v53 = v256;
  }

  else
  {
    v53 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v252, &unk_26288BEF0, v31, v31, v53, v51, v47, v50);
  DgnString::~DgnString(&v256);
  *a4 += v51;
  *a5 += v47;
  *a6 += v50;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v55 = v256;
  }

  else
  {
    v55 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v252, &unk_26288BEF0, v31, v31, v55, 4, 4, 0);
  DgnString::~DgnString(&v256);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v57 = v256;
  }

  else
  {
    v57 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v252, &unk_26288BEF0, v31, v31, v57, 1, 1, 0);
  DgnString::~DgnString(&v256);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v59 = v256;
  }

  else
  {
    v59 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v252, &unk_26288BEF0, v31, v31, v59, 1, 1, 0);
  DgnString::~DgnString(&v256);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v61 = v256;
  }

  else
  {
    v61 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v252, &unk_26288BEF0, v31, v31, v61, 1, 1, 0);
  DgnString::~DgnString(&v256);
  ++*a4;
  ++*a5;
  v62 = sizeObject(this + 120, 0);
  v63 = sizeObject(this + 120, 1);
  v64 = sizeObject(this + 120, 3);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v66 = v256;
  }

  else
  {
    v66 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v252, &unk_26288BEF0, v31, v31, v66, v62, v63, v64);
  DgnString::~DgnString(&v256);
  *a4 += v62;
  *a5 += v63;
  *a6 += v64;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v68 = v256;
  }

  else
  {
    v68 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v252, &unk_26288BEF0, v31, v31, v68, 1, 1, 0);
  DgnString::~DgnString(&v256);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v70 = v256;
  }

  else
  {
    v70 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v252, &unk_26288BEF0, v31, v31, v70, 4, 4, 0);
  DgnString::~DgnString(&v256);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v72 = v256;
  }

  else
  {
    v72 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v252, &unk_26288BEF0, v31, v31, v72, 4, 4, 0);
  DgnString::~DgnString(&v256);
  *a4 += 4;
  *a5 += 4;
  v73 = sizeObject<DgnString>(this + 168, 0);
  v74 = sizeObject<DgnString>(this + 168, 1);
  v75 = sizeObject<DgnString>(this + 168, 3);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v77 = v256;
  }

  else
  {
    v77 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v252, &unk_26288BEF0, v31, v31, v77, v73, v74, v75);
  DgnString::~DgnString(&v256);
  *a4 += v73;
  *a5 += v74;
  *a6 += v75;
  v78 = sizeObject<DgnPrimArray<double>>(this + 184, 0);
  v79 = sizeObject<DgnPrimArray<double>>(this + 184, 1);
  v256 = 0;
  v257 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v256);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v81 = v256;
  }

  else
  {
    v81 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v252, &unk_26288BEF0, v31, v31, v81, v78, v79, 0);
  DgnString::~DgnString(&v256);
  *a4 += v78;
  *a5 += v79;
  v82 = sizeObject<DgnPrimArray<double>>(this + 200, 0);
  v83 = sizeObject<DgnPrimArray<double>>(this + 200, 1);
  v256 = 0;
  v257 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v256);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v85 = v256;
  }

  else
  {
    v85 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v252, &unk_26288BEF0, v31, v31, v85, v82, v83, 0);
  DgnString::~DgnString(&v256);
  *a4 += v82;
  *a5 += v83;
  v86 = sizeObject<DgnPrimArray<unsigned short>>(this + 216, 0);
  v87 = sizeObject<DgnPrimArray<unsigned short>>(this + 216, 1);
  v256 = 0;
  v257 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v256);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v89 = v256;
  }

  else
  {
    v89 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v252, &unk_26288BEF0, v31, v31, v89, v86, v87, 0);
  DgnString::~DgnString(&v256);
  *a4 += v86;
  *a5 += v87;
  v90 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 12;
  }

  v91 = *(this + 64);
  v92 = *(this + 65);
  v93 = v92 >= v91;
  v94 = v92 - v91;
  if (v93)
  {
    if (v91 > 0)
    {
      v90 += 4 * (v91 - 1) + 4;
    }

    v90 += 4 * v94;
  }

  v95 = v90 + 24;
  v96 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 62, 1u) + 12;
  v97 = *(this + 64);
  if (v97 <= *(this + 65))
  {
    v98 = 0;
  }

  else
  {
    v98 = 4 * v97;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v100 = v256;
  }

  else
  {
    v100 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v252, &unk_26288BEF0, v31, v31, v100, v95, v96, v98);
  DgnString::~DgnString(&v256);
  *a4 += v95;
  *a5 += v96;
  *a6 += v98;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v102 = v256;
  }

  else
  {
    v102 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v252, &unk_26288BEF0, v31, v31, v102, 4, 4, 0);
  DgnString::~DgnString(&v256);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v104 = v256;
  }

  else
  {
    v104 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v252, &unk_26288BEF0, v31, v31, v104, 4, 4, 0);
  DgnString::~DgnString(&v256);
  *a4 += 4;
  *a5 += 4;
  v105 = sizeObject<DgnString>(this + 352, 0);
  v106 = sizeObject<DgnString>(this + 352, 1);
  v107 = sizeObject<DgnString>(this + 352, 3);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v109 = v256;
  }

  else
  {
    v109 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v252, &unk_26288BEF0, v31, v31, v109, v105, v106, v107);
  DgnString::~DgnString(&v256);
  *a4 += v105;
  *a5 += v106;
  *a6 += v107;
  v110 = sizeObject<DgnString>(this + 320, 0);
  v111 = sizeObject<DgnString>(this + 320, 1);
  v112 = sizeObject<DgnString>(this + 320, 3);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v114 = v256;
  }

  else
  {
    v114 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v113, v252, &unk_26288BEF0, v31, v31, v114, v110, v111, v112);
  DgnString::~DgnString(&v256);
  *a4 += v110;
  *a5 += v111;
  *a6 += v112;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v115 = 12;
  }

  else
  {
    v115 = 16;
  }

  v116 = *(this + 98);
  v117 = *(this + 99);
  if (v117 >= v116)
  {
    v118 = 0;
    if (v116 > 0)
    {
      v115 += 8 * (v116 - 1) + 8;
    }

    v119 = v115 + 8 * (v117 - v116);
  }

  else
  {
    v118 = 8 * v116;
    v119 = v115;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v121 = v256;
  }

  else
  {
    v121 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v120, v252, &unk_26288BEF0, v31, v31, v121, v119, v115, v118);
  DgnString::~DgnString(&v256);
  *a4 += v119;
  *a5 += v115;
  *a6 += v118;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v122 = 12;
  }

  else
  {
    v122 = 16;
  }

  v123 = *(this + 102);
  v124 = *(this + 103);
  if (v124 >= v123)
  {
    v125 = 0;
    if (v123 > 0)
    {
      v122 += 8 * (v123 - 1) + 8;
    }

    v126 = v122 + 8 * (v124 - v123);
  }

  else
  {
    v125 = 8 * v123;
    v126 = v122;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v128 = v256;
  }

  else
  {
    v128 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v252, &unk_26288BEF0, v31, v31, v128, v126, v122, v125);
  DgnString::~DgnString(&v256);
  *a4 += v126;
  *a5 += v122;
  *a6 += v125;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v129 = 12;
  }

  else
  {
    v129 = 16;
  }

  v130 = *(this + 106);
  v131 = *(this + 107);
  if (v131 >= v130)
  {
    v132 = 0;
    if (v130 > 0)
    {
      v129 += 8 * (v130 - 1) + 8;
    }

    v133 = v129 + 8 * (v131 - v130);
  }

  else
  {
    v132 = 8 * v130;
    v133 = v129;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v135 = v256;
  }

  else
  {
    v135 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v134, v252, &unk_26288BEF0, v31, v31, v135, v133, v129, v132);
  DgnString::~DgnString(&v256);
  *a4 += v133;
  *a5 += v129;
  *a6 += v132;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v136 = 12;
  }

  else
  {
    v136 = 16;
  }

  v137 = *(this + 110);
  v138 = *(this + 111);
  if (v138 >= v137)
  {
    v139 = 0;
    if (v137 > 0)
    {
      v136 += 8 * (v137 - 1) + 8;
    }

    v140 = v136 + 8 * (v138 - v137);
  }

  else
  {
    v139 = 8 * v137;
    v140 = v136;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v142 = v256;
  }

  else
  {
    v142 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v141, v252, &unk_26288BEF0, v31, v31, v142, v140, v136, v139);
  DgnString::~DgnString(&v256);
  *a4 += v140;
  *a5 += v136;
  *a6 += v139;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v143 = 12;
  }

  else
  {
    v143 = 16;
  }

  v144 = *(this + 114);
  v145 = *(this + 115);
  if (v145 >= v144)
  {
    v146 = 0;
    if (v144 > 0)
    {
      v143 += 8 * (v144 - 1) + 8;
    }

    v147 = v143 + 8 * (v145 - v144);
  }

  else
  {
    v146 = 8 * v144;
    v147 = v143;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v149 = v256;
  }

  else
  {
    v149 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v252, &unk_26288BEF0, v31, v31, v149, v147, v143, v146);
  DgnString::~DgnString(&v256);
  *a4 += v147;
  *a5 += v143;
  *a6 += v146;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v150 = 12;
  }

  else
  {
    v150 = 16;
  }

  v151 = *(this + 118);
  v152 = *(this + 119);
  if (v152 >= v151)
  {
    v153 = 0;
    if (v151 > 0)
    {
      v150 += 2 * (v151 - 1) + 2;
    }

    v154 = v150 + 2 * (v152 - v151);
  }

  else
  {
    v153 = 2 * v151;
    v154 = v150;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v156 = v256;
  }

  else
  {
    v156 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v252, &unk_26288BEF0, v31, v31, v156, v154, v150, v153);
  DgnString::~DgnString(&v256);
  *a4 += v154;
  *a5 += v150;
  *a6 += v153;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v157 = 12;
  }

  else
  {
    v157 = 16;
  }

  v158 = *(this + 122);
  v159 = *(this + 123);
  if (v159 >= v158)
  {
    v160 = 0;
    if (v158 > 0)
    {
      v157 += 2 * (v158 - 1) + 2;
    }

    v161 = v157 + 2 * (v159 - v158);
  }

  else
  {
    v160 = 2 * v158;
    v161 = v157;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v163 = v256;
  }

  else
  {
    v163 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v162, v252, &unk_26288BEF0, v31, v31, v163, v161, v157, v160);
  DgnString::~DgnString(&v256);
  *a4 += v161;
  *a5 += v157;
  *a6 += v160;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v164 = 12;
  }

  else
  {
    v164 = 16;
  }

  v165 = *(this + 126);
  v166 = *(this + 127);
  if (v166 >= v165)
  {
    v167 = 0;
    if (v165 > 0)
    {
      v164 += 8 * (v165 - 1) + 8;
    }

    v168 = v164 + 8 * (v166 - v165);
  }

  else
  {
    v167 = 8 * v165;
    v168 = v164;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v170 = v256;
  }

  else
  {
    v170 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v169, v252, &unk_26288BEF0, v31, v31, v170, v168, v164, v167);
  DgnString::~DgnString(&v256);
  *a4 += v168;
  *a5 += v164;
  *a6 += v167;
  v171 = sizeObject<DgnString>(this + 512, 0);
  v172 = sizeObject<DgnString>(this + 512, 1);
  v173 = sizeObject<DgnString>(this + 512, 3);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v175 = v256;
  }

  else
  {
    v175 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v174, v252, &unk_26288BEF0, v31, v31, v175, v171, v172, v173);
  DgnString::~DgnString(&v256);
  *a4 += v171;
  *a5 += v172;
  *a6 += v173;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v176 = 12;
  }

  else
  {
    v176 = 16;
  }

  v177 = *(this + 134);
  v178 = *(this + 135);
  if (v178 >= v177)
  {
    v179 = 0;
    if (v177 > 0)
    {
      v176 += 4 * (v177 - 1) + 4;
    }

    v180 = v176 + 4 * (v178 - v177);
  }

  else
  {
    v179 = 4 * v177;
    v180 = v176;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v182 = v256;
  }

  else
  {
    v182 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v181, v252, &unk_26288BEF0, v31, v31, v182, v180, v176, v179);
  DgnString::~DgnString(&v256);
  *a4 += v180;
  *a5 += v176;
  *a6 += v179;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v183 = 12;
  }

  else
  {
    v183 = 16;
  }

  v184 = *(this + 138);
  v185 = *(this + 139);
  v93 = v185 >= v184;
  v186 = v185 - v184;
  if (v93)
  {
    if (v184 > 0)
    {
      v187 = (v184 - 1) + v183 + 1;
    }

    else
    {
      v187 = v183;
    }

    v183 = v187 + v186;
    v184 = 0;
  }

  else
  {
    v187 = v183;
  }

  v188 = v184;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v190 = v256;
  }

  else
  {
    v190 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v189, v252, &unk_26288BEF0, v31, v31, v190, v183, v187, v188);
  DgnString::~DgnString(&v256);
  *a4 += v183;
  *a5 += v187;
  *a6 += v188;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v192 = v256;
  }

  else
  {
    v192 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v191, v252, &unk_26288BEF0, v31, v31, v192, 4, 4, 0);
  DgnString::~DgnString(&v256);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v193 = 12;
  }

  else
  {
    v193 = 16;
  }

  v194 = *(this + 144);
  v195 = *(this + 145);
  if (v195 >= v194)
  {
    v196 = 0;
    if (v194 > 0)
    {
      v193 += 4 * (v194 - 1) + 4;
    }

    v197 = v193 + 4 * (v195 - v194);
  }

  else
  {
    v196 = 4 * v194;
    v197 = v193;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v199 = v256;
  }

  else
  {
    v199 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v198, v252, &unk_26288BEF0, v31, v31, v199, v197, v193, v196);
  DgnString::~DgnString(&v256);
  *a4 += v197;
  *a5 += v193;
  *a6 += v196;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v200 = 12;
  }

  else
  {
    v200 = 16;
  }

  v201 = *(this + 148);
  v202 = *(this + 149);
  if (v202 >= v201)
  {
    v203 = 0;
    if (v201 > 0)
    {
      v200 += 4 * (v201 - 1) + 4;
    }

    v204 = v200 + 4 * (v202 - v201);
  }

  else
  {
    v203 = 4 * v201;
    v204 = v200;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v206 = v256;
  }

  else
  {
    v206 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v205, v252, &unk_26288BEF0, v31, v31, v206, v204, v200, v203);
  DgnString::~DgnString(&v256);
  *a4 += v204;
  *a5 += v200;
  *a6 += v203;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v207 = 12;
  }

  else
  {
    v207 = 16;
  }

  v208 = *(this + 152);
  v209 = *(this + 153);
  if (v209 >= v208)
  {
    v210 = 0;
    if (v208 > 0)
    {
      v207 += 4 * (v208 - 1) + 4;
    }

    v211 = v207 + 4 * (v209 - v208);
  }

  else
  {
    v210 = 4 * v208;
    v211 = v207;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 557);
  if (v257)
  {
    v213 = v256;
  }

  else
  {
    v213 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v212, v252, &unk_26288BEF0, v31, v31, v213, v211, v207, v210);
  DgnString::~DgnString(&v256);
  *a4 += v211;
  *a5 += v207;
  *a6 += v210;
  v214 = *(this + 77);
  if (v214)
  {
    v256 = 0;
    v254 = 0;
    v255 = 0;
    (*(*v214 + 16))(v214, 0xFFFFFFFFLL, v252, &v256, &v255, &v254);
    *a4 += v256;
    *a5 += v255;
    *a6 += v254;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v215 = 4;
  }

  else
  {
    v215 = 8;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 560);
  if (v257)
  {
    v217 = v256;
  }

  else
  {
    v217 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v216, v252, &unk_26288BEF0, v31, v31, v217, v215, v215, 0);
  DgnString::~DgnString(&v256);
  *a4 += v215;
  *a5 += v215;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v218 = 4;
  }

  else
  {
    v218 = 8;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 562);
  if (v257)
  {
    v220 = v256;
  }

  else
  {
    v220 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v219, v252, &unk_26288BEF0, v31, v31, v220, v218, v218, 0);
  DgnString::~DgnString(&v256);
  *a4 += v218;
  *a5 += v218;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 564);
  if (v257)
  {
    v222 = v256;
  }

  else
  {
    v222 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v221, v252, &unk_26288BEF0, v31, v31, v222, 4, 4, 0);
  DgnString::~DgnString(&v256);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 566);
  if (v257)
  {
    v224 = v256;
  }

  else
  {
    v224 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v223, v252, &unk_26288BEF0, v31, v31, v224, 4, 4, 0);
  DgnString::~DgnString(&v256);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v225 = 12;
  }

  else
  {
    v225 = 16;
  }

  v226 = *(this + 162);
  v227 = *(this + 163);
  if (v227 >= v226)
  {
    v228 = 0;
    if (v226 > 0)
    {
      v225 += 8 * (v226 - 1) + 8;
    }

    v229 = v225 + 8 * (v227 - v226);
  }

  else
  {
    v228 = 8 * v226;
    v229 = v225;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 568);
  if (v257)
  {
    v231 = v256;
  }

  else
  {
    v231 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v230, v252, &unk_26288BEF0, v31, v31, v231, v229, v225, v228);
  DgnString::~DgnString(&v256);
  *a4 += v229;
  *a5 += v225;
  *a6 += v228;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 570);
  if (v257)
  {
    v233 = v256;
  }

  else
  {
    v233 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v232, v252, &unk_26288BEF0, v31, v31, v233, 8, 8, 0);
  DgnString::~DgnString(&v256);
  *a4 += 8;
  *a5 += 8;
  v234 = sizeObject<Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int> *>(this + 672, 0);
  v235 = sizeObject<Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int> *>(this + 672, 1);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 571);
  if (v257)
  {
    v237 = v256;
  }

  else
  {
    v237 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v236, v252, &unk_26288BEF0, v31, v31, v237, v234, v235, 0);
  DgnString::~DgnString(&v256);
  *a4 += v234;
  *a5 += v235;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v238 = 12;
  }

  else
  {
    v238 = 16;
  }

  v239 = *(this + 174);
  v240 = *(this + 175);
  if (v240 >= v239)
  {
    v241 = 0;
    if (v239 > 0)
    {
      v238 += 2 * (v239 - 1) + 2;
    }

    v242 = v238 + 2 * (v240 - v239);
  }

  else
  {
    v241 = 2 * v239;
    v242 = v238;
  }

  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 574);
  if (v257)
  {
    v244 = v256;
  }

  else
  {
    v244 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v243, v252, &unk_26288BEF0, v31, v31, v244, v242, v238, v241);
  DgnString::~DgnString(&v256);
  *a4 += v242;
  *a5 += v238;
  *a6 += v241;
  v245 = CombineTable::sizeObject(this + 704, 0);
  v246 = CombineTable::sizeObject(this + 704, 1);
  v247 = CombineTable::sizeObject(this + 704, 3);
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 576);
  if (v257)
  {
    v249 = v256;
  }

  else
  {
    v249 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v248, v252, &unk_26288BEF0, v31, v31, v249, v245, v246, v247);
  DgnString::~DgnString(&v256);
  *a4 += v245;
  *a5 += v246;
  *a6 += v247;
  getShipObjectSizeDescription(&v256, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 578);
  if (v257)
  {
    v251 = v256;
  }

  else
  {
    v251 = &unk_26288BEF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v250, v253, &unk_26288BEF0, (35 - v253), (35 - v253), v251, *a4, *a5, *a6);
  DgnString::~DgnString(&v256);
}

uint64_t sizeObject<Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int> *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

unsigned int *MultiLanguageModel::checkWordIdLmIdValidityAgreement(unsigned int *this, uint64_t a2, uint64_t a3)
{
  v3 = this[29];
  if (v3)
  {
    v6 = this;
    for (i = 0; i < v3; ++i)
    {
      this = *(*(v6 + 5) + 8 * i);
      if (this)
      {
        this = (*(*this + 208))(this, a2, a3);
        v3 = v6[29];
      }
    }
  }

  return this;
}

uint64_t MultiLanguageModel::dumpWordLM(uint64_t a1, unsigned __int16 **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a2 + 2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 654, "lm/multilm", 121, "%s", &unk_26288BEF0);
  }

  v10 = **a2;
  v11 = *(a1 + 116);
  if (v11 <= v10)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 657, "lm/multilm", 122, "%u %u", **a2, v11);
  }

  if (!*(*(a1 + 40) + 8 * v10))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 658, "lm/multilm", 123, "%s", &errStr_lm_multilm_E_MULTI_LM_DUMP_NULL);
  }

  v12 = *(a2 + 2);
  v13 = v12 - 1;
  if (v12 != 1)
  {
    memmove(*a2, *a2 + 1, 2 * (v12 - 1));
  }

  *(a2 + 2) = v13;
  v14 = *(*(a1 + 40) + 8 * v10);
  v16[0] = 0;
  v16[1] = 0;
  DgnPrimArray<unsigned short>::copyArraySlice(v16, a2, 0, v13);
  (*(*v14 + 224))(v14, v16, a3, a4, a5);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
}

void sub_26271FF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getWordTransducer(uint64_t a1, unsigned __int16 **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!*(a2 + 2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 672, "lm/multilm", 121, "%s", &unk_26288BEF0);
  }

  v14 = **a2;
  v15 = *(a1 + 116);
  if (v15 <= v14)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 675, "lm/multilm", 122, "%u %u", **a2, v15);
  }

  if (!*(*(a1 + 40) + 8 * v14))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 676, "lm/multilm", 123, "%s", &errStr_lm_multilm_E_MULTI_LM_DUMP_NULL);
  }

  v16 = *(a2 + 2);
  v17 = v16 - 1;
  if (v16 != 1)
  {
    memmove(*a2, *a2 + 1, 2 * (v16 - 1));
  }

  *(a2 + 2) = v17;
  v18 = *(*(a1 + 40) + 8 * v14);
  v20[0] = 0;
  v20[1] = 0;
  DgnPrimArray<unsigned short>::copyArraySlice(v20, a2, 0, v17);
  (*(*v18 + 232))(v18, v20, a3, a4, a5, a6, a7);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
}

void sub_26272012C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::verifyLM(MultiLanguageModel *this, int a2, const char *a3)
{
  if (a2)
  {
    v5 = *(*(this + 2) + 388);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = *(this + 2);
        v8 = i < *(v7 + 388) && *(*(v7 + 104) + i) != 0;
        if (*(this + 112) == 1)
        {
          v9 = *(this + 29);
          if (v9)
          {
            v10 = 0;
            while (i < *(*(this + 71) + 4 * v10) || i > *(*(this + 73) + 4 * v10))
            {
              if (v9 == ++v10)
              {
                goto LABEL_13;
              }
            }

            v11 = v10;
            if (!*(this + 29))
            {
              continue;
            }

LABEL_17:
            v12 = 0;
            do
            {
              v13 = *(*(this + 5) + 8 * v12);
              if (v13)
              {
                v14 = v11 == v12 && v8;
                (*(*v13 + 208))(v13, i, v14);
                v9 = *(this + 29);
              }

              ++v12;
            }

            while (v12 < v9);
            continue;
          }

LABEL_13:
          v11 = *(this + 140);
          if (*(this + 29))
          {
            goto LABEL_17;
          }
        }

        else
        {
          (*(*this + 208))(this, i, v8);
        }
      }
    }
  }

  v15 = *(this + 29);
  if (v15)
  {
    for (j = 0; j < v15; ++j)
    {
      v17 = *(*(this + 5) + 8 * j);
      if (v17)
      {
        (*(*v17 + 216))(v17, 0, a3);
        v15 = *(this + 29);
      }
    }
  }

  if (*(this + 1))
  {

    MrecInitModule_sdpres_sdapi();
  }
}

unsigned int *MultiLanguageModel::beginLMSyncRecog(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = result[29];
  if (v3)
  {
    v6 = result;
    for (i = 0; i < v3; ++i)
    {
      result = *(*(v6 + 5) + 8 * i);
      if (result && ((v6[28] & 1) != 0 || *(v6 + 113) == 1 && *(*(v6 + 68) + i) == 1 && *(*(v6 + 62) + 8 * i) != 0.0 || *(v6 + 114) == 1))
      {
        result = (*(*result + 408))(result, a2, *(*(a3 + 16) + 8 * i));
        v3 = v6[29];
      }
    }
  }

  return result;
}

unsigned int *MultiLanguageModel::beginRescoringInLMSyncRecog(unsigned int *result, uint64_t a2)
{
  v2 = result[29];
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      result = *(*(v4 + 5) + 8 * i);
      if (result && ((v4[28] & 1) != 0 || *(v4 + 113) == 1 && *(*(v4 + 68) + i) == 1 && *(*(v4 + 62) + 8 * i) != 0.0 || *(v4 + 114) == 1))
      {
        result = (*(*result + 416))(result, *(*(a2 + 16) + 8 * i));
        v2 = v4[29];
      }
    }
  }

  return result;
}

unsigned int *MultiLanguageModel::endLMSyncRecog(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = result[29];
  if (v3)
  {
    v6 = result;
    for (i = 0; i < v3; ++i)
    {
      result = *(*(v6 + 5) + 8 * i);
      if (result && ((v6[28] & 1) != 0 || *(v6 + 113) == 1 && *(*(v6 + 68) + i) == 1 && *(*(v6 + 62) + 8 * i) != 0.0 || *(v6 + 114) == 1))
      {
        result = (*(*result + 424))(result, a2, *(*(a3 + 16) + 8 * i));
        v3 = v6[29];
      }
    }
  }

  return result;
}

unsigned int *MultiLanguageModel::clearLoadedData(unsigned int *result, uint64_t a2)
{
  v2 = result[29];
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      result = *(*(v4 + 5) + 8 * i);
      if (result)
      {
        result = (*(*result + 432))(result, a2);
        v2 = v4[29];
      }
    }
  }

  return result;
}

uint64_t MultiLanguageModel::isFinalSilenceScoredVerify(MultiLanguageModel *this)
{
  if (*(this + 29))
  {
    v2 = 0;
    v3 = 0;
    for (i = 0; ; i = 1)
    {
      v5 = *(*(this + 5) + 8 * v2);
      if (*(this + 112))
      {
        break;
      }

      if (v5)
      {
        v9 = (*(*v5 + 696))(v5);
      }

      else
      {
        v9 = 1;
      }

      v10 = *(*(this + 42) + 8 * v2);
      if (v10)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v7 = (v10 == 0) & v9;
LABEL_19:
        if (i)
        {
          goto LABEL_20;
        }

        goto LABEL_24;
      }

      isFinalSilenceScoredVerify = WordNgramTemplate::isFinalSilenceScoredVerify(*(*(this + 42) + 8 * v2));
      v7 = isFinalSilenceScoredVerify;
      if (i)
      {
LABEL_20:
        if (*(this + 114) == 1 && ((v3 ^ v7) & 1) != 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 868, "lm/multilm", 1, "%s", &errStr_lm_multilm_E_ENDLMID_DISAGREEMENT);
        }

        v7 |= v3;
      }

LABEL_24:
      ++v2;
      v3 = v7;
      if (v2 >= *(this + 29))
      {
        return v7 & 1;
      }
    }

    v6 = (*(*v5 + 696))(v5);
    v7 = v6;
    if (v2 != *(this + 140) && v6 != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 856, "lm/multilm", 32, "%s", &errStr_lm_multilm_E_NON_DEFAULT_DISPATCH_SCORING_FINAL_SILENCE);
      v7 = 1;
      if (i)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  LOBYTE(v7) = 0;
  return v7 & 1;
}

uint64_t MultiLanguageModel::hasAnyQuadgrams(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(*(this + 5) + 8 * v3);
    if (!v4 || (*(this + 112) & 1) == 0 && (*(this + 113) != 1 || *(*(this + 68) + v3) != 1 || *(*(this + 62) + 8 * v3) == 0.0) && *(this + 114) != 1)
    {
      goto LABEL_11;
    }

    if ((*(*v4 + 448))(v4))
    {
      return 1;
    }

    v1 = *(this + 29);
LABEL_11:
    if (++v3 >= v1)
    {
      return 0;
    }
  }
}

uint64_t MultiLanguageModel::tri1HasTrigrams(MultiLanguageModel *this, uint64_t a2)
{
  if (*(this + 112))
  {
    v4 = *(this + 29);
    if (a2 < 0xFFFFF4)
    {
      if (*(this + 29))
      {
        v10 = 0;
        while (*(*(this + 71) + 4 * v10) > a2 || *(*(this + 73) + 4 * v10) < a2)
        {
          if (v4 == ++v10)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        LODWORD(v10) = *(this + 140);
      }

      v11 = *(*(this + 5) + 8 * v10);
      if ((*(*v11 + 440))(v11, a2))
      {
        return 1;
      }
    }

    else if (*(this + 29))
    {
      v5 = 0;
      do
      {
        v6 = *(*(this + 5) + 8 * v5);
        if (v6)
        {
          if ((*(*v6 + 440))(v6, a2))
          {
            return 1;
          }

          v4 = *(this + 29);
        }

        ++v5;
      }

      while (v5 < v4);
    }
  }

  else
  {
    v7 = *(this + 29);
    if (v7)
    {
      for (i = 0; i < v7; ++i)
      {
        v9 = *(*(this + 5) + 8 * i);
        if (v9 && (*(this + 113) == 1 && *(*(this + 68) + i) == 1 && *(*(this + 62) + 8 * i) != 0.0 || *(this + 114) == 1))
        {
          if ((*(*v9 + 440))(v9, a2))
          {
            return 1;
          }

          v7 = *(this + 29);
        }
      }
    }
  }

  return 0;
}

BOOL MultiLanguageModel::quad1quad2HasQuadgrams(MultiLanguageModel *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 112) & 1) == 0)
  {
    v9 = *(this + 29);
    if (v9)
    {
      for (i = 0; i < v9; ++i)
      {
        v11 = *(*(this + 5) + 8 * i);
        if (v11 && (*(this + 113) == 1 && *(*(this + 68) + i) == 1 && *(*(this + 62) + 8 * i) != 0.0 || *(this + 114) == 1))
        {
          if ((*(*v11 + 456))(v11, a2, a3))
          {
            return 1;
          }

          v9 = *(this + 29);
        }
      }
    }

    return 0;
  }

  v6 = *(this + 29);
  if (a2 > 0xFFFFF3)
  {
    if (a3 > 0xFFFFF3)
    {
      if (*(this + 29))
      {
        v7 = 0;
        do
        {
          v8 = *(*(this + 5) + 8 * v7);
          if (v8)
          {
            if ((*(*v8 + 456))(v8, a2, a3))
            {
              return 1;
            }

            v6 = *(this + 29);
          }

          ++v7;
        }

        while (v7 < v6);
      }

      return 0;
    }

    if (*(this + 29))
    {
      v12 = 0;
      while (*(*(this + 71) + 4 * v12) > a3 || *(*(this + 73) + 4 * v12) < a3)
      {
        if (v6 == ++v12)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_48;
    }

LABEL_34:
    LODWORD(v12) = *(this + 140);
    goto LABEL_48;
  }

  if (a3 <= 0xFFFFF3)
  {
    if (*(this + 29))
    {
      v12 = 0;
      while (*(*(this + 71) + 4 * v12) > a2 || *(*(this + 73) + 4 * v12) < a2)
      {
        if (v6 == ++v12)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_40:
      LODWORD(v12) = *(this + 140);
    }

    if (*(this + 29))
    {
      v13 = 0;
      while (*(*(this + 71) + 4 * v13) > a3 || *(*(this + 73) + 4 * v13) < a3)
      {
        if (v6 == ++v13)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
LABEL_46:
      LODWORD(v13) = *(this + 140);
    }

    if (v12 != v13)
    {
      return 0;
    }

    goto LABEL_48;
  }

  if (!*(this + 29))
  {
    goto LABEL_34;
  }

  v12 = 0;
  while (*(*(this + 71) + 4 * v12) > a2 || *(*(this + 73) + 4 * v12) < a2)
  {
    if (v6 == ++v12)
    {
      goto LABEL_34;
    }
  }

LABEL_48:
  v14 = *(*(this + 5) + 8 * v12);
  return ((*(*v14 + 456))(v14, a2, a3) & 1) != 0;
}

MultiLMContextData *MultiLanguageModel::createContextData(MultiLanguageModel *this)
{
  v2 = MemChunkAlloc(0x20uLL, 0);
  MultiLMContextData::MultiLMContextData(v2, *(this + 29));
  v3 = *(this + 29);
  if (v3 >= 1)
  {
    v4 = v3 - 1;
    do
    {
      v5 = *(*(this + 5) + 8 * v4);
      if (v5)
      {
        *(v2[2] + 8 * v4) = (*(*v5 + 464))(v5);
      }

      v6 = v4-- + 1;
    }

    while (v6 > 1);
  }

  return v2;
}

uint64_t MultiLanguageModel::setContext(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 116))
  {
    for (i = 0; i < *(a1 + 116); ++i)
    {
      if (*(a1 + 112) == 1)
      {
        v13 = *(a2 + 2);
        v32 = 0;
        v33 = 0;
        if (v13)
        {
          v34 = 0;
          v14 = realloc_array(0, &v34, 4 * v13, 0, 0, 1);
          v15 = v34;
          v32 = v34;
          v16 = *(a2 + 2);
          LODWORD(v33) = v13;
          HIDWORD(v33) = v14 >> 2;
          if (v16)
          {
            v17 = 0;
            v18 = *a2;
            do
            {
              v19 = *(v18 + 4 * v17);
              if (v19 <= 0xFFFFF3)
              {
                v20 = *(a1 + 116);
                if (v20)
                {
                  v21 = 0;
                  while (*(*(a1 + 568) + 4 * v21) > v19 || *(*(a1 + 584) + 4 * v21) < v19)
                  {
                    if (v20 == ++v21)
                    {
                      goto LABEL_13;
                    }
                  }

                  v22 = v21;
                }

                else
                {
LABEL_13:
                  v22 = *(a1 + 560);
                }

                if (i != v22)
                {
                  v19 = 0xFFFFFF;
                }
              }

              v15[v17++] = v19;
            }

            while (v17 < *(a2 + 2));
          }
        }

        else
        {
          LODWORD(v33) = 0;
        }

        if (i == *(a1 + 560))
        {
          v30 = a3;
        }

        else
        {
          v30 = 0;
        }

        v29 = *(*(a1 + 40) + 8 * i);
        (*(*v29 + 472))(v29, &v32, v30, a4, a5, *(*(a6 + 16) + 8 * i));
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
        continue;
      }

      v23 = *(*(a1 + 40) + 8 * i);
      if (v23)
      {
        if (*(a1 + 113) == 1 && *(*(a1 + 544) + i) == 1 && *(*(a1 + 496) + 8 * i) != 0.0)
        {
          goto LABEL_39;
        }

        if (*(a1 + 114) == 1)
        {
          if (a3)
          {
            v24 = *(a3 + 8);
            if (v24)
            {
              v25 = *a3;
              while (1)
              {
                v27 = *v25++;
                v26 = v27;
                v28 = v27 == 0xFFFF ? *(a1 + 384) : *(*(a1 + 200) + 16 * (v26 - 1));
                if (*(v28 + 8 * i) != 0.0)
                {
                  break;
                }

                if (!--v24)
                {
                  goto LABEL_40;
                }
              }

LABEL_39:
              (*(*v23 + 472))(v23, a2, a3, a4, a5, *(*(a6 + 16) + 8 * i));
              continue;
            }
          }

          if (*(*(a1 + 384) + 8 * i) != 0.0)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_40:
      ;
    }
  }

  return LanguageModel::setContext(a1, a2, a3, a4, a5, a6);
}