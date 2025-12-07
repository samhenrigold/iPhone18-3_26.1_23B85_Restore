void sub_23CA0DF88(_Unwind_Exception *a1)
{
  if (*(v2 - 185) < 0)
  {
    operator delete(*(v2 - 208));
  }

  if (v1)
  {
    operator delete(v1);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::ValidateLinearExpression(std::string *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::LinearExpressionProto *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 10);
  if (v4 != *(a3 + 4))
  {
    v8 = "coeffs_size() != vars_size() in linear expression: ";
    v9 = 51;
    google::protobuf::Message::ShortDebugString(&__p);
  }

  v5 = *(a3 + 3);
  if (operations_research::sat::PossibleIntegerOverflow(a2, v5, *(a3 + 10), *(a3 + 6), v4, *(a3 + 8)))
  {
    v8 = "Possible overflow in linear expression: ";
    v9 = 40;
    google::protobuf::Message::ShortDebugString(&__p);
  }

  if (v4)
  {
    v6 = 4 * v4;
    do
    {
      if ((*v5 & 0x80000000) != 0)
      {
        v8 = "Invalid negated reference in linear expression: ";
        v9 = 48;
        google::protobuf::Message::ShortDebugString(&__p);
      }

      ++v5;
      v6 -= 4;
    }

    while (v6);
  }

  *(&this->__r_.__value_.__s + 23) = 0;
  this->__r_.__value_.__s.__data_[0] = 0;
}

void sub_23CA0E5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::ValidateAffineExpression(std::string *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::LinearExpressionProto *a3)
{
  __p[15] = *MEMORY[0x277D85DE8];
  if (*(a3 + 4) >= 2)
  {
    __p[9] = "expression must be affine: ";
    __p[10] = 27;
    google::protobuf::Message::ShortDebugString(__p);
  }
}

void sub_23CA0E6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::StrCat@<X0>(const void **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *result;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
    a2[v3] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void operations_research::sat::ValidateInputCpModel(operations_research::sat *this@<X0>, google::protobuf::Message **a2@<X1>, const operations_research::sat::CpModelProto *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v26 = *MEMORY[0x277D85DE8];
  operations_research::sat::ValidateCpModel(a2, 0, a3, a4, *&a5);
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    if (*(a4 + 23))
    {
      return;
    }

    if ((a2[2] & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  if (*(a4 + 8))
  {
    return;
  }

  operator delete(*a4);
  if ((a2[2] & 8) != 0)
  {
LABEL_7:
    v10 = a2[19];
    v11 = *(v10 + 4);
    if (v11 != *(v10 + 10))
    {
      v24 = "vars and coeffs size do not match in objective: ";
      v25 = 48;
      google::protobuf::Message::ShortDebugString(&v19);
    }

    if (v11)
    {
      v12 = *(this + 98);
      v13 = *(v10 + 3);
      v14 = 4 * v11;
      do
      {
        v15 = *v13;
        if ((v15 & 0x80000000) != 0 || *(a2 + 8) <= v15)
        {
          v24 = "Out of bound integer variable ";
          v25 = 30;
          v21 = v23;
          v22 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v15, v23, v9) - v23;
          v19 = " in objective: ";
          v20 = 15;
          google::protobuf::Message::ShortDebugString(&__p);
        }

        ++v13;
        v14 -= 4;
      }

      while (v14);
      v16 = *(v10 + 6);
      v17 = 8 * v11;
      do
      {
        if ((*v16 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v24 = "Coefficients must be finite in objective: ";
          v25 = 42;
          google::protobuf::Message::ShortDebugString(&v19);
        }

        if (fabs(*v16) > v12)
        {
          v24 = "Coefficients larger than params.mip_max_valid_magnitude() [value = ";
          v25 = 67;
          v21 = v23;
          v22 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v23, v12, v8);
          v19 = "] in objective: ";
          v20 = 16;
          google::protobuf::Message::ShortDebugString(&__p);
        }

        ++v16;
        v17 -= 8;
      }

      while (v17);
    }

    if ((*(v10 + 7) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v24 = "Offset must be finite in objective: ";
      v25 = 36;
      google::protobuf::Message::ShortDebugString(&v19);
    }
  }

LABEL_23:
  *(a4 + 23) = 0;
  *a4 = 0;
}

void sub_23CA0EB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::anonymous namespace::ConstraintChecker::ConstraintIsFeasible(operations_research::sat::_anonymous_namespace_::ConstraintChecker *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::ConstraintProto *a3)
{
  v5 = *(a3 + 4);
  if (v5)
  {
    v6 = *(a3 + 3);
    for (i = 4 * v5; i; i -= 4)
    {
      v8 = *v6;
      if ((v8 & 0x80000000) != 0)
      {
        if (*(*this + 8 * ~v8))
        {
          goto LABEL_7;
        }
      }

      else if (!*(*this + 8 * v8))
      {
        goto LABEL_7;
      }

      ++v6;
    }
  }

  v10 = *(a3 + 15);
  v9 = 1;
  switch(v10)
  {
    case 0u:
      return v9 & 1;
    case 3u:
      v11 = *(a3 + 6);
      v12 = *(v11 + 16);
      if (!v12)
      {
        goto LABEL_490;
      }

      v13 = *(v11 + 24);
      v14 = 4 * v12;
      v9 = 0;
      while (2)
      {
        v15 = *v13;
        if ((v15 & 0x80000000) != 0)
        {
          if (!*(*this + 8 * ~v15))
          {
            goto LABEL_7;
          }
        }

        else if (*(*this + 8 * v15))
        {
LABEL_7:
          v9 = 1;
          return v9 & 1;
        }

        ++v13;
        v14 -= 4;
        if (!v14)
        {
          return v9 & 1;
        }

        continue;
      }

    case 4u:
      v241 = *(a3 + 6);
      v242 = *(v241 + 16);
      if (!v242)
      {
        return v9 & 1;
      }

      v243 = *(v241 + 24);
      v244 = 4 * v242;
      while (2)
      {
        v245 = *v243;
        if ((v245 & 0x80000000) != 0)
        {
          if (*(*this + 8 * ~v245))
          {
            goto LABEL_490;
          }
        }

        else if (!*(*this + 8 * v245))
        {
LABEL_490:
          v9 = 0;
          return v9 & 1;
        }

        ++v243;
        v244 -= 4;
        if (!v244)
        {
          return v9 & 1;
        }

        continue;
      }

    case 5u:
      v202 = *(a3 + 6);
      v203 = *(v202 + 16);
      if (!v203)
      {
        goto LABEL_490;
      }

      v204 = 0;
      v205 = *(v202 + 24);
      v206 = 4 * v203;
      do
      {
        while (1)
        {
          v207 = *v205;
          if ((v207 & 0x80000000) == 0)
          {
            break;
          }

          v204 ^= *(*this + 8 * ~v207) == 0;
          ++v205;
          v206 -= 4;
          if (!v206)
          {
            goto LABEL_416;
          }
        }

        v204 ^= *(*this + 8 * v207) != 0;
        ++v205;
        v206 -= 4;
      }

      while (v206);
      goto LABEL_416;
    case 7u:
      v158 = *(a3 + 6);
      if (*(v158 + 48))
      {
        v159 = *(v158 + 48);
      }

      else
      {
        v159 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v160 = v159[8];
      v161 = *(v159 + 4);
      if (v161 < 1)
      {
        goto LABEL_186;
      }

      v162 = v159[3];
      v163 = v159[6];
      do
      {
        while (1)
        {
          v166 = *v162;
          v162 = (v162 + 4);
          v165 = v166;
          if ((v166 & 0x80000000) == 0)
          {
            break;
          }

          v164 = *v163++;
          v160 = (v160 + v164 * -*(*this + 8 * ~v165));
          if (!--v161)
          {
            goto LABEL_186;
          }
        }

        v167 = *v163++;
        v160 = (v160 + v167 * *(*this + 8 * v165));
        --v161;
      }

      while (v161);
LABEL_186:
      v170 = *(v158 + 24);
      v168 = (v158 + 24);
      v169 = v170;
      v171 = v170 - 1;
      v172 = (v170 + 7);
      if ((v170 & 1) == 0)
      {
        v172 = v168;
      }

      v173 = *v172;
      v174 = *(*v172 + 64);
      v175 = *(v173 + 16);
      if (v175 >= 1)
      {
        v176 = *(v173 + 24);
        v177 = *(v173 + 48);
        do
        {
          while (1)
          {
            v180 = *v176++;
            v179 = v180;
            if ((v180 & 0x80000000) == 0)
            {
              break;
            }

            v178 = *v177++;
            v174 += v178 * -*(*this + 8 * ~v179);
            if (!--v175)
            {
              goto LABEL_193;
            }
          }

          v181 = *v177++;
          v174 += v181 * *(*this + 8 * v179);
          --v175;
        }

        while (v175);
      }

LABEL_193:
      v182 = (v171 + 16);
      if (v169)
      {
        v168 = v182;
      }

      v183 = *v168;
      v184 = *(*v168 + 64);
      v185 = *(v183 + 16);
      if (v185 >= 1)
      {
        v186 = *(v183 + 24);
        v187 = *(v183 + 48);
        do
        {
          while (1)
          {
            v190 = *v186++;
            v189 = v190;
            if ((v190 & 0x80000000) == 0)
            {
              break;
            }

            v188 = *v187++;
            v184 += v188 * -*(*this + 8 * ~v189);
            if (!--v185)
            {
              goto LABEL_200;
            }
          }

          v191 = *v187++;
          v184 += v191 * *(*this + 8 * v189);
          --v185;
        }

        while (v185);
      }

LABEL_200:
      v192 = v174 / v184;
      goto LABEL_276;
    case 8u:
      v246 = *(a3 + 6);
      if (*(v246 + 48))
      {
        v247 = *(v246 + 48);
      }

      else
      {
        v247 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v160 = v247[8];
      v248 = *(v247 + 4);
      if (v248 < 1)
      {
        goto LABEL_261;
      }

      v249 = v247[3];
      v250 = v247[6];
      do
      {
        while (1)
        {
          v253 = *v249;
          v249 = (v249 + 4);
          v252 = v253;
          if ((v253 & 0x80000000) == 0)
          {
            break;
          }

          v251 = *v250++;
          v160 = (v160 + v251 * -*(*this + 8 * ~v252));
          if (!--v248)
          {
            goto LABEL_261;
          }
        }

        v254 = *v250++;
        v160 = (v160 + v254 * *(*this + 8 * v252));
        --v248;
      }

      while (v248);
LABEL_261:
      v257 = *(v246 + 24);
      v255 = (v246 + 24);
      v256 = v257;
      v258 = v257 - 1;
      v259 = (v257 + 7);
      if ((v257 & 1) == 0)
      {
        v259 = v255;
      }

      v260 = *v259;
      v261 = *(*v259 + 64);
      v262 = *(v260 + 16);
      if (v262 >= 1)
      {
        v263 = *(v260 + 24);
        v264 = *(v260 + 48);
        do
        {
          while (1)
          {
            v267 = *v263++;
            v266 = v267;
            if ((v267 & 0x80000000) == 0)
            {
              break;
            }

            v265 = *v264++;
            v261 += v265 * -*(*this + 8 * ~v266);
            if (!--v262)
            {
              goto LABEL_268;
            }
          }

          v268 = *v264++;
          v261 += v268 * *(*this + 8 * v266);
          --v262;
        }

        while (v262);
      }

LABEL_268:
      v269 = (v258 + 16);
      if (v256)
      {
        v255 = v269;
      }

      v270 = *v255;
      v271 = *(*v255 + 64);
      v272 = *(v270 + 16);
      if (v272 >= 1)
      {
        v273 = *(v270 + 24);
        v274 = *(v270 + 48);
        do
        {
          while (1)
          {
            v277 = *v273++;
            v276 = v277;
            if ((v277 & 0x80000000) == 0)
            {
              break;
            }

            v275 = *v274++;
            v271 += v275 * -*(*this + 8 * ~v276);
            if (!--v272)
            {
              goto LABEL_275;
            }
          }

          v278 = *v274++;
          v271 += v278 * *(*this + 8 * v276);
          --v272;
        }

        while (v272);
      }

LABEL_275:
      v192 = v261 % v271;
LABEL_276:
      v9 = v160 == v192;
      return v9 & 1;
    case 0xBu:
      v215 = *(a3 + 6);
      if (*(v215 + 48))
      {
        v216 = *(v215 + 48);
      }

      else
      {
        v216 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v217 = v216[8];
      v218 = *(v216 + 4);
      if (v218 < 1)
      {
        goto LABEL_231;
      }

      v219 = v216[3];
      v220 = v216[6];
      do
      {
        while (1)
        {
          v223 = *v219;
          v219 = (v219 + 4);
          v222 = v223;
          if ((v223 & 0x80000000) == 0)
          {
            break;
          }

          v221 = *v220++;
          v217 = (v217 + v221 * -*(*this + 8 * ~v222));
          if (!--v218)
          {
            goto LABEL_231;
          }
        }

        v224 = *v220++;
        v217 = (v217 + v224 * *(*this + 8 * v222));
        --v218;
      }

      while (v218);
LABEL_231:
      v226 = *(v215 + 24);
      v225 = (v215 + 24);
      v227 = (v226 + 7);
      if (v226)
      {
        v228 = v227;
      }

      else
      {
        v228 = v225;
      }

      v229 = *(v225 + 2);
      if (v229)
      {
        v230 = &v228[v229];
        v231 = 1;
        do
        {
          v232 = *v228;
          v233 = *(*v228 + 64);
          v234 = *(*v228 + 16);
          if (v234 >= 1)
          {
            v235 = *(v232 + 24);
            v236 = *(v232 + 48);
            do
            {
              while (1)
              {
                v239 = *v235++;
                v238 = v239;
                if ((v239 & 0x80000000) == 0)
                {
                  break;
                }

                v237 = *v236++;
                v233 += v237 * -*(*this + 8 * ~v238);
                if (!--v234)
                {
                  goto LABEL_236;
                }
              }

              v240 = *v236++;
              v233 += v240 * *(*this + 8 * v238);
              --v234;
            }

            while (v234);
          }

LABEL_236:
          if ((v231 * v233) >> 64 == (v231 * v233) >> 63)
          {
            v231 *= v233;
          }

          else
          {
            v231 = ((v233 ^ v231) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          ++v228;
        }

        while (v228 != v230);
      }

      else
      {
        v231 = 1;
      }

      v9 = v217 == v231;
      return v9 & 1;
    case 0xCu:
      v193 = *(a3 + 6);
      v194 = *(v193 + 40);
      if (v194 < 1)
      {
        v195 = 0;
      }

      else
      {
        v195 = 0;
        v196 = *(v193 + 24);
        v197 = *(v193 + 48);
        do
        {
          while (1)
          {
            v200 = *v196++;
            v199 = v200;
            if ((v200 & 0x80000000) == 0)
            {
              break;
            }

            v198 = *v197++;
            v195 += v198 * -*(*this + 8 * ~v199);
            if (!--v194)
            {
              goto LABEL_483;
            }
          }

          v201 = *v197++;
          v195 += v201 * *(*this + 8 * v199);
          --v194;
        }

        while (v194);
      }

LABEL_483:
      v469 = *(v193 + 64);
      if (v469 < 1)
      {
        goto LABEL_489;
      }

      v470 = 0;
      v471 = *(v193 + 72);
      while (*(v471 + 8 * v470) > v195 || *(v471 + 8 * (v470 + 1)) < v195)
      {
        v470 += 2;
        if (v470 >= v469)
        {
LABEL_489:
          if (dword_2810BF8D8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_4, dword_2810BF8D8))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(&v545, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1211);
            v528 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v545, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v528, "Activity: ", 0xAuLL);
            *__x = v195;
            absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v528, __x);
            goto LABEL_348;
          }

          goto LABEL_490;
        }
      }

      goto LABEL_7;
    case 0xDu:
      v312 = *(a3 + 6);
      *&v545.__begin_ = xmmword_23CE306D0;
      v314 = *(v312 + 16);
      v313 = (v312 + 16);
      v315 = (v314 + 7);
      if (v314)
      {
        v316 = v315;
      }

      else
      {
        v316 = v313;
      }

      v317 = *(v313 + 2);
      if (!v317)
      {
        goto LABEL_520;
      }

      v318 = &v316[v317];
      while (1)
      {
        v319 = *v316;
        v320 = *(*v316 + 64);
        v321 = *(*v316 + 16);
        if (v321 >= 1)
        {
          v322 = *(v319 + 24);
          v323 = *(v319 + 48);
          do
          {
            while (1)
            {
              v326 = *v322++;
              v325 = v326;
              if ((v326 & 0x80000000) == 0)
              {
                break;
              }

              v324 = *v323++;
              v320 += v324 * -*(*this + 8 * ~v325);
              if (!--v321)
              {
                goto LABEL_314;
              }
            }

            v327 = *v323++;
            v320 += v327 * *(*this + 8 * v325);
            --v321;
          }

          while (v321);
        }

LABEL_314:
        *&v538 = v320;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(&v545, &v538, __x);
        if ((v543 & 1) == 0)
        {
          break;
        }

        **&__x[2] = v538;
        if (++v316 == v318)
        {
          v9 = 1;
          goto LABEL_520;
        }
      }

      v9 = 0;
      goto LABEL_520;
    case 0xEu:
      v328 = *(a3 + 6);
      v329 = *(v328 + 16);
      if (!v329)
      {
        goto LABEL_490;
      }

      v330 = *(v328 + 36);
      v331 = *this;
      if ((v330 & 0x80000000) != 0)
      {
        v332 = -*(*this + 8 * ~v330);
      }

      else
      {
        v332 = *(*this + 8 * v330);
      }

      v9 = 0;
      if ((v332 & 0x80000000) == 0 && v329 > v332)
      {
        v485 = *(*(v328 + 24) + 4 * (v332 & 0x7FFFFFFF));
        if ((v485 & 0x80000000) != 0)
        {
          v486 = -*(v331 + 8 * ~v485);
        }

        else
        {
          v486 = *(v331 + 8 * v485);
        }

        v489 = *(v328 + 40);
        if ((v489 & 0x80000000) != 0)
        {
          v490 = -*(v331 + 8 * ~v489);
        }

        else
        {
          v490 = *(v331 + 8 * v489);
        }

        v9 = v486 == v490;
      }

      return v9 & 1;
    case 0xFu:
      v16 = *(*(a3 + 6) + 16);
      *&v545.__begin_ = xmmword_23CE306D0;
      *__x = xmmword_23CE306D0;
      if (v16 < 1)
      {
        goto LABEL_520;
      }

      v17 = 0;
      while (1)
      {
        if (*(a3 + 15) == 15)
        {
          v18 = *(a3 + 6);
          v19 = *(v18[3] + v17);
        }

        else
        {
          v19 = *(off_2810BED38 + v17);
          v18 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
        }

        LODWORD(v547) = v19;
        v541 = *(v18[6] + v17);
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v545, &v547, &v538);
        if (v539 == 1)
        {
          **(&v538 + 1) = v547;
        }

        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v545, &v541, &v538);
        if (v539 == 1)
        {
          **(&v538 + 1) = v541;
        }

        if (*(a3 + 15) == 15)
        {
          v20 = *(a3 + 6);
        }

        else
        {
          v20 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
        }

        v21 = *(v20[9] + v17);
        if ((v21 & 0x80000000) != 0)
        {
          if (!*(*this + 8 * ~v21))
          {
LABEL_34:
            if (*__x > 1uLL)
            {
              v23 = 0;
              _X10 = v543;
              __asm { PRFM            #4, [X10] }

              v29 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v547) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v547));
              v30 = vdup_n_s8(v29 & 0x7F);
              v31 = ((v29 >> 7) ^ (v543 >> 12)) & *__x;
              v32 = *(v543 + v31);
              v33 = vceq_s8(v32, v30);
              if (!v33)
              {
                goto LABEL_42;
              }

LABEL_40:
              while (*(v544 + 8 * ((v31 + (__clz(__rbit64(v33)) >> 3)) & *__x)) != v547)
              {
                v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v33)
                {
LABEL_42:
                  while (!*&vceq_s8(v32, 0x8080808080808080))
                  {
                    v23 += 8;
                    v31 = (v23 + v31) & *__x;
                    v32 = *(v543 + v31);
                    v33 = vceq_s8(v32, v30);
                    if (v33)
                    {
                      goto LABEL_40;
                    }
                  }

                  goto LABEL_37;
                }
              }

LABEL_417:
              if (dword_2810BF920 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF918, dword_2810BF920))
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(&v538, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1452);
                v527 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v538, 1);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v527, "Node with two outgoing arcs", 0x1BuLL);
LABEL_609:
                absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v538);
              }

LABEL_418:
              v9 = 0;
              goto LABEL_419;
            }

            if (*&__x[2] >= 2uLL && v543 == v547)
            {
              goto LABEL_417;
            }

LABEL_37:
            v22 = v541;
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(__x, &v547, &v538);
            if (v539 == 1)
            {
              **(&v538 + 1) = v547;
            }

            *(*(&v538 + 1) + 4) = v22;
          }
        }

        else if (*(*this + 8 * v21))
        {
          goto LABEL_34;
        }

        if (++v17 == v16)
        {
          if (v545.__end_ >= 2)
          {
            if (v545.__begin_ >= 2)
            {
              value = v545.__end_cap_.__value_;
              p_end_cap = v546;
              if (*v545.__end_cap_.__value_ <= -2)
              {
                do
                {
                  v491 = __clz(__rbit64((*value | ~(*value >> 7)) & 0x101010101010101)) >> 3;
                  value = (value + v491);
                  p_end_cap = (p_end_cap + 4 * v491);
                }

                while (*value < -1);
              }
            }

            else
            {
              p_end_cap = &v545.__end_cap_;
              value = &absl::lts_20240722::container_internal::kSooControl;
            }

            v492 = 0;
            v493 = 0;
            while (1)
            {
              value_low = LODWORD(p_end_cap->__value_);
              v541 = p_end_cap->__value_;
              if (*__x > 1uLL)
              {
                v500 = 0;
                _X11 = v543;
                __asm { PRFM            #4, [X11] }

                v503 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + value_low) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + value_low));
                v504 = vdup_n_s8(v503 & 0x7F);
                v505 = ((v543 >> 12) ^ (v503 >> 7)) & *__x;
                v506 = *(v543 + v505);
                v507 = vceq_s8(v506, v504);
                if (!v507)
                {
                  goto LABEL_563;
                }

LABEL_561:
                while (*(v544 + 8 * ((v505 + (__clz(__rbit64(v507)) >> 3)) & *__x)) != value_low)
                {
                  v507 &= ((v507 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v507)
                  {
LABEL_563:
                    while (!*&vceq_s8(v506, 0x8080808080808080))
                    {
                      v500 += 8;
                      v505 = (v500 + v505) & *__x;
                      v506 = *(v543 + v505);
                      v507 = vceq_s8(v506, v504);
                      if (v507)
                      {
                        goto LABEL_561;
                      }
                    }

                    goto LABEL_591;
                  }
                }
              }

              else if (*&__x[2] < 2uLL || v543 != value_low)
              {
LABEL_591:
                if (dword_2810BF938 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF930, dword_2810BF938))
                {
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v538, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1463);
                  v524 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v538, 1);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v524, "Node with no next: ", 0x13uLL);
                  LODWORD(v547) = v541;
                  absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v524, &v547);
                  goto LABEL_609;
                }

                goto LABEL_418;
              }

              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(__x, &v541, &v538);
              v496 = v541;
              if (v539 == 1)
              {
                **(&v538 + 1) = v541;
              }

              if (*(*(&v538 + 1) + 4) != v496)
              {
                v493 = v496;
                ++v492;
              }

              v498 = *(value + 1);
              value = (value + 1);
              LOBYTE(v497) = v498;
              p_end_cap = (p_end_cap + 4);
              if (v498 <= -2)
              {
                do
                {
                  v499 = __clz(__rbit64((*value | ~(*value >> 7)) & 0x101010101010101)) >> 3;
                  value = (value + v499);
                  p_end_cap = (p_end_cap + 4 * v499);
                  v497 = *value;
                }

                while (v497 < -1);
              }

              if (v497 == 255)
              {
                if (!v492)
                {
                  break;
                }

                v508 = 0;
                v538 = xmmword_23CE306D0;
                v509 = 1;
                v510 = v493;
                while (1)
                {
                  v541 = v510;
                  if (v509 > 1)
                  {
                    break;
                  }

                  if (*(&v538 + 1) >= 2uLL && v539 == v510)
                  {
                    goto LABEL_585;
                  }

LABEL_574:
                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v538, &v541, &v547);
                  if (v549 == 1)
                  {
                    *v548 = v541;
                  }

                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(__x, &v541, &v547);
                  if (v549 == 1)
                  {
                    *v548 = v541;
                  }

                  ++v508;
                  v510 = v548[1];
                  v509 = v538;
                }

                v512 = 0;
                _X11 = v539;
                __asm { PRFM            #4, [X11] }

                v515 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v510) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v510));
                v516 = vdup_n_s8(v515 & 0x7F);
                v517 = ((v539 >> 12) ^ (v515 >> 7)) & v509;
                v518 = *(v539 + v517);
                v519 = vceq_s8(v518, v516);
                if (!v519)
                {
                  goto LABEL_581;
                }

LABEL_579:
                while (*(v540 + 4 * ((v517 + (__clz(__rbit64(v519)) >> 3)) & v509)) != v510)
                {
                  v519 &= ((v519 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v519)
                  {
LABEL_581:
                    while (!*&vceq_s8(v518, 0x8080808080808080))
                    {
                      v512 += 8;
                      v517 = (v512 + v517) & v509;
                      v518 = *(v539 + v517);
                      v519 = vceq_s8(v518, v516);
                      if (v519)
                      {
                        goto LABEL_579;
                      }
                    }

                    goto LABEL_574;
                  }
                }

LABEL_585:
                if (v510 == v493)
                {
                  if (v508 == v492)
                  {
                    v9 = 1;
                    goto LABEL_604;
                  }

                  if (dword_2810BF968 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF960, dword_2810BF968))
                  {
                    v532 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v547, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1487);
                    v533 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v532, 1);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v533, "More than one cycle", 0x13uLL);
LABEL_619:
                    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v547);
                  }
                }

                else if (dword_2810BF950 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF948, dword_2810BF950))
                {
                  v525 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v547, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1483);
                  v526 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v525, 1);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v526, "Rho shape", 9uLL);
                  goto LABEL_619;
                }

                v9 = 0;
LABEL_604:
                if (v538 >= 2)
                {
                  operator delete((v539 - (BYTE8(v538) & 1) - 8));
                }

                goto LABEL_419;
              }
            }
          }

          v9 = 1;
LABEL_419:
          if (*__x >= 2uLL)
          {
            operator delete((v543 - (__x[2] & 1) - 8));
          }

LABEL_520:
          if (v545.__begin_ >= 2)
          {
LABEL_521:
            begin = (v545.__end_cap_.__value_ - (v545.__end_ & 1) - 8);
            goto LABEL_522;
          }

          return v9 & 1;
        }
      }

    case 0x10u:
      v208 = *(a3 + 6);
      v209 = *(v208 + 16);
      if (!v209)
      {
        return v9 & 1;
      }

      v210 = *(v208 + 40);
      if (v210 < 1)
      {
        goto LABEL_222;
      }

      v211 = 0;
      v212 = *(v208 + 48);
      while (1)
      {
        v213 = 0;
        while (1)
        {
          v214 = *(*(v208 + 24) + 4 * v213);
          if ((v214 & 0x80000000) == 0)
          {
            break;
          }

          if (-*(*this + 8 * ~v214) != *(v212 + 8 * (v211 + v213)))
          {
            goto LABEL_221;
          }

LABEL_218:
          if (v209 == ++v213)
          {
            v9 = *(v208 + 60) ^ 1;
            return v9 & 1;
          }
        }

        if (*(*this + 8 * v214) == *(v212 + 8 * (v211 + v213)))
        {
          goto LABEL_218;
        }

LABEL_221:
        v211 += v209;
        if (v211 >= v210)
        {
LABEL_222:
          v9 = *(v208 + 60);
          return v9 & 1;
        }
      }

    case 0x11u:
      v545.__begin_ = 0;
      v545.__end_ = 0;
      v545.__end_cap_.__value_ = &unk_23CE31C20;
      v65 = *(a3 + 6);
      v66 = *(v65 + 10);
      v67 = &operations_research::sat::_AutomatonConstraintProto_default_instance_;
      if (v66 >= 1)
      {
        v68 = 0;
        while (1)
        {
          v75 = 0;
          if (*(a3 + 15) == 17)
          {
            v79 = *(a3 + 6);
          }

          else
          {
            v79 = v67;
          }

          v80 = v79[9][v68];
          v81 = v79[6][v68];
          v82 = v79[12][v68];
          _X8 = v545.__end_cap_.__value_;
          __asm { PRFM            #4, [X8] }

          v85 = v82 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v81) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v81)));
          v86 = ((v85 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v85);
          v76 = (v86 >> 7) ^ (v545.__end_cap_.__value_ >> 12);
          v87 = vdup_n_s8(v86 & 0x7F);
          while (1)
          {
            v69 = v76 & v545.__begin_;
            v70 = *(v545.__end_cap_.__value_ + v69);
            v71 = vceq_s8(v70, v87);
            if (v71)
            {
              break;
            }

LABEL_84:
            v74 = vceq_s8(v70, 0x8080808080808080);
            if (v74)
            {
              v77 = v67;
              inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v545, v86, (v69 + (__clz(__rbit64(v74)) >> 3)) & v545.__begin_, v75, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::GetPolicyFunctions(void)::value);
              v72 = &v546[3 * inserted];
              v72->__value_ = v81;
              v72[1].__value_ = v82;
              v72[2].__value_ = 0;
              v67 = v77;
              goto LABEL_87;
            }

            v75 += 8;
            v76 = v75 + v69;
          }

          while (1)
          {
            v72 = &v546[3 * ((v69 + (__clz(__rbit64(v71)) >> 3)) & v545.__begin_)];
            if (v72->__value_ == v81 && v72[1].__value_ == v82)
            {
              break;
            }

            v71 &= ((v71 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v71)
            {
              goto LABEL_84;
            }
          }

LABEL_87:
          v72[2].__value_ = v80;
          if (++v68 == v66)
          {
            v425 = *(a3 + 15);
            v65 = *(a3 + 6);
            goto LABEL_436;
          }
        }
      }

      v425 = 17;
LABEL_436:
      if (v425 == 17)
      {
        v430 = v65;
      }

      else
      {
        v430 = v67;
      }

      v431 = *(v430 + 28);
      v432 = v430[17];
      if (v431 < 1)
      {
        goto LABEL_469;
      }

      v433 = 0;
      v434 = &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::GetPolicyFunctions(void)::value;
      while (1)
      {
        v435 = *(a3 + 15) == 17 ? *(a3 + 6) : v67;
        v436 = *(v435[15] + v433);
        v437 = (v436 & 0x80000000) != 0 ? -*(*this + 8 * ~v436) : *(*this + 8 * v436);
        v438 = 0;
        _X8 = v545.__end_cap_.__value_;
        __asm { PRFM            #4, [X8] }

        v441 = v437 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v432) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v432)));
        v442 = ((v441 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v441);
        v443 = (v442 >> 7) ^ (v545.__end_cap_.__value_ >> 12);
        v444 = vdup_n_s8(v442 & 0x7F);
        v445 = v443 & v545.__begin_;
        v446 = *(v545.__end_cap_.__value_ + (v443 & v545.__begin_));
        v447 = vceq_s8(v446, v444);
        if (!v447)
        {
          break;
        }

LABEL_448:
        while (1)
        {
          v448 = &v546[3 * ((v445 + (__clz(__rbit64(v447)) >> 3)) & v545.__begin_)];
          v450 = v448->__value_;
          v449 = v448[1].__value_;
          if (v450 == v432 && v449 == v437)
          {
            break;
          }

          v447 &= ((v447 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v447)
          {
            goto LABEL_453;
          }
        }

        v452 = 0;
        __asm { PRFM            #4, [X8] }

        v454 = v443 & v545.__begin_;
        v455 = *(v545.__end_cap_.__value_ + (v443 & v545.__begin_));
        v456 = vceq_s8(v455, v444);
        if (v456)
        {
LABEL_457:
          while (1)
          {
            v457 = &v546[3 * ((v454 + (__clz(__rbit64(v456)) >> 3)) & v545.__begin_)];
            if (v457->__value_ == v432 && v457[1].__value_ == v437)
            {
              break;
            }

            v456 &= ((v456 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v456)
            {
              goto LABEL_462;
            }
          }

          v432 = v457[2].__value_;
        }

        else
        {
LABEL_462:
          while (1)
          {
            v459 = v67;
            v460 = vceq_s8(v455, 0x8080808080808080);
            if (v460)
            {
              break;
            }

            v452 += 8;
            v454 = (v452 + v454) & v545.__begin_;
            v455 = *(v545.__end_cap_.__value_ + v454);
            v456 = vceq_s8(v455, v444);
            if (v456)
            {
              goto LABEL_457;
            }
          }

          v461 = v434;
          v462 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v545, v442, (v454 + (__clz(__rbit64(v460)) >> 3)) & v545.__begin_, v452, v434);
          v463 = &v546[3 * v462];
          v463->__value_ = v432;
          v463[1].__value_ = v437;
          v463[2].__value_ = 0;
          v432 = 0;
          v67 = v459;
          v434 = v461;
        }

        if (++v433 == v431)
        {
          v425 = *(a3 + 15);
          v65 = *(a3 + 6);
LABEL_469:
          if (v425 != 17)
          {
            v65 = v67;
          }

          v464 = *(v65 + 4);
          if (v464)
          {
            v465 = v65[3];
            v466 = 8 * v464 - 8;
            do
            {
              v467 = *v465++;
              v9 = v432 == v467;
              v468 = v432 == v467 || v466 == 0;
              v466 -= 8;
            }

            while (!v468);
LABEL_480:
            if (v545.__begin_)
            {
              goto LABEL_521;
            }

            return v9 & 1;
          }

LABEL_479:
          v9 = 0;
          goto LABEL_480;
        }
      }

LABEL_453:
      while (!*&vceq_s8(v446, 0x8080808080808080))
      {
        v438 += 8;
        v445 = (v438 + v445) & v545.__begin_;
        v446 = *(v545.__end_cap_.__value_ + v445);
        v447 = vceq_s8(v446, v444);
        if (v447)
        {
          goto LABEL_448;
        }
      }

      goto LABEL_479;
    case 0x12u:
      v380 = *(a3 + 6);
      v381 = *(v380 + 16);
      if (v381 != *(v380 + 40))
      {
        goto LABEL_490;
      }

      if (v381 < 1)
      {
        return v9 & 1;
      }

      v382 = 0;
      while (1)
      {
        v383 = *(*(v380 + 24) + 4 * v382);
        if ((v383 & 0x80000000) != 0)
        {
          v384 = *this;
          v385 = -*(*this + 8 * ~v383);
          if (v381 <= v385)
          {
            goto LABEL_490;
          }
        }

        else
        {
          v384 = *this;
          v385 = *(*this + 8 * v383);
          if (v381 <= v385)
          {
            goto LABEL_490;
          }
        }

        v386 = *(*(v380 + 48) + 4 * (v385 & 0x7FFFFFFF));
        if ((v386 & 0x80000000) != 0)
        {
          if (v382 != -*(v384 + 8 * ~v386))
          {
            goto LABEL_490;
          }
        }

        else if (v382 != *(v384 + 8 * v386))
        {
          goto LABEL_490;
        }

        if (v381 == ++v382)
        {
          return v9 & 1;
        }
      }

    case 0x13u:
      v333 = *(a3 + 6);
      if (*(v333 + 40))
      {
        v334 = *(v333 + 40);
      }

      else
      {
        v334 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v335 = v334[8];
      v336 = *(v334 + 4);
      if (v336 < 1)
      {
        goto LABEL_328;
      }

      v337 = v334[3];
      v338 = v334[6];
      do
      {
        while (1)
        {
          v341 = *v337;
          v337 = (v337 + 4);
          v340 = v341;
          if ((v341 & 0x80000000) == 0)
          {
            break;
          }

          v339 = *v338++;
          v335 += v339 * -*(*this + 8 * ~v340);
          if (!--v336)
          {
            goto LABEL_328;
          }
        }

        v342 = *v338++;
        v335 += v342 * *(*this + 8 * v340);
        --v336;
      }

      while (v336);
LABEL_328:
      if ((v335 & 0x8000000000000000) == 0)
      {
        if (*(v333 + 24))
        {
          v343 = *(v333 + 24);
        }

        else
        {
          v343 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v344 = v343[8];
        v345 = *(v343 + 4);
        if (v345 >= 1)
        {
          v346 = v343[3];
          v347 = v343[6];
          do
          {
            while (1)
            {
              v350 = *v346;
              v346 = (v346 + 4);
              v349 = v350;
              if ((v350 & 0x80000000) == 0)
              {
                break;
              }

              v348 = *v347++;
              v344 = (v344 + v348 * -*(*this + 8 * ~v349));
              if (!--v345)
              {
                goto LABEL_337;
              }
            }

            v351 = *v347++;
            v344 = (v344 + v351 * *(*this + 8 * v349));
            --v345;
          }

          while (v345);
        }

LABEL_337:
        v352 = (v344 + v335);
        if (*(v333 + 32))
        {
          v353 = *(v333 + 32);
        }

        else
        {
          v353 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v354 = v353[8];
        v355 = *(v353 + 4);
        if (v355 >= 1)
        {
          v356 = v353[3];
          v357 = v353[6];
          do
          {
            while (1)
            {
              v360 = *v356;
              v356 = (v356 + 4);
              v359 = v360;
              if ((v360 & 0x80000000) == 0)
              {
                break;
              }

              v358 = *v357++;
              v354 = (v354 + v358 * -*(*this + 8 * ~v359));
              if (!--v355)
              {
                goto LABEL_345;
              }
            }

            v361 = *v357++;
            v354 = (v354 + v361 * *(*this + 8 * v359));
            --v355;
          }

          while (v355);
        }

LABEL_345:
        if (v352 == v354)
        {
          goto LABEL_7;
        }
      }

      if (*(v333 + 16))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v545, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1628);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v545, "Warning, an interval constraint was likely used without a corresponding linear constraint linking its start, size and end.", 0x7AuLL);
LABEL_348:
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v545);
        v9 = 0;
        return v9 & 1;
      }

      goto LABEL_490;
    case 0x14u:
      v34 = *(a3 + 6);
      v35 = *(v34 + 16);
      if (!v35)
      {
        goto LABEL_434;
      }

      v36 = *(v34 + 24);
      v37 = &v36[v35];
      v38 = (a2 + 48);
      while (1)
      {
        v39 = (*v38 + 8 * *v36 + 7);
        if ((*v38 & 1) == 0)
        {
          v39 = a2 + 48;
        }

        v40 = *v39;
        v41 = *(*v39 + 16);
        if (!v41)
        {
LABEL_57:
          v45 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (*(v40 + 60) == 19)
          {
            v45 = *(v40 + 48);
          }

          if (v45[3])
          {
            v46 = v45[3];
          }

          else
          {
            v46 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v47 = v46[8];
          v48 = *(v46 + 4);
          if (v48 >= 1)
          {
            v49 = v46[3];
            v50 = v46[6];
            do
            {
              while (1)
              {
                v53 = *v49;
                v49 = (v49 + 4);
                v52 = v53;
                if ((v53 & 0x80000000) == 0)
                {
                  break;
                }

                v51 = *v50++;
                v47 = (v47 + v51 * -*(*this + 8 * ~v52));
                if (!--v48)
                {
                  goto LABEL_67;
                }
              }

              v54 = *v50++;
              v47 = (v47 + v54 * *(*this + 8 * v52));
              --v48;
            }

            while (v48);
          }

LABEL_67:
          v55 = v45[5];
          if (v55)
          {
            v56 = v55;
          }

          else
          {
            v56 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v57 = v56[8];
          v58 = *(v56 + 4);
          if (v58 >= 1)
          {
            v59 = v56[3];
            v60 = v56[6];
            do
            {
              while (1)
              {
                v63 = *v59;
                v59 = (v59 + 4);
                v62 = v63;
                if ((v63 & 0x80000000) == 0)
                {
                  break;
                }

                v61 = *v60++;
                v57 = (v57 + v61 * -*(*this + 8 * ~v62));
                if (!--v58)
                {
                  goto LABEL_75;
                }
              }

              v64 = *v60++;
              v57 = (v57 + v64 * *(*this + 8 * v62));
              --v58;
            }

            while (v58);
          }

LABEL_75:
          operator new();
        }

        v42 = *(v40 + 24);
        v43 = 4 * v41;
        while (1)
        {
          v44 = *v42;
          if ((v44 & 0x80000000) != 0)
          {
            if (*(*this + 8 * ~v44))
            {
              break;
            }

            goto LABEL_53;
          }

          if (!*(*this + 8 * v44))
          {
            break;
          }

LABEL_53:
          ++v42;
          v43 -= 4;
          if (!v43)
          {
            goto LABEL_57;
          }
        }

        if (++v36 == v37)
        {
LABEL_434:
          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,false>(0, 0, &v545, 0, 1);
          v9 = 1;
          return v9 & 1;
        }
      }

    case 0x15u:
      v362 = *(a3 + 6);
      v363 = *(v362 + 16);
      v364 = *(v362 + 40);
      if (v364 != v363)
      {
      }

      if (v363 < 1)
      {
        goto LABEL_518;
      }

      v365 = 0;
      v366 = (a2 + 48);
      while (1)
      {
        v367 = *v366 + 7;
        v368 = (v367 + 8 * *(*(v362 + 24) + 4 * v365));
        if ((*v366 & 1) == 0)
        {
          v368 = (a2 + 48);
        }

        v369 = *v368;
        v370 = (v367 + 8 * *(*(v362 + 48) + 4 * v365));
        if ((*v366 & 1) == 0)
        {
          v370 = (a2 + 48);
        }

        v371 = *v370;
        v372 = *(v369 + 16);
        if (!v372)
        {
LABEL_364:
          v376 = *(v371 + 16);
          if (!v376)
          {
LABEL_371:
            operator new();
          }

          v377 = *(v371 + 24);
          v378 = 4 * v376;
          while (1)
          {
            v379 = *v377;
            if ((v379 & 0x80000000) != 0)
            {
              if (*(*this + 8 * ~v379))
              {
                goto LABEL_352;
              }
            }

            else if (!*(*this + 8 * v379))
            {
              goto LABEL_352;
            }

            ++v377;
            v378 -= 4;
            if (!v378)
            {
              goto LABEL_371;
            }
          }
        }

        v373 = *(v369 + 24);
        v374 = 4 * v372;
        while (1)
        {
          v375 = *v373;
          if ((v375 & 0x80000000) != 0)
          {
            if (*(*this + 8 * ~v375))
            {
              break;
            }

            goto LABEL_360;
          }

          if (!*(*this + 8 * v375))
          {
            break;
          }

LABEL_360:
          ++v373;
          v374 -= 4;
          if (!v374)
          {
            goto LABEL_364;
          }
        }

LABEL_352:
        if (++v365 == v363)
        {
LABEL_518:
          v9 = 1;
          return v9 & 1;
        }
      }

    case 0x16u:
      v88 = *(a3 + 6);
      if (*(v88 + 72))
      {
        v89 = *(v88 + 72);
      }

      else
      {
        v89 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v90 = v89[8];
      v91 = *(v89 + 4);
      if (v91 < 1)
      {
        goto LABEL_100;
      }

      v92 = v89[3];
      v93 = v89[6];
      do
      {
        while (1)
        {
          v96 = *v92;
          v92 = (v92 + 4);
          v95 = v96;
          if ((v96 & 0x80000000) == 0)
          {
            break;
          }

          v94 = *v93++;
          v90 = (v90 + v94 * -*(*this + 8 * ~v95));
          if (!--v91)
          {
            goto LABEL_100;
          }
        }

        v97 = *v93++;
        v90 = (v90 + v97 * *(*this + 8 * v95));
        --v91;
      }

      while (v91);
LABEL_100:
      v98 = *(v88 + 24);
      if (v98 >= 1)
      {
        v99 = 0;
        v100 = (a2 + 48);
        while (1)
        {
          if (*(a3 + 15) == 22)
          {
            v101 = *(a3 + 6);
          }

          else
          {
            v101 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
          }

          v102 = (*v100 + 8 * *(v101[4] + v99) + 7);
          if ((*v100 & 1) == 0)
          {
            v102 = v100;
          }

          v103 = *v102;
          v104 = *(v103 + 16);
          if (v104)
          {
            break;
          }

LABEL_115:
          v108 = *(v103 + 60);
          v109 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (v108 == 19)
          {
            v109 = *(v103 + 48);
          }

          v110 = v109[3];
          if (v110)
          {
            v111 = v110;
          }

          else
          {
            v111 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v112 = v111[8];
          v113 = *(v111 + 4);
          if (v113 >= 1)
          {
            v114 = v111[3];
            v115 = v111[6];
            do
            {
              while (1)
              {
                v118 = *v114;
                v114 = (v114 + 4);
                v117 = v118;
                if ((v118 & 0x80000000) == 0)
                {
                  break;
                }

                v116 = *v115++;
                v112 = (v112 + v116 * -*(*this + 8 * ~v117));
                if (!--v113)
                {
                  goto LABEL_125;
                }
              }

              v119 = *v115++;
              v112 = (v112 + v119 * *(*this + 8 * v117));
              --v113;
            }

            while (v113);
          }

LABEL_125:
          v120 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (v108 == 19)
          {
            v120 = *(v103 + 48);
          }

          if (v120[5])
          {
            v121 = v120[5];
          }

          else
          {
            v121 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v122 = v121[8];
          v123 = *(v121 + 4);
          if (v123 >= 1)
          {
            v124 = v121[3];
            v125 = v121[6];
            do
            {
              while (1)
              {
                v128 = *v124;
                v124 = (v124 + 4);
                v127 = v128;
                if ((v128 & 0x80000000) == 0)
                {
                  break;
                }

                v126 = *v125++;
                v122 = (v122 + v126 * -*(*this + 8 * ~v127));
                if (!--v123)
                {
                  goto LABEL_135;
                }
              }

              v129 = *v125++;
              v122 = (v122 + v129 * *(*this + 8 * v127));
              --v123;
            }

            while (v123);
          }

LABEL_135:
          v131 = v101[6];
          v130 = v101 + 6;
          v132 = &v131[v99] + 7;
          if (v131)
          {
            v130 = v132;
          }

          v133 = *v130;
          v134 = (*v130)[8];
          v135 = *(*v130 + 4);
          if (v135 >= 1)
          {
            v136 = v133[3];
            v137 = v133[6];
            do
            {
              while (1)
              {
                v140 = *v136;
                v136 = (v136 + 4);
                v139 = v140;
                if ((v140 & 0x80000000) == 0)
                {
                  break;
                }

                v138 = *v137;
                v137 = (v137 + 8);
                v134 = (v134 + v138 * -*(*this + 8 * ~v139));
                if (!--v135)
                {
                  goto LABEL_142;
                }
              }

              v141 = *v137;
              v137 = (v137 + 8);
              v134 = (v134 + v141 * *(*this + 8 * v139));
              --v135;
            }

            while (v135);
          }

LABEL_142:
          if (v122 && v134)
          {
            operator new();
          }

LABEL_102:
          if (++v99 == v98)
          {
            v9 = 1;
            return v9 & 1;
          }
        }

        v105 = *(v103 + 24);
        v106 = 4 * v104;
        while (1)
        {
          v107 = *v105;
          if ((v107 & 0x80000000) != 0)
          {
            if (*(*this + 8 * ~v107))
            {
              goto LABEL_102;
            }
          }

          else if (!*(*this + 8 * v107))
          {
            goto LABEL_102;
          }

          ++v105;
          v106 -= 4;
          if (!v106)
          {
            goto LABEL_115;
          }
        }
      }

      goto LABEL_7;
    case 0x17u:
      v142 = *(*(a3 + 6) + 16);
      memset(&v545, 0, sizeof(v545));
      if (v142 < 1)
      {
        return v9 & 1;
      }

      v143 = 0;
      v144 = 0;
      v536 = 0;
      __src = 0;
      LODWORD(v145) = 0;
      v146 = 4 * v142;
      do
      {
        v147 = *(a3 + 15);
        v148 = *(a3 + 6);
        if (v147 == 23)
        {
          v149 = *(a3 + 6);
        }

        else
        {
          v149 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
        }

        v150 = *(v149[3] + v143);
        v151 = *(v149[6] + v143);
        if (v145 <= v150 + 1)
        {
          v152 = v150 + 1;
        }

        else
        {
          v152 = v145;
        }

        if (v152 <= v151 + 1)
        {
          v145 = (v151 + 1);
        }

        else
        {
          v145 = v152;
        }

        __x[0] = -1;
        v153 = v545.__end_ - v545.__begin_;
        if (v145 <= v153)
        {
          if (v145 < v153)
          {
            v545.__end_ = &v545.__begin_[v145];
          }
        }

        else
        {
          std::vector<int>::__append(&v545, v145 - v153, __x);
          v147 = *(a3 + 15);
          v148 = *(a3 + 6);
        }

        if (v147 == 23)
        {
          v154 = v148;
        }

        else
        {
          v154 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
        }

        v155 = *(v154[9] + v143);
        if ((v155 & 0x80000000) != 0)
        {
          if (*(*this + 8 * ~v155))
          {
            goto LABEL_148;
          }
        }

        else if (!*(*this + 8 * v155))
        {
          goto LABEL_148;
        }

        if (v150 == v151)
        {
          if (!v150)
          {
            goto LABEL_599;
          }

          ++__src;
        }

        else
        {
          ++v144;
          if (v150)
          {
            if (v545.__begin_[v150] != -1)
            {
              goto LABEL_599;
            }

            v545.__begin_[v150] = v151;
          }

          else
          {
            v535 = v144;
            v156 = v536;
            v157 = v536 >> 2;
            if (((v536 >> 2) + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v536 >> 2 != -1)
            {
              if (!(((v536 >> 2) + 1) >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v157) = v151;
            v536 = 4 * v157 + 4;
            memcpy(0, 0, v156);
            v144 = v535;
          }
        }

LABEL_148:
        v143 += 4;
      }

      while (v146 != v143);
      if (!v145)
      {
LABEL_542:
        v9 = 1;
        goto LABEL_600;
      }

      if (v536)
      {
        v427 = 0;
        for (j = 0; j != v536; ++j)
        {
          v429 = *j;
          ++v427;
          while (v429)
          {
            v429 = v545.__begin_[v429];
            ++v427;
            if (v429 == -1)
            {
              goto LABEL_599;
            }
          }
        }
      }

      else
      {
        v427 = 0;
      }

      if (v427 == v144)
      {
        if (__src - (v536 >> 2) + v144 + 1 == v145)
        {
          goto LABEL_542;
        }

        if (dword_2810BF998 < 1)
        {
LABEL_599:
          v9 = 0;
          goto LABEL_600;
        }

        if (!absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF990, dword_2810BF998))
        {
LABEL_616:
          v9 = 0;
          goto LABEL_600;
        }

        absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1545);
        v534 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__x, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v534, "Not all nodes are covered!", 0x1AuLL);
      }

      else
      {
        if (dword_2810BF980 < 1)
        {
          goto LABEL_599;
        }

        if (!absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF978, dword_2810BF980))
        {
          goto LABEL_616;
        }

        absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1536);
        v522 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__x, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v522, "count: ", 7uLL);
        LODWORD(v538) = v427;
        v523 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v522, &v538);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v523, " != num_used_arcs:", 0x12uLL);
        LODWORD(v538) = v144;
        absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v523, &v538);
      }

      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__x);
      v9 = 0;
LABEL_600:
      begin = v545.__begin_;
      if (v545.__begin_)
      {
        v545.__end_ = v545.__begin_;
LABEL_522:
        operator delete(begin);
      }

      return v9 & 1;
    case 0x18u:
      v387 = *(a3 + 6);
      v388 = *(v387 + 24);
      v389 = *(v387 + 88);
      v390 = *(v387 + 96);
      end = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
      v545.__begin_ = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
      v545.__end_ = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
      v545.__end_cap_.__value_ = 0;
      if (v388 < 1)
      {
        v426 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
LABEL_496:
        v472 = *v426;
        v473 = *(end + 10);
        if (v472 == end && v473 == 0)
        {
LABEL_517:
          v9 = 1;
        }

        else
        {
          v475 = 0;
          v476 = 0;
          while (1)
          {
            v477 = &v472[16 * v476];
            v475 += *(v477 + 3);
            if (v475 < v389 || v475 > v390)
            {
              break;
            }

            if (v472[11])
            {
              if (++v476 == v472[10])
              {
                v479 = v472;
                do
                {
                  v480 = *v479;
                  if (*(*v479 + 11))
                  {
                    goto LABEL_515;
                  }

                  v481 = v479[8];
                  v479 = *v479;
                }

                while (v481 == v480[10]);
                v472 = v480;
                v476 = v481;
              }
            }

            else
            {
              v482 = &v472[8 * (v476 + 1) + 256];
              do
              {
                v472 = *v482;
                v483 = *(*v482 + 11);
                v482 = *v482 + 256;
              }

              while (!v483);
              v476 = 0;
            }

LABEL_515:
            if (v472 == end && v476 == v473)
            {
              goto LABEL_517;
            }
          }

          if (dword_2810BF9B0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF9A8, dword_2810BF9B0))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1583);
            v529 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__x, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v529, "Reservoir level ", 0x10uLL);
            *&v538 = v475;
            v530 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v529, &v538);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v530, " is out of bounds at time", 0x19uLL);
            *&v538 = *(v477 + 2);
            absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v530, &v538);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(__x);
          }

          v9 = 0;
        }

        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::clear(&v545);
        return v9 & 1;
      }

      v392 = 0;
      v393 = *(v387 + 40);
      break;
    case 0x1Au:
      v306 = *(a3 + 6);
      v307 = *(v306 + 16);
      if (!v307)
      {
        return v9 & 1;
      }

      v308 = 0;
      v309 = *(v306 + 24);
      v310 = 4 * v307;
      while (1)
      {
        v311 = *v309;
        if ((v311 & 0x80000000) != 0)
        {
          v308 += *(*this + 8 * ~v311) == 0;
          ++v309;
          v310 -= 4;
          if (!v310)
          {
            goto LABEL_303;
          }
        }

        else
        {
          v308 += *(*this + 8 * v311) != 0;
          ++v309;
          v310 -= 4;
          if (!v310)
          {
LABEL_303:
            v9 = v308 < 2;
            return v9 & 1;
          }
        }
      }

    case 0x1Bu:
      v279 = *(a3 + 6);
      if (*(v279 + 48))
      {
        v280 = *(v279 + 48);
      }

      else
      {
        v280 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v281 = v280[8];
      v282 = *(v280 + 4);
      if (v282 < 1)
      {
        goto LABEL_285;
      }

      v283 = v280[3];
      v284 = v280[6];
      while (1)
      {
        v287 = *v283;
        v283 = (v283 + 4);
        v286 = v287;
        if ((v287 & 0x80000000) != 0)
        {
          v285 = *v284++;
          v281 = (v281 + v285 * -*(*this + 8 * ~v286));
          if (!--v282)
          {
            goto LABEL_285;
          }
        }

        else
        {
          v288 = *v284++;
          v281 = (v281 + v288 * *(*this + 8 * v286));
          if (!--v282)
          {
LABEL_285:
            v289 = *(v279 + 32);
            if (v289 < 1)
            {
              v295 = 0x8000000000000000;
            }

            else
            {
              v290 = 0;
              v293 = *(v279 + 24);
              v291 = (v279 + 24);
              v292 = v293;
              v294 = v293 + 7;
              v295 = 0x8000000000000000;
              do
              {
                v296 = (v294 + 8 * v290);
                if ((v292 & 1) == 0)
                {
                  v296 = v291;
                }

                v297 = *v296;
                v298 = *(*v296 + 64);
                v299 = *(v297 + 16);
                if (v299 >= 1)
                {
                  v300 = *(v297 + 24);
                  v301 = *(v297 + 48);
                  do
                  {
                    while (1)
                    {
                      v304 = *v300++;
                      v303 = v304;
                      if ((v304 & 0x80000000) == 0)
                      {
                        break;
                      }

                      v302 = *v301++;
                      v298 += v302 * -*(*this + 8 * ~v303);
                      if (!--v299)
                      {
                        goto LABEL_287;
                      }
                    }

                    v305 = *v301++;
                    v298 += v305 * *(*this + 8 * v303);
                    --v299;
                  }

                  while (v299);
                }

LABEL_287:
                if (v295 <= v298)
                {
                  v295 = v298;
                }

                ++v290;
              }

              while (v290 != v289);
            }

            v9 = v281 == v295;
            return v9 & 1;
          }
        }
      }

    case 0x1Du:
      v420 = *(a3 + 6);
      v421 = *(v420 + 16);
      if (!v421)
      {
        goto LABEL_490;
      }

      v204 = 0;
      v422 = *(v420 + 24);
      v423 = 4 * v421;
      while (1)
      {
        v424 = *v422;
        if ((v424 & 0x80000000) != 0)
        {
          v204 += *(*this + 8 * ~v424) == 0;
          ++v422;
          v423 -= 4;
          if (!v423)
          {
            goto LABEL_416;
          }
        }

        else
        {
          v204 += *(*this + 8 * v424) != 0;
          ++v422;
          v423 -= 4;
          if (!v423)
          {
LABEL_416:
            v9 = v204 == 1;
            return v9 & 1;
          }
        }
      }

    default:
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v545, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1659);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v545, "Unuspported constraint: ", 0x18uLL);
      v520 = operations_research::sat::ConstraintCaseName(v10);
      absl::lts_20240722::log_internal::LogMessage::operator<<(&v545, v520, v521);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v545);
  }

  while (1)
  {
    if (*(a3 + 15) == 24)
    {
      v395 = *(a3 + 6);
    }

    else
    {
      v395 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
    }

    v396 = (v395 + 2);
    v397 = v395[2];
    if (v397)
    {
      v396 = &v397[v392] + 7;
    }

    v398 = *v396;
    v399 = *(*v396 + 64);
    v400 = *(v398 + 16);
    if (v400 >= 1)
    {
      v401 = *(v398 + 24);
      v402 = *(v398 + 48);
      do
      {
        while (1)
        {
          v405 = *v401++;
          v404 = v405;
          if ((v405 & 0x80000000) == 0)
          {
            break;
          }

          v403 = *v402++;
          v399 += v403 * -*(*this + 8 * ~v404);
          if (!--v400)
          {
            goto LABEL_398;
          }
        }

        v406 = *v402++;
        v399 += v406 * *(*this + 8 * v404);
        --v400;
      }

      while (v400);
    }

LABEL_398:
    *__x = v399;
    if (v393 >= 1)
    {
      v407 = *(v395[6] + v392);
      if ((v407 & 0x80000000) != 0)
      {
        if (-*(*this + 8 * ~v407) != 1)
        {
          goto LABEL_387;
        }
      }

      else if (*(*this + 8 * v407) != 1)
      {
        goto LABEL_387;
      }
    }

    v409 = v395[8];
    v408 = v395 + 8;
    v410 = &v409[v392] + 7;
    if (v409)
    {
      v408 = v410;
    }

    v411 = *v408;
    v412 = (*v408)[8];
    v413 = *(*v408 + 4);
    if (v413 >= 1)
    {
      v414 = v411[3];
      v415 = v411[6];
      do
      {
        while (1)
        {
          v418 = *v414;
          v414 = (v414 + 4);
          v417 = v418;
          if ((v418 & 0x80000000) == 0)
          {
            break;
          }

          v416 = *v415;
          v415 = (v415 + 8);
          v412 = (v412 + v416 * -*(*this + 8 * ~v417));
          if (!--v413)
          {
            goto LABEL_386;
          }
        }

        v419 = *v415;
        v415 = (v415 + 8);
        v412 = (v412 + v419 * *(*this + 8 * v417));
        --v413;
      }

      while (v413);
    }

LABEL_386:
    v394 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>>::operator[]<long long>(&v545, __x);
    *v394 += v412;
LABEL_387:
    if (++v392 == v388)
    {
      v426 = v545.__begin_;
      end = v545.__end_;
      goto LABEL_496;
    }
  }
}

void sub_23CA11EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27)
{
  if (a15 >= 2)
  {
    operator delete((a17 - (a16 & 1) - 8));
    if (a21 < 2)
    {
LABEL_3:
      if (a25 < 2)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete((a27 - (a26 & 1) - 8));
      _Unwind_Resume(exception_object);
    }
  }

  else if (a21 < 2)
  {
    goto LABEL_3;
  }

  operator delete((a23 - (a22 & 1) - 8));
  if (a25 < 2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL operations_research::sat::SolutionIsFeasible(operations_research::sat::CpModelProto *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  if (a3 != v6)
  {
    if (dword_2810BF9C8 >= 1)
    {
      result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF9C0, dword_2810BF9C8);
      if (!result)
      {
        return result;
      }

      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v95, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1682);
      v18 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v95, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "Wrong number of variables (", 0x1BuLL);
      v93 = a3;
      v19 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v18, &v93);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, ") in the solution vector. It should be ", 0x27uLL);
      LODWORD(v93) = *(a1 + 8);
      v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v19, &v93);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, ".", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v95);
    }

    return 0;
  }

  if (v6 < 1)
  {
    goto LABEL_22;
  }

  v10 = *(a1 + 3);
  if (v10)
  {
    v21 = 0;
    v22 = v10 + 7;
    while (1)
    {
      v12 = v21;
      v23 = *(v22 + 8 * v21);
      v24 = *(v23 + 16);
      if (v24 < 1)
      {
        break;
      }

      v25 = 0;
      v26 = a2[v21];
      v27 = *(v23 + 24);
      while (*(v27 + 8 * v25) > v26 || *(v27 + 8 * (v25 + 1)) < v26)
      {
        v25 += 2;
        if (v25 >= v24)
        {
          goto LABEL_46;
        }
      }

      if (++v21 == v6)
      {
        goto LABEL_22;
      }
    }

LABEL_46:
    v46 = dword_2810BF9E0;
    if (dword_2810BF9E0 >= 1)
    {
      goto LABEL_55;
    }

    return 0;
  }

  v11 = *(v10 + 16);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(v10 + 24);
    while (2)
    {
      v14 = 0;
      v15 = a2[v12];
      while (*(v13 + 8 * v14) > v15 || *(v13 + 8 * (v14 + 1)) < v15)
      {
        v14 += 2;
        if (v14 >= v11)
        {
          v21 = v12;
          goto LABEL_46;
        }
      }

      if (++v12 != v6)
      {
        continue;
      }

      break;
    }

LABEL_22:
    v95 = 0;
    v96 = 0;
    v97 = 0;
    if ((a3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      if (((8 * a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (*(a1 + 14) >= 1)
    {
      v28 = 0;
      v29 = (a1 + 48);
      if (a4)
      {
        v30 = a5 == 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = !v30;
      v32 = (a4 + 24);
      v33 = (a1 + 24);
      v34 = 8;
      while (1)
      {
        v35 = *(a1 + 6);
        v36 = (v35 & 1) != 0 ? (v35 + v34 - 1) : (a1 + 48);
        {
          break;
        }

        ++v28;
        v34 += 8;
        if (v28 >= *(a1 + 14))
        {
          goto LABEL_38;
        }
      }

      if (dword_2810BF9F8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF9F0, dword_2810BF9F8))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v91, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1706);
        v81 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v91, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v81, "Failing constraint #", 0x14uLL);
        LODWORD(v93) = v28;
        v82 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v81, &v93);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v82, " : ", 3uLL);
        google::protobuf::Message::ShortDebugString(&v93);
      }

      if (v31)
      {
        v47 = *(a4 + 32);
        if (v47)
        {
          if ((v47 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v66 = *a5;
        v67 = a5[1];
        v68 = v67 - *a5;
        if (v67 != *a5)
        {
          v69 = 0;
          v70 = 0;
          v71 = v68 >> 2;
          do
          {
            *(4 * *(v66 + 4 * v69)) = v70++;
            v69 = v70;
          }

          while (v71 > v70);
        }

        if (*v29)
        {
          v72 = (*v29 + v34 - 1);
        }

        else
        {
          v72 = v29;
        }

        operations_research::sat::UsedVariables(&v93, *v72);
        v73 = v93;
        v74 = v94;
        if (v93 != v94)
        {
          do
          {
            v75 = *v73;
            if (dword_2810BFA10 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFA08, dword_2810BFA10))
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v92, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1714);
              v85 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v92, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v85, "var: ", 5uLL);
              LODWORD(v91[0]) = v75;
              v86 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v85, v91);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v86, " mapped_to: ", 0xCuLL);
              LODWORD(v91[0]) = *(4 * v75);
              v87 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v86, v91);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v87, " value: ", 8uLL);
              v91[0] = a2[v75];
              v88 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v87, v91);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v88, " initial_domain: ", 0x11uLL);
              if (*v33)
              {
                v77 = *v33 + 8 * v75 + 7;
              }

              else
              {
                v77 = v33;
              }

              operations_research::Domain::FromFlatSpanOfIntervals(*(*v77 + 24), *(*v77 + 16), v91, v76);
              v89 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(v88, v91);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v89, " postsolved_domain: ", 0x14uLL);
              if (*v32)
              {
                v79 = *v32 + 8 * v75 + 7;
              }

              else
              {
                v79 = v32;
              }

              operations_research::Domain::FromFlatSpanOfIntervals(*(*v79 + 24), *(*v79 + 16), v90, v78);
              absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(v89, v90);
              if (v90[0])
              {
                operator delete(v90[1]);
              }

              if (v91[0])
              {
                operator delete(v91[1]);
              }

              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v92);
            }

            ++v73;
          }

          while (v73 != v74);
          v73 = v93;
        }

        if (v73)
        {
          v94 = v73;
          operator delete(v73);
        }
      }

      else
      {
        if (*v29)
        {
          v51 = (*v29 + v34 - 1);
        }

        else
        {
          v51 = v29;
        }

        operations_research::sat::UsedVariables(&v93, *v51);
        v52 = v93;
        v53 = v94;
        if (v93 != v94)
        {
          do
          {
            v54 = *v52;
            if (dword_2810BFA28 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFA20, dword_2810BFA28))
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v91, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1722);
              v55 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v91, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v55, "var: ", 5uLL);
              LODWORD(v90[0]) = v54;
              v56 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v55, v90);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v56, " value: ", 8uLL);
              v90[0] = a2[v54];
              absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v56, v90);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v91);
            }

            ++v52;
          }

          while (v52 != v53);
          v52 = v93;
        }

        if (v52)
        {
          v94 = v52;
          operator delete(v52);
        }
      }

      goto LABEL_110;
    }

LABEL_38:
    if (*(a1 + 16))
    {
      v37 = *(a1 + 16);
      v38 = *(v37 + 40);
      if (v38 < 1)
      {
        v39 = 0;
      }

      else
      {
        v39 = 0;
        v40 = *(v37 + 24);
        v41 = *(v37 + 48);
        do
        {
          while (1)
          {
            v44 = *v40++;
            v43 = v44;
            if ((v44 & 0x80000000) == 0)
            {
              break;
            }

            v42 = *v41++;
            v39 += v42 * -*(v95 + ~v43);
            if (!--v38)
            {
              goto LABEL_67;
            }
          }

          v45 = *v41++;
          v39 += v45 * *(v95 + v43);
          --v38;
        }

        while (v38);
      }

LABEL_67:
      v57 = *(v37 + 64);
      if (v57)
      {
        if (v57 < 1)
        {
LABEL_79:
          if (dword_2810BFA40 >= 1)
          {
            result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFA38, dword_2810BFA40);
            if (!result)
            {
              goto LABEL_111;
            }

            absl::lts_20240722::log_internal::LogMessage::LogMessage(v91, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1742);
            v62 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v91, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v62, "Objective value ", 0x10uLL);
            v93 = v39;
            v63 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v62, &v93);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v63, " not in domain! ", 0x10uLL);
            v65 = *(a1 + 16);
            if (!v65)
            {
              v65 = &operations_research::sat::_CpObjectiveProto_default_instance_;
            }

            operations_research::Domain::FromFlatSpanOfIntervals(v65[9], *(v65 + 16), &v93, v64);
            absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(v63, &v93);
            operations_research::sat::SolutionIsFeasible(&v93, v91);
          }

LABEL_110:
          result = 0;
LABEL_111:
          if (v95)
          {
            v96 = v95;
            v80 = result;
            operator delete(v95);
            return v80;
          }

          return result;
        }

        v58 = 0;
        v59 = *(v37 + 72);
        while (*(v59 + 8 * v58) > v39 || *(v59 + 8 * (v58 + 1)) < v39)
        {
          v58 += 2;
          if (v58 >= v57)
          {
            goto LABEL_79;
          }
        }
      }

      v60 = *(v37 + 88);
      if (*(v37 + 96) == 0.0)
      {
        v61 = 1.0;
      }

      else
      {
        v61 = *(v37 + 96);
      }

      if (dword_2810BFA58 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810BFA50, dword_2810BFA58))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v93, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1752);
        v83 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v93, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v83, "Checker inner objective = ", 0x1AuLL);
        v91[0] = v39;
        absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v83, v91);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v93);
      }

      if (dword_2810BFA70 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810BFA68, dword_2810BFA70))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v93, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1753);
        v84 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v93, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v84, "Checker scaled objective = ", 0x1BuLL);
        *v91 = v61 * (v60 + v39);
        absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v84, v91);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v93);
      }
    }

    result = 1;
    goto LABEL_111;
  }

  v12 = 0;
  v21 = 0;
  v46 = dword_2810BF9E0;
  if (dword_2810BF9E0 < 1)
  {
    return 0;
  }

LABEL_55:
  result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF9D8, v46);
  if (result)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v93, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1691);
    v48 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v93, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v48, "Variable #", 0xAuLL);
    LODWORD(v95) = v21;
    v49 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v48, &v95);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v49, " has value ", 0xBuLL);
    v95 = a2[v12];
    v50 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v49, &v95);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v50, " which do not fall in its domain: ", 0x22uLL);
    google::protobuf::Message::ShortDebugString(&v95);
  }

  return result;
}

void sub_23CA12B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, void *a19, void *__p, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a19)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a14);
  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(uint64_t a1, unint64_t *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  operations_research::operator<<(v4, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CA12D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CA12D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

unint64_t operations_research::sat::anonymous namespace::MinOfExpression<operations_research::sat::LinearExpressionProto>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  v4 = *(a2 + 16);
  if (v4 >= 1)
  {
    v5 = *(a2 + 24);
    v6 = *(a2 + 48);
    v9 = *(a1 + 24);
    v7 = (a1 + 24);
    v8 = v9;
    v10 = v9 + 7;
    do
    {
      v17 = *v5++;
      v16 = v17;
      v19 = *v6++;
      v18 = v19;
      if (~v16 <= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = ~v16;
      }

      v21 = (v10 + 8 * v20);
      if ((v8 & 1) == 0)
      {
        v21 = v7;
      }

      v22 = *v21;
      if (v18 < 0)
      {
        if (v16 < 0)
        {
          v11 = -**(v22 + 24);
        }

        else
        {
          v11 = *(*(v22 + 24) + 8 * (*(v22 + 16) - 1));
        }

        v12 = (v11 >> 63) ^ 0x8000000000000000;
      }

      else
      {
        if (v16 < 0)
        {
          v11 = -*(*(v22 + 24) + 8 * (*(v22 + 16) - 1));
        }

        else
        {
          v11 = **(v22 + 24);
        }

        v12 = (v11 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((v11 * v18) >> 64 == (v11 * v18) >> 63)
      {
        v13 = v11 * v18;
      }

      else
      {
        v13 = v12;
      }

      v14 = __OFADD__(result, v13);
      v15 = result + v13;
      if (v14)
      {
        result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        result = v15;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t operations_research::sat::anonymous namespace::ExpressionFixedValue(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::LinearExpressionProto *a3)
{
  result = *(a2 + 8);
  v5 = *(a2 + 4);
  if (v5 >= 1)
  {
    v6 = *(a2 + 3);
    v7 = *(a2 + 6);
    v8 = *(this + 3);
    if (v8)
    {
      v18 = v8 + 7;
      do
      {
        v24 = *v6++;
        v23 = v24;
        v26 = *v7++;
        v25 = v26;
        if (~v23 <= v23)
        {
          v27 = v23;
        }

        else
        {
          v27 = ~v23;
        }

        v28 = *(v18 + 8 * v27);
        if (v25 < 0)
        {
          if (v23 < 0)
          {
            v19 = -**(v28 + 24);
          }

          else
          {
            v19 = *(*(v28 + 24) + 8 * (*(v28 + 16) - 1));
          }

          v20 = (v19 >> 63) ^ 0x8000000000000000;
        }

        else
        {
          if (v23 < 0)
          {
            v19 = -*(*(v28 + 24) + 8 * (*(v28 + 16) - 1));
          }

          else
          {
            v19 = **(v28 + 24);
          }

          v20 = (v19 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v19 * v25) >> 64 == (v19 * v25) >> 63)
        {
          v21 = v19 * v25;
        }

        else
        {
          v21 = v20;
        }

        v12 = __OFADD__(result, v21);
        v22 = result + v21;
        if (v12)
        {
          result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          result = v22;
        }

        --v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v15 = *v6++;
        v14 = v15;
        v17 = *v7++;
        v16 = v17;
        if (v17 < 0)
        {
          if (v14 < 0)
          {
            v9 = -**(v8 + 24);
          }

          else
          {
            v9 = *(*(v8 + 24) + 8 * (*(v8 + 16) - 1));
          }

          v10 = (v9 >> 63) ^ 0x8000000000000000;
        }

        else
        {
          if (v14 < 0)
          {
            v9 = -*(*(v8 + 24) + 8 * (*(v8 + 16) - 1));
          }

          else
          {
            v9 = **(v8 + 24);
          }

          v10 = (v9 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v9 * v16) >> 64 == (v9 * v16) >> 63)
        {
          v11 = v9 * v16;
        }

        else
        {
          v11 = v10;
        }

        v12 = __OFADD__(result, v11);
        v13 = result + v11;
        if (v12)
        {
          result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          result = v13;
        }

        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void operations_research::sat::anonymous namespace::DomainOfRef(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, int a3, __n128 a4)
{
  if (~a3 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = ~a3;
  }

  v8 = *(a2 + 3);
  v7 = a2 + 24;
  v9 = v8 + 8 * v6 + 7;
  if ((v8 & 1) == 0)
  {
    v9 = v7;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(*(*v9 + 24), *(*v9 + 16), &v10, a4);
  if (a3 < 0)
  {
    operations_research::Domain::Negation(this, &v10);
  }

  else
  {
    *this = 0;
    if (v10 >= 2)
    {
      if (v10)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(this, &v10);
      }

      else
      {
        *this = v10;
        *(this + 8) = *__p;
      }
    }
  }

  if (v10)
  {
    operator delete(__p[0]);
  }
}

void sub_23CA13094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (*v11)
  {
    operator delete(*(v11 + 8));
    if ((a10 & 1) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a10 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::EmplaceDecomposable::operator()<std::pair<long long,long long>,std::piecewise_construct_t const&,std::tuple<std::pair<long long,long long>&&>,std::tuple<long long &&>>@<Q0>(unint64_t **a1@<X0>, uint64_t *a2@<X1>, __n128 **a3@<X3>, unint64_t **a4@<X4>, uint64_t a5@<X8>)
{
  v5 = 0;
  v6 = *a1;
  _X10 = (*a1)[2];
  __asm { PRFM            #4, [X10] }

  v12 = *a2;
  v13 = a2[1];
  v14 = v13 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2)));
  v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
  v16 = **a1;
  result.n128_u64[0] = vdup_n_s8(v15 & 0x7F);
  v18 = ((v15 >> 7) ^ (_X10 >> 12)) & v16;
  v19 = *(_X10 + v18);
  v20 = vceq_s8(v19, result.n128_u64[0]);
  if (v20)
  {
LABEL_2:
    while (1)
    {
      v21 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v16;
      v22 = (v6[3] + 24 * v21);
      if (*v22 == v12 && v22[1] == v13)
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    *a5 = _X10 + v21;
    *(a5 + 8) = v22;
    *(a5 + 16) = 0;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v24 = vceq_s8(v19, 0x8080808080808080);
      if (v24)
      {
        break;
      }

      v5 += 8;
      v18 = (v5 + v18) & v16;
      v19 = *(_X10 + v18);
      v20 = vceq_s8(v19, result.n128_u64[0]);
      if (v20)
      {
        goto LABEL_2;
      }
    }

    inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v6, v15, (v18 + (__clz(__rbit64(v24)) >> 3)) & v16, v5, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::GetPolicyFunctions(void)::value);
    v29 = (v6[3] + 24 * inserted);
    *a5 = v6[2] + inserted;
    *(a5 + 8) = v29;
    *(a5 + 16) = 1;
    v30 = *a4;
    result = **a3;
    *v29 = result;
    v29[1].n128_u64[0] = *v30;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t operations_research::sat::anonymous namespace::AppendToOverflowValidator(uint64_t this, const operations_research::sat::LinearExpressionProto *a2, operations_research::sat::LinearExpressionProto *a3)
{
  v3 = *(a2 + 4);
  v4 = (a2 + 16);
  v5 = *(this + 24);
  v6 = *(this + 16);
  v7 = v3 + v6;
  if (v3 + v6 > *(a2 + 5))
  {
    v42 = this;
    v43 = a2;
    google::protobuf::RepeatedField<int>::Grow(a2 + 16, *(a2 + 4), (v3 + v6));
    this = v42;
    a2 = v43;
    v3 = *v4;
    v8 = *(v43 + 3);
    *(v43 + 4) = v7;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *(a2 + 3);
    *(a2 + 4) = v7;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v9 = (v8 + 4 * v3);
  v10 = (v6 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v10 < 7)
  {
    v11 = v5;
    do
    {
LABEL_9:
      v19 = *v11++;
      *v9++ = v19;
    }

    while (v11 != (v5 + 4 * v6));
    goto LABEL_10;
  }

  v12 = 4 * v3 + v8;
  v11 = v5;
  if ((v12 - v5) < 0x20)
  {
    goto LABEL_9;
  }

  v13 = v10 + 1;
  v14 = (v10 + 1) & 0x7FFFFFFFFFFFFFF8;
  v9 += v14;
  v11 = (v5 + 4 * v14);
  v15 = (v5 + 16);
  v16 = (v12 + 16);
  v17 = v14;
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
  if (v13 != v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  v20 = *(a2 + 10);
  v21 = (a2 + 40);
  v22 = *(this + 48);
  v23 = *(this + 40);
  v24 = v20 + v23;
  if (v20 + v23 > *(a2 + 11))
  {
    v44 = this;
    v45 = a2;
    google::protobuf::RepeatedField<long long>::Grow(a2 + 40, *(a2 + 10), (v20 + v23));
    this = v44;
    a2 = v45;
    v20 = *v21;
    v25 = *(v45 + 6);
    *(v45 + 10) = v24;
    if (!v23)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v25 = *(a2 + 6);
    *(a2 + 10) = v24;
    if (!v23)
    {
      goto LABEL_19;
    }
  }

  v26 = (v25 + 8 * v20);
  v27 = (v23 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v27 < 7)
  {
    v28 = v22;
    do
    {
LABEL_18:
      v36 = *v28++;
      *v26++ = v36;
    }

    while (v28 != (v22 + 8 * v23));
    goto LABEL_19;
  }

  v29 = 8 * v20 + v25;
  v28 = v22;
  if ((v29 - v22) < 0x20)
  {
    goto LABEL_18;
  }

  v30 = v27 + 1;
  v31 = (v27 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v26 += v31;
  v28 = (v22 + 8 * v31);
  v32 = (v22 + 16);
  v33 = (v29 + 16);
  v34 = v31;
  do
  {
    v35 = *v32;
    *(v33 - 1) = *(v32 - 1);
    *v33 = v35;
    v32 += 2;
    v33 += 2;
    v34 -= 4;
  }

  while (v34);
  if (v30 != v31)
  {
    goto LABEL_18;
  }

LABEL_19:
  v37 = *(a2 + 8);
  if (v37 < 0)
  {
    v37 = -v37;
  }

  v38 = *(this + 64);
  if (v38 < 0)
  {
    v38 = -v38;
  }

  v39 = (v37 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  v40 = __OFADD__(v37, v38);
  v41 = v37 + v38;
  if (v40)
  {
    v41 = v39;
  }

  *(a2 + 8) = v41;
  return this;
}

unint64_t operations_research::sat::anonymous namespace::IntervalSizeMax(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2)
{
  v3 = (this + 48);
  v4 = *(this + 6);
  if (v4)
  {
    v3 = (v4 + 8 * a2 + 7);
  }

  v5 = *v3;
  if (*(v5 + 60) == 19)
  {
    v6 = *(v5 + 48);
  }

  else
  {
    v6 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  v7 = v6[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  result = v8[8];
  v10 = *(v8 + 4);
  if (v10 >= 1)
  {
    v11 = v8[3];
    v12 = v8[6];
    v13 = *(this + 3);
    if (v13)
    {
      v23 = v13 + 7;
      do
      {
        v29 = *v11++;
        v28 = v29;
        v31 = *v12++;
        v30 = v31;
        if (~v28 <= v28)
        {
          v32 = v28;
        }

        else
        {
          v32 = ~v28;
        }

        v33 = *(v23 + 8 * v32);
        if (v30 < 0)
        {
          if (v28 < 0)
          {
            v24 = -*(*(v33 + 24) + 8 * (*(v33 + 16) - 1));
          }

          else
          {
            v24 = **(v33 + 24);
          }

          v25 = (v24 >> 63) ^ 0x8000000000000000;
        }

        else
        {
          if (v28 < 0)
          {
            v24 = -**(v33 + 24);
          }

          else
          {
            v24 = *(*(v33 + 24) + 8 * (*(v33 + 16) - 1));
          }

          v25 = (v24 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v24 * v30) >> 64 == (v24 * v30) >> 63)
        {
          v26 = v24 * v30;
        }

        else
        {
          v26 = v25;
        }

        v17 = __OFADD__(result, v26);
        v27 = result + v26;
        if (v17)
        {
          result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          result = v27;
        }

        --v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v20 = *v11++;
        v19 = v20;
        v22 = *v12++;
        v21 = v22;
        if (v22 < 0)
        {
          if (v19 < 0)
          {
            v14 = -*(*(v13 + 24) + 8 * (*(v13 + 16) - 1));
          }

          else
          {
            v14 = **(v13 + 24);
          }

          v15 = (v14 >> 63) ^ 0x8000000000000000;
        }

        else
        {
          if (v19 < 0)
          {
            v14 = -**(v13 + 24);
          }

          else
          {
            v14 = *(*(v13 + 24) + 8 * (*(v13 + 16) - 1));
          }

          v15 = (v14 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v14 * v21) >> 64 == (v14 * v21) >> 63)
        {
          v16 = v14 * v21;
        }

        else
        {
          v16 = v15;
        }

        v17 = __OFADD__(result, v16);
        v18 = result + v16;
        if (v17)
        {
          result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          result = v18;
        }

        --v10;
      }

      while (v10);
    }
  }

  return result;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 8 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 8 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 8 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl(result, 3uLL);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  v6 = a1[2];
  if (v5)
  {
    v7 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (105 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6))) & 0x7F;
  }

  else
  {
    v7 = 0x80;
  }

  v10 = v3 & 1;
  v11 = v2 < 2;
  v12 = v5;
  v8 = a1[3];
  v9[0] = v6;
  v9[1] = v8;
  v9[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(v9, a1, v7);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,false>(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 8;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < *(v10 + 1))
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = *(v10 + 1);
          *(v10 + 1) = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    switch(v13)
    {
      case 3:
        v91 = *(v10 + 2);
        v92 = *v10;
        if (v91 >= *v10 && (v92 < v91 || *(v10 + 3) >= *(v10 + 1)))
        {
          v124 = *(a2 - 2);
          if (v124 >= v91 && (v91 < v124 || *(a2 - 1) >= *(v10 + 3)))
          {
            return result;
          }

          *(v10 + 2) = v124;
          *(a2 - 2) = v91;
          v9 = v10 + 24;
          v125 = *(v10 + 3);
          *(v10 + 3) = *(a2 - 1);
          *(a2 - 1) = v125;
          v126 = *(v10 + 2);
          v127 = *v10;
          if (v126 >= *v10 && (v127 < v126 || *(v10 + 3) >= *(v10 + 1)))
          {
            return result;
          }

          *v10 = v126;
          *(v10 + 2) = v127;
          v94 = (v10 + 8);
LABEL_236:
          v138 = *v94;
          *v94 = *v9;
          *v9 = v138;
          return result;
        }

        v93 = *(a2 - 2);
        if (v93 < v91)
        {
LABEL_156:
          *v10 = v93;
          v94 = (v10 + 8);
          *(a2 - 2) = v92;
          goto LABEL_236;
        }

        if (v91 >= v93)
        {
          v135 = *(v10 + 3);
          if (*(a2 - 1) < v135)
          {
            goto LABEL_156;
          }
        }

        else
        {
          v135 = *(v10 + 3);
        }

        v136 = *(v10 + 1);
        *(v10 + 3) = v136;
        *v10 = v91;
        *(v10 + 1) = v135;
        *(v10 + 2) = v92;
        v137 = *(a2 - 2);
        if (v137 >= v92 && (v92 < v137 || *(a2 - 1) >= v136))
        {
          return result;
        }

        *(v10 + 2) = v137;
        *(a2 - 2) = v92;
        v94 = (v10 + 24);
        goto LABEL_236;
      case 4:

        return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
      case 5:
        result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
        v95 = *(a2 - 2);
        v96 = *(v10 + 6);
        if (v95 < v96 || v96 >= v95 && *(a2 - 1) < *(v10 + 7))
        {
          *(v10 + 6) = v95;
          *(a2 - 2) = v96;
          v97 = *(v10 + 7);
          *(v10 + 7) = *(a2 - 1);
          *(a2 - 1) = v97;
          v98 = *(v10 + 6);
          v99 = *(v10 + 4);
          if (v98 >= v99)
          {
            if (v99 < v98)
            {
              return result;
            }

            v101 = *(v10 + 7);
            v100 = *(v10 + 5);
            if (v101 >= v100)
            {
              return result;
            }
          }

          else
          {
            v100 = *(v10 + 5);
            v101 = *(v10 + 7);
          }

          *(v10 + 4) = v98;
          *(v10 + 5) = v101;
          *(v10 + 6) = v99;
          *(v10 + 7) = v100;
          v102 = *(v10 + 2);
          if (v98 >= v102)
          {
            if (v102 < v98)
            {
              return result;
            }

            v103 = *(v10 + 3);
            if (v101 >= v103)
            {
              return result;
            }
          }

          else
          {
            v103 = *(v10 + 3);
          }

          *(v10 + 2) = v98;
          *(v10 + 3) = v101;
          *(v10 + 4) = v102;
          *(v10 + 5) = v103;
          v104 = *v10;
          if (v98 >= *v10)
          {
            if (v104 < v98)
            {
              return result;
            }

            v105 = *(v10 + 1);
            if (v101 >= v105)
            {
              return result;
            }
          }

          else
          {
            v105 = *(v10 + 1);
          }

          *v10 = v98;
          *(v10 + 1) = v101;
          *(v10 + 2) = v104;
          *(v10 + 3) = v105;
          return result;
        }

        return result;
    }

LABEL_11:
    if (v13 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v120 = (v13 - 2) >> 1;
        v121 = v120 + 1;
        v122 = (v8 + 16 * v120);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *>(v8, a3, v13, v122);
          v122 -= 2;
          --v121;
        }

        while (v121);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<long long,long long> *>(v8, a2, a3, v13);
          a2 -= 16;
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = &v10[16 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= *(v10 + 1)))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]) || (*v14 = v24, *(a2 - 2) = v16, v25 = (v14 + 1), v26 = v14[1], v14[1] = *(a2 - 1), *(a2 - 1) = v26, v27 = *v14, v28 = *v10, *v14 >= *v10) && (v28 < v27 || *v25 >= *(v10 + 1)))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = *(v10 + 2);
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= *(v10 + 3)))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)) || (*v39 = v44, *(a2 - 4) = v40, v45 = (v14 - 1), v46 = *(v14 - 1), *(v14 - 1) = *(a2 - 3), *(a2 - 3) = v46, v47 = *v39, v48 = *(v10 + 2), *v39 >= v48) && (v48 < v47 || *v45 >= *(v10 + 3)))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = *(v10 + 4);
              if (v57 >= v58 && (v58 < v56 || v55[1] >= *(v10 + 5)))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]) || (*v55 = v61, *(a2 - 6) = v56, v62 = (v55 + 1), v63 = v55[1], v55[1] = *(a2 - 5), *(a2 - 5) = v63, v64 = *v55, v65 = *(v10 + 4), *v55 >= v65) && (v65 < v64 || *v62 >= *(v10 + 5)))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 < v70)
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                      goto LABEL_92;
                    }

                    if (v70 < v75 || (v77 = v55[1], v76 = v15[1], v77 >= v76))
                    {
LABEL_104:
                      v82 = *v10;
                      *v10 = v70;
                      v23 = (v10 + 8);
                      *v15 = v82;
                      v30 = (v15 + 1);
                      goto LABEL_105;
                    }

LABEL_92:
                    *v15 = v75;
                    v15[1] = v77;
                    v78 = v15 + 1;
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = v39 + 1;
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
                    goto LABEL_104;
                  }

                  v72 = *v55;
                  if (*v55 >= v70)
                  {
                    if (v70 >= v72)
                    {
                      v79 = v15[1];
                      if (v55[1] < v79)
                      {
                        goto LABEL_87;
                      }
                    }

                    else
                    {
                      v79 = v15[1];
                    }

                    *v15 = v71;
                    v80 = v39[1];
                    v15[1] = v80;
                    *v39 = v70;
                    v39[1] = v79;
                    if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                    {
                      v70 = v71;
                      goto LABEL_104;
                    }

                    *v15 = v72;
                    *v55 = v71;
                    v74 = v55 + 1;
                    v73 = v15 + 1;
                  }

                  else
                  {
LABEL_87:
                    *v39 = v72;
                    v73 = v39 + 1;
                    *v55 = v71;
                    v74 = v55 + 1;
                  }

                  v78 = v74;
                  goto LABEL_103;
                }

                *(v10 + 4) = v64;
                *v55 = v65;
                v60 = (v10 + 40);
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 >= v56)
              {
                if (v56 >= v59)
                {
                  v66 = v55[1];
                  if (*(a2 - 5) < v66)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  v66 = v55[1];
                }

                v67 = *(v10 + 5);
                *(v10 + 4) = v56;
                *(v10 + 5) = v66;
                *v55 = v58;
                v55[1] = v67;
                v60 = v55 + 1;
                v68 = *(a2 - 6);
                if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
                {
                  goto LABEL_85;
                }

                *v55 = v68;
                *(a2 - 6) = v58;
              }

              else
              {
LABEL_69:
                *(v10 + 4) = v59;
                *(a2 - 6) = v58;
                v60 = (v10 + 40);
              }

              v62 = a2 - 40;
              goto LABEL_84;
            }

            *(v10 + 2) = v47;
            *v39 = v48;
            v43 = (v10 + 24);
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 >= v40)
          {
            if (v40 >= v42)
            {
              v49 = *(v14 - 1);
              if (*(a2 - 3) < v49)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v49 = *(v14 - 1);
            }

            v52 = *(v10 + 3);
            *(v10 + 2) = v40;
            *(v10 + 3) = v49;
            *v39 = v41;
            *(v14 - 1) = v52;
            v43 = v14 - 1;
            v53 = *(a2 - 4);
            if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
            {
              goto LABEL_67;
            }

            *v39 = v53;
            *(a2 - 4) = v41;
          }

          else
          {
LABEL_47:
            *(v10 + 2) = v42;
            *(a2 - 4) = v41;
            v43 = (v10 + 24);
          }

          v45 = a2 - 24;
          goto LABEL_66;
        }

        *v10 = v27;
        v19 = (v10 + 8);
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 >= v16)
      {
        if (v16 >= v18)
        {
          v34 = v14[1];
          if (*(a2 - 1) < v34)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v34 = v14[1];
        }

        v36 = *(v10 + 1);
        *v10 = v16;
        *(v10 + 1) = v34;
        *v14 = v17;
        v14[1] = v36;
        v19 = v14 + 1;
        v37 = *(a2 - 2);
        if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
        {
          goto LABEL_45;
        }

        *v14 = v37;
      }

      else
      {
LABEL_16:
        *v10 = v18;
        v19 = (v10 + 8);
      }

      *(a2 - 2) = v17;
      v25 = a2 - 8;
      goto LABEL_44;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && *(v10 + 1) < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = *(v10 + 1);
        if (*(a2 - 1) < v35)
        {
LABEL_19:
          *v15 = v22;
          *(a2 - 2) = v21;
          v23 = v15 + 1;
LABEL_61:
          v30 = a2 - 8;
          goto LABEL_105;
        }
      }

      else
      {
        v35 = *(v10 + 1);
      }

      v50 = v15[1];
      *v15 = v20;
      v15[1] = v35;
      *v10 = v21;
      *(v10 + 1) = v50;
      v23 = (v10 + 8);
      v51 = *(a2 - 2);
      if (v51 < v21 || v21 >= v51 && *(a2 - 1) < v50)
      {
        *v10 = v51;
        *(a2 - 2) = v21;
        goto LABEL_61;
      }
    }

    else
    {
      v29 = *(a2 - 2);
      if (v29 < v20 || v20 >= v29 && *(a2 - 1) < *(v10 + 1))
      {
        *v10 = v29;
        *(a2 - 2) = v20;
        v30 = v10 + 8;
        v31 = *(v10 + 1);
        *(v10 + 1) = *(a2 - 1);
        *(a2 - 1) = v31;
        v32 = *v10;
        v33 = *v15;
        if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
        {
          *v15 = v32;
          *v10 = v33;
          v23 = v15 + 1;
LABEL_105:
          v83 = *v23;
          *v23 = *v30;
          *v30 = v83;
        }
      }
    }

    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= *(v10 + 1)))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,long long> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
LABEL_146:
        a5 = 0;
        a4 = -v12;
        goto LABEL_3;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,long long> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *>(v10, v85);
    v10 = (v85 + 2);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = (v85 + 2);
      goto LABEL_146;
    }
  }

  v106 = v10 + 16;
  v108 = v10 == a2 || v106 == a2;
  if (a5)
  {
    if (v108)
    {
      return result;
    }

    v109 = 0;
    v110 = v10;
LABEL_177:
    v112 = v110;
    v110 = v106;
    v113 = *(v112 + 2);
    v114 = *v112;
    if (v113 >= *v112)
    {
      if (v114 < v113)
      {
        goto LABEL_176;
      }

      v115 = *(v112 + 3);
      if (v115 >= *(v112 + 1))
      {
        goto LABEL_176;
      }
    }

    else
    {
      v115 = *(v112 + 3);
    }

    *(v112 + 2) = v114;
    *(v110 + 1) = *(v112 + 1);
    v111 = v10;
    if (v112 == v10)
    {
      goto LABEL_175;
    }

    v116 = v109;
    while (1)
    {
      v119 = *&v10[v116 - 16];
      if (v113 < v119)
      {
        v117 = *&v10[v116 - 8];
      }

      else
      {
        if (v119 < v113)
        {
          v111 = &v10[v116];
LABEL_175:
          *v111 = v113;
          *(v111 + 1) = v115;
LABEL_176:
          v106 = v110 + 16;
          v109 += 16;
          if (v110 + 16 == a2)
          {
            return result;
          }

          goto LABEL_177;
        }

        v117 = *&v10[v116 - 8];
        if (v115 >= v117)
        {
          v111 = v112;
          goto LABEL_175;
        }
      }

      v112 -= 16;
      v118 = &v10[v116];
      *v118 = v119;
      *(v118 + 1) = v117;
      v116 -= 16;
      if (!v116)
      {
        v111 = v10;
        goto LABEL_175;
      }
    }
  }

  if (!v108)
  {
    for (i = (v10 + 8); ; i += 2)
    {
      v129 = v8;
      v8 = v106;
      v130 = v129[2];
      v131 = *v129;
      if (v130 < *v129)
      {
        break;
      }

      if (v131 >= v130)
      {
        v132 = v129[3];
        if (v132 < v129[1])
        {
          goto LABEL_213;
        }
      }

LABEL_210:
      v106 = (v8 + 16);
      if ((v8 + 16) == a2)
      {
        return result;
      }
    }

    v132 = v129[3];
LABEL_213:
    for (j = i; ; j -= 2)
    {
      v134 = *j;
      j[1] = v131;
      j[2] = v134;
      v131 = *(j - 3);
      if (v130 >= v131 && (v131 < v130 || v132 >= *(j - 2)))
      {
        break;
      }
    }

    *(j - 1) = v130;
    *j = v132;
    goto LABEL_210;
  }

  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = result + 1;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = a2 + 1;
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = a3 + 1;
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = result + 1;
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,long long> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 1))
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= i[1]));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v2 < v4 || v4 >= v2 && v3 < a2[1]; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v2 >= v12 && (v9 < v2 || v3 >= i[1]));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
        }

        while (v2 < v13);
      }

      while (v10 >= v2 && v3 < a2[1]);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,long long> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v3 < v5 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && v13[1] < v4);
      do
      {
        v17 = *(v14 - 2);
        v14 -= 2;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *>(uint64_t *a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v2 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v6 = *(a2 - 2);
        v7 = a1[6];
        if (v6 >= v7)
        {
          if (v7 < v6)
          {
            return 1;
          }

          if (*(a2 - 1) >= a1[7])
          {
            return 1;
          }
        }

        a1[6] = v6;
        *(a2 - 2) = v7;
        v8 = a1[7];
        a1[7] = *(a2 - 1);
        *(a2 - 1) = v8;
        v9 = a1[6];
        v10 = a1[4];
        if (v9 >= v10)
        {
          if (v10 < v9)
          {
            return 1;
          }

          v12 = a1[7];
          v11 = a1[5];
          if (v12 >= v11)
          {
            return 1;
          }
        }

        else
        {
          v11 = a1[5];
          v12 = a1[7];
        }

        a1[4] = v9;
        a1[5] = v12;
        a1[6] = v10;
        a1[7] = v11;
        v13 = a1[2];
        if (v9 >= v13)
        {
          if (v13 < v9)
          {
            return 1;
          }

          v14 = a1[3];
          if (v12 >= v14)
          {
            return 1;
          }
        }

        else
        {
          v14 = a1[3];
        }

        a1[2] = v9;
        a1[3] = v12;
        a1[4] = v13;
        a1[5] = v14;
        v15 = *a1;
        if (v9 >= *a1)
        {
          if (v15 < v9)
          {
            return 1;
          }

          v16 = a1[1];
          if (v12 >= v16)
          {
            return 1;
          }
        }

        else
        {
          v16 = a1[1];
        }

        *a1 = v9;
        a1[1] = v12;
        a1[2] = v15;
        a1[3] = v16;
        return 1;
      }

LABEL_21:
      v25 = a1 + 4;
      v26 = a1[2];
      v27 = *a1;
      if (v26 >= *a1 && (v27 < v26 || a1[3] >= a1[1]))
      {
        v34 = *v25;
        if (*v25 >= v26)
        {
          if (v26 < v34)
          {
            goto LABEL_66;
          }

          v36 = a1[5];
          v35 = a1[3];
          if (v36 >= v35)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v35 = a1[3];
          v36 = a1[5];
        }

        a1[3] = v36;
        v37 = a1 + 3;
        a1[2] = v34;
        a1[4] = v26;
        a1[5] = v35;
        if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
        {
LABEL_66:
          v45 = a1 + 6;
          if (a1 + 6 == a2)
          {
            return 1;
          }

          v46 = 0;
          v47 = 0;
LABEL_71:
          v49 = *v45;
          v50 = *v25;
          if (*v45 >= *v25)
          {
            if (v50 < v49)
            {
              goto LABEL_70;
            }

            v51 = v45[1];
            if (v51 >= v25[1])
            {
              goto LABEL_70;
            }
          }

          else
          {
            v51 = v45[1];
          }

          *v45 = v50;
          v45[1] = v25[1];
          v48 = a1;
          if (v25 == a1)
          {
            goto LABEL_69;
          }

          v52 = v46;
          while (1)
          {
            v54 = a1 + v52;
            v55 = *(a1 + v52 + 16);
            if (v49 < v55)
            {
              v53 = *(v54 + 3);
            }

            else
            {
              if (v55 < v49)
              {
                v48 = v25;
LABEL_69:
                *v48 = v49;
                v48[1] = v51;
                if (++v47 != 8)
                {
LABEL_70:
                  v25 = v45;
                  v46 += 16;
                  v45 += 2;
                  if (v45 == a2)
                  {
                    return 1;
                  }

                  goto LABEL_71;
                }

                return v45 + 2 == a2;
              }

              v53 = *(a1 + v52 + 24);
              if (v51 >= v53)
              {
                v48 = (a1 + v52 + 32);
                goto LABEL_69;
              }
            }

            v25 -= 2;
            *(v54 + 4) = v55;
            *(a1 + v52 + 40) = v53;
            v52 -= 16;
            if (v52 == -32)
            {
              v48 = a1;
              goto LABEL_69;
            }
          }
        }

        *a1 = v34;
        a1[2] = v27;
        v29 = a1 + 1;
LABEL_65:
        v44 = *v29;
        *v29 = *v37;
        *v37 = v44;
        goto LABEL_66;
      }

      v28 = *v25;
      if (*v25 < v26)
      {
        goto LABEL_23;
      }

      if (v26 >= v28)
      {
        v39 = a1[3];
        if (a1[5] < v39)
        {
LABEL_23:
          *a1 = v28;
          a1[4] = v27;
          v29 = a1 + 1;
LABEL_64:
          v37 = a1 + 5;
          goto LABEL_65;
        }
      }

      else
      {
        v39 = a1[3];
      }

      v43 = a1[1];
      a1[3] = v43;
      v29 = a1 + 3;
      *a1 = v26;
      a1[1] = v39;
      a1[2] = v27;
      if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
      {
        goto LABEL_66;
      }

      a1[2] = v28;
      a1[4] = v27;
      goto LABEL_64;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20)
      {
        if (v20 < v30)
        {
          return 1;
        }

        if (*(a2 - 1) >= a1[3])
        {
          return 1;
        }
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1)
      {
        if (v33 < v32)
        {
          return 1;
        }

        if (a1[3] >= a1[1])
        {
          return 1;
        }
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_20:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21)
    {
      if (v21 < v41)
      {
        return 1;
      }

      if (*(a2 - 1) >= v40)
      {
        return 1;
      }
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_21;
  }

  v17 = *(a2 - 2);
  v18 = *a1;
  if (v17 < *a1)
  {
    goto LABEL_17;
  }

  if (v18 < v17)
  {
    return 1;
  }

  if (*(a2 - 1) < a1[1])
  {
LABEL_17:
    *a1 = v17;
    *(a2 - 2) = v18;
    v19 = a1[1];
    a1[1] = *(a2 - 1);
    *(a2 - 1) = v19;
    return 1;
  }

  return 1;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v13 = a4[1];
          if (v8[1] < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = a4[1];
        }

        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 16 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v12 >= v18 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v14 = v8;
LABEL_14:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

uint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<long long,long long> *>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result[1];
    v7 = result;
    do
    {
      v8 = v7;
      v9 = &v7[2 * v4];
      v7 = v9 + 2;
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v11 < a4)
      {
        v12 = v9[4];
        v13 = v9[2];
        if (v13 < v12 || v12 >= v13 && v9[3] < v9[5])
        {
          v7 = v9 + 4;
          v4 = v11;
        }
      }

      *v8 = *v7;
      v8[1] = v7[1];
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v7 == (a2 - 16))
    {
      *v7 = v5;
      v7[1] = v6;
      return result;
    }

    *v7 = *(a2 - 16);
    v7[1] = *(a2 - 8);
    *(a2 - 16) = v5;
    *(a2 - 8) = v6;
    v14 = (v7 - result + 16) >> 4;
    v15 = v14 - 2;
    if (v14 < 2)
    {
      return result;
    }

    v16 = v15 >> 1;
    v17 = &result[2 * (v15 >> 1)];
    v18 = *v17;
    v19 = *v7;
    if (*v17 >= *v7)
    {
      if (v19 < v18)
      {
        return result;
      }

      v20 = v7[1];
      if (v17[1] >= v20)
      {
        return result;
      }
    }

    else
    {
      v20 = v7[1];
    }

    *v7 = v18;
    v7[1] = v17[1];
    if (v15 >= 2)
    {
      while (1)
      {
        v23 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v21 = &result[2 * v16];
        v24 = *v21;
        if (*v21 < v19)
        {
          v22 = v21[1];
        }

        else
        {
          if (v19 < v24)
          {
            break;
          }

          v22 = v21[1];
          if (v22 >= v20)
          {
            break;
          }
        }

        *v17 = v24;
        v17[1] = v22;
        v17 = &result[2 * v16];
        if (v23 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

    v21 = v17;
LABEL_16:
    *v21 = v19;
    v21[1] = v20;
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>>::operator[]<long long>(unsigned __int8 **a1, uint64_t *a2)
{
  v12 = a2;
  if (!a1[2])
  {
    operator new();
  }

  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[10];
  if (!(*a1)[10])
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 0;
  v6 = (v3 + 16);
  do
  {
    v7 = *v6;
    v6 += 2;
    if (v7 >= v2)
    {
      goto LABEL_9;
    }

    ++v5;
  }

  while (v4 != v5);
  LODWORD(v5) = v4;
LABEL_9:
  while (!v3[11])
  {
    v3 = *&v3[8 * v5 + 256];
    v4 = v3[10];
    if (v3[10])
    {
      goto LABEL_4;
    }

LABEL_8:
    LODWORD(v5) = 0;
  }

  v8 = v5;
  v9 = v3;
  while (v5 == *(v9 + 10))
  {
    LODWORD(v5) = *(v9 + 8);
    v9 = *v9;
    if (*(v9 + 11))
    {
      goto LABEL_17;
    }
  }

  if (v2 >= v9[2 * v5 + 2])
  {
    return &v9[2 * v5 + 3];
  }

LABEL_17:
  v9 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1, v3, v8, &std::piecewise_construct, &v12);
  LOBYTE(v5) = v10;
  return &v9[2 * v5 + 3];
}

uint64_t *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  i = a2;
  v22 = a3;
  v7 = a2[11];
  if (a2[11])
  {
    if (a2[10] == v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = a2;
    v9 = a3;
    v10 = a2[10];
    v11 = v10 - a3;
    if (v10 <= a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  a2 = *&a2[8 * a3 + 256];
  for (i = a2; !a2[11]; i = a2)
  {
    a2 = *&a2[8 * a2[10] + 256];
  }

  LOBYTE(a3) = a2[10];
  LODWORD(v22) = a3;
  v7 = a2[11];
  if (!a2[11])
  {
    v7 = 15;
  }

  if (a2[10] != v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 <= 0xE)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_or_split(a1, &i);
  v8 = i;
  v9 = v22;
  v10 = *(i + 10);
  v11 = v10 - v22;
  if (v10 > v22)
  {
LABEL_13:
    if ((v11 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = &v8[2 * v9 + 2 + 2 * v11];
      v13 = 16 * v9 - 16 * v10;
      do
      {
        *v12 = *(v12 - 1);
        v12 -= 2;
        v13 += 16;
      }

      while (v13);
      LODWORD(v10) = *(v8 + 10);
    }
  }

LABEL_17:
  v14 = &v8[2 * v9];
  v14[2] = **a5;
  v14[3] = 0;
  v15 = v10 + 1;
  *(v8 + 10) = v15;
  if (!*(v8 + 11))
  {
    v16 = v9 + 1;
    if (v16 < v15)
    {
      v17 = v8 + 32;
      do
      {
        v18 = v17[(v15 - 1)];
        v17[v15] = v18;
        *(v18 + 8) = v15;
      }

      while (v16 < --v15);
    }
  }

  ++a1[2];
  return i;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_or_split(uint64_t *a1, uint64_t **a2)
{
  result = *a2;
  v5 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v6 = result[8];
  if (result[8])
  {
    v7 = *(v5 + 8 * (v6 - 1) + 256);
    v8 = *(v7 + 10);
    if (v8 <= 0xE)
    {
      v9 = *(a2 + 8);
      LODWORD(v10) = (15 - v8) >> (v9 < 0xF);
      v10 = v10 <= 1 ? 1 : v10;
      if (v9 >= v10 || (v10 + v8) <= 0xEu)
      {
        v12 = *(v7 + 8);
        v13 = *v7;
        *(v7 + 16 * v8 + 16) = *(*v7 + 16 * v12 + 16);
        v14 = result + 16;
        v15 = (v10 - 1);
        if (v10 != 1)
        {
          v16 = 16 * v8 + 32;
          v17 = 16 * v15;
          v18 = result + 16;
          do
          {
            v19 = *v18;
            v18 += 16;
            *(v7 + v16) = v19;
            v16 += 16;
            v17 -= 16;
          }

          while (v17);
          v13 = *v7;
          v12 = *(v7 + 8);
        }

        *(v13 + 16 * v12 + 16) = *&v14[16 * v15];
        v20 = result[10];
        if (((v20 - v10) & 0xFFFFFFFFFFFFFFFLL) != 0)
        {
          v21 = 16 * v20 - 16 * v10;
          do
          {
            *v14 = *&v14[16 * v10];
            v14 += 16;
            v21 -= 16;
          }

          while (v21);
        }

        if (!*(v7 + 11))
        {
          v22 = result + 256;
          v23 = 32;
          do
          {
            v24 = v23 + *(v7 + 10) - 31;
            v25 = *&result[8 * v23];
            *(v7 + 256 + 8 * v24) = v25;
            *(v25 + 8) = v24;
            *v25 = v7;
            ++v23;
          }

          while (v23 - v10 != 32);
          if (result[10] >= v10)
          {
            v26 = 0;
            do
            {
              v27 = *&v22[8 * (v26 + v10)];
              *&v22[8 * v26] = v27;
              *(v27 + 8) = v26;
              *v27 = result;
              ++v26;
            }

            while (result[10] - v10 >= v26);
          }
        }

        *(v7 + 10) += v10;
        result[10] -= v10;
        v28 = *(a2 + 8) - v10;
        *(a2 + 2) = v28;
        if (v28 >= 0)
        {
          return result;
        }

        v37 = v28 + *(v7 + 10) + 1;
LABEL_43:
        *(a2 + 2) = v37;
        *a2 = v7;
        return result;
      }
    }
  }

  v29 = *(v5 + 10);
  if (v6 >= v29 || (v7 = *(v5 + 8 * (v6 + 1) + 256), v30 = *(v7 + 10), v30 > 0xE) || ((v31 = *(a2 + 2), (15 - v30) >> (v31 > 0) <= 1u) ? (v32 = 1) : (v32 = (15 - v30) >> (v31 > 0)), (v33 = (v32 + v30), (result[10] - v32) < v31) ? (v34 = v33 > 0xE) : (v34 = 0), v34))
  {
    if (v29 == 15)
    {
      v38 = v5;
      v39 = v6;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_or_split(a1, &v38);
      result = *a2;
    }

    if (result[11])
    {
      operator new();
    }

    operator new();
  }

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_left_to_right(result, v32, *(v5 + 8 * (v6 + 1) + 256));
  v35 = *(a2 + 2);
  v36 = *(*a2 + 10);
  if (v35 > v36)
  {
    v37 = v35 + ~v36;
    goto LABEL_43;
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = (a3 + 16);
  if (*(a3 + 10))
  {
    v4 = 16 * *(a3 + 10);
    do
    {
      *(a3 + 16 * a2 + v4) = *(a3 + v4);
      v4 -= 16;
    }

    while (v4);
  }

  v5 = (a2 - 1);
  v3[v5] = *(*result + 16 * *(result + 8) + 16);
  v6 = *(result + 10);
  if ((v5 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = -16 * a2;
    v8 = result + 16 * *(result + 10) + 32;
    do
    {
      *v3++ = *(v8 + v7);
      v7 += 16;
    }

    while (v7 != -16);
    v6 = *(result + 10);
  }

  *(*result + 16 * *(result + 8) + 16) = *(result + 16 + 16 * (v6 - a2));
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v9 = a3 + 256;
      v10 = (*(a3 + 10) + 1);
      do
      {
        v11 = *(v9 + 8 * (v10 - 1));
        *(v9 + 8 * (v10 - 1 + a2)) = v11;
        *(v11 + 8) = v10 - 1 + a2;
        *v11 = a3;
        --v10;
      }

      while (v10);
    }

    if (a2)
    {
      v12 = 0;
      if ((a2 + 1) <= 2u)
      {
        v13 = 2;
      }

      else
      {
        v13 = (a2 + 1);
      }

      v14 = v13 - 1;
      do
      {
        v15 = *(result + 256 + 8 * (v12 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v12 + 256) = v15;
        *(v15 + 8) = v12;
        *v15 = a3;
        ++v12;
      }

      while (v14 != v12);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::split(unsigned __int8 *result, int a2, uint64_t a3)
{
  if (a2 == 15)
  {
    LOBYTE(v3) = 0;
  }

  else if (a2)
  {
    v3 = result[10] >> 1;
  }

  else
  {
    LOBYTE(v3) = result[10] - 1;
  }

  *(a3 + 10) = v3;
  v4 = result[10] - v3;
  result[10] = v4;
  v5 = result + 16;
  if (*(a3 + 10))
  {
    v6 = (a3 + 16);
    v7 = 16 * *(a3 + 10);
    v8 = &v5[16 * v4];
    do
    {
      v9 = *v8;
      v8 += 16;
      *v6++ = v9;
      v7 -= 16;
    }

    while (v7);
    v4 = result[10];
  }

  v10 = v4 - 1;
  result[10] = v4 - 1;
  v11 = *result;
  v12 = result[8];
  v13 = &v5[16 * v10];
  v14 = *(*result + 10);
  v15 = v14 - v12;
  if (v14 > v12 && (v15 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v16 = (v11 + 16 * result[8] + 16 + 16 * v15);
    v17 = 16 * v12 - 16 * v14;
    do
    {
      *v16 = *(v16 - 1);
      --v16;
      v17 += 16;
    }

    while (v17);
    LODWORD(v14) = *(v11 + 10);
  }

  *(v11 + 16 * v12 + 16) = *v13;
  v18 = v14 + 1;
  *(v11 + 10) = v14 + 1;
  if (!*(v11 + 11))
  {
    v19 = v12 + 1;
    if (v19 < v18)
    {
      v20 = v11 + 256;
      do
      {
        v21 = *(v20 + 8 * (v18 - 1));
        *(v20 + 8 * v18) = v21;
        *(v21 + 8) = v18;
      }

      while (v19 < --v18);
    }
  }

  *(*result + 8 * (result[8] + 1) + 256) = a3;
  v23 = result[11];
  if (!result[11])
  {
    v24 = result[10];
    do
    {
      v25 = *&result[8 * ++v24 + 256];
      *(a3 + 256 + 8 * v23) = v25;
      *(v25 + 8) = v23;
      *v25 = a3;
      ++v23;
    }

    while (*(a3 + 10) >= v23);
  }

  return result;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::clear(unsigned __int8 ***a1)
{
  if (!a1[2])
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (*(*a1 + 11) || !*(v2 + 10))
  {
    operator delete(v2);
    goto LABEL_4;
  }

  v3 = *v2;
  do
  {
    v2 = v2[32];
  }

  while (!*(v2 + 11));
  v4 = *(v2 + 8);
  v5 = *v2;
  while (1)
  {
    v6 = *&v5[8 * v4 + 256];
    if (!v6[11])
    {
      break;
    }

    v7 = v5;
    operator delete(*&v5[8 * v4 + 256]);
    v5 = v7;
    if (v4 >= v7[10])
    {
      goto LABEL_15;
    }

LABEL_9:
    ++v4;
  }

  do
  {
    v6 = *(v6 + 32);
  }

  while (!v6[11]);
  v4 = v6[8];
  v8 = *v6;
  operator delete(v6);
  v5 = v8;
  if (v4 < v8[10])
  {
    goto LABEL_9;
  }

LABEL_15:
  while (1)
  {
    v4 = v5[8];
    v9 = *v5;
    operator delete(v5);
    if (v9 == v3)
    {
      break;
    }

    v5 = v9;
    if (v4 < v9[10])
    {
      goto LABEL_9;
    }
  }

LABEL_4:
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

void operations_research::sat::PropagateAutomaton(uint64_t a1, operations_research::sat::PresolveContext *a2, unint64_t *a3, unint64_t *a4)
{
  v7 = *(a1 + 112);
  v8 = *(a1 + 24);
  v9 = *(a1 + 16);
  if (v9 == 7)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(&v163, 8uLL);
  }

  else
  {
    v10.n128_f64[0] = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(&v163, (v9 - 1) / 7 + v9);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v11 = 8 * v9;
  do
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(&v163, v8, &v161);
    if (v162 == 1)
    {
      **(&v161 + 1) = *v8;
    }

    ++v8;
    v11 -= 8;
  }

  while (v11);
LABEL_8:
  v13 = *a4;
  v12 = a4[1];
  v14 = *a4;
  if (v12 != *a4)
  {
    v15 = a4[1];
    do
    {
      v16 = *(v15 - 32);
      v15 -= 32;
      if (v16 >= 2)
      {
        operator delete((*(v12 - 16) - (*(v12 - 24) & 1) - 8));
      }

      v12 = v15;
    }

    while (v15 != v13);
    v14 = *a4;
  }

  a4[1] = v13;
  v17 = (v13 - v14) >> 5;
  if (v7 <= v17)
  {
    if (v7 < v17)
    {
      v18 = v14 + 32 * v7;
      if (v13 != v18)
      {
        v19 = v13;
        do
        {
          v20 = *(v19 - 32);
          v19 -= 32;
          if (v20 >= 2)
          {
            operator delete((*(v13 - 16) - (*(v13 - 24) & 1) - 8));
          }

          v13 = v19;
        }

        while (v19 != v18);
      }

      a4[1] = v18;
    }
  }

  else
  {
    std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::__append(a4, v7 - v17, v10);
  }

  v22 = *a3;
  v21 = a3[1];
  v23 = *a3;
  if (v21 != *a3)
  {
    v24 = a3[1];
    do
    {
      v25 = *(v24 - 32);
      v24 -= 32;
      if (v25 >= 2)
      {
        operator delete((*(v21 - 16) - (*(v21 - 24) & 1) - 8));
      }

      v21 = v24;
    }

    while (v24 != v22);
    v23 = *a3;
  }

  a3[1] = v22;
  v26 = v7 + 1;
  v27 = (v22 - v23) >> 5;
  if (v26 <= v27)
  {
    if (v26 < v27)
    {
      v28 = v23 + 32 * v26;
      if (v22 != v28)
      {
        v29 = v22;
        do
        {
          v30 = *(v29 - 32);
          v29 -= 32;
          if (v30 >= 2)
          {
            operator delete((*(v22 - 16) - (*(v22 - 24) & 1) - 8));
          }

          v22 = v29;
        }

        while (v29 != v28);
      }

      a3[1] = v28;
    }
  }

  else
  {
    std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::__append(a3, v26 - v27, v10);
  }

  v31 = *a3;
  *&v159 = *(a1 + 136);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(v31, &v159, &v161);
  if (v162 == 1)
  {
    **(&v161 + 1) = v159;
  }

  v32 = v7 - 1;
  if (v7 > 0)
  {
    LODWORD(v33) = *(a1 + 40);
    if (v33 >= 1)
    {
      v155 = v7;
      v156 = (v7 - 1);
      v34 = 0;
      while (1)
      {
        while (v33 <= 0)
        {
          if (++v34 == v155)
          {
            goto LABEL_94;
          }
        }

        v35 = 0;
        v157 = v34 + 1;
        do
        {
          v41 = *(*(a1 + 48) + 8 * v35);
          v42 = *(*(a1 + 96) + 8 * v35);
          v43 = *(*(a1 + 72) + 8 * v35);
          v44 = (*a3 + 32 * v34);
          v45 = *v44;
          if (*v44 > 1)
          {
            v39 = 0;
            _X12 = v44[2];
            __asm { PRFM            #4, [X12] }

            v55 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41));
            v40 = (v55 >> 7) ^ (_X12 >> 12);
            v56 = vdup_n_s8(v55 & 0x7F);
            while (1)
            {
              v36 = v40 & v45;
              v37 = *(_X12 + v36);
              v38 = vceq_s8(v37, v56);
              if (v38)
              {
                break;
              }

LABEL_49:
              if (vceq_s8(v37, 0x8080808080808080))
              {
                goto LABEL_92;
              }

              v39 += 8;
              v40 = v39 + v36;
            }

            while (*(v44[3] + 8 * ((v36 + (__clz(__rbit64(v38)) >> 3)) & v45)) != v41)
            {
              v38 &= ((v38 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v38)
              {
                goto LABEL_49;
              }
            }
          }

          else if (v44[1] < 2 || v44[2] != v41)
          {
            goto LABEL_92;
          }

          if (!operations_research::sat::PresolveContext::DomainContains(a2, *(*(a1 + 120) + 4 * v34), *(*(a1 + 96) + 8 * v35)))
          {
            goto LABEL_92;
          }

          if (v34 == v156)
          {
            if (v163 > 1)
            {
              v66 = 0;
              _X10 = v165;
              __asm { PRFM            #4, [X10] }

              v69 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43));
              v70 = vdup_n_s8(v69 & 0x7F);
              v71 = ((v69 >> 7) ^ (v165 >> 12)) & v163;
              v72 = *(v165 + v71);
              v73 = vceq_s8(v72, v70);
              if (!v73)
              {
                goto LABEL_72;
              }

LABEL_70:
              while (*(v166 + 8 * ((v71 + (__clz(__rbit64(v73)) >> 3)) & v163)) != v43)
              {
                v73 &= ((v73 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v73)
                {
LABEL_72:
                  while (!*&vceq_s8(v72, 0x8080808080808080))
                  {
                    v66 += 8;
                    v71 = (v66 + v71) & v163;
                    v72 = *(v165 + v71);
                    v73 = vceq_s8(v72, v70);
                    if (v73)
                    {
                      goto LABEL_70;
                    }
                  }

                  goto LABEL_92;
                }
              }
            }

            else if (v164 < 2 || v165 != v43)
            {
              goto LABEL_92;
            }
          }

          v46 = (*a4 + 32 * v34);
          v47 = *v46;
          if (*v46 > 1)
          {
            v57 = 0;
            _X9 = v46[2];
            __asm { PRFM            #4, [X9] }

            v60 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v42) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v42));
            v61 = vdup_n_s8(v60 & 0x7F);
            v62 = ((v60 >> 7) ^ (_X9 >> 12)) & v47;
            v63 = *(_X9 + v62);
            v64 = vceq_s8(v63, v61);
            if (!v64)
            {
              goto LABEL_66;
            }

LABEL_64:
            while (*(v46[3] + 8 * ((v62 + (__clz(__rbit64(v64)) >> 3)) & v47)) != v42)
            {
              v64 &= ((v64 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v64)
              {
LABEL_66:
                while (1)
                {
                  v65 = vceq_s8(v63, 0x8080808080808080);
                  if (v65)
                  {
                    break;
                  }

                  v57 += 8;
                  v62 = (v57 + v62) & v47;
                  v63 = *(_X9 + v62);
                  v64 = vceq_s8(v63, v61);
                  if (v64)
                  {
                    goto LABEL_64;
                  }
                }

                v48 = (v46[3] + 8 * absl::lts_20240722::container_internal::PrepareInsertNonSoo((*a4 + 32 * v34), v60, (v62 + (__clz(__rbit64(v65)) >> 3)) & v47, v57, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value));
                goto LABEL_78;
              }
            }
          }

          else if (v46[1] > 1)
          {
            if (v46[2] != v42)
            {
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl((*a4 + 32 * v34), 3uLL);
            }
          }

          else
          {
            v46[1] = 2;
            v48 = v46 + 2;
LABEL_78:
            *v48 = v42;
          }

          v74 = (*a3 + 32 * v157);
          v75 = *v74;
          if (*v74 > 1)
          {
            v77 = 0;
            _X9 = v74[2];
            __asm { PRFM            #4, [X9] }

            v80 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43));
            v81 = vdup_n_s8(v80 & 0x7F);
            v82 = ((v80 >> 7) ^ (_X9 >> 12)) & v75;
            v83 = *(_X9 + v82);
            v84 = vceq_s8(v83, v81);
            if (!v84)
            {
              goto LABEL_85;
            }

LABEL_83:
            while (*(v74[3] + 8 * ((v82 + (__clz(__rbit64(v84)) >> 3)) & v75)) != v43)
            {
              v84 &= ((v84 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v84)
              {
LABEL_85:
                while (1)
                {
                  v85 = vceq_s8(v83, 0x8080808080808080);
                  if (v85)
                  {
                    break;
                  }

                  v77 += 8;
                  v82 = (v77 + v82) & v75;
                  v83 = *(_X9 + v82);
                  v84 = vceq_s8(v83, v81);
                  if (v84)
                  {
                    goto LABEL_83;
                  }
                }

                v76 = (v74[3] + 8 * absl::lts_20240722::container_internal::PrepareInsertNonSoo((*a3 + 32 * v157), v80, (v82 + (__clz(__rbit64(v85)) >> 3)) & v75, v77, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value));
                goto LABEL_91;
              }
            }
          }

          else if (v74[1] > 1)
          {
            if (v74[2] != v43)
            {
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl((*a3 + 32 * v157), 3uLL);
            }
          }

          else
          {
            v74[1] = 2;
            v76 = v74 + 2;
LABEL_91:
            *v76 = v43;
          }

LABEL_92:
          ++v35;
          v33 = *(a1 + 40);
        }

        while (v35 < v33);
        ++v34;
        if (v157 == v155)
        {
LABEL_94:
          LODWORD(v7) = v155;
          v32 = v156;
          goto LABEL_95;
        }
      }
    }

    goto LABEL_96;
  }

LABEL_95:
  if ((v32 & 0x80000000) == 0)
  {
LABEL_96:
    v86 = v7;
    v87 = v32;
    do
    {
      v161 = xmmword_23CE306D0;
      v159 = xmmword_23CE306D0;
      if (*(a1 + 40) >= 1)
      {
        v89 = 0;
        v90 = v86;
        do
        {
          v96 = *(*(a1 + 48) + 8 * v89);
          v97 = *(*(a1 + 96) + 8 * v89);
          v98 = *(*(a1 + 72) + 8 * v89);
          v99 = (*a3 + 32 * v87);
          v100 = *v99;
          if (*v99 > 1)
          {
            v94 = 0;
            _X13 = v99[2];
            __asm { PRFM            #4, [X13] }

            v108 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v96) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v96));
            v95 = (v108 >> 7) ^ (_X13 >> 12);
            v109 = vdup_n_s8(v108 & 0x7F);
            while (1)
            {
              v91 = v95 & v100;
              v92 = *(_X13 + v91);
              v93 = vceq_s8(v92, v109);
              if (v93)
              {
                break;
              }

LABEL_103:
              if (vceq_s8(v92, 0x8080808080808080))
              {
                goto LABEL_153;
              }

              v94 += 8;
              v95 = v94 + v91;
            }

            while (*(v99[3] + 8 * ((v91 + (__clz(__rbit64(v93)) >> 3)) & v100)) != v96)
            {
              v93 &= ((v93 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v93)
              {
                goto LABEL_103;
              }
            }
          }

          else if (v99[1] < 2 || v99[2] != v96)
          {
            goto LABEL_153;
          }

          v101 = (*a4 + 32 * v87);
          v102 = *v101;
          if (*v101 > 1)
          {
            v110 = 0;
            _X13 = v101[2];
            __asm { PRFM            #4, [X13] }

            v113 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v97) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v97));
            v114 = vdup_n_s8(v113 & 0x7F);
            v115 = ((v113 >> 7) ^ (_X13 >> 12)) & v102;
            v116 = *(_X13 + v115);
            v117 = vceq_s8(v116, v114);
            if (!v117)
            {
              goto LABEL_121;
            }

LABEL_119:
            while (*(v101[3] + 8 * ((v115 + (__clz(__rbit64(v117)) >> 3)) & v102)) != v97)
            {
              v117 &= ((v117 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v117)
              {
LABEL_121:
                while (!*&vceq_s8(v116, 0x8080808080808080))
                {
                  v110 += 8;
                  v115 = (v110 + v115) & v102;
                  v116 = *(_X13 + v115);
                  v117 = vceq_s8(v116, v114);
                  if (v117)
                  {
                    goto LABEL_119;
                  }
                }

                goto LABEL_153;
              }
            }
          }

          else if (v101[1] < 2 || v101[2] != v97)
          {
            goto LABEL_153;
          }

          v103 = (*a3 + 32 * v90);
          v104 = *v103;
          if (*v103 > 1)
          {
            v118 = 0;
            _X12 = v103[2];
            __asm { PRFM            #4, [X12] }

            v121 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v98) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v98));
            v122 = vdup_n_s8(v121 & 0x7F);
            v123 = ((v121 >> 7) ^ (_X12 >> 12)) & v104;
            v124 = *(_X12 + v123);
            v125 = vceq_s8(v124, v122);
            if (!v125)
            {
              goto LABEL_127;
            }

LABEL_125:
            while (*(v103[3] + 8 * ((v123 + (__clz(__rbit64(v125)) >> 3)) & v104)) != v98)
            {
              v125 &= ((v125 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v125)
              {
LABEL_127:
                while (!*&vceq_s8(v124, 0x8080808080808080))
                {
                  v118 += 8;
                  v123 = (v118 + v123) & v104;
                  v124 = *(_X12 + v123);
                  v125 = vceq_s8(v124, v122);
                  if (v125)
                  {
                    goto LABEL_125;
                  }
                }

                goto LABEL_153;
              }
            }

LABEL_114:
            if (v159 > 1)
            {
              v126 = 0;
              _X9 = v160;
              __asm { PRFM            #4, [X9] }

              v129 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v97) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v97));
              v130 = vdup_n_s8(v129 & 0x7F);
              v131 = ((v129 >> 7) ^ (v160 >> 12)) & v159;
              v132 = *(v160 + v131);
              v133 = vceq_s8(v132, v130);
              if (!v133)
              {
                goto LABEL_133;
              }

LABEL_131:
              while (*(*(&v160 + 1) + 8 * ((v131 + (__clz(__rbit64(v133)) >> 3)) & v159)) != v97)
              {
                v133 &= ((v133 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v133)
                {
LABEL_133:
                  while (1)
                  {
                    v134 = vceq_s8(v132, 0x8080808080808080);
                    if (v134)
                    {
                      break;
                    }

                    v126 += 8;
                    v131 = (v126 + v131) & v159;
                    v132 = *(v160 + v131);
                    v133 = vceq_s8(v132, v130);
                    if (v133)
                    {
                      goto LABEL_131;
                    }
                  }

                  inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v159, v129, (v131 + (__clz(__rbit64(v134)) >> 3)) & v159, v126, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value);
                  v105 = (*(&v160 + 1) + 8 * inserted);
                  goto LABEL_139;
                }
              }
            }

            else if (*(&v159 + 1) > 1uLL)
            {
              if (v160 != v97)
              {
                absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl(&v159, 3uLL);
              }
            }

            else
            {
              *(&v159 + 1) = 2;
              v105 = &v160;
LABEL_139:
              *v105 = v97;
            }

            if (v161 > 1)
            {
              v137 = 0;
              _X9 = v162;
              __asm { PRFM            #4, [X9] }

              v140 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v96) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v96));
              v141 = vdup_n_s8(v140 & 0x7F);
              v142 = ((v140 >> 7) ^ (v162 >> 12)) & v161;
              v143 = *(v162 + v142);
              v144 = vceq_s8(v143, v141);
              if (!v144)
              {
                goto LABEL_146;
              }

LABEL_144:
              while (*(*(&v162 + 1) + 8 * ((v142 + (__clz(__rbit64(v144)) >> 3)) & v161)) != v96)
              {
                v144 &= ((v144 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v144)
                {
LABEL_146:
                  while (1)
                  {
                    v145 = vceq_s8(v143, 0x8080808080808080);
                    if (v145)
                    {
                      break;
                    }

                    v137 += 8;
                    v142 = (v137 + v142) & v161;
                    v143 = *(v162 + v142);
                    v144 = vceq_s8(v143, v141);
                    if (v144)
                    {
                      goto LABEL_144;
                    }
                  }

                  v146 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v161, v140, (v142 + (__clz(__rbit64(v145)) >> 3)) & v161, v137, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value);
                  v136 = (*(&v162 + 1) + 8 * v146);
                  goto LABEL_152;
                }
              }
            }

            else if (*(&v161 + 1) > 1uLL)
            {
              if (v162 != v96)
              {
                absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl(&v161, 3uLL);
              }
            }

            else
            {
              *(&v161 + 1) = 2;
              v136 = &v162;
LABEL_152:
              *v136 = v96;
            }

            goto LABEL_153;
          }

          if (v103[1] >= 2 && v103[2] == v98)
          {
            goto LABEL_114;
          }

LABEL_153:
          ++v89;
        }

        while (v89 < *(a1 + 40));
      }

      v147 = (*a4 + 32 * v87);
      v149 = *v147;
      v148 = v147[1];
      v150 = v160;
      *v147 = v159;
      v147[1] = v150;
      v159 = v149;
      v160 = v148;
      v151 = (*a3 + 32 * v87);
      v153 = *v151;
      v152 = v151[1];
      v154 = v162;
      *v151 = v161;
      v151[1] = v154;
      v161 = v153;
      v162 = v152;
      if (v159 >= 2)
      {
        operator delete((v160 - (BYTE8(v159) & 1) - 8));
        if (v161 >= 2)
        {
LABEL_158:
          operator delete((v162 - (BYTE8(v161) & 1) - 8));
        }
      }

      else if (v161 >= 2)
      {
        goto LABEL_158;
      }

      v86 = v87;
    }

    while (v87-- > 0);
  }

  if (v163 >= 2)
  {
    operator delete((v165 - (v164 & 1) - 8));
  }
}

void sub_23CA16F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, char a26, uint64_t a27)
{
  if (a25 >= 2)
  {
    v27 = a1;
    operator delete((a27 - (a26 & 1) - 8));
    a1 = v27;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::ExpandCpModel(operations_research::sat *this, operations_research::sat::PresolveContext *a2)
{
  v797 = *MEMORY[0x277D85DE8];
  if (*(*(this + 49) + 317))
  {
    return;
  }

  v2 = this;
  if (*(this + 416))
  {
    return;
  }

  if (*(this + 1176))
  {
    return;
  }

  operations_research::sat::PresolveContext::InitializeNewDomains(this);
  if (*(v2 + 416))
  {
    return;
  }

  operations_research::sat::PresolveContext::ClearPrecedenceCache(v2);
  v5 = *v2;
  if (*(*v2 + 56) <= 0)
  {
    *&v769.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
    *&v767.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
    *v765 = xmmword_23CE306D0;
LABEL_1205:
    operations_research::sat::PresolveContext::ClearPrecedenceCache(v2);
    operations_research::sat::PresolveContext::InitializeNewDomains(v2);
    if (*(*v2 + 32) >= 1)
    {
      v739 = 0;
      v740 = 8;
      do
      {
        operations_research::sat::PresolveContext::DomainOf(v790, v2, v739);
        v741 = (*v2 + 24);
        if (*v741)
        {
          v741 = (*v741 + v740 - 1);
        }

        operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v790, *v741);
        if (v790[0])
        {
          operator delete(*&v790[8]);
        }

        ++v739;
        v740 += 8;
      }

      while (v739 < *(*v2 + 32));
    }

    *(v2 + 1176) = 1;
    goto LABEL_1213;
  }

  v6 = 0;
  v7 = xmmword_23CE404E0;
  v764 = v2;
  do
  {
    v9 = *(v5 + 48);
    v8 = (v5 + 48);
    v10 = v9 + 8 * v6 + 7;
    if (v9)
    {
      v8 = v10;
    }

    v762 = *v8;
    v11 = *(*v8 + 15);
    v758 = v6;
    if (v11 <= 15)
    {
      if (v11 <= 11)
      {
        if (v11 != 8)
        {
          if (v11 != 11)
          {
            goto LABEL_865;
          }

          v21 = *(v762 + 6);
          v22 = *(v21 + 32);
          if (v22 < 3)
          {
            if (v22 == 2)
            {
              v138 = *(v21 + 24);
              v136 = (v21 + 24);
              v137 = v138;
              v139 = (v138 + 7);
              _ZF = (v138 & 1) == 0;
              if ((v138 & 1) == 0)
              {
                v139 = v136;
              }

              v141 = *v139;
              v142 = (v137 + 15);
              if (_ZF)
              {
                v142 = v136;
              }

              v143 = *v142;
              v144 = v136[3];
              if (v144)
              {
                v145 = v144;
              }

              else
              {
                v145 = &operations_research::sat::_LinearExpressionProto_default_instance_;
              }

              LODWORD(__p[0]) = 0;
              IsALiteral = operations_research::sat::PresolveContext::ExpressionIsALiteral(v2, v141, __p);
              v147 = operations_research::sat::PresolveContext::ExpressionIsALiteral(v2, v143, __p);
              if (!(v147 & 1 | ((IsALiteral & 1) == 0)))
              {
                operations_research::sat::ConstraintProto::Clear(v762);
                operator new();
              }

              if (v147)
              {
                operations_research::sat::ConstraintProto::Clear(v762);
                operator new();
              }
            }
          }

          else
          {
            v24 = *(v21 + 24);
            v23 = (v21 + 24);
            v25 = (v24 + 7);
            *&v790[16] = 0u;
            v791 = 0u;
            if (v24)
            {
              v26 = v25;
            }

            else
            {
              v26 = v23;
            }

            *v790 = 0uLL;
            std::deque<operations_research::sat::LinearExpressionProto>::__append_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<operations_research::sat::LinearExpressionProto const>>(v790, v26, v22);
            if (v791.i64[1] >= 3uLL)
            {
              do
              {
                v30 = (*(*&v790[8] + 8 * (v791.i64[0] / 0x33uLL)) + 80 * (v791.i64[0] % 0x33uLL));
                v31 = v791.i64[0] + 1;
                v32 = (v791.i64[0] + 1) / 0x33uLL;
                v33 = *(*&v790[8] + 8 * v32);
                operations_research::sat::PresolveContext::DomainSuperSetOf(&v795, v2, v30);
                v34 = (v33 + 80 * (v31 - 51 * v32));
                operations_research::sat::PresolveContext::DomainSuperSetOf(&v793, v2, v34);
                operations_research::Domain::ContinuousMultiplicationBy(__p, &v795, &v793, v35);
                if (v793.__r_.__value_.__s.__data_[0])
                {
                  operator delete(v793.__r_.__value_.__l.__size_);
                }

                if (v795)
                {
                  operator delete(*&v796[0]);
                }

                v36 = operations_research::sat::PresolveContext::NewIntVar(v2, __p);
                v37 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                v38 = v37;
                if (*(v37 + 60) == 11)
                {
                  v39 = *(v37 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v37);
                  *(v38 + 60) = 11;
                  v40 = *(v38 + 8);
                  if (v40)
                  {
                    v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v40);
                  v39 = v41;
                  *(v38 + 48) = v41;
                }

                v42 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v39 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
                operations_research::sat::LinearExpressionProto::CopyFrom(v42, v30);
                v43 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v39 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
                operations_research::sat::LinearExpressionProto::CopyFrom(v43, v34);
                *(v39 + 16) |= 1u;
                v44 = *(v39 + 48);
                if (!v44)
                {
                  v45 = *(v39 + 8);
                  if (v45)
                  {
                    v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v45);
                  v44 = v46;
                  *(v39 + 48) = v46;
                }

                v47 = *(v44 + 16);
                v48 = v47;
                if (v47 == HIDWORD(v47))
                {
                  google::protobuf::RepeatedField<int>::Grow(v44 + 16, HIDWORD(v47), (HIDWORD(v47) + 1));
                  v48 = *(v44 + 16);
                }

                v49 = *(v44 + 24);
                *(v44 + 16) = v48 + 1;
                *(v49 + 4 * v48) = v36;
                *(v39 + 16) |= 1u;
                v50 = *(v39 + 48);
                if (!v50)
                {
                  v51 = *(v39 + 8);
                  if (v51)
                  {
                    v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v51);
                  v50 = v52;
                  *(v39 + 48) = v52;
                }

                v54 = *(v50 + 40);
                v53 = *(v50 + 44);
                if (v54 == v53)
                {
                  google::protobuf::RepeatedField<long long>::Grow(v50 + 40, v53, (v53 + 1));
                  v54 = *(v50 + 40);
                }

                v55 = *(v50 + 48);
                *(v50 + 40) = v54 + 1;
                *(v55 + 8 * v54) = 1;
                operations_research::sat::LinearExpressionProto::~LinearExpressionProto((*(*&v790[8] + 8 * (v791.i64[0] / 0x33uLL)) + 80 * (v791.i64[0] % 0x33uLL)));
                v791 = vaddq_s64(v791, xmmword_23CE306C0);
                v56 = v791.i64[0];
                v57 = *&v790[8];
                if (v791.i64[0] >= 0x66uLL)
                {
                  operator delete(**&v790[8]);
                  v57 = *&v790[8] + 8;
                  v56 = v791.i64[0] - 51;
                  *&v790[8] += 8;
                  v791.i64[0] -= 51;
                }

                operations_research::sat::LinearExpressionProto::~LinearExpressionProto((*(v57 + 8 * (v56 / 0x33)) + 80 * (v56 % 0x33)));
                v58 = vaddq_s64(v791, xmmword_23CE306C0);
                v791 = v58;
                v59 = v58.i64[0];
                v60 = *&v790[8];
                if (v58.i64[0] >= 0x66uLL)
                {
                  operator delete(**&v790[8]);
                  v60 = *&v790[8] + 8;
                  v59 = v791.i64[0] - 51;
                  *&v790[8] += 8;
                  v791.i64[0] -= 51;
                  v61 = v791.i64[1];
                }

                else
                {
                  v61 = v58.i64[1];
                }

                v62 = *&v790[16];
                v63 = 51 * ((*&v790[16] - v60) >> 3) - 1;
                if (*&v790[16] == v60)
                {
                  v63 = 0;
                }

                if (*(v39 + 48))
                {
                  v64 = *(v39 + 48);
                }

                else
                {
                  v64 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                }

                if (v63 == v59 + v61)
                {
                  std::deque<operations_research::sat::LinearExpressionProto>::__add_back_capacity(v790);
                  v60 = *&v790[8];
                  v62 = *&v790[16];
                }

                if (v62 == v60)
                {
                  v65 = 0;
                }

                else
                {
                  v65 = *(v60 + 8 * ((v791.i64[1] + v791.i64[0]) / 0x33uLL)) + 80 * ((v791.i64[1] + v791.i64[0]) % 0x33uLL);
                }

                operations_research::sat::LinearExpressionProto::LinearExpressionProto(v65, 0, v64);
                v66 = ++v791.i64[1];
                if (__p[0])
                {
                  operator delete(__p[1]);
                  v66 = v791.u64[1];
                }
              }

              while (v66 > 2);
            }

            v27 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v28 = v27;
            if (*(v27 + 60) == 11)
            {
              v29 = *(v27 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v27);
              *(v28 + 60) = 11;
              v191 = *(v28 + 8);
              if (v191)
              {
                v191 = *(v191 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v191);
              v29 = v192;
              *(v28 + 48) = v192;
            }

            v193 = v791.i64[0];
            v194 = v791.i64[0] / 0x33uLL;
            v195 = *(*&v790[8] + 8 * (v791.i64[0] / 0x33uLL));
            v196 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v29 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            operations_research::sat::LinearExpressionProto::CopyFrom(v196, (v195 + 80 * (v193 - 51 * v194)));
            v197 = v791.i64[0] + 1;
            v198 = (v791.i64[0] + 1) / 0x33uLL;
            v199 = *(*&v790[8] + 8 * v198);
            v200 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v29 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            operations_research::sat::LinearExpressionProto::CopyFrom(v200, (v199 + 80 * (v197 - 51 * v198)));
            v201 = &operations_research::sat::_LinearArgumentProto_default_instance_;
            if (*(v762 + 15) == 11)
            {
              v201 = *(v762 + 6);
            }

            v202 = v201[6];
            if (v202)
            {
              v203 = v202;
            }

            else
            {
              v203 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            *(v29 + 16) |= 1u;
            v204 = *(v29 + 48);
            if (!v204)
            {
              v205 = *(v29 + 8);
              if (v205)
              {
                v205 = *(v205 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v205);
              *(v29 + 48) = v204;
            }

            operations_research::sat::LinearExpressionProto::CopyFrom(v204, v203);
            __p[0] = "int_prod: expanded int_prod with arity ";
            __p[1] = 39;
            v207 = &operations_research::sat::_LinearArgumentProto_default_instance_;
            if (*(v762 + 15) == 11)
            {
              v207 = *(v762 + 6);
            }

            v208 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v207 + 8), v796 + 8, v206);
            v795 = v796 + 8;
            *&v796[0] = v208 - (v796 + 8);
            absl::lts_20240722::StrCat(__p, &v795, &v793);
            operations_research::sat::PresolveContext::UpdateRuleStats(v2, &v793, 1, v209, v210);
            if (SHIBYTE(v793.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v793.__r_.__value_.__l.__data_);
            }

            operations_research::sat::ConstraintProto::Clear(v762);
            std::deque<operations_research::sat::LinearExpressionProto>::~deque[abi:ne200100](v790);
          }

          goto LABEL_862;
        }

        v94 = *(v762 + 6);
        v95 = *(v94 + 24);
        v96 = (v95 + 15);
        if (v95)
        {
          v97 = v96;
        }

        else
        {
          v97 = (v94 + 24);
        }

        v98 = *v97;
        if (!operations_research::sat::PresolveContext::IsFixed(v2, *v97))
        {
          v99 = *(v94 + 24);
          if (v99)
          {
            v100 = (v99 + 7);
          }

          else
          {
            v100 = (v94 + 24);
          }

          v101 = *v100;
          if (*(v94 + 48))
          {
            v102 = *(v94 + 48);
          }

          else
          {
            v102 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          operations_research::sat::PresolveContext::DomainSuperSetOf(__p, v2, v101);
          operations_research::sat::PresolveContext::DomainSuperSetOf(&v795, v2, v98);
          operations_research::Domain::PositiveModuloBySuperset(v790, __p, &v795);
          v103 = operations_research::sat::PresolveContext::IntersectDomainWith(v2, v102, v790, 0);
          if (v790[0])
          {
            operator delete(*&v790[8]);
            if (v795)
            {
              goto LABEL_235;
            }

LABEL_121:
            if ((__p[0] & 1) == 0)
            {
              goto LABEL_122;
            }

LABEL_236:
            operator delete(__p[1]);
            if ((v103 & 1) == 0)
            {
              goto LABEL_862;
            }
          }

          else
          {
            if ((v795 & 1) == 0)
            {
              goto LABEL_121;
            }

LABEL_235:
            operator delete(*&v796[0]);
            if (__p[0])
            {
              goto LABEL_236;
            }

LABEL_122:
            if ((v103 & 1) == 0)
            {
              goto LABEL_862;
            }
          }

          operations_research::sat::PresolveContext::DomainSuperSetOf(__p, v2, v101);
          operations_research::sat::PresolveContext::DomainSuperSetOf(&v795, v2, v98);
          operations_research::Domain::PositiveDivisionBySuperset(v790, __p, &v795);
          v170 = operations_research::sat::PresolveContext::NewIntVar(v2, v790);
          if ((v790[0] & 1) == 0)
          {
            if ((v795 & 1) == 0)
            {
              goto LABEL_239;
            }

LABEL_359:
            operator delete(*&v796[0]);
            if ((__p[0] & 1) == 0)
            {
              goto LABEL_241;
            }

LABEL_240:
            operator delete(__p[1]);
            goto LABEL_241;
          }

          operator delete(*&v790[8]);
          if (v795)
          {
            goto LABEL_359;
          }

LABEL_239:
          if (__p[0])
          {
            goto LABEL_240;
          }

LABEL_241:
          operations_research::sat::LinearExpressionProto::LinearExpressionProto(v790, 0);
          v171 = *&v790[16];
          if (*&v790[16] == *&v790[20])
          {
            google::protobuf::RepeatedField<int>::Grow(&v790[16], *&v790[20], (*&v790[20] + 1));
            v171 = *&v790[16];
            v2 = v764;
          }

          *&v790[16] = v171 + 1;
          *(*&v790[24] + 4 * v171) = v170;
          v172 = v791.i32[2];
          if (v791.i32[2] == v791.i32[3])
          {
            google::protobuf::RepeatedField<long long>::Grow(&v791.i64[1], v791.u32[3], (v791.i32[3] + 1));
            v172 = v791.i32[2];
            v2 = v764;
          }

          v791.i32[2] = v172 + 1;
          *(v792 + 8 * v172) = 1;
          v173 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v174 = v173;
          if (v173 != v762)
          {
            *(v173 + 16) = 0;
            v175 = *(v762 + 4);
            if (v175)
            {
              if (*(v173 + 20) < v175)
              {
                google::protobuf::RepeatedField<int>::Grow(v173 + 16, 0, *(v762 + 4));
                v176 = *(v174 + 16);
                v177 = *(v174 + 24);
                *(v174 + 16) = v176 + v175;
                if (v175 >= 1)
                {
LABEL_249:
                  v178 = *(v762 + 3);
                  v179 = (v177 + 4 * v176);
                  if (v175 < 8)
                  {
                    goto LABEL_254;
                  }

                  v180 = 4 * v176;
                  if ((4 * v176 + v177 - v178) < 0x20)
                  {
                    goto LABEL_254;
                  }

                  v181 = v175;
                  v182 = v175 & 0x7FFFFFF8;
                  LODWORD(v175) = v175 - (v175 & 0x7FFFFFF8);
                  v179 += v182;
                  v183 = &v178[v182];
                  v184 = (v178 + 4);
                  v185 = (v177 + v180 + 16);
                  v186 = v182;
                  do
                  {
                    v187 = *v184;
                    *(v185 - 1) = *(v184 - 1);
                    *v185 = v187;
                    v184 += 2;
                    v185 += 2;
                    v186 -= 8;
                  }

                  while (v186);
                  v178 = v183;
                  if (v182 != v181)
                  {
LABEL_254:
                    v188 = v175 + 1;
                    do
                    {
                      v189 = *v178++;
                      *v179++ = v189;
                      --v188;
                    }

                    while (v188 > 1);
                  }
                }
              }

              else
              {
                v176 = 0;
                v177 = *(v173 + 24);
                *(v173 + 16) = v175;
                if (v175 >= 1)
                {
                  goto LABEL_249;
                }
              }
            }
          }

          if (*(v174 + 60) == 7)
          {
            v190 = *(v174 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v174);
            *(v174 + 60) = 7;
            v262 = *(v174 + 8);
            if (v262)
            {
              v262 = *(v262 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v262);
            v190 = v263;
            *(v174 + 48) = v263;
          }

          *(v190 + 16) |= 1u;
          v264 = *(v190 + 48);
          if (!v264)
          {
            v265 = *(v190 + 8);
            if (v265)
            {
              v265 = *(v265 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v265);
            *(v190 + 48) = v264;
          }

          operations_research::sat::LinearExpressionProto::CopyFrom(v264, v790);
          v266 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v190 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
          operations_research::sat::LinearExpressionProto::CopyFrom(v266, v101);
          v267 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v190 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
          operations_research::sat::LinearExpressionProto::CopyFrom(v267, v98);
          operations_research::sat::PresolveContext::DomainOf(&v793, v2, v170);
          operations_research::sat::PresolveContext::DomainSuperSetOf(&v769, v2, v98);
          operations_research::Domain::ContinuousMultiplicationBy(__p, &v793, &v769, v268);
          operations_research::sat::PresolveContext::DomainSuperSetOf(v765, v2, v101);
          operations_research::sat::PresolveContext::DomainSuperSetOf(&v783, v2, v102);
          operations_research::Domain::Negation(&v784, &v783);
          operations_research::Domain::AdditionWith(&v767, v765, &v784, v269);
          operations_research::Domain::IntersectionWith(&v795, __p, &v767);
          if ((v767.__r_.__value_.__s.__data_[0] & 1) == 0)
          {
            if ((v784 & 1) == 0)
            {
              goto LABEL_370;
            }

LABEL_394:
            operator delete(v785);
            if (v783.__r_.__value_.__s.__data_[0])
            {
              goto LABEL_395;
            }

LABEL_371:
            if ((v765[0] & 1) == 0)
            {
              goto LABEL_372;
            }

LABEL_396:
            operator delete(v765[1]);
            if (__p[0])
            {
              goto LABEL_397;
            }

LABEL_373:
            if ((v769.__r_.__value_.__s.__data_[0] & 1) == 0)
            {
              goto LABEL_374;
            }

LABEL_398:
            operator delete(v769.__r_.__value_.__l.__size_);
            if ((v793.__r_.__value_.__s.__data_[0] & 1) == 0)
            {
              goto LABEL_376;
            }

LABEL_375:
            operator delete(v793.__r_.__value_.__l.__size_);
            goto LABEL_376;
          }

          operator delete(v767.__r_.__value_.__l.__size_);
          if (v784)
          {
            goto LABEL_394;
          }

LABEL_370:
          if ((v783.__r_.__value_.__s.__data_[0] & 1) == 0)
          {
            goto LABEL_371;
          }

LABEL_395:
          operator delete(v783.__r_.__value_.__l.__size_);
          if (v765[0])
          {
            goto LABEL_396;
          }

LABEL_372:
          if ((__p[0] & 1) == 0)
          {
            goto LABEL_373;
          }

LABEL_397:
          operator delete(__p[1]);
          if (v769.__r_.__value_.__s.__data_[0])
          {
            goto LABEL_398;
          }

LABEL_374:
          if (v793.__r_.__value_.__s.__data_[0])
          {
            goto LABEL_375;
          }

LABEL_376:
          v270 = operations_research::sat::PresolveContext::NewIntVar(v2, &v795);
          operations_research::sat::LinearExpressionProto::LinearExpressionProto(__p, 0);
          v271 = __p[2];
          if (LODWORD(__p[2]) == HIDWORD(__p[2]))
          {
            google::protobuf::RepeatedField<int>::Grow(&__p[2], HIDWORD(__p[2]), (HIDWORD(__p[2]) + 1));
            v271 = __p[2];
            v2 = v764;
          }

          LODWORD(__p[2]) = v271 + 1;
          *(__p[3] + v271) = v270;
          v272 = v787;
          if (v787 == v788)
          {
            google::protobuf::RepeatedField<long long>::Grow(&v787, v788, v788 + 1);
            v272 = v787;
            v2 = v764;
          }

          v787 = v272 + 1;
          *(v789 + 8 * v272) = 1;
          v273 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v274 = v273;
          if (v273 != v762)
          {
            *(v273 + 16) = 0;
            v275 = *(v762 + 4);
            if (v275)
            {
              if (*(v273 + 20) < v275)
              {
                google::protobuf::RepeatedField<int>::Grow(v273 + 16, 0, *(v762 + 4));
                v276 = *(v274 + 16);
                v277 = *(v274 + 24);
                *(v274 + 16) = v276 + v275;
                if (v275 >= 1)
                {
LABEL_384:
                  v278 = *(v762 + 3);
                  v279 = (v277 + 4 * v276);
                  if (v275 < 8)
                  {
                    goto LABEL_389;
                  }

                  v280 = 4 * v276;
                  if ((4 * v276 + v277 - v278) < 0x20)
                  {
                    goto LABEL_389;
                  }

                  v281 = v275;
                  v282 = v275 & 0x7FFFFFF8;
                  LODWORD(v275) = v275 - (v275 & 0x7FFFFFF8);
                  v279 += v282;
                  v283 = &v278[v282];
                  v284 = (v278 + 4);
                  v285 = (v277 + v280 + 16);
                  v286 = v282;
                  do
                  {
                    v287 = *v284;
                    *(v285 - 1) = *(v284 - 1);
                    *v285 = v287;
                    v284 += 2;
                    v285 += 2;
                    v286 -= 8;
                  }

                  while (v286);
                  v278 = v283;
                  if (v282 != v281)
                  {
LABEL_389:
                    v288 = v275 + 1;
                    do
                    {
                      v289 = *v278++;
                      *v279++ = v289;
                      --v288;
                    }

                    while (v288 > 1);
                  }
                }
              }

              else
              {
                v276 = 0;
                v277 = *(v273 + 24);
                *(v273 + 16) = v275;
                if (v275 >= 1)
                {
                  goto LABEL_384;
                }
              }
            }
          }

          if (*(v274 + 60) == 11)
          {
            v290 = *(v274 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v274);
            *(v274 + 60) = 11;
            v291 = *(v274 + 8);
            if (v291)
            {
              v291 = *(v291 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v291);
            v290 = v292;
            *(v274 + 48) = v292;
          }

          *(v290 + 16) |= 1u;
          v293 = *(v290 + 48);
          if (!v293)
          {
            v294 = *(v290 + 8);
            if (v294)
            {
              v294 = *(v294 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v294);
            *(v290 + 48) = v293;
          }

          operations_research::sat::LinearExpressionProto::CopyFrom(v293, __p);
          v295 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v290 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
          operations_research::sat::LinearExpressionProto::CopyFrom(v295, v790);
          v296 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v290 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
          operations_research::sat::LinearExpressionProto::CopyFrom(v296, v98);
          v297 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v300 = v297;
          if (v297 != v762)
          {
            *(v297 + 16) = 0;
            v301 = *(v762 + 4);
            if (v301)
            {
              if (*(v297 + 20) < v301)
              {
                google::protobuf::RepeatedField<int>::Grow(v297 + 16, 0, *(v762 + 4));
                v302 = *(v300 + 16);
                v303 = *(v300 + 24);
                *(v300 + 16) = v302 + v301;
                if (v301 >= 1)
                {
LABEL_411:
                  v304 = *(v762 + 3);
                  v305 = (v303 + 4 * v302);
                  if (v301 < 8)
                  {
                    goto LABEL_416;
                  }

                  v306 = 4 * v302;
                  if ((4 * v302 + v303 - v304) < 0x20)
                  {
                    goto LABEL_416;
                  }

                  v307 = v301;
                  v308 = v301 & 0x7FFFFFF8;
                  LODWORD(v301) = v301 - (v301 & 0x7FFFFFF8);
                  v305 += v308;
                  v309 = (v304 + 4 * v308);
                  v310 = v304 + 1;
                  v311 = (v303 + v306 + 16);
                  v312 = v308;
                  do
                  {
                    v299 = v310[-1];
                    v313 = *v310;
                    v311[-1] = v299;
                    *v311 = v313;
                    v310 += 2;
                    v311 += 2;
                    v312 -= 8;
                  }

                  while (v312);
                  v304 = v309;
                  if (v308 != v307)
                  {
LABEL_416:
                    v314 = v301 + 1;
                    do
                    {
                      v315 = v304->n128_u32[0];
                      v304 = (v304 + 4);
                      *v305++ = v315;
                      --v314;
                    }

                    while (v314 > 1);
                  }
                }
              }

              else
              {
                v302 = 0;
                v303 = *(v297 + 24);
                *(v297 + 16) = v301;
                if (v301 >= 1)
                {
                  goto LABEL_411;
                }
              }
            }
          }

          if (*(v300 + 60) == 12)
          {
            v316 = *(v300 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v300);
            *(v300 + 60) = 12;
            v317 = *(v300 + 8);
            if (v317)
            {
              v317 = *(v317 & 0xFFFFFFFFFFFFFFFELL);
            }

            v316 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v317);
            *(v300 + 48) = v316;
          }

          v319 = *(v316 + 16);
          v318 = *(v316 + 17);
          if (v319 == v318)
          {
            google::protobuf::RepeatedField<long long>::Grow((v316 + 8), v318, (v318 + 1));
            v587 = *(v316 + 16);
            v318 = *(v316 + 17);
            v320 = v316[9];
            v321 = v587 + 1;
            *(v316 + 16) = v587 + 1;
            *(v320 + 8 * v587) = 0;
            if (v587 + 1 != v318)
            {
              goto LABEL_425;
            }
          }

          else
          {
            v320 = v316[9];
            v321 = v319 + 1;
            *(v316 + 16) = v319 + 1;
            *(v320 + 8 * v319) = 0;
            if (v319 + 1 != v318)
            {
LABEL_425:
              *(v316 + 16) = v321 + 1;
              *(v320 + 8 * v321) = 0;
              operations_research::sat::AddLinearExpressionToLinearConstraint(v101, 1, v316, v298, v299);
              operations_research::sat::AddLinearExpressionToLinearConstraint(__p, 0xFFFFFFFFFFFFFFFFLL, v316, v322, v323);
              operations_research::sat::AddLinearExpressionToLinearConstraint(v102, 0xFFFFFFFFFFFFFFFFLL, v316, v324, v325);
              operations_research::sat::ConstraintProto::Clear(v762);
              *(&v793.__r_.__value_.__s + 23) = 17;
              strcpy(&v793, "int_mod: expanded");
              operations_research::sat::PresolveContext::UpdateRuleStats(v2, &v793, 1, v326, v327);
              if (SHIBYTE(v793.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v793.__r_.__value_.__l.__data_);
              }

              operations_research::sat::LinearExpressionProto::~LinearExpressionProto(__p);
              if (v795)
              {
                operator delete(*&v796[0]);
              }

              operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v790);
              goto LABEL_862;
            }
          }

          google::protobuf::RepeatedField<long long>::Grow((v316 + 8), v318, (v318 + 1));
          v321 = *(v316 + 16);
          v320 = v316[9];
          goto LABEL_425;
        }

        goto LABEL_862;
      }

      if (v11 == 12)
      {
        if (*(*(v762 + 6) + 64) >= 3 && (*(*(v2 + 49) + 570) & 1) == 0)
        {
        }

        goto LABEL_862;
      }

      if (v11 != 14)
      {
        goto LABEL_865;
      }

      v67 = *(v762 + 6);
      v69 = *(v67 + 36);
      v68 = *(v67 + 40);
      operations_research::Domain::Domain(v790, 0, *(v67 + 16) - 1);
      v70 = operations_research::sat::PresolveContext::IntersectDomainWith(v2, v69, v790, 0);
      if (v790[0])
      {
        operator delete(*&v790[8]);
      }

      if ((v70 & 1) == 0)
      {
        if (dword_2810BFAA0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFA98, dword_2810BFAA0))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v790, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 679);
          v149 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v790, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v149, "Empty domain for the index variable in ExpandElement()", 0x36uLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v790);
          v2 = v764;
        }

        goto LABEL_862;
      }

      if (v69 == v68)
      {
        v71 = &operations_research::sat::_ElementConstraintProto_default_instance_;
        if (*(v762 + 15) == 14)
        {
          v71 = *(v762 + 6);
        }

        v72 = *(v71 + 9);
        operations_research::sat::PresolveContext::DomainOf(__p, v2, v72);
        *v790 = 0;
        v73 = __p[0];
        if (__p[0] >= 2)
        {
          if (__p[0])
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(v790, __p);
            v73 = __p[0];
          }

          else
          {
            *v790 = __p[0];
            *&v790[8] = *&__p[1];
          }
        }

        if (v73)
        {
          operator delete(__p[1]);
        }

        if (*v790 > 1uLL)
        {
          v347 = v790[0] & 1;
          v346 = *&v790[8];
          if (v790[0])
          {
            v348 = *&v790[8];
          }

          else
          {
            v348 = &v790[8];
          }

          v345 = *v348;
        }

        else
        {
          v345 = 0;
          v346 = *&v790[8];
          v347 = *v790;
        }

        if (v347)
        {
          v349 = v346;
        }

        else
        {
          v349 = &v790[8];
        }

        if ((*v790 & 0x1FFFFFFFFFFFFFFELL) == 0)
        {
          v350 = 0;
LABEL_492:
          v2 = v764;
          if (v347)
          {
            operator delete(*&v790[8]);
          }

          operations_research::sat::PresolveContext::DomainOf(v790, v764, v72);
          v354 = operations_research::Domain::Size(v790);
          if (v790[0])
          {
            operator delete(*&v790[8]);
          }

          if (v350 >> 3 >= v354)
          {
            operations_research::sat::PresolveContext::DomainOf(&v795, v764, v72);
            *v790 = 0;
            v356 = v795;
            if (v795 >= 2)
            {
              if (v795)
              {
                absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(v790, &v795);
                v356 = v795;
              }

              else
              {
                *v790 = v795;
                *&v790[8] = v796[0];
              }
            }

            if (v356)
            {
              operator delete(*&v796[0]);
            }

            if (*v790 > 1uLL)
            {
              v459 = v790[0] & 1;
              v458 = *&v790[8];
              if (v790[0])
              {
                v460 = *&v790[8];
              }

              else
              {
                v460 = &v790[8];
              }

              v457 = *v460;
            }

            else
            {
              v457 = 0;
              v458 = *&v790[8];
              v459 = *v790;
            }

            if (v459)
            {
              v461 = v458;
            }

            else
            {
              v461 = &v790[8];
            }

            if ((*v790 & 0x1FFFFFFFFFFFFFFELL) != 0)
            {
              v462 = &v461[2 * (*v790 >> 1)];
              do
              {
                v463 = *(v71[3] + v457);
                if (operations_research::sat::PresolveContext::MinOf(v764, v463) != v457 || operations_research::sat::PresolveContext::MaxOf(v764, v463) != v457)
                {
                  VarValueEncoding = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v764, v72, v457);
                  operations_research::Domain::Domain(&v795, v457);
                  operations_research::sat::PresolveContext::AddImplyInDomain(v764, VarValueEncoding, v463, &v795);
                  if (v795)
                  {
                    operator delete(*&v796[0]);
                  }
                }

                if (v457 == v461[1])
                {
                  v461 += 2;
                  if (v461 != v462)
                  {
                    v457 = *v461;
                  }
                }

                else
                {
                  ++v457;
                }
              }

              while (v461 != v462);
              v459 = v790[0] & 1;
            }

            if (v459)
            {
              operator delete(*&v790[8]);
            }

            operator new();
          }

          memset(__p, 0, 24);
          if (v350)
          {
            if ((v350 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          operations_research::Domain::FromValues(__p, v790);
          v355 = operations_research::sat::PresolveContext::IntersectDomainWith(v764, v72, v790, 0);
          if (v790[0])
          {
            operator delete(*&v790[8]);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v355)
          {
            operator new();
          }

          if (dword_2810BFAB8 >= 1)
          {
            v2 = v764;
            if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFAB0, dword_2810BFAB8))
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v790, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 534);
              v357 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v790, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v357, "No compatible variable domains in ExpandElementWithTargetEqualIndex()", 0x45uLL);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v790);
              v2 = v764;
            }
          }

          goto LABEL_862;
        }

        v350 = 0;
        v351 = &v349[2 * (*v790 >> 1)];
        while (2)
        {
          if (operations_research::sat::PresolveContext::DomainContains(v764, *(v71[3] + v345), v345))
          {
            v352 = v350;
            v353 = v350 >> 3;
            if (((v350 >> 3) + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v350 >> 3 != -1)
            {
              if (!(((v350 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v353) = v345;
            v350 = 8 * v353 + 8;
            memcpy(0, 0, v352);
            if (v345 != v349[1])
            {
              goto LABEL_478;
            }

LABEL_482:
            v349 += 2;
            if (v349 != v351)
            {
              v345 = *v349;
            }
          }

          else
          {
            if (v345 == v349[1])
            {
              goto LABEL_482;
            }

LABEL_478:
            ++v345;
          }

          if (v349 == v351)
          {
            v347 = v790[0] & 1;
            goto LABEL_492;
          }

          continue;
        }
      }

      operations_research::sat::PresolveContext::DomainOf(&v767, v2, v69);
      operations_research::sat::PresolveContext::DomainOf(v765, v2, v68);
      v784 = 0;
      if (v767.__r_.__value_.__r.__words[0] > 1)
      {
        v169 = v767.__r_.__value_.__s.__data_[0] & 1;
        size = v767.__r_.__value_.__l.__size_;
        if (v767.__r_.__value_.__s.__data_[0])
        {
          p_size = v767.__r_.__value_.__l.__size_;
        }

        else
        {
          p_size = &v767.__r_.__value_.__l.__size_;
        }

        v167 = *p_size;
      }

      else
      {
        v167 = 0;
        size = v767.__r_.__value_.__l.__size_;
        v169 = v767.__r_.__value_.__r.__words[0];
      }

      v749 = v69;
      v755 = v68;
      if (v169)
      {
        v254 = size;
      }

      else
      {
        v254 = &v767.__r_.__value_.__l.__size_;
      }

      if ((v767.__r_.__value_.__r.__words[0] & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v255 = 0;
        v256 = &v254[2 * (v767.__r_.__value_.__r.__words[0] >> 1)];
        v257 = 1;
        do
        {
          operations_research::sat::PresolveContext::DomainOf(v790, v764, *(*(v67 + 24) + 4 * v167));
          operations_research::Domain::IntersectionWith(__p, v790, v765);
          IsEmpty = operations_research::Domain::IsEmpty(__p);
          if (__p[0])
          {
            operator delete(__p[1]);
          }

          if (!IsEmpty)
          {
            v259 = v255;
            v260 = v255 >> 3;
            if (((v255 >> 3) + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v255 >> 3 != -1)
            {
              if (!(((v255 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v260) = v167;
            v255 = 8 * v260 + 8;
            memcpy(0, 0, v259);
            operations_research::Domain::UnionWith(__p, &v784, v790);
            if (v784)
            {
              operator delete(v785);
            }

            v784 = __p[0];
            v785 = *&__p[1];
            v261 = operations_research::Domain::Min(v790);
            v257 &= v261 == operations_research::Domain::Max(v790);
          }

          if (v790[0])
          {
            operator delete(*&v790[8]);
          }

          if (v167 == v254[1])
          {
            v254 += 2;
            if (v254 != v256)
            {
              v167 = *v254;
            }
          }

          else
          {
            ++v167;
          }
        }

        while (v254 != v256);
      }

      else
      {
        v255 = 0;
        v257 = 1;
      }

      v2 = v764;
      if (operations_research::Domain::Size(&v767) > (v255 >> 3))
      {
        memset(&v783, 0, sizeof(v783));
        if (v255)
        {
          if ((v255 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        operations_research::Domain::FromValues(&v783, v790);
        v329 = operations_research::sat::PresolveContext::IntersectDomainWith(v764, v749, v790, 0);
        if (v790[0])
        {
          operator delete(*&v790[8]);
        }

        if (v783.__r_.__value_.__r.__words[0])
        {
          v783.__r_.__value_.__l.__size_ = v783.__r_.__value_.__r.__words[0];
          operator delete(v783.__r_.__value_.__l.__data_);
        }

        if (v329)
        {
          operator new();
        }

        if (dword_2810BFAD0 >= 1)
        {
          v2 = v764;
          if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFAC8, dword_2810BFAD0))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(v790, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 709);
            v358 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v790, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v358, "No compatible variable domains in ExpandElement()", 0x31uLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(v790);
            v2 = v764;
          }
        }

        goto LABEL_855;
      }

      LOBYTE(v775[0]) = 0;
      if ((operations_research::sat::PresolveContext::IntersectDomainWith(v764, v755, &v784, v775) & 1) == 0)
      {
LABEL_855:
        if (v784)
        {
          operator delete(v785);
          if ((v765[0] & 1) == 0)
          {
LABEL_857:
            if (v767.__r_.__value_.__s.__data_[0])
            {
              goto LABEL_861;
            }

            goto LABEL_862;
          }
        }

        else if ((v765[0] & 1) == 0)
        {
          goto LABEL_857;
        }

        operator delete(v765[1]);
        if (v767.__r_.__value_.__s.__data_[0])
        {
LABEL_861:
          operator delete(v767.__r_.__value_.__l.__size_);
          goto LABEL_862;
        }

        goto LABEL_862;
      }

      if (LOBYTE(v775[0]) == 1)
      {
        operator new();
      }

      v330 = *(v762 + 15);
      if (v257)
      {
        v331 = &operations_research::sat::_ElementConstraintProto_default_instance_;
        if (v330 == 14)
        {
          v331 = *(v762 + 6);
        }

        v332 = *(v331 + 9);
        v333 = *(v331 + 10);
        operations_research::sat::PresolveContext::DomainOf(&v793, v764, v332);
        operations_research::sat::PresolveContext::DomainOf(&v769, v764, v333);
        *v790 = xmmword_23CE306D0;
        *__p = xmmword_23CE306D0;
        v334 = v332;
        if (v793.__r_.__value_.__r.__words[0] > 1)
        {
          v337 = v793.__r_.__value_.__s.__data_[0] & 1;
          v336 = v793.__r_.__value_.__l.__size_;
          if (v793.__r_.__value_.__s.__data_[0])
          {
            v472 = v793.__r_.__value_.__l.__size_;
          }

          else
          {
            v472 = &v793.__r_.__value_.__l.__size_;
          }

          v335 = *v472;
        }

        else
        {
          v335 = 0;
          v336 = v793.__r_.__value_.__l.__size_;
          v337 = v793.__r_.__value_.__r.__words[0];
        }

        if (v337)
        {
          v473 = v336;
        }

        else
        {
          v473 = &v793.__r_.__value_.__l.__size_;
        }

        if ((v793.__r_.__value_.__r.__words[0] & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v474 = &v473[2 * (v793.__r_.__value_.__r.__words[0] >> 1)];
          do
          {
            v781 = operations_research::sat::PresolveContext::MinOf(v764, *(v331[3] + v335));
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::find_or_prepare_insert<long long>(__p, &v781, &v795);
            if (BYTE8(v796[0]) == 1)
            {
              v475 = *&v796[0];
              **&v796[0] = v781;
              *(v475 + 8) = 0;
            }

            v476 = *(*&v796[0] + 8) + 1;
            *(*&v796[0] + 8) = v476;
            if (v476 == 2)
            {
              v477 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v764 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
              v478 = v477;
              if (*(v477 + 60) == 3)
              {
                v479 = *(v477 + 48);
              }

              else
              {
                operations_research::sat::ConstraintProto::clear_constraint(v477);
                *(v478 + 60) = 3;
                v480 = *(v478 + 8);
                if (v480)
                {
                  v480 = *(v480 & 0xFFFFFFFFFFFFFFFELL);
                }

                v479 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v480);
                *(v478 + 48) = v479;
              }

              v481 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v764, v333, v781);
              v482 = v479[2];
              v483 = v482;
              if (v482 == HIDWORD(v482))
              {
                google::protobuf::RepeatedField<int>::Grow((v479 + 2), HIDWORD(v482), (HIDWORD(v482) + 1));
                v483 = *(v479 + 4);
              }

              v484 = v479[3];
              *(v479 + 4) = v483 + 1;
              *(v484 + 4 * v483) = ~v481;
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::BoolArgumentProto *>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::BoolArgumentProto *>>>::find_or_prepare_insert<long long>(v790, &v781, &v795);
              if (BYTE8(v796[0]) == 1)
              {
                v485 = *&v796[0];
                **&v796[0] = v781;
                *(v485 + 8) = 0;
              }

              *(*&v796[0] + 8) = v479;
            }

            if (v335 == v473[1])
            {
              v473 += 2;
              if (v473 != v474)
              {
                v335 = *v473;
              }
            }

            else
            {
              ++v335;
            }
          }

          while (v473 != v474);
          v2 = v764;
          if (__p[0] >= 2)
          {
            operator delete(__p[2] - (__p[1] & 1) - 8);
          }
        }

        v486 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v487 = &v793.__r_.__value_.__l.__size_;
        v488 = v486;
        v489 = v334;
        if (*(v486 + 60) == 29)
        {
          v490 = *(v486 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v486);
          *(v488 + 60) = 29;
          v559 = *(v488 + 8);
          if (v559)
          {
            v559 = *(v559 & 0xFFFFFFFFFFFFFFFELL);
          }

          v490 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v559);
          *(v488 + 48) = v490;
        }

        if (v793.__r_.__value_.__r.__words[0] > 1)
        {
          v562 = v793.__r_.__value_.__s.__data_[0] & 1;
          v561 = v793.__r_.__value_.__l.__size_;
          if (v793.__r_.__value_.__s.__data_[0])
          {
            v563 = v793.__r_.__value_.__l.__size_;
          }

          else
          {
            v563 = &v793.__r_.__value_.__l.__size_;
          }

          v560 = *v563;
        }

        else
        {
          v560 = 0;
          v561 = v793.__r_.__value_.__l.__size_;
          v562 = v793.__r_.__value_.__r.__words[0];
        }

        if (v562)
        {
          v564 = v561;
        }

        else
        {
          v564 = &v793.__r_.__value_.__l.__size_;
        }

        if ((v793.__r_.__value_.__r.__words[0] & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v565 = &v564[2 * (v793.__r_.__value_.__r.__words[0] >> 1)];
          do
          {
            v566 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v764, v489, v560);
            v567 = v490[2];
            v568 = v567;
            if (v567 == HIDWORD(v567))
            {
              google::protobuf::RepeatedField<int>::Grow((v490 + 2), HIDWORD(v567), (HIDWORD(v567) + 1));
              v568 = *(v490 + 4);
            }

            v569 = v490[3];
            *(v490 + 4) = v568 + 1;
            *(v569 + 4 * v568) = v566;
            v570 = operations_research::sat::PresolveContext::MinOf(v764, *(v331[3] + v560));
            if (*v790 > 1uLL)
            {
              v573 = 0;
              _X9 = *&v790[16];
              __asm { PRFM            #4, [X9] }

              v576 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v570) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v570));
              v577 = vdup_n_s8(v576 & 0x7F);
              v578 = ((*&v790[16] >> 12) ^ (v576 >> 7)) & *v790;
              v579 = *(*&v790[16] + v578);
              v580 = vceq_s8(v579, v577);
              if (!v580)
              {
                goto LABEL_841;
              }

              do
              {
LABEL_839:
                v581 = (v578 + (__clz(__rbit64(v580)) >> 3)) & *v790;
                if (*(*&v790[24] + 16 * v581) == v570)
                {
                  v487 = (*&v790[24] + 16 * v581);
                  v572 = (*&v790[16] + v581);
                  goto LABEL_846;
                }

                v580 &= ((v580 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v580);
LABEL_841:
              while (!*&vceq_s8(v579, 0x8080808080808080))
              {
                v573 += 8;
                v578 = (v573 + v578) & *v790;
                v579 = *(*&v790[16] + v578);
                v580 = vceq_s8(v579, v577);
                if (v580)
                {
                  goto LABEL_839;
                }
              }

              v572 = 0;
            }

            else
            {
              v571 = *&v790[16] == v570 && *&v790[8] > 1uLL;
              v572 = &absl::lts_20240722::container_internal::kSooControl;
              if (!v571)
              {
                v572 = 0;
              }

              v487 = &v790[16];
            }

LABEL_846:
            if (v572)
            {
              v582 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v764, v333, v570);
              operations_research::sat::PresolveContext::AddImplication(v764, v566, v582);
              v487 = v487[1];
              v583 = v487[2];
              v584 = v583;
              if (v583 == HIDWORD(v583))
              {
                google::protobuf::RepeatedField<int>::Grow((v487 + 2), HIDWORD(v583), (HIDWORD(v583) + 1));
                v584 = *(v487 + 4);
              }

              v585 = v487[3];
              *(v487 + 4) = v584 + 1;
              *(v585 + 4 * v584) = v566;
            }

            else
            {
              operations_research::sat::PresolveContext::InsertVarValueEncoding(v764, v566, v333, v570);
            }

            if (v560 == v564[1])
            {
              v564 += 2;
              if (v564 != v565)
              {
                v560 = *v564;
              }
            }

            else
            {
              ++v560;
            }
          }

          while (v564 != v565);
        }

        operator new();
      }

      v465 = &operations_research::sat::_ElementConstraintProto_default_instance_;
      if (v330 == 14)
      {
        v465 = *(v762 + 6);
      }

      v466 = *(v465 + 9);
      v756 = *(v465 + 10);
      operations_research::sat::PresolveContext::DomainOf(v790, v764, *(v465 + 9));
      v467 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v764 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v470 = v467;
      if (*(v467 + 60) == 29)
      {
        v471 = *(v467 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v467);
        *(v470 + 60) = 29;
        v491 = *(v470 + 8);
        if (v491)
        {
          v491 = *(v491 & 0xFFFFFFFFFFFFFFFELL);
        }

        v471 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v491);
        *(v470 + 48) = v471;
      }

      *v750 = v465;
      if (*v790 > 1uLL)
      {
        v494 = v790[0] & 1;
        v493 = *&v790[8];
        if (v790[0])
        {
          v495 = *&v790[8];
        }

        else
        {
          v495 = &v790[8];
        }

        v492 = *v495;
      }

      else
      {
        v492 = 0;
        v493 = *&v790[8];
        v494 = *v790;
      }

      if (v494)
      {
        v496 = v493;
      }

      else
      {
        v496 = &v790[8];
      }

      if ((*v790 & 0x1FFFFFFFFFFFFFFELL) == 0)
      {
LABEL_809:
        HIBYTE(__p[2]) = 17;
        strcpy(__p, "element: expanded");
        operations_research::sat::PresolveContext::UpdateRuleStats(v2, __p, 1, v468, v469);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        operations_research::sat::ConstraintProto::Clear(v762);
        if (v790[0])
        {
          operator delete(*&v790[8]);
        }

        goto LABEL_855;
      }

      v497 = &v496[2 * (*v790 >> 1)];
      while (1)
      {
        v498 = *(*(*v750 + 24) + 4 * v492);
        operations_research::sat::PresolveContext::DomainOf(__p, v2, v498);
        v499 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v2, v466, v492);
        v500 = v471[2];
        v501 = v500;
        if (v500 == HIDWORD(v500))
        {
          google::protobuf::RepeatedField<int>::Grow((v471 + 2), HIDWORD(v500), (HIDWORD(v500) + 1));
          v501 = *(v471 + 4);
        }

        v502 = v471[3];
        *(v471 + 4) = v501 + 1;
        *(v502 + 4 * v501) = v499;
        if (!operations_research::Domain::IsFixed(__p))
        {
          break;
        }

        operations_research::sat::PresolveContext::AddImplyInDomain(v2, v499, v756, __p);
LABEL_798:
        if (__p[0])
        {
          operator delete(__p[1]);
        }

        if (v492 == v496[1])
        {
          v496 += 2;
          if (v496 != v497)
          {
            v492 = *v496;
          }
        }

        else
        {
          ++v492;
        }

        if (v496 == v497)
        {
          goto LABEL_809;
        }
      }

      v503 = v497;
      v504 = v466;
      v505 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v506 = v505;
      v507 = (v505 + 16);
      v508 = *(v505 + 16);
      v509 = v508;
      if (v508 == HIDWORD(v508))
      {
        google::protobuf::RepeatedField<int>::Grow(v505 + 16, HIDWORD(v508), (HIDWORD(v508) + 1));
        v509 = *v507;
      }

      v510 = *(v506 + 24);
      *(v506 + 16) = v509 + 1;
      *(v510 + 4 * v509) = v499;
      v511 = *(v506 + 60);
      if ((v498 & 0x80000000) != 0)
      {
        if (v511 == 12)
        {
          v513 = *(v506 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v506);
          *(v506 + 60) = 12;
          v523 = *(v506 + 8);
          if (v523)
          {
            v523 = *(v523 & 0xFFFFFFFFFFFFFFFELL);
          }

          v513 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v523);
          *(v506 + 48) = v513;
        }

        v524 = v513[2];
        v525 = v524;
        if (v524 == HIDWORD(v524))
        {
          google::protobuf::RepeatedField<int>::Grow((v513 + 2), HIDWORD(v524), (HIDWORD(v524) + 1));
          v525 = *(v513 + 4);
        }

        v526 = v513[3];
        *(v513 + 4) = v525 + 1;
        *(v526 + 4 * v525) = ~v498;
        if (*(v506 + 60) == 12)
        {
          v518 = *(v506 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v506);
          *(v506 + 60) = 12;
          v527 = *(v506 + 8);
          if (v527)
          {
            v527 = *(v527 & 0xFFFFFFFFFFFFFFFELL);
          }

          v518 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v527);
          *(v506 + 48) = v518;
        }

        v521 = *(v518 + 10);
        v528 = *(v518 + 11);
        if (v521 != v528)
        {
          v522 = -1;
          goto LABEL_754;
        }

        google::protobuf::RepeatedField<long long>::Grow((v518 + 5), v528, (v528 + 1));
        v522 = -1;
      }

      else
      {
        if (v511 == 12)
        {
          v512 = *(v506 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v506);
          *(v506 + 60) = 12;
          v514 = *(v506 + 8);
          if (v514)
          {
            v514 = *(v514 & 0xFFFFFFFFFFFFFFFELL);
          }

          v512 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v514);
          *(v506 + 48) = v512;
        }

        v515 = v512[2];
        v516 = v515;
        if (v515 == HIDWORD(v515))
        {
          google::protobuf::RepeatedField<int>::Grow((v512 + 2), HIDWORD(v515), (HIDWORD(v515) + 1));
          v516 = *(v512 + 4);
        }

        v517 = v512[3];
        *(v512 + 4) = v516 + 1;
        *(v517 + 4 * v516) = v498;
        if (*(v506 + 60) == 12)
        {
          v518 = *(v506 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v506);
          *(v506 + 60) = 12;
          v519 = *(v506 + 8);
          if (v519)
          {
            v519 = *(v519 & 0xFFFFFFFFFFFFFFFELL);
          }

          v518 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v519);
          *(v506 + 48) = v518;
        }

        v521 = *(v518 + 10);
        v520 = *(v518 + 11);
        if (v521 != v520)
        {
          v522 = 1;
          goto LABEL_754;
        }

        google::protobuf::RepeatedField<long long>::Grow((v518 + 5), v520, (v520 + 1));
        v522 = 1;
      }

      v521 = *(v518 + 10);
      v2 = v764;
LABEL_754:
      v529 = v518[6];
      *(v518 + 10) = v521 + 1;
      *(v529 + 8 * v521) = v522;
      v530 = *(v506 + 60);
      if ((v756 & 0x80000000) != 0)
      {
        if (v530 == 12)
        {
          v532 = *(v506 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v506);
          *(v506 + 60) = 12;
          v542 = *(v506 + 8);
          if (v542)
          {
            v542 = *(v542 & 0xFFFFFFFFFFFFFFFELL);
          }

          v532 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v542);
          *(v506 + 48) = v532;
        }

        v543 = v532[2];
        v544 = v543;
        if (v543 == HIDWORD(v543))
        {
          google::protobuf::RepeatedField<int>::Grow((v532 + 2), HIDWORD(v543), (HIDWORD(v543) + 1));
          v544 = *(v532 + 4);
        }

        v545 = v532[3];
        *(v532 + 4) = v544 + 1;
        *(v545 + 4 * v544) = ~v756;
        if (*(v506 + 60) == 12)
        {
          v537 = *(v506 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v506);
          *(v506 + 60) = 12;
          v546 = *(v506 + 8);
          if (v546)
          {
            v546 = *(v546 & 0xFFFFFFFFFFFFFFFELL);
          }

          v537 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v546);
          *(v506 + 48) = v537;
        }

        v540 = *(v537 + 10);
        v547 = *(v537 + 11);
        if (v540 != v547)
        {
          v541 = 1;
          goto LABEL_783;
        }

        google::protobuf::RepeatedField<long long>::Grow((v537 + 5), v547, (v547 + 1));
        v541 = 1;
      }

      else
      {
        if (v530 == 12)
        {
          v531 = *(v506 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v506);
          *(v506 + 60) = 12;
          v533 = *(v506 + 8);
          if (v533)
          {
            v533 = *(v533 & 0xFFFFFFFFFFFFFFFELL);
          }

          v531 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v533);
          *(v506 + 48) = v531;
        }

        v534 = v531[2];
        v535 = v534;
        if (v534 == HIDWORD(v534))
        {
          google::protobuf::RepeatedField<int>::Grow((v531 + 2), HIDWORD(v534), (HIDWORD(v534) + 1));
          v535 = *(v531 + 4);
        }

        v536 = v531[3];
        *(v531 + 4) = v535 + 1;
        *(v536 + 4 * v535) = v756;
        if (*(v506 + 60) == 12)
        {
          v537 = *(v506 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v506);
          *(v506 + 60) = 12;
          v538 = *(v506 + 8);
          if (v538)
          {
            v538 = *(v538 & 0xFFFFFFFFFFFFFFFELL);
          }

          v537 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v538);
          *(v506 + 48) = v537;
        }

        v540 = *(v537 + 10);
        v539 = *(v537 + 11);
        if (v540 != v539)
        {
          v541 = -1;
LABEL_783:
          v548 = v537[6];
          *(v537 + 10) = v540 + 1;
          *(v548 + 8 * v540) = v541;
          if (*(v506 + 60) == 12)
          {
            v549 = *(v506 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v506);
            *(v506 + 60) = 12;
            v550 = *(v506 + 8);
            if (v550)
            {
              v550 = *(v550 & 0xFFFFFFFFFFFFFFFELL);
            }

            v549 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v550);
            *(v506 + 48) = v549;
          }

          v552 = *(v549 + 16);
          v551 = *(v549 + 17);
          if (v552 == v551)
          {
            google::protobuf::RepeatedField<long long>::Grow((v549 + 8), v551, (v551 + 1));
            v552 = *(v549 + 16);
          }

          v553 = v549[9];
          *(v549 + 16) = v552 + 1;
          *(v553 + 8 * v552) = 0;
          if (*(v506 + 60) == 12)
          {
            v554 = *(v506 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v506);
            *(v506 + 60) = 12;
            v555 = *(v506 + 8);
            if (v555)
            {
              v555 = *(v555 & 0xFFFFFFFFFFFFFFFELL);
            }

            v554 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v555);
            *(v506 + 48) = v554;
          }

          v557 = *(v554 + 16);
          v556 = *(v554 + 17);
          v466 = v504;
          v497 = v503;
          if (v557 == v556)
          {
            google::protobuf::RepeatedField<long long>::Grow((v554 + 8), v556, (v556 + 1));
            v557 = *(v554 + 16);
            v466 = v504;
            v497 = v503;
          }

          v558 = v554[9];
          *(v554 + 16) = v557 + 1;
          *(v558 + 8 * v557) = 0;
          goto LABEL_798;
        }

        google::protobuf::RepeatedField<long long>::Grow((v537 + 5), v539, (v539 + 1));
        v541 = -1;
      }

      v540 = *(v537 + 10);
      v2 = v764;
      goto LABEL_783;
    }

    if (v11 <= 17)
    {
      if (v11 == 16)
      {
        v122 = *(v762 + 6);
        if (*(v122 + 60) == 1)
        {
          v123 = *(v122 + 16);
          v124 = *(v122 + 40);
          memset(v790, 0, 24);
          __p[0] = v790;
          LOBYTE(__p[1]) = 0;
          v125 = v124 / v123;
          if (v125)
          {
            if ((v125 & 0x80000000) == 0)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          operator new();
        }
      }

      goto LABEL_862;
    }

    if (v11 == 18)
    {
      v104 = *(v762 + 6);
      v106 = v104 + 16;
      v105 = *(v104 + 16);
      v108 = v104 + 40;
      v107 = *(v104 + 40);
      if (v105 != v107)
      {
        operations_research::sat::ExpandCpModel(v105, v107, v790);
      }

      *v790 = xmmword_23CE306D0;
      if (v105)
      {
        v109 = *(v104 + 24);
        v110 = v105 - 1;
        v111 = 4 * v105;
        while (1)
        {
          v112 = *v109;
          if (~v112 <= v112)
          {
            v113 = *v109;
          }

          else
          {
            v113 = ~v112;
          }

          LODWORD(v795) = v113;
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v790, &v795, __p);
          if (LOBYTE(__p[2]) == 1)
          {
            *__p[1] = v795;
          }

          operations_research::Domain::Domain(__p, 0, v110);
          v114 = operations_research::sat::PresolveContext::IntersectDomainWith(v764, v112, __p, 0);
          if (__p[0])
          {
            operator delete(__p[1]);
          }

          if ((v114 & 1) == 0)
          {
            break;
          }

          ++v109;
          v111 -= 4;
          if (!v111)
          {
            v116 = (v104 + 48);
            v115 = *(v104 + 48);
            v117 = *(v104 + 40);
            if (!v117)
            {
LABEL_150:
              v2 = v764;
              goto LABEL_181;
            }

            v118 = 4 * v117;
            while (1)
            {
              v119 = *v115;
              if (~v119 <= v119)
              {
                v120 = *v115;
              }

              else
              {
                v120 = ~v119;
              }

              LODWORD(v795) = v120;
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v790, &v795, __p);
              if (LOBYTE(__p[2]) == 1)
              {
                *__p[1] = v795;
              }

              operations_research::Domain::Domain(__p, 0, v110);
              v121 = operations_research::sat::PresolveContext::IntersectDomainWith(v764, v119, __p, 0);
              if (__p[0])
              {
                operator delete(__p[1]);
              }

              if ((v121 & 1) == 0)
              {
                break;
              }

              ++v115;
              v118 -= 4;
              if (!v118)
              {
                goto LABEL_150;
              }
            }

            v2 = v764;
            if (dword_2810BFB00 >= 1)
            {
              v2 = v764;
              if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFAF8, dword_2810BFB00))
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 384);
                v328 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v328, "Empty domain for a variable in ExpandInverse()", 0x2EuLL);
                goto LABEL_434;
              }
            }

            goto LABEL_458;
          }
        }

        v2 = v764;
        if (dword_2810BFAE8 >= 1)
        {
          v2 = v764;
          if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFAE0, dword_2810BFAE8))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 377);
            v161 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v161, "Empty domain for a variable in ExpandInverse()", 0x2EuLL);
LABEL_434:
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
            v2 = v764;
          }
        }
      }

      else
      {
        v116 = (v104 + 48);
LABEL_181:
        if (v105 >= 1 && *&v790[8] >> 1 != 2 * v105)
        {
          v162 = 0;
          do
          {
            v163 = 0;
            do
            {
              v164 = *(*(v104 + 24) + 4 * v162);
              if (~v164 <= v164)
              {
                v165 = *(*(v104 + 24) + 4 * v162);
              }

              else
              {
                v165 = ~v164;
              }

              v166 = *(*(v104 + 48) + 4 * v163);
              if (~v166 > v166)
              {
                v166 = ~v166;
              }

              if (v162 != v163 && v165 == v166)
              {
                memset(&v793, 0, sizeof(v793));
                operator new();
              }

              ++v163;
            }

            while (v105 != v163);
            ++v162;
          }

          while (v162 != v105);
        }

        memset(__p, 0, 24);
        v795 = v2;
        LODWORD(v796[0]) = v105;
        *(&v796[0] + 1) = __p;
        {
          if (v105 >= 1)
          {
            for (i = 0; i != v105; ++i)
            {
              v152 = *(*(v104 + 24) + 4 * i);
              operations_research::sat::PresolveContext::DomainOf(&v767, v2, v152);
              v769.__r_.__value_.__r.__words[0] = 0;
              v153 = v767.__r_.__value_.__s.__data_[0];
              if (v767.__r_.__value_.__r.__words[0] >= 2)
              {
                if (v767.__r_.__value_.__s.__data_[0])
                {
                  absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v769, &v767);
                  v153 = v767.__r_.__value_.__s.__data_[0];
                }

                else
                {
                  v769 = v767;
                }
              }

              if (v153)
              {
                operator delete(v767.__r_.__value_.__l.__size_);
              }

              if (v769.__r_.__value_.__r.__words[0] > 1)
              {
                v154 = v769.__r_.__value_.__s.__data_[0] & 1;
                if (v769.__r_.__value_.__s.__data_[0])
                {
                  v155 = v769.__r_.__value_.__l.__size_;
                }

                else
                {
                  v155 = &v769.__r_.__value_.__l.__size_;
                }

                v156 = *v155;
                if (v769.__r_.__value_.__s.__data_[0])
                {
                  v157 = v769.__r_.__value_.__l.__size_;
                }

                else
                {
                  v157 = &v769.__r_.__value_.__l.__size_;
                }

                if ((v769.__r_.__value_.__r.__words[0] & 0x1FFFFFFFFFFFFFFELL) != 0)
                {
                  v158 = &v157[2 * (v769.__r_.__value_.__r.__words[0] >> 1)];
                  do
                  {
                    v159 = *(*v116 + 4 * v156);
                    LODWORD(v767.__r_.__value_.__l.__data_) = 0;
                    if (operations_research::sat::PresolveContext::HasVarValueEncoding(v764, v159, i, &v767))
                    {
                      operations_research::sat::PresolveContext::InsertVarValueEncoding(v764, LODWORD(v767.__r_.__value_.__l.__data_), v152, v156);
                    }

                    else
                    {
                      v160 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v764, v152, v156);
                      operations_research::sat::PresolveContext::InsertVarValueEncoding(v764, v160, v159, i);
                    }

                    if (v156 == v157[1])
                    {
                      v157 += 2;
                      if (v157 != v158)
                      {
                        v156 = *v157;
                      }
                    }

                    else
                    {
                      ++v156;
                    }
                  }

                  while (v157 != v158);
                  v154 = v769.__r_.__value_.__s.__data_[0] & 1;
                }
              }

              else
              {
                v154 = v769.__r_.__value_.__r.__words[0];
              }

              if (v154)
              {
                operator delete(v769.__r_.__value_.__l.__size_);
              }

              v2 = v764;
            }
          }

          operations_research::sat::ConstraintProto::Clear(v762);
          *(&v769.__r_.__value_.__s + 23) = 17;
          strcpy(&v769, "inverse: expanded");
          operations_research::sat::PresolveContext::UpdateRuleStats(v2, &v769, 1, v338, v339);
          if (SHIBYTE(v769.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v769.__r_.__value_.__l.__data_);
          }
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

LABEL_458:
      if (*v790 < 2uLL)
      {
        goto LABEL_862;
      }

      v340 = *&v790[16];
      v341 = v790[8];
      goto LABEL_460;
    }

    if (v11 != 24)
    {
      if (v11 != 27)
      {
        goto LABEL_865;
      }

      v12 = *(v762 + 6);
      v13 = *(v12 + 32);
      if (v13 <= *(*(v2 + 49) + 368) && v13 >= 2)
      {
        v16 = *(v12 + 24);
        v15 = v12 + 24;
        v17 = v16 + 7;
        v18 = ((v16 & 1) != 0 ? v17 : v15);
        v19 = -1;
        v20 = v18;
        do
        {
          v74 = *(*v20 + 4);
          if (v74)
          {
            v75 = *(*v20 + 3);
            for (j = 4 * v74; j; j -= 4)
            {
              if (*v75 < 0)
              {
                operations_research::sat::ExpandCpModel(v790);
              }

              if (v19 == -1)
              {
                v19 = *v75;
              }

              else if (*v75 != v19)
              {
                goto LABEL_92;
              }

              ++v75;
            }
          }

          ++v20;
        }

        while (v20 != &v18[v13]);
        if (v19 == -1)
        {
LABEL_92:
          v77 = 8 * v13;
          while (1)
          {
            v78 = *v18;
            v80 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            if (*(v762 + 15) == 12)
            {
              v82 = *(v762 + 6);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v762);
              *(v762 + 15) = 12;
              v83 = *(v762 + 1);
              if (v83)
              {
                v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
              }

              v82 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v83);
              *(v762 + 6) = v82;
            }

            v85 = *(v82 + 16);
            v84 = *(v82 + 17);
            if (v85 == v84)
            {
              google::protobuf::RepeatedField<long long>::Grow((v82 + 8), v84, (v84 + 1));
              v93 = *(v82 + 16);
              v84 = *(v82 + 17);
              v86 = v82[9];
              v87 = v93 + 1;
              *(v82 + 16) = v93 + 1;
              *(v86 + 8 * v93) = 0;
              if (v93 + 1 != v84)
              {
                goto LABEL_100;
              }
            }

            else
            {
              v86 = v82[9];
              v87 = v85 + 1;
              *(v82 + 16) = v85 + 1;
              *(v86 + 8 * v85) = 0;
              if (v85 + 1 != v84)
              {
                goto LABEL_100;
              }
            }

            google::protobuf::RepeatedField<long long>::Grow((v82 + 8), v84, (v84 + 1));
            v87 = *(v82 + 16);
            v86 = v82[9];
LABEL_100:
            *(v82 + 16) = v87 + 1;
            *(v86 + 8 * v87) = 0x7FFFFFFFFFFFFFFFLL;
            v88 = &operations_research::sat::_LinearArgumentProto_default_instance_;
            if (*(v762 + 15) == 27)
            {
              v88 = *(v762 + 6);
            }

            v89 = v88[6];
            if (v89)
            {
              v90 = v89;
            }

            else
            {
              v90 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            operations_research::sat::AddLinearExpressionToLinearConstraint(v90, 1, v82, v79, v81);
            operations_research::sat::AddLinearExpressionToLinearConstraint(v78, 0xFFFFFFFFFFFFFFFFLL, v82, v91, v92);
            operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(v2, v80);
            ++v18;
            v77 -= 8;
            if (!v77)
            {
              operator new();
            }
          }
        }
      }

      goto LABEL_862;
    }

    if (*(*(v2 + 49) + 812) == 1)
    {
      v126 = *(v762 + 6);
      v128 = *(v126 + 64);
      v127 = v126 + 64;
      v129 = (v128 + 7);
      if (v128)
      {
        v130 = v129;
      }

      else
      {
        v130 = v127;
      }

      v131 = *(v127 + 8);
      if (v131)
      {
        v132 = 8 * v131;
        do
        {
          if (!operations_research::sat::PresolveContext::IsFixed(v2, *v130))
          {
            operator new();
          }

          ++v130;
          v132 -= 8;
        }

        while (v132);
      }

      if (*(v762 + 15) == 24)
      {
        v133 = *(v762 + 6);
        v134 = v133[11];
        v135 = v133[12];
      }

      else
      {
        v134 = qword_2810BEB58;
        v135 = qword_2810BEB60;
        v133 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
      }

      if (v134 > v135)
      {
        if (dword_2810BFA88 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_5, dword_2810BFA88))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v790, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 105);
          v588 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v790, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v588, "Empty level domain in reservoir constraint.", 0x2BuLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v790);
          v2 = v764;
        }

        operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v2, &byte_23CE7F131, 0);
        goto LABEL_862;
      }

      v211 = *(v133 + 6);
      __src = operations_research::sat::PresolveContext::GetTrueLiteral(v2);
      v212 = v133[8];
      if (v212)
      {
        v213 = (v212 + 7);
      }

      else
      {
        v213 = (v133 + 8);
      }

      v746 = v133 + 8;
      v214 = *(v133 + 18);
      *v754 = v211;
      if (v214)
      {
        v215 = 0;
        v216 = 0;
        v217 = 8 * v214;
        do
        {
          v218 = operations_research::sat::PresolveContext::FixedValue(v2, *v213);
          v219 = v218 >> 63;
          if (v218 > 0)
          {
            LODWORD(v219) = 0;
          }

          v216 += v219;
          if (v218 > 0)
          {
            ++v215;
          }

          ++v213;
          v217 -= 8;
        }

        while (v217);
        *&v793.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
        if (v215 >= 1 && v216 >= 1)
        {
          v221 = (v211 - 1);
          *v748 = v133;
          if (v221 >= 1)
          {
            v222 = 0;
            v745 = v133 + 2;
            v223 = v211;
            v224 = 16;
            v225 = 1;
            v742 = (v211 - 1);
            do
            {
              v227 = __src;
              if (*(v133 + 10))
              {
                v227 = *(v133[6] + v222);
              }

              if (operations_research::sat::PresolveContext::LiteralIsFalse(v764, v227))
              {
                v226 = (v222 + 1);
              }

              else
              {
                if (*v745)
                {
                  v228 = (*v745 + 8 * v222 + 7);
                }

                else
                {
                  v228 = v745;
                }

                v226 = (v222 + 1);
                if (v222 + 1 < v211)
                {
                  v743 = v225;
                  v747 = *v228;
                  v744 = v224;
                  do
                  {
                    v229 = __src;
                    if (*(v133 + 10))
                    {
                      v229 = *(v133[6] + v225);
                    }

                    if (!operations_research::sat::PresolveContext::LiteralIsFalse(v764, v229))
                    {
                      v230 = v223;
                      if (*v745)
                      {
                        v231 = (*v745 + v224 - 1);
                      }

                      else
                      {
                        v231 = v745;
                      }

                      v232 = *v231;
                      ReifiedPrecedenceLiteral = operations_research::sat::PresolveContext::GetOrCreateReifiedPrecedenceLiteral(v764, v747, *v231, v227, v229);
                      v235 = ReifiedPrecedenceLiteral;
                      v236 = (*v764 + 24);
                      if (*v236)
                      {
                        v236 = (*v236 + 8 * ReifiedPrecedenceLiteral + 7);
                      }

                      v237 = *v236;
                      v238 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v222, &v790[16], v234);
                      *v790 = &v790[16];
                      *&v790[8] = v238 - &v790[16];
                      __p[0] = " before ";
                      __p[1] = 8;
                      v240 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v225, v796 + 8, v239);
                      v795 = v796 + 8;
                      *&v796[0] = v240 - (v796 + 8);
                      absl::lts_20240722::StrCat(v790, __p, &v795, &v769);
                      v241 = *(v237 + 8);
                      if (v241)
                      {
                        v241 = *(v241 & 0xFFFFFFFFFFFFFFFELL);
                      }

                      google::protobuf::internal::ArenaStringPtr::Set((v237 + 40), &v769, v241);
                      if (SHIBYTE(v769.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v769.__r_.__value_.__l.__data_);
                      }

                      __p[0] = __PAIR64__(v225, v222);
                      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,int>>>::find_or_prepare_insert<std::pair<int,int>>(&v793, __p, v790);
                      if (v790[16] == 1)
                      {
                        v242 = *&v790[8];
                        **&v790[8] = __p[0];
                        *(v242 + 8) = 0;
                      }

                      *(*&v790[8] + 8) = v235;
                      v243 = operations_research::sat::PresolveContext::GetOrCreateReifiedPrecedenceLiteral(v764, v232, v747, v229, v227);
                      v245 = v243;
                      v246 = (*v764 + 24);
                      if (*v246)
                      {
                        v246 = (*v246 + 8 * v243 + 7);
                      }

                      v247 = *v246;
                      v248 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v225, &v790[16], v244);
                      v133 = *v748;
                      *v790 = &v790[16];
                      *&v790[8] = v248 - &v790[16];
                      __p[0] = " before ";
                      __p[1] = 8;
                      v250 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v222, v796 + 8, v249);
                      v795 = v796 + 8;
                      *&v796[0] = v250 - (v796 + 8);
                      absl::lts_20240722::StrCat(v790, __p, &v795, &v769);
                      v251 = *(v247 + 8);
                      if (v251)
                      {
                        v251 = *(v251 & 0xFFFFFFFFFFFFFFFELL);
                      }

                      google::protobuf::internal::ArenaStringPtr::Set((v247 + 40), &v769, v251);
                      if (SHIBYTE(v769.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v769.__r_.__value_.__l.__data_);
                      }

                      __p[0] = __PAIR64__(v222, v225);
                      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,int>>>::find_or_prepare_insert<std::pair<int,int>>(&v793, __p, v790);
                      if (v790[16] == 1)
                      {
                        v252 = *&v790[8];
                        **&v790[8] = __p[0];
                        *(v252 + 8) = 0;
                      }

                      *(*&v790[8] + 8) = v245;
                      v223 = v230;
                    }

                    ++v225;
                    v224 += 8;
                  }

                  while (v223 != v225);
                  v211 = *v754;
                  v221 = v742;
                  v226 = (v222 + 1);
                  v225 = v743;
                  v224 = v744;
                }
              }

              ++v225;
              v224 += 8;
              v222 = v226;
            }

            while (v226 != v221);
          }

          v2 = v764;
          if (v211 >= 1)
          {
            v380 = 0;
            while (1)
            {
              v392 = __src;
              if (*(v133 + 10))
              {
                v392 = *(v133[6] + v380);
              }

              if (!operations_research::sat::PresolveContext::LiteralIsFalse(v764, v392))
              {
                break;
              }

LABEL_550:
              if (++v380 == *v754)
              {
                goto LABEL_535;
              }
            }

            v393 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v764 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v394 = v393;
            v395 = (v393 + 16);
            v396 = *(v393 + 16);
            v397 = v396;
            if (v396 == HIDWORD(v396))
            {
              google::protobuf::RepeatedField<int>::Grow(v393 + 16, HIDWORD(v396), (HIDWORD(v396) + 1));
              v397 = *v395;
            }

            v398 = 0;
            v399 = 0;
            v400 = *(v394 + 24);
            *(v394 + 16) = v397 + 1;
            *(v400 + 4 * v397) = v392;
            while (1)
            {
              if (v380 == v398)
              {
                goto LABEL_559;
              }

              v406 = __src;
              if (*(*v748 + 40))
              {
                v406 = *(*(*v748 + 48) + 4 * v398);
              }

              if (operations_research::sat::PresolveContext::LiteralIsFalse(v764, v406))
              {
                goto LABEL_559;
              }

              if (v793.__r_.__value_.__r.__words[0] > 1)
              {
                v409 = 0;
                _X9 = v793.__r_.__value_.__r.__words[2];
                __asm { PRFM            #4, [X9] }

                v414 = v380 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v398) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v398)));
                v415 = ((v414 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v414);
                v416 = vdup_n_s8(v415 & 0x7F);
                v417 = ((v793.__r_.__value_.__r.__words[2] >> 12) ^ (v415 >> 7)) & v793.__r_.__value_.__r.__words[0];
                v418 = *(v793.__r_.__value_.__r.__words[2] + v417);
                v419 = vceq_s8(v418, v416);
                if (!v419)
                {
                  goto LABEL_573;
                }

                do
                {
LABEL_568:
                  v420 = (v417 + (__clz(__rbit64(v419)) >> 3)) & v793.__r_.__value_.__r.__words[0];
                  v407 = (v794 + 12 * v420);
                  if (v398 == *v407 && v380 == *(v407 + 1))
                  {
                    v408 = (v793.__r_.__value_.__r.__words[2] + v420);
                    goto LABEL_583;
                  }

                  v419 &= ((v419 & 0x8080808080808080) - 1) & 0x8080808080808080;
                }

                while (v419);
LABEL_573:
                while (1)
                {
                  v407 = vceq_s8(v418, 0x8080808080808080);
                  if (v407)
                  {
                    break;
                  }

                  v409 += 8;
                  v417 = (v409 + v417) & v793.__r_.__value_.__r.__words[0];
                  v418 = *(v793.__r_.__value_.__r.__words[2] + v417);
                  v419 = vceq_s8(v418, v416);
                  if (v419)
                  {
                    goto LABEL_568;
                  }
                }
              }

              else if (v793.__r_.__value_.__l.__size_ >= 2)
              {
                v422 = v380 == HIDWORD(v793.__r_.__value_.__r.__words[2]) && v398 == LODWORD(v793.__r_.__value_.__r.__words[2]);
                v408 = &absl::lts_20240722::container_internal::kSooControl;
                if (!v422)
                {
                  v408 = 0;
                }

                v407 = &v793.__r_.__value_.__r.__words[2];
                goto LABEL_583;
              }

              v408 = 0;
LABEL_583:
              if (!v408)
              {
                absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v790, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 175);
                absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v790);
              }

              v423 = *(v407 + 2);
              if (*v746)
              {
                v424 = (*v746 + 8 * v398 + 7);
              }

              else
              {
                v424 = v746;
              }

              v425 = operations_research::sat::PresolveContext::FixedValue(v764, *v424);
              v426 = *(v394 + 60);
              if (v423 < 0)
              {
                if (v426 == 12)
                {
                  v428 = *(v394 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v394);
                  *(v394 + 60) = 12;
                  v434 = *(v394 + 8);
                  if (v434)
                  {
                    v434 = *(v434 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v428 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v434);
                  *(v394 + 48) = v428;
                }

                v435 = v428[2];
                v436 = v435;
                if (v435 == HIDWORD(v435))
                {
                  google::protobuf::RepeatedField<int>::Grow((v428 + 2), HIDWORD(v435), (HIDWORD(v435) + 1));
                  v436 = *(v428 + 4);
                }

                v437 = v428[3];
                *(v428 + 4) = v436 + 1;
                *(v437 + 4 * v436) = v423;
                if (*(v394 + 60) == 12)
                {
                  v438 = *(v394 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v394);
                  *(v394 + 60) = 12;
                  v439 = *(v394 + 8);
                  if (v439)
                  {
                    v439 = *(v439 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v438 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v439);
                  *(v394 + 48) = v438;
                }

                v441 = *(v438 + 10);
                v440 = *(v438 + 11);
                if (v441 == v440)
                {
                  google::protobuf::RepeatedField<long long>::Grow((v438 + 5), v440, (v440 + 1));
                  v441 = *(v438 + 10);
                }

                v442 = v438[6];
                *(v438 + 10) = v441 + 1;
                *(v442 + 8 * v441) = -v425;
                v399 -= v425;
                if (++v398 == *v754)
                {
LABEL_617:
                  if (*v746)
                  {
                    v443 = (*v746 + 8 * v380 + 7);
                  }

                  else
                  {
                    v443 = v746;
                  }

                  v133 = *v748;
                  v444 = operations_research::sat::PresolveContext::FixedValue(v764, *v443);
                  if (*(v394 + 60) == 12)
                  {
                    v445 = *(v394 + 48);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(v394);
                    *(v394 + 60) = 12;
                    v446 = *(v394 + 8);
                    if (v446)
                    {
                      v446 = *(v446 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v445 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v446);
                    *(v394 + 48) = v445;
                  }

                  v447 = *(*v748 + 88);
                  v448 = (v447 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  _VF = __OFSUB__(v447, v444);
                  v449 = v447 - v444;
                  if (_VF)
                  {
                    v449 = v448;
                  }

                  v450 = (v449 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  _VF = __OFADD__(v449, v399);
                  v451 = v449 + v399;
                  if (_VF)
                  {
                    v452 = v450;
                  }

                  else
                  {
                    v452 = v451;
                  }

                  v454 = *(v445 + 16);
                  v453 = *(v445 + 17);
                  if (v454 == v453)
                  {
                    google::protobuf::RepeatedField<long long>::Grow((v445 + 8), v453, (v453 + 1));
                    v454 = *(v445 + 16);
                  }

                  v455 = v445[9];
                  *(v445 + 16) = v454 + 1;
                  *(v455 + 8 * v454) = v452;
                  if (*(v394 + 60) == 12)
                  {
                    v381 = *(v394 + 48);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(v394);
                    *(v394 + 60) = 12;
                    v456 = *(v394 + 8);
                    if (v456)
                    {
                      v456 = *(v456 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v381 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v456);
                    *(v394 + 48) = v381;
                  }

                  v382 = *(*v748 + 96);
                  v383 = (v382 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  _VF = __OFSUB__(v382, v444);
                  v385 = v382 - v444;
                  if (_VF)
                  {
                    v385 = v383;
                  }

                  v386 = (v385 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  _VF = __OFADD__(v385, v399);
                  v387 = v385 + v399;
                  if (_VF)
                  {
                    v388 = v386;
                  }

                  else
                  {
                    v388 = v387;
                  }

                  v390 = *(v381 + 16);
                  v389 = *(v381 + 17);
                  if (v390 == v389)
                  {
                    google::protobuf::RepeatedField<long long>::Grow((v381 + 8), v389, (v389 + 1));
                    v390 = *(v381 + 16);
                  }

                  v391 = v381[9];
                  *(v381 + 16) = v390 + 1;
                  *(v391 + 8 * v390) = v388;
                  operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(v764, v394);
                  goto LABEL_550;
                }
              }

              else
              {
                if (v426 == 12)
                {
                  v427 = *(v394 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v394);
                  *(v394 + 60) = 12;
                  v429 = *(v394 + 8);
                  if (v429)
                  {
                    v429 = *(v429 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v427 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v429);
                  *(v394 + 48) = v427;
                }

                v430 = v427[2];
                v431 = v430;
                if (v430 == HIDWORD(v430))
                {
                  google::protobuf::RepeatedField<int>::Grow((v427 + 2), HIDWORD(v430), (HIDWORD(v430) + 1));
                  v431 = *(v427 + 4);
                }

                v432 = v427[3];
                *(v427 + 4) = v431 + 1;
                *(v432 + 4 * v431) = v423;
                if (*(v394 + 60) != 12)
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v394);
                  *(v394 + 60) = 12;
                  v433 = *(v394 + 8);
                  if (v433)
                  {
                    v433 = *(v433 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v401 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v433);
                  *(v394 + 48) = v401;
                  v403 = *(v401 + 10);
                  v402 = *(v401 + 11);
                  v404 = (v401 + 5);
                  if (v403 != v402)
                  {
                    goto LABEL_558;
                  }

LABEL_603:
                  google::protobuf::RepeatedField<long long>::Grow(v404, v402, (v402 + 1));
                  v403 = *v404;
                  goto LABEL_558;
                }

                v401 = *(v394 + 48);
                v403 = *(v401 + 10);
                v402 = *(v401 + 11);
                v404 = (v401 + 5);
                if (v403 == v402)
                {
                  goto LABEL_603;
                }

LABEL_558:
                v405 = v401[6];
                *(v401 + 10) = v403 + 1;
                *(v405 + 8 * v403) = v425;
LABEL_559:
                if (++v398 == *v754)
                {
                  goto LABEL_617;
                }
              }
            }
          }

LABEL_535:
          operations_research::sat::ConstraintProto::Clear(v762);
          v790[23] = 19;
          strcpy(v790, "reservoir: expanded");
          operations_research::sat::PresolveContext::UpdateRuleStats(v2, v790, 1, v378, v379);
          if ((v790[23] & 0x80000000) != 0)
          {
            operator delete(*v790);
          }

          if (v793.__r_.__value_.__r.__words[0] >= 2)
          {
            v341 = v793.__r_.__value_.__s.__data_[8];
            v340 = v793.__r_.__value_.__r.__words[2];
LABEL_460:
            operator delete((v340 - (v341 & 1) - 8));
            goto LABEL_862;
          }

          goto LABEL_862;
        }
      }

      else
      {
        *&v793.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
      }

      v342 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v343 = v342;
      if (*(v342 + 60) == 12)
      {
        v344 = *(v342 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v342);
        *(v343 + 60) = 12;
        v359 = *(v343 + 8);
        if (v359)
        {
          v359 = *(v359 & 0xFFFFFFFFFFFFFFFELL);
        }

        v344 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v359);
        *(v343 + 48) = v344;
      }

      if (v211 >= 1)
      {
        v360 = 0;
        v361 = 4 * v211;
        v362 = 8;
        do
        {
          v363 = __src;
          if (*(v133 + 10))
          {
            v363 = *(v133[6] + v360);
          }

          v364 = v344[2];
          v365 = v364;
          if (v364 == HIDWORD(v364))
          {
            google::protobuf::RepeatedField<int>::Grow((v344 + 2), HIDWORD(v364), (HIDWORD(v364) + 1));
            v365 = *(v344 + 4);
          }

          v366 = v344[3];
          *(v344 + 4) = v365 + 1;
          *(v366 + 4 * v365) = v363;
          if (*v746)
          {
            v367 = (*v746 + v362 - 1);
          }

          else
          {
            v367 = (v133 + 8);
          }

          v368 = operations_research::sat::PresolveContext::FixedValue(v2, *v367);
          v370 = *(v344 + 10);
          v369 = *(v344 + 11);
          if (v370 == v369)
          {
            google::protobuf::RepeatedField<long long>::Grow((v344 + 5), v369, (v369 + 1));
            v370 = *(v344 + 10);
          }

          v371 = v344[6];
          *(v344 + 10) = v370 + 1;
          *(v371 + 8 * v370) = v368;
          v360 += 4;
          v362 += 8;
        }

        while (v361 != v360);
      }

      v372 = v133[11];
      v374 = *(v344 + 16);
      v373 = *(v344 + 17);
      if (v374 == v373)
      {
        google::protobuf::RepeatedField<long long>::Grow((v344 + 8), v373, (v373 + 1));
        v374 = *(v344 + 16);
        v373 = *(v344 + 17);
      }

      v375 = v344[9];
      v376 = v374 + 1;
      *(v344 + 16) = v374 + 1;
      *(v375 + 8 * v374) = v372;
      v377 = v133[12];
      if (v374 + 1 == v373)
      {
        google::protobuf::RepeatedField<long long>::Grow((v344 + 8), v373, (v373 + 1));
        v376 = *(v344 + 16);
        v375 = v344[9];
      }

      *(v344 + 16) = v376 + 1;
      *(v375 + 8 * v376) = v377;
      operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(v2, v343);
      goto LABEL_535;
    }

LABEL_862:
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v2);
    if (!*(v762 + 15))
    {
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v2, v758);
    }

    v6 = v758;
    if (*(v2 + 416) == 1)
    {
      if (**(v2 + 48) == 1)
      {
        *v790 = "UNSAT after expansion of ";
        *&v790[8] = 25;
        google::protobuf::Message::ShortDebugString(&v793);
      }

      return;
    }

LABEL_865:
    ++v6;
    v5 = *v2;
    v586 = *(*v2 + 56);
  }

  while (v6 < v586);
  *&v769.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
  *&v767.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
  *v765 = xmmword_23CE306D0;
  if (v586 < 1)
  {
    goto LABEL_1205;
  }

  v589 = 0;
  while (1)
  {
    v590 = v5 + 48;
    v591 = *(v5 + 48);
    if (v591)
    {
      v590 = v591 + 8 * v589 + 7;
    }

    v763 = *v590;
    v592 = *(*v590 + 60);
    if (v592 == 12)
    {
      v597 = *(v763 + 6);
      if (*(v597 + 16) != 2)
      {
        goto LABEL_1203;
      }

      v598 = *(v597 + 24);
      v600 = *v598;
      v599 = v598[1];
      if (operations_research::sat::PresolveContext::IsFixed(v2, *v598) || operations_research::sat::PresolveContext::IsFixed(v2, v599))
      {
        goto LABEL_1203;
      }

      v601 = *(v597 + 48);
      v602 = *v601;
      v603 = v601[1];
      operations_research::sat::PresolveContext::DomainOf(&v793, v2, v600);
      operations_research::Domain::MultiplicationBy(&v795, &v793, 0, v602);
      operations_research::Domain::RelaxIfTooComplex(__p, &v795);
      operations_research::sat::PresolveContext::DomainOf(&v781, v2, v599);
      operations_research::Domain::MultiplicationBy(&v783, &v781, 0, v603);
      v604 = operations_research::Domain::RelaxIfTooComplex(&v784, &v783);
      operations_research::Domain::AdditionWith(v790, __p, &v784, v604);
      if (v784)
      {
        operator delete(v785);
        if ((v783.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
LABEL_898:
          if ((v781 & 1) == 0)
          {
            goto LABEL_899;
          }

          goto LABEL_1129;
        }
      }

      else if ((v783.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
        goto LABEL_898;
      }

      operator delete(v783.__r_.__value_.__l.__size_);
      if ((v781 & 1) == 0)
      {
LABEL_899:
        if ((__p[0] & 1) == 0)
        {
          goto LABEL_900;
        }

        goto LABEL_1130;
      }

LABEL_1129:
      operator delete(v782);
      if ((__p[0] & 1) == 0)
      {
LABEL_900:
        if ((v795 & 1) == 0)
        {
          goto LABEL_901;
        }

        goto LABEL_1131;
      }

LABEL_1130:
      operator delete(__p[1]);
      if ((v795 & 1) == 0)
      {
LABEL_901:
        if ((v793.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
          goto LABEL_903;
        }

        goto LABEL_902;
      }

LABEL_1131:
      operator delete(*&v796[0]);
      if ((v793.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
LABEL_903:
        operations_research::Domain::FromFlatSpanOfIntervals(*(v597 + 72), *(v597 + 64), &v793, v605);
        operations_research::Domain::Complement(&v795, &v793);
        operations_research::Domain::IntersectionWith(__p, v790, &v795);
        if (v795)
        {
          operator delete(*&v796[0]);
        }

        if (v793.__r_.__value_.__s.__data_[0])
        {
          operator delete(v793.__r_.__value_.__l.__size_);
        }

        if (operations_research::Domain::Size(__p) != 1)
        {
LABEL_1199:
          if (__p[0])
          {
            operator delete(__p[1]);
          }

          if (v790[0])
          {
            operator delete(*&v790[8]);
          }

          goto LABEL_1203;
        }

        v780 = v602;
        v779 = v603;
        v778 = operations_research::Domain::Min(__p);
        v777 = 0;
        v776 = 0;
        if (!operations_research::sat::SolveDiophantineEquationOfSizeTwo(&v780, &v779, &v778, &v777, &v776, v606))
        {
          operator new();
        }

        operations_research::sat::PresolveContext::DomainOf(&v783, v2, v600);
        operations_research::Domain::Domain(&v781, -v777);
        operations_research::Domain::AdditionWith(&v784, &v783, &v781, v607);
        operations_research::Domain::InverseMultiplicationBy(&v793, &v784, v779);
        operations_research::sat::PresolveContext::DomainOf(v773, v2, v599);
        operations_research::Domain::Domain(v771, -v776);
        operations_research::Domain::AdditionWith(v774, v773, v771, v608);
        operations_research::Domain::InverseMultiplicationBy(v775, v774, -v780);
        operations_research::Domain::IntersectionWith(&v795, &v793, v775);
        if (v775[0])
        {
          operator delete(v775[1]);
          if ((v774[0] & 1) == 0)
          {
LABEL_911:
            if ((v771[0] & 1) == 0)
            {
              goto LABEL_912;
            }

            goto LABEL_1136;
          }
        }

        else if ((v774[0] & 1) == 0)
        {
          goto LABEL_911;
        }

        operator delete(v774[1]);
        if ((v771[0] & 1) == 0)
        {
LABEL_912:
          if ((v773[0] & 1) == 0)
          {
            goto LABEL_913;
          }

          goto LABEL_1137;
        }

LABEL_1136:
        operator delete(v772);
        if ((v773[0] & 1) == 0)
        {
LABEL_913:
          if ((v793.__r_.__value_.__s.__data_[0] & 1) == 0)
          {
            goto LABEL_914;
          }

          goto LABEL_1138;
        }

LABEL_1137:
        operator delete(v773[1]);
        if ((v793.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
LABEL_914:
          if ((v784 & 1) == 0)
          {
            goto LABEL_915;
          }

          goto LABEL_1139;
        }

LABEL_1138:
        operator delete(v793.__r_.__value_.__l.__size_);
        if ((v784 & 1) == 0)
        {
LABEL_915:
          if ((v781 & 1) == 0)
          {
            goto LABEL_916;
          }

          goto LABEL_1140;
        }

LABEL_1139:
        operator delete(v785);
        if ((v781 & 1) == 0)
        {
LABEL_916:
          if ((v783.__r_.__value_.__s.__data_[0] & 1) == 0)
          {
LABEL_918:
            if (operations_research::Domain::Size(&v795) <= 16)
            {
              operations_research::sat::PresolveContext::DomainOf(&v793, v2, v600);
              v609 = operations_research::Domain::Size(&v793);
              if (v793.__r_.__value_.__s.__data_[0])
              {
                operator delete(v793.__r_.__value_.__l.__size_);
              }

              operations_research::sat::PresolveContext::DomainOf(&v793, v2, v599);
              v610 = operations_research::Domain::Size(&v793);
              if (v793.__r_.__value_.__s.__data_[0])
              {
                operator delete(v793.__r_.__value_.__l.__size_);
              }

              v611 = v795;
              if (v795 > 1)
              {
                v614 = v795 & 1;
                v613 = *&v796[0];
                if (v795)
                {
                  v707 = *&v796[0];
                }

                else
                {
                  v707 = v796;
                }

                v612 = *v707;
              }

              else
              {
                v612 = 0;
                v613 = *&v796[0];
                v614 = v795;
              }

              if (v614)
              {
                v708 = v613;
              }

              else
              {
                v708 = v796;
              }

              if ((v795 & 0x1FFFFFFFFFFFFFFELL) != 0)
              {
                if (v609 == 2)
                {
                  operations_research::sat::PresolveContext::HasVarValueEncoding(v2, v600, v777 + v779 * v612, 0);
                }

                else if (v610 == 2)
                {
                  v709 = v776;
                  v710 = v780;
                  if (operations_research::sat::PresolveContext::HasVarValueEncoding(v2, v600, v777 + v779 * v612, 0))
                  {
                    operations_research::sat::PresolveContext::HasVarValueEncoding(v2, v599, v709 - v710 * v612, 0);
                  }
                }

                else
                {
                  v711 = &v708[2 * (v795 >> 1)];
                  while (1)
                  {
                    v712 = v776;
                    v713 = v780;
                    if ((operations_research::sat::PresolveContext::HasVarValueEncoding(v2, v600, v777 + v779 * v612, 0) & 1) == 0 || !operations_research::sat::PresolveContext::HasVarValueEncoding(v2, v599, v712 - v713 * v612, 0))
                    {
                      break;
                    }

                    if (v612 == v708[1])
                    {
                      v708 += 2;
                      if (v708 != v711)
                      {
                        v612 = *v708;
                      }
                    }

                    else
                    {
                      ++v612;
                    }

                    if (v708 == v711)
                    {
                      v611 = v795;
                      goto LABEL_1164;
                    }
                  }
                }
              }

              else
              {
LABEL_1164:
                if (v611 > 1)
                {
                  v716 = v611 & 1;
                  v715 = *&v796[0];
                  if (v611)
                  {
                    v717 = *&v796[0];
                  }

                  else
                  {
                    v717 = v796;
                  }

                  v714 = *v717;
                }

                else
                {
                  v714 = 0;
                  v715 = *&v796[0];
                  v716 = v611;
                }

                if (v716)
                {
                  v718 = v715;
                }

                else
                {
                  v718 = v796;
                }

                if ((v611 & 0x1FFFFFFFFFFFFFFELL) != 0)
                {
                  __srcb = &v718[2 * (v611 >> 1)];
                  do
                  {
                    v719 = v776;
                    v720 = v780;
                    v721 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v764, v600, v777 + v779 * v714);
                    v722 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v764, v599, v719 - v720 * v714);
                    v723 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v764 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                    v724 = v723;
                    if (*(v723 + 60) == 3)
                    {
                      v725 = *(v723 + 48);
                    }

                    else
                    {
                      operations_research::sat::ConstraintProto::clear_constraint(v723);
                      *(v724 + 60) = 3;
                      v726 = *(v724 + 8);
                      if (v726)
                      {
                        v726 = *(v726 & 0xFFFFFFFFFFFFFFFELL);
                      }

                      v725 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v726);
                      *(v724 + 48) = v725;
                    }

                    v728 = *(v725 + 4);
                    v727 = *(v725 + 5);
                    v729 = v725 + 2;
                    if (v728 == v727)
                    {
                      google::protobuf::RepeatedField<int>::Grow((v725 + 2), v727, (v727 + 1));
                      v728 = *(v725 + 4);
                      v727 = *(v725 + 5);
                    }

                    v730 = v725[3];
                    v731 = v728 + 1;
                    *(v725 + 4) = v728 + 1;
                    *(v730 + 4 * v728) = ~v721;
                    if (v728 + 1 == v727)
                    {
                      google::protobuf::RepeatedField<int>::Grow((v725 + 2), v727, (v727 + 1));
                      v731 = *(v725 + 4);
                      LODWORD(v727) = *(v725 + 5);
                      v730 = v725[3];
                    }

                    v732 = (v731 + 1);
                    *v729 = v732;
                    *(v730 + 4 * v731) = ~v722;
                    v733 = *(v763 + 4);
                    if (v733)
                    {
                      v734 = *(v763 + 3);
                      v735 = 4 * v733;
                      do
                      {
                        v736 = *v734;
                        if (v732 == v727)
                        {
                          google::protobuf::RepeatedField<int>::Grow((v725 + 2), v732, (v732 + 1));
                          LODWORD(v732) = *(v725 + 4);
                          LODWORD(v727) = *(v725 + 5);
                          v730 = v725[3];
                        }

                        *v729 = v732 + 1;
                        *(v730 + 4 * v732) = ~v736;
                        ++v734;
                        v732 = (v732 + 1);
                        v735 -= 4;
                      }

                      while (v735);
                    }

                    if (v714 == v718[1])
                    {
                      v718 += 2;
                      if (v718 != __srcb)
                      {
                        v714 = *v718;
                      }
                    }

                    else
                    {
                      ++v714;
                    }
                  }

                  while (v718 != __srcb);
                }

                std::string::basic_string[abi:ne200100]<0>(&v793, "linear: expand small ax + by != cte");
                v2 = v764;
                operations_research::sat::PresolveContext::UpdateRuleStats(v764, &v793, 1, v737, v738);
                if (SHIBYTE(v793.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v793.__r_.__value_.__l.__data_);
                }

                operations_research::sat::ConstraintProto::Clear(v763);
              }
            }

            if (v795)
            {
              operator delete(*&v796[0]);
            }

            goto LABEL_1199;
          }

LABEL_917:
          operator delete(v783.__r_.__value_.__l.__size_);
          goto LABEL_918;
        }

LABEL_1140:
        operator delete(v782);
        if ((v783.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
          goto LABEL_918;
        }

        goto LABEL_917;
      }

LABEL_902:
      operator delete(v793.__r_.__value_.__l.__size_);
      goto LABEL_903;
    }

    if (v592 != 13)
    {
      goto LABEL_882;
    }

    *v757 = *(v763 + 6);
    v593 = *(*v757 + 24);
    if (v593 < 2 || (*(v2 + 416) & 1) != 0)
    {
      goto LABEL_1203;
    }

    v752 = *(*(v2 + 49) + 316);
    v594 = *(*v757 + 16);
    __srca = (*v757 + 16);
    v595 = (v594 & 1) != 0 ? v594 + 7 : *v757 + 16;
    v596 = v595 + 8 * v593;
    do
    {
      if (!*(*v595 + 16))
      {
        goto LABEL_1009;
      }

      LODWORD(v783.__r_.__value_.__l.__data_) = **(*v595 + 24);
      if (operations_research::sat::PresolveContext::IsFixed(v2, v783.__r_.__value_.__l.__data_))
      {
        goto LABEL_1009;
      }

      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v765, &v783, v790);
      if ((v790[16] & 1) == 0)
      {
        if (v767.__r_.__value_.__r.__words[0] <= 1)
        {
          if (v767.__r_.__value_.__l.__size_ < 2)
          {
            goto LABEL_938;
          }

          v625 = LODWORD(v767.__r_.__value_.__r.__words[2]) == LODWORD(v783.__r_.__value_.__l.__data_);
          v626 = v769.__r_.__value_.__r.__words[0];
          if (v769.__r_.__value_.__r.__words[0] <= 1)
          {
            goto LABEL_939;
          }

          goto LABEL_1012;
        }

        v628 = 0;
        _X10 = v767.__r_.__value_.__r.__words[2];
        __asm { PRFM            #4, [X10] }

        v631 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + LODWORD(v783.__r_.__value_.__l.__data_)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + LODWORD(v783.__r_.__value_.__l.__data_)));
        v632 = vdup_n_s8(v631 & 0x7F);
        v633 = ((v631 >> 7) ^ (v767.__r_.__value_.__r.__words[2] >> 12)) & v767.__r_.__value_.__r.__words[0];
        v634 = *(v767.__r_.__value_.__r.__words[2] + v633);
        v635 = vceq_s8(v634, v632);
        if (!v635)
        {
          goto LABEL_945;
        }

LABEL_943:
        while (*(v768 + 4 * ((v633 + (__clz(__rbit64(v635)) >> 3)) & v767.__r_.__value_.__r.__words[0])) != LODWORD(v783.__r_.__value_.__l.__data_))
        {
          v635 &= ((v635 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v635)
          {
LABEL_945:
            while (!*&vceq_s8(v634, 0x8080808080808080))
            {
              v628 += 8;
              v633 = (v628 + v633) & v767.__r_.__value_.__r.__words[0];
              v634 = *(v767.__r_.__value_.__r.__words[2] + v633);
              v635 = vceq_s8(v634, v632);
              if (v635)
              {
                goto LABEL_943;
              }
            }

LABEL_938:
            v625 = 0;
            v626 = v769.__r_.__value_.__r.__words[0];
            if (v769.__r_.__value_.__r.__words[0] <= 1)
            {
LABEL_939:
              if (v769.__r_.__value_.__l.__size_ < 2)
              {
                goto LABEL_1009;
              }

              v627 = LODWORD(v769.__r_.__value_.__r.__words[2]) != LODWORD(v783.__r_.__value_.__l.__data_);
              if (!v625)
              {
                goto LABEL_1009;
              }

              goto LABEL_1008;
            }

LABEL_1012:
            v618 = 0;
            _X10 = v769.__r_.__value_.__r.__words[2];
            __asm { PRFM            #4, [X10] }

            v654 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + LODWORD(v783.__r_.__value_.__l.__data_)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + LODWORD(v783.__r_.__value_.__l.__data_)));
            v619 = (v654 >> 7) ^ (v769.__r_.__value_.__r.__words[2] >> 12);
            v655 = vdup_n_s8(v654 & 0x7F);
            while (1)
            {
              v615 = v619 & v626;
              v616 = *(v769.__r_.__value_.__r.__words[2] + v615);
              v617 = vceq_s8(v616, v655);
              if (v617)
              {
                break;
              }

LABEL_928:
              if (vceq_s8(v616, 0x8080808080808080))
              {
                goto LABEL_1009;
              }

              v618 += 8;
              v619 = v618 + v615;
            }

            while (*(v770 + 4 * ((v615 + (__clz(__rbit64(v617)) >> 3)) & v626)) != LODWORD(v783.__r_.__value_.__l.__data_))
            {
              v617 &= ((v617 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v617)
              {
                goto LABEL_928;
              }
            }

LABEL_1007:
            v627 = 0;
            if (!v625)
            {
              goto LABEL_1009;
            }

LABEL_1008:
            if (v627)
            {
              goto LABEL_1009;
            }

            goto LABEL_1018;
          }
        }

        v625 = 1;
        v626 = v769.__r_.__value_.__r.__words[0];
        if (v769.__r_.__value_.__r.__words[0] <= 1)
        {
          goto LABEL_939;
        }

        goto LABEL_1012;
      }

      data_low = SLODWORD(v783.__r_.__value_.__l.__data_);
      **&v790[8] = v783.__r_.__value_.__l.__data_;
      v622 = (*(v2 + 84) + 32 * data_low);
      if (v622[1] < 2uLL)
      {
        goto LABEL_1009;
      }

      v623 = (v622 + 2);
      if (*v622 >= 2uLL)
      {
        v624 = v622[2];
        v623 = v622[3];
        if (*v624 <= -2)
        {
          do
          {
            v636 = __clz(__rbit64((*v624 | ~(*v624 >> 7)) & 0x101010101010101)) >> 3;
            v624 = (v624 + v636);
            v623 += v636;
          }

          while (*v624 < -1);
        }
      }

      else
      {
        v624 = &absl::lts_20240722::container_internal::kSooControl;
      }

      v637 = 0;
      v638 = 0;
      do
      {
        v639 = *v623;
        if ((v639 & 0x80000000) != 0)
        {
          goto LABEL_992;
        }

        v640 = *(*v764 + 48);
        v641 = v640 + 8 * v639 + 7;
        if ((v640 & 1) == 0)
        {
          v641 = *v764 + 48;
        }

        v642 = *v641;
        v643 = *(*v641 + 60);
        if (v643 > 16)
        {
          if (v643 <= 18)
          {
            goto LABEL_961;
          }

          if (v643 == 19 || v643 == 27)
          {
            v637 = 1;
          }

          goto LABEL_990;
        }

        switch(v643)
        {
          case 12:
            v644 = *(v642 + 48);
            v645 = *(v644 + 4);
            if (v645 == 1)
            {
              operations_research::Domain::FromFlatSpanOfIntervals(v644[9], *(v644 + 16), v790, v620);
              if (operations_research::Domain::IsFixed(v790))
              {
                IsFixed = 1;
                goto LABEL_976;
              }

              operations_research::Domain::InverseMultiplicationBy(&v793, v790, *v644[6]);
              operations_research::Domain::Complement(&v795, &v793);
              operations_research::sat::PresolveContext::DomainOf(&v784, v764, *v644[3]);
              operations_research::Domain::IntersectionWith(__p, &v795, &v784);
              if ((v784 & 1) == 0)
              {
                if ((v795 & 1) == 0)
                {
                  goto LABEL_971;
                }

LABEL_996:
                operator delete(*&v796[0]);
                if ((v793.__r_.__value_.__s.__data_[0] & 1) == 0)
                {
                  goto LABEL_973;
                }

LABEL_972:
                operator delete(v793.__r_.__value_.__l.__size_);
                goto LABEL_973;
              }

              operator delete(v785);
              if (v795)
              {
                goto LABEL_996;
              }

LABEL_971:
              if (v793.__r_.__value_.__s.__data_[0])
              {
                goto LABEL_972;
              }

LABEL_973:
              if (operations_research::Domain::IsEmpty(__p))
              {
                IsFixed = 0;
                if (__p[0])
                {
                  goto LABEL_975;
                }
              }

              else
              {
                IsFixed = operations_research::Domain::IsFixed(__p);
                if (__p[0])
                {
LABEL_975:
                  operator delete(__p[1]);
                }
              }

LABEL_976:
              if (v790[0])
              {
                operator delete(*&v790[8]);
                v647 = *(v642 + 60);
                if (!IsFixed)
                {
                  goto LABEL_983;
                }
              }

              else
              {
                v647 = *(v642 + 60);
                if (!IsFixed)
                {
                  goto LABEL_983;
                }
              }

              v648 = &operations_research::sat::_LinearConstraintProto_default_instance_;
              if (v647 == 12)
              {
                v648 = *(v642 + 48);
              }

              if (LODWORD(v783.__r_.__value_.__l.__data_) == *v648[3])
              {
                goto LABEL_961;
              }

LABEL_983:
              if (v647 == 12)
              {
                v644 = *(v642 + 48);
                v645 = *(v644 + 4);
                goto LABEL_985;
              }

              v644 = &operations_research::sat::_LinearConstraintProto_default_instance_;
              if (off_2810BEE58 < 3)
              {
                break;
              }
            }

            else
            {
LABEL_985:
              if (v645 <= 2)
              {
                break;
              }
            }

            if (*(v644 + 16) == 2)
            {
              v637 |= *v644[9] == v644[9][1];
            }

            break;
          case 14:
            v638 |= *(*(v642 + 48) + 36) == LODWORD(v783.__r_.__value_.__l.__data_);
            break;
          case 16:
LABEL_961:
            v638 = 1;
            break;
        }

LABEL_990:
        if (v638 & 1) != 0 && (v637)
        {
          v637 = 1;
          goto LABEL_1001;
        }

LABEL_992:
        v650 = *(v624 + 1);
        v624 = (v624 + 1);
        LOBYTE(v649) = v650;
        ++v623;
        if (v650 <= -2)
        {
          do
          {
            v651 = __clz(__rbit64((*v624 | ~(*v624 >> 7)) & 0x101010101010101)) >> 3;
            v624 = (v624 + v651);
            v623 += v651;
            v649 = *v624;
          }

          while (v649 < -1);
        }
      }

      while (v649 != 255);
      if ((v638 & 1) == 0)
      {
        v2 = v764;
        if ((v637 & 1) == 0)
        {
          goto LABEL_1009;
        }

        v625 = 0;
        goto LABEL_1005;
      }

LABEL_1001:
      v2 = v764;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v769, &v783, v790);
      if (v790[16] == 1)
      {
        **&v790[8] = v783.__r_.__value_.__l.__data_;
      }

      if (v637)
      {
        v625 = 1;
LABEL_1005:
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v767, &v783, v790);
        if (v790[16] == 1)
        {
          **&v790[8] = v783.__r_.__value_.__l.__data_;
        }

        goto LABEL_1007;
      }

LABEL_1009:
      v595 += 8;
    }

    while (v595 != v596);
LABEL_1018:
    v656 = *(*v757 + 24);
    v657 = (*v757 + 16);
    if (*(*v757 + 16))
    {
      v657 = (*(*v757 + 16) + 7);
    }

    operations_research::sat::PresolveContext::DomainSuperSetOf(&v784, v2, *v657);
    if (v656 >= 2)
    {
      v658 = v656 - 1;
      v659 = 16;
      do
      {
        if (*__srca)
        {
          v660 = (*__srca + v659 - 1);
        }

        else
        {
          v660 = (*v757 + 16);
        }

        operations_research::sat::PresolveContext::DomainSuperSetOf(__p, v2, *v660);
        operations_research::Domain::UnionWith(v790, &v784, __p);
        if (v784)
        {
          operator delete(v785);
        }

        v784 = *v790;
        v785 = *&v790[8];
        *v790 = 0;
        if (__p[0])
        {
          operator delete(__p[1]);
        }

        v659 += 8;
        --v658;
      }

      while (v658);
    }

    if (*(v763 + 15) == 13)
    {
      v661 = *(v763 + 6);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v763);
      *(v763 + 15) = 13;
      v662 = *(v763 + 1);
      if (v662)
      {
        v662 = *(v662 & 0xFFFFFFFFFFFFFFFELL);
      }

      v661 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(v662);
      *(v763 + 6) = v661;
    }

    v663 = *(v661 + 6);
    if (v663 < 1)
    {
      v664 = 0;
    }

    else
    {
      v664 = 0;
      v665 = v661 + 2;
      v666 = 8;
      v667 = *(v661 + 6);
      do
      {
        if (*v665)
        {
          v668 = (*v665 + v666 - 1);
        }

        else
        {
          v668 = (v661 + 2);
        }

        v664 += operations_research::sat::PresolveContext::IsFullyEncoded(v2, *v668);
        v666 += 8;
        --v667;
      }

      while (v667);
    }

    if (operations_research::Domain::Size(&v784) <= 2 * *(v661 + 6) || operations_research::Domain::Size(&v784) < 33 || v664 == v663 && operations_research::Domain::Size(&v784) < 256 || (v752 & 1) != 0)
    {
      v753 = operations_research::Domain::Size(&v784);
      if (v784 > 1)
      {
        v671 = v784 & 1;
        v670 = v785;
        if (v784)
        {
          v672 = v785;
        }

        else
        {
          v672 = &v785;
        }

        v669 = *v672;
      }

      else
      {
        v669 = 0;
        v670 = v785;
        v671 = v784;
      }

      *v751 = v656;
      if (v671)
      {
        v673 = v670;
      }

      else
      {
        v673 = &v785;
      }

      if ((v784 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v674 = &v673[2 * (v784 >> 1)];
        while (2)
        {
          memset(v790, 0, 24);
          v675 = *(*v757 + 16);
          if (v675)
          {
            v676 = (v675 + 7);
          }

          else
          {
            v676 = (*v757 + 16);
          }

          v677 = *(*v757 + 24);
          if (v677)
          {
            v678 = 0;
            v679 = 8 * v677;
            do
            {
              v680 = *v676;
              if (operations_research::sat::PresolveContext::DomainContains(v764, *v676, v669))
              {
                v681 = *&v790[8];
                if (*&v790[8] >= *&v790[16])
                {
                  v682 = std::vector<operations_research::sat::LinearExpressionProto>::__emplace_back_slow_path<operations_research::sat::LinearExpressionProto const&>(v790, v680);
                }

                else
                {
                  operations_research::sat::LinearExpressionProto::LinearExpressionProto(*&v790[8], 0, v680);
                  v682 = (v681 + 80);
                }

                *&v790[8] = v682;
                v678 += operations_research::sat::PresolveContext::IsFixed(v764, v680);
              }

              ++v676;
              v679 -= 8;
            }

            while (v679);
            if (v678 > 1)
            {
              operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v764, &byte_23CE7F131, 0);
LABEL_1074:
              v683 = 0;
              goto LABEL_1107;
            }

            if (v678 == 1)
            {
              v684 = *v790;
              v685 = *&v790[8];
              while (1)
              {
                if (v684 == v685)
                {
                  goto LABEL_1086;
                }

                if (!operations_research::sat::PresolveContext::IsFixed(v764, v684))
                {
                  break;
                }

LABEL_1078:
                v684 = (v684 + 80);
              }

              v686 = operations_research::Domain::Domain(&v795, v669);
              operations_research::Domain::Complement(__p, v686);
              v687 = operations_research::sat::PresolveContext::IntersectDomainWith(v764, v684, __p, 0);
              if (__p[0])
              {
                operator delete(__p[1]);
                if (v795)
                {
                  goto LABEL_1085;
                }
              }

              else if (v795)
              {
LABEL_1085:
                operator delete(*&v796[0]);
              }

              if ((v687 & 1) == 0)
              {
                if (dword_2810BFB78 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFB70, dword_2810BFB78))
                {
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 2186);
                  v696 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v696, "Empty domain for a variable in MaybeExpandAllDiff()", 0x33uLL);
                  absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
                  v683 = 0;
                  goto LABEL_1107;
                }

                goto LABEL_1074;
              }

              goto LABEL_1078;
            }
          }

LABEL_1086:
          v688 = *v764;
          if (v753 == *v751)
          {
            v689 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v688 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v690 = v689;
            if (*(v689 + 60) != 29)
            {
              operations_research::sat::ConstraintProto::clear_constraint(v689);
              *(v690 + 60) = 29;
              v691 = *(v690 + 8);
              if (v691)
              {
                v691 = *(v691 & 0xFFFFFFFFFFFFFFFELL);
              }

LABEL_1096:
              v693 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v691);
              *(v690 + 48) = v693;
              v694 = *v790;
              v695 = *&v790[8];
              if (*v790 == *&v790[8])
              {
LABEL_1097:
                v683 = 1;
                goto LABEL_1108;
              }

              do
              {
LABEL_1103:
                if (operations_research::sat::PresolveContext::DomainContains(v764, v694, v669))
                {
                  AffineValueEncoding = operations_research::sat::PresolveContext::GetOrCreateAffineValueEncoding(v764, v694, v669);
                  v699 = v693[2];
                  v700 = v699;
                  if (v699 == HIDWORD(v699))
                  {
                    google::protobuf::RepeatedField<int>::Grow((v693 + 2), HIDWORD(v699), (HIDWORD(v699) + 1));
                    v700 = *(v693 + 4);
                  }

                  v697 = v693[3];
                  *(v693 + 4) = v700 + 1;
                  *(v697 + 4 * v700) = AffineValueEncoding;
                }

                v694 = (v694 + 80);
              }

              while (v694 != v695);
              v683 = 1;
LABEL_1107:
              v694 = *v790;
LABEL_1108:
              if (v694)
              {
                v701 = *&v790[8];
                v702 = v694;
                if (*&v790[8] != v694)
                {
                  do
                  {
                    operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v701 - 80));
                  }

                  while (v701 != v694);
                  v702 = *v790;
                }

                *&v790[8] = v694;
                operator delete(v702);
              }

              if (!v683)
              {
                goto LABEL_1124;
              }

              if (v669 == v673[1])
              {
                v673 += 2;
                if (v673 != v674)
                {
                  v669 = *v673;
                }
              }

              else
              {
                ++v669;
              }

              if (v673 == v674)
              {
                goto LABEL_1117;
              }

              continue;
            }
          }

          else
          {
            v692 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v688 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v690 = v692;
            if (*(v692 + 60) != 26)
            {
              operations_research::sat::ConstraintProto::clear_constraint(v692);
              *(v690 + 60) = 26;
              v691 = *(v690 + 8);
              if (v691)
              {
                v691 = *(v691 & 0xFFFFFFFFFFFFFFFELL);
              }

              goto LABEL_1096;
            }
          }

          break;
        }

        v693 = *(v690 + 48);
        v694 = *v790;
        v695 = *&v790[8];
        if (*v790 == *&v790[8])
        {
          goto LABEL_1097;
        }

        goto LABEL_1103;
      }

LABEL_1117:
      *v790 = "all_diff:";
      *&v790[8] = 9;
      v703 = 12;
      if (v753 != *v751)
      {
        v703 = 0;
      }

      v704 = " permutation";
      if (v753 != *v751)
      {
        v704 = &byte_23CE7F131;
      }

      __p[0] = v704;
      __p[1] = v703;
      v795 = " expanded";
      *&v796[0] = 9;
      v793.__r_.__value_.__r.__words[0] = &byte_23CE7F131;
      v793.__r_.__value_.__l.__size_ = 0;
      absl::lts_20240722::StrCat(v790, __p, &v795, &v793, &v783);
      operations_research::sat::PresolveContext::UpdateRuleStats(v764, &v783, 1, v705, v706);
      if (SHIBYTE(v783.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v783.__r_.__value_.__l.__data_);
      }

      operations_research::sat::ConstraintProto::Clear(v763);
    }

LABEL_1124:
    if (v784)
    {
      operator delete(v785);
    }

    v2 = v764;
LABEL_1203:
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v2);
    if (!*(v763 + 15))
    {
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v2, v589);
    }

    if (*(v2 + 416))
    {
      break;
    }

    v5 = *v2;
LABEL_882:
    if (++v589 >= *(v5 + 56))
    {
      goto LABEL_1205;
    }
  }

  if (**(v2 + 48) == 1)
  {
    *v790 = "UNSAT after expansion of ";
    *&v790[8] = 25;
    google::protobuf::Message::ShortDebugString(&v793);
  }

LABEL_1213:
  if (v765[0] >= 2)
  {
    operator delete((v766 - (v765[1] & 1) - 8));
    if (v767.__r_.__value_.__r.__words[0] >= 2)
    {
      goto LABEL_1218;
    }

LABEL_1215:
    if (v769.__r_.__value_.__r.__words[0] >= 2)
    {
LABEL_1219:
      operator delete((v769.__r_.__value_.__r.__words[2] - (v769.__r_.__value_.__s.__data_[8] & 1) - 8));
    }
  }

  else
  {
    if (v767.__r_.__value_.__r.__words[0] < 2)
    {
      goto LABEL_1215;
    }

LABEL_1218:
    operator delete((v767.__r_.__value_.__r.__words[2] - (v767.__r_.__value_.__s.__data_[8] & 1) - 8));
    if (v769.__r_.__value_.__r.__words[0] >= 2)
    {
      goto LABEL_1219;
    }
  }
}