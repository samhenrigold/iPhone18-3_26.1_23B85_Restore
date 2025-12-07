re2::CharClassBuilder *re2::CharClassBuilder::AddCharClass(re2::CharClassBuilder *this, re2::CharClassBuilder *a2)
{
  v2 = *(a2 + 2);
  v3 = a2 + 24;
  if (v2 != a2 + 24)
  {
    v4 = this;
    do
    {
      this = re2::CharClassBuilder::AddRange(v4, *(v2 + 7), *(v2 + 8));
      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return this;
}

BOOL re2::CharClassBuilder::Contains(re2::CharClassBuilder *this, int a2)
{
  v4 = *(this + 3);
  v2 = this + 24;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 8) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a2)];
  }

  while (v3);
  if (v5 == v2 || *(v5 + 7) > a2)
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

uint64_t re2::CharClassBuilder::RemoveAbove(uint64_t this, uint64_t a2)
{
  if (a2 <= 1114110)
  {
    v2 = a2;
    v3 = this;
    if (a2 <= 121)
    {
      if (a2 >= 97)
      {
        *(this + 4) &= 0x3FFFFFFu >> (122 - a2);
      }

      else
      {
        *(this + 4) = 0;
        if (a2 <= 89)
        {
          if (a2 > 64)
          {
            *this &= 0x3FFFFFFu >> (90 - a2);
          }

          else
          {
            *this = 0;
          }
        }
      }
    }

    v4 = this + 24;
    this = *(this + 24);
    if (this)
    {
      v5 = a2 + 1;
      do
      {
        v6 = v3 + 24;
        v7 = this;
        do
        {
          if (*(v7 + 32) > v2)
          {
            v6 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) <= v2));
        }

        while (v7);
        if (v6 == v4 || *(v6 + 28) > 1114111)
        {
          break;
        }

        v8 = *(v6 + 8);
        v9 = v6;
        if (v8)
        {
          do
          {
            v10 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v10 = v9[2];
            v11 = *v10 == v9;
            v9 = v10;
          }

          while (!v11);
        }

        v12 = *(v6 + 28);
        if (*(v3 + 16) == v6)
        {
          *(v3 + 16) = v10;
        }

        --*(v3 + 32);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(this, v6);
        operator delete(v6);
        v13 = ~HIDWORD(v12) + v12 + *(v3 + 8);
        *(v3 + 8) = v13;
        this = *(v3 + 24);
        if (v12 <= v2)
        {
          if (!this)
          {
LABEL_32:
            operator new();
          }

          v14 = *(v3 + 24);
          while (1)
          {
            while (1)
            {
              v15 = v14;
              if (*(v14 + 7) <= v2)
              {
                break;
              }

              v14 = *v14;
              if (!*v15)
              {
                goto LABEL_32;
              }
            }

            if (*(v14 + 8) >= v12)
            {
              break;
            }

            v14 = v14[1];
            if (!v14)
            {
              goto LABEL_32;
            }
          }

          *(v3 + 8) = v5 - v12 + v13;
        }
      }

      while (this);
    }
  }

  return this;
}

void re2::CharClassBuilder::Negate(int8x8_t *this)
{
  v2 = this[4];
  v3 = __CFADD__(*&v2, 1);
  v4 = *&v2 + 1;
  if (!v3)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    std::vector<re2::RE2 *>::__throw_length_error[abi:ne200100]();
  }

  v5 = this[2];
  if (v5 == &this[3])
  {
    operator new();
  }

  if (v5[3].i32[1])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[4].i32[0] + 1;
    v7 = v5[1];
    if (v7)
    {
      do
      {
        v5 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v5;
        v5 = v5[2];
      }

      while (*v5 != v8);
    }
  }

  if (v5 != &this[3])
  {
    operator new();
  }

  if (v6 < 1114112)
  {
    operator new();
  }

  std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::destroy(*&this[3]);
  this[3] = 0;
  this[4] = 0;
  this[2] = &this[3];
  *this = (*&vmvn_s8(*this) & 0x3FFFFFF03FFFFFFLL);
  this[1].i32[0] = 1114112 - this[1].i32[0];
}

void sub_231F09508(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t re2::CharClass::Contains(re2::CharClass *this, int a2)
{
  v2 = *(this + 4);
  if (v2 >= 1)
  {
    v3 = *(this + 1);
    do
    {
      v5 = (v3 + 8 * (v2 >> 1));
      if (v5[1] < a2)
      {
        v4 = (v2 >> 1) + 1;
        v3 += 8 * v4;
        v2 -= v4;
      }

      else
      {
        v2 = v2 >> 1;
        if (*v5 <= a2)
        {
          return 1;
        }
      }
    }

    while (v2 > 0);
  }

  return 0;
}

uint64_t re2::RE2::DoMatch(uint64_t a1, __int128 *a2, uint64_t a3, _DWORD *a4, void **a5, int a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 128))
  {
    if (*(a1 + 30) == 1)
    {
      LOBYTE(v22[0]) = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v22 + 8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22 + 1, "Invalid RE2: ", 13);
      v7 = *(a1 + 120);
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = *(a1 + 120);
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = *(v7 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22 + 1, v9, v10);
      LogMessage::~LogMessage(v22);
    }

    return 0;
  }

  memset(&v22[15], 0, 32);
  if (a6)
  {
    v15 = 0;
  }

  else
  {
    v15 = a4 == 0;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = a6 + 1;
  }

  memset(v22, 0, 240);
  if (v16 >= 0x12)
  {
    operator new[]();
  }

  if ((re2::RE2::Match(a1, a2, 0, *(a2 + 2), a3, v22, v16) & 1) == 0)
  {
    return 0;
  }

  if (a4)
  {
    *a4 = LODWORD(v22[0]) + DWORD2(v22[0]) - *a2;
  }

  if (a5 && a6)
  {
    if (*(a1 + 88))
    {
      v17 = *(a1 + 160);
      if (v17 == -1)
      {
        re2::Regexp::NumCaptures(*(a1 + 88));
      }

      if (v17 < a6)
      {
        return 0;
      }
    }

    else if (a6 > -1)
    {
      return 0;
    }

    v18 = a6 & ~(a6 >> 31);
    v19 = &v22[1] + 2;
    while (v18)
    {
      v20 = ((*a5)[1])(*(v19 - 1), *v19, **a5);
      v19 += 4;
      ++a5;
      --v18;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t re2::RE2::Match(uint64_t a1, __int128 *a2, int a3, int a4, int a5, _DWORD *a6, int a7)
{
  if (*(a1 + 128) || (v13 = *(a1 + 88)) == 0)
  {
    if (*(a1 + 30) != 1)
    {
      return 0;
    }

    LOBYTE(v100.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v101);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Invalid RE2: ", 13);
    v8 = *(a1 + 120);
    v9 = *(v8 + 23);
    if (v9 >= 0)
    {
      v10 = *(a1 + 120);
    }

    else
    {
      v10 = *v8;
    }

    if (v9 >= 0)
    {
      v11 = *(v8 + 23);
    }

    else
    {
      v11 = *(v8 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v10, v11);
    goto LABEL_10;
  }

  if (a3 < 0 || a3 > a4 || (v14 = *(a2 + 2), v14 < a4))
  {
    if (*(a1 + 30) != 1)
    {
      return 0;
    }

    LOBYTE(v100.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v101);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "RE2: invalid startpos, endpos pair.", 35);
    goto LABEL_10;
  }

  v99 = *a2;
  v16 = (v99 + a3);
  v98 = 0;
  *&v99 = v16;
  v17 = a4 - a3 - v14 + DWORD2(v99);
  DWORD2(v99) = v17;
  if (a7)
  {
    v18 = &v97;
  }

  else
  {
    v18 = 0;
  }

  v97 = 0;
  v19 = *(a1 + 160);
  if (v19 == -1)
  {
    re2::Regexp::NumCaptures(v13);
  }

  if (v19 < a7)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = a7;
  }

  v21 = *(a1 + 96);
  if (a3 && (*v21 & 1) != 0)
  {
    return 0;
  }

  if (*v21 && (*(v21 + 1) & 1) != 0)
  {
    v22 = 2;
  }

  else if (((a5 != 2) & *v21) != 0)
  {
    v22 = 1;
  }

  else
  {
    v22 = a5;
  }

  v23 = *(a1 + 71);
  if (v23 < 0)
  {
    v24 = *(a1 + 56);
  }

  else
  {
    v24 = *(a1 + 71);
  }

  if (v24)
  {
    if (a3)
    {
      return 0;
    }

    if ((v23 & 0x80000000) != 0)
    {
      v25 = *(a1 + 56);
    }

    else
    {
      LODWORD(v25) = *(a1 + 71);
    }

    v38 = v17 - v25;
    if (v17 < v25)
    {
      return 0;
    }

    v39 = (a1 + 48);
    v40 = v25;
    if (*(a1 + 72) == 1)
    {
      if ((v23 & 0x80000000) != 0)
      {
        v39 = *v39;
      }

      if (v25 >= 1)
      {
        v41 = &v39[v25];
        v42 = v16;
        do
        {
          v43 = *v42;
          if ((v43 - 65) < 0x1A)
          {
            v43 |= 0x20u;
          }

          if (*v39 != v43)
          {
            return 0;
          }

          ++v39;
          ++v42;
        }

        while (v39 < v41);
      }

      v89 = v25;
    }

    else
    {
      v89 = v25;
      v55 = *(a1 + 96);
      v56 = a2;
      v57 = a6;
      if ((v23 & 0x80000000) != 0)
      {
        v39 = *v39;
      }

      if (memcmp(v39, v16, v25))
      {
        return 0;
      }

      a6 = v57;
      a2 = v56;
      v21 = v55;
    }

    *&v99 = &v16[v40];
    DWORD2(v99) = v38;
    v26 = a1 + 24;
    v28 = 0;
    if (v22 == 2)
    {
      v58 = *(a1 + 112);
      v59 = *(v21 + 12);
      v30 = v59 < 501;
      v96 = 0;
      v27 = 2;
    }

    else
    {
      v27 = *(a1 + 29);
      v58 = *(a1 + 112);
      v59 = *(v21 + 12);
      v30 = v59 < 501;
      v96 = 0;
    }

    v31 = 0x40000 / v59;
    if (v58 != 1 || v20 >= 6)
    {
      goto LABEL_89;
    }

LABEL_51:
    v32 = *(a2 + 2);
    if (v32 <= 4096 && (v20 > 1 || v32 <= 8))
    {
      if (re2::FLAGS_trace_re2 == 1)
      {
        LOBYTE(v100.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v101);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
        re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
        if ((v95 & 0x80u) == 0)
        {
          v62 = &v93;
        }

        else
        {
          v62 = v93;
        }

        if ((v95 & 0x80u) == 0)
        {
          v63 = v95;
        }

        else
        {
          v63 = v94;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v62, v63);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
        re2::CEscape();
      }

      v28 = 1;
      v47 = 1;
      goto LABEL_175;
    }

    v28 = 1;
    goto LABEL_89;
  }

  v26 = a1 + 24;
  v27 = *(a1 + 29);
  if (v20 < 6)
  {
    v28 = *(a1 + 112);
  }

  else
  {
    v28 = 0;
  }

  v29 = *(v21 + 12);
  v30 = v29 < 501;
  v96 = 0;
  v31 = 0x40000 / v29;
  if (v22 == 1)
  {
    if (!v28)
    {
      v89 = 0;
LABEL_89:
      v44 = a6;
      if (v30 && *(a2 + 2) <= v31 && v20 >= 2)
      {
        if (re2::FLAGS_trace_re2 == 1)
        {
          LOBYTE(v100.__locale_) = 0;
          std::ostringstream::basic_ostringstream[abi:ne200100](v101);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
          re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
          if ((v95 & 0x80u) == 0)
          {
            v51 = &v93;
          }

          else
          {
            v51 = v93;
          }

          if ((v95 & 0x80u) == 0)
          {
            v52 = v95;
          }

          else
          {
            v52 = v94;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v51, v52);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
          re2::CEscape();
        }

        LOBYTE(v30) = 1;
        v47 = 1;
        goto LABEL_175;
      }

      v90 = v31;
      v33 = a2;
      if (re2::Prog::SearchDFA(v21, &v99, a2, 1, v27, &v97, &v96))
      {
        a6 = v44;
LABEL_97:
        if (v20 <= 1)
        {
          if (v20 == 1)
          {
            *a6 = v97;
            a6[2] = v98;
          }

LABEL_213:
          if (a7 >= 1 && v89 >= 1)
          {
            v78 = a6[2] + v89;
            *a6 -= v89;
            a6[2] = v78;
          }

          if (v20 >= a7)
          {
            return 1;
          }

          v79 = v20;
          v80 = a7 - v20;
          if (v80 >= 2)
          {
            v81 = v80 & 0xFFFFFFFFFFFFFFFELL;
            v82 = &a6[4 * v20 + 4];
            v83 = v80 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              *(v82 - 16) = 0;
              *v82 = 0;
              *(v82 - 8) = 0;
              *(v82 + 8) = 0;
              v82 += 32;
              v83 -= 2;
            }

            while (v83);
            if (v80 == v81)
            {
              return 1;
            }

            v79 = v81 + v20;
          }

          v84 = a7 - v79;
          v85 = &a6[4 * v79 + 2];
          do
          {
            *(v85 - 1) = 0;
            *v85 = 0;
            v85 += 4;
            --v84;
          }

          while (v84);
          return 1;
        }

        a2 = v33;
        v46 = 0;
        HIDWORD(v92) = 0;
        v27 = 2;
        v47 = 1;
        v48 = &v97;
        v31 = v90;
        goto LABEL_176;
      }

      if (v96 != 1)
      {
        if (re2::FLAGS_trace_re2)
        {
          LOBYTE(v100.__locale_) = 0;
          std::ostringstream::basic_ostringstream[abi:ne200100](v101);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
          re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
          if ((v95 & 0x80u) == 0)
          {
            v60 = &v93;
          }

          else
          {
            v60 = v93;
          }

          if ((v95 & 0x80u) == 0)
          {
            v61 = v95;
          }

          else
          {
            v61 = v94;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v60, v61);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
          re2::CEscape();
        }

        return 0;
      }

      if (re2::FLAGS_trace_re2)
      {
        LOBYTE(v100.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v101);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
        re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
        if ((v95 & 0x80u) == 0)
        {
          v49 = &v93;
        }

        else
        {
          v49 = v93;
        }

        if ((v95 & 0x80u) == 0)
        {
          v50 = v95;
        }

        else
        {
          v50 = v94;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v49, v50);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
        re2::CEscape();
      }

      a6 = v44;
      v47 = 1;
LABEL_174:
      a2 = v33;
      v31 = v90;
LABEL_175:
      v92 = 0;
      v46 = 1;
      v48 = &v99;
LABEL_176:
      v91 = *v48;
      LODWORD(v92) = *(v48 + 2);
      if (v28 && v47)
      {
        if (re2::FLAGS_trace_re2 == 1)
        {
          LOBYTE(v100.__locale_) = 0;
          std::ostringstream::basic_ostringstream[abi:ne200100](v101);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
          re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
          if ((v95 & 0x80u) == 0)
          {
            v68 = &v93;
          }

          else
          {
            v68 = v93;
          }

          if ((v95 & 0x80u) == 0)
          {
            v69 = v95;
          }

          else
          {
            v69 = v94;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v68, v69);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
          re2::CEscape();
        }

        v70 = *(a1 + 96);
        v71 = a6;
        if ((re2::Prog::SearchOnePass(v70, &v91, a2, 1, v27, a6, v20) & 1) == 0)
        {
          if ((v46 & 1) != 0 || *(v26 + 6) != 1)
          {
            return 0;
          }

          LOBYTE(v100.__locale_) = 0;
          std::ostringstream::basic_ostringstream[abi:ne200100](v101);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "SearchOnePass inconsistency", 27);
          goto LABEL_10;
        }

        goto LABEL_212;
      }

      if (!v30)
      {
        v72 = a2;
        if ((re2::FLAGS_trace_re2 & 1) == 0)
        {
          goto LABEL_202;
        }

        goto LABEL_195;
      }

      v72 = a2;
      if (v92 > v31)
      {
        if ((re2::FLAGS_trace_re2 & 1) == 0)
        {
LABEL_202:
          re2::Prog::SearchNFA(*(a1 + 96), &v91, v72, v47, v27, a6, v20);
        }

LABEL_195:
        LOBYTE(v100.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v101);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
        re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
        if ((v95 & 0x80u) == 0)
        {
          v73 = &v93;
        }

        else
        {
          v73 = v93;
        }

        if ((v95 & 0x80u) == 0)
        {
          v74 = v95;
        }

        else
        {
          v74 = v94;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v73, v74);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
        re2::CEscape();
      }

      if (re2::FLAGS_trace_re2)
      {
        LOBYTE(v100.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v101);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
        re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
        if ((v95 & 0x80u) == 0)
        {
          v75 = &v93;
        }

        else
        {
          v75 = v93;
        }

        if ((v95 & 0x80u) == 0)
        {
          v76 = v95;
        }

        else
        {
          v76 = v94;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v75, v76);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
        re2::CEscape();
      }

      v77 = *(a1 + 96);
      v71 = a6;
      if (re2::Prog::SearchBitState(v77, &v91, a2, v47, v27, a6, v20))
      {
LABEL_212:
        a6 = v71;
        goto LABEL_213;
      }

      if ((v46 & 1) != 0 || *(v26 + 6) != 1)
      {
        return 0;
      }

      LOBYTE(v100.__locale_) = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v101);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "SearchBitState inconsistency", 28);
LABEL_10:
      LogMessage::~LogMessage(&v100);
      return 0;
    }

LABEL_50:
    v89 = 0;
    goto LABEL_51;
  }

  if (v22 == 2)
  {
    v27 = 2;
    if ((v28 & 1) == 0)
    {
      v89 = 0;
      v28 = 0;
      goto LABEL_89;
    }

    goto LABEL_50;
  }

  v90 = 0x40000 / v29;
  v88 = a6;
  v33 = a2;
  if (!re2::Prog::SearchDFA(v21, &v99, a2, 0, v27, v18, &v96))
  {
    a6 = v88;
    if (v96 != 1)
    {
      if (re2::FLAGS_trace_re2)
      {
        LOBYTE(v100.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v101);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
        re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
        if ((v95 & 0x80u) == 0)
        {
          v64 = &v93;
        }

        else
        {
          v64 = v93;
        }

        if ((v95 & 0x80u) == 0)
        {
          v65 = v95;
        }

        else
        {
          v65 = v94;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v64, v65);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
        re2::CEscape();
      }

      return 0;
    }

    if (re2::FLAGS_trace_re2)
    {
      LOBYTE(v100.__locale_) = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v101);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
      re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
      if ((v95 & 0x80u) == 0)
      {
        v53 = &v93;
      }

      else
      {
        v53 = v93;
      }

      if ((v95 & 0x80u) == 0)
      {
        v54 = v95;
      }

      else
      {
        v54 = v94;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v53, v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
      re2::CEscape();
    }

LABEL_173:
    v89 = 0;
    v47 = 0;
    goto LABEL_174;
  }

  if (re2::FLAGS_trace_re2 == 1)
  {
    LOBYTE(v100.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v101);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
    re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
    if ((v95 & 0x80u) == 0)
    {
      v34 = &v93;
    }

    else
    {
      v34 = v93;
    }

    if ((v95 & 0x80u) == 0)
    {
      v35 = v95;
    }

    else
    {
      v35 = v94;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v34, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
    re2::CEscape();
  }

  if (!a7)
  {
    return 1;
  }

  result = re2::RE2::ReverseProg(a1);
  if (result)
  {
    if (re2::Prog::SearchDFA(result, &v97, v33, 1, 1, &v97, &v96))
    {
      if (re2::FLAGS_trace_re2 == 1)
      {
        LOBYTE(v100.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v101);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
        re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
        if ((v95 & 0x80u) == 0)
        {
          v36 = &v93;
        }

        else
        {
          v36 = v93;
        }

        if ((v95 & 0x80u) == 0)
        {
          v37 = v95;
        }

        else
        {
          v37 = v94;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v36, v37);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
        re2::CEscape();
      }

      v89 = 0;
      a6 = v88;
      goto LABEL_97;
    }

    a6 = v88;
    if (v96 != 1)
    {
      if (re2::FLAGS_trace_re2)
      {
        LOBYTE(v100.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v101);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
        re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
        if ((v95 & 0x80u) == 0)
        {
          v86 = &v93;
        }

        else
        {
          v86 = v93;
        }

        if ((v95 & 0x80u) == 0)
        {
          v87 = v95;
        }

        else
        {
          v87 = v94;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v86, v87);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
        re2::CEscape();
      }

      if (*(a1 + 30) != 1)
      {
        return 0;
      }

      LOBYTE(v100.__locale_) = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v101);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "DFA inconsistency", 17);
      goto LABEL_10;
    }

    if (re2::FLAGS_trace_re2)
    {
      LOBYTE(v100.__locale_) = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v101);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Match ", 6);
      re2::trunc(&v93, *(a1 + 8), *(a1 + 16));
      if ((v95 & 0x80u) == 0)
      {
        v66 = &v93;
      }

      else
      {
        v66 = v93;
      }

      if ((v95 & 0x80u) == 0)
      {
        v67 = v95;
      }

      else
      {
        v67 = v94;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v66, v67);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " [", 2);
      re2::CEscape();
    }

    goto LABEL_173;
  }

  return result;
}

void re2::trunc(re2 *this, const re2::StringPiece *__src, unsigned int a3)
{
  if (a3 > 99)
  {
    operator new();
  }

  if ((a3 & 0x80000000) != 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = a3;
  if (a3 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = a3;
  if (a3)
  {
    memcpy(this, __src, a3);
  }

  *(this + v4) = 0;
}

void sub_231F0C888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t re2::RE2::ReverseProg(re2::RE2 *this)
{
  v4 = *this;
  if (pthread_rwlock_wrlock(*this))
  {
    goto LABEL_8;
  }

  v2 = *(this + 13);
  if (!v2)
  {
    if (*(this + 15) == re2::empty_string)
    {
      re2::Compiler::Compile(*(this + 11), 1, *(this + 4) / 3);
    }

    v2 = 0;
  }

  if (pthread_rwlock_unlock(v4))
  {
LABEL_8:
    abort();
  }

  return v2;
}

void sub_231F0CA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  LogMessage::~LogMessage(&a15);
  re2::MutexLock::~MutexLock((v15 - 56));
  _Unwind_Resume(a1);
}

void re2::MutexLock::~MutexLock(pthread_rwlock_t **this)
{
  if (pthread_rwlock_unlock(*this))
  {
    abort();
  }
}

uint64_t re2::RE2::ConsumeN(re2::RE2 *this, re2::StringPiece *a2, const re2::RE2 *a3, const re2::RE2::Arg *const *a4)
{
  v7 = 0;
  result = re2::RE2::DoMatch(a2, this, 1, &v7, a3, a4);
  if (result)
  {
    v6 = v7;
    *this += v7;
    *(this + 2) -= v6;
  }

  return result;
}

uint64_t re2::RE2::FindAndConsumeN(re2::RE2 *this, re2::StringPiece *a2, const re2::RE2 *a3, const re2::RE2::Arg *const *a4)
{
  v7 = 0;
  result = re2::RE2::DoMatch(a2, this, 0, &v7, a3, a4);
  if (result)
  {
    v6 = v7;
    *this += v7;
    *(this + 2) -= v6;
  }

  return result;
}

double re2::RE2::Options::Options(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
  *(a1 + 4) = a2 == 2;
  *(a1 + 5) = a2 == 2;
  *(a1 + 6) = a2 != 3;
  *(a1 + 8) = 0x800000;
  *(a1 + 16) = 0;
  *&result = 0x100000001;
  *(a1 + 20) = 1;
  return result;
}

{
  if (a2 == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
  *(a1 + 4) = a2 == 2;
  *(a1 + 5) = a2 == 2;
  *(a1 + 6) = a2 != 3;
  *(a1 + 8) = 0x800000;
  *(a1 + 16) = 0;
  *&result = 0x100000001;
  *(a1 + 20) = 1;
  return result;
}

void re2::RE2::RE2(re2::RE2 *this, const char *__s)
{
  *(this + 17) = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 30) = 1;
  *(this + 4) = 0x800000;
  *(this + 10) = 0;
  *(this + 44) = 1;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 45) = 0;
  *(this + 61) = 0;
  *(this + 53) = 0;
  *(this + 17) = 0;
  v10 = __s;
  if (__s)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = 0;
  }

  v11 = v3;
  v4 = 1;
  v5 = 0;
  v6 = 1;
  v7 = 0x800000;
  v8 = 0;
  v9 = 1;
  re2::RE2::Init(this, &v10, &v4);
}

void sub_231F0CD34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*v2);
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 48));
  _Unwind_Resume(exception_object);
}

void sub_231F0D61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::locale a21)
{
  LogMessage::~LogMessage(&a21);
  re2::RegexpStatus::~RegexpStatus((v21 - 112));
  _Unwind_Resume(a1);
}

uint64_t re2::RE2::Options::ParseFlags(re2::RE2::Options *this)
{
  if (*this == 1)
  {
    goto LABEL_6;
  }

  if (*this == 2)
  {
    v1 = 36;
    goto LABEL_7;
  }

  if (*(this + 6) != 1)
  {
LABEL_6:
    v1 = 4;
  }

  else
  {
    v2 = this;
    LOBYTE(v5.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unknown encoding ", 17);
    MEMORY[0x23837FD10](v6, *v2);
    LogMessage::~LogMessage(&v5);
    v1 = 4;
    this = v2;
  }

LABEL_7:
  if (!*(this + 4))
  {
    v1 |= 0x794u;
  }

  if (*(this + 16))
  {
    v1 |= 2u;
  }

  if (*(this + 17))
  {
    v1 |= 0x800u;
  }

  if (*(this + 18))
  {
    v1 |= 8u;
  }

  if (*(this + 19))
  {
    v1 |= 0x1000u;
  }

  v3 = v1 | *(this + 20) ^ 1;
  if (*(this + 21))
  {
    v3 |= 0x80u;
  }

  if (*(this + 22))
  {
    v3 |= 0x100u;
  }

  if (*(this + 23))
  {
    return v3 | 0x10;
  }

  else
  {
    return v3;
  }
}

void re2::RE2::RE2(re2::RE2 *this, const re2::StringPiece *a2)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 30) = 1;
  *(this + 4) = 0x800000;
  *(this + 10) = 0;
  *(this + 44) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 45) = 0;
  *(this + 61) = 0;
  *(this + 53) = 0;
  *(this + 17) = 0;
  v2 = 1;
  v3 = 0;
  v4 = 1;
  v5 = 0x800000;
  v6 = 0;
  v7 = 1;
  re2::RE2::Init(this, a2, &v2);
}

{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 30) = 1;
  *(this + 4) = 0x800000;
  *(this + 10) = 0;
  *(this + 44) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 45) = 0;
  *(this + 61) = 0;
  *(this + 53) = 0;
  *(this + 17) = 0;
  v2 = 1;
  v3 = 0;
  v4 = 1;
  v5 = 0x800000;
  v6 = 0;
  v7 = 1;
  re2::RE2::Init(this, a2, &v2);
}

void sub_231F0D8C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*v2);
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 48));
  _Unwind_Resume(exception_object);
}

void sub_231F0D99C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*v2);
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 48));
  _Unwind_Resume(exception_object);
}

void re2::RE2::RE2(re2::RE2 *this, const re2::StringPiece *a2, const re2::RE2::Options *a3)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 30) = 1;
  *(this + 4) = 0x800000;
  *(this + 10) = 0;
  *(this + 44) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 45) = 0;
  *(this + 61) = 0;
  *(this + 53) = 0;
  *(this + 17) = 0;
  re2::RE2::Init(this, a2, a3);
}

{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 30) = 1;
  *(this + 4) = 0x800000;
  *(this + 10) = 0;
  *(this + 44) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 45) = 0;
  *(this + 61) = 0;
  *(this + 53) = 0;
  *(this + 17) = 0;
  re2::RE2::Init(this, a2, a3);
}

void sub_231F0DA4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*v2);
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 48));
  _Unwind_Resume(exception_object);
}

void sub_231F0DAFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*v2);
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 48));
  _Unwind_Resume(exception_object);
}

void re2::RE2::~RE2(re2::RE2 *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    re2::Regexp::Decref(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    re2::Regexp::Decref(v3);
  }

  v4 = *this;
  if (*this)
  {
    if (pthread_rwlock_destroy(*this))
    {
      abort();
    }

    MEMORY[0x23837FDE0](v4, 0x1000C40BEF03554);
  }

  v5 = *(this + 12);
  if (v5)
  {
    re2::Prog::~Prog(v5);
    MEMORY[0x23837FDE0]();
  }

  v6 = *(this + 13);
  if (v6)
  {
    re2::Prog::~Prog(v6);
    MEMORY[0x23837FDE0]();
  }

  v7 = *(this + 15);
  if (v7 && v7 != re2::empty_string)
  {
    if (*(v7 + 23) < 0)
    {
      v8 = *(this + 15);
      operator delete(*v7);
      v7 = v8;
    }

    MEMORY[0x23837FDE0](v7, 0x1012C40EC159624);
  }

  v9 = *(this + 21);
  if (v9 && v9 != re2::empty_named_groups)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(*(v9 + 8));
    MEMORY[0x23837FDE0](v9, 0x1020C4062D53EE8);
  }

  v10 = *(this + 22);
  if (v10)
  {
    if (v10 != re2::empty_group_names)
    {
      std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(*(v10 + 8));
      MEMORY[0x23837FDE0](v10, 0x1020C4062D53EE8);
    }
  }

  if ((*(this + 159) & 0x80000000) == 0)
  {
    if ((*(this + 71) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(*(this + 6));
    return;
  }

  operator delete(*(this + 17));
  if (*(this + 71) < 0)
  {
    goto LABEL_27;
  }
}

uint64_t re2::RE2::ProgramSize(re2::RE2 *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    return *(v1 + 12);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t re2::RE2::NamedCapturingGroups(re2::RE2 *this)
{
  v2 = *this;
  if (pthread_rwlock_wrlock(*this))
  {
    goto LABEL_8;
  }

  if (*(this + 32))
  {
    v3 = re2::empty_named_groups;
  }

  else
  {
    v3 = *(this + 21);
    if (!v3)
    {
      re2::Regexp::NamedCaptures(*(this + 11));
    }
  }

  if (pthread_rwlock_unlock(v2))
  {
LABEL_8:
    abort();
  }

  return v3;
}

void sub_231F0DD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  re2::MutexLock::~MutexLock(va);
  _Unwind_Resume(a1);
}

uint64_t re2::RE2::CapturingGroupNames(re2::RE2 *this)
{
  v2 = *this;
  if (pthread_rwlock_wrlock(*this))
  {
    goto LABEL_8;
  }

  if (*(this + 32))
  {
    v3 = re2::empty_group_names;
  }

  else
  {
    v3 = *(this + 22);
    if (!v3)
    {
      re2::Regexp::CaptureNames(*(this + 11));
    }
  }

  if (pthread_rwlock_unlock(v2))
  {
LABEL_8:
    abort();
  }

  return v3;
}

void sub_231F0DE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  re2::MutexLock::~MutexLock(va);
  _Unwind_Resume(a1);
}

uint64_t re2::RE2::MaxSubmatch(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = *a1;
  v5 = &v4[v1];
  do
  {
    if (*v4 == 92 && ++v4 < v5)
    {
      v6 = *v4;
      if ((v6 & 0x80000000) == 0)
      {
        LODWORD(v7) = v6 - 48;
        if (v7 <= result)
        {
          v7 = result;
        }

        else
        {
          v7 = v7;
        }

        if ((*(MEMORY[0x277D85DE0] + 4 * *v4 + 60) & 0x400) != 0)
        {
          result = v7;
        }
      }
    }

    ++v4;
  }

  while (v4 < v5);
  return result;
}

void re2::RE2::QuoteMeta(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a2, 2 * *(a1 + 8));
  if (*(a1 + 8) >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(*a1 + v4);
      if (v5 >= 97)
      {
        if (v5 > 0x7A)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      if (v5 >= 65)
      {
        break;
      }

      if (v5 >= 48)
      {
        if (v5 > 0x39)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      if (v5 < 0)
      {
        goto LABEL_16;
      }

      if (*(*a1 + v4))
      {
        goto LABEL_15;
      }

      std::string::append(a2, "\\x00");
LABEL_17:
      if (++v4 >= *(a1 + 8))
      {
        return;
      }
    }

    if (v5 >= 0x5B && v5 != 95)
    {
LABEL_15:
      std::string::push_back(a2, 92);
      LOBYTE(v5) = *(*a1 + v4);
    }

LABEL_16:
    std::string::push_back(a2, v5);
    goto LABEL_17;
  }
}

void sub_231F0DFA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t re2::RE2::NumberOfCapturingGroups(re2::RE2 *this)
{
  v1 = *(this + 11);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(this + 40);
  if (result == -1)
  {
    re2::Regexp::NumCaptures(v1);
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_string(re2::RE2::Arg *this, const char *a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    MEMORY[0x23837FC70](a3, this, a2, a4);
  }

  return 1;
}

uint64_t re2::RE2::Arg::parse_stringpiece(re2::RE2::Arg *this, const char *a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    *a3 = this;
    *(a3 + 8) = a2;
  }

  return 1;
}

BOOL re2::RE2::Arg::parse_char(re2::RE2::Arg *this, const char *a2, _BYTE *a3, void *a4)
{
  if (a2 == 1 && a3)
  {
    *a3 = *this;
  }

  return a2 == 1;
}

BOOL re2::RE2::Arg::parse_uchar(re2::RE2::Arg *this, const char *a2, _BYTE *a3, void *a4)
{
  if (a2 == 1 && a3)
  {
    *a3 = *this;
  }

  return a2 == 1;
}

uint64_t re2::RE2::Arg::parse_long_radix(re2::RE2::Arg *this, const char *a2, uint64_t *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v4 = a4;
  v22 = 0;
  memset(__dst, 0, sizeof(__dst));
  if (a2 < 1)
  {
    goto LABEL_20;
  }

  v6 = *this;
  if ((v6 & 0x80000000) != 0)
  {
    v7 = this;
    v8 = a2;
    v9 = __maskrune(*this, 0x4000uLL);
    LODWORD(a2) = v8;
    v10 = v9;
    this = v7;
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_20:
    v16 = "";
    LODWORD(v15) = a2;
    goto LABEL_21;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x4000) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  v11 = (this + 1);
  v12 = *this;
  if (v12 != 45)
  {
    v11 = this;
  }

  v13 = a2 - (v12 == 45);
  if (v13 >= 3 && *v11 == 48 && *(v11 + 1) == 48)
  {
    while (*(v11 + 2) == 48)
    {
      v11 = (v11 + 1);
      if (v13-- <= 3)
      {
        v13 = 2;
        break;
      }
    }
  }

  if (v12 == 45)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v13;
  }

  if (v15 > 0x20)
  {
    goto LABEL_20;
  }

  v16 = __dst;
  memmove(__dst, v11 - (v12 == 45), v15);
  if (v12 == 45)
  {
    LOBYTE(__dst[0]) = 45;
  }

  *(__dst + v15) = 0;
LABEL_21:
  __endptr = 0;
  *__error() = 0;
  v17 = strtol(v16, &__endptr, v4);
  if (__endptr != &v16[v15])
  {
    return 0;
  }

  v18 = v17;
  if (*__error())
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v18;
  }

  return 1;
}

uint64_t re2::RE2::Arg::parse_ulong_radix(re2::RE2::Arg *this, const char *a2, unint64_t *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v4 = a4;
  v22 = 0;
  memset(__dst, 0, sizeof(__dst));
  if (a2 < 1)
  {
    goto LABEL_20;
  }

  v6 = *this;
  if ((v6 & 0x80000000) != 0)
  {
    v7 = this;
    v8 = a2;
    v9 = __maskrune(*this, 0x4000uLL);
    LODWORD(a2) = v8;
    v10 = v9;
    this = v7;
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_20:
    v16 = "";
    LODWORD(v15) = a2;
    goto LABEL_21;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x4000) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  v11 = (this + 1);
  v12 = *this;
  if (v12 != 45)
  {
    v11 = this;
  }

  v13 = a2 - (v12 == 45);
  if (v13 >= 3 && *v11 == 48 && *(v11 + 1) == 48)
  {
    while (*(v11 + 2) == 48)
    {
      v11 = (v11 + 1);
      if (v13-- <= 3)
      {
        v13 = 2;
        break;
      }
    }
  }

  if (v12 == 45)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v13;
  }

  if (v15 > 0x20)
  {
    goto LABEL_20;
  }

  v16 = __dst;
  memmove(__dst, v11 - (v12 == 45), v15);
  if (v12 == 45)
  {
    LOBYTE(__dst[0]) = 45;
  }

  *(__dst + v15) = 0;
LABEL_21:
  if (*v16 == 45)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  v17 = strtoul(v16, &__endptr, v4);
  if (__endptr != &v16[v15])
  {
    return 0;
  }

  v18 = v17;
  if (*__error())
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v18;
  }

  return 1;
}

uint64_t re2::RE2::Arg::parse_short_radix(re2::RE2::Arg *this, const char *a2, _WORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_long_radix(this, a2, &v6, a4);
  if (result)
  {
    if (v6 == v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_ushort_radix(re2::RE2::Arg *this, const char *a2, _WORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_ulong_radix(this, a2, &v6, a4);
  if (result)
  {
    if (v6 >> 16)
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_int_radix(re2::RE2::Arg *this, const char *a2, _DWORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_long_radix(this, a2, &v6, a4);
  if (result)
  {
    if (v6 == v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_uint_radix(re2::RE2::Arg *this, const char *a2, _DWORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_ulong_radix(this, a2, &v6, a4);
  if (result)
  {
    if (HIDWORD(v6))
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_longlong_radix(re2::RE2::Arg *this, const char *a2, uint64_t *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v4 = a4;
  v22 = 0;
  memset(__dst, 0, sizeof(__dst));
  if (a2 < 1)
  {
    goto LABEL_20;
  }

  v6 = *this;
  if ((v6 & 0x80000000) != 0)
  {
    v7 = this;
    v8 = a2;
    v9 = __maskrune(*this, 0x4000uLL);
    LODWORD(a2) = v8;
    v10 = v9;
    this = v7;
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_20:
    v16 = "";
    LODWORD(v15) = a2;
    goto LABEL_21;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x4000) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  v11 = (this + 1);
  v12 = *this;
  if (v12 != 45)
  {
    v11 = this;
  }

  v13 = a2 - (v12 == 45);
  if (v13 >= 3 && *v11 == 48 && *(v11 + 1) == 48)
  {
    while (*(v11 + 2) == 48)
    {
      v11 = (v11 + 1);
      if (v13-- <= 3)
      {
        v13 = 2;
        break;
      }
    }
  }

  if (v12 == 45)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v13;
  }

  if (v15 > 0x20)
  {
    goto LABEL_20;
  }

  v16 = __dst;
  memmove(__dst, v11 - (v12 == 45), v15);
  if (v12 == 45)
  {
    LOBYTE(__dst[0]) = 45;
  }

  *(__dst + v15) = 0;
LABEL_21:
  __endptr = 0;
  *__error() = 0;
  v17 = strtoll(v16, &__endptr, v4);
  if (__endptr != &v16[v15])
  {
    return 0;
  }

  v18 = v17;
  if (*__error())
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v18;
  }

  return 1;
}

uint64_t re2::RE2::Arg::parse_ulonglong_radix(re2::RE2::Arg *this, const char *a2, unint64_t *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v4 = a4;
  v22 = 0;
  memset(__dst, 0, sizeof(__dst));
  if (a2 < 1)
  {
    goto LABEL_20;
  }

  v6 = *this;
  if ((v6 & 0x80000000) != 0)
  {
    v7 = this;
    v8 = a2;
    v9 = __maskrune(*this, 0x4000uLL);
    LODWORD(a2) = v8;
    v10 = v9;
    this = v7;
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_20:
    v16 = "";
    LODWORD(v15) = a2;
    goto LABEL_21;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x4000) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  v11 = (this + 1);
  v12 = *this;
  if (v12 != 45)
  {
    v11 = this;
  }

  v13 = a2 - (v12 == 45);
  if (v13 >= 3 && *v11 == 48 && *(v11 + 1) == 48)
  {
    while (*(v11 + 2) == 48)
    {
      v11 = (v11 + 1);
      if (v13-- <= 3)
      {
        v13 = 2;
        break;
      }
    }
  }

  if (v12 == 45)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v13;
  }

  if (v15 > 0x20)
  {
    goto LABEL_20;
  }

  v16 = __dst;
  memmove(__dst, v11 - (v12 == 45), v15);
  if (v12 == 45)
  {
    LOBYTE(__dst[0]) = 45;
  }

  *(__dst + v15) = 0;
LABEL_21:
  if (*v16 == 45)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  v17 = strtoull(v16, &__endptr, v4);
  if (__endptr != &v16[v15])
  {
    return 0;
  }

  v18 = v17;
  if (*__error())
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v18;
  }

  return 1;
}

uint64_t re2::RE2::Arg::parse_double(re2::RE2::Arg *this, const char *a2, double *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v12 = 0;
  memset(__dst, 0, sizeof(__dst));
  if (a2 > 199)
  {
    return 0;
  }

  v5 = a2;
  memcpy(__dst, this, a2);
  v6 = __dst + v5;
  *v6 = 0;
  *__error() = 0;
  v10 = 0;
  v7 = strtod(__dst, &v10);
  if (v10 != v6)
  {
    return 0;
  }

  v8 = v7;
  if (*__error())
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return 1;
}

uint64_t re2::RE2::Arg::parse_float(re2::RE2::Arg *this, const char *a2, float *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v12 = 0;
  memset(__dst, 0, sizeof(__dst));
  if (a2 > 199)
  {
    return 0;
  }

  v5 = a2;
  memcpy(__dst, this, a2);
  v6 = __dst + v5;
  *v6 = 0;
  *__error() = 0;
  v10 = 0;
  v7 = strtof(__dst, &v10);
  if (v10 != v6)
  {
    return 0;
  }

  v8 = v7;
  if (*__error())
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return 1;
}

uint64_t re2::RE2::Arg::parse_short(re2::RE2::Arg *this, const char *a2, _WORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_long_radix(this, a2, &v6, 0xA);
  if (result)
  {
    if (v6 == v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_short_hex(re2::RE2::Arg *this, const char *a2, _WORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_long_radix(this, a2, &v6, 0x10);
  if (result)
  {
    if (v6 == v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_short_octal(re2::RE2::Arg *this, const char *a2, _WORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_long_radix(this, a2, &v6, 8);
  if (result)
  {
    if (v6 == v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_short_cradix(re2::RE2::Arg *this, const char *a2, _WORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_long_radix(this, a2, &v6, 0);
  if (result)
  {
    if (v6 == v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_ushort(re2::RE2::Arg *this, const char *a2, _WORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_ulong_radix(this, a2, &v6, 0xA);
  if (result)
  {
    if (v6 >> 16)
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_ushort_hex(re2::RE2::Arg *this, const char *a2, _WORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_ulong_radix(this, a2, &v6, 0x10);
  if (result)
  {
    if (v6 >> 16)
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_ushort_octal(re2::RE2::Arg *this, const char *a2, _WORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_ulong_radix(this, a2, &v6, 8);
  if (result)
  {
    if (v6 >> 16)
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_ushort_cradix(re2::RE2::Arg *this, const char *a2, _WORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_ulong_radix(this, a2, &v6, 0);
  if (result)
  {
    if (v6 >> 16)
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_int(re2::RE2::Arg *this, const char *a2, _DWORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_long_radix(this, a2, &v6, 0xA);
  if (result)
  {
    if (v6 == v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_int_hex(re2::RE2::Arg *this, const char *a2, _DWORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_long_radix(this, a2, &v6, 0x10);
  if (result)
  {
    if (v6 == v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_int_octal(re2::RE2::Arg *this, const char *a2, _DWORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_long_radix(this, a2, &v6, 8);
  if (result)
  {
    if (v6 == v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_int_cradix(re2::RE2::Arg *this, const char *a2, _DWORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_long_radix(this, a2, &v6, 0);
  if (result)
  {
    if (v6 == v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_uint(re2::RE2::Arg *this, const char *a2, _DWORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_ulong_radix(this, a2, &v6, 0xA);
  if (result)
  {
    if (HIDWORD(v6))
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_uint_hex(re2::RE2::Arg *this, const char *a2, _DWORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_ulong_radix(this, a2, &v6, 0x10);
  if (result)
  {
    if (HIDWORD(v6))
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_uint_octal(re2::RE2::Arg *this, const char *a2, _DWORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_ulong_radix(this, a2, &v6, 8);
  if (result)
  {
    if (HIDWORD(v6))
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  return result;
}

uint64_t re2::RE2::Arg::parse_uint_cradix(re2::RE2::Arg *this, const char *a2, _DWORD *a3, void *a4)
{
  v6 = 0;
  result = re2::RE2::Arg::parse_ulong_radix(this, a2, &v6, 0);
  if (result)
  {
    if (HIDWORD(v6))
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v6;
      }

      return 1;
    }
  }

  return result;
}

void sub_231F0FCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F0FE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F100EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8313(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F1043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_231F12000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F12290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F13EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

void sub_231F177CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F17D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F17ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F18CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t isLowercaseAscii(void *a1)
{
  v1 = a1;
  v2 = objc_opt_self();

  if (v2)
  {
    memset(v21, 0, sizeof(v21));
    Length = CFStringGetLength(v1);
    theString = v1;
    v25 = 0;
    v26 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v1);
    CStringPtr = 0;
    v23 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
    }

    v27 = 0;
    v28 = 0;
    v24 = CStringPtr;
    if (Length >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 64;
      do
      {
        if (v8 >= 4)
        {
          v10 = 4;
        }

        else
        {
          v10 = v8;
        }

        v11 = v26;
        if (v26 <= v8)
        {
          v13 = 0;
        }

        else
        {
          if (v23)
          {
            v12 = &v23[v25];
          }

          else
          {
            if (v24)
            {
              v13 = v24[v25 + v8];
              goto LABEL_14;
            }

            if (v28 <= v8 || v7 > v8)
            {
              v15 = v10 + v6;
              v16 = v9 - v10;
              v17 = v8 - v10;
              v18 = v17 + 64;
              if (v17 + 64 >= v26)
              {
                v18 = v26;
              }

              v27 = v17;
              v28 = v18;
              if (v26 >= v16)
              {
                v11 = v16;
              }

              v29.location = v17 + v25;
              v29.length = v11 + v15;
              CFStringGetCharacters(theString, v29, v21);
              v7 = v27;
            }

            v12 = v21 - v7;
          }

          v13 = v12[v8];
        }

LABEL_14:
        if (v13 > 0x7Fu || (v13 - 65) <= 0x19u)
        {
          v19 = 0;
          goto LABEL_31;
        }

        ++v8;
        --v6;
        ++v9;
      }

      while (Length != v8);
    }
  }

  v19 = 1;
LABEL_31:

  return v19;
}

uint64_t canTurnIntoAscii(void *a1)
{
  v1 = a1;
  v2 = objc_opt_self();

  if (!v2)
  {
    goto LABEL_54;
  }

  memset(v23, 0, sizeof(v23));
  Length = CFStringGetLength(v1);
  theString = v1;
  v27 = 0;
  v28 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  CStringPtr = 0;
  v25 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v29 = 0;
  v30 = 0;
  v26 = CStringPtr;
  if (Length < 1)
  {
LABEL_54:
    v21 = 1;
    goto LABEL_55;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 64;
  while (1)
  {
    if (v8 >= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = v8;
    }

    v11 = v28;
    if (v28 <= v8)
    {
      goto LABEL_28;
    }

    if (v25)
    {
      v12 = &v25[v27];
LABEL_12:
      v13 = v12[v8];
      goto LABEL_15;
    }

    if (!v26)
    {
      if (v30 <= v8 || v7 > v8)
      {
        v16 = v10 + v6;
        v17 = v9 - v10;
        v18 = v8 - v10;
        v19 = v18 + 64;
        if (v18 + 64 >= v28)
        {
          v19 = v28;
        }

        v29 = v18;
        v30 = v19;
        if (v28 >= v17)
        {
          v11 = v17;
        }

        v31.location = v18 + v27;
        v31.length = v11 + v16;
        CFStringGetCharacters(theString, v31, v23);
        v7 = v29;
      }

      v12 = v23 - v7;
      goto LABEL_12;
    }

    v13 = v26[v27 + v8];
LABEL_15:
    if (v13 <= 0x214Fu)
    {
      if (v13 - 7552 < 0x80 || v13 - 8304 < 0x30 || v13 - 8400 < 0x30)
      {
        goto LABEL_28;
      }
    }

    else if (v13 > 0xAB2Fu)
    {
      if (v13 - 43824 < 0x40 || v13 - 65056 < 0x10)
      {
        goto LABEL_28;
      }
    }

    else if (v13 - 8528 < 0x40 || v13 - 11360 < 0x20)
    {
      goto LABEL_28;
    }

    if (v13 >= 0x80u)
    {
      v20 = v13 & 0xFF80;
      if (v20 != 128 && v20 != 256 && v13 - 384 >= 0xD0 && v13 - 592 >= 0xB0 && v13 - 768 >= 0x70 && v13 - 6832 >= 0x50 && v20 != 7424 && (v13 & 0xFF00) != 0x1E00 && v13 - 8448 >= 0x50 && v13 - 42784 >= 0xE0 && v13 - 64256 >= 0x50 && v13 - 65280 >= 0xF0)
      {
        break;
      }
    }

LABEL_28:
    ++v8;
    --v6;
    ++v9;
    if (Length == v8)
    {
      goto LABEL_54;
    }
  }

  v21 = 0;
LABEL_55:

  return v21;
}

id fastPathLatinToAsciiTransformation(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 length] > 0x80)
  {
LABEL_62:
    v23 = 0;
  }

  else
  {
    memset(v33, 0, sizeof(v33));
    v2 = v1;
    v3 = objc_opt_self();

    if (v3)
    {
      memset(v25, 0, sizeof(v25));
      Length = CFStringGetLength(v2);
      theString = v2;
      v29 = 0;
      v30 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v2);
      CStringPtr = 0;
      v27 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v2, 0x600u);
      }

      v31 = 0;
      v32 = 0;
      v28 = CStringPtr;
      if (Length >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = v33;
        v10 = 64;
        while (1)
        {
          if (v8 >= 4)
          {
            v11 = 4;
          }

          else
          {
            v11 = v8;
          }

          v12 = v30;
          if (v30 <= v8)
          {
            LOBYTE(v14) = 0;
LABEL_18:
            *v9++ = v14;
            goto LABEL_19;
          }

          if (v27)
          {
            break;
          }

          if (!v28)
          {
            v15 = v31;
            if (v32 <= v8 || v31 > v8)
            {
              v17 = v11 + v7;
              v18 = v10 - v11;
              v19 = v8 - v11;
              v20 = v19 + 64;
              if (v19 + 64 >= v30)
              {
                v20 = v30;
              }

              v31 = v19;
              v32 = v20;
              if (v30 >= v18)
              {
                v12 = v18;
              }

              v36.location = v19 + v29;
              v36.length = v12 + v17;
              CFStringGetCharacters(theString, v36, v25);
              v15 = v31;
            }

            v13 = v25 - v15;
            goto LABEL_13;
          }

          v14 = v28[v29 + v8];
LABEL_17:
          if (v14 <= 0x7Fu)
          {
            goto LABEL_18;
          }

          if ((isCombiningMark(v14) & 1) == 0)
          {
            if (v14 <= 0xEBu)
            {
              v21 = v14 - 167;
              if (v21 > 0x3E)
              {
                goto LABEL_51;
              }

              if (((1 << (v14 + 89)) & 0x100295) == 0)
              {
                if (((1 << (v14 + 89)) & 0x7E00000000000000) != 0)
                {
                  v22 = 97;
LABEL_53:
                  *v9++ = v22;
                  goto LABEL_19;
                }

                if (v21 == 56)
                {
                  v22 = 115;
                  *v9++ = 115;
                  goto LABEL_53;
                }

LABEL_51:
                if (v14 - 232 >= 4)
                {
                  if (v14 != 231)
                  {
LABEL_61:

                    goto LABEL_62;
                  }

                  v22 = 99;
                }

                else
                {
                  v22 = 101;
                }

                goto LABEL_53;
              }

LABEL_45:
              v22 = 32;
              goto LABEL_53;
            }

            if (v14 > 0xF7u)
            {
              if (v14 - 249 < 4)
              {
                v22 = 117;
                goto LABEL_53;
              }

              if (v14 != 248)
              {
                if (v14 != 8482)
                {
                  goto LABEL_61;
                }

                goto LABEL_45;
              }
            }

            else if (v14 - 242 >= 5)
            {
              if (v14 - 236 >= 4)
              {
                if (v14 != 241)
                {
                  goto LABEL_61;
                }

                v22 = 110;
              }

              else
              {
                v22 = 105;
              }

              goto LABEL_53;
            }

            v22 = 111;
            goto LABEL_53;
          }

LABEL_19:
          ++v8;
          --v7;
          ++v10;
          if (Length == v8)
          {
            goto LABEL_57;
          }
        }

        v13 = &v27[v29];
LABEL_13:
        v14 = v13[v8];
        goto LABEL_17;
      }
    }

    v9 = v33;
LABEL_57:

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v33 length:v9 - v33 encoding:1];
  }

  return v23;
}

uint64_t isCombiningMark(int a1)
{
  v2 = (a1 - 768) < 0x70 || (a1 - 6832) < 0x50;
  v3 = (a1 - 65056) < 0x10 || v2;
  if ((a1 - 8400) >= 0x30)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if ((a1 - 7616) >= 0x40)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

uint64_t re2::CEscapeString(re2 *this, const char *a2, uint64_t a3, char *a4)
{
  v4 = a4;
  if (a2 >= 1)
  {
    v6 = this;
    LODWORD(v7) = 0;
    v8 = this + a2;
    while (1)
    {
      if (v4 - v7 < 2)
      {
        return 0xFFFFFFFFLL;
      }

      v9 = *v6;
      if (v9 > 0x21)
      {
        switch(v9)
        {
          case '""':
            *(a3 + v7) = 8796;
LABEL_4:
            v7 = (v7 + 2);
            goto LABEL_5;
          case '\'':
            *(a3 + v7) = 10076;
            goto LABEL_4;
          case '\\':
            *(a3 + v7) = 23644;
            goto LABEL_4;
        }
      }

      else
      {
        switch(v9)
        {
          case 9u:
            *(a3 + v7) = 29788;
            goto LABEL_4;
          case 0xAu:
            *(a3 + v7) = 28252;
            goto LABEL_4;
          case 0xDu:
            *(a3 + v7) = 29276;
            goto LABEL_4;
        }
      }

      if (v9 - 127 > 0xFFFFFFA0)
      {
        *(a3 + v7) = v9;
        v7 = (v7 + 1);
      }

      else
      {
        if ((v4 - v7) < 4)
        {
          return 0xFFFFFFFFLL;
        }

        sprintf((a3 + v7), "\\%03o", *v6);
        v7 = (v7 + 4);
      }

LABEL_5:
      if (++v6 >= v8)
      {
        goto LABEL_24;
      }
    }
  }

  v7 = 0;
LABEL_24:
  if (v7 >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + v7) = 0;
  return v7;
}

double re2::PrefixSuccessor@<D0>(const void **this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 2);
  if ((v2 & 0x80000000) != 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *this;
  memset(&__dst, 0, sizeof(__dst));
  if (v2 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v2;
  if (v2)
  {
    memmove(&__dst, v4, v2);
  }

  __dst.__r_.__value_.__s.__data_[v2] = 0;
  v6 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    LODWORD(v7) = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    LODWORD(v7) = __dst.__r_.__value_.__r.__words[1];
  }

  if (v7 - 1 < 0)
  {
LABEL_17:
    *(&a2->__r_.__value_.__s + 23) = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
    if (v6 < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    while (1)
    {
      v7 = (v7 - 1);
      v8 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      v9 = v8->__r_.__value_.__s.__data_[v7];
      if (v9 != 255)
      {
        break;
      }

      std::string::erase(&__dst, v7, 0xFFFFFFFFFFFFFFFFLL);
      if (v7 <= 0)
      {
        v6 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        goto LABEL_17;
      }
    }

    v8->__r_.__value_.__s.__data_[v7] = v9 + 1;
    result = *&__dst.__r_.__value_.__l.__data_;
    *a2 = __dst;
  }

  return result;
}

void sub_231F1C2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_231F1DB88(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_231F1DD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F1E510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_231F1EB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F1EDD0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x231F1ED70);
  }

  _Unwind_Resume(exc_buf);
}

void sub_231F1F730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F21D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __getScannerRefAndAcquire_block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = sharedScannerSemaphore;
  sharedScannerSemaphore = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t SGRangeFromCFRange(uint64_t result, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (result < 0 || a2 < 0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"CFRange %ld:%ld cannot be converted to NSRange.", result, a2];
    v3 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA470];
    v7[0] = v2;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v5 = [v3 errorWithDomain:@"_PASUtilityMacros" code:0 userInfo:v4];

    return 0;
  }

  return result;
}

id matchFromSimpleDDResult(uint64_t a1, void *a2)
{
  v81 = a2;
  Range = DDResultGetRange();
  v76 = SGRangeFromCFRange(Range, v4);
  v77 = v5;
  RangeForURLification = DDResultGetRangeForURLification();
  v8 = SGRangeFromCFRange(RangeForURLification, v7);
  v74 = v9;
  v75 = v8;
  v89[0] = 0;
  if (calendarsAndFormatters_onceToken != -1)
  {
    dispatch_once(&calendarsAndFormatters_onceToken, &__block_literal_global_9187);
  }

  v80 = calendarsAndFormatters_result_1;
  v87[1] = 0;
  v88 = 0;
  if (DDResultHasType() && DDResultCopyMailValue() || DDResultHasType() && DDResultCopyPhoneValue() || DDResultHasType() && DDResultCopyIMScreenNameValue())
  {
    v10 = v88;
    v79 = 0;
  }

  else
  {
    v79 = 0;
    v10 = 0;
  }

  if (DDResultHasType())
  {
    v89[0] = 1;
    v11 = CFTimeZoneCopyDefault();
    v12 = SGDataDetectorsGetDate(a1, v81, v11);
    v13 = v10;
    if (calendarsAndFormatters_onceToken != -1)
    {
      dispatch_once(&calendarsAndFormatters_onceToken, &__block_literal_global_9187);
    }

    v14 = calendarsAndFormatters_result_0;
    v15 = [MEMORY[0x277CBEAA8] distantPast];
    v16 = [v14 components:4 fromDate:v15];
    v17 = SGDataDetectorsGetDate(a1, v15, v11);
    CFRelease(v11);
    v18 = [v14 components:4 fromDate:v17];
    v19 = [v18 year];
    if (v19 == [v16 year])
    {
      if (calendarsAndFormatters_onceToken != -1)
      {
        dispatch_once(&calendarsAndFormatters_onceToken, &__block_literal_global_9187);
      }

      v20 = &calendarsAndFormatters_result_2;
    }

    else
    {
      if (calendarsAndFormatters_onceToken != -1)
      {
        dispatch_once(&calendarsAndFormatters_onceToken, &__block_literal_global_9187);
      }

      v20 = &calendarsAndFormatters_result_1;
    }

    v21 = *v20;
    v22 = [v21 stringFromDate:v12];

    v10 = v22;
  }

  else
  {
    v12 = 0;
  }

  if ((DDResultHasType() & 1) != 0 || DDResultHasType())
  {
    v23 = v10;
    v24 = CFTimeZoneCopyDefault();
    System = CFLocaleGetSystem();
    HasType = DDResultHasType();
    v86 = 0;
    v87[0] = v12;
    v84 = 0;
    v85 = 0;
    SGDataDetectorsGetIntervalDatesAndTimeZoneWithLocale(a1, System, v87, &v86, &v85, &v84, v81, v89, v24);
    v26 = v87[0];

    v27 = v86;
    v73 = v85;
    v72 = v84;
    if (v26)
    {
      v28 = [v80 stringFromDate:v26];

      v23 = v28;
    }

    if (v24)
    {
      CFRelease(v24);
    }

    v12 = v26;
    v10 = v23;
  }

  else
  {
    HasType = 0;
    v72 = 0;
    v73 = 0;
    v27 = 0;
  }

  if ((DDResultHasType() & 1) != 0 || (DDResultHasType() & 1) != 0 || DDResultHasType())
  {
    v29 = CFTimeZoneCopyDefault();
    v30 = CFLocaleGetSystem();
    v82 = v27;
    v83 = v12;
    DateAndTimeZoneWithLocaleAndTimeZone = SGDataDetectorsGetDateAndTimeZoneWithLocaleAndTimeZone(a1, v30, v81, v29, &v83, &v82, v89);
    v32 = v83;

    v71 = v82;
    if (DateAndTimeZoneWithLocaleAndTimeZone)
    {
      if (calendarsAndFormatters_onceToken != -1)
      {
        dispatch_once(&calendarsAndFormatters_onceToken, &__block_literal_global_9187);
      }

      v33 = calendarsAndFormatters_result_3;
      v34 = [v33 stringFromDate:v32];

      v10 = v34;
    }

    if (v29)
    {
      CFRelease(v29);
    }
  }

  else
  {
    v71 = v27;
    v32 = v12;
  }

  if (DDResultGetSubresultWithType())
  {
    v35 = DDResultGetRange();
    v70 = SGRangeFromCFRange(v35, v36);
    v38 = v37;
  }

  else
  {
    v38 = 0;
    v70 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (DDResultHasType())
  {
    SubResults = DDResultGetSubResults();
    if (SubResults)
    {
      v40 = SubResults;
      if (CFArrayGetCount(SubResults) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v40, 0);
        v42 = ValueAtIndex[8];

        v43 = ValueAtIndex[9];
        v79 = v42;
        v10 = v43;
      }
    }
  }

  v44 = 0x278948000uLL;
  if ((DDResultHasType() & 1) != 0 || (DDResultHasType() & 1) != 0 || (DDResultHasType() & 1) != 0 || DDResultHasType())
  {
    HasType = [SGDataDetectorMatch inferredDateForDataDetectorResult:a1];
  }

  if (DDResultGetCategory() == 3)
  {
    DDResultCopyFullAddressComponents();
    v45 = [MEMORY[0x277D02090] components:0 city:0 state:0 postalCode:0 country:0];

    v46 = v45;
    v44 = 0x278948000;
  }

  else
  {
    v46 = 0;
  }

  MatchType = SGDataDetectorsGetMatchType(a1);
  v48 = MatchType;
  if (MatchType > 5)
  {
    if (MatchType != 8)
    {
      if (MatchType == 6)
      {
        v49 = v32;
        ParsecDomain = DDResultGetParsecDomain();
        ParsecUUID = DDResultGetParsecUUID();
        v52 = objc_alloc(*(v44 + 2576));
        v53 = v52;
        if (ParsecUUID)
        {
          v54 = [ParsecUUID copy];
          v55 = ParsecDomain;
          v56 = v79;
          v57 = [v53 initWithLookupHintInDomain:v55 range:v76 labelRange:v77 labelString:v70 valueRange:v38 valueString:v79 qid:{v75, v74, v10, v54}];
        }

        else
        {
          v66 = ParsecDomain;
          v56 = v79;
          v57 = [v52 initWithLookupHintInDomain:v66 range:v76 labelRange:v77 labelString:v70 valueRange:v38 valueString:v79 qid:{v75, v74, v10, 0}];
        }

        v63 = v73;
        goto LABEL_70;
      }

      goto LABEL_64;
    }

LABEL_63:
    v58 = [*(v44 + 2576) approximateTimeForDataDetectorResult:a1];
    v59 = [*(v44 + 2576) partialDateForDataDetectorResult:a1];
    v60 = objc_alloc(*(v44 + 2576));
    BYTE3(v69) = v59;
    BYTE2(v69) = v58;
    BYTE1(v69) = HasType;
    LOBYTE(v69) = v89[0] != 0;
    v56 = v79;
    v68 = v38;
    v61 = v32;
    v62 = v71;
    v63 = v73;
    v49 = v32;
    v64 = v72;
    v57 = [v60 initWithDetectedDate:v61 detectedTimeZone:v71 detectedEndDate:v73 detectedEndTimeZone:v72 matchType:v48 range:v76 labelRange:v77 labelString:v70 valueRange:v68 valueString:v79 allDay:v75 inferredDate:v74 approximateTime:v10 partialDate:v69];
    goto LABEL_71;
  }

  if (MatchType == 1)
  {
    v56 = v79;
    v65 = [objc_alloc(*(v44 + 2576)) initWithMatchType:1 range:v76 labelRange:v77 labelString:v70 valueRange:v38 valueString:v79 postalAddressComponents:{v75, v74, v10, v46}];
    goto LABEL_66;
  }

  if (MatchType == 3)
  {
    goto LABEL_63;
  }

LABEL_64:
  v56 = v79;
  v65 = [objc_alloc(*(v44 + 2576)) initWithMatchType:MatchType range:v76 labelRange:v77 labelString:v70 valueRange:v38 valueString:{v79, v75, v74, v10}];
LABEL_66:
  v57 = v65;
  v63 = v73;
  v49 = v32;
LABEL_70:
  v62 = v71;
  v64 = v72;
LABEL_71:

  return v57;
}

uint64_t __calendarsAndFormatters_block_invoke()
{
  v0 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v1 = calendarsAndFormatters_result_0;
  calendarsAndFormatters_result_0 = v0;

  v2 = objc_opt_new();
  [v2 setDateFormat:@"dd-MM-yyyy"];
  v3 = calendarsAndFormatters_result_1;
  calendarsAndFormatters_result_1 = v2;

  v4 = objc_opt_new();
  [v4 setDateFormat:@"dd-MM"];
  v5 = calendarsAndFormatters_result_2;
  calendarsAndFormatters_result_2 = v4;

  v6 = objc_opt_new();
  v7 = calendarsAndFormatters_result_3;
  calendarsAndFormatters_result_3 = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

void sub_231F23C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 216), 8);
  _Block_object_dispose((v35 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9240(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id patterns()
{
  if (patterns_onceToken != -1)
  {
    dispatch_once(&patterns_onceToken, &__block_literal_global_9247);
  }

  v1 = patterns_patterns;

  return v1;
}

uint64_t __patterns_block_invoke()
{
  v0 = [SGPatterns patternsForClass:objc_opt_class()];
  v1 = patterns_patterns;
  patterns_patterns = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_231F242EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id patterns_9349()
{
  if (patterns_onceToken_9364 != -1)
  {
    dispatch_once(&patterns_onceToken_9364, &__block_literal_global_9365);
  }

  v1 = patterns_patterns_9366;

  return v1;
}

uint64_t __patterns_block_invoke_9369()
{
  v0 = [SGPatterns patternsForClass:objc_opt_class()];
  v1 = patterns_patterns_9366;
  patterns_patterns_9366 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_231F25978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id emailAddressDomain(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [v1 rangeOfString:@"@" options:6];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v1 substringFromIndex:v3 + 1];
    v4 = [v5 lowercaseString];
  }

  objc_autoreleasePoolPop(v2);

  return v4;
}

void enumerateTokensInEmailAddress(void *a1, void *a2)
{
  v3 = a1;
  v57 = a2;
  if (!v3)
  {
    goto LABEL_91;
  }

  v4 = v3;
  v5 = objc_opt_self();

  if (!v5)
  {
    goto LABEL_40;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *buffer = 0u;
  v59 = 0u;
  Length = CFStringGetLength(v4);
  theString = v4;
  v69 = 0;
  v70 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v4);
  CStringPtr = 0;
  v67 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
  }

  v71 = 0;
  v72 = 0;
  v68 = CStringPtr;
  if (Length < 1)
  {
LABEL_40:
    v27 = 0;
    goto LABEL_44;
  }

  v55 = v3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 64;
  v14 = MEMORY[0x277D85DE0];
  while (1)
  {
    if (v12 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v12;
    }

    v16 = v70;
    if (v70 <= v12)
    {
      v19 = 0;
      v18 = 0;
      goto LABEL_18;
    }

    if (v67)
    {
      v17 = &v67[v69];
LABEL_13:
      v18 = v17[v12];
      goto LABEL_17;
    }

    if (!v68)
    {
      v21 = v71;
      if (v72 <= v12 || v71 > v12)
      {
        v23 = v15 + v9;
        v24 = v13 - v15;
        v25 = v12 - v15;
        v26 = v25 + 64;
        if (v25 + 64 >= v70)
        {
          v26 = v70;
        }

        v71 = v25;
        v72 = v26;
        if (v70 >= v24)
        {
          v16 = v24;
        }

        v73.location = v25 + v69;
        v73.length = v16 + v23;
        CFStringGetCharacters(theString, v73, buffer);
        v21 = v71;
      }

      v17 = &buffer[-v21];
      goto LABEL_13;
    }

    v18 = v68[v69 + v12];
LABEL_17:
    v19 = v18;
    if (v18 > 0x7Fu)
    {
      break;
    }

LABEL_18:
    v20 = *(v14 + 4 * v19 + 60);
    if ((v20 & 0x8000) != 0)
    {
      goto LABEL_23;
    }

    v11 |= (*(v14 + 4 * v19 + 60) & 0x1000u) >> 12;
    if (v18 == 64 && (v20 & 0x1000) == 0)
    {
LABEL_41:
      v27 = 0;
      goto LABEL_43;
    }

LABEL_24:
    if (v10)
    {
      goto LABEL_25;
    }

LABEL_26:
    ++v12;
    --v9;
    ++v13;
    if (Length == v12)
    {
      goto LABEL_41;
    }
  }

  if (__maskrune(v18, 0x8000uLL))
  {
LABEL_23:
    v10 = 1;
    goto LABEL_24;
  }

  v11 |= __maskrune(v19, 0x1000uLL) != 0;
  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_25:
  if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  v27 = 1;
LABEL_43:
  v3 = v55;
LABEL_44:

  v28 = malloc_type_malloc(2 * [(__CFString *)v4 length], 0x1000040BDFB0063uLL);
  if (!v28)
  {
    v53 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v53);
  }

  v29 = v28;
  v30 = v4;
  v31 = objc_opt_self();

  if (!v31)
  {
    goto LABEL_89;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *buffer = 0u;
  v59 = 0u;
  v32 = CFStringGetLength(v30);
  theString = v30;
  v69 = 0;
  v70 = v32;
  v33 = CFStringGetCharactersPtr(v30);
  v34 = 0;
  v67 = v33;
  if (!v33)
  {
    v34 = CFStringGetCStringPtr(v30, 0x600u);
  }

  v71 = 0;
  v72 = 0;
  v68 = v34;
  if (v32 <= 0)
  {
    goto LABEL_89;
  }

  v54 = v30;
  v56 = v3;
  v35 = 0;
  v36 = 0;
  v37 = 64;
  v38 = v29;
  while (2)
  {
    if (v36 >= 4)
    {
      v39 = 4;
    }

    else
    {
      v39 = v36;
    }

    v40 = v70;
    if (v70 <= v36)
    {
      v43 = 0;
      v42 = 0;
      if (v27)
      {
        goto LABEL_64;
      }

      goto LABEL_73;
    }

    if (v67)
    {
      v41 = &v67[v69];
      goto LABEL_56;
    }

    if (v68)
    {
      v42 = v68[v69 + v36];
    }

    else
    {
      v47 = v71;
      if (v72 <= v36 || v71 > v36)
      {
        v49 = v39 + v35;
        v50 = v37 - v39;
        v51 = v36 - v39;
        v52 = v51 + 64;
        if (v51 + 64 >= v70)
        {
          v52 = v70;
        }

        v71 = v51;
        v72 = v52;
        if (v70 >= v50)
        {
          v40 = v50;
        }

        v74.location = v51 + v69;
        v74.length = v40 + v49;
        CFStringGetCharacters(theString, v74, buffer);
        v47 = v71;
      }

      v41 = &buffer[-v47];
LABEL_56:
      v42 = v41[v36];
    }

    v43 = v42;
    if (v42 == 64)
    {
      break;
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_67;
    }

    if (v42 <= 0x7Fu)
    {
LABEL_64:
      if ((*(MEMORY[0x277D85DE0] + 4 * v43 + 60) & 0x8000) != 0)
      {
        goto LABEL_65;
      }

LABEL_67:
      if (v42 - 45 <= 0x32 && ((1 << (v42 - 45)) & 0x4000000000003) != 0)
      {
        v44 = 0;
        goto LABEL_70;
      }

      goto LABEL_73;
    }

    if (!__maskrune(v42, 0x8000uLL))
    {
      goto LABEL_67;
    }

LABEL_65:
    v44 = 1;
LABEL_70:
    if (v38 > v29)
    {
      v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:v29 length:(v38 - v29) >> 1 freeWhenDone:0];
      v46 = v57[2](v57, v45);

      v38 = v29;
      if (!v46)
      {
        v30 = v54;
        v3 = v56;
        goto LABEL_89;
      }
    }

    if (v44)
    {
LABEL_73:
      *v38 = __tolower(v43);
      v38 += 2;
    }

    ++v36;
    --v35;
    ++v37;
    if (v32 != v36)
    {
      continue;
    }

    break;
  }

  v3 = v56;
  if (v38 <= v29)
  {
    goto LABEL_90;
  }

  v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:v29 length:(v38 - v29) >> 1 freeWhenDone:0];
  v57[2](v57, v30);
LABEL_89:

LABEL_90:
  free(v29);
LABEL_91:
}

void sub_231F263E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9530(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F286F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v50 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_231F294DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose((v44 - 176), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F2AC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9697(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F2B7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_231F2BE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t simplifyInterdicts(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v28 = a2;
  [v3 sortUsingComparator:&__block_literal_global_413];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v35;
    v27 = v4;
    while (1)
    {
      v10 = 0;
      v29 = v6;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        if (v8)
        {
          v12 = [*(*(&v34 + 1) + 8 * v10) first];
          v13 = [v8 first];
          v14 = [v12 isEqualToString:v13];

          if (v14)
          {
            v33 = objc_alloc(MEMORY[0x277D42648]);
            v15 = [v11 first];
            v16 = [v11 second];
            v17 = [v8 second];
            v32 = v16;
            v30 = v17;
            context = objc_autoreleasePoolPush();
            v18 = SGDelimitedStringsDeserializeSet();
            v19 = SGDelimitedStringsDeserializeSet();
            v20 = [v18 setByAddingObjectsFromSet:v19];
            [v20 allObjects];
            v22 = v21 = v9;
            v23 = [v22 sortedArrayUsingSelector:sel_compare_];
            v24 = SGDelimitedStringsSerializeArray();

            v9 = v21;
            v6 = v29;

            objc_autoreleasePoolPop(context);
            v25 = [v33 initWithFirst:v15 second:v24];

            v7 = 1;
            v8 = v25;
            v4 = v27;
            goto LABEL_11;
          }

          [v28 addObject:v8];
        }

        v15 = v8;
        v8 = v11;
LABEL_11:

        ++v10;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v6)
      {

        if (v8)
        {
          [v28 addObject:v8];
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }
  }

  v7 = 0;
  v8 = v4;
LABEL_16:

LABEL_17:
  return v7 & 1;
}

uint64_t __simplifyInterdicts_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 first];
  v6 = [v4 first];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_231F2D8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F2D9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9953(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F304E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F3191C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F32048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F32764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F330EC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t writeIdentity(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, char a10, char a11)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __writeIdentity_block_invoke;
  v38[3] = &unk_27894D088;
  v27 = v18;
  v39 = v27;
  v28 = v26;
  v40 = v28;
  v29 = v19;
  v41 = v29;
  v30 = v20;
  v42 = v30;
  v31 = v21;
  v43 = v31;
  v32 = v22;
  v44 = v32;
  v33 = v23;
  v45 = v33;
  v34 = v24;
  v46 = v34;
  v35 = v25;
  v49 = a10;
  v50 = a11;
  v47 = v35;
  v48 = &v51;
  [v27 writeTransaction:v38];
  v36 = *(v52 + 24);

  _Block_object_dispose(&v51, 8);
  return v36;
}

void __writeIdentity_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __writeIdentity_block_invoke_2;
  v41[3] = &unk_27894D060;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v42 = v8;
  v43 = v7;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v44 = v14;
  v45 = v13;
  v46 = *(a1 + 112);
  [v2 prepAndRunQuery:@"INSERT OR IGNORE INTO identityPerson (recordId onPrep:surname onRow:middlename onError:{fullname, nameSketches, phones, socialProfileIdentifiers, email, curated, isSent) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v41, 0, 0}];
  if (sqlite3_changes([*(a1 + 32) handle]))
  {
    *(*(*(a1 + 104) + 8) + 24) = 1;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = *(a1 + 80);
  v16 = [v15 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v38;
    do
    {
      v19 = 0;
      do
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v37 + 1) + 8 * v19);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __writeIdentity_block_invoke_3;
        v35[3] = &unk_278954630;
        v35[4] = v20;
        v21 = *(a1 + 32);
        v36 = *(a1 + 40);
        [v21 prepAndRunQuery:@"INSERT OR IGNORE INTO identityPhones (phone onPrep:recordId) VALUES (? onRow:?)" onError:{v35, 0, 0}];
        if (sqlite3_changes([*(a1 + 32) handle]))
        {
          *(*(*(a1 + 104) + 8) + 24) = 1;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v17);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = *(a1 + 88);
  v23 = [v22 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v31 + 1) + 8 * v26);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __writeIdentity_block_invoke_4;
        v29[3] = &unk_2789559D0;
        v29[4] = v27;
        v28 = *(a1 + 32);
        v30 = *(a1 + 40);
        [v28 prepAndRunSQL:@"INSERT OR IGNORE INTO identitySocialProfileIdentifiers (socialProfileIdentifier onPrep:recordId) VALUES (:socialProfileIdentifier onRow::recordId)" onError:{v29, 0, 0}];
        if (sqlite3_changes([*(a1 + 32) handle]))
        {
          *(*(*(a1 + 104) + 8) + 24) = 1;
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v24);
  }
}

uint64_t __writeIdentity_block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) rowId]);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = &stru_284703F00;
  }

  sqlite3_bind_text(a2, 2, [(__CFString *)v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &stru_284703F00;
  }

  sqlite3_bind_text(a2, 3, [(__CFString *)v5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if ([*(a1 + 56) length])
  {
    sqlite3_bind_text(a2, 4, [*(a1 + 56) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(a2, 4);
  }

  v6 = [*(a1 + 64) allObjects];
  v7 = SGDelimitedStringsSerializeArray();
  sqlite3_bind_text(a2, 5, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v8 = [*(a1 + 72) allObjects];
  v9 = SGDelimitedStringsSerializeArray();
  sqlite3_bind_text(a2, 6, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v10 = [*(a1 + 80) allObjects];
  v11 = SGDelimitedStringsSerializeArray();
  sqlite3_bind_text(a2, 7, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (*(a1 + 88))
  {
    v12 = *(a1 + 88);
  }

  else
  {
    v12 = &stru_284703F00;
  }

  sqlite3_bind_text(a2, 8, [(__CFString *)v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(a2, 9, *(a1 + 96));
  v13 = *(a1 + 97);

  return sqlite3_bind_int(a2, 10, v13);
}

uint64_t __writeIdentity_block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v4 = [*(a1 + 40) rowId];

  return sqlite3_bind_int64(a2, 2, v4);
}

void __writeIdentity_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":socialProfileIdentifier" toNSString:v3];
  [v4 bindNamedParam:":recordId" toInt64:{objc_msgSend(*(a1 + 40), "rowId")}];
}

void sub_231F37638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F381DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, ...)
{
  va_start(va, a61);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10187(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id dereferenceData(void *a1, int a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10187;
  v15 = __Block_byref_object_dispose__10188;
  v3 = a1;
  v16 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = globalPatternsData;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __dereferenceData_block_invoke;
    v7[3] = &unk_27894D268;
    v9 = &v11;
    v8 = v3;
    v10 = a2;
    [v4 runWithLockAcquired:v7];
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void sub_231F3856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __dereferenceData_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 16) dataForOffset:*(a1 + 32) includeTerminator:*(a1 + 48)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void sub_231F3880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F38AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F397CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F3E988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL isInhumanHeader(void *a1)
{
  v1 = a1;
  v2 = [v1 length] && objc_msgSend(v1, "characterAtIndex:", 0) == 120 && objc_msgSend(@" x-sendgrid-eid x-facebook-notify x-amazon-mail-relay-type x-autogenerated x-campaign x-ses-outgoing x-ebay-mailtracker x-mailing-id x-phpbb-origin x-report-abuse x-facebook x-bloggermail x-campaign-id x-feedback-id", "rangeOfString:options:", v1, 2) != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

void re2::NFA::NFA(re2::NFA *this, re2::Prog *a2)
{
  *(this + 40) = 0u;
  *(this + 88) = 0u;
  v3 = (this + 88);
  *(this + 65) = 0u;
  *(this + 56) = 0u;
  *(this + 104) = 0u;
  *(this + 113) = 0u;
  *this = a2;
  *(this + 1) = *(a2 + 1);
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  re2::SparseArray<re2::NFA::Thread *>::resize(this + 10, *(a2 + 3));
  re2::SparseArray<re2::NFA::Thread *>::resize(v3, *(*this + 12));
  *(this + 40) = 2 * *(*this + 12);
  operator new[]();
}

void sub_231F40D48(_Unwind_Exception *a1)
{
  re2::SparseArray<re2::NFA::Thread *>::~SparseArray(v2);
  re2::SparseArray<re2::NFA::Thread *>::~SparseArray(v1);
  _Unwind_Resume(a1);
}

void re2::SparseArray<re2::NFA::Thread *>::resize(_DWORD *a1, int a2)
{
  if (a1[1] < a2)
  {
    operator new[]();
  }

  a1[1] = a2;
  if (*a1 > a2)
  {
    *a1 = a2;
  }
}

uint64_t re2::NFA::ComputeFirstByte(re2::NFA *this)
{
  if (*(this + 2))
  {
    operator new[]();
  }

  return 0xFFFFFFFFLL;
}

void *re2::SparseArray<re2::NFA::Thread *>::~SparseArray(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23837FDC0](v2, 0x1000C8052888210);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void re2::NFA::~NFA(re2::NFA *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    MEMORY[0x23837FDC0](v2, 0x50C80EE9192B6);
  }

  v3 = *(this + 19);
  if (v3)
  {
    MEMORY[0x23837FDC0](v3, 0x1050C80606E6C2FLL);
  }

  v4 = *(this + 21);
  if (v4)
  {
    do
    {
      v6 = *v4;
      v5 = v4[1];
      if (v5)
      {
        MEMORY[0x23837FDC0](v5, 0x50C80EE9192B6);
      }

      MEMORY[0x23837FDE0](v4, 0x10A2C40E7E742B6);
      v4 = v6;
    }

    while (v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    MEMORY[0x23837FDC0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    MEMORY[0x23837FDC0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 7);
  if (v10)
  {
    *(this + 8) = v10;
    operator delete(v10);
  }
}

unint64_t re2::NFA::AddToThreadq(unint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a3)
  {
    v6 = result;
    v7 = *(result + 152);
    *v7 = a3;
    *(v7 + 4) = -1;
    *(v7 + 8) = 0;
    v59 = a6 + 16;
    v60 = a6 + 8;
    v8 = 1;
    while (1)
    {
      v9 = (v8 - 1);
      v11 = (v7 + 16 * v9);
      v12 = v11[1];
      if ((v12 & 0x80000000) == 0)
      {
        *(a6 + 8 * v12) = *(v11 + 1);
      }

      v13 = *v11;
      if (!*v11)
      {
        goto LABEL_5;
      }

      if (*(a2 + 4) <= v13)
      {
        break;
      }

      v14 = *(a2 + 8);
      v15 = *(a2 + 16);
      v16 = *(v14 + 4 * v13);
      v17 = *a2;
      if (v16 < *a2 && *(v15 + 16 * v16 + 8) == v13)
      {
        goto LABEL_5;
      }

      *(v14 + 4 * v13) = v17;
      *(v15 + 16 * v17 + 8) = v13;
      v18 = v17 + 1;
      *a2 = v18;
      *(v15 + 16 * *(v14 + 4 * v13)) = 0;
      if (*(a2 + 4) <= v13)
      {
        goto LABEL_17;
      }

      v19 = *(*(a2 + 8) + 4 * v13);
      if (v19 >= v18 || *(v15 + 16 * v19 + 8) != v13)
      {
        goto LABEL_17;
      }

LABEL_18:
      v20 = 16 * v19;
      v21 = (*(*v6 + 32) + 8 * v13);
      v22 = *v21;
      v23 = *v21 & 7;
      if (v23 <= 3)
      {
        if ((*v21 & 7) > 1)
        {
          if (v23 != 2)
          {
            v26 = v21[1];
            if (v26 < *(v6 + 12))
            {
              v27 = *(a6 + 8 * v26);
              *v11 = 0;
              v11[1] = v26;
              *(v11 + 1) = v27;
              *(a6 + 8 * v26) = a5;
              v22 = *v21;
              v9 = v8;
              v8 = (v8 + 1);
            }

            v28 = v7 + 16 * v9;
            *v28 = v22 >> 3;
            *(v28 + 4) = -1;
            *(v28 + 8) = 0;
            v9 = v8;
            goto LABEL_5;
          }

LABEL_28:
          v25 = *(v6 + 168);
          if (!v25)
          {
            operator new();
          }

          result = v25[1];
          *(v6 + 168) = *v25;
          *v25 = v13;
          v29 = *(v6 + 12);
          if (v29 >= 1)
          {
            if (v29 >= 7 && ((v30 = (8 * v29 - 8) & 0xFFFFFFFFFFFFFFF0, result >= v59 + v30) || result + v30 + 16 <= a6))
            {
              v41 = ((v29 - 1) >> 1) + 1;
              v42 = v41 & 0x7FFFFFFFFFFFFFFCLL;
              v43 = (result + 32);
              v44 = (a6 + 32);
              v45 = v41 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v47 = *(v44 - 2);
                v46 = *(v44 - 1);
                v49 = *v44;
                v48 = v44[1];
                v44 += 4;
                *(v43 - 2) = v47;
                *(v43 - 1) = v46;
                *v43 = v49;
                v43[1] = v48;
                v43 += 4;
                v45 -= 4;
              }

              while (v45);
              if (v41 != v42)
              {
                v31 = 2 * v42;
                goto LABEL_41;
              }
            }

            else
            {
              v31 = 0;
LABEL_41:
              v32 = (result + 8 * v31 + 8);
              v33 = (v60 + 8 * v31);
              do
              {
                *(v32 - 1) = *(v33 - 1);
                v34 = *v33;
                v33 += 2;
                *v32 = v34;
                v32 += 2;
                v31 += 2;
              }

              while (v31 < v29);
            }
          }

          *(v15 + v20) = v25;
          goto LABEL_5;
        }

        if (v23)
        {
          v24 = *(v6 + 168);
          if (!v24)
          {
            operator new();
          }

          result = v24[1];
          *(v6 + 168) = *v24;
          *v24 = v13;
          v35 = *(v6 + 12);
          if (v35 >= 1)
          {
            if (v35 >= 7 && ((v36 = (8 * v35 - 8) & 0xFFFFFFFFFFFFFFF0, result >= v59 + v36) || result + v36 + 16 <= a6))
            {
              v50 = ((v35 - 1) >> 1) + 1;
              v51 = v50 & 0x7FFFFFFFFFFFFFFCLL;
              v52 = (result + 32);
              v53 = (a6 + 32);
              v54 = v50 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v56 = *(v53 - 2);
                v55 = *(v53 - 1);
                v58 = *v53;
                v57 = v53[1];
                v53 += 4;
                *(v52 - 2) = v56;
                *(v52 - 1) = v55;
                *v52 = v58;
                v52[1] = v57;
                v52 += 4;
                v54 -= 4;
              }

              while (v54);
              if (v50 != v51)
              {
                v37 = 2 * v51;
                goto LABEL_50;
              }
            }

            else
            {
              v37 = 0;
LABEL_50:
              v38 = (result + 8 * v37 + 8);
              v39 = (v60 + 8 * v37);
              do
              {
                *(v38 - 1) = *(v39 - 1);
                v40 = *v39;
                v39 += 2;
                *v38 = v40;
                v38 += 2;
                v37 += 2;
              }

              while (v37 < v35);
            }
          }

          *(v15 + v20) = v24;
        }

        *v11 = v21[1];
        v11[1] = -1;
        *(v11 + 1) = 0;
        v9 = (v8 + 1);
        v10 = v7 + 16 * v8;
        *v10 = *v21 >> 3;
        *(v10 + 4) = -1;
        *(v10 + 8) = 0;
        goto LABEL_5;
      }

      if ((*v21 & 7) > 5)
      {
        if (v23 == 6)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_28;
        }

        if ((v21[1] & ~a4) == 0)
        {
LABEL_31:
          *v11 = v22 >> 3;
          v11[1] = -1;
          *(v11 + 1) = 0;
          v9 = v8;
        }
      }

LABEL_5:
      v8 = v9;
      if (v9 <= 0)
      {
        return result;
      }
    }

    v15 = *(a2 + 16);
    v18 = *a2;
LABEL_17:
    v19 = v18;
    goto LABEL_18;
  }

  return result;
}

std::string *re2::NFA::FormatCapture@<X0>(std::string *this@<X0>, const char **a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (SHIDWORD(this->__r_.__value_.__r.__words[1]) >= 1)
  {
    v4 = this;
    v5 = 0;
    v6 = a2 + 1;
    do
    {
      v7 = *(v6 - 1);
      if (v7)
      {
        data = v4[1].__r_.__value_.__l.__data_;
        v9 = v7 - data;
        if (*v6)
        {
          this = re2::StringAppendF(a3, "(%d,%d)", v9, *v6 - data);
        }

        else
        {
          this = re2::StringAppendF(a3, "(%d,?)", v9);
        }
      }

      else
      {
        this = re2::StringAppendF(a3, "(?,?)");
      }

      v5 += 2;
      v6 += 2;
    }

    while (SHIDWORD(v4->__r_.__value_.__r.__words[1]) > v5);
  }

  return this;
}

void sub_231F417DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t re2::NFA::Search(re2::NFA *this, const re2::StringPiece *a2, const re2::StringPiece *a3, int a4, char a5, re2::StringPiece *a6, uint64_t a7)
{
  v7 = *(this + 2);
  if (v7)
  {
    v22 = *a3;
    v8 = *a3;
    if (!*a3)
    {
      v8 = *a2;
      DWORD2(v22) = *(a2 + 2);
    }

    v9 = v8 + SDWORD2(v22);
    v10 = *a2 + *(a2 + 2);
    if (v8 > *a2 || v9 < v10)
    {
      LogMessage::LogMessage(&v23, "/Library/Caches/com.apple.xbs/Sources/Suggestions/re2/re2/re2_nfa.cc", 412);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Bad args: context does not contain text ", 40);
      v15 = MEMORY[0x23837FD00](v24, v8);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "+", 1);
      v17 = MEMORY[0x23837FD10](v16, *(&v22 + 1));
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ", 1);
      v19 = MEMORY[0x23837FD00](v18, *a2);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "+", 1);
      MEMORY[0x23837FD10](v20, *(a2 + 2));
      LogMessage::Flush(&v23);
      abort();
    }

    if (**this == 1 && v8 != *a2)
    {
      goto LABEL_16;
    }

    if (*(*this + 1) == 1)
    {
      if (v9 != v10)
      {
LABEL_16:
        LOBYTE(v7) = 0;
        return v7 & 1;
      }

      a5 = 1;
      *(this + 17) = 1;
      *(this + 4) = v10;
    }

    if ((a7 & 0x80000000) == 0)
    {
      *(this + 3) = 2 * a7;
      *(this + 16) = a5;
      if (!a7)
      {
        *(this + 3) = 2;
      }

      operator new[]();
    }

    LOBYTE(v23.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Bad args: nsubmatch=", 20);
    MEMORY[0x23837FD10](v24, a7);
    LogMessage::~LogMessage(&v23);
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

void sub_231F422C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_231F423F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  re2::NFA::~NFA(va);
  _Unwind_Resume(a1);
}

uint64_t re2::chartorune(re2 *this, int *a2, const char *a3)
{
  v3 = *a2;
  if (*a2 < 0)
  {
    v5 = *(a2 + 1) ^ 0x80;
    if (v5 <= 0x3F)
    {
      if (v3 > 0xDF)
      {
        v6 = *(a2 + 2) ^ 0x80;
        if (v6 <= 0x3F)
        {
          if (v3 > 0xEF)
          {
            if (v3 <= 0xF7)
            {
              v8 = *(a2 + 3) ^ 0x80;
              if (v8 <= 0x3F)
              {
                v9 = ((((v5 << 6) | (v3 << 12)) | v6) & 0x7FFF) << 6;
                if (v9 >= 0x10000)
                {
                  v3 = v9 | v8;
                  v4 = 4;
                  goto LABEL_16;
                }
              }
            }
          }

          else
          {
            v7 = ((v3 & 0xF) << 12) | (v5 << 6);
            if (v7 >= 0x800)
            {
              v3 = v7 | v6;
              v4 = 3;
              goto LABEL_16;
            }
          }
        }
      }

      else if (v3 >= 0xC0)
      {
        v3 = ((v3 & 0x1F) << 6) | v5;
        if (v3 >= 0x80)
        {
          v4 = 2;
          goto LABEL_16;
        }
      }
    }

    v4 = 1;
    v3 = 65533;
    goto LABEL_16;
  }

  v4 = 1;
LABEL_16:
  *this = v3;
  return v4;
}

uint64_t re2::runetochar(re2 *this, char *a2, const int *a3)
{
  v3 = *a2;
  if (*a2 > 0x7Fu)
  {
    if (v3 > 0x7FF)
    {
      if (HIWORD(v3) > 0x10u)
      {
        v3 = 65533;
      }

      if (HIWORD(v3))
      {
        *this = (v3 >> 18) | 0xF0;
        *(this + 1) = (v3 >> 12) & 0x3F | 0x80;
        *(this + 2) = (v3 >> 6) & 0x3F | 0x80;
        *(this + 3) = v3 & 0x3F | 0x80;
        return 4;
      }

      else
      {
        *this = (v3 >> 12) | 0xE0;
        *(this + 1) = (v3 >> 6) & 0x3F | 0x80;
        *(this + 2) = v3 & 0x3F | 0x80;
        return 3;
      }
    }

    else
    {
      *this = (v3 >> 6) | 0xC0;
      *(this + 1) = v3 & 0x3F | 0x80;
      return 2;
    }
  }

  else
  {
    *this = v3;
    return 1;
  }
}

uint64_t re2::runelen(re2 *this)
{
  if ((this - 1114112) < 0xFFF00000)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  if (this >= 0x800)
  {
    v2 = v1;
  }

  else
  {
    v2 = 2;
  }

  if (this >= 0x80)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

BOOL re2::fullrune(re2 *this, const char *a2)
{
  result = 0;
  if (a2 >= 1)
  {
    if ((*this & 0x80000000) == 0)
    {
      return 1;
    }

    if (a2 != 1)
    {
      v3 = *this;
      if (v3 < 0xE0 || a2 >= 3 && (a2 != 3 || v3 <= 0xEF))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t re2::utflen(re2 *this, const char *a2)
{
  for (i = 0; ; i = (i + 1))
  {
    v4 = *this;
    if ((*this & 0x80000000) == 0)
    {
      break;
    }

    v5 = *(this + 1) ^ 0x80;
    if (v5 > 0x3F)
    {
      goto LABEL_3;
    }

    if (v4 > 0xDF)
    {
      if (*(this + 2) > -65)
      {
        goto LABEL_3;
      }

      if (v4 > 0xEF)
      {
        if (v4 > 0xF7 || *(this + 3) > -65 || !((((v4 & 7) << 18) | (v5 << 12)) >> 16))
        {
          goto LABEL_3;
        }

        v3 = 4;
      }

      else
      {
        if ((((v4 & 0xF) << 12) | (v5 << 6)) < 0x800)
        {
          goto LABEL_3;
        }

        v3 = 3;
      }
    }

    else
    {
      if (v4 < 0xC0 || ((v4 << 6) & 0x780 | v5) < 0x80)
      {
        goto LABEL_3;
      }

      v3 = 2;
    }

LABEL_4:
    this = (this + v3);
  }

  if (*this)
  {
LABEL_3:
    v3 = 1;
    goto LABEL_4;
  }

  return i;
}

char *re2::utfrune(char *this, const char *a2)
{
  if (a2 < 128)
  {
    return strchr(this, a2);
  }

  while (1)
  {
    v4 = *this;
    if (*this < 0)
    {
      v5 = this[1] ^ 0x80;
      if (v5 <= 0x3F)
      {
        if (v4 > 0xDF)
        {
          v6 = this[2] ^ 0x80;
          if (v6 <= 0x3F)
          {
            if (v4 > 0xEF)
            {
              if (v4 > 0xF7)
              {
                goto LABEL_3;
              }

              v8 = this[3] ^ 0x80;
              if (v8 > 0x3F)
              {
                goto LABEL_3;
              }

              v9 = ((((v5 << 6) | (v4 << 12)) | v6) & 0x7FFF) << 6;
              if (v9 < 0x10000)
              {
                goto LABEL_3;
              }

              v2 = v9 | v8;
              v3 = 4;
            }

            else
            {
              v7 = ((v4 & 0xF) << 12) | (v5 << 6);
              if (v7 < 0x800)
              {
                goto LABEL_3;
              }

              v2 = v7 | v6;
              v3 = 3;
            }

LABEL_4:
            if (v2 == a2)
            {
              return this;
            }

            goto LABEL_5;
          }
        }

        else if (v4 >= 0xC0)
        {
          v2 = ((v4 & 0x1F) << 6) | v5;
          if (v2 >= 0x80)
          {
            v3 = 2;
            goto LABEL_4;
          }
        }
      }

LABEL_3:
      v2 = 65533;
      v3 = 1;
      goto LABEL_4;
    }

    if (!*this)
    {
      return 0;
    }

    if (v4 == a2)
    {
      return this;
    }

    v3 = 1;
LABEL_5:
    this += v3;
  }
}

id SGSha256HMACData(void *a1, id a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a2;
    v6 = v3;
    v7 = [v5 bytes];
    v8 = [v5 length];

    v9 = [v6 bytes];
    v10 = [v6 length];

    CCHmac(2u, v7, v8, v9, v10, &v12);
    a1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v12 length:32];
  }

  return a1;
}

id SGSha256ForStrings(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  hashStrings(a1, a2, v4);
  v2 = _PASBytesToHex();

  return v2;
}

void hashStrings(void *a1, void *a2, unsigned __int8 *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (!objc_msgSend_count(v5))
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void hashStrings(NSArray<NSString *> *__strong, NSData *__strong, uint8_t *)"}];
    [v17 handleFailureInFunction:v18 file:@"SGCrypto.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"strings.count > 0"}];
  }

  md = a3;
  if (!a3)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void hashStrings(NSArray<NSString *> *__strong, NSData *__strong, uint8_t *)"}];
    [v19 handleFailureInFunction:v20 file:@"SGCrypto.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"digest != NULL"}];
  }

  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        CStringPtr = CFStringGetCStringPtr(v12, 0x600u);
        if (CStringPtr)
        {
          CC_SHA256_Update(&c, CStringPtr, [(__CFString *)v12 length]);
        }

        else
        {
          memset(buffer, 0, sizeof(buffer));
          *len = 0;
          v14 = [(__CFString *)v12 length];
          v15 = 0;
          while (1)
          {
            v31.location = v15;
            v31.length = v14;
            if (!CFStringGetBytes(v12, v31, 0x8000100u, 0, 0, buffer, 512, len))
            {
              break;
            }

            CC_SHA256_Update(&c, buffer, len[0]);
            v15 += *len;
            v14 -= *len;
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v16 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
      v9 = v16;
    }

    while (v16);
  }

  if (v6)
  {
    CC_SHA256_Update(&c, [v6 bytes], objc_msgSend(v6, "length"));
  }

  CC_SHA256_Final(md, &c);
}

id SGSha256ForString(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithObjects:{v5, 0}];

  v7 = SGSha256ForStrings(v6, v4);

  return v7;
}

id SGSha256BytesForStrings(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  hashStrings(a1, a2, v4);
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v4 length:32];

  return v2;
}

id SGSha256BytesForString(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithObjects:{v5, 0}];

  v7 = SGSha256BytesForStrings(v6, v4);

  return v7;
}

id SGRandomDataOfLength(size_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a1];
  arc4random_buf([v2 mutableBytes], a1);

  return v2;
}

id SGSha256Data(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    memset(&v9, 0, sizeof(v9));
    v4 = a1;
    CC_SHA256_Init(&v9);
    v5 = v4;
    v6 = [v5 bytes];
    v7 = [v4 length];

    CC_SHA256_Update(&v9, v6, v7);
    if (v3)
    {
      CC_SHA256_Update(&v9, [v3 bytes], objc_msgSend(v3, "length"));
    }

    *md = 0u;
    v11 = 0u;
    CC_SHA256_Final(md, &v9);
    a1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:md length:32];
  }

  return a1;
}

void sub_231F45858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F45CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11856(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F460DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F46C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11949(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F47208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_231F47380(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v5 = *(*(v2 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    *v3 = 1;
    objc_end_catch();
    JUMPOUT(0x231F47348);
  }

  _Unwind_Resume(a1);
}

void sub_231F476D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id numberedString(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 UTF8String];
  v5 = strlen(v4);
  v6 = v5 + 21;
  memptr = 0;
  v16 = 0;
  if (v5 + 21 > 0x200)
  {
    v10 = malloc_type_posix_memalign(&memptr, 8uLL, v6, 0x100004077774924uLL);
    LOBYTE(v16) = 0;
    if (v10)
    {
      v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v13);
    }

    v7 = memptr;
  }

  else
  {
    MEMORY[0x28223BE20](v5);
    v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
  }

  snprintf(v7, v6, "%s%lu", v4, a2);
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
  if (!v8)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString * _Nonnull numberedString(NSString * _Nonnull __strong, NSUInteger)"}];
    [v11 handleFailureInFunction:v12 file:@"SGSymbolicMappingTransformer.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"numberedString"}];
  }

  if (v6 >= 0x201)
  {
    free(v7);
  }

  return v8;
}

id objCStringForCarrierKey(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a1 + 2))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v4 = [v2 initWithBytes:a1 length:v3 encoding:1];

  return v4;
}

id readUtf8String(void *a1, uint64_t a2)
{
  v3 = [a1 dataOfLength:a2];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v3 length:a2 encoding:4];

  return v4;
}

id readLengthPrefixedString(void *a1)
{
  v1 = a1;
  v2 = readUtf8String(v1, bswap32(*[v1 dataOfLength:2]) >> 16);

  return v2;
}

void sub_231F4B3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

char *_SGTaggedCalloc_impl(objc_class *a1, unint64_t a2, unint64_t a3)
{
  if (!is_mul_ok(a2, a3))
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:{0, v3, v4}]);
  }

  v5 = a2 * a3;

  return _SGTaggedMalloc_impl(a1, v5);
}

char *_SGTaggedMalloc_impl(objc_class *a1, size_t a2)
{
  Instance = class_createInstance(a1, a2);
  if (!Instance)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0]);
  }

  return &Instance[getTagSize()];
}

size_t getTagSize()
{
  result = getTagSize_size;
  if (getTagSize_size == -1)
  {
    v1 = objc_opt_class();
    result = class_getInstanceSize(v1);
    getTagSize_size = result;
  }

  return result;
}

void _SGTaggedFree_impl(objc_class *a1, uint64_t a2)
{
  if (a2)
  {
    _SGTaggedTypeAssert_impl(a1, a2);
    v3 = (a2 - getTagSize());
  }
}

Class _SGTaggedTypeAssert_impl(Class a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void _SGTaggedTypeAssert_impl(Class description:{void *)"), @"SGTaggedMalloc.m", 58, @"Invalid parameter not satisfying: %@", @"ptr"}];
  }

  if ((a2 & 3) != 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void _SGTaggedTypeAssert_impl(Class description:{void *)"), @"SGTaggedMalloc.m", 59, @"Invalid parameter not satisfying: %@", @"((uintptr_t)ptr & 0b11) == 0"}];
  }

  TagSize = getTagSize();
  result = object_getClass((a2 - TagSize));
  if (result != a1)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    return [v8 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void _SGTaggedTypeAssert_impl(Class description:{void *)"), @"SGTaggedMalloc.m", 61, @"Invalid parameter not satisfying: %@", @"object_getClass(obj) == tag"}];
  }

  return result;
}

dispatch_data_t _SGTaggedVMAlloc_impl(objc_class *a1, size_t a2, void *a3)
{
  address = 0;
  v6 = *MEMORY[0x277D85F48];
  TagSize = getTagSize();
  if (vm_allocate(v6, &address, TagSize + a2, 1))
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSData *_SGTaggedVMAlloc_impl(Class description:{size_t, void **)"), @"SGTaggedMalloc.m", 68, @"Could not allocate virtual memory"}];
  }

  objc_constructInstance(a1, address);
  v8 = (address + getTagSize());
  address = v8;
  if (a3)
  {
    *a3 = v8;
  }

  return dispatch_data_create(v8, a2, 0, *MEMORY[0x277D85CC0]);
}

uint64_t SGMIMetricsSubmodelsStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v17[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v17[0] & 0x7F) << v5;
      if ((v17[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      if (v6++ >= 9)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 72;
        goto LABEL_33;
      case 2u:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 64;
        goto LABEL_33;
      case 3u:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 96;
        goto LABEL_33;
      case 4u:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 80;
        goto LABEL_33;
      case 5u:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 56;
        goto LABEL_33;
      case 6u:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 24;
        goto LABEL_33;
      case 7u:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 16;
        goto LABEL_33;
      case 8u:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 32;
        goto LABEL_33;
      case 9u:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 8;
        goto LABEL_33;
      case 0xAu:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 104;
        goto LABEL_33;
      case 0xBu:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 88;
        goto LABEL_33;
      case 0xCu:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 40;
        goto LABEL_33;
      case 0xDu:
        v13 = objc_alloc_init(SGMIMetricsSubmodelStats);
        v14 = 48;
LABEL_33:
        objc_storeStrong((a1 + v14), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (PBReaderPlaceMark() && SGMIMetricsSubmodelStatsReadFrom(v13, a2))
        {
          PBReaderRecallMark();

LABEL_36:
          v15 = [a2 position];
          if (v15 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_36;
    }
  }
}

uint64_t __Block_byref_object_copy__12806(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL doInsert(uint64_t a1, unsigned int a2, char a3)
{
  v3 = a1 + 6150 * (a2 & 7);
  v4 = 10;
  LOBYTE(v5) = 1;
  v6 = a2;
  do
  {
    v7 = v6 % 0x1806;
    if (v5)
    {
      v8 = v7 >> 3;
      v9 = *(v3 + (v7 >> 3));
      v10 = 1 << (v7 & a3);
      v5 = (v10 & v9) != 0;
    }

    else
    {
      v5 = 0;
      v10 = 1 << ((v6 % 0x1806) & a3);
      v8 = v7 >> 3;
      LOBYTE(v9) = *(v3 + (v7 >> 3));
    }

    *(v3 + v8) = v9 | v10;
    v6 += a2;
    --v4;
  }

  while (v4);
  return !v5;
}

uint64_t h64(void *a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  SGMurmurhashString(a1, 12345, v2);
  return v2[0];
}

BOOL SGAddSignificantPseudoContactsEmail(void *a1)
{
  v1 = a1;
  v2 = [SGBloomFilter alloc];
  v3 = +[SGPaths suggestionsDirectory];
  v4 = [(SGBloomFilter *)v2 initWithDirectory:v3 name:@"significant-pseudo-contacts.bf"];

  v5 = [(SGBloomFilter *)v4 exists:v1];
  if (!v5)
  {
    [(SGBloomFilter *)v4 add:v1];
  }

  return !v5;
}

void sub_231F53F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13522(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F54154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F548A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  SGRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_231F56050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13877(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F561B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F56308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F56430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F56830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F56C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_231F576A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F57A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_231F597A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F59B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F59F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F5C098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F5C2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F5C4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F5C614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F5CE40(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a2 == 1)
  {
    v19 = objc_begin_catch(exc_buf);
    v20 = [v19 name];
    v21 = *MEMORY[0x277CBE660];

    if (v20 == v21)
    {
      v22 = sgLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        a9 = 0;
        _os_log_error_impl(&dword_231E60000, v22, OS_LOG_TYPE_ERROR, "Corrupted persistent logging store! Removing corrupted store.", &a9, 2u);
      }

      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v24 = *(v17 + 2560);
      if (has_internal_diagnostics)
      {
        v25 = [v24 defaultManager];
        v26 = [v16 stringByAppendingString:@".old"];
        [v25 moveItemAtPath:v16 toPath:v26 error:0];
      }

      else
      {
        v25 = [v24 defaultManager];
        [v25 removeItemAtPath:v16 error:0];
      }

      xpc_transaction_exit_clean();
      objc_end_catch();
      JUMPOUT(0x231F5CD9CLL);
    }

    v27 = sgLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      a9 = 0;
      _os_log_debug_impl(&dword_231E60000, v27, OS_LOG_TYPE_DEBUG, "Exception we're not catching", &a9, 2u);
    }

    objc_exception_throw(v19);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_231F5E650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 192), 8);
  _Block_object_dispose((v32 - 160), 8);
  _Block_object_dispose((v32 - 128), 8);
  _Block_object_dispose((v32 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_231F60A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F60EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *identifierForActivityId(uint64_t a1)
{
  if (a1 < 0xF)
  {
    return off_27894DCC0[a1];
  }

  v3 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const char *identifierForActivityId(SGXPCActivity)"];
  [v3 handleFailureInFunction:v4 file:@"SGXPCActivity.m" lineNumber:77 description:{@"Unknown activity id: %i", a1}];

  return "";
}

id nullHandler()
{
  if (nullHandler_onceToken != -1)
  {
    dispatch_once(&nullHandler_onceToken, &__block_literal_global_132);
  }

  v0 = MEMORY[0x2383809F0](nullHandler_instance);

  return v0;
}

uint64_t __nullHandler_block_invoke()
{
  v0 = [&__block_literal_global_134_14455 copy];
  v1 = nullHandler_instance;
  nullHandler_instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id arrayFilledWith(void *a1)
{
  v1 = a1;
  v2 = 15;
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:15];
  do
  {
    [v3 addObject:v1];
    --v2;
  }

  while (v2);

  return v3;
}

void sub_231F63FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id spotlightEscaped(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = MEMORY[0x277CCAAA0];
  v5 = _PASRepairString();
  v6 = [v4 dataWithJSONObject:v5 options:4 error:0];
  v7 = [v3 initWithData:v6 encoding:4];

  objc_autoreleasePoolPop(v2);
  if (!v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull spotlightEscaped(NSString * _Nonnull __strong)"];
    [v9 handleFailureInFunction:v10 file:@"SGEnrichmentWritebackAdapter.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"escaped"}];
  }

  return v7;
}

uint64_t SGMIMetricsSubmodelStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v50 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50 & 0x7F) << v38;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___SGMIMetricsSubmodelStats__ageOfTheSubmodelInDays;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___SGMIMetricsSubmodelStats__ageOfTheSubmodelInDays;
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 28) |= 0x10u;
          while (1)
          {
            v49 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v23;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___SGMIMetricsSubmodelStats__nbHighlyDiscriminantTokensForSaliency;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___SGMIMetricsSubmodelStats__nbHighlyDiscriminantTokensForSaliency;
LABEL_75:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_78:
          *(a1 + *v22) = v21;
          goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v48 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v48 & 0x7F) << v28;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsSubmodelStats__nbHighlyDiscriminantTokensForIgnorability;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsSubmodelStats__nbHighlyDiscriminantTokensForIgnorability;
            goto LABEL_75;
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v47 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47 & 0x7F) << v33;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsSubmodelStats__nbExtremelyDiscriminantTokensForSaliency;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsSubmodelStats__nbExtremelyDiscriminantTokensForSaliency;
            goto LABEL_75;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 2u;
            while (1)
            {
              v46 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v46 & 0x7F) << v14;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsSubmodelStats__nbExtremelyDiscriminantTokensForIgnorability;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsSubmodelStats__nbExtremelyDiscriminantTokensForIgnorability;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231F66F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14927(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F67D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getJSGarbageCollectSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = JavaScriptCoreLibrary();
  result = dlsym(v2, "JSGarbageCollect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getJSGarbageCollectSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *JavaScriptCoreLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!JavaScriptCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __JavaScriptCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27894E0B0;
    v6 = 0;
    JavaScriptCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = JavaScriptCoreLibraryCore_frameworkLibrary;
  if (!JavaScriptCoreLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *JavaScriptCoreLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"SGReverseTemplateJS.m" lineNumber:45 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __JavaScriptCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  JavaScriptCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_231F6AAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getJSContextGetGroupSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = JavaScriptCoreLibrary();
  result = dlsym(v2, "JSContextGetGroup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getJSContextGetGroupSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getJSStringCreateWithUTF8CStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = JavaScriptCoreLibrary();
  result = dlsym(v2, "JSStringCreateWithUTF8CString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getJSStringCreateWithUTF8CStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getJSScriptCreateReferencingImmortalASCIITextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = JavaScriptCoreLibrary();
  result = dlsym(v2, "JSScriptCreateReferencingImmortalASCIIText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getJSScriptCreateReferencingImmortalASCIITextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getJSStringReleaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = JavaScriptCoreLibrary();
  result = dlsym(v2, "JSStringRelease");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getJSStringReleaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getJSScriptEvaluateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = JavaScriptCoreLibrary();
  result = dlsym(v2, "JSScriptEvaluate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getJSScriptEvaluateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getJSScriptReleaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = JavaScriptCoreLibrary();
  result = dlsym(v2, "JSScriptRelease");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getJSScriptReleaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getJSValueClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getJSValueClass_softClass;
  v7 = getJSValueClass_softClass;
  if (!getJSValueClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getJSValueClass_block_invoke;
    v3[3] = &unk_278955BF0;
    v3[4] = &v4;
    __getJSValueClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231F6ADA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getJSValueClass_block_invoke(uint64_t a1)
{
  JavaScriptCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("JSValue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getJSValueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getJSValueClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SGReverseTemplateJS.m" lineNumber:47 description:{@"Unable to find class %s", "JSValue"}];

    __break(1u);
  }
}

void sub_231F6C980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F6CF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getJSObjectMakeArrayBufferWithBytesNoCopySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = JavaScriptCoreLibrary();
  result = dlsym(v2, "JSObjectMakeArrayBufferWithBytesNoCopy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getJSObjectMakeArrayBufferWithBytesNoCopySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void typedArrayDeallocatorRelease(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_231F6D9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak((v69 + 32));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak((v65 + 40));
  objc_destroyWeak(&a65);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak((v70 - 208));
  _Block_object_dispose((v70 - 200), 8);
  _Block_object_dispose((v70 - 168), 8);
  objc_destroyWeak((v70 - 136));
  _Unwind_Resume(a1);
}

id getJSContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getJSContextClass_softClass;
  v7 = getJSContextClass_softClass;
  if (!getJSContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getJSContextClass_block_invoke;
    v3[3] = &unk_278955BF0;
    v3[4] = &v4;
    __getJSContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231F6E6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getJSContextClass_block_invoke(uint64_t a1)
{
  JavaScriptCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("JSContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getJSContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getJSContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SGReverseTemplateJS.m" lineNumber:46 description:{@"Unable to find class %s", "JSContext"}];

    __break(1u);
  }
}

void __getJSVirtualMachineClass_block_invoke(uint64_t a1)
{
  JavaScriptCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("JSVirtualMachine");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getJSVirtualMachineClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getJSVirtualMachineClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SGReverseTemplateJS.m" lineNumber:48 description:{@"Unable to find class %s", "JSVirtualMachine"}];

    __break(1u);
  }
}

void sub_231F6F424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231F6FA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231F6FE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F7014C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F702E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F70AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F70CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15473(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F70E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F71064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F7122C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F71BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPKPassLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKPassLibraryClass_softClass;
  v7 = getPKPassLibraryClass_softClass;
  if (!getPKPassLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPKPassLibraryClass_block_invoke;
    v3[3] = &unk_278955BF0;
    v3[4] = &v4;
    __getPKPassLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231F71F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPKPassLibraryClass_block_invoke(uint64_t a1)
{
  PassKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKPassLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPassLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPKPassLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SGWalletPassAttachmentDissector.m" lineNumber:31 description:{@"Unable to find class %s", "PKPassLibrary"}];

    __break(1u);
  }
}

void *PassKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PassKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PassKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27894E220;
    v6 = 0;
    PassKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PassKitLibraryCore_frameworkLibrary;
  if (!PassKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PassKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"SGWalletPassAttachmentDissector.m" lineNumber:29 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PassKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_231F722C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPKAddPassesViewControllerClass_block_invoke(uint64_t a1)
{
  PassKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKAddPassesViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKAddPassesViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPKAddPassesViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SGWalletPassAttachmentDissector.m" lineNumber:34 description:{@"Unable to find class %s", "PKAddPassesViewController"}];

    __break(1u);
  }
}

void sub_231F72BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPKPassClass_block_invoke(uint64_t a1)
{
  PassKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKPass");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPassClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPKPassClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SGWalletPassAttachmentDissector.m" lineNumber:30 description:{@"Unable to find class %s", "PKPass"}];

    __break(1u);
  }
}

__CFString *walletPassStateDescription(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = @"SGRealtimeWalletPassStateNew";
  if (a1 > 2)
  {
    v3 = @"SGRealtimeWalletPassStateDuplicate";
    if (a1 == 4)
    {
      v1 = @"SGRealtimeWalletPassStateCancellation";
    }

    v2 = a1 == 3;
    goto LABEL_7;
  }

  if (a1)
  {
    v2 = a1 == 2;
    v3 = @"SGRealtimeWalletPassStateUpdate";
LABEL_7:
    if (v2)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }

  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = 0;
    _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "walletPassStateDescription: Error in returning string for wallet pass state: %u", v6, 8u);
  }

  return @"SGRealtimeWalletPassUnknown";
}

void getPKPassSemanticDateKeyOriginalDepartureDate()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticDateKeyOriginalDepartureDateSymbolLoc_ptr;
  v9 = getPKPassSemanticDateKeyOriginalDepartureDateSymbolLoc_ptr;
  if (!getPKPassSemanticDateKeyOriginalDepartureDateSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticDateKeyOriginalDepartureDate");
    getPKPassSemanticDateKeyOriginalDepartureDateSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticDateKeyOriginalDepartureDate(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:47 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F7347C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPKPassSemanticDateKeyOriginalDepartureDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticDateKeyOriginalDepartureDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticDateKeyOriginalDepartureDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getPKPassSemanticStringKeyEventType()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyEventTypeSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyEventTypeSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyEventTypeSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyEventType");
    getPKPassSemanticStringKeyEventTypeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyEventType(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F74008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyEventName()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyEventNameSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyEventNameSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyEventNameSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyEventName");
    getPKPassSemanticStringKeyEventNameSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyEventName(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F7416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticDateKeyEventStartDate()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticDateKeyEventStartDateSymbolLoc_ptr;
  v9 = getPKPassSemanticDateKeyEventStartDateSymbolLoc_ptr;
  if (!getPKPassSemanticDateKeyEventStartDateSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticDateKeyEventStartDate");
    getPKPassSemanticDateKeyEventStartDateSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticDateKeyEventStartDate(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F742D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticDateKeyEventEndDate()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticDateKeyEventEndDateSymbolLoc_ptr;
  v9 = getPKPassSemanticDateKeyEventEndDateSymbolLoc_ptr;
  if (!getPKPassSemanticDateKeyEventEndDateSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticDateKeyEventEndDate");
    getPKPassSemanticDateKeyEventEndDateSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticDateKeyEventEndDate(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F74434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticNumberKeySilenceRequested()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticNumberKeySilenceRequestedSymbolLoc_ptr;
  v9 = getPKPassSemanticNumberKeySilenceRequestedSymbolLoc_ptr;
  if (!getPKPassSemanticNumberKeySilenceRequestedSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticNumberKeySilenceRequested");
    getPKPassSemanticNumberKeySilenceRequestedSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticNumberKeySilenceRequested(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F74598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyVenueName()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyVenueNameSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyVenueNameSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyVenueNameSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyVenueName");
    getPKPassSemanticStringKeyVenueNameSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyVenueName(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F746FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyVenueRoom()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyVenueRoomSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyVenueRoomSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyVenueRoomSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyVenueRoom");
    getPKPassSemanticStringKeyVenueRoomSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyVenueRoom(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:43 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F74860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyVenueEntrance()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyVenueEntranceSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyVenueEntranceSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyVenueEntranceSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyVenueEntrance");
    getPKPassSemanticStringKeyVenueEntranceSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyVenueEntrance(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:44 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F749C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyVenuePhoneNumber()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyVenuePhoneNumberSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyVenuePhoneNumberSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyVenuePhoneNumberSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyVenuePhoneNumber");
    getPKPassSemanticStringKeyVenuePhoneNumberSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyVenuePhoneNumber(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:45 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F74B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticLocationKeyVenueLocation()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticLocationKeyVenueLocationSymbolLoc_ptr;
  v9 = getPKPassSemanticLocationKeyVenueLocationSymbolLoc_ptr;
  if (!getPKPassSemanticLocationKeyVenueLocationSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticLocationKeyVenueLocation");
    getPKPassSemanticLocationKeyVenueLocationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticLocationKeyVenueLocation(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:46 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F74C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticDateKeyOriginalArrivalDate()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticDateKeyOriginalArrivalDateSymbolLoc_ptr;
  v9 = getPKPassSemanticDateKeyOriginalArrivalDateSymbolLoc_ptr;
  if (!getPKPassSemanticDateKeyOriginalArrivalDateSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticDateKeyOriginalArrivalDate");
    getPKPassSemanticDateKeyOriginalArrivalDateSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticDateKeyOriginalArrivalDate(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F74DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyDepartureLocationDescription()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyDepartureLocationDescriptionSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyDepartureLocationDescriptionSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyDepartureLocationDescriptionSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyDepartureLocationDescription");
    getPKPassSemanticStringKeyDepartureLocationDescriptionSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyDepartureLocationDescription(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:49 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F74F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticLocationKeyDepartureLocation()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticLocationKeyDepartureLocationSymbolLoc_ptr;
  v9 = getPKPassSemanticLocationKeyDepartureLocationSymbolLoc_ptr;
  if (!getPKPassSemanticLocationKeyDepartureLocationSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticLocationKeyDepartureLocation");
    getPKPassSemanticLocationKeyDepartureLocationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticLocationKeyDepartureLocation(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:57 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F750B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticLocationKeyDestinationLocation()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticLocationKeyDestinationLocationSymbolLoc_ptr;
  v9 = getPKPassSemanticLocationKeyDestinationLocationSymbolLoc_ptr;
  if (!getPKPassSemanticLocationKeyDestinationLocationSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticLocationKeyDestinationLocation");
    getPKPassSemanticLocationKeyDestinationLocationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticLocationKeyDestinationLocation(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:50 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F7521C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyDestinationLocationDescription()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyDestinationLocationDescription");
    getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyDestinationLocationDescription(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:51 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F75380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyFlightCode()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyFlightCodeSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyFlightCodeSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyFlightCodeSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyFlightCode");
    getPKPassSemanticStringKeyFlightCodeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyFlightCode(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:52 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F754E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticNumberKeyFlightNumber()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticNumberKeyFlightNumberSymbolLoc_ptr;
  v9 = getPKPassSemanticNumberKeyFlightNumberSymbolLoc_ptr;
  if (!getPKPassSemanticNumberKeyFlightNumberSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticNumberKeyFlightNumber");
    getPKPassSemanticNumberKeyFlightNumberSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticNumberKeyFlightNumber(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F75648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyAirlineCode()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyAirlineCodeSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyAirlineCodeSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyAirlineCodeSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyAirlineCode");
    getPKPassSemanticStringKeyAirlineCodeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyAirlineCode(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F757AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyDepartureAirportCode()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyDepartureAirportCode");
    getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyDepartureAirportCode(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:55 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F75910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyDestinationAirportCode()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyDestinationAirportCode");
    getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyDestinationAirportCode(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F75A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyDestinationAirportCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyDepartureAirportCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyAirlineCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyAirlineCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyAirlineCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticNumberKeyFlightNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticNumberKeyFlightNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticNumberKeyFlightNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyFlightCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyFlightCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyFlightCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyDestinationLocationDescription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticLocationKeyDestinationLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticLocationKeyDestinationLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticLocationKeyDestinationLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticLocationKeyDepartureLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticLocationKeyDepartureLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticLocationKeyDepartureLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyDepartureLocationDescriptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyDepartureLocationDescription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyDepartureLocationDescriptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticDateKeyOriginalArrivalDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticDateKeyOriginalArrivalDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticDateKeyOriginalArrivalDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticLocationKeyVenueLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticLocationKeyVenueLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticLocationKeyVenueLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyVenuePhoneNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyVenuePhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyVenuePhoneNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyVenueEntranceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyVenueEntrance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyVenueEntranceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyVenueRoomSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyVenueRoom");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyVenueRoomSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyVenueNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyVenueName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyVenueNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticNumberKeySilenceRequestedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticNumberKeySilenceRequested");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticNumberKeySilenceRequestedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticDateKeyEventEndDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticDateKeyEventEndDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticDateKeyEventEndDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticDateKeyEventStartDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticDateKeyEventStartDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticDateKeyEventStartDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyEventNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyEventName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyEventNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyEventTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyEventType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyEventTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t stateForWalletPassStateString(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isEqualToString:@"SGRealtimeWalletPassStateNew"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SGRealtimeWalletPassStateUpdate"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SGRealtimeWalletPassStateCancellation"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"SGRealtimeWalletPassStateDuplicate"])
  {
    v2 = 3;
  }

  else
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "stateForWalletPassStateString: Error in returning wallet pass state for string: %@", &v5, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

uint64_t __Block_byref_object_copy__15822(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F784D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *qmarksSeparatedByCommas(unint64_t a1)
{
  if (a1)
  {
    v1 = a1 - 129;
    if (a1 > 0x81)
    {
      v3 = objc_autoreleasePoolPush();
      v4 = qmarksSeparatedByCommas(0x81uLL);
      v2 = [v4 mutableCopy];

      do
      {
        [(__CFString *)v2 appendString:@", ?"];
        --v1;
      }

      while (v1);
      objc_autoreleasePoolPop(v3);
    }

    else
    {
      v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:"? length:? encoding:? freeWhenDone:{?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?", 2 * a1 - 1, 1, 0}];
    }
  }

  else
  {
    v2 = &stru_284703F00;
  }

  return v2;
}

void sub_231F792A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t wrappedBusyCallbackForTiming(void *a1, uint64_t a2)
{
  v3 = a1;
  busy = _sqlite3_system_busy_handler();
  v5 = busy([v3 handle], a2);
  v3[2] = mach_absolute_time();

  return v5;
}

void firstStringAfterPrefix(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 != 1)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void firstStringAfterPrefix(sqlite3_context *, int, sqlite3_value **)"}];
    [v13 handleFailureInFunction:v14 file:@"SGSqliteDatabase.m" lineNumber:535 description:{@"Invalid parameter not satisfying: %@", @"argc == 1"}];
  }

  v5 = sqlite3_value_bytes(*a3);
  if (v5)
  {
    LODWORD(v6) = v5;
    v7 = sqlite3_value_text(*a3);
    v8 = v7;
    if (v6 >= 0x7FFFFFFF)
    {
      v6 = 0x7FFFFFFFLL;
    }

    else
    {
      v6 = v6;
    }

    while (1)
    {
      v9 = v6;
      if (v6-- < 1)
      {
        break;
      }

      if (v7[v9 - 1] != 255)
      {
        memptr = 0;
        v19 = 0;
        if (v9 > 0x100)
        {
          v15 = malloc_type_posix_memalign(&memptr, 8uLL, v9, 0xA99CB19DuLL);
          LOBYTE(v19) = 0;
          if (v15)
          {
            v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
            objc_exception_throw(v16);
          }

          v12 = memptr;
        }

        else
        {
          MEMORY[0x28223BE20](v7);
          v12 = &v17 - ((v11 + 15) & 0x1FFFFFFF0);
          bzero(v12, v11);
        }

        memcpy(v12, v8, v6);
        v12[v6] = v8[v6] + 1;
        sqlite3_result_text(a1, v12, v9, 0xFFFFFFFFFFFFFFFFLL);
        if (v9 >= 0x101)
        {
          free(v12);
        }

        return;
      }
    }
  }

  sqlite3_result_zeroblob(a1, 0);
}

void delimitedString(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2 != 2)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void delimitedString(sqlite3_context *, int, sqlite3_value **)"}];
    [v20 handleFailureInFunction:v21 file:@"SGSqliteDatabase.m" lineNumber:484 description:{@"Invalid parameter not satisfying: %@", @"argc == 2"}];
  }

  v5 = sqlite3_value_int(a3[1]);
  v6 = sqlite3_value_text(*a3);
  if (v5 < 0)
  {

    sqlite3_result_null(a1);
    return;
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  v9 = v8;
  while (1)
  {
    v10 = *v7;
    if (v10 == 92)
    {
      if (v7[1])
      {
        ++v7;
      }

      goto LABEL_14;
    }

    if (v10 == 124)
    {
      break;
    }

    if (!*v7)
    {
      sqlite3_result_null(a1);
      goto LABEL_37;
    }

LABEL_14:
    ++v7;
  }

  v11 = __OFSUB__(v5--, 1);
  if (v5 < 0 == v11)
  {
    goto LABEL_14;
  }

  v12 = (v7 + 1);
  v13 = (v7 + 1);
  while (2)
  {
    v14 = *v13;
    if (v14 == 92)
    {
      if (v13[1])
      {
        ++v13;
      }

      goto LABEL_24;
    }

    if (*v13 && v14 != 124)
    {
LABEL_24:
      ++v13;
      continue;
    }

    break;
  }

  v15 = v13 - v7;
  memptr = 0;
  v26 = 0;
  if ((v13 - v7) > 0x100)
  {
    v22 = malloc_type_posix_memalign(&memptr, 8uLL, v13 - v7, 0x858E84F4uLL);
    LOBYTE(v26) = 0;
    if (v22)
    {
      v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v23);
    }

    v16 = memptr;
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v16 = &v24 - ((v13 - v12 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v16, v13 - v12 + 1);
  }

  v17 = v16;
  if (v12 < v13)
  {
    v17 = v16;
    do
    {
      if (v12 + 1 < v13 && *v12 == 92)
      {
        ++v12;
      }

      v19 = *v12++;
      *v17++ = v19;
    }

    while (v12 < v13);
  }

  *v17 = 0;
  sqlite3_result_text(a1, v16, v17 - v16, 0xFFFFFFFFFFFFFFFFLL);
  if (v15 >= 0x101)
  {
    free(v16);
  }

LABEL_37:
  objc_autoreleasePoolPop(v9);
}

void tagsHaveEscapedTag(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 != 2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void tagsHaveEscapedTag(sqlite3_context *, int, sqlite3_value **)"}];
    [v9 handleFailureInFunction:v10 file:@"SGSqliteDatabase.m" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"argc == 2"}];
  }

  v5 = sqlite3_value_text(*a3);
  v6 = sqlite3_value_text(a3[1]);
  v7 = strlen(v6);
  v8 = escapedTagInTags(v5, v6, v7);

  sqlite3_result_int(a1, v8);
}

BOOL escapedTagInTags(char *__s, char *a2, uint64_t a3)
{
  v5 = a2 + 1;
  v6 = *a2;
  v7 = a3 - 1;
  v8 = __s;
  while (1)
  {
    v9 = strchr(v8, v6);
    v10 = v9;
    if (!v9)
    {
      break;
    }

    v8 = v9 + 1;
    if (!strncmp(v9 + 1, v5, v7) && (v10 == __s || *(v10 - 1) != 92 || (v10 - __s) >= 2 && *(v10 - 2) == 92))
    {
      v11 = v10[a3];
      if (v11 == 124 || v11 == 0)
      {
        break;
      }
    }
  }

  return v10 != 0;
}

void hasInhumanTag(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 != 1)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void hasInhumanTag(sqlite3_context *, int, sqlite3_value **)"}];
    [v7 handleFailureInFunction:v8 file:@"SGSqliteDatabase.m" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"argc == 1"}];
  }

  v5 = sqlite3_value_text(*a3);
  v6 = escapedTagInTags(v5, "|inhuman", 8);

  sqlite3_result_int(a1, v6);
}

uint64_t _indexForBindParam(sqlite3_stmt *a1, char *zName)
{
  if (a1)
  {
    if (zName)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
    [v6 handleFailureInFunction:v7 file:@"SGSqliteDatabase.m" lineNumber:834 description:{@"Invalid parameter not satisfying: %@", @"stmt"}];

    if (zName)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
  [v8 handleFailureInFunction:v9 file:@"SGSqliteDatabase.m" lineNumber:835 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v4 = sqlite3_bind_parameter_index(a1, zName);
  if (v4 <= 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
    [v10 handleFailureInFunction:v11 file:@"SGSqliteDatabase.m" lineNumber:837 description:{@"Unknown bind parameter %s", zName}];
  }

  return v4;
}

uint64_t sqlite3_bind_nsdata(sqlite3_stmt *a1, int a2, id a3)
{
  v6 = a3;
  v7 = a3;
  v8 = [v7 bytes];
  v9 = [v7 length];

  return sqlite3_bind_blob64(a1, a2, v8, v9, 0xFFFFFFFFFFFFFFFFLL);
}

char *sqlite3_column_nsstring(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = CFStringCreateWithCString(0, v2, 0x8000100u);
  }

  return v2;
}

uint64_t sqlite3_bind_nsstring(sqlite3_stmt *a1, int a2, id a3)
{
  v6 = a3;
  v7 = [a3 UTF8String];

  return sqlite3_bind_text(a1, a2, v7, -1, 0xFFFFFFFFFFFFFFFFLL);
}

id sqlite3_column_nssecurecoding(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sqlite3_column_blob(a1, a2);
  v7 = sqlite3_column_bytes(a1, a2);
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v6 length:v7 freeWhenDone:0];
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v5 fromData:v8 error:0];
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_231F7BF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16077(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t *re2::DFA::DFA(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  *(a1 + 16) = 0;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 25) = 0u;
  a1[27] = 0;
  if (pthread_rwlock_init((a1 + 3), 0) || (a1[28] = 0, *(a1 + 16) = 0u, a1[56] = 0, *(a1 + 26) = 0u, *(a1 + 27) = 0u, *(a1 + 24) = 0u, *(a1 + 25) = 0u, *(a1 + 22) = 0u, *(a1 + 23) = 0u, *(a1 + 20) = 0u, *(a1 + 21) = 0u, *(a1 + 18) = 0u, *(a1 + 19) = 0u, *(a1 + 17) = 0u, a1[29] = 0, a1[30] = 0, pthread_rwlock_init((a1 + 32), 0)))
  {
    abort();
  }

  v7 = 0;
  a1[57] = a4;
  *(a1 + 59) = 0u;
  *(a1 + 61) = 0u;
  *(a1 + 126) = 1065353216;
  a1[64] = 0;
  *(a1 + 130) = -1;
  a1[66] = 0;
  *(a1 + 134) = -1;
  a1[68] = 0;
  *(a1 + 138) = -1;
  a1[70] = 0;
  *(a1 + 142) = -1;
  a1[72] = 0;
  *(a1 + 146) = -1;
  a1[74] = 0;
  *(a1 + 150) = -1;
  a1[76] = 0;
  *(a1 + 154) = -1;
  a1[78] = 0;
  *(a1 + 158) = -1;
  *(a1 + 640) = 0;
  *(a1 + 3) = 0;
  v8 = *(a2 + 12);
  if (*(a1 + 2) == 1)
  {
    *(a1 + 3) = *(a2 + 8);
    v7 = v8;
  }

  v9 = v7 + 2 * v8;
  *(a1 + 62) = v9;
  v10 = *a1;
  v11 = *(*a1 + 12) + v7;
  v12 = a4 - (16 * v11 + 4 * v9) - 648;
  a1[57] = v12;
  if (v12 >= 0)
  {
    a1[58] = v12;
    if (v12 >= 20 * (8 * *(v10 + 20) + 4 * v11) + 640)
    {
      operator new();
    }
  }

  *(a1 + 16) = 1;
  return a1;
}