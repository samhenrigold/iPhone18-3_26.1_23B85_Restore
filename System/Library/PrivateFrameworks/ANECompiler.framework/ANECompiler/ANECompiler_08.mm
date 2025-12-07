uint64_t operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(unint64_t *a1, uint64_t *a2, int a3)
{
  v6 = *a1;
  v7 = 56 * a1[1];
  v28 = a2;
  v8 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (v7 >> 3));
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 2);
  v13 = (v12 - 1);
  if (v13 < 1)
  {
    v26 = 0;
  }

  else
  {
    v14 = 0;
    v15 = a3;
    v16 = 56 * (v12 - 1);
    for (i = -v13; ; ++i)
    {
      v19 = *a1;
      if (*a2 < 2 * *(*a1 + v16))
      {
        v20 = a1[1];
        if (v20 < v13)
        {
          goto LABEL_20;
        }

        if (i + v20 > v15)
        {
          v11 = 0;
          v26 = 1;
          return v26 & v11;
        }

        v14 += *(v16 + v19 + 8);
        {
          break;
        }
      }

      v16 -= 56;
      if (v13-- <= 1)
      {
        v26 = 0;
        v11 = 0;
        return v26 & v11;
      }
    }

    a2[1] -= v14;
    v21 = a1[1];
    if (v21 < v13)
    {
LABEL_20:
      absl::lts_20240722::base_internal::ThrowStdOutOfRange("pos > size()", v10);
    }

    v22 = *a1;
    v23 = 56 * v21 - v16;
    if (v23)
    {
      v24 = (v22 + v16 + 48);
      do
      {
        v25 = *v24;
        *(v24 - 1) += a2[1];
        *v24 = v25 + a2[1];
        v24 += 7;
        v23 -= 56;
      }

      while (v23);
    }

    *a1 = v22;
    a1[1] = v13;
    v26 = 1;
    v11 = 1;
  }

  return v26 & v11;
}

int8x16_t operations_research::sat::anonymous namespace::PreprocessLargeWithSmallY(unint64_t *a1, int8x16_t *a2, int a3)
{
  v4 = *a1;
  v5 = 56 * a1[1];
  v6 = *a1 + v5;
  if (v5)
  {
    v7 = *a1;
    do
    {
      *v7 = vextq_s8(*v7, *v7, 8uLL);
      v8 = *(v7 + 24);
      *(v7 + 24) = *(v7 + 40);
      *(v7 + 40) = v8;
      v7 += 56;
    }

    while (v7 != v6);
  }

  *a2 = vextq_s8(*a2, *a2, 8uLL);
  result = vextq_s8(*a2, *a2, 8uLL);
  *a2 = result;
  if (v5)
  {
    do
    {
      *v4 = vextq_s8(*v4, *v4, 8uLL);
      result = *(v4 + 40);
      v10 = *(v4 + 24);
      *(v4 + 24) = result;
      *(v4 + 40) = v10;
      v4 += 56;
    }

    while (v4 != v6);
  }

  return result;
}

void operations_research::sat::BruteForceOrthogonalPacking(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v86[6] = *MEMORY[0x277D85DE8];
  if (a2 > 2 * a6)
  {
    goto LABEL_7;
  }

  if (a2 > 16)
  {
    operations_research::sat::BruteForceOrthogonalPacking(a2, v35);
  }

  v35[0] = 0;
  v35[1] = 0;
  v82 = 0u;
  *&v36[8] = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v52 = 0u;
  v51 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v59 = 0u;
  v58 = 0u;
  v53 = 0u;
  v57 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v64 = 0u;
  v63 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v71 = 0u;
  v70 = 0u;
  v65 = 0u;
  v69 = 0u;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  v81 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  if (a2 >= 1)
  {
    v10 = 0;
    v11 = v36;
    do
    {
      v12 = *(a3 + 8 * v10);
      *(v11 - 2) = *(a1 + 8 * v10);
      *(v11 - 1) = v12;
      *v11 = v10++;
      *(v11 + 8) = 0uLL;
      *(v11 + 24) = 0uLL;
      v11 += 56;
    }

    while ((a2 & 0x7FFFFFFF) != v10);
  }

  v33 = v35;
  v34 = a2;
  v32.i64[0] = a4;
  v32.i64[1] = a5;
  v15 = operations_research::sat::Preprocess(&v33, &v32, (a6 - 1));
  v16 = v34;
  if (v34 > a6)
  {
LABEL_7:
    v17 = 2;
LABEL_8:
    *a7 = v17;
    *(a7 + 16) = 0;
    *(a7 + 24) = 0;
    *(a7 + 8) = 0;
    return;
  }

  v18 = v15;
  if (dword_2810BF758 >= 2 && (operations_research::sat::BruteForceOrthogonalPacking(dword_2810BF758) & 1) == 0)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/2d_packing_brute_force.cc", 671);
    v20 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v31, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "Solved by brute force a problem of ", 0x23uLL);
    LODWORD(v86[0]) = a2;
    v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v20, v86);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " items", 6uLL);
    if (v18)
    {
      v86[0] = " (";
      v86[1] = 2;
      v23 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v16, v85, v22);
      v84[0] = v85;
      v84[1] = v23 - v85;
      v83[0] = " after preprocessing)";
      v83[1] = 21;
      absl::lts_20240722::StrCat(v86, v84, v83, &__p);
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
    }

    v26 = absl::lts_20240722::log_internal::LogMessage::operator<<(v21, &__p);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v26, ": solution ", 0xBuLL);
    v27 = "not found";
    if (v19)
    {
      v27 = "found";
    }

    v29 = v27;
    v28 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v26, &v29);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, ".", 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v31);
  }

  if ((v19 & 1) == 0)
  {
    v17 = 1;
    goto LABEL_8;
  }

  if (a2 << 32)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (dword_2810BF770 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BF768, dword_2810BF770) && (absl::lts_20240722::log_internal::LogEveryNSecState::ShouldLog(&dword_27E25F5A0, 3.0) & 1) != 0)
  {
    v24 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v84, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/2d_packing_brute_force.cc", 684);
    v25 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v24, 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "Found a feasible packing by brute force. Dot:\n ", 0x2FuLL);
    operations_research::sat::RenderDot(a4, a5, 0, 0);
  }

  *a7 = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 8) = 0;
}

void sub_23C9858C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (*(v18 - 113) < 0)
  {
    operator delete(*(v18 - 136));
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage((v18 - 184));
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

char *std::string::operator std::string_view[abi:ne200100](char *result)
{
  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

uint64_t operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingNoPreprocessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v7 = v4;
  if (v4 > 16)
  {
  }

  v8 = v5;
  v9 = v6 * v5;
  v10 = 56 * v4;
  v11 = (v3 + 56 * v4);
  if (56 * v7)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = v3;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v15 = *v13;
      v16 = v13[1];
      if (*v13 > v5 || v16 > v6)
      {
        return 0;
      }

      v9 -= v16 * v15;
      if (v16 < v14)
      {
        v14 = v13[1];
      }

      if (v15 < v12)
      {
        v12 = *v13;
      }

      v13 += 7;
      if (v13 == v11)
      {
        if (v9 < 0)
        {
          return 0;
        }

        goto LABEL_15;
      }
    }
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9 < 0)
  {
    return 0;
  }

LABEL_15:
  v31 = v6;
  v32 = v3;
  v18 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((56 * v7) >> 3));
  if (v10)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  memset(v72, 0, 128);
  memset(v71, 0, sizeof(v71));
  v70[0] = 0;
  v70[49] = 0;
  v70[98] = 0;
  v70[147] = 0;
  v70[196] = 0;
  v70[245] = 0;
  v70[294] = 0;
  v70[343] = 0;
  v70[392] = 0;
  v70[441] = 0;
  v70[490] = 0;
  v70[539] = 0;
  v70[588] = 0;
  v70[637] = 0;
  v70[686] = 0;
  v70[735] = 0;
  v33 = v7;
  if (v7 >= 1)
  {
    v20 = v7 & 0x7FFFFFFF;
    v21 = (v32 + 8);
    v22 = v70;
    v23 = v71;
    v24 = v72;
    do
    {
      *v24 = *(v21 - 1);
      *v23 = *v21;
      v38 = 0uLL;
      LOBYTE(v39) = 0;
      v25 = v22 + 1;
      if (*v22)
      {
        v25 = v22[1];
        v26 = v22[2];
      }

      else
      {
        v26 = 16;
      }

      v27 = *v22 >> 1;
      if (v27 == v26)
      {
      }

      v28 = &v25[3 * v27];
      *v28 = 0;
      v28[1] = 0;
      *(v28 + 16) = 0;
      *v22 += 2;
      v21 += 7;
      v22 += 49;
      ++v23;
      ++v24;
      --v20;
    }

    while (v20);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  LODWORD(v34) = v33 & ~(v33 >> 31);
  v36 = 0;
  v37 = 0;
  __p = 0;
  if (v33 >= 1)
  {
    operator new();
  }

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  return v29;
}

void sub_23C985D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(absl::lts_20240722::Span<operations_research::sat::PermutableItem> &,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,int)::$_0 &,operations_research::sat::PermutableItem*,false>(unint64_t result, unint64_t a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v10 = (a2 - 56);
  v11 = result;
  while (1)
  {
    result = v11;
    v12 = a2 - v11;
    v13 = ((a2 - v11) >> 3) * v9;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          return;
        case 4:

          return;
        case 5:

          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v142 = *(a2 - 56);
        v141 = a2 - 56;
        v140 = v142;
        v143 = *v11;
        v144 = **a3;
        v145 = 2 * v142;
        v146 = 2 * *v11;
        v147 = v144 - v142;
        if (2 * v142 > v144)
        {
          v140 = v147;
        }

        if (v146 > v144)
        {
          v143 = v144 - v143;
        }

        if (v143 < v140 || v140 >= v143 && (v145 > v144 ? (v285 = v146 <= v144) : (v285 = 0), v285 || (v146 > v144 ? (v286 = v145 <= v144) : (v286 = 0), !v286 ? (v287 = *(v11 + 16) < *(v141 + 16)) : (v287 = 0), v287)))
        {
          v348 = *(v11 + 48);
          v332 = *(v11 + 16);
          v340 = *(v11 + 32);
          v324 = *v11;
          v148 = *v141;
          v149 = *(v141 + 16);
          v150 = *(v141 + 32);
          *(v11 + 48) = *(v141 + 48);
          *(v11 + 16) = v149;
          *(v11 + 32) = v150;
          *v11 = v148;
          *(v141 + 48) = v348;
          *(v141 + 16) = v332;
          *(v141 + 32) = v340;
          *v141 = v324;
        }

        return;
      }
    }

    if (v12 <= 1343)
    {
      break;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v181 = (v13 - 2) >> 1;
        v182 = v181;
        do
        {
          v184 = v182;
          v185 = 56 * v182;
          v186 = ((56 * v182) >> 3) * v9;
          if (v181 >= v186)
          {
            v187 = 2 * v186;
            v188 = (2 * v186) | 1;
            v189 = v11 + 56 * v188;
            v190 = v187 + 2;
            v191 = **a3;
            if (v190 < v13)
            {
              v192 = *(v189 + 56);
              v193 = *v189;
              v194 = 2 * *v189;
              v195 = 2 * v192;
              if (v194 > v191)
              {
                v193 = v191 - *v189;
              }

              if (v195 > v191)
              {
                v192 = v191 - v192;
              }

              if (v192 < v193 || v193 >= v192 && (v194 > v191 ? (v229 = v195 <= v191) : (v229 = 0), v229 || (v195 > v191 ? (v230 = v194 <= v191) : (v230 = 0), !v230 ? (v231 = *(v189 + 72) < *(v189 + 16)) : (v231 = 0), v231)))
              {
                v189 += 56;
                v188 = v190;
              }
            }

            v196 = v11 + v185;
            v197 = *(v11 + v185);
            v198 = 2 * *v189;
            v199 = 2 * v197;
            v200 = v191 - *v189;
            if (v198 <= v191)
            {
              v200 = *v189;
            }

            v201 = v199 > v191 ? v191 - v197 : v197;
            if (v201 >= v200)
            {
              v202 = *(v196 + 16);
              if (v200 < v201 || (v198 > v191 ? (v226 = v199 <= v191) : (v226 = 0), !v226 && (v199 > v191 ? (v227 = v198 <= v191) : (v227 = 0), !v227 ? (v228 = v202 < *(v189 + 16)) : (v228 = 0), !v228)))
              {
                v203 = *(v196 + 8);
                v342 = *(v196 + 52);
                v326 = *(v196 + 20);
                v334 = *(v196 + 36);
                v204 = *v189;
                v205 = *(v189 + 16);
                v206 = *(v189 + 32);
                *(v196 + 48) = *(v189 + 48);
                *(v196 + 16) = v205;
                *(v196 + 32) = v206;
                *v196 = v204;
                if (v181 >= v188)
                {
                  while (1)
                  {
                    v210 = 2 * v188;
                    v188 = (2 * v188) | 1;
                    v183 = v11 + 56 * v188;
                    v211 = v210 + 2;
                    v212 = **a3;
                    if (v211 < v13)
                    {
                      v213 = *(v183 + 56);
                      v214 = *v183;
                      v215 = 2 * *v183;
                      v216 = 2 * v213;
                      if (v215 > v212)
                      {
                        v214 = v212 - *v183;
                      }

                      if (v216 > v212)
                      {
                        v213 = v212 - v213;
                      }

                      if (v213 < v214 || v214 >= v213 && (v215 > v212 ? (v223 = v216 <= v212) : (v223 = 0), v223 || (v216 > v212 ? (v224 = v215 <= v212) : (v224 = 0), !v224 ? (v225 = *(v183 + 72) < *(v183 + 16)) : (v225 = 0), v225)))
                      {
                        v183 += 56;
                        v188 = v211;
                      }
                    }

                    v217 = *v183;
                    v218 = 2 * *v183;
                    if (v218 > v212)
                    {
                      v217 = v212 - *v183;
                    }

                    v219 = v212 - v197;
                    if (v199 <= v212)
                    {
                      v219 = v197;
                    }

                    if (v219 < v217)
                    {
                      break;
                    }

                    if (v217 >= v219)
                    {
                      if (v199 <= v212 && v218 > v212)
                      {
                        break;
                      }

                      v221 = v218 > v212 || v199 <= v212;
                      if (v221 && v202 < *(v183 + 16))
                      {
                        break;
                      }
                    }

                    v207 = *v183;
                    v208 = *(v183 + 16);
                    v209 = *(v183 + 32);
                    *(v189 + 48) = *(v183 + 48);
                    *(v189 + 16) = v208;
                    *(v189 + 32) = v209;
                    *v189 = v207;
                    v189 = v183;
                    if (v181 < v188)
                    {
                      goto LABEL_341;
                    }
                  }
                }

                v183 = v189;
LABEL_341:
                *v183 = v197;
                *(v183 + 8) = v203;
                *(v183 + 16) = v202;
                *(v183 + 20) = v326;
                *(v183 + 36) = v334;
                *(v183 + 52) = v342;
              }
            }
          }

          v182 = v184 - 1;
        }

        while (v184);
        v232 = (v12 >> 3) * v9;
        do
        {
          v233 = 0;
          v349 = *(v11 + 48);
          v335 = *(v11 + 16);
          v343 = *(v11 + 32);
          v327 = *v11;
          v234 = v11;
          do
          {
            v238 = v234;
            v239 = v234 + 56 * v233;
            v234 = v239 + 56;
            v240 = 2 * v233;
            v233 = (2 * v233) | 1;
            v241 = v240 + 2;
            if (v241 < v232)
            {
              v244 = *(v239 + 112);
              v243 = v239 + 112;
              v242 = v244;
              v245 = *(v243 - 56);
              v246 = **a3;
              v247 = 2 * v245;
              v248 = 2 * v244;
              if (2 * v245 > v246)
              {
                v245 = v246 - v245;
              }

              if (v248 > v246)
              {
                v242 = v246 - v242;
              }

              if (v242 < v245 || v245 >= v242 && (v247 > v246 ? (v249 = v248 <= v246) : (v249 = 0), v249 || (v248 > v246 ? (v250 = v247 <= v246) : (v250 = 0), !v250 ? (v251 = *(v243 + 16) < *(v243 - 40)) : (v251 = 0), v251)))
              {
                v234 = v243;
                v233 = v241;
              }
            }

            v235 = *v234;
            v236 = *(v234 + 16);
            v237 = *(v234 + 32);
            *(v238 + 48) = *(v234 + 48);
            *(v238 + 16) = v236;
            *(v238 + 32) = v237;
            *v238 = v235;
          }

          while (v233 <= ((v232 - 2) >> 1));
          a2 -= 56;
          if (v234 == a2)
          {
            *(v234 + 48) = v349;
            *(v234 + 16) = v335;
            *(v234 + 32) = v343;
            *v234 = v327;
          }

          else
          {
            v252 = *a2;
            v253 = *(a2 + 16);
            v254 = *(a2 + 32);
            *(v234 + 48) = *(a2 + 48);
            *(v234 + 16) = v253;
            *(v234 + 32) = v254;
            *v234 = v252;
            *(a2 + 48) = v349;
            *(a2 + 16) = v335;
            *(a2 + 32) = v343;
            *a2 = v327;
            v255 = v234 - v11 + 56;
            if (v255 >= 57)
            {
              v256 = (v255 >> 3) * v9 - 2;
              v257 = v256 >> 1;
              v258 = v11 + 56 * (v256 >> 1);
              v259 = *v258;
              v260 = *v234;
              v261 = *(v234 + 16);
              v262 = **a3;
              v263 = 2 * *v258;
              v264 = 2 * *v234;
              if (v263 > v262)
              {
                v259 = v262 - *v258;
              }

              v265 = v262 - v260;
              if (v264 <= v262)
              {
                v265 = *v234;
              }

              if (v265 < v259 || v259 >= v265 && (v263 > v262 ? (v282 = v264 <= v262) : (v282 = 0), v282 || (v264 > v262 ? (v283 = v263 <= v262) : (v283 = 0), !v283 ? (v284 = v261 < *(v258 + 16)) : (v284 = 0), v284)))
              {
                v266 = *(v234 + 8);
                v320 = *(v234 + 52);
                v314 = *(v234 + 20);
                v317 = *(v234 + 36);
                v267 = *v258;
                v268 = *(v258 + 16);
                v269 = *(v258 + 32);
                *(v234 + 48) = *(v258 + 48);
                *(v234 + 16) = v268;
                *(v234 + 32) = v269;
                *v234 = v267;
                if (v256 >= 2)
                {
                  while (1)
                  {
                    v274 = v257 - 1;
                    v257 = (v257 - 1) >> 1;
                    v270 = v11 + 56 * v257;
                    v275 = *v270;
                    v276 = **a3;
                    v277 = 2 * *v270;
                    if (v277 > v276)
                    {
                      v275 = v276 - *v270;
                    }

                    v278 = v276 - v260;
                    if (v264 <= v276)
                    {
                      v278 = v260;
                    }

                    if (v278 >= v275)
                    {
                      if (v275 < v278)
                      {
                        break;
                      }

                      if (v277 <= v276 || v264 > v276)
                      {
                        v280 = v264 > v276 && v277 <= v276;
                        if (v280 || v261 >= *(v270 + 16))
                        {
                          break;
                        }
                      }
                    }

                    v271 = *v270;
                    v272 = *(v270 + 16);
                    v273 = *(v270 + 32);
                    *(v258 + 48) = *(v270 + 48);
                    *(v258 + 16) = v272;
                    *(v258 + 32) = v273;
                    *v258 = v271;
                    v258 = v11 + 56 * v257;
                    if (v274 <= 1)
                    {
                      goto LABEL_460;
                    }
                  }
                }

                v270 = v258;
LABEL_460:
                *v270 = v260;
                *(v270 + 8) = v266;
                *(v270 + 16) = v261;
                *(v270 + 20) = v314;
                *(v270 + 36) = v317;
                *(v270 + 52) = v320;
              }
            }
          }

          v31 = v232-- <= 2;
        }

        while (!v31);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v11 + 56 * (v13 >> 1);
    if (v12 < 0x1C01)
    {
      --a4;
      v23 = *result;
      if (a5)
      {
LABEL_39:
        v25 = *(result + 16);
        v26 = **a3;
        v28 = 2 * v23;
        v29 = v26 - v23;
        goto LABEL_40;
      }
    }

    else
    {
      v16 = v9;
      v17 = 56 * v14;
      v18 = (56 * v14 + result - 56);
      v19 = (result + 56 + v17);
      v9 = v16;
      v345 = *(result + 48);
      v329 = *(result + 16);
      v337 = *(result + 32);
      v321 = *result;
      v20 = *v15;
      v21 = *(v15 + 16);
      v22 = *(v15 + 32);
      *(result + 48) = *(v15 + 48);
      *(result + 16) = v21;
      *(result + 32) = v22;
      *result = v20;
      *(v15 + 48) = v345;
      *(v15 + 16) = v329;
      *(v15 + 32) = v337;
      *v15 = v321;
      --a4;
      v23 = *result;
      if (a5)
      {
        goto LABEL_39;
      }
    }

    v24 = *(result - 56);
    v25 = *(result + 16);
    v26 = **a3;
    v27 = 2 * v24;
    v28 = 2 * v23;
    if (2 * v24 > v26)
    {
      v24 = v26 - v24;
    }

    v29 = v26 - v23;
    if (v28 > v26)
    {
      v30 = v26 - v23;
    }

    else
    {
      v30 = v23;
    }

    if (v30 >= v24 && (v24 < v30 || (v27 <= v26 || v28 > v26) && (v28 > v26 ? (v31 = v27 <= v26) : (v31 = 0), v31 || v25 >= *(result - 40))))
    {
      v32 = *(result + 8);
      v312 = *(result + 20);
      v315 = *(result + 36);
      v318 = *(result + 52);
      v33 = *(a2 - 56);
      v34 = *(a2 - 40);
      v35 = v28 > v26;
      v36 = 2 * v33;
      if (v28 <= v26)
      {
        v29 = v23;
      }

      v37 = v26 - v33;
      if (v36 <= v26)
      {
        v37 = *(a2 - 56);
      }

      if (v37 < v29 || v29 >= v37 && ((v137 = v36 <= v26) ? (v138 = v28 > v26) : (v138 = 0), v138 || (v137 ? (v139 = 0) : (v139 = 1), (v139 & ~v35 & 1) == 0 && v34 < v25)))
      {
        v11 = result + 56;
        v38 = *(result + 56);
        v39 = v26 - v38;
        v40 = 2 * v38 <= v26;
        if (2 * v38 <= v26)
        {
          v39 = *(result + 56);
        }

        if (v39 >= v29)
        {
          v41 = *(result + 72);
          v42 = (result + 128);
          if (v28 > v26)
          {
            do
            {
              v98 = v41 < v25;
              if (v29 >= v39 && (v40 || v98))
              {
                break;
              }

              v39 = *(v42 - 2);
              v97 = *v42;
              v42 += 14;
              v41 = v97;
              v40 = 2 * v39 <= v26;
              if (2 * v39 > v26)
              {
                v39 = v26 - v39;
              }
            }

            while (v39 >= v29);
          }

          else
          {
            do
            {
              if (v29 >= v39 && v40 && v41 < v25)
              {
                break;
              }

              v39 = *(v42 - 2);
              v99 = *v42;
              v42 += 14;
              v41 = v99;
              LOBYTE(v40) = 2 * v39 <= v26;
              if (2 * v39 > v26)
              {
                v39 = v26 - v39;
              }
            }

            while (v39 >= v29);
          }

          v11 = (v42 - 18);
        }
      }

      else
      {
        v11 = result + 56;
        if (result + 56 < a2)
        {
          if (v28 > v26)
          {
            do
            {
              v104 = *v11;
              v105 = 2 * *v11;
              if (v105 > v26)
              {
                v104 = v26 - *v11;
              }

              if (v104 < v29)
              {
                break;
              }

              v106 = v105 <= v26 || *(v11 + 16) < v25;
              v107 = v106;
              if (v29 >= v104 && v107)
              {
                break;
              }

              v11 += 56;
            }

            while (v11 < a2);
          }

          else
          {
            do
            {
              v100 = *v11;
              v101 = 2 * *v11;
              if (v101 > v26)
              {
                v100 = v26 - *v11;
              }

              if (v100 < v29)
              {
                break;
              }

              v102 = v101 > v26 || v29 < v100;
              if (!v102 && *(v11 + 16) < v25)
              {
                break;
              }

              v11 += 56;
            }

            while (v11 < a2);
          }
        }
      }

      i = a2;
      if (v11 < a2)
      {
        for (i = a2 - 56; ; v34 = *(i + 16))
        {
          v110 = 2 * v33;
          if (2 * v33 > v26)
          {
            v33 = v26 - v33;
          }

          if (v33 >= v29)
          {
            if (v29 < v33)
            {
              break;
            }

            v111 = v110 <= v26 && v28 > v26;
            if (!v111 && (((v110 > v26) & ~v35) != 0 || v34 >= v25))
            {
              break;
            }
          }

          v109 = *(i - 56);
          i -= 56;
          v33 = v109;
        }
      }

      while (v11 < i)
      {
        v347 = *(v11 + 48);
        v331 = *(v11 + 16);
        v339 = *(v11 + 32);
        v323 = *v11;
        v112 = *i;
        v113 = *(i + 16);
        v114 = *(i + 32);
        *(v11 + 48) = *(i + 48);
        *(v11 + 16) = v113;
        *(v11 + 32) = v114;
        *v11 = v112;
        *(i + 48) = v347;
        *(i + 16) = v331;
        *(i + 32) = v339;
        *i = v323;
        v115 = **a3;
        v116 = v115 - v23;
        v117 = v28 > v115;
        if (v28 <= v115)
        {
          v116 = v23;
        }

        v118 = *(v11 + 56);
        v119 = 2 * v118 <= v115;
        if (2 * v118 > v115)
        {
          v118 = v115 - v118;
        }

        if (v118 >= v116)
        {
          v120 = *(v11 + 72);
          if (v28 <= v115)
          {
            v124 = (v11 + 128);
            do
            {
              if (v116 >= v118 && v119 && v120 < v25)
              {
                break;
              }

              v125 = *(v124 - 2);
              v126 = *v124;
              v124 += 14;
              v120 = v126;
              v118 = v115 - v125;
              LOBYTE(v119) = 2 * v125 <= v115;
              if (2 * v125 <= v115)
              {
                v118 = v125;
              }
            }

            while (v118 >= v116);
            v117 = 0;
            v11 = (v124 - 18);
          }

          else
          {
            v121 = (v11 + 128);
            do
            {
              v123 = v120 < v25;
              if (v116 >= v118 && (v119 || v123))
              {
                break;
              }

              v118 = *(v121 - 2);
              v122 = *v121;
              v121 += 14;
              v120 = v122;
              v119 = 2 * v118 <= v115;
              if (2 * v118 > v115)
              {
                v118 = v115 - v118;
              }
            }

            while (v118 >= v116);
            v11 = (v121 - 18);
            v117 = 1;
          }
        }

        else
        {
          v11 += 56;
        }

        v127 = (i - 56);
        while (1)
        {
          i = v127;
          v128 = *v127;
          v129 = 2 * v128;
          v130 = v115 - v128;
          if (2 * v128 <= v115)
          {
            v130 = v128;
          }

          v127 = (i - 56);
          if (v130 >= v116)
          {
            if (v116 < v130)
            {
              break;
            }

            v131 = v129 <= v115;
            v132 = v129 <= v115 ? v117 : 0;
            if ((v132 & 1) == 0)
            {
              v133 = !v131;
              if ((v133 & ~v117 & 1) != 0 || *(i + 16) >= v25)
              {
                break;
              }
            }
          }
        }
      }

      if (v11 - 56 != result)
      {
        v134 = *(v11 - 56);
        v135 = *(v11 - 40);
        v136 = *(v11 - 24);
        *(result + 48) = *(v11 - 8);
        *(result + 16) = v135;
        *(result + 32) = v136;
        *result = v134;
      }

      a5 = 0;
      *(v11 - 56) = v23;
      *(v11 - 48) = v32;
      *(v11 - 40) = v25;
      *(v11 - 4) = v318;
      *(v11 - 20) = v315;
      *(v11 - 36) = v312;
    }

    else
    {
LABEL_40:
      v43 = *(result + 8);
      v313 = *(result + 20);
      v316 = *(result + 36);
      v319 = *(result + 52);
      if (v28 > v26)
      {
        v44 = v29;
      }

      else
      {
        v44 = v23;
      }

      v45 = result + 56;
      if (v28 <= v26)
      {
        while (1)
        {
          v46 = *v45;
          v47 = 2 * *v45;
          if (v47 > v26)
          {
            v46 = v26 - *v45;
          }

          if (v44 >= v46)
          {
            v48 = v47 > v26 || v25 < *(v45 + 16);
            v49 = v48;
            if (v46 < v44 || !v49)
            {
              break;
            }
          }

          v45 += 56;
        }
      }

      else
      {
        while (1)
        {
          v51 = *v45;
          v52 = 2 * *v45;
          if (v52 > v26)
          {
            v51 = v26 - *v45;
          }

          if (v44 >= v51)
          {
            v53 = v52 <= v26 || v51 < v44;
            if (v53 || v25 >= *(v45 + 16))
            {
              break;
            }
          }

          v45 += 56;
        }
      }

      if (v45 - 56 == result)
      {
        v58 = a2;
        if (v45 < a2)
        {
          v64 = 2 * *v10;
          v65 = v26 - *v10;
          v31 = v64 <= v26;
          v66 = v64 > v26;
          if (v31)
          {
            v65 = *v10;
          }

          v58 = a2 - 56;
          if (v44 >= v65)
          {
            v58 = a2 - 56;
            do
            {
              if (v65 < v44)
              {
                if (v45 >= v58)
                {
                  break;
                }
              }

              else if (v28 <= v26 && v66 || v45 >= v58 || (v28 <= v26 || v66) && v25 < *(v58 + 16))
              {
                break;
              }

              v95 = *(v58 - 56);
              v58 -= 56;
              v65 = v95;
              v96 = v26 - v95;
              v66 = 2 * v95 > v26;
              if (2 * v95 > v26)
              {
                v65 = v96;
              }
            }

            while (v44 >= v65);
          }
        }
      }

      else
      {
        v55 = 2 * *v10;
        v31 = v55 <= v26;
        v56 = v55 > v26;
        if (v31)
        {
          v57 = *v10;
        }

        else
        {
          v57 = v26 - *v10;
        }

        v58 = a2 - 56;
        if (v44 >= v57)
        {
          v59 = *(a2 - 40);
          v58 = a2 - 56;
          if (v28 <= v26)
          {
            do
            {
              if (v57 >= v44 && (v56 || v25 < v59))
              {
                break;
              }

              v61 = *(v58 - 56);
              v58 -= 56;
              v60 = v61;
              v59 = *(v58 + 16);
              v57 = v26 - v61;
              v56 = 2 * v61 > v26;
              if (2 * v61 <= v26)
              {
                v57 = v60;
              }
            }

            while (v44 >= v57);
          }

          else
          {
            do
            {
              if (v57 >= v44 && v56 && v25 < v59)
              {
                break;
              }

              v63 = *(v58 - 56);
              v58 -= 56;
              v62 = v63;
              v59 = *(v58 + 16);
              v57 = v26 - v63;
              v56 = 2 * v63 > v26;
              if (2 * v63 <= v26)
              {
                v57 = v62;
              }
            }

            while (v44 >= v57);
          }
        }
      }

      v11 = v45;
      if (v45 < v58)
      {
        v11 = v45;
        v67 = v58;
        do
        {
          v346 = *(v11 + 48);
          v330 = *(v11 + 16);
          v338 = *(v11 + 32);
          v322 = *v11;
          v68 = *v67;
          v69 = *(v67 + 16);
          v70 = *(v67 + 32);
          *(v11 + 48) = *(v67 + 48);
          *(v11 + 16) = v69;
          *(v11 + 32) = v70;
          *v11 = v68;
          v11 += 56;
          *(v67 + 48) = v346;
          *(v67 + 16) = v330;
          *(v67 + 32) = v338;
          *v67 = v322;
          v71 = **a3;
          v72 = v71 - v23;
          if (v28 > v71)
          {
            while (1)
            {
              v78 = *v11;
              v79 = 2 * *v11;
              if (v79 > v71)
              {
                v78 = v71 - *v11;
              }

              if (v72 >= v78)
              {
                v80 = v79 <= v71 || v78 < v72;
                if (v80 || v25 >= *(v11 + 16))
                {
                  break;
                }
              }

              v11 += 56;
            }
          }

          else
          {
            v72 = v23;
            while (1)
            {
              v73 = *v11;
              v74 = 2 * *v11;
              if (v74 > v71)
              {
                v73 = v71 - *v11;
              }

              if (v23 >= v73)
              {
                v75 = v74 > v71 || v25 < *(v11 + 16);
                v76 = v75;
                if (v73 < v23 || !v76)
                {
                  break;
                }
              }

              v11 += 56;
            }
          }

          v83 = v67 - 56;
          v82 = *(v67 - 56);
          v84 = 2 * v82 > v71;
          if (2 * v82 > v71)
          {
            v82 = v71 - v82;
          }

          if (v72 >= v82)
          {
            v85 = *(v67 - 40);
            if (v28 <= v71)
            {
              do
              {
                v88 = v25 < v85;
                if (v82 >= v72 && (v84 || v88))
                {
                  break;
                }

                v87 = *(v83 - 56);
                v83 -= 56;
                v86 = v87;
                v85 = *(v83 + 16);
                v82 = v71 - v87;
                v84 = 2 * v87 > v71;
                if (2 * v87 <= v71)
                {
                  v82 = v86;
                }
              }

              while (v72 >= v82);
            }

            else
            {
              do
              {
                if (v82 >= v72 && v84 && v25 < v85)
                {
                  break;
                }

                v90 = *(v83 - 56);
                v83 -= 56;
                v89 = v90;
                v85 = *(v83 + 16);
                v82 = v71 - v90;
                LOBYTE(v84) = 2 * v90 > v71;
                if (2 * v90 <= v71)
                {
                  v82 = v89;
                }
              }

              while (v72 >= v82);
            }
          }

          v67 = v83;
        }

        while (v11 < v83);
      }

      if (v11 - 56 != result)
      {
        v91 = *(v11 - 56);
        v92 = *(v11 - 40);
        v93 = *(v11 - 24);
        *(result + 48) = *(v11 - 8);
        *(result + 16) = v92;
        *(result + 32) = v93;
        *result = v91;
      }

      *(v11 - 56) = v23;
      *(v11 - 48) = v43;
      *(v11 - 40) = v25;
      *(v11 - 4) = v319;
      *(v11 - 20) = v316;
      *(v11 - 36) = v313;
      if (v45 < v58)
      {
        goto LABEL_153;
      }

      {
        a2 = v11 - 56;
        if (v94)
        {
          return;
        }

        goto LABEL_2;
      }

      if ((v94 & 1) == 0)
      {
LABEL_153:
        a5 = 0;
      }
    }
  }

  v151 = v11 + 56;
  v153 = v11 == a2 || v151 == a2;
  if ((a5 & 1) == 0)
  {
    if (!v153)
    {
      v288 = *a3;
      do
      {
        v289 = result;
        result = v151;
        v290 = *(v289 + 56);
        v291 = *(v289 + 72);
        v292 = *v289;
        v293 = *v288;
        v294 = 2 * v290;
        v295 = 2 * *v289;
        v296 = *v288 - v290;
        if (2 * v290 <= *v288)
        {
          v296 = *(v289 + 56);
        }

        if (v295 > v293)
        {
          v292 = v293 - v292;
        }

        if (v292 < v296 || v296 >= v292 && (v294 > v293 ? (v308 = v295 <= v293) : (v308 = 0), v308 || (v295 > v293 ? (v309 = v294 <= v293) : (v309 = 0), !v309 ? (v310 = *(v289 + 16) < v291) : (v310 = 0), v310)))
        {
          v297 = *(v289 + 64);
          v344 = *(v289 + 108);
          v328 = *(v289 + 76);
          v336 = *(v289 + 92);
          while (1)
          {
            v298 = v289;
            v299 = *(v289 + 16);
            *(v289 + 56) = *v289;
            *(v289 + 72) = v299;
            *(v289 + 88) = *(v289 + 32);
            *(v289 + 104) = *(v289 + 48);
            v301 = *(v289 - 56);
            v289 -= 56;
            v300 = v301;
            v302 = **a3;
            v303 = 2 * v301;
            v304 = v302 - v290;
            if (v294 <= v302)
            {
              v304 = v290;
            }

            if (v303 > v302)
            {
              v300 = v302 - v300;
            }

            if (v300 >= v304)
            {
              if (v304 < v300)
              {
                break;
              }

              if (v294 <= v302 || v303 > v302)
              {
                v306 = v303 > v302 && v294 <= v302;
                if (v306 || *(v298 - 40) >= v291)
                {
                  break;
                }
              }
            }
          }

          *v298 = v290;
          *(v298 + 8) = v297;
          *(v298 + 16) = v291;
          *(v298 + 20) = v328;
          *(v298 + 36) = v336;
          *(v298 + 52) = v344;
          v288 = *a3;
        }

        v151 = result + 56;
      }

      while (result + 56 != a2);
    }

    return;
  }

  if (v153)
  {
    return;
  }

  v154 = 0;
  v155 = *a3;
  v156 = v11;
  while (2)
  {
    v158 = v156;
    v156 = v151;
    v159 = *(v158 + 56);
    v160 = *(v158 + 72);
    v161 = *v158;
    v162 = *v155;
    v163 = 2 * v159;
    v164 = 2 * *v158;
    v165 = *v155 - v159;
    if (2 * v159 <= *v155)
    {
      v165 = *(v158 + 56);
    }

    if (v164 > v162)
    {
      v161 = v162 - v161;
    }

    if (v161 >= v165)
    {
      if (v165 < v161)
      {
        goto LABEL_296;
      }

      if (v163 <= v162 || v164 > v162)
      {
        v179 = v164 > v162 && v163 <= v162;
        if (v179 || *(v158 + 16) >= v160)
        {
          goto LABEL_296;
        }
      }
    }

    v166 = *(v158 + 64);
    v341 = *(v158 + 108);
    v325 = *(v158 + 76);
    v333 = *(v158 + 92);
    v167 = *(v158 + 16);
    *v156 = *v158;
    *(v156 + 16) = v167;
    *(v156 + 32) = *(v158 + 32);
    *(v156 + 48) = *(v158 + 48);
    v157 = v11;
    if (v158 == v11)
    {
      goto LABEL_295;
    }

    v168 = v154;
    while (2)
    {
      v170 = v11 + v168;
      v171 = *(v11 + v168 - 56);
      v172 = **a3;
      v173 = 2 * v171;
      v174 = v172 - v159;
      if (v163 <= v172)
      {
        v174 = v159;
      }

      if (v173 > v172)
      {
        v171 = v172 - v171;
      }

      if (v171 < v174)
      {
LABEL_304:
        v158 -= 56;
        v169 = *(v11 + v168 - 40);
        *v170 = *(v11 + v168 - 56);
        *(v170 + 16) = v169;
        *(v170 + 32) = *(v11 + v168 - 24);
        *(v170 + 48) = *(v11 + v168 - 8);
        v168 -= 56;
        if (!v168)
        {
          v157 = v11;
          goto LABEL_295;
        }

        continue;
      }

      break;
    }

    if (v174 >= v171)
    {
      if (v163 <= v172 || v173 > v172)
      {
        v176 = v173 > v172 && v163 <= v172;
        if (v176 || *(v170 - 40) >= v160)
        {
          v157 = v158;
          goto LABEL_295;
        }
      }

      goto LABEL_304;
    }

    v157 = v11 + v168;
LABEL_295:
    *v157 = v159;
    *(v157 + 8) = v166;
    *(v157 + 16) = v160;
    *(v157 + 20) = v325;
    *(v157 + 36) = v333;
    *(v157 + 52) = v341;
    v155 = *a3;
LABEL_296:
    v151 = v156 + 56;
    v154 += 56;
    if (v156 + 56 != a2)
    {
      continue;
    }

    break;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(absl::lts_20240722::Span<operations_research::sat::PermutableItem> &,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,int)::$_0 &,operations_research::sat::PermutableItem*,0>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t **a4)
{
  v4 = a2->n128_u64[0];
  v5 = a2[1].n128_i32[0];
  v6 = a1->n128_u64[0];
  v7 = **a4;
  v8 = 2 * a2->n128_u64[0];
  v9 = 2 * a1->n128_u64[0];
  if (v8 > v7)
  {
    v4 = v7 - a2->n128_u64[0];
  }

  if (v9 > v7)
  {
    v6 = v7 - v6;
  }

  if (v6 < v4 || v4 >= v6 && (v8 > v7 ? (v55 = v9 <= v7) : (v55 = 0), v55 || (v9 > v7 ? (v56 = v8 <= v7) : (v56 = 0), !v56 ? (v57 = a1[1].n128_u32[0] < v5) : (v57 = 0), v57)))
  {
    v10 = a3->n128_u64[0];
    v11 = 2 * a3->n128_u64[0];
    if (v11 > v7)
    {
      v10 = v7 - a3->n128_u64[0];
    }

    if (v4 < v10 || v10 >= v4 && (v8 <= v7 ? (v58 = v11 <= v7) : (v58 = 1), !v58 || (v11 <= v7 ? (v59 = v8 <= v7) : (v59 = 1), v59 ? (v60 = v5 < a3[1].n128_u32[0]) : (v60 = 0), v60)))
    {
      v12 = a1[3].n128_u64[0];
      v14 = a1[1];
      result = a1[2];
      v15 = *a1;
      v17 = a3[1];
      v16 = a3[2];
      v18 = *a3;
      a1[3].n128_u64[0] = a3[3].n128_u64[0];
      a1[1] = v17;
      a1[2] = v16;
      *a1 = v18;
      *a3 = v15;
      a3[1] = v14;
      a3[2] = result;
      a3[3].n128_u64[0] = v12;
    }

    else
    {
      v38 = a1[3].n128_u64[0];
      v39 = a1[1];
      result = a1[2];
      v40 = *a1;
      v42 = a2[1];
      v41 = a2[2];
      v43 = *a2;
      a1[3].n128_u64[0] = a2[3].n128_u64[0];
      a1[1] = v42;
      a1[2] = v41;
      *a1 = v43;
      *a2 = v40;
      a2[1] = v39;
      a2[2] = result;
      a2[3].n128_u64[0] = v38;
      v44 = a3->n128_u64[0];
      v45 = a2->n128_u64[0];
      v46 = **a4;
      v47 = 2 * a3->n128_u64[0];
      v48 = 2 * a2->n128_u64[0];
      if (v47 > v46)
      {
        v44 = v46 - a3->n128_u64[0];
      }

      if (v48 > v46)
      {
        v45 = v46 - v45;
      }

      if (v45 < v44 || v44 >= v45 && (v47 > v46 && v48 <= v46 || (v48 > v46 ? (v65 = v47 <= v46) : (v65 = 0), !v65 && a2[1].n128_u32[0] < a3[1].n128_u32[0])))
      {
        v49 = a2[3].n128_u64[0];
        v50 = a2[1];
        result = a2[2];
        v51 = *a2;
        v53 = a3[1];
        v52 = a3[2];
        v54 = *a3;
        a2[3].n128_u64[0] = a3[3].n128_u64[0];
        a2[1] = v53;
        a2[2] = v52;
        *a2 = v54;
        *a3 = v51;
        a3[1] = v50;
        a3[2] = result;
        a3[3].n128_u64[0] = v49;
      }
    }
  }

  else
  {
    v19 = a3->n128_u64[0];
    v20 = 2 * a3->n128_u64[0];
    if (v20 > v7)
    {
      v19 = v7 - a3->n128_u64[0];
    }

    if (v4 < v19 || v19 >= v4 && (v8 <= v7 ? (v61 = v20 <= v7) : (v61 = 1), !v61 || (v20 <= v7 ? (v62 = v8 <= v7) : (v62 = 1), v62 ? (v63 = v5 < a3[1].n128_u32[0]) : (v63 = 0), v63)))
    {
      v21 = a2[3].n128_u64[0];
      v22 = a2[1];
      result = a2[2];
      v23 = *a2;
      v25 = a3[1];
      v24 = a3[2];
      v26 = *a3;
      a2[3].n128_u64[0] = a3[3].n128_u64[0];
      a2[1] = v25;
      a2[2] = v24;
      *a2 = v26;
      *a3 = v23;
      a3[1] = v22;
      a3[2] = result;
      a3[3].n128_u64[0] = v21;
      v27 = a2->n128_u64[0];
      v28 = a1->n128_u64[0];
      v29 = **a4;
      v30 = 2 * a2->n128_u64[0];
      v31 = 2 * a1->n128_u64[0];
      if (v30 > v29)
      {
        v27 = v29 - a2->n128_u64[0];
      }

      if (v31 > v29)
      {
        v28 = v29 - v28;
      }

      if (v28 < v27 || v27 >= v28 && (v30 > v29 && v31 <= v29 || (v31 > v29 ? (v64 = v30 <= v29) : (v64 = 0), !v64 && a1[1].n128_u32[0] < a2[1].n128_u32[0])))
      {
        v32 = a1[3].n128_u64[0];
        v33 = a1[1];
        result = a1[2];
        v34 = *a1;
        v36 = a2[1];
        v35 = a2[2];
        v37 = *a2;
        a1[3].n128_u64[0] = a2[3].n128_u64[0];
        a1[1] = v36;
        a1[2] = v35;
        *a1 = v37;
        *a2 = v34;
        a2[1] = v33;
        a2[2] = result;
        a2[3].n128_u64[0] = v32;
      }
    }
  }

  return result;
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(absl::lts_20240722::Span<operations_research::sat::PermutableItem> &,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,int)::$_0 &,operations_research::sat::PermutableItem*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, uint64_t **a5)
{
  v10 = a4->n128_u64[0];
  v11 = a3->n128_u64[0];
  v12 = **a5;
  v13 = 2 * a4->n128_u64[0];
  v14 = 2 * a3->n128_u64[0];
  if (v13 > v12)
  {
    v10 = v12 - a4->n128_u64[0];
  }

  if (v14 > v12)
  {
    v11 = v12 - v11;
  }

  if (v11 < v10 || v10 >= v11 && (v13 > v12 ? (v46 = v14 <= v12) : (v46 = 0), v46 || (v14 > v12 ? (v47 = v13 <= v12) : (v47 = 0), !v47 ? (v48 = a3[1].n128_u32[0] < a4[1].n128_u32[0]) : (v48 = 0), v48)))
  {
    v15 = a3[3].n128_u64[0];
    v17 = a3[1];
    v16 = a3[2];
    v18 = *a3;
    v20 = a4[1];
    v19 = a4[2];
    v21 = *a4;
    a3[3].n128_u64[0] = a4[3].n128_u64[0];
    a3[1] = v20;
    a3[2] = v19;
    *a3 = v21;
    *a4 = v18;
    a4[1] = v17;
    a4[2] = v16;
    a4[3].n128_u64[0] = v15;
    v22 = a3->n128_u64[0];
    v23 = a2->n128_u64[0];
    v24 = **a5;
    v25 = 2 * a3->n128_u64[0];
    v26 = 2 * a2->n128_u64[0];
    if (v25 > v24)
    {
      v22 = v24 - a3->n128_u64[0];
    }

    if (v26 > v24)
    {
      v23 = v24 - v23;
    }

    if (v23 < v22 || v22 >= v23 && (v25 > v24 && v26 <= v24 || (v26 > v24 ? (v49 = v25 <= v24) : (v49 = 0), !v49 && a2[1].n128_u32[0] < a3[1].n128_u32[0])))
    {
      v27 = a2[3].n128_u64[0];
      v29 = a2[1];
      v28 = a2[2];
      v30 = *a2;
      v32 = a3[1];
      v31 = a3[2];
      v33 = *a3;
      a2[3].n128_u64[0] = a3[3].n128_u64[0];
      a2[1] = v32;
      a2[2] = v31;
      *a2 = v33;
      *a3 = v30;
      a3[1] = v29;
      a3[2] = v28;
      a3[3].n128_u64[0] = v27;
      v34 = a2->n128_u64[0];
      v35 = a1->n128_u64[0];
      v36 = **a5;
      v37 = 2 * a2->n128_u64[0];
      v38 = 2 * a1->n128_u64[0];
      if (v37 > v36)
      {
        v34 = v36 - a2->n128_u64[0];
      }

      if (v38 > v36)
      {
        v35 = v36 - v35;
      }

      if (v35 < v34 || v34 >= v35 && (v37 > v36 && v38 <= v36 || (v38 > v36 ? (v50 = v37 <= v36) : (v50 = 0), !v50 && a1[1].n128_u32[0] < a2[1].n128_u32[0])))
      {
        v39 = a1[3].n128_u64[0];
        v41 = a1[1];
        v40 = a1[2];
        v42 = *a1;
        v44 = a2[1];
        v43 = a2[2];
        v45 = *a2;
        a1[3].n128_u64[0] = a2[3].n128_u64[0];
        a1[1] = v44;
        a1[2] = v43;
        *a1 = v45;
        *a2 = v42;
        a2[1] = v41;
        a2[2] = v40;
        a2[3].n128_u64[0] = v39;
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(absl::lts_20240722::Span<operations_research::sat::PermutableItem> &,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,int)::$_0 &,operations_research::sat::PermutableItem*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t **a6)
{
  v12 = a5->n128_u64[0];
  v13 = a4->n128_u64[0];
  v14 = **a6;
  v15 = 2 * a5->n128_u64[0];
  v16 = 2 * a4->n128_u64[0];
  if (v15 > v14)
  {
    v12 = v14 - a5->n128_u64[0];
  }

  if (v16 > v14)
  {
    v13 = v14 - v13;
  }

  if (v13 < v12 || v12 >= v13 && (v15 > v14 ? (v60 = v16 <= v14) : (v60 = 0), v60 || (v16 > v14 ? (v61 = v15 <= v14) : (v61 = 0), !v61 ? (v62 = a4[1].n128_u32[0] < a5[1].n128_u32[0]) : (v62 = 0), v62)))
  {
    v17 = a4[3].n128_u64[0];
    v19 = a4[1];
    v18 = a4[2];
    v20 = *a4;
    v22 = a5[1];
    v21 = a5[2];
    v23 = *a5;
    a4[3].n128_u64[0] = a5[3].n128_u64[0];
    a4[1] = v22;
    a4[2] = v21;
    *a4 = v23;
    *a5 = v20;
    a5[1] = v19;
    a5[2] = v18;
    a5[3].n128_u64[0] = v17;
    v24 = a4->n128_u64[0];
    v25 = a3->n128_u64[0];
    v26 = **a6;
    v27 = 2 * a4->n128_u64[0];
    v28 = 2 * a3->n128_u64[0];
    if (v27 > v26)
    {
      v24 = v26 - a4->n128_u64[0];
    }

    if (v28 > v26)
    {
      v25 = v26 - v25;
    }

    if (v25 < v24 || v24 >= v25 && (v27 > v26 && v28 <= v26 || (v28 > v26 ? (v63 = v27 <= v26) : (v63 = 0), !v63 && a3[1].n128_u32[0] < a4[1].n128_u32[0])))
    {
      v29 = a3[3].n128_u64[0];
      v31 = a3[1];
      v30 = a3[2];
      v32 = *a3;
      v34 = a4[1];
      v33 = a4[2];
      v35 = *a4;
      a3[3].n128_u64[0] = a4[3].n128_u64[0];
      a3[1] = v34;
      a3[2] = v33;
      *a3 = v35;
      *a4 = v32;
      a4[1] = v31;
      a4[2] = v30;
      a4[3].n128_u64[0] = v29;
      v36 = a3->n128_u64[0];
      v37 = a2->n128_u64[0];
      v38 = **a6;
      v39 = 2 * a3->n128_u64[0];
      v40 = 2 * a2->n128_u64[0];
      if (v39 > v38)
      {
        v36 = v38 - a3->n128_u64[0];
      }

      if (v40 > v38)
      {
        v37 = v38 - v37;
      }

      if (v37 < v36 || v36 >= v37 && (v39 > v38 && v40 <= v38 || (v40 > v38 ? (v64 = v39 <= v38) : (v64 = 0), !v64 && a2[1].n128_u32[0] < a3[1].n128_u32[0])))
      {
        v41 = a2[3].n128_u64[0];
        v43 = a2[1];
        v42 = a2[2];
        v44 = *a2;
        v46 = a3[1];
        v45 = a3[2];
        v47 = *a3;
        a2[3].n128_u64[0] = a3[3].n128_u64[0];
        a2[1] = v46;
        a2[2] = v45;
        *a2 = v47;
        *a3 = v44;
        a3[1] = v43;
        a3[2] = v42;
        a3[3].n128_u64[0] = v41;
        v48 = a2->n128_u64[0];
        v49 = a1->n128_u64[0];
        v50 = **a6;
        v51 = 2 * a2->n128_u64[0];
        v52 = 2 * a1->n128_u64[0];
        if (v51 > v50)
        {
          v48 = v50 - a2->n128_u64[0];
        }

        if (v52 > v50)
        {
          v49 = v50 - v49;
        }

        if (v49 < v48 || v48 >= v49 && (v51 > v50 && v52 <= v50 || (v52 > v50 ? (v65 = v51 <= v50) : (v65 = 0), !v65 && a1[1].n128_u32[0] < a2[1].n128_u32[0])))
        {
          v53 = a1[3].n128_u64[0];
          v55 = a1[1];
          v54 = a1[2];
          v56 = *a1;
          v58 = a2[1];
          v57 = a2[2];
          v59 = *a2;
          a1[3].n128_u64[0] = a2[3].n128_u64[0];
          a1[1] = v58;
          a1[2] = v57;
          *a1 = v59;
          *a2 = v56;
          a2[1] = v55;
          a2[2] = v54;
          a2[3].n128_u64[0] = v53;
        }
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(absl::lts_20240722::Span<operations_research::sat::PermutableItem> &,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,int)::$_0 &,operations_research::sat::PermutableItem*>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = 1;
        return v5 & 1;
      case 4:
        v5 = 1;
        return v5 & 1;
      case 5:
        v5 = 1;
        return v5 & 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
LABEL_3:
      v5 = 1;
      return v5 & 1;
    }

    if (v4 == 2)
    {
      v8 = *(a2 - 7);
      v6 = a2 - 7;
      v7 = v8;
      v9 = *a1;
      v10 = **a3;
      v11 = 2 * v8;
      v12 = 2 * *a1;
      v13 = v10 - v8;
      if (2 * v8 > v10)
      {
        v7 = v13;
      }

      if (v12 > v10)
      {
        v9 = v10 - v9;
      }

      if (v9 >= v7)
      {
        if (v7 < v9)
        {
          goto LABEL_3;
        }

        if (v11 <= v10 || v12 > v10)
        {
          v52 = v12 > v10 && v11 <= v10;
          v5 = 1;
          if (v52 || *(a1 + 4) >= *(v6 + 4))
          {
            return v5 & 1;
          }
        }
      }

      v14 = a1[6];
      v16 = *(a1 + 1);
      v15 = *(a1 + 2);
      v17 = *a1;
      v19 = *(v6 + 1);
      v18 = *(v6 + 2);
      v20 = *v6;
      a1[6] = v6[6];
      *(a1 + 1) = v19;
      *(a1 + 2) = v18;
      *a1 = v20;
      *v6 = v17;
      *(v6 + 1) = v16;
      *(v6 + 2) = v15;
      v5 = 1;
      v6[6] = v14;
      return v5 & 1;
    }
  }

  v21 = (a1 + 14);
  v25 = (a1 + 21);
  if (a1 + 21 == a2)
  {
LABEL_63:
    v50 = 1;
    goto LABEL_76;
  }

  v24 = a2;
  v26 = 0;
  v27 = 0;
  while (2)
  {
    v29 = *v25;
    v30 = *(v25 + 16);
    v31 = *v21;
    v32 = **a3;
    v33 = 2 * *v25;
    v34 = 2 * *v21;
    v35 = v32 - *v25;
    if (v33 <= v32)
    {
      v35 = *v25;
    }

    if (v34 > v32)
    {
      v31 = v32 - v31;
    }

    if (v31 >= v35)
    {
      if (v35 < v31)
      {
        goto LABEL_20;
      }

      if (v33 <= v32 || v34 > v32)
      {
        v48 = v34 > v32 && v33 <= v32;
        if (v48 || *(v21 + 16) >= v30)
        {
          goto LABEL_20;
        }
      }
    }

    v36 = *(v25 + 8);
    v56 = *(v25 + 52);
    v54 = *(v25 + 20);
    v55 = *(v25 + 36);
    v37 = *(v21 + 32);
    *(v25 + 16) = *(v21 + 16);
    *(v25 + 32) = v37;
    *(v25 + 48) = *(v21 + 48);
    *v25 = *v21;
    v28 = a1;
    if (v21 == a1)
    {
      goto LABEL_19;
    }

    v38 = v26;
    while (1)
    {
      v40 = *(a1 + v38 + 56);
      v41 = **a3;
      v42 = 2 * v40;
      v43 = v41 - v29;
      if (v33 <= v41)
      {
        v43 = v29;
      }

      if (v42 > v41)
      {
        v40 = v41 - v40;
      }

      if (v40 < v43)
      {
        goto LABEL_28;
      }

      if (v43 < v40)
      {
        break;
      }

      if (v33 <= v41 || v42 > v41)
      {
        v45 = v42 > v41 && v33 <= v41;
        if (v45 || *(a1 + v38 + 72) >= v30)
        {
          v28 = a1 + v38 + 112;
          goto LABEL_19;
        }
      }

LABEL_28:
      v21 -= 56;
      v39 = *(a1 + v38 + 72);
      *(a1 + v38 + 112) = *(a1 + v38 + 56);
      *(a1 + v38 + 128) = v39;
      *(a1 + v38 + 144) = *(a1 + v38 + 88);
      *(a1 + v38 + 160) = *(a1 + v38 + 104);
      v38 -= 56;
      if (v38 == -112)
      {
        v28 = a1;
        goto LABEL_19;
      }
    }

    v28 = v21;
LABEL_19:
    *v28 = v29;
    *(v28 + 8) = v36;
    *(v28 + 16) = v30;
    *(v28 + 20) = v54;
    *(v28 + 36) = v55;
    *(v28 + 52) = v56;
    if (++v27 != 8)
    {
LABEL_20:
      v21 = v25;
      v26 += 56;
      v25 += 56;
      if (v25 == a2)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  v50 = 0;
  v24 = v25 + 56 == a2;
LABEL_76:
  v5 = v50 | v24;
  return v5 & 1;
}

uint64_t operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = MEMORY[0x28223BE20](a1, a2, a3);
  v100 = v18;
  v19 = a11;
  v113 = v14;
  v114 = v15;
  v111 = v20;
  v112 = v21;
  v109 = a9;
  v110 = a10;
  v108[0] = &v109;
  v108[1] = v22;
  v99 = v22;
  v108[2] = v16;
  v108[3] = &v113;
  v23 = 1;
  v108[4] = &v111;
  v108[5] = a11;
  if (v15 < 1)
  {
    return v23 & 1;
  }

  v24 = v17;
  v25 = 0;
  v26 = 0;
  v27 = v15 & 0x7FFFFFFF;
  v28 = a11[1];
  v96 = v17;
  v97 = v16;
  while (1)
  {
    v29 = *(v28 + 8 * (v25 >> 6));
    if ((v29 & (1 << v25)) != 0)
    {
      goto LABEL_4;
    }

    v30 = (a12 + 392 * v25);
    v31 = *v30;
    if (*v30 < 2)
    {
      v23 = 0;
      return v23 & 1;
    }

    *(v28 + 8 * (v25 >> 6)) = v29 | (1 << v25);
    v32 = v30 + 1;
    v92 = 1 << v25;
    v93 = v25 >> 6;
    if (v31)
    {
      v32 = *v32;
    }

    v33 = 3 * (v31 >> 1);
    if (v33 * 8)
    {
      break;
    }

LABEL_3:
    v28 = *(v19 + 8);
    *(v28 + 8 * v93) &= ~v92;
    v26 = 1;
LABEL_4:
    if (++v25 == v27)
    {
      v23 = v26 ^ 1;
      return v23 & 1;
    }
  }

  v98 = &v32[v33];
  v103 = v25;
  while (1)
  {
    if ((v32[2] & 1) == 0)
    {
      v34 = *(v113 + 8 * v25);
      v35 = *(v111 + 8 * v25);
      v101 = v32;
      v36 = *v32;
      v37 = v32[1];
      v38 = v37 + v35;
      v39 = (v109 + 32 * v25);
      *v39 = v36;
      v39[1] = v36 + v34;
      v39[2] = v37;
      v39[3] = v37 + v35;
      v40 = v99 - (v36 + v34);
      v41 = v40 * v35;
      v32 = v101;
      if (v40 >= v100)
      {
        v41 = 0;
      }

      v42 = (v16 - v38) * v34;
      if (v16 - v38 >= v24)
      {
        v42 = 0;
      }

      v43 = v42 + v41;
      v44 = __OFSUB__(a14, v43);
      v45 = a14 - v43;
      if (v45 < 0 == v44)
      {
        break;
      }
    }

LABEL_12:
    v32 += 3;
    if (v32 == v98)
    {
      goto LABEL_3;
    }
  }

  v95 = v45;
  v107[0] = 0;
  v107[49] = 0;
  v107[98] = 0;
  v107[147] = 0;
  v107[196] = 0;
  v107[245] = 0;
  v107[294] = 0;
  v107[343] = 0;
  v107[392] = 0;
  v107[441] = 0;
  v107[490] = 0;
  v107[539] = 0;
  v107[588] = 0;
  v107[637] = 0;
  v107[686] = 0;
  v107[735] = 0;
  v46 = *(v19 + 8);
  v47 = (*(v19 + 16) - v46) >> 3;
  if (*(v19 + 16) == v46)
  {
    v50 = 0;
    v51 = 0;
    if (!v47)
    {
      goto LABEL_57;
    }

    goto LABEL_25;
  }

  v48 = *v46;
  if (*v46)
  {
    v49 = 0;
    goto LABEL_22;
  }

  if (v47 != 1)
  {
    v68 = 1;
    v49 = 64;
    while (1)
    {
      v48 = v46[v68];
      if (v48)
      {
        break;
      }

      ++v68;
      v49 += 64;
      if (v47 == v68)
      {
        goto LABEL_57;
      }
    }

LABEL_22:
    v50 = v49 | __clz(__rbit64(v48));
    v51 = (v48 - 1) & v48;
    if (v47)
    {
LABEL_25:
      v94 = *(v19 + 8);
      v52 = v19;
      v53 = v47 - 1;
      v54 = v50;
      if (v25 != v50)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v55 = v54 >> 6;
        if (!v51)
        {
          break;
        }

        v25 = v103;
LABEL_42:
        v65 = __clz(__rbit64(v51)) | (v55 << 6);
        v51 &= v51 - 1;
        v54 = v65;
        if (v25 != v65)
        {
LABEL_28:
          v56 = v109 + 32 * v54;
          v57 = *(v56 + 24);
          v58 = v39[3];
          v59 = v39[1];
          v61 = v57 <= v58 && v59 + v100 <= v99 && v57 + v96 <= v97;
          v102 = v61;
          v62 = *(v56 + 8);
          v64 = v62 <= v59 && v62 + v100 <= v99 && v58 + v96 <= v97;
          v66 = 0;
          v67 = v107;
          do
          {
            if (v54 != v66 && ((*(*(v52 + 8) + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
            {
              if (v102)
              {
              }

              if (v64)
              {
              }
            }

            ++v66;
            v67 += 49;
          }

          while (v27 != v66);
        }
      }

      v24 = v96;
      v19 = v52;
      v25 = v103;
      while (v53 != v55)
      {
        v51 = *(v94 + 8 * ++v55);
        if (v51)
        {
          goto LABEL_42;
        }
      }
    }
  }

LABEL_57:
  v69 = 0;
  do
  {
    if (v25 != v69 && ((*(*(v19 + 8) + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
    {
      v70 = (a12 + 392 * v69);
      v73 = *v70;
      v72 = v70 + 1;
      v71 = v73;
      if (v73)
      {
        v72 = *v72;
      }

      v74 = 24 * (v71 >> 1);
      if (v74)
      {
        v75 = &v107[49 * v69];
        if (v69 >= v103)
        {
          do
          {
            v87 = *(v111 + 8 * v69);
            v88 = v72[1];
            v89 = *v72 + *(v113 + 8 * v69);
            *&v104 = *v72;
            *(&v104 + 1) = v89;
            v105 = v88;
            v106 = v88 + v87;
            if (operations_research::sat::Rectangle::IsDisjoint(&v104, v39))
            {
              v90 = *v75;
              if (*v75)
              {
                v83 = v75[1];
                v84 = v90 >> 1;
                if (v84 == v75[2])
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v83 = v75 + 1;
                v84 = v90 >> 1;
                if (v84 == 16)
                {
LABEL_79:
                }
              }

              v85 = &v83[3 * v84];
              v86 = *v72;
              v85[2] = v72[2];
              *v85 = v86;
              *v75 += 2;
            }

            v72 += 3;
            v74 -= 24;
          }

          while (v74);
        }

        else
        {
          do
          {
            v79 = *(v111 + 8 * v69);
            v80 = v72[1];
            v81 = *v72 + *(v113 + 8 * v69);
            *&v104 = *v72;
            *(&v104 + 1) = v81;
            v105 = v80;
            v106 = v80 + v79;
            if (operations_research::sat::Rectangle::IsDisjoint(&v104, v39))
            {
              v105 = v72[2];
              v104 = *v72;
              LOBYTE(v105) = 1;
              v82 = *v75;
              if (*v75)
              {
                v76 = v75[1];
                v77 = v82 >> 1;
                if (v77 == v75[2])
                {
                  goto LABEL_72;
                }
              }

              else
              {
                v76 = v75 + 1;
                v77 = v82 >> 1;
                if (v77 == 16)
                {
LABEL_72:
                }
              }

              v78 = &v76[3 * v77];
              *v78 = v104;
              v78[2] = v105;
              *v75 += 2;
            }

            v72 += 3;
            v74 -= 24;
          }

          while (v74);
        }
      }

      v25 = v103;
      if (v107[49 * v69] < 2uLL)
      {
        goto LABEL_11;
      }
    }

    ++v69;
  }

  while (v69 != v27);
  {
LABEL_11:
    v16 = v97;
    v32 = v101;
    goto LABEL_12;
  }

  v23 = 1;
  return v23 & 1;
}

void sub_23C988420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Unwind_Resume(a1);
}

void sub_23C988434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Unwind_Resume(a1);
}

void sub_23C988448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Unwind_Resume(a1);
}

void sub_23C98845C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Unwind_Resume(a1);
}

void sub_23C988470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Unwind_Resume(a1);
}

void sub_23C988484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Unwind_Resume(a1);
}

void sub_23C988498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Unwind_Resume(a1);
}

uint64_t std::array<absl::lts_20240722::InlinedVector<operations_research::sat::anonymous namespace::PotentialPositionForItem,16ul,std::allocator<operations_research::sat::anonymous namespace::PotentialPositionForItem>>,16ul>::~array(uint64_t a1)
{
  if (*(a1 + 5880))
  {
    operator delete(*(a1 + 5888));
    if ((*(a1 + 5488) & 1) == 0)
    {
LABEL_3:
      if ((*(a1 + 5096) & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a1 + 5488) & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 5496));
  if ((*(a1 + 5096) & 1) == 0)
  {
LABEL_4:
    if ((*(a1 + 4704) & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(a1 + 5104));
  if ((*(a1 + 4704) & 1) == 0)
  {
LABEL_5:
    if ((*(a1 + 4312) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(a1 + 4712));
  if ((*(a1 + 4312) & 1) == 0)
  {
LABEL_6:
    if ((*(a1 + 3920) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*(a1 + 4320));
  if ((*(a1 + 3920) & 1) == 0)
  {
LABEL_7:
    if ((*(a1 + 3528) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*(a1 + 3928));
  if ((*(a1 + 3528) & 1) == 0)
  {
LABEL_8:
    if ((*(a1 + 3136) & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(*(a1 + 3536));
  if ((*(a1 + 3136) & 1) == 0)
  {
LABEL_9:
    if ((*(a1 + 2744) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*(a1 + 3144));
  if ((*(a1 + 2744) & 1) == 0)
  {
LABEL_10:
    if ((*(a1 + 2352) & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(*(a1 + 2752));
  if ((*(a1 + 2352) & 1) == 0)
  {
LABEL_11:
    if ((*(a1 + 1960) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(*(a1 + 2360));
  if ((*(a1 + 1960) & 1) == 0)
  {
LABEL_12:
    if ((*(a1 + 1568) & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(*(a1 + 1968));
  if ((*(a1 + 1568) & 1) == 0)
  {
LABEL_13:
    if ((*(a1 + 1176) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(*(a1 + 1576));
  if ((*(a1 + 1176) & 1) == 0)
  {
LABEL_14:
    if ((*(a1 + 784) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(*(a1 + 1184));
  if ((*(a1 + 784) & 1) == 0)
  {
LABEL_15:
    if ((*(a1 + 392) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    operator delete(*(a1 + 400));
    if ((*a1 & 1) == 0)
    {
      return a1;
    }

    goto LABEL_33;
  }

LABEL_31:
  operator delete(*(a1 + 792));
  if (*(a1 + 392))
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((*a1 & 1) == 0)
  {
    return a1;
  }

LABEL_33:
  operator delete(*(a1 + 8));
  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingNoPreprocessing(absl::lts_20240722::Span<operations_research::sat::PermutableItem>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>)::$_0 &,operations_research::sat::PermutableItem*,false>(unint64_t result, __int128 *a2, uint64_t a3, char a4)
{
  v8 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v9 = result;
  while (1)
  {
    result = v9;
    v10 = a2 - v9;
    v11 = ((a2 - v9) >> 3) * v8;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return;
    }

    if (v11 == 2)
    {
      v83 = (a2 - 56);
      v84 = *(a2 - 6) * *(a2 - 7);
      v85 = *(v9 + 8) * *v9;
      if (v85 < v84 || (v84 >= v85 ? (v86 = *(v9 + 16) < *(a2 - 10)) : (v86 = 0), v86))
      {
        v248 = *(v9 + 48);
        v226 = *(v9 + 16);
        v237 = *(v9 + 32);
        v215 = *v9;
        v87 = *v83;
        v88 = *(a2 - 40);
        v89 = *(a2 - 24);
        *(v9 + 48) = *(a2 - 1);
        *(v9 + 16) = v88;
        *(v9 + 32) = v89;
        *v9 = v87;
        *(a2 - 1) = v248;
        *(a2 - 40) = v226;
        *(a2 - 24) = v237;
        *v83 = v215;
      }

      return;
    }

LABEL_10:
    if (v10 <= 1343)
    {
      v103 = v9 + 56;
      v105 = v9 == a2 || v103 == a2;
      if (a4)
      {
        if (v105)
        {
          return;
        }

        v106 = 0;
        v107 = v9;
        while (2)
        {
          v109 = v103;
          v110 = *(v107 + 56);
          v111 = *(v107 + 64);
          v112 = v111 * v110;
          v113 = *(v107 + 8) * *v107;
          if (v113 < v111 * v110)
          {
            v114 = *(v107 + 72);
            goto LABEL_157;
          }

          v114 = *(v107 + 72);
          if (v112 >= v113 && *(v107 + 16) < v114)
          {
LABEL_157:
            v241 = *(v107 + 108);
            v219 = *(v107 + 76);
            v230 = *(v107 + 92);
            v116 = *(v107 + 16);
            *v109 = *v107;
            *(v109 + 16) = v116;
            *(v109 + 32) = *(v107 + 32);
            *(v109 + 48) = *(v107 + 48);
            v108 = v9;
            if (v107 != v9)
            {
              v117 = v106;
              while (1)
              {
                v119 = v9 + v117;
                v120 = *(v9 + v117 - 48) * *(v9 + v117 - 56);
                if (v120 >= v112 && (v112 < v120 || *(v119 - 40) >= v114))
                {
                  break;
                }

                v118 = *(v9 + v117 - 40);
                *v119 = *(v9 + v117 - 56);
                *(v119 + 16) = v118;
                *(v119 + 32) = *(v9 + v117 - 24);
                *(v119 + 48) = *(v9 + v117 - 8);
                v117 -= 56;
                if (!v117)
                {
                  v108 = v9;
                  goto LABEL_148;
                }
              }

              v108 = v9 + v117;
            }

LABEL_148:
            *v108 = v110;
            *(v108 + 8) = v111;
            *(v108 + 16) = v114;
            *(v108 + 20) = v219;
            *(v108 + 36) = v230;
            *(v108 + 52) = v241;
          }

          v103 = v109 + 56;
          v106 += 56;
          v107 = v109;
          if ((v109 + 56) == a2)
          {
            return;
          }

          continue;
        }
      }

      if (v105)
      {
        return;
      }

      while (2)
      {
        v191 = v103;
        v192 = *(result + 56);
        v193 = *(result + 64);
        v194 = v193 * v192;
        v195 = *(result + 8) * *result;
        if (v195 >= v193 * v192)
        {
          v196 = *(result + 72);
          if (v194 >= v195 && *(result + 16) < v196)
          {
            goto LABEL_243;
          }
        }

        else
        {
          v196 = *(result + 72);
LABEL_243:
          v244 = *(result + 108);
          v222 = *(result + 76);
          v233 = *(result + 92);
          do
          {
            do
            {
              v198 = result;
              v199 = *(result + 16);
              *(result + 56) = *result;
              *(result + 72) = v199;
              *(result + 88) = *(result + 32);
              *(result + 104) = *(result + 48);
              v200 = *(result - 56);
              result -= 56;
              v201 = *(v198 - 48) * v200;
            }

            while (v201 < v194);
          }

          while (v194 >= v201 && *(v198 - 40) < v196);
          *v198 = v192;
          *(v198 + 8) = v193;
          *(v198 + 16) = v196;
          *(v198 + 20) = v222;
          *(v198 + 36) = v233;
          *(v198 + 52) = v244;
        }

        v103 = v191 + 56;
        result = v191;
        if ((v191 + 56) == a2)
        {
          return;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return;
      }

      v122 = (v11 - 2) >> 1;
      v123 = v122;
      do
      {
        v124 = v123;
        v125 = 56 * v123;
        v126 = ((56 * v123) >> 3) * v8;
        if (v122 >= v126)
        {
          v127 = 2 * v126;
          v128 = (2 * v126) | 1;
          v129 = v9 + 56 * v128;
          v130 = v127 + 2;
          if (v130 < v11)
          {
            v131 = *(v129 + 8) * *v129;
            v132 = *(v129 + 64) * *(v129 + 56);
            if (v132 < v131 || (v131 >= v132 ? (v133 = *(v129 + 72) < *(v129 + 16)) : (v133 = 0), v133))
            {
              v129 += 56;
              v128 = v130;
            }
          }

          v134 = v9 + v125;
          v135 = *(v129 + 8) * *v129;
          v136 = *v134;
          v137 = *(v134 + 8);
          v138 = v137 * *v134;
          if (v138 >= v135)
          {
            v139 = *(v134 + 16);
            if (v135 < v138 || v139 >= *(v129 + 16))
            {
              v242 = *(v134 + 52);
              v220 = *(v134 + 20);
              v231 = *(v134 + 36);
              do
              {
                v141 = v134;
                v134 = v129;
                v142 = *v129;
                v143 = *(v129 + 16);
                v144 = *(v129 + 32);
                *(v141 + 48) = *(v129 + 48);
                *(v141 + 16) = v143;
                *(v141 + 32) = v144;
                *v141 = v142;
                if (v122 < v128)
                {
                  break;
                }

                v145 = 2 * v128;
                v128 = (2 * v128) | 1;
                v129 = v9 + 56 * v128;
                v146 = v145 + 2;
                if (v146 < v11)
                {
                  v147 = *(v129 + 8) * *v129;
                  v148 = *(v129 + 64) * *(v129 + 56);
                  if (v148 < v147 || (v147 >= v148 ? (v149 = *(v129 + 72) < *(v129 + 16)) : (v149 = 0), v149))
                  {
                    v129 += 56;
                    v128 = v146;
                  }
                }

                v150 = *(v129 + 8) * *v129;
                if (v138 < v150)
                {
                  break;
                }
              }

              while (v150 < v138 || v139 >= *(v129 + 16));
              *v134 = v136;
              *(v134 + 8) = v137;
              *(v134 + 16) = v139;
              *(v134 + 20) = v220;
              *(v134 + 36) = v231;
              *(v134 + 52) = v242;
            }
          }
        }

        v123 = v124 - 1;
      }

      while (v124);
      v152 = (v10 >> 3) * v8;
      while (2)
      {
        v153 = 0;
        v252 = *(v9 + 48);
        v232 = *(v9 + 16);
        v243 = *(v9 + 32);
        v221 = *v9;
        v154 = v9;
        do
        {
          v158 = v154;
          v159 = v154 + 56 * v153;
          v154 = v159 + 56;
          v160 = 2 * v153;
          v153 = (2 * v153) | 1;
          v161 = v160 + 2;
          if (v161 < v152)
          {
            v162 = v159 + 112;
            v163 = *(v159 + 64) * *(v159 + 56);
            v164 = *(v159 + 120) * *(v159 + 112);
            if (v164 < v163 || ((v165 = *(v159 + 128), v166 = *(v159 + 72), v163 >= v164) ? (v167 = v165 < v166) : (v167 = 0), v167))
            {
              v154 = v162;
              v153 = v161;
            }
          }

          v155 = *v154;
          v156 = *(v154 + 16);
          v157 = *(v154 + 32);
          *(v158 + 48) = *(v154 + 48);
          *(v158 + 16) = v156;
          *(v158 + 32) = v157;
          *v158 = v155;
        }

        while (v153 <= ((v152 - 2) >> 1));
        a2 = (a2 - 56);
        if (v154 == a2)
        {
          *(v154 + 48) = v252;
          *(v154 + 16) = v232;
          *(v154 + 32) = v243;
          *v154 = v221;
        }

        else
        {
          v168 = *a2;
          v169 = a2[1];
          v170 = a2[2];
          *(v154 + 48) = *(a2 + 6);
          *(v154 + 16) = v169;
          *(v154 + 32) = v170;
          *v154 = v168;
          *(a2 + 6) = v252;
          a2[1] = v232;
          a2[2] = v243;
          *a2 = v221;
          v171 = v154 - v9 + 56;
          if (v171 >= 57)
          {
            v172 = (v171 >> 3) * v8 - 2;
            v173 = v172 >> 1;
            v174 = v9 + 56 * (v172 >> 1);
            v175 = *(v174 + 8) * *v174;
            v176 = *v154;
            v177 = *(v154 + 8);
            v178 = v177 * *v154;
            if (v178 < v175)
            {
              v179 = *(v154 + 16);
              goto LABEL_223;
            }

            v179 = *(v154 + 16);
            if (v175 >= v178 && v179 < *(v174 + 16))
            {
LABEL_223:
              v211 = *(v154 + 52);
              v205 = *(v154 + 20);
              v208 = *(v154 + 36);
              v181 = *v174;
              v182 = *(v174 + 16);
              v183 = *(v174 + 32);
              *(v154 + 48) = *(v174 + 48);
              *(v154 + 16) = v182;
              *(v154 + 32) = v183;
              *v154 = v181;
              if (v172 >= 2)
              {
                while (1)
                {
                  v187 = v173 - 1;
                  v173 = (v173 - 1) >> 1;
                  v188 = v9 + 56 * v173;
                  v189 = *(v188 + 8) * *v188;
                  if (v178 >= v189 && (v189 < v178 || v179 >= *(v188 + 16)))
                  {
                    break;
                  }

                  v184 = *v188;
                  v185 = *(v188 + 16);
                  v186 = *(v188 + 32);
                  *(v174 + 48) = *(v188 + 48);
                  *(v174 + 16) = v185;
                  *(v174 + 32) = v186;
                  *v174 = v184;
                  v174 = v9 + 56 * v173;
                  if (v187 <= 1)
                  {
                    goto LABEL_232;
                  }
                }
              }

              v188 = v174;
LABEL_232:
              *v188 = v176;
              *(v188 + 8) = v177;
              *(v188 + 16) = v179;
              *(v188 + 20) = v205;
              *(v188 + 36) = v208;
              *(v188 + 52) = v211;
            }
          }
        }

        v31 = v152-- <= 2;
        if (v31)
        {
          return;
        }

        continue;
      }
    }

    v12 = v11 >> 1;
    v13 = v9 + 56 * (v11 >> 1);
    if (v10 < 0x1C01)
    {
      --a3;
      v21 = *result;
      if ((a4 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_30:
      v23 = *(result + 8);
      v24 = v23 * v21;
LABEL_31:
      v33 = 0;
      v34 = *(result + 16);
      v204 = *(result + 20);
      v207 = *(result + 36);
      v210 = *(result + 52);
      while (1)
      {
        v35 = *(result + v33 + 64) * *(result + v33 + 56);
        if (v24 >= v35 && (v35 < v24 || v34 >= *(result + v33 + 72)))
        {
          break;
        }

        v33 += 56;
      }

      v37 = result + v33 + 56;
      v38 = a2 - 56;
      if (v33)
      {
        do
        {
          v39 = v38;
          v40 = *(v38 + 8) * *v38;
          if (v24 < v40)
          {
            break;
          }

          v41 = *(v38 + 16);
          v38 -= 56;
        }

        while (v40 < v24 || v34 >= v41);
LABEL_54:
        v9 = v37;
        if (v37 < v39)
        {
          v47 = v39;
          do
          {
            v246 = *(v9 + 48);
            v224 = *(v9 + 16);
            v235 = *(v9 + 32);
            v213 = *v9;
            v48 = *v47;
            v49 = *(v47 + 16);
            v50 = *(v47 + 32);
            *(v9 + 48) = *(v47 + 48);
            *(v9 + 16) = v49;
            *(v9 + 32) = v50;
            *v9 = v48;
            *(v47 + 48) = v246;
            *(v47 + 16) = v224;
            *(v47 + 32) = v235;
            *v47 = v213;
            do
            {
              do
              {
                v51 = *(v9 + 56);
                v52 = *(v9 + 64);
                v9 += 56;
                v53 = v52 * v51;
              }

              while (v24 < v53);
            }

            while (v53 >= v24 && v34 < *(v9 + 16));
            v55 = v47 - 56;
            do
            {
              v47 = v55;
              v56 = *(v55 + 8) * *v55;
              if (v24 < v56)
              {
                break;
              }

              v57 = *(v55 + 16);
              v55 -= 56;
            }

            while (v56 < v24 || v34 >= v57);
          }

          while (v9 < v47);
        }
      }

      else
      {
        v43 = a2 - 56;
        while (1)
        {
          v39 = v43;
          v44 = v43 + 56;
          if (v37 >= v44)
          {
            break;
          }

          v45 = *(v39 + 8) * *v39;
          if (v24 >= v45)
          {
            v43 = v39 - 56;
            if (v45 < v24 || v34 >= *(v39 + 16))
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        v39 = v44;
        v9 = v37;
      }

      if (v9 - 56 != result)
      {
        v61 = *(v9 - 56);
        v62 = *(v9 - 40);
        v63 = *(v9 - 24);
        *(result + 48) = *(v9 - 8);
        *(result + 16) = v62;
        *(result + 32) = v63;
        *result = v61;
      }

      *(v9 - 56) = v21;
      *(v9 - 48) = v23;
      *(v9 - 40) = v34;
      *(v9 - 4) = v210;
      *(v9 - 20) = v207;
      *(v9 - 36) = v204;
      if (v37 < v39)
      {
        goto LABEL_84;
      }

      {
        a2 = (v9 - 56);
        if (v64)
        {
          return;
        }

        goto LABEL_2;
      }

      if ((v64 & 1) == 0)
      {
LABEL_84:
        a4 = 0;
      }
    }

    else
    {
      v14 = v8;
      v15 = 56 * v12;
      v16 = (56 * v12 + result - 56);
      v17 = (result + 56 + v15);
      v8 = v14;
      v245 = *(result + 48);
      v223 = *(result + 16);
      v234 = *(result + 32);
      v212 = *result;
      v18 = *v13;
      v19 = *(v13 + 16);
      v20 = *(v13 + 32);
      *(result + 48) = *(v13 + 48);
      *(result + 16) = v19;
      *(result + 32) = v20;
      *result = v18;
      *(v13 + 48) = v245;
      *(v13 + 16) = v223;
      *(v13 + 32) = v234;
      *v13 = v212;
      --a3;
      v21 = *result;
      if (a4)
      {
        goto LABEL_30;
      }

LABEL_14:
      v22 = *(result - 48) * *(result - 56);
      v23 = *(result + 8);
      v24 = v23 * v21;
      if (v23 * v21 < v22)
      {
        goto LABEL_31;
      }

      v25 = *(result + 16);
      if (v22 >= v24 && v25 < *(result - 40))
      {
        goto LABEL_31;
      }

      v203 = *(result + 20);
      v206 = *(result + 36);
      v209 = *(result + 52);
      v26 = *(a2 - 7);
      v27 = *(a2 - 6);
      if (v27 * v26 >= v24 && (v24 < v27 * v26 || *(a2 - 10) >= v25))
      {
        v79 = result + 56;
        do
        {
          v9 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v80 = *(v79 + 8) * *v79;
          if (v80 < v24)
          {
            break;
          }

          v81 = *(v79 + 16);
          v79 += 56;
        }

        while (v24 < v80 || v81 >= v25);
      }

      else
      {
        v28 = result + 56;
        do
        {
          v9 = v28;
          v29 = *(v28 + 8) * *v28;
          if (v29 < v24)
          {
            break;
          }

          v30 = *(v28 + 16);
          v28 += 56;
          v31 = v24 >= v29 && v30 < v25;
        }

        while (!v31);
      }

      i = a2;
      if (v9 < a2)
      {
        for (i = a2 - 56; ; i -= 56)
        {
          v59 = v26 * v27;
          if (v59 >= v24 && (v24 < v59 || *(i + 16) >= v25))
          {
            break;
          }

          v26 = *(i - 56);
          v27 = *(i - 48);
        }
      }

      while (v9 < i)
      {
        v247 = *(v9 + 48);
        v225 = *(v9 + 16);
        v236 = *(v9 + 32);
        v214 = *v9;
        v65 = *i;
        v66 = *(i + 16);
        v67 = *(i + 32);
        *(v9 + 48) = *(i + 48);
        *(v9 + 16) = v66;
        *(v9 + 32) = v67;
        *v9 = v65;
        *(i + 48) = v247;
        *(i + 16) = v225;
        *(i + 32) = v236;
        *i = v214;
        v68 = v9 + 56;
        do
        {
          v9 = v68;
          v69 = *(v68 + 8) * *v68;
          if (v69 < v24)
          {
            break;
          }

          v70 = *(v68 + 16);
          v68 += 56;
        }

        while (v24 < v69 || v70 >= v25);
        do
        {
          do
          {
            v72 = *(i - 56);
            v73 = *(i - 48);
            i -= 56;
            v74 = v73 * v72;
          }

          while (v74 < v24);
        }

        while (v24 >= v74 && *(i + 16) < v25);
      }

      if (v9 - 56 != result)
      {
        v76 = *(v9 - 56);
        v77 = *(v9 - 40);
        v78 = *(v9 - 24);
        *(result + 48) = *(v9 - 8);
        *(result + 16) = v77;
        *(result + 32) = v78;
        *result = v76;
      }

      a4 = 0;
      *(v9 - 56) = v21;
      *(v9 - 48) = v23;
      *(v9 - 40) = v25;
      *(v9 - 4) = v209;
      *(v9 - 20) = v206;
      *(v9 - 36) = v203;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v90 = (a2 - 56);
      v91 = *(a2 - 6) * *(a2 - 7);
      v92 = *(v9 + 120) * *(v9 + 112);
      if (v92 < v91 || (v91 >= v92 ? (v93 = *(v9 + 128) < *(a2 - 10)) : (v93 = 0), v93))
      {
        v249 = *(v9 + 160);
        v227 = *(v9 + 128);
        v238 = *(v9 + 144);
        v216 = *(v9 + 112);
        v94 = *v90;
        v95 = *(a2 - 40);
        v96 = *(a2 - 24);
        *(v9 + 160) = *(a2 - 1);
        *(v9 + 128) = v95;
        *(v9 + 144) = v96;
        *(v9 + 112) = v94;
        *(a2 - 1) = v249;
        *(a2 - 40) = v227;
        *(a2 - 24) = v238;
        *v90 = v216;
        v97 = *(v9 + 120) * *(v9 + 112);
        v98 = *(v9 + 64) * *(v9 + 56);
        if (v98 < v97 || v97 >= v98 && *(v9 + 72) < *(v9 + 128))
        {
          v250 = *(v9 + 104);
          v228 = *(v9 + 72);
          v239 = *(v9 + 88);
          v217 = *(v9 + 56);
          v99 = *(v9 + 128);
          *(v9 + 56) = *(v9 + 112);
          *(v9 + 72) = v99;
          *(v9 + 88) = *(v9 + 144);
          *(v9 + 104) = *(v9 + 160);
          *(v9 + 128) = v228;
          *(v9 + 144) = v239;
          *(v9 + 160) = v250;
          *(v9 + 112) = v217;
          v100 = *(v9 + 64) * *(v9 + 56);
          v101 = *(v9 + 8) * *v9;
          if (v101 < v100 || v100 >= v101 && *(v9 + 16) < *(v9 + 72))
          {
            v251 = *(v9 + 48);
            v229 = *(v9 + 16);
            v240 = *(v9 + 32);
            v218 = *v9;
            v102 = *(v9 + 72);
            *v9 = *(v9 + 56);
            *(v9 + 16) = v102;
            *(v9 + 32) = *(v9 + 88);
            *(v9 + 48) = *(v9 + 104);
            *(v9 + 72) = v229;
            *(v9 + 88) = v240;
            *(v9 + 104) = v251;
            *(v9 + 56) = v218;
          }
        }
      }

      return;
    }

    if (v11 == 5)
    {

      return;
    }

    goto LABEL_10;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingNoPreprocessing(absl::lts_20240722::Span<operations_research::sat::PermutableItem>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>)::$_0 &,operations_research::sat::PermutableItem*,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 1) * *a2;
  v4 = *(a1 + 1) * *a1;
  if (v4 < v3 || ((v5 = *(a2 + 4), v3 >= v4) ? (v6 = *(a1 + 4) < v5) : (v6 = 0), v6))
  {
    v24 = *(a3 + 1) * *a3;
    if (v3 < v24 || (v24 >= v3 ? (v25 = *(a2 + 4) < *(a3 + 4)) : (v25 = 0), v25))
    {
      v40 = *(a1 + 6);
      v41 = a1[1];
      result = a1[2];
      v42 = *a1;
      v44 = a3[1];
      v43 = a3[2];
      v45 = *a3;
      *(a1 + 6) = *(a3 + 6);
      a1[1] = v44;
      a1[2] = v43;
      *a1 = v45;
      *a3 = v42;
      a3[1] = v41;
      a3[2] = result;
      *(a3 + 6) = v40;
    }

    else
    {
      v26 = *(a1 + 6);
      v27 = a1[1];
      result = a1[2];
      v28 = *a1;
      v30 = a2[1];
      v29 = a2[2];
      v31 = *a2;
      *(a1 + 6) = *(a2 + 6);
      a1[1] = v30;
      a1[2] = v29;
      *a1 = v31;
      *a2 = v28;
      a2[1] = v27;
      a2[2] = result;
      *(a2 + 6) = v26;
      v32 = *(a3 + 1) * *a3;
      v33 = *(a2 + 1) * *a2;
      if (v33 < v32 || v32 >= v33 && *(a2 + 4) < *(a3 + 4))
      {
        v34 = *(a2 + 6);
        v35 = a2[1];
        result = a2[2];
        v36 = *a2;
        v38 = a3[1];
        v37 = a3[2];
        v39 = *a3;
        *(a2 + 6) = *(a3 + 6);
        a2[1] = v38;
        a2[2] = v37;
        *a2 = v39;
        *a3 = v36;
        a3[1] = v35;
        a3[2] = result;
        *(a3 + 6) = v34;
      }
    }
  }

  else
  {
    v7 = *(a3 + 1) * *a3;
    if (v3 < v7 || (v7 >= v3 ? (v8 = v5 < *(a3 + 4)) : (v8 = 0), v8))
    {
      v9 = *(a2 + 6);
      v11 = a2[1];
      result = a2[2];
      v12 = *a2;
      v14 = a3[1];
      v13 = a3[2];
      v15 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v14;
      a2[2] = v13;
      *a2 = v15;
      *a3 = v12;
      a3[1] = v11;
      a3[2] = result;
      *(a3 + 6) = v9;
      v16 = *(a2 + 1) * *a2;
      v17 = *(a1 + 1) * *a1;
      if (v17 < v16 || v16 >= v17 && *(a1 + 4) < *(a2 + 4))
      {
        v18 = *(a1 + 6);
        v19 = a1[1];
        result = a1[2];
        v20 = *a1;
        v22 = a2[1];
        v21 = a2[2];
        v23 = *a2;
        *(a1 + 6) = *(a2 + 6);
        a1[1] = v22;
        a1[2] = v21;
        *a1 = v23;
        *a2 = v20;
        a2[1] = v19;
        a2[2] = result;
        *(a2 + 6) = v18;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingNoPreprocessing(absl::lts_20240722::Span<operations_research::sat::PermutableItem>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>)::$_0 &,operations_research::sat::PermutableItem*,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v11 = *(a4 + 1) * *a4;
  v12 = *(a3 + 8) * *a3;
  if (v12 < v11 || (v11 >= v12 ? (v13 = *(a3 + 16) < *(a4 + 4)) : (v13 = 0), v13))
  {
    v14 = *(a3 + 48);
    v15 = *(a3 + 16);
    result = *(a3 + 32);
    v16 = *a3;
    v18 = a4[1];
    v17 = a4[2];
    v19 = *a4;
    *(a3 + 48) = *(a4 + 6);
    *(a3 + 16) = v18;
    *(a3 + 32) = v17;
    *a3 = v19;
    *a4 = v16;
    a4[1] = v15;
    a4[2] = result;
    *(a4 + 6) = v14;
    v20 = *(a3 + 8) * *a3;
    v21 = *(a2 + 8) * *a2;
    if (v21 < v20 || v20 >= v21 && *(a2 + 16) < *(a3 + 16))
    {
      v22 = *(a2 + 48);
      v23 = *(a2 + 16);
      result = *(a2 + 32);
      v24 = *a2;
      v26 = *(a3 + 16);
      v25 = *(a3 + 32);
      v27 = *a3;
      *(a2 + 48) = *(a3 + 48);
      *(a2 + 16) = v26;
      *(a2 + 32) = v25;
      *a2 = v27;
      *a3 = v24;
      *(a3 + 16) = v23;
      *(a3 + 32) = result;
      *(a3 + 48) = v22;
      v28 = *(a2 + 8) * *a2;
      v29 = *(a1 + 8) * *a1;
      if (v29 < v28 || v28 >= v29 && *(a1 + 16) < *(a2 + 16))
      {
        v30 = *(a1 + 48);
        v31 = *(a1 + 16);
        result = *(a1 + 32);
        v32 = *a1;
        v34 = *(a2 + 16);
        v33 = *(a2 + 32);
        v35 = *a2;
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 16) = v34;
        *(a1 + 32) = v33;
        *a1 = v35;
        *a2 = v32;
        *(a2 + 16) = v31;
        *(a2 + 32) = result;
        *(a2 + 48) = v30;
      }
    }
  }

  v36 = *(a5 + 1) * *a5;
  v37 = *(a4 + 1) * *a4;
  if (v37 < v36 || (v36 >= v37 ? (v38 = *(a4 + 4) < *(a5 + 4)) : (v38 = 0), v38))
  {
    v39 = *(a4 + 6);
    v40 = a4[1];
    result = a4[2];
    v41 = *a4;
    v43 = a5[1];
    v42 = a5[2];
    v44 = *a5;
    *(a4 + 6) = *(a5 + 6);
    a4[1] = v43;
    a4[2] = v42;
    *a4 = v44;
    *a5 = v41;
    a5[1] = v40;
    a5[2] = result;
    *(a5 + 6) = v39;
    v45 = *(a4 + 1) * *a4;
    v46 = *(a3 + 8) * *a3;
    if (v46 < v45 || v45 >= v46 && *(a3 + 16) < *(a4 + 4))
    {
      v47 = *(a3 + 48);
      v48 = *(a3 + 16);
      result = *(a3 + 32);
      v49 = *a3;
      v51 = a4[1];
      v50 = a4[2];
      v52 = *a4;
      *(a3 + 48) = *(a4 + 6);
      *(a3 + 16) = v51;
      *(a3 + 32) = v50;
      *a3 = v52;
      *a4 = v49;
      a4[1] = v48;
      a4[2] = result;
      *(a4 + 6) = v47;
      v53 = *(a3 + 8) * *a3;
      v54 = *(a2 + 8) * *a2;
      if (v54 < v53 || v53 >= v54 && *(a2 + 16) < *(a3 + 16))
      {
        v55 = *(a2 + 48);
        v56 = *(a2 + 16);
        result = *(a2 + 32);
        v57 = *a2;
        v59 = *(a3 + 16);
        v58 = *(a3 + 32);
        v60 = *a3;
        *(a2 + 48) = *(a3 + 48);
        *(a2 + 16) = v59;
        *(a2 + 32) = v58;
        *a2 = v60;
        *a3 = v57;
        *(a3 + 16) = v56;
        *(a3 + 32) = result;
        *(a3 + 48) = v55;
        v61 = *(a2 + 8) * *a2;
        v62 = *(a1 + 8) * *a1;
        if (v62 < v61 || v61 >= v62 && *(a1 + 16) < *(a2 + 16))
        {
          v63 = *(a1 + 48);
          v64 = *(a1 + 16);
          result = *(a1 + 32);
          v65 = *a1;
          v67 = *(a2 + 16);
          v66 = *(a2 + 32);
          v68 = *a2;
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 16) = v67;
          *(a1 + 32) = v66;
          *a1 = v68;
          *a2 = v65;
          *(a2 + 16) = v64;
          *(a2 + 32) = result;
          *(a2 + 48) = v63;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingNoPreprocessing(absl::lts_20240722::Span<operations_research::sat::PermutableItem>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>)::$_0 &,operations_research::sat::PermutableItem*>(uint64_t a1, uint64_t *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 1;
        return v3 & 1;
      case 4:
        v36 = (a2 - 7);
        v37 = *(a2 - 6) * *(a2 - 7);
        v38 = *(a1 + 120) * *(a1 + 112);
        if (v38 < v37 || (v37 >= v38 ? (v39 = *(a1 + 128) < *(a2 - 10)) : (v39 = 0), v39))
        {
          v40 = *(a1 + 160);
          v42 = *(a1 + 128);
          v41 = *(a1 + 144);
          v43 = *(a1 + 112);
          v45 = *(a2 - 5);
          v44 = *(a2 - 3);
          v46 = *v36;
          *(a1 + 160) = *(a2 - 1);
          *(a1 + 128) = v45;
          *(a1 + 144) = v44;
          *(a1 + 112) = v46;
          *v36 = v43;
          *(a2 - 5) = v42;
          *(a2 - 3) = v41;
          *(a2 - 1) = v40;
          v47 = *(a1 + 120) * *(a1 + 112);
          v48 = *(a1 + 64) * *(a1 + 56);
          if (v48 < v47 || (v3 = 1, v47 >= v48) && *(a1 + 72) < *(a1 + 128))
          {
            v49 = *(a1 + 104);
            v50 = *(a1 + 88);
            v51 = *(a1 + 56);
            v52 = *(a1 + 128);
            *(a1 + 56) = *(a1 + 112);
            v53 = *(a1 + 72);
            *(a1 + 72) = v52;
            *(a1 + 88) = *(a1 + 144);
            *(a1 + 104) = *(a1 + 160);
            *(a1 + 112) = v51;
            *(a1 + 128) = v53;
            *(a1 + 144) = v50;
            *(a1 + 160) = v49;
            v54 = *(a1 + 64) * *(a1 + 56);
            v55 = *(a1 + 8) * *a1;
            if (v55 < v54 || (v3 = 1, v54 >= v55) && *(a1 + 16) < *(a1 + 72))
            {
              v56 = *(a1 + 48);
              v58 = *(a1 + 16);
              v57 = *(a1 + 32);
              v59 = *a1;
              v60 = *(a1 + 72);
              *a1 = *(a1 + 56);
              *(a1 + 16) = v60;
              *(a1 + 32) = *(a1 + 88);
              *(a1 + 48) = *(a1 + 104);
              *(a1 + 56) = v59;
              *(a1 + 72) = v58;
              *(a1 + 88) = v57;
              v3 = 1;
              *(a1 + 104) = v56;
            }
          }

          return v3 & 1;
        }

LABEL_3:
        v3 = 1;
        return v3 & 1;
      case 5:
        v3 = 1;
        return v3 & 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      goto LABEL_3;
    }

    if (v2 == 2)
    {
      v4 = (a2 - 7);
      v5 = *(a2 - 6) * *(a2 - 7);
      v6 = *(a1 + 8) * *a1;
      if (v6 < v5 || (v5 >= v6 ? (v7 = *(a1 + 16) < *(a2 - 10)) : (v7 = 0), v7))
      {
        v8 = *(a1 + 48);
        v10 = *(a1 + 16);
        v9 = *(a1 + 32);
        v11 = *a1;
        v13 = *(a2 - 5);
        v12 = *(a2 - 3);
        v14 = *v4;
        *(a1 + 48) = *(a2 - 1);
        *(a1 + 16) = v13;
        *(a1 + 32) = v12;
        *a1 = v14;
        *v4 = v11;
        *(a2 - 5) = v10;
        *(a2 - 3) = v9;
        v3 = 1;
        *(a2 - 1) = v8;
        return v3 & 1;
      }

      goto LABEL_3;
    }
  }

  v15 = (a1 + 112);
  v19 = (a1 + 168);
  if ((a1 + 168) == a2)
  {
LABEL_51:
    v61 = 1;
    goto LABEL_53;
  }

  v18 = a2;
  v20 = 0;
  v21 = 0;
  while (1)
  {
    v23 = *v19;
    v24 = v19[1];
    v25 = v24 * *v19;
    v26 = v15[1] * *v15;
    if (v26 < v25)
    {
      break;
    }

    v27 = *(v19 + 4);
    if (v25 >= v26 && *(v15 + 4) < v27)
    {
      goto LABEL_29;
    }

LABEL_21:
    v15 = v19;
    v20 += 56;
    v19 += 7;
    if (v19 == a2)
    {
      goto LABEL_51;
    }
  }

  v27 = *(v19 + 4);
LABEL_29:
  v65 = *(v19 + 13);
  v63 = *(v19 + 20);
  v64 = *(v19 + 36);
  v29 = *(v15 + 1);
  *v19 = *v15;
  *(v19 + 1) = v29;
  *(v19 + 2) = *(v15 + 2);
  v19[6] = v15[6];
  v22 = a1;
  if (v15 != a1)
  {
    v30 = v20;
    while (1)
    {
      v32 = *(a1 + v30 + 64) * *(a1 + v30 + 56);
      if (v32 >= v25 && (v25 < v32 || *(a1 + v30 + 72) >= v27))
      {
        break;
      }

      v31 = *(a1 + v30 + 72);
      *(a1 + v30 + 112) = *(a1 + v30 + 56);
      *(a1 + v30 + 128) = v31;
      *(a1 + v30 + 144) = *(a1 + v30 + 88);
      *(a1 + v30 + 160) = *(a1 + v30 + 104);
      v30 -= 56;
      if (v30 == -112)
      {
        v22 = a1;
        goto LABEL_20;
      }
    }

    v22 = a1 + v30 + 112;
  }

LABEL_20:
  *v22 = v23;
  *(v22 + 8) = v24;
  *(v22 + 16) = v27;
  *(v22 + 20) = v63;
  *(v22 + 36) = v64;
  *(v22 + 52) = v65;
  if (++v21 != 8)
  {
    goto LABEL_21;
  }

  v61 = 0;
  v18 = v19 + 7 == a2;
LABEL_53:
  v3 = v61 | v18;
  return v3 & 1;
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::anonymous namespace::PotentialPositionForItem,16ul,std::allocator<operations_research::sat::anonymous namespace::PotentialPositionForItem>>::EmplaceBackSlow<operations_research::sat::anonymous namespace::PotentialPositionForItem>(void *a1, uint64_t a2)
{
  if ((*a1 & 1) != 0 && (2 * a1[2]) >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  operator new();
}

void operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::Span<operations_research::sat::Rectangle>,operations_research::Bitset64<int> &,absl::lts_20240722::Span<absl::lts_20240722::InlinedVector<operations_research::sat::anonymous namespace::PotentialPositionForItem,16ul,std::allocator<operations_research::sat::anonymous namespace::PotentialPositionForItem>> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0::operator()(uint64_t **a1, unint64_t *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*a1[3] + 8 * a3);
  v6 = *(*a1[4] + 8 * a3);
  v7 = v5 + a4;
  v8 = v6 + a5;
  v10 = a1[1];
  v9 = a1[2];
  if (v5 + a4 > v10 || v8 > v9)
  {
    return;
  }

  v12 = **a1;
  v13 = a1[5];
  v14 = v13[1];
  v15 = v13[2];
  if (!a3 && (v10 - v5 < 2 * a4 || v9 - v6 < 2 * a5))
  {
    return;
  }

  v16 = a4 == 0;
  v17 = a5 == 0;
  v18 = v15 - v14;
  v19 = v18 >> 3;
  if (!v18)
  {
    v22 = 0;
    if (v19)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  v20 = *v14;
  if (*v14)
  {
    v21 = 0;
    goto LABEL_10;
  }

  if (v19 == 1)
  {
LABEL_40:
    if (v16 & 1) != 0 && (v17)
    {
      *&v33 = a4;
      *(&v33 + 1) = a5;
      LOBYTE(v34) = 0;
      v28 = *a2;
      v29 = 16;
      if (*a2)
      {
        v29 = a2[2];
      }

      v30 = v28 >> 1;
      if (v28 >> 1 == v29)
      {
      }

      if (v28)
      {
        v31 = a2[1];
      }

      else
      {
        v31 = a2 + 1;
      }

      v32 = &v31[3 * v30];
      *v32 = v33;
      v32[2] = v34;
      *a2 += 2;
    }

    return;
  }

  v27 = 1;
  v21 = 64;
  while (1)
  {
    v20 = v14[v27];
    if (v20)
    {
      break;
    }

    ++v27;
    v21 += 64;
    if (v19 == v27)
    {
      goto LABEL_40;
    }
  }

LABEL_10:
  v22 = v21 | __clz(__rbit64(v20));
  v18 = (v20 - 1) & v20;
  if (!v19)
  {
    goto LABEL_40;
  }

LABEL_16:
  v23 = v19 - 1;
  while (1)
  {
    v24 = (v12 + 32 * v22);
    v25 = v24[1];
    if (v25 > a4 && *v24 < v7 && v24[3] > a5 && v24[2] < v8)
    {
      break;
    }

    if (v25 == a4 && v24[3] > a5 && v24[2] < v8)
    {
      v16 |= 1u;
      v26 = v22 >> 6;
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else if (v25 > a4 && *v24 < v7 && v24[3] == a5)
    {
      v17 |= 1u;
      v26 = v22 >> 6;
      if (!v18)
      {
LABEL_33:
        while (v23 != v26)
        {
          v18 = v14[++v26];
          if (v18)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v26 = v22 >> 6;
      if (!v18)
      {
        goto LABEL_33;
      }
    }

LABEL_17:
    v22 = __clz(__rbit64(v18)) | (v26 << 6);
    v18 &= v18 - 1;
  }
}

void *operations_research::sat::LinearBooleanConstraint::LinearBooleanConstraint(void *result, uint64_t a2)
{
  *result = off_284F391C0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  result[4] = a2;
  result[5] = 0;
  result[6] = a2;
  result[7] = &google::protobuf::internal::fixed_address_empty_string;
  result[8] = 0;
  result[9] = 0;
  return result;
}

uint64_t operations_research::sat::LinearBooleanConstraint::LinearBooleanConstraint(uint64_t a1, google::protobuf::Arena *a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F391C0;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = *(a3 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  v8 = *(a3 + 24);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 24, 0, *(a3 + 24));
    *(a1 + 24) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 32);
      v10 = *(a3 + 32);
      if (v8 < 8)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    google::protobuf::RepeatedField<long long>::Grow(a1 + 40, 0, *(a3 + 40));
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v22 = *(a1 + 48);
      v23 = *(a3 + 48);
      if (v21 < 4)
      {
        goto LABEL_19;
      }

      if ((v22 - v23) < 0x20)
      {
        goto LABEL_19;
      }

      v24 = v21;
      v25 = v21 & 0x7FFFFFFC;
      LODWORD(v21) = v21 - (v21 & 0x7FFFFFFC);
      v26 = &v22[v25];
      v27 = &v23[v25];
      v28 = (v23 + 2);
      v29 = v22 + 2;
      v30 = v25;
      do
      {
        v31 = *v28;
        *(v29 - 1) = *(v28 - 1);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 4;
      }

      while (v30);
      v22 = v26;
      v23 = v27;
      if (v25 != v24)
      {
LABEL_19:
        v32 = v21 + 1;
        do
        {
          v33 = *v23++;
          *v22++ = v33;
          --v32;
        }

        while (v32 > 1);
      }
    }
  }

  v34 = *(a3 + 56);
  if ((v34 & 3) != 0)
  {
    v34 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 56), a2);
  }

  *(a1 + 56) = v34;
  *(a1 + 64) = *(a3 + 64);
  return a1;
}

void sub_23C98A344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 44) >= 1)
  {
    v3 = *(v1 + 48);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v6 = *(v1 + 32);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearBooleanConstraint::~LinearBooleanConstraint(operations_research::sat::LinearBooleanConstraint *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 7);
  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 7);
  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LinearBooleanConstraint::MergeImpl(uint64_t this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    v4 = *(this + 24);
    v5 = (v4 + v3);
    if (*(this + 28) < v5)
    {
      v42 = this;
      v43 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 24, v4, v5);
      a2 = v43;
      this = v42;
      LODWORD(v4) = *(v42 + 24);
      v6 = *(v42 + 32);
      *(v42 + 24) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = *(this + 32);
      *(this + 24) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a2 + 4);
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 40);
  v21 = (v20 + v19);
  if (*(this + 44) < v21)
  {
    v44 = this;
    v45 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 40, v20, v21);
    a2 = v45;
    this = v44;
    LODWORD(v20) = *(v44 + 40);
    v22 = *(v44 + 48);
    *(v44 + 40) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = *(this + 48);
    *(this + 40) = v21;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v23 = *(a2 + 6);
  v24 = (v22 + 8 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v25 = 8 * v20 + v22;
  if ((v25 - v23) < 0x20)
  {
    goto LABEL_19;
  }

  v26 = v19;
  v27 = v19 & 0x7FFFFFFC;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFFC);
  v24 += v27;
  v28 = &v23[v27];
  v29 = (v23 + 2);
  v30 = (v25 + 16);
  v31 = v27;
  do
  {
    v32 = *v29;
    *(v30 - 1) = *(v29 - 1);
    *v30 = v32;
    v29 += 2;
    v30 += 2;
    v31 -= 4;
  }

  while (v31);
  v23 = v28;
  if (v27 != v26)
  {
LABEL_19:
    v33 = v19 + 1;
    do
    {
      v34 = *v23++;
      *v24++ = v34;
      --v33;
    }

    while (v33 > 1);
  }

LABEL_21:
  v35 = *(a2 + 4);
  if ((v35 & 7) == 0)
  {
    goto LABEL_26;
  }

  if (v35)
  {
    v38 = *(a2 + 7);
    *(this + 16) |= 1u;
    v39 = *(this + 8);
    v40 = a2;
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = this;
    google::protobuf::internal::ArenaStringPtr::Set<>((this + 56), (v38 & 0xFFFFFFFFFFFFFFFCLL), v39);
    this = v41;
    a2 = v40;
    if ((v35 & 2) == 0)
    {
LABEL_24:
      if ((v35 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v35 & 2) == 0)
  {
    goto LABEL_24;
  }

  *(this + 64) = *(a2 + 8);
  if ((v35 & 4) != 0)
  {
LABEL_25:
    *(this + 72) = *(a2 + 9);
  }

LABEL_26:
  *(this + 16) |= v35;
  v36 = *(a2 + 1);
  if (v36)
  {
    v37 = (this + 8);

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v37, ((v36 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearBooleanConstraint::Clear(operations_research::sat::LinearBooleanConstraint *this)
{
  *(this + 6) = 0;
  *(this + 10) = 0;
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
LABEL_4:
    if ((v1 & 6) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_4;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 6) != 0)
  {
LABEL_5:
    *(this + 8) = 0;
    *(this + 9) = 0;
  }

LABEL_6:
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearBooleanConstraint::_InternalSerialize(operations_research::sat::LinearBooleanConstraint *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 6);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v8 = *(*(this + 4) + 4 * i);
        *v11 = 8;
        v9 = v11 + 1;
        if (v8 >= 0x80)
        {
          do
          {
LABEL_9:
            *v9++ = v8 | 0x80;
            v10 = v8 >> 7;
            v12 = v8 >> 14;
            v8 >>= 7;
          }

          while (v12);
          goto LABEL_6;
        }
      }

      else
      {
        v8 = *(*(this + 4) + 4 * i);
        *a2 = 8;
        v9 = a2 + 1;
        if (v8 >= 0x80)
        {
          goto LABEL_9;
        }
      }

      LOBYTE(v10) = v8;
LABEL_6:
      *v9 = v10;
      a2 = (v9 + 1);
    }
  }

  v13 = *(this + 10);
  if (v13 >= 1)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        v18 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v15 = *(*(this + 6) + 8 * j);
        *v18 = 16;
        v16 = v18 + 1;
        if (v15 >= 0x80)
        {
          do
          {
LABEL_19:
            *v16++ = v15 | 0x80;
            v17 = v15 >> 7;
            v19 = v15 >> 14;
            v15 >>= 7;
          }

          while (v19);
          goto LABEL_16;
        }
      }

      else
      {
        v15 = *(*(this + 6) + 8 * j);
        *a2 = 16;
        v16 = a2 + 1;
        if (v15 >= 0x80)
        {
          goto LABEL_19;
        }
      }

      LOBYTE(v17) = v15;
LABEL_16:
      *v16 = v17;
      a2 = (v16 + 1);
    }
  }

  v20 = *(this + 4);
  if ((v20 & 2) != 0)
  {
    a2 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<3>(a3, *(this + 8), a2);
    if ((v20 & 4) == 0)
    {
LABEL_23:
      if ((v20 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      v23 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = *(v23 + 8), v24 > 127) || *a3 - a2 + 14 < v24)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 5, v23, a2);
        v21 = *(this + 1);
        if ((v21 & 1) == 0)
        {
          return a2;
        }
      }

      else
      {
        *a2 = 42;
        v25 = a2 + 2;
        *(a2 + 1) = v24;
        if (*(v23 + 23) >= 0)
        {
          v26 = v23;
        }

        else
        {
          v26 = *v23;
        }

        memcpy(a2 + 2, v26, v24);
        a2 = &v25[v24];
        v21 = *(this + 1);
        if ((v21 & 1) == 0)
        {
          return a2;
        }
      }

      goto LABEL_35;
    }
  }

  else if ((v20 & 4) == 0)
  {
    goto LABEL_23;
  }

  a2 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<4>(a3, *(this + 9), a2);
  if (v20)
  {
    goto LABEL_28;
  }

LABEL_24:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

LABEL_35:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v21 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<3>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 24;
    v3 = (v7 + 1);
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 24;
    v3 = a3 + 1;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v4) = a2;
      goto LABEL_4;
    }
  }

  do
  {
    *v3++ = a2 | 0x80;
    v4 = a2 >> 7;
    v8 = a2 >> 14;
    a2 >>= 7;
  }

  while (v8);
LABEL_4:
  *v3 = v4;
  return v3 + 1;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<4>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 32;
    v3 = (v7 + 1);
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 32;
    v3 = a3 + 1;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v4) = a2;
      goto LABEL_4;
    }
  }

  do
  {
    *v3++ = a2 | 0x80;
    v4 = a2 >> 7;
    v8 = a2 >> 14;
    a2 >>= 7;
  }

  while (v8);
LABEL_4:
  *v3 = v4;
  return v3 + 1;
}

char *operations_research::sat::LinearBooleanConstraint::ByteSizeLong(operations_research::sat::LinearBooleanConstraint *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  v3 = *(this + 6);
  v4 = (v2 + google::protobuf::internal::WireFormatLite::Int64Size(this + 10) + v3 + *(this + 10));
  v5 = *(this + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v7 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v4 = (v4 + v9 + ((352 - 9 * __clz(v9)) >> 6) + 1);
      if ((v5 & 2) == 0)
      {
LABEL_4:
        if ((v5 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_4;
    }

    v4 = (v4 + ((704 - 9 * __clz(*(this + 8))) >> 6));
    if ((v5 & 4) != 0)
    {
LABEL_5:
      v4 = (v4 + ((704 - 9 * __clz(*(this + 9))) >> 6));
    }
  }

LABEL_6:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v4, this + 5);
}

uint64_t operations_research::sat::LinearObjective::LinearObjective(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39158;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = *(a3 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  v8 = *(a3 + 24);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 24, 0, *(a3 + 24));
    *(a1 + 24) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 32);
      v10 = *(a3 + 32);
      if (v8 < 8)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    google::protobuf::RepeatedField<long long>::Grow(a1 + 40, 0, *(a3 + 40));
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v22 = *(a1 + 48);
      v23 = *(a3 + 48);
      if (v21 < 4)
      {
        goto LABEL_19;
      }

      if ((v22 - v23) < 0x20)
      {
        goto LABEL_19;
      }

      v24 = v21;
      v25 = v21 & 0x7FFFFFFC;
      LODWORD(v21) = v21 - (v21 & 0x7FFFFFFC);
      v26 = &v22[v25];
      v27 = &v23[v25];
      v28 = (v23 + 2);
      v29 = v22 + 2;
      v30 = v25;
      do
      {
        v31 = *v28;
        *(v29 - 1) = *(v28 - 1);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 4;
      }

      while (v30);
      v22 = v26;
      v23 = v27;
      if (v25 != v24)
      {
LABEL_19:
        v32 = v21 + 1;
        do
        {
          v33 = *v23++;
          *v22++ = v33;
          --v32;
        }

        while (v32 > 1);
      }
    }
  }

  *(a1 + 56) = *(a3 + 56);
  return a1;
}

void sub_23C98AE20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearObjective::~LinearObjective(operations_research::sat::LinearObjective *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LinearObjective::MergeImpl(uint64_t this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    v4 = *(this + 24);
    v5 = (v4 + v3);
    if (*(this + 28) < v5)
    {
      v38 = this;
      v39 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 24, v4, v5);
      a2 = v39;
      this = v38;
      LODWORD(v4) = *(v38 + 24);
      v6 = *(v38 + 32);
      *(v38 + 24) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = *(this + 32);
      *(this + 24) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a2 + 4);
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 40);
  v21 = (v20 + v19);
  if (*(this + 44) < v21)
  {
    v40 = this;
    v41 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 40, v20, v21);
    a2 = v41;
    this = v40;
    LODWORD(v20) = *(v40 + 40);
    v22 = *(v40 + 48);
    *(v40 + 40) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = *(this + 48);
    *(this + 40) = v21;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v23 = *(a2 + 6);
  v24 = (v22 + 8 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v25 = 8 * v20 + v22;
  if ((v25 - v23) < 0x20)
  {
    goto LABEL_19;
  }

  v26 = v19;
  v27 = v19 & 0x7FFFFFFC;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFFC);
  v24 += v27;
  v28 = &v23[v27];
  v29 = (v23 + 2);
  v30 = (v25 + 16);
  v31 = v27;
  do
  {
    v32 = *v29;
    *(v30 - 1) = *(v29 - 1);
    *v30 = v32;
    v29 += 2;
    v30 += 2;
    v31 -= 4;
  }

  while (v31);
  v23 = v28;
  if (v27 != v26)
  {
LABEL_19:
    v33 = v19 + 1;
    do
    {
      v34 = *v23++;
      *v24++ = v34;
      --v33;
    }

    while (v33 > 1);
  }

LABEL_21:
  v35 = *(a2 + 4);
  if ((v35 & 3) != 0)
  {
    if (v35)
    {
      *(this + 56) = *(a2 + 7);
    }

    if ((v35 & 2) != 0)
    {
      *(this + 64) = *(a2 + 8);
    }
  }

  *(this + 16) |= v35;
  v36 = *(a2 + 1);
  if (v36)
  {
    v37 = (this + 8);

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v37, ((v36 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearObjective::Clear(operations_research::sat::LinearObjective *this)
{
  *(this + 6) = 0;
  *(this + 10) = 0;
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 56) = xmmword_23CE35A10;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::LinearObjective::_InternalSerialize(operations_research::sat::LinearObjective *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*a3 <= a2)
      {
        v9 = this;
        v10 = a3;
        v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        a3 = v10;
        v12 = v11;
        this = v9;
        v6 = *(*(v9 + 4) + 4 * i);
        *v12 = 8;
        v7 = (v12 + 1);
        if (v6 >= 0x80)
        {
          do
          {
LABEL_9:
            *v7++ = v6 | 0x80;
            v8 = v6 >> 7;
            v13 = v6 >> 14;
            v6 >>= 7;
          }

          while (v13);
          goto LABEL_6;
        }
      }

      else
      {
        v6 = *(*(this + 4) + 4 * i);
        *a2 = 8;
        v7 = a2 + 1;
        if (v6 >= 0x80)
        {
          goto LABEL_9;
        }
      }

      LOBYTE(v8) = v6;
LABEL_6:
      *v7 = v8;
      a2 = v7 + 1;
    }
  }

  v14 = *(this + 10);
  if (v14 >= 1)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        v19 = this;
        v20 = a3;
        v21 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        a3 = v20;
        v22 = v21;
        this = v19;
        v16 = *(*(v19 + 6) + 8 * j);
        *v22 = 16;
        v17 = (v22 + 1);
        if (v16 >= 0x80)
        {
          do
          {
LABEL_19:
            *v17++ = v16 | 0x80;
            v18 = v16 >> 7;
            v23 = v16 >> 14;
            v16 >>= 7;
          }

          while (v23);
          goto LABEL_16;
        }
      }

      else
      {
        v16 = *(*(this + 6) + 8 * j);
        *a2 = 16;
        v17 = a2 + 1;
        if (v16 >= 0x80)
        {
          goto LABEL_19;
        }
      }

      LOBYTE(v18) = v16;
LABEL_16:
      *v17 = v18;
      a2 = v17 + 1;
    }
  }

  v24 = *(this + 4);
  if ((v24 & 1) == 0)
  {
    if ((v24 & 2) == 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (*a3 <= a2)
    {
      v32 = this;
      v33 = a3;
      v34 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v33;
      a2 = v34;
      this = v32;
    }

    v28 = *(this + 8);
    *a2 = 33;
    *(a2 + 1) = v28;
    a2 += 9;
    v25 = *(this + 1);
    if ((v25 & 1) == 0)
    {
      return a2;
    }

    goto LABEL_31;
  }

  if (*a3 <= a2)
  {
    v29 = this;
    v30 = a3;
    v31 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v30;
    a2 = v31;
    this = v29;
  }

  v27 = *(this + 7);
  *a2 = 25;
  *(a2 + 1) = v27;
  a2 += 9;
  if ((v24 & 2) != 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

LABEL_31:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::LinearObjective::ByteSizeLong(operations_research::sat::LinearObjective *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  v3 = *(this + 6);
  v4 = google::protobuf::internal::WireFormatLite::Int64Size(this + 10);
  v5 = *(this + 4);
  v6 = v2 + v4 + v3 + *(this + 10) + 9;
  if ((v5 & 1) == 0)
  {
    v6 = v2 + v4 + v3 + *(this + 10);
  }

  if ((v5 & 2) != 0)
  {
    v6 += 9;
  }

  if ((v5 & 3) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (v2 + v4 + v3 + *(this + 10));
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v7, this + 5);
}

void operations_research::sat::BooleanAssignment::~BooleanAssignment(operations_research::sat::BooleanAssignment *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::BooleanAssignment::MergeImpl(uint64_t this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 16);
    v5 = (v4 + v3);
    if (*(this + 20) < v5)
    {
      v21 = this;
      v22 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 16, v4, v5);
      a2 = v22;
      this = v21;
      LODWORD(v4) = *(v21 + 16);
      v6 = *(v21 + 24);
      *(v21 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = *(this + 24);
      *(this + 16) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = a2[1];
  if (v19)
  {
    v20 = (this + 8);

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v20, ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *operations_research::sat::BooleanAssignment::Clear(operations_research::sat::BooleanAssignment *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::BooleanAssignment::_InternalSerialize(operations_research::sat::BooleanAssignment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 4);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*a3 <= a2)
      {
        v9 = this;
        v10 = a3;
        v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        a3 = v10;
        v12 = v11;
        this = v9;
        v6 = *(*(v9 + 3) + 4 * i);
        *v12 = 8;
        v7 = (v12 + 1);
        if (v6 >= 0x80)
        {
          do
          {
LABEL_9:
            *v7++ = v6 | 0x80;
            v8 = v6 >> 7;
            v13 = v6 >> 14;
            v6 >>= 7;
          }

          while (v13);
          goto LABEL_6;
        }
      }

      else
      {
        v6 = *(*(this + 3) + 4 * i);
        *a2 = 8;
        v7 = a2 + 1;
        if (v6 >= 0x80)
        {
          goto LABEL_9;
        }
      }

      LOBYTE(v8) = v6;
LABEL_6:
      *v7 = v8;
      a2 = v7 + 1;
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::BooleanAssignment::ByteSizeLong(operations_research::sat::BooleanAssignment *this)
{
  v2 = (google::protobuf::internal::WireFormatLite::Int32Size(this + 4) + *(this + 4));

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, this + 8);
}

void operations_research::sat::LinearBooleanProblem::SharedDtor(operations_research::sat::LinearBooleanProblem *this)
{
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 9);
  v2 = *(this + 10);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    if (*(v2 + 44) >= 1)
    {
      v3 = *(v2 + 48);
      v5 = *(v3 - 8);
      v4 = (v3 - 8);
      if (!v5)
      {
        operator delete(v4);
      }
    }

    if (*(v2 + 28) >= 1)
    {
      v6 = *(v2 + 32);
      v8 = *(v6 - 8);
      v7 = (v6 - 8);
      if (!v8)
      {
        operator delete(v7);
      }
    }

    MEMORY[0x23EED9460](v2, 0x1081C4051377B33);
  }

  v9 = *(this + 11);
  if (v9)
  {
    if (*(v9 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v9 + 8));
    }

    operations_research::sat::LinearBooleanProblem::SharedDtor(v9);
    v11 = (this + 48);
    v10 = *(this + 6);
    if (!v10)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v11 = (this + 48);
    v10 = *(this + 6);
    if (!v10)
    {
      goto LABEL_27;
    }
  }

  if (*(this + 8))
  {
    goto LABEL_27;
  }

  if (v10)
  {
    v15 = *(v10 - 1);
    v14 = (v10 - 1);
    v12 = v15;
    if (v15 < 1)
    {
LABEL_26:
      operator delete(v14);
      goto LABEL_27;
    }

    v13 = v14 + 1;
  }

  else
  {
    v12 = 1;
    v13 = v11;
  }

  v16 = v12;
  do
  {
    v17 = *v13;
    if (*v13)
    {
      if (*(v17 + 23) < 0)
      {
        operator delete(*v17);
      }

      MEMORY[0x23EED9460](v17, 0x1012C40EC159624);
    }

    ++v13;
    --v16;
  }

  while (v16);
  if (*v11)
  {
    v14 = (*v11 - 1);
    goto LABEL_26;
  }

LABEL_27:
  v19 = *(this + 3);
  v18 = (this + 24);
  if (v19)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v18);
  }
}

void operations_research::sat::LinearBooleanProblem::~LinearBooleanProblem(operations_research::sat::LinearBooleanProblem *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::LinearBooleanProblem::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::LinearBooleanProblem::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LinearBooleanProblem::MergeImpl(uint64_t this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v5 = (this + 8);
  v6 = *(this + 8);
  if ((v6 & 1) == 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 8))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((this + 24), (a2 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearBooleanConstraint>);
  }

LABEL_4:
  if (*(a2 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>((this + 48), a2 + 48);
  }

  v7 = *(a2 + 4);
  if ((v7 & 0x1F) != 0)
  {
    if ((v7 & 1) == 0)
    {
      if ((v7 & 2) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v10 = *(this + 80);
      v11 = *(a2 + 10);
      if (v10)
      {
        operations_research::sat::LinearObjective::MergeImpl(v10, v11, a3);
        if ((v7 & 4) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        *(this + 80) = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearObjective>(v6, v11);
        if ((v7 & 4) == 0)
        {
          goto LABEL_30;
        }
      }

LABEL_17:
      v12 = *(this + 88);
      v13 = *(a2 + 11);
      if (!v12)
      {
        *(this + 88) = google::protobuf::Arena::CopyConstruct<operations_research::sat::BooleanAssignment>(v6, v13);
        if ((v7 & 8) == 0)
        {
LABEL_32:
          if ((v7 & 0x10) != 0)
          {
            *(this + 100) = *(a2 + 25);
          }

          goto LABEL_34;
        }

LABEL_31:
        *(this + 96) = *(a2 + 24);
        goto LABEL_32;
      }

      v14 = *(v13 + 16);
      if (!v14)
      {
        goto LABEL_28;
      }

      v15 = *(v12 + 16);
      v16 = (v15 + v14);
      if (*(v12 + 20) < v16)
      {
        v32 = *(this + 88);
        v33 = *(a2 + 11);
        google::protobuf::RepeatedField<int>::Grow(v12 + 16, v15, v16);
        v12 = v32;
        v13 = v33;
        LODWORD(v15) = *(v32 + 16);
        v17 = *(v32 + 24);
        *(v32 + 16) = v15 + v14;
        if (v14 >= 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v17 = *(v12 + 24);
        *(v12 + 16) = v16;
        if (v14 >= 1)
        {
LABEL_21:
          v18 = *(v13 + 24);
          v19 = (v17 + 4 * v15);
          if (v14 < 8)
          {
            goto LABEL_26;
          }

          v20 = 4 * v15 + v17;
          if ((v20 - v18) < 0x20)
          {
            goto LABEL_26;
          }

          v21 = v14;
          v22 = v14 & 0x7FFFFFF8;
          LODWORD(v14) = v14 - (v14 & 0x7FFFFFF8);
          v19 += v22;
          v23 = &v18[v22];
          v24 = (v18 + 4);
          v25 = (v20 + 16);
          v26 = v22;
          do
          {
            v27 = *v24;
            *(v25 - 1) = *(v24 - 1);
            *v25 = v27;
            v24 += 2;
            v25 += 2;
            v26 -= 8;
          }

          while (v26);
          v18 = v23;
          if (v22 != v21)
          {
LABEL_26:
            v28 = v14 + 1;
            do
            {
              v29 = *v18++;
              *v19++ = v29;
              --v28;
            }

            while (v28 > 1);
          }
        }
      }

LABEL_28:
      v30 = *(v13 + 8);
      if (v30)
      {
        google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v12 + 8), ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8));
      }

LABEL_30:
      if ((v7 & 8) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v8 = *(a2 + 9);
    *(this + 16) |= 1u;
    v9 = *(this + 8);
    if (v9)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>((this + 72), (v8 & 0xFFFFFFFFFFFFFFFCLL), *(v9 & 0xFFFFFFFFFFFFFFFELL));
      if ((v7 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>((this + 72), (v8 & 0xFFFFFFFFFFFFFFFCLL), v9);
      if ((v7 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_9:
    if ((v7 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

LABEL_34:
  *(this + 16) |= v7;
  v31 = *(a2 + 1);
  if (v31)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v31 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearBooleanProblem::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
  }

  if (*(v1 + 56) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(v1 + 48);
  }

  v2 = *(v1 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v5 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  this = operations_research::sat::LinearObjective::Clear(*(v1 + 80));
  if ((v2 & 4) != 0)
  {
LABEL_9:
    this = operations_research::sat::BooleanAssignment::Clear(*(v1 + 88));
  }

LABEL_10:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 96) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::LinearBooleanProblem::_InternalSerialize(operations_research::sat::LinearBooleanProblem *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if (v9)
  {
    v11 = *(this + 9) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *(v11 + 23);
    if (v12 < 0 && (v12 = *(v11 + 8), v12 > 127) || *a3 - a2 + 14 < v12)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v11, a2);
      if ((v9 & 8) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *a2 = 10;
      v13 = a2 + 2;
      *(a2 + 1) = v12;
      if (*(v11 + 23) >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = *v11;
      }

      memcpy(v7 + 2, v14, v12);
      v7 = &v13[v12];
      if ((v9 & 8) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    v10 = *(this + 8);
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if ((v9 & 8) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<3>(a3, *(this + 24), v7);
  v10 = *(this + 8);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = 0;
  v16 = (this + 24);
  do
  {
    if (*v16)
    {
      v17 = (*v16 + 8 * v15 + 7);
    }

    else
    {
      v17 = (this + 24);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(4, *v17, *(*v17 + 20), v7, a3, a6);
    ++v15;
  }

  while (v10 != v15);
LABEL_18:
  if ((v9 & 2) != 0)
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(5, *(this + 10), *(*(this + 10) + 20), v7, a3, a6);
  }

  v18 = *(this + 14);
  if (v18 >= 1)
  {
    v19 = (this + 48);
    v20 = 8;
    do
    {
      while (1)
      {
        v21 = (*v19 & 1) != 0 ? (*v19 + v20 - 1) : (this + 48);
        v22 = *v21;
        v23 = *(*v21 + 23);
        if ((v23 & 0x8000000000000000) == 0 || (v23 = v22[1], v23 <= 127))
        {
          if (*a3 - v7 + 14 >= v23)
          {
            break;
          }
        }

        v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 6, v22, v7);
        v20 += 8;
        if (!--v18)
        {
          goto LABEL_33;
        }
      }

      *v7 = 50;
      v7[1] = v23;
      if (*(v22 + 23) < 0)
      {
        v22 = *v22;
      }

      v24 = v7 + 2;
      memcpy(v7 + 2, v22, v23);
      v7 = &v24[v23];
      v20 += 8;
      --v18;
    }

    while (v18);
  }

LABEL_33:
  if ((v9 & 4) == 0)
  {
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<8>(a3, *(this + 25), v7);
    v25 = *(this + 1);
    if ((v25 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_39;
  }

  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(7, *(this + 11), *(*(this + 11) + 32), v7, a3, a6);
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return v7;
  }

LABEL_39:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<8>(google::protobuf::io::EpsCopyOutputStream *a1, int a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    *v8 = 64;
    v4 = (v8 + 1);
    v5 = a2;
    if (a2 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 64;
    v4 = a3 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v6) = v5;
      goto LABEL_4;
    }
  }

  do
  {
    *v4++ = v5 | 0x80;
    v6 = v5 >> 7;
    v9 = v5 >> 14;
    v5 >>= 7;
  }

  while (v9);
LABEL_4:
  *v4 = v6;
  return v4 + 1;
}

char *operations_research::sat::LinearBooleanProblem::ByteSizeLong(operations_research::sat::LinearBooleanProblem *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = (this + 24);
  }

  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      v7 = operations_research::sat::LinearBooleanConstraint::ByteSizeLong(v6);
      v3 += &v7[(352 - 9 * __clz(v7)) >> 6];
      v5 -= 8;
    }

    while (v5);
    v8 = *(this + 14);
    v9 = (v8 + v3);
    if (v8 < 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v3 = 0;
    v8 = *(this + 14);
    v9 = v8;
    if (v8 < 1)
    {
      goto LABEL_27;
    }
  }

  v10 = *(this + 6);
  if ((v10 & 1) == 0)
  {
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v13 = v12 + ((352 - 9 * __clz(v12)) >> 6);
    v9 = (v8 + v13 + v3 + v13 * (v8 - 1));
    goto LABEL_27;
  }

  v14 = v10 - 1;
  if (v8 == 1)
  {
    v15 = 0;
LABEL_23:
    v23 = (v14 + 8 * v15 + 8);
    v24 = (v8 - v15);
    do
    {
      v25 = *v23++;
      v26 = *(v25 + 23);
      v27 = *(v25 + 8);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v26;
      }

      v9 = (v9 + v27 + ((352 - 9 * __clz(v27)) >> 6));
      --v24;
    }

    while (v24);
    goto LABEL_27;
  }

  v16 = 0;
  v15 = (v8 & 0x7FFFFFFE);
  v17 = v14 + 16;
  v18 = v15;
  do
  {
    v19 = *(v17 - 8);
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    v22 = *(*v17 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    if (*(*v17 + 23) >= 0)
    {
      v22 = *(*v17 + 23);
    }

    v9 = (v9 + v21 + ((352 - 9 * __clz(v21)) >> 6));
    v16 += v22 + ((352 - 9 * __clz(v22)) >> 6);
    v17 += 16;
    v18 = (v18 - 2);
  }

  while (v18);
  v9 = (v9 + v16);
  if (v15 != v8)
  {
    goto LABEL_23;
  }

LABEL_27:
  v28 = *(this + 4);
  if ((v28 & 0x1F) == 0)
  {
    goto LABEL_34;
  }

  if (v28)
  {
    v30 = *(this + 9) & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *(v30 + 23);
    v32 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    v9 = (v9 + v32 + ((352 - 9 * __clz(v32)) >> 6) + 1);
    if ((v28 & 2) == 0)
    {
LABEL_30:
      if ((v28 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_48;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_30;
  }

  v33 = *(this + 10);
  v34 = google::protobuf::internal::WireFormatLite::Int32Size(v33 + 6);
  v35 = v33[6];
  v36 = google::protobuf::internal::WireFormatLite::Int64Size(v33 + 10);
  v37 = v33[4];
  v38 = v34 + v36 + v35 + v33[10] + 9;
  if ((v37 & 1) == 0)
  {
    v38 = v34 + v36 + v35 + v33[10];
  }

  if ((v37 & 2) != 0)
  {
    v38 += 9;
  }

  if ((v37 & 3) != 0)
  {
    v39 = v38;
  }

  else
  {
    v39 = (v34 + v36 + v35 + v33[10]);
  }

  v40 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v33, v39, v33 + 5);
  v9 = &v40[((352 - 9 * __clz(v40)) >> 6) + 1 + v9];
  if ((v28 & 4) == 0)
  {
LABEL_31:
    if ((v28 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

LABEL_48:
  v41 = *(this + 11);
  v42 = google::protobuf::internal::WireFormatLite::Int32Size(v41 + 4);
  v43 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v41, (v42 + v41[4]), v41 + 8);
  v9 = &v43[((352 - 9 * __clz(v43)) >> 6) + 1 + v9];
  if ((v28 & 8) == 0)
  {
LABEL_32:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_49:
  v9 = (v9 + ((704 - 9 * __clz(*(this + 24))) >> 6));
  if ((v28 & 0x10) != 0)
  {
LABEL_33:
    v9 = (v9 + ((704 - 9 * __clz(*(this + 25))) >> 6));
  }

LABEL_34:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v9, this + 5);
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearObjective>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F39158;
    *(v2 + 8) = a1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = a1;
    *(v2 + 40) = 0;
    *(v2 + 48) = a1;
  }

  else
  {
    v2 = operator new(0x48uLL);
    *v2 = off_284F39158;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0;
  }

  result = 0.0;
  *(v2 + 56) = xmmword_23CE35A10;
  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::sat::BooleanAssignment>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39228;
    result[1] = a1;
    result[2] = 0;
    result[3] = a1;
  }

  else
  {
    result = operator new(0x28uLL);
    *result = off_284F39228;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
  }

  *(result + 8) = 0;
  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearBooleanProblem>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39290;
    result[1] = a1;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = a1;
    result[6] = 0;
    result[7] = 0;
    result[8] = a1;
  }

  else
  {
    result = operator new(0x68uLL);
    *result = off_284F39290;
    result[1] = 0;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    result[8] = 0;
  }

  result[9] = &google::protobuf::internal::fixed_address_empty_string;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  return result;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearObjective>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::LinearObjective::LinearObjective(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x48uLL);
    return operations_research::sat::LinearObjective::LinearObjective(v6, 0, a2);
  }
}

void *google::protobuf::Arena::CopyConstruct<operations_research::sat::BooleanAssignment>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F39228;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 20) = 0;
    *(v4 + 24) = a1;
    v6 = *(a2 + 16);
    if (v6)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v6;
      if (v6 >= 1)
      {
        v7 = *(v4 + 24);
        v8 = *(a2 + 24);
        if (v6 < 8)
        {
          goto LABEL_11;
        }

        if ((v7 - v8) < 0x20)
        {
          goto LABEL_11;
        }

        v9 = v6;
        v10 = v6 & 0x7FFFFFF8;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFF8);
        v11 = &v7[v10];
        v12 = &v8[v10];
        v13 = (v8 + 4);
        v14 = v7 + 4;
        v15 = v10;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 8;
        }

        while (v15);
        v7 = v11;
        v8 = v12;
        if (v10 != v9)
        {
LABEL_11:
          v17 = v6 + 1;
          do
          {
            v18 = *v8++;
            *v7++ = v18;
            --v17;
          }

          while (v17 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F39228;
    v19 = *(a2 + 8);
    if (v19)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v20 = *(a2 + 16);
    if (v20)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v20;
      if (v20 >= 1)
      {
        v21 = *(v4 + 24);
        v22 = *(a2 + 24);
        if (v20 < 8)
        {
          goto LABEL_23;
        }

        if ((v21 - v22) < 0x20)
        {
          goto LABEL_23;
        }

        v23 = v20;
        v24 = v20 & 0x7FFFFFF8;
        LODWORD(v20) = v20 - (v20 & 0x7FFFFFF8);
        v25 = &v21[v24];
        v26 = &v22[v24];
        v27 = (v22 + 4);
        v28 = v21 + 4;
        v29 = v24;
        do
        {
          v30 = *v27;
          *(v28 - 1) = *(v27 - 1);
          *v28 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 8;
        }

        while (v29);
        v21 = v25;
        v22 = v26;
        if (v24 != v23)
        {
LABEL_23:
          v31 = v20 + 1;
          do
          {
            v32 = *v22++;
            *v21++ = v32;
            --v31;
          }

          while (v31 > 1);
        }
      }
    }
  }

  *(v4 + 32) = 0;
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearBooleanConstraint>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::LinearBooleanConstraint::LinearBooleanConstraint(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x50uLL);
    return operations_research::sat::LinearBooleanConstraint::LinearBooleanConstraint(v6, 0, a2);
  }
}

uint64_t operations_research::sat::IntegerVariableProto::IntegerVariableProto(uint64_t result, uint64_t a2)
{
  *result = off_284F397E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 48) = 0;
  return result;
}

uint64_t operations_research::sat::IntegerVariableProto::IntegerVariableProto(uint64_t a1, google::protobuf::Arena *a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F397E8;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<long long>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
      if (v8 < 4)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFFC;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFFC);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 2);
      v16 = v9 + 2;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(a1 + 32) = 0;
  v23 = *(a3 + 40);
  v22 = (a3 + 40);
  v21 = v23;
  if ((v23 & 3) != 0)
  {
    v21 = google::protobuf::internal::TaggedStringPtr::ForceCopy(v22, a2);
  }

  *(a1 + 40) = v21;
  *(a1 + 48) = 0;
  return a1;
}

void sub_23C98CB6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::IntegerVariableProto::~IntegerVariableProto(operations_research::sat::IntegerVariableProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 5);
  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 5);
  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::IntegerVariableProto::MergeImpl(uint64_t this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = *(this + 16);
    v7 = (v6 + v5);
    if (*(this + 20) < v7)
    {
      google::protobuf::RepeatedField<long long>::Grow(this + 16, v6, v7);
      LODWORD(v6) = *(this + 16);
      v8 = *(this + 24);
      *(this + 16) = v6 + v5;
      if (v5 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = *(this + 24);
      *(this + 16) = v7;
      if (v5 < 1)
      {
        goto LABEL_11;
      }
    }

    v9 = *(a2 + 3);
    v10 = (v8 + 8 * v6);
    if (v5 < 8)
    {
      goto LABEL_9;
    }

    v11 = 8 * v6 + v8;
    if ((v11 - v9) < 0x20)
    {
      goto LABEL_9;
    }

    v12 = v5;
    v13 = v5 & 0x7FFFFFFC;
    LODWORD(v5) = v5 - (v5 & 0x7FFFFFFC);
    v10 += v13;
    v14 = &v9[v13];
    v15 = (v9 + 2);
    v16 = (v11 + 16);
    v17 = v13;
    do
    {
      v18 = *v15;
      *(v16 - 1) = *(v15 - 1);
      *v16 = v18;
      v15 += 2;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v9 = v14;
    if (v13 != v12)
    {
LABEL_9:
      v19 = v5 + 1;
      do
      {
        v20 = *v9++;
        *v10++ = v20;
        --v19;
      }

      while (v19 > 1);
    }
  }

LABEL_11:
  v21 = *(a2 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 23);
  if (v22 < 0)
  {
    v22 = *(v21 + 8);
  }

  if (v22)
  {
    v23 = *(this + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set<>((this + 40), v21, v23);
  }

  v24 = *(a2 + 1);
  if (v24)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((this + 8), ((v24 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *operations_research::sat::IntegerVariableProto::Clear(operations_research::sat::IntegerVariableProto *this)
{
  *(this + 4) = 0;
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 5);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

google::protobuf::UnknownFieldSet *operations_research::sat::IntegerVariableProto::_InternalSerialize(operations_research::sat::IntegerVariableProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 5);
  v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 23);
  if (v9 < 0)
  {
    v11 = *(v8 + 8);
    if (!v11)
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(*v8, v11, 1, "operations_research.sat.IntegerVariableProto.name");
    v10 = *(v8 + 23);
    if (v10 < 0)
    {
LABEL_7:
      v10 = *(v8 + 8);
      if (v10 > 127)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFFFCLL) + 23))
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String((v7 & 0xFFFFFFFFFFFFFFFCLL), v9, 1, "operations_research.sat.IntegerVariableProto.name");
    v10 = *(v8 + 23);
    if (v10 < 0)
    {
      goto LABEL_7;
    }
  }

  if (*a3 - a2 + 14 >= v10)
  {
    *a2 = 10;
    *(a2 + 1) = v10;
    if (*(v8 + 23) >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    memcpy(a2 + 2, v12, v10);
    a2 = (a2 + v10 + 2);
LABEL_13:
    v13 = *(this + 8);
    if (v13 >= 1)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v8, a2);
  v13 = *(this + 8);
  if (v13 >= 1)
  {
LABEL_14:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 18;
      v14 = a2 + 1;
      if (v13 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 18;
      v14 = a2 + 1;
      if (v13 < 0x80)
      {
LABEL_16:
        a2 = (a2 + 2);
        *v14 = v13;
        v15 = *(this + 3);
        v16 = &v15[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v20 = *v15++;
            v17 = v20;
            if (v20 >= 0x80)
            {
              do
              {
LABEL_23:
                *a2 = v17 | 0x80;
                a2 = (a2 + 1);
                v19 = v17 >> 7;
                v21 = v17 >> 14;
                v17 >>= 7;
              }

              while (v21);
              goto LABEL_20;
            }
          }

          else
          {
            v18 = *v15++;
            v17 = v18;
            if (v18 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v19) = v17;
LABEL_20:
          *a2 = v19;
          a2 = (a2 + 1);
          if (v15 >= v16)
          {
            goto LABEL_26;
          }
        }
      }
    }

    do
    {
      *v14++ = v13 | 0x80;
      v24 = v13 >> 14;
      v13 = v13 >> 7;
    }

    while (v24);
    a2 = (v14 - 1);
    goto LABEL_16;
  }

LABEL_26:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::IntegerVariableProto::ByteSizeLong(operations_research::sat::IntegerVariableProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int64Size(this + 4);
  *(this + 8) = v2;
  v3 = (640 - 9 * __clz(v2)) >> 6;
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v7 = (v4 + v2);
    if (!*(v5 + 8))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = (v4 + v2);
    if (!*(v5 + 23))
    {
      goto LABEL_9;
    }
  }

  v8 = *(v5 + 8);
  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  v7 = (v7 + v8 + ((352 - 9 * __clz(v8)) >> 6) + 1);
LABEL_9:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v7, this + 12);
}

void operations_research::sat::IntegerVariableProto::CopyFrom(operations_research::sat::IntegerVariableProto *this, const operations_research::sat::IntegerVariableProto *a2)
{
  if (a2 != this)
  {
    operations_research::sat::IntegerVariableProto::Clear(this);

    operations_research::sat::IntegerVariableProto::MergeImpl(this, a2, v5);
  }
}

uint64_t operations_research::sat::IntegerVariableProto::InternalSwap(uint64_t this, operations_research::sat::IntegerVariableProto *a2)
{
  v2 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v2;
  LOBYTE(v2) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  LOBYTE(v2) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v2;
  LOBYTE(v2) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v2;
  LOBYTE(v2) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v2;
  LOBYTE(v2) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v2;
  LOBYTE(v2) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v2;
  LOBYTE(v2) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v2;
  LOBYTE(v2) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v2;
  LOBYTE(v2) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  LOBYTE(v2) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v2;
  LOBYTE(v2) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v2;
  LOBYTE(v2) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v2;
  LOBYTE(v2) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v2;
  LOBYTE(v2) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v2;
  LOBYTE(v2) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v2;
  LOBYTE(v2) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v2;
  v3 = *(a2 + 5);
  *(a2 + 5) = *(this + 40);
  *(this + 40) = v3;
  return this;
}

double operations_research::sat::BoolArgumentProto::BoolArgumentProto(void *a1, uint64_t a2)
{
  *a1 = off_284F39AC0;
  a1[1] = a2;
  result = 0.0;
  a1[2] = 0;
  a1[3] = a2;
  a1[4] = 0;
  return result;
}

uint64_t operations_research::sat::BoolArgumentProto::BoolArgumentProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39AC0;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
      if (v8 < 8)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(a1 + 32) = 0;
  return a1;
}

void operations_research::sat::BoolArgumentProto::~BoolArgumentProto(operations_research::sat::BoolArgumentProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::BoolArgumentProto::MergeImpl(uint64_t this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 16);
    v5 = (v4 + v3);
    if (*(this + 20) < v5)
    {
      v21 = this;
      v22 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 16, v4, v5);
      a2 = v22;
      this = v21;
      LODWORD(v4) = *(v21 + 16);
      v6 = *(v21 + 24);
      *(v21 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = *(this + 24);
      *(this + 16) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = a2[1];
  if (v19)
  {
    v20 = (this + 8);

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v20, ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *operations_research::sat::BoolArgumentProto::Clear(operations_research::sat::BoolArgumentProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::BoolArgumentProto::_InternalSerialize(operations_research::sat::BoolArgumentProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    if (*a3 <= a2)
    {
      v18 = this;
      v19 = a3;
      v20 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v19;
      a2 = v20;
      this = v18;
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
LABEL_4:
        a2 += 2;
        *v5 = v4;
        v6 = *(this + 3);
        v7 = &v6[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v11 = this;
            v12 = a3;
            v13 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v12;
            a2 = v13;
            this = v11;
            v14 = *v6++;
            v8 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *a2++ = v8 | 0x80;
                v10 = v8 >> 7;
                v15 = v8 >> 14;
                v8 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v10) = v8;
LABEL_8:
          *a2++ = v10;
          if (v6 >= v7)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v5++ = v4 | 0x80;
      v21 = v4 >> 14;
      v4 >>= 7;
    }

    while (v21);
    a2 = v5 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::BoolArgumentProto::ByteSizeLong(operations_research::sat::BoolArgumentProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  *(this + 8) = v2;
  if (v2)
  {
    v3 = ((640 - 9 * __clz(v2)) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, (v3 + v2), this + 9);
}

void operations_research::sat::BoolArgumentProto::CopyFrom(const operations_research::sat::BoolArgumentProto *this, const operations_research::sat::BoolArgumentProto *a2)
{
  if (a2 == this)
  {
    return;
  }

  operations_research::sat::BoolArgumentProto::Clear(this);
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = *(this + 4);
    v6 = (v5 + v4);
    if (*(this + 5) < v6)
    {
      google::protobuf::RepeatedField<int>::Grow(this + 16, v5, v6);
      LODWORD(v5) = *(this + 4);
      v7 = *(this + 3);
      *(this + 4) = v5 + v4;
      if (v4 >= 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *(this + 3);
      *(this + 4) = v6;
      if (v4 >= 1)
      {
LABEL_5:
        v8 = *(a2 + 3);
        v9 = (v7 + 4 * v5);
        if (v4 < 8)
        {
          goto LABEL_10;
        }

        v10 = 4 * v5 + v7;
        if ((v10 - v8) < 0x20)
        {
          goto LABEL_10;
        }

        v11 = v4;
        v12 = v4 & 0x7FFFFFF8;
        LODWORD(v4) = v4 - (v4 & 0x7FFFFFF8);
        v9 += v12;
        v13 = &v8[v12];
        v14 = (v8 + 4);
        v15 = (v10 + 16);
        v16 = v12;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 8;
        }

        while (v16);
        v8 = v13;
        if (v12 != v11)
        {
LABEL_10:
          v18 = v4 + 1;
          do
          {
            v19 = *v8++;
            *v9++ = v19;
            --v18;
          }

          while (v18 > 1);
        }
      }
    }
  }

  v20 = *(a2 + 1);
  if (v20)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v20 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

void operations_research::sat::BoolArgumentProto::MergeFrom(uint64_t this, int **a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    v3 = *(this + 16);
    v4 = (v3 + v2);
    if (*(this + 20) < v4)
    {
      v20 = this;
      v21 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 16, v3, v4);
      a2 = v21;
      this = v20;
      LODWORD(v3) = *(v20 + 16);
      v5 = *(v20 + 24);
      *(v20 + 16) = v3 + v2;
      if (v2 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = *(this + 24);
      *(this + 16) = v4;
      if (v2 < 1)
      {
        goto LABEL_11;
      }
    }

    v6 = a2[3];
    v7 = (v5 + 4 * v3);
    if (v2 < 8)
    {
      goto LABEL_9;
    }

    v8 = 4 * v3 + v5;
    if ((v8 - v6) < 0x20)
    {
      goto LABEL_9;
    }

    v9 = v2;
    v10 = v2 & 0x7FFFFFF8;
    LODWORD(v2) = v2 - (v2 & 0x7FFFFFF8);
    v7 += v10;
    v11 = &v6[v10];
    v12 = (v6 + 4);
    v13 = (v8 + 16);
    v14 = v10;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 8;
    }

    while (v14);
    v6 = v11;
    if (v10 != v9)
    {
LABEL_9:
      v16 = v2 + 1;
      do
      {
        v17 = *v6++;
        *v7++ = v17;
        --v16;
      }

      while (v16 > 1);
    }
  }

LABEL_11:
  v18 = a2[1];
  if (v18)
  {
    v19 = (this + 8);

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v19, ((v18 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

uint64_t operations_research::sat::BoolArgumentProto::InternalSwap(uint64_t this, operations_research::sat::BoolArgumentProto *a2)
{
  v2 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v2;
  LOBYTE(v2) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  LOBYTE(v2) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v2;
  LOBYTE(v2) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v2;
  LOBYTE(v2) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v2;
  LOBYTE(v2) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v2;
  LOBYTE(v2) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v2;
  LOBYTE(v2) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v2;
  LOBYTE(v2) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v2;
  LOBYTE(v2) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  LOBYTE(v2) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v2;
  LOBYTE(v2) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v2;
  LOBYTE(v2) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v2;
  LOBYTE(v2) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v2;
  LOBYTE(v2) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v2;
  LOBYTE(v2) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v2;
  LOBYTE(v2) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v2;
  return this;
}

double operations_research::sat::LinearExpressionProto::LinearExpressionProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F396B0;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t operations_research::sat::LinearExpressionProto::LinearExpressionProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F396B0;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
      if (v8 < 8)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    google::protobuf::RepeatedField<long long>::Grow(a1 + 40, 0, *(a3 + 40));
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v22 = *(a1 + 48);
      v23 = *(a3 + 48);
      if (v21 < 4)
      {
        goto LABEL_19;
      }

      if ((v22 - v23) < 0x20)
      {
        goto LABEL_19;
      }

      v24 = v21;
      v25 = v21 & 0x7FFFFFFC;
      LODWORD(v21) = v21 - (v21 & 0x7FFFFFFC);
      v26 = &v22[v25];
      v27 = &v23[v25];
      v28 = (v23 + 2);
      v29 = v22 + 2;
      v30 = v25;
      do
      {
        v31 = *v28;
        *(v29 - 1) = *(v28 - 1);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 4;
      }

      while (v30);
      v22 = v26;
      v23 = v27;
      if (v25 != v24)
      {
LABEL_19:
        v32 = v21 + 1;
        do
        {
          v33 = *v23++;
          *v22++ = v33;
          --v32;
        }

        while (v32 > 1);
      }
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = *(a3 + 64);
  return a1;
}

void sub_23C98DDF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearExpressionProto::~LinearExpressionProto(operations_research::sat::LinearExpressionProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 5) >= 1)
  {
    v7 = *(this + 3);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 5) >= 1)
  {
    v7 = *(this + 3);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LinearExpressionProto::MergeImpl(uint64_t this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 16);
    v5 = (v4 + v3);
    if (*(this + 20) < v5)
    {
      v38 = this;
      v39 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 16, v4, v5);
      a2 = v39;
      this = v38;
      LODWORD(v4) = *(v38 + 16);
      v6 = *(v38 + 24);
      *(v38 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = *(this + 24);
      *(this + 16) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a2 + 3);
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 40);
  v21 = (v20 + v19);
  if (*(this + 44) < v21)
  {
    v40 = this;
    v41 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 40, v20, v21);
    a2 = v41;
    this = v40;
    LODWORD(v20) = *(v40 + 40);
    v22 = *(v40 + 48);
    *(v40 + 40) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = *(this + 48);
    *(this + 40) = v21;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v23 = *(a2 + 6);
  v24 = (v22 + 8 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v25 = 8 * v20 + v22;
  if ((v25 - v23) < 0x20)
  {
    goto LABEL_19;
  }

  v26 = v19;
  v27 = v19 & 0x7FFFFFFC;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFFC);
  v24 += v27;
  v28 = &v23[v27];
  v29 = (v23 + 2);
  v30 = (v25 + 16);
  v31 = v27;
  do
  {
    v32 = *v29;
    *(v30 - 1) = *(v29 - 1);
    *v30 = v32;
    v29 += 2;
    v30 += 2;
    v31 -= 4;
  }

  while (v31);
  v23 = v28;
  if (v27 != v26)
  {
LABEL_19:
    v33 = v19 + 1;
    do
    {
      v34 = *v23++;
      *v24++ = v34;
      --v33;
    }

    while (v33 > 1);
  }

LABEL_21:
  v35 = *(a2 + 8);
  if (v35)
  {
    *(this + 64) = v35;
  }

  v36 = *(a2 + 1);
  if (v36)
  {
    v37 = (this + 8);

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v37, ((v36 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearExpressionProto::Clear(operations_research::sat::LinearExpressionProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 7) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::LinearExpressionProto::_InternalSerialize(operations_research::sat::LinearExpressionProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  v7 = *(this + 8);
  if (v7 >= 1)
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *v5 = 10;
      v8 = v5 + 1;
      if (v7 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v8 = a2 + 1;
      if (v7 < 0x80)
      {
LABEL_4:
        v5 += 2;
        *v8 = v7;
        v9 = *(this + 3);
        v10 = &v9[*(this + 4)];
        while (1)
        {
          if (*a3 <= v5)
          {
            v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
            v14 = *v9++;
            v11 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *v5++ = v11 | 0x80;
                v13 = v11 >> 7;
                v15 = v11 >> 14;
                v11 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v12 = *v9++;
            v11 = v12;
            if (v12 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v13) = v11;
LABEL_8:
          *v5++ = v13;
          if (v9 >= v10)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v8++ = v7 | 0x80;
      v28 = v7 >> 14;
      v7 >>= 7;
    }

    while (v28);
    v5 = v8 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 14);
  if (v16 >= 1)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      *v5 = 18;
      v17 = v5 + 1;
      if (v16 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v5 = 18;
      v17 = v5 + 1;
      if (v16 < 0x80)
      {
LABEL_16:
        v5 += 2;
        *v17 = v16;
        v18 = *(this + 6);
        v19 = &v18[*(this + 10)];
        while (1)
        {
          if (*a3 <= v5)
          {
            v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
            v23 = *v18++;
            v20 = v23;
            if (v23 >= 0x80)
            {
              do
              {
LABEL_23:
                *v5++ = v20 | 0x80;
                v22 = v20 >> 7;
                v24 = v20 >> 14;
                v20 >>= 7;
              }

              while (v24);
              goto LABEL_20;
            }
          }

          else
          {
            v21 = *v18++;
            v20 = v21;
            if (v21 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v22) = v20;
LABEL_20:
          *v5++ = v22;
          if (v18 >= v19)
          {
            goto LABEL_25;
          }
        }
      }
    }

    do
    {
      *v17++ = v16 | 0x80;
      v29 = v16 >> 14;
      v16 >>= 7;
    }

    while (v29);
    v5 = v17 - 1;
    goto LABEL_16;
  }

LABEL_25:
  v25 = *(this + 8);
  if (v25)
  {
    v5 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<3>(a3, v25, v5);
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return v5;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v26 & 0xFFFFFFFFFFFFFFFELL) + 8), v5, a3, a4);
}

char *operations_research::sat::LinearExpressionProto::ByteSizeLong(operations_research::sat::LinearExpressionProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  v3 = v2;
  *(this + 8) = v2;
  if (v2)
  {
    v4 = ((640 - 9 * __clz(v2)) >> 6) + 1;
    v5 = google::protobuf::internal::WireFormatLite::Int64Size(this + 10);
    *(this + 14) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    v5 = google::protobuf::internal::WireFormatLite::Int64Size(this + 10);
    *(this + 14) = v5;
    if (v5)
    {
LABEL_3:
      v6 = (v4 + v3 + v5 + ((640 - 9 * __clz(v5)) >> 6) + 1);
      v7 = *(this + 8);
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v6 = (v4 + v3 + v5);
  v7 = *(this + 8);
  if (v7)
  {
LABEL_4:
    v6 = (v6 + ((-9 * __clz(v7) + 704) >> 6));
  }

LABEL_5:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v6, this + 18);
}

void operations_research::sat::LinearExpressionProto::CopyFrom(operations_research::sat::LinearExpressionProto *this, const operations_research::sat::LinearExpressionProto *a2)
{
  if (a2 != this)
  {
    operations_research::sat::LinearExpressionProto::Clear(this);

    operations_research::sat::LinearExpressionProto::MergeImpl(this, a2, v5);
  }
}

uint64_t operations_research::sat::LinearExpressionProto::InternalSwap(uint64_t this, operations_research::sat::LinearExpressionProto *a2)
{
  v2 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v2;
  LOBYTE(v2) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  LOBYTE(v2) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v2;
  LOBYTE(v2) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v2;
  LOBYTE(v2) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v2;
  LOBYTE(v2) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v2;
  LOBYTE(v2) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v2;
  LOBYTE(v2) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v2;
  LOBYTE(v2) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v2;
  LOBYTE(v2) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  LOBYTE(v2) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v2;
  LOBYTE(v2) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v2;
  LOBYTE(v2) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v2;
  LOBYTE(v2) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v2;
  LOBYTE(v2) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v2;
  LOBYTE(v2) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v2;
  LOBYTE(v2) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v2;
  LOBYTE(v2) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v2;
  LOBYTE(v2) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v2;
  LOBYTE(v2) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v2;
  LOBYTE(v2) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v2;
  LOBYTE(v2) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v2;
  LOBYTE(v2) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v2;
  LOBYTE(v2) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v2;
  LOBYTE(v2) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v2;
  LOBYTE(v2) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v2;
  LOBYTE(v2) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v2;
  LOBYTE(v2) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v2;
  LOBYTE(v2) = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v2;
  LOBYTE(v2) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v2;
  LOBYTE(v2) = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v2;
  LOBYTE(v2) = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v2;
  LOBYTE(v2) = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v2;
  v3 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

void operations_research::sat::LinearArgumentProto::SharedDtor(uint64_t this)
{
  v2 = *(this + 48);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    if (*(v2 + 44) >= 1)
    {
      v3 = *(v2 + 48);
      v5 = *(v3 - 8);
      v4 = (v3 - 8);
      if (!v5)
      {
        operator delete(v4);
      }
    }

    if (*(v2 + 20) >= 1)
    {
      v6 = *(v2 + 24);
      v8 = *(v6 - 8);
      v7 = (v6 - 8);
      if (!v8)
      {
        operator delete(v7);
      }
    }

    MEMORY[0x23EED9460](v2, 0x1081C403102E283);
  }

  v10 = *(this + 24);
  v9 = (this + 24);
  if (v10)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v9);
  }
}

void operations_research::sat::LinearArgumentProto::~LinearArgumentProto(operations_research::sat::LinearArgumentProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::LinearArgumentProto::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::LinearArgumentProto::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LinearArgumentProto::MergeImpl(uint64_t this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v5 = (this + 8);
  v6 = *(this + 8);
  if ((v6 & 1) == 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 8))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((this + 24), (a2 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

LABEL_4:
  v7 = *(a2 + 4);
  if (v7)
  {
    v8 = *(this + 48);
    v9 = *(a2 + 6);
    if (!v8)
    {
      *(this + 48) = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(v6, v9);
      *(this + 16) |= v7;
      v10 = *(a2 + 1);
      if ((v10 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    operations_research::sat::LinearExpressionProto::MergeImpl(v8, v9, a3);
  }

  *(this + 16) |= v7;
  v10 = *(a2 + 1);
  if ((v10 & 1) == 0)
  {
    return;
  }

LABEL_10:

  google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearArgumentProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
  }

  if (*(v1 + 16))
  {
    this = operations_research::sat::LinearExpressionProto::Clear(*(v1 + 48));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v2);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::LinearArgumentProto::_InternalSerialize(operations_research::sat::LinearArgumentProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  if (*(this + 16))
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *(this + 6), *(*(this + 6) + 72), a2, a3, a6);
  }

  v9 = *(this + 8);
  if (v9)
  {
    v10 = 0;
    v11 = (this + 24);
    do
    {
      if (*v11)
      {
        v12 = (*v11 + 8 * v10 + 7);
      }

      else
      {
        v12 = (this + 24);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *v12, *(*v12 + 72), v7, a3, a6);
      ++v10;
    }

    while (v9 != v10);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *operations_research::sat::LinearArgumentProto::ByteSizeLong(operations_research::sat::LinearArgumentProto *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = (this + 24);
  }

  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      v7 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v6);
      v3 = (v3 + v7 + ((352 - 9 * __clz(v7)) >> 6));
      v5 -= 8;
    }

    while (v5);
    if (*(this + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if (*(this + 16))
    {
LABEL_8:
      v8 = operations_research::sat::LinearExpressionProto::ByteSizeLong(*(this + 6));
      v3 = &v8[v3 + 1 + ((352 - 9 * __clz(v8)) >> 6)];
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 5);
}

void operations_research::sat::AllDifferentConstraintProto::~AllDifferentConstraintProto(operations_research::sat::AllDifferentConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }

  JUMPOUT(0x23EED9460);
}