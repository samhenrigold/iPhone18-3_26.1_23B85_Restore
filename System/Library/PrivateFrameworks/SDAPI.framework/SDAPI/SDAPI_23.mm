void sub_2626AA4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
    if ((v32 & 1) == 0)
    {
LABEL_6:
      if (a25 < 0)
      {
        operator delete(__p);
      }

      if (a31 < 0)
      {
        operator delete(a26);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

uint64_t TInputModel::getIntVar(TDataManager **this, const char *a2, uint64_t a3)
{
  v6 = *this;
  if (v6 && (*(*v6 + 40))(v6, a2, 0, 0))
  {
    v7 = *this;
  }

  else
  {
    v7 = this[1];
    if (!v7)
    {
      return a3;
    }
  }

  return TDataManager::getIntVar(v7, a2, a3);
}

void TInputModel::getStringVar(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (v7 && (*(*v7 + 40))(v7, a2, 0, 0))
  {
    v8 = *a1;
  }

  else
  {
    v8 = a1[1];
    if (!v8)
    {

      JUMPOUT(0x26672AEC0);
    }
  }

  TDataManager::getStringVar(v8, a2, a3);
}

BOOL TInputModel::isVar(TInputModel *this, const char *a2)
{
  v4 = *this;
  result = 1;
  if (!v4 || !(*(*v4 + 40))(v4, a2, 0, 0))
  {
    v5 = *(this + 1);
    if (!v5 || !(*(*v5 + 40))(v5, a2, 0, 0))
    {
      return 0;
    }
  }

  return result;
}

char *TInputModel::getStaticDataPath(TInputModel *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    v1 = *this;
    if (!*this)
    {
      return &byte_262899963;
    }
  }

  result = (v1 + 16);
  if (*(v1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

void TOutputModel::TOutputModel(TOutputModel *this, TDataManager *a2, TDataManager *a3, char *a4, const TDataManager *a5)
{
  *this = a2;
  *(this + 1) = a3;
  if (TInputModel::isVar(this, "Version"))
  {
    TInputModel::TInputModel(&__p, *this, *(this + 1), *(this + 1) == 0, a4);
    v9 = v31;
    *(this + 2) = v31;
    goto LABEL_8;
  }

  if (a3)
  {
    v9 = 2;
LABEL_5:
    *(this + 2) = v9;
    goto LABEL_8;
  }

  if (!a5)
  {
    v9 = 1;
    goto LABEL_5;
  }

  IntVar = TDataManager::getIntVar(a5, "Version", 1);
  *(this + 2) = IntVar;
  v9 = IntVar;
LABEL_8:
  v11 = *(this + 1);
  if (v11)
  {
    TDataManager::setIntVar(v11, "Version", v9);
    v12 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, a4);
    if (v31 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v31 >= 0)
    {
      v14 = HIBYTE(v31);
    }

    else
    {
      v14 = v30;
    }

    (*(*v12 + 48))(v12, "VocVersionID", p_p, v14);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

    TDataManager::setBoolVar(*(this + 1), "IsStaticComponent", 1);
    if (a5)
    {
      __p = 0;
      v30 = 0;
      v31 = 0;
      TDataManager::getStringVar(a5, "EnhVersion", &__p);
      v15 = *(this + 1);
      if (v31 >= 0)
      {
        v16 = &__p;
      }

      else
      {
        v16 = __p;
      }

      std::string::basic_string[abi:ne200100]<0>(&v26, v16);
      if ((v28 & 0x80u) == 0)
      {
        v17 = &v26;
      }

      else
      {
        v17 = v26;
      }

      if ((v28 & 0x80u) == 0)
      {
        v18 = v28;
      }

      else
      {
        v18 = v27;
      }

      (*(*v15 + 48))(v15, "EnhVersion", v17, v18);
      if (v28 < 0)
      {
        operator delete(v26);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p);
      }
    }
  }

  if (*this)
  {
    TDataManager::setIntVar(*this, "Version", *(this + 4));
    v19 = *this;
    std::string::basic_string[abi:ne200100]<0>(&__p, a4);
    if (v31 >= 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p;
    }

    if (v31 >= 0)
    {
      v21 = HIBYTE(v31);
    }

    else
    {
      v21 = v30;
    }

    (*(*v19 + 48))(v19, "VocVersionID", v20, v21);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
      if (!a5)
      {
        return;
      }
    }

    else if (!a5)
    {
      return;
    }

    __p = 0;
    v30 = 0;
    v31 = 0;
    TDataManager::getStringVar(a5, "EnhVersion", &__p);
    v22 = *this;
    if (v31 >= 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p;
    }

    std::string::basic_string[abi:ne200100]<0>(&v26, v23);
    if ((v28 & 0x80u) == 0)
    {
      v24 = &v26;
    }

    else
    {
      v24 = v26;
    }

    if ((v28 & 0x80u) == 0)
    {
      v25 = v28;
    }

    else
    {
      v25 = v27;
    }

    (*(*v22 + 48))(v22, "EnhVersion", v24, v25);
    if (v28 < 0)
    {
      operator delete(v26);
    }

    if (*(this + 2) == 1)
    {
      TDataManager::setBoolVar(*this, "HasStaticComponent", 1);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2626AAC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(void *a1, char **a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, *a2);
  std::string::basic_string[abi:ne200100]<0>(v4 + 3, a2[1]);
  return a1;
}

void sub_2626AAD28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](this);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i - 48);
  }
}

void *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

void TClitics::TClitics(TClitics *this, TLexicon *a2, TTokenizerParamManager *a3)
{
  *this = &unk_287523E28;
  *(this + 1) = 0;
  v6 = this + 16;
  *(this + 2) = &unk_287523E28;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  TRegExp::TRegExp(this + 9, a2 + 240);
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 1) = 2;
  (*(*this + 16))(this);
  *(this + 3) = 6;
  (*(*(this + 2) + 16))(v6);
  v7 = TStringParam::get((a3 + 7992));
  if (v7)
  {
    if (*v7)
    {
      TRegExp::add(this + 9, v7, 0);
      TRegExp::doneAdding((this + 72));
    }
  }
}

void sub_2626AB2C0(_Unwind_Exception *a1)
{
  TRegExp::~TRegExp((v1 + 72));
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void TClitics::~TClitics(void **this)
{
  TRegExp::~TRegExp((this + 9));
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

uint64_t TClitics::isValidRoot(TClitics *this, const TWord *a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v6 = v8;
  v7 = xmmword_26286B6F0;
  v9 = 1;
  TWord::getCategoryTag(a2, &v6);
  if (*(&v7 + 1) >= v7)
  {
    if (v9)
    {
      v10 = 0;
      TBuffer<wchar_t>::insert(&v6, *(&v7 + 1), &v10, 1uLL);
      v3 = v6;
      --*(&v7 + 1);
    }

    else
    {
      v3 = v6;
      if (v7)
      {
        v6[v7 - 1] = 0;
      }
    }
  }

  else
  {
    v3 = v6;
    v6[*(&v7 + 1)] = 0;
  }

  v4 = TRegExp::match(this + 9, v3, 0);
  if (v9 == 1 && v6 != v8 && v6)
  {
    MEMORY[0x26672B1B0]();
  }

  return v4;
}

void sub_2626AB448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (LOBYTE(STACK[0x420]) == 1)
  {
    TSegmenter::findSegmentEnd(va, v3);
  }

  _Unwind_Resume(a1);
}

void TClitics::addWords(TClitics *this, char **a2, TGraph *a3, TSegmenter *a4)
{
  Segment = TSegmenter::getSegment(a4, a2[2]);
  if (Segment)
  {
    v7 = Segment;
    if (*(Segment + 24) == 1)
    {
      v87 = wcslen(*Segment);
      if (v87 >= 4)
      {
        OutEdge = TVertex::getOutEdge(a2);
        v91 = v7;
        Vertex = TGraph::getVertex(a3, *(v7 + 8));
        if (Vertex)
        {
          v10 = OutEdge == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
LABEL_112:
          if (*(OutEdge + 24) == Vertex && (*(OutEdge + 64) & 0x35) == 0)
          {
            return;
          }

          while (1)
          {
            OutEdge = *(OutEdge + 8);
            if (!OutEdge)
            {
              break;
            }

            if ((*(OutEdge + 32) & 1) == 0)
            {
              goto LABEL_112;
            }
          }
        }

        v11 = *(this + 3);
        if (v11 + 2 > v87)
        {
          v11 = v87 - 2;
        }

        v115 = 0;
        v116 = 6;
        v113 = 0;
        v114 = 0;
        v110 = 0;
        v111 = 0;
        v112 = 0;
        v89 = *(this + 1);
        v86 = v11 + 1;
        if (v89 < v11 + 1)
        {
          v92 = a3;
          v93 = this;
          while (1)
          {
            std::vector<TLexiconMatch>::resize(&v113, 0);
            v12 = *v91;
            v13 = *(this + 4);
            v14 = *(this + 5);
            ActiveConfigHandle = TParam::getActiveConfigHandle((v14 + 16464));
            v16 = *(v14 + 4 * TParam::getValidConfig((v14 + 16464), ActiveConfigHandle) + 16624);
            v17 = *(this + 5);
            v18 = TParam::getActiveConfigHandle((v17 + 16112));
            ValidConfig = TParam::getValidConfig((v17 + 16112), v18);
            TLexicon::findHeadClonesCollated(v13, &v12[v87 - v89], &v116, 1, v16, *(v17 + 4 * ValidConfig + 16272), &v113);
            if (v113 == v114)
            {
              goto LABEL_107;
            }

            v105 = v108;
            v106 = 256;
            v109 = 1;
            v20 = *v91;
            v107 = 0;
            TBuffer<wchar_t>::insert(&v105, 0, v20, v87 - v89);
            v21 = *(this + 5);
            v22 = TParam::getActiveConfigHandle((v21 + 7744));
            if (*(v21 + TParam::getValidConfig((v21 + 7744), v22) + 7896) != 1)
            {
              goto LABEL_24;
            }

            if ((respellRoot(&v105, *v91) & 1) == 0)
            {
              goto LABEL_23;
            }

            v23 = *(this + 4);
            if (v107 >= v106)
            {
              if (v109)
              {
                LODWORD(v102) = 0;
                TBuffer<wchar_t>::insert(&v105, v107, &v102, 1uLL);
                v24 = v105;
                --v107;
              }

              else
              {
                v24 = v105;
                if (v106)
                {
                  v105[v106 - 1] = 0;
                }
              }
            }

            else
            {
              v24 = v105;
              v105[v107] = 0;
            }

            if (TLexicon::checkName(v23, v24, 1, 0xFFFFFFFFFFFFFFFFLL))
            {
LABEL_23:
              v25 = 7;
            }

            else
            {
LABEL_24:
              std::vector<TLexiconMatch>::resize(&v110, 0);
              v26 = *(this + 4);
              if (v107 >= v106)
              {
                if (v109)
                {
                  LODWORD(v102) = 0;
                  TBuffer<wchar_t>::insert(&v105, v107, &v102, 1uLL);
                  v27 = v105;
                  --v107;
                }

                else
                {
                  v27 = v105;
                  if (v106)
                  {
                    v105[v106 - 1] = 0;
                  }
                }
              }

              else
              {
                v27 = v105;
                v105[v107] = 0;
              }

              v28 = TStringParam::get((*(this + 5) + 10744));
              v29 = *(this + 5);
              v30 = TParam::getActiveConfigHandle((v29 + 16464));
              v31 = *(v29 + 4 * TParam::getValidConfig((v29 + 16464), v30) + 16624);
              v32 = *(this + 5);
              v33 = TParam::getActiveConfigHandle((v32 + 16112));
              v34 = TParam::getValidConfig((v32 + 16112), v33);
              TLexicon::findHeadClonesCollated(v26, v27, v28, v31, *(v32 + 4 * v34 + 16272), &v110);
              v35 = *(this + 5);
              v36 = TParam::getActiveConfigHandle((v35 + 12864));
              if ((*(v35 + TParam::getValidConfig((v35 + 12864), v36) + 13016) & 1) == 0)
              {
                v69 = v110;
                if (v111 != v110)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 0;
                  do
                  {
                    if (TClitics::isValidRoot(this, *&v69[v70]))
                    {
                      if (!v72)
                      {
                        v72 = TGraph::addVertex(a3, 0);
                      }

                      v73 = *&v110[v70];
                      LODWORD(v102) = 1;
                      *v103 = v73;
                      *&v103[8] = *&v110[v70 + 16];
                      TGraph::addEdge(a3, a2, v72, &v102);
                    }

                    ++v71;
                    v69 = v110;
                    v70 += 32;
                  }

                  while (v71 < (v111 - v110) >> 5);
                  if (v72)
                  {
                    v74 = TGraph::addVertex(a3, *(v91 + 8));
                    v75 = v113;
                    if (v114 != v113)
                    {
                      v76 = v74;
                      v77 = 0;
                      v78 = 0;
                      do
                      {
                        v79 = &v75[v77];
                        v80 = *v79;
                        LODWORD(v102) = 1;
                        *v103 = v80;
                        *&v103[8] = *(v79 + 1);
                        TGraph::addEdge(a3, v72, v76, &v102);
                        ++v78;
                        v75 = v113;
                        v77 += 32;
                      }

                      while (v78 < (v114 - v113) >> 5);
                    }
                  }
                }

                goto LABEL_100;
              }

              v37 = *(this + 5);
              v38 = TParam::getActiveConfigHandle((v37 + 12616));
              if (*(v37 + TParam::getValidConfig((v37 + 12616), v38) + 12768))
              {
                v102 = &v103[16];
                *v103 = xmmword_26286B6F0;
                v104 = 1;
                v98 = v100;
                v99 = xmmword_26286B6F0;
                v101 = 1;
                v39 = v110;
                if (v111 == v110)
                {
                  goto LABEL_78;
                }

                v40 = 0;
                do
                {
                  v90 = v40;
                  v41 = 32 * v40;
                  if (TClitics::isValidRoot(this, *&v39[32 * v40]))
                  {
                    TWord::getWrittenForm(*&v110[v41], &v105);
                    v42 = v113;
                    if (v114 != v113)
                    {
                      v43 = 0;
                      v44 = 0;
                      do
                      {
                        TWord::getWrittenForm(*&v42[v43], &v98);
                        TBuffer<wchar_t>::operator=(&v102, &v105);
                        TBuffer<wchar_t>::operator+=(&v102, &v98);
                        v45 = *(this + 5);
                        v46 = TParam::getActiveConfigHandle((v45 + 7744));
                        if (*(v45 + TParam::getValidConfig((v45 + 7744), v46) + 7896) != 1)
                        {
                          goto LABEL_45;
                        }

                        if (v107 >= v106)
                        {
                          if (v109)
                          {
                            v94 = 0;
                            TBuffer<wchar_t>::insert(&v105, v107, &v94, 1uLL);
                            v47 = v105;
                            --v107;
                          }

                          else
                          {
                            v47 = v105;
                            if (v106)
                            {
                              v105[v106 - 1] = 0;
                            }
                          }
                        }

                        else
                        {
                          v47 = v105;
                          v105[v107] = 0;
                        }

                        if (respellRoot(&v102, v47))
                        {
LABEL_45:
                          v48 = *(this + 4);
                          if (*&v103[8] >= *v103)
                          {
                            if (v104)
                            {
                              v94 = 0;
                              TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                              v49 = v102;
                              --*&v103[8];
                            }

                            else
                            {
                              v49 = v102;
                              if (*v103)
                              {
                                v102[*v103 - 1] = 0;
                              }
                            }
                          }

                          else
                          {
                            v49 = v102;
                            v102[*&v103[8]] = 0;
                          }

                          if (!TLexicon::checkName(v48, v49, 0, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            v50 = *(this + 4);
                            if (*&v103[8] >= *v103)
                            {
                              v52 = v91;
                              if (v104)
                              {
                                v94 = 0;
                                TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                                v51 = v102;
                                --*&v103[8];
                              }

                              else
                              {
                                v51 = v102;
                                if (*v103)
                                {
                                  v102[*v103 - 1] = 0;
                                }
                              }
                            }

                            else
                            {
                              v51 = v102;
                              v102[*&v103[8]] = 0;
                              v52 = v91;
                            }

                            HeadClone = TLexicon::findHeadClone(v50, v51);
                            if (HeadClone)
                            {
                              v54 = 1;
                            }

                            else
                            {
                              v55 = *(this + 4);
                              if (*&v103[8] >= *v103)
                              {
                                if (v104)
                                {
                                  v94 = 0;
                                  TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                                  v56 = v102;
                                  --*&v103[8];
                                }

                                else
                                {
                                  v56 = v102;
                                  if (*v103)
                                  {
                                    v102[*v103 - 1] = 0;
                                  }
                                }
                              }

                              else
                              {
                                v56 = v102;
                                v102[*&v103[8]] = 0;
                              }

                              HeadClone = TLexicon::addTempWord(v55, v56, 0, 0, 0);
                              v54 = 4;
                            }

                            v57 = TGraph::addVertex(v92, *(v52 + 8));
                            v58 = *(this + 4);
                            v59 = *v52;
                            if (*&v103[8] >= *v103)
                            {
                              if (v104)
                              {
                                v94 = 0;
                                TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                                v60 = v102;
                                --*&v103[8];
                                this = v93;
                              }

                              else
                              {
                                v60 = v102;
                                if (*v103)
                                {
                                  v102[*v103 - 1] = 0;
                                }
                              }
                            }

                            else
                            {
                              v60 = v102;
                              v102[*&v103[8]] = 0;
                            }

                            v61 = *(this + 5);
                            v62 = TParam::getActiveConfigHandle((v61 + 16464));
                            v63 = *(v61 + 4 * TParam::getValidConfig((v61 + 16464), v62) + 16624);
                            v64 = *(v93 + 5);
                            v65 = TParam::getActiveConfigHandle((v64 + 16112));
                            v66 = TParam::getValidConfig((v64 + 16112), v65);
                            Score = TLexicon::makeScore(v58, v59, v60, v63, *(v64 + 4 * v66 + 16272));
                            v94 = v54;
                            v95 = HeadClone;
                            v96 = Score;
                            v97 = v68;
                            a3 = v92;
                            TGraph::addEdge(v92, *(v92 + 8), v57, &v94);
                            this = v93;
                          }
                        }

                        ++v44;
                        v42 = v113;
                        v43 += 32;
                      }

                      while (v44 < (v114 - v113) >> 5);
                    }
                  }

                  v40 = v90 + 1;
                  v39 = v110;
                }

                while (v90 + 1 < ((v111 - v110) >> 5));
                if (v101)
                {
LABEL_78:
                  if (v98 != v100 && v98)
                  {
                    MEMORY[0x26672B1B0]();
                  }
                }

                if (v104 == 1 && v102 != &v103[16] && v102)
                {
                  MEMORY[0x26672B1B0]();
                }

LABEL_100:
                v25 = 0;
                goto LABEL_101;
              }

              v81 = v110;
              if (v111 == v110)
              {
                goto LABEL_100;
              }

              v82 = 0;
              v83 = 0;
              while ((TClitics::isValidRoot(this, *&v81[v82]) & 1) == 0)
              {
                ++v83;
                v81 = v110;
                v82 += 32;
                if (v83 >= (v111 - v110) >> 5)
                {
                  goto LABEL_100;
                }
              }

              v84 = TLexicon::findHeadClone(*(this + 4), *v91);
              if (!v84)
              {
                v84 = TLexicon::addTempWord(*(this + 4), *v91, 0, 0, 0);
              }

              v85 = TGraph::addVertex(a3, *(v91 + 8));
              LODWORD(v102) = 4;
              *v103 = v84;
              *&v103[8] = 0;
              v103[16] = 0;
              TGraph::addEdge(a3, *(a3 + 8), v85, &v102);
              v25 = 5;
            }

LABEL_101:
            if (v109 == 1 && v105 != v108 && v105)
            {
              MEMORY[0x26672B1B0]();
            }

            if (v25 != 7 && v25)
            {
LABEL_117:
              if (v110)
              {
                v111 = v110;
                operator delete(v110);
              }

              break;
            }

LABEL_107:
            if (++v89 >= v86)
            {
              goto LABEL_117;
            }
          }
        }

        if (v113)
        {
          v114 = v113;
          operator delete(v113);
        }
      }
    }
  }
}

void sub_2626ABF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (LOBYTE(STACK[0xCE8]) == 1 && STACK[0x8D0] != a14 && STACK[0x8D0] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  v17 = *(v14 - 144);
  if (v17)
  {
    *(v14 - 136) = v17;
    operator delete(v17);
  }

  v18 = *(v14 - 120);
  if (v18)
  {
    *(v14 - 112) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t TBuffer<wchar_t>::operator=(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4 >= v5)
  {
    if (*(a2 + 1048))
    {
      v8 = 0;
      TBuffer<wchar_t>::insert(a2, v4, &v8, 1uLL);
      v4 = *(a2 + 16) - 1;
      *(a2 + 16) = v4;
      v6 = *a2;
    }

    else
    {
      v6 = *a2;
      if (v5)
      {
        v6[v5 - 1] = 0;
      }
    }
  }

  else
  {
    v6 = *a2;
    *(*a2 + 4 * v4) = 0;
  }

  *(a1 + 16) = 0;
  TBuffer<wchar_t>::insert(a1, 0, v6, v4);
  return a1;
}

void MrecInitModule_apist_sdapi(void)
{
  if (!gParSdapiDiagnosticCheckHeapEveryCall)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "SdapiDiagnosticCheckHeapEveryCall", &unk_26288848C, &unk_26288848C, 0, SetShadowSdapiDiagnosticCheckHeapEveryCall, 0);
    *v1 = &unk_287527EA0;
    gParSdapiDiagnosticCheckHeapEveryCall = v1;
    gShadowSdapiDiagnosticCheckHeapEveryCall = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParSdapiDiagnosticCheckHeapEveryCall);
  }

  if (!gParSdapiCrashOnSendError)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "SdapiCrashOnSendError", &unk_26288848C, &unk_26288848C, 0, SetShadowSdapiCrashOnSendError, 0);
    *v3 = &unk_287527EA0;
    gParSdapiCrashOnSendError = v3;
    gShadowSdapiCrashOnSendError = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParSdapiCrashOnSendError);
  }

  if (!gParSdapiAdaptationAccumulationMinCallbackInterval)
  {
    v4 = MemChunkAlloc(0x38uLL, 0);
    v8 = 0x271000000000;
    v5 = IntGlobalParamBase::IntGlobalParamBase(v4, "SdapiAdaptationAccumulationMinCallbackInterval", &unk_26288848C, &unk_26288848C, 1, &v8, 0);
    *v5 = &unk_287528130;
    gParSdapiAdaptationAccumulationMinCallbackInterval = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParSdapiAdaptationAccumulationMinCallbackInterval);
  }

  if (!gParSdapiAdaptationApplicationMinCallbackInterval)
  {
    v6 = MemChunkAlloc(0x38uLL, 0);
    v8 = 0x271000000000;
    v7 = IntGlobalParamBase::IntGlobalParamBase(v6, "SdapiAdaptationApplicationMinCallbackInterval", &unk_26288848C, &unk_26288848C, 1, &v8, 0);
    *v7 = &unk_287528130;
    gParSdapiAdaptationApplicationMinCallbackInterval = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParSdapiAdaptationApplicationMinCallbackInterval);
  }
}

double throwIfErroredDuringCallback(const char *result)
{
  if (*(ApiState::smpApiState + 1) == 1)
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 468, "sdapi/apist", 32, "%.500s %.500s", result, *(ApiState::smpApiState + 88));
  }

  return v1;
}

uint64_t sdUtilStrMove(char *a1, int a2, const char *__s)
{
  v6 = strlen(__s);
  v7 = v6;
  if (a2)
  {
    if (a2 - 1 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = (a2 - 1);
    }

    if (v8)
    {
      memcpy(a1, __s, v8);
    }

    else
    {
      v8 = 0;
    }

    a1[v8] = 0;
  }

  return v7 + 1;
}

uint64_t sdUtilItemMove(int a1, const void *a2, uint64_t a3, void *__dst, unsigned int a5)
{
  if (a5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a5;
  }

  v7 = v6 * a1;
  if (v7)
  {
    memcpy(__dst, a2, v7);
  }

  return a3;
}

void sdUtilConvertSDWordSpecsToCwids(uint64_t *result, unsigned int a2, uint64_t a3, char a4, char a5, char a6, char a7, double a8)
{
  v8 = a3;
  v11 = ModelMgr::smpModelMgr;
  v12 = *(a3 + 12);
  v13 = a2 >= v12;
  v14 = a2 - v12;
  if (v14 != 0 && v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, v14, 0);
    *(v8 + 8) = a2;
LABEL_5:
    v15 = 0;
    v16 = a2;
    v17 = "%s";
    v31 = v8;
    while (1)
    {
      v18 = result[1];
      if (v18 > -3)
      {
        break;
      }

      if (v18 == -4)
      {
        if ((a6 & 1) == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 552, "sdapi/apist", 31, v17, &errStr_sdapi_apist_E_BAD_COLLAPSED);
        }

        v28 = *result;
        if (HIDWORD(*result))
        {
          v29 = 0;
        }

        else
        {
          v29 = (*result & 0xFFFF0000) == 0;
        }

        if (!v29)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", "SDhVoc", v28);
        }

        if (v28 - 1 >= 0x7B)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", "SDhVoc", v28);
        }

        ModelMgr::getVocOrThrow(v11, v28);
        v19 = ((v28 << 25) | 0xFFFFF4) + 7;
        goto LABEL_47;
      }

      if (v18 != -3)
      {
        goto LABEL_20;
      }

      if ((a5 & 1) == 0)
      {
        a8 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 568, "sdapi/apist", 29, v17, &errStr_sdapi_apist_E_BAD_ENDCONTEXT);
      }

      v19 = -50331651;
      if (*result != -1)
      {
        a8 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 570, "sdapi/apist", 30, v17, a8, &errStr_sdapi_apist_E_BAD_OOVVOC);
      }

LABEL_47:
      *(*v8 + 4 * v15++) = v19;
      result += 2;
      if (v16 == v15)
      {
        return;
      }
    }

    if (v18 == -2)
    {
      if (v15 || (a4 & 1) == 0)
      {
        a8 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 560, "sdapi/apist", 28, v17, &errStr_sdapi_apist_E_BAD_STARTCONTEXT);
      }

      v19 = -50331650;
      if (*result != -1)
      {
        a8 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 562, "sdapi/apist", 30, v17, a8, &errStr_sdapi_apist_E_BAD_OOVVOC);
      }

      goto LABEL_47;
    }

    if (v18 == -1)
    {
      if ((a7 & 1) == 0)
      {
        a8 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 544, "sdapi/apist", 36, v17, &errStr_sdapi_apist_E_BAD_UNKNOWNWORD);
      }

      if (*result != -1)
      {
        a8 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 546, "sdapi/apist", 30, v17, a8, &errStr_sdapi_apist_E_BAD_OOVVOC);
      }

      v19 = -83886081;
      goto LABEL_47;
    }

LABEL_20:
    v20 = v16;
    v21 = v17;
    v22 = *result;
    if (HIDWORD(*result))
    {
      v23 = 0;
    }

    else
    {
      v23 = (*result & 0xFFFF0000) == 0;
    }

    if (!v23)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", "SDhVoc", v22);
    }

    v24 = v11;
    if (v22 - 1 >= 0x7B)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", "SDhVoc", v22);
    }

    v25 = result[1];
    v26 = v25 - 1;
    if ((v25 - 1) >> 32)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", "SDhWord", v25);
    }

    if (v26 >= 0xFFFFF4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", "SDhWord", v25);
    }

    v11 = v24;
    VocOrThrow = ModelMgr::getVocOrThrow(v24, v22);
    a8 = WordList::verifyVisible(*(VocOrThrow + 48), v26);
    v19 = v26 & 0xFFFFFF | (v22 << 25);
    v17 = v21;
    v16 = v20;
    v8 = v31;
    goto LABEL_47;
  }

  *(a3 + 8) = a2;
  if (a2)
  {
    goto LABEL_5;
  }
}

void DisplaySdapiObjectSizes(void)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  getShipObjectSizeDescription(&v5, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 863);
  if (v6)
  {
    v1 = v5;
  }

  else
  {
    v1 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v0, 0, &unk_26288848C, 0, &unk_26288848C, v1);
  DgnString::~DgnString(&v5);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v2, 0, &unk_26288848C);
  ApiState::printSize(ApiState::smpApiState, 0xFFFFFFFFLL, 1, &v9, &v8, &v7);
  MrecInitModule_sdpres_sdapi();
  getShipObjectSizeDescription(&v5, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 869);
  if (v6)
  {
    v4 = v5;
  }

  else
  {
    v4 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v3, 0, &unk_26288848C, 35, 35, v4, v9, v8, v7);
  DgnString::~DgnString(&v5);
}

void ApiState::printSize(ApiState *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1126);
  if (v97)
  {
    v13 = v96;
  }

  else
  {
    v13 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288848C, a3, &unk_26288848C, v13);
  DgnString::~DgnString(&v96);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288848C);
  MrecPrintSize(0xFFFFFFFF, a3, a4, a5, a6);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1129);
  if (v97)
  {
    v18 = v96;
  }

  else
  {
    v18 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v96);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1131);
  if (v97)
  {
    v20 = v96;
  }

  else
  {
    v20 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v20, 1, 1, 0);
  DgnString::~DgnString(&v96);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1133);
  if (v97)
  {
    v22 = v96;
  }

  else
  {
    v22 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v22, 1, 1, 0);
  DgnString::~DgnString(&v96);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1135);
  if (v97)
  {
    v24 = v96;
  }

  else
  {
    v24 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v24, 1, 1, 0);
  DgnString::~DgnString(&v96);
  ++*a4;
  ++*a5;
  v25 = SnapTime::sizeObject(this + 8, 0);
  v26 = SnapTime::sizeObject(this + 8, 1);
  v95 = this;
  v27 = SnapTime::sizeObject(this + 8, 3);
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1137);
  if (v97)
  {
    v29 = v96;
  }

  else
  {
    v29 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v29, v25, v26, v27);
  DgnString::~DgnString(&v96);
  *a4 += v25;
  *a5 += v26;
  *a6 += v27;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1139);
  if (v97)
  {
    v31 = v96;
  }

  else
  {
    v31 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v31, 8, 8, 0);
  DgnString::~DgnString(&v96);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1141);
  if (v97)
  {
    v33 = v96;
  }

  else
  {
    v33 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v33, 8, 8, 0);
  DgnString::~DgnString(&v96);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1143);
  if (v97)
  {
    v35 = v96;
  }

  else
  {
    v35 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v35, 8, 8, 0);
  DgnString::~DgnString(&v96);
  *a4 += 8;
  *a5 += 8;
  v36 = sizeObject(v95 + 64, 0);
  v37 = sizeObject(v95 + 64, 1);
  v38 = sizeObject(v95 + 64, 3);
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1145);
  if (v97)
  {
    v40 = v96;
  }

  else
  {
    v40 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v40, v36, v37, v38);
  DgnString::~DgnString(&v96);
  *a4 += v36;
  *a5 += v37;
  v94 = a6;
  *a6 += v38;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1147);
  if (v97)
  {
    v42 = v96;
  }

  else
  {
    v42 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v42, 1, 1, 0);
  DgnString::~DgnString(&v96);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 4;
  }

  else
  {
    v43 = 8;
  }

  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1148);
  if (v97)
  {
    v45 = v96;
  }

  else
  {
    v45 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v45, v43, v43, 0);
  DgnString::~DgnString(&v96);
  *a4 += v43;
  *a5 += v43;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1153);
    if (v97)
    {
      v47 = v96;
    }

    else
    {
      v47 = &unk_26288848C;
    }

    xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v47, 64, 64, 0);
    DgnString::~DgnString(&v96);
    *a4 += 64;
    *a5 += 64;
  }

  v93 = a3;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = v95 + 160;
  v52 = 20;
  do
  {
    v48 += sizeObject(v51, 0);
    v49 += sizeObject(v51, 1);
    v50 += sizeObject(v51, 3);
    v51 += 80;
    --v52;
  }

  while (v52);
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1161);
  if (v97)
  {
    v54 = v96;
  }

  else
  {
    v54 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_26288848C, v16, v16, v54, v48, v49, v50);
  DgnString::~DgnString(&v96);
  *a4 += v48;
  *a5 += v49;
  *v94 += v50;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v55 = 4;
  }

  else
  {
    v55 = 8;
  }

  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1164);
  if (v97)
  {
    v57 = v96;
  }

  else
  {
    v57 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v15, &unk_26288848C, v16, v16, v57, v55, v55, 0);
  DgnString::~DgnString(&v96);
  *a4 += v55;
  *a5 += v55;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1166);
  if (v97)
  {
    v59 = v96;
  }

  else
  {
    v59 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v15, &unk_26288848C, v16, v16, v59, 8, 8, 0);
  DgnString::~DgnString(&v96);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1168);
  if (v97)
  {
    v61 = v96;
  }

  else
  {
    v61 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v15, &unk_26288848C, v16, v16, v61, 4, 4, 0);
  DgnString::~DgnString(&v96);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1170);
  if (v97)
  {
    v63 = v96;
  }

  else
  {
    v63 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26288848C, v16, v16, v63, 4, 4, 0);
  DgnString::~DgnString(&v96);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v64 = 4;
  }

  else
  {
    v64 = 8;
  }

  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1172);
  if (v97)
  {
    v66 = v96;
  }

  else
  {
    v66 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v15, &unk_26288848C, v16, v16, v66, v64, v64, 0);
  DgnString::~DgnString(&v96);
  *a4 += v64;
  *a5 += v64;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1174);
  if (v97)
  {
    v68 = v96;
  }

  else
  {
    v68 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v15, &unk_26288848C, v16, v16, v68, 8, 8, 0);
  DgnString::~DgnString(&v96);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1176);
  if (v97)
  {
    v70 = v96;
  }

  else
  {
    v70 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v15, &unk_26288848C, v16, v16, v70, 4, 4, 0);
  DgnString::~DgnString(&v96);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1178);
  if (v97)
  {
    v72 = v96;
  }

  else
  {
    v72 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v15, &unk_26288848C, v16, v16, v72, 4, 4, 0);
  DgnString::~DgnString(&v96);
  *a4 += 4;
  *a5 += 4;
  v73 = FileSpec::sizeObject(v95 + 1808, 0);
  v74 = FileSpec::sizeObject(v95 + 1808, 1);
  v75 = FileSpec::sizeObject(v95 + 1808, 3);
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1180);
  if (v97)
  {
    v77 = v96;
  }

  else
  {
    v77 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v15, &unk_26288848C, v16, v16, v77, v73, v74, v75);
  DgnString::~DgnString(&v96);
  *a4 += v73;
  *a5 += v74;
  *v94 += v75;
  v78 = sizeObject(v95 + 1824, 0);
  v79 = sizeObject(v95 + 1824, 1);
  v80 = sizeObject(v95 + 1824, 3);
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1182);
  if (v97)
  {
    v82 = v96;
  }

  else
  {
    v82 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v15, &unk_26288848C, v16, v16, v82, v78, v79, v80);
  DgnString::~DgnString(&v96);
  *a4 += v78;
  *a5 += v79;
  *v94 += v80;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1184);
  if (v97)
  {
    v84 = v96;
  }

  else
  {
    v84 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v15, &unk_26288848C, v16, v16, v84, 4000, 4000, 0);
  DgnString::~DgnString(&v96);
  *a4 += 4000;
  *a5 += 4000;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1186);
  if (v97)
  {
    v86 = v96;
  }

  else
  {
    v86 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v15, &unk_26288848C, v16, v16, v86, 4000, 4000, 0);
  DgnString::~DgnString(&v96);
  *a4 += 4000;
  *a5 += 4000;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1188);
  if (v97)
  {
    v88 = v96;
  }

  else
  {
    v88 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v15, &unk_26288848C, v16, v16, v88, 160, 160, 0);
  DgnString::~DgnString(&v96);
  *a4 += 160;
  *a5 += 160;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1190);
  if (v97)
  {
    v90 = v96;
  }

  else
  {
    v90 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v15, &unk_26288848C, v16, v16, v90, 160, 160, 0);
  DgnString::~DgnString(&v96);
  *a4 += 160;
  *a5 += 160;
  getShipObjectSizeDescription(&v96, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1191);
  if (v97)
  {
    v92 = v96;
  }

  else
  {
    v92 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v93, &unk_26288848C, (35 - v93), (35 - v93), v92, *a4, *a5, *v94);
  DgnString::~DgnString(&v96);
}

void sub_2626AD768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void ApiState::ApiState(ApiState *this)
{
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  DgnString::DgnString((this + 64));
  v2 = 0;
  *(this + 80) = 0;
  *(this + 11) = 0;
  do
  {
    v3 = this + v2;
    recursive_mutex_init((this + v2 + 160));
    *(v3 + 56) = 0;
    *(v3 + 29) = 0;
    v2 += 80;
  }

  while (v2 != 1600);
  *(this + 110) = 0u;
  *(this + 444) = 1;
  *(this + 449) = 0;
  *(this + 1780) = 0u;
  *(this + 225) = 1;
  FileSpec::FileSpec((this + 1808));
  DgnReadWriteLock::DgnReadWriteLock((this + 1824));
  recursive_mutex_init((this + 96));
  ApiState::resetCallHistogram(this);
}

void sub_2626AD8B8(_Unwind_Exception *a1)
{
  FileSpec::~FileSpec(v1 + 1808);
  v3 = (v1 + 1680);
  v4 = -1600;
  do
  {
    DgnLock::~DgnLock(v3);
    v3 = (v5 - 80);
    v4 += 80;
  }

  while (v4);
  DgnString::~DgnString(v1 + 64);
  _Unwind_Resume(a1);
}

void ApiState::resetCallHistogram(ApiState *this)
{
  v2 = this + 160;
  pthread_mutex_lock((this + 160));
  ++*(this + 56);
  *(this + 29) = pthread_self();
  *(this + 1269) = 0;
  *(this + 1289) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 240;
  pthread_mutex_lock((this + 240));
  ++*(this + 76);
  *(this + 39) = pthread_self();
  *(this + 1270) = 0;
  *(this + 1290) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 320;
  pthread_mutex_lock(this + 5);
  ++*(this + 96);
  *(this + 49) = pthread_self();
  *(this + 1271) = 0;
  *(this + 1291) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 400;
  pthread_mutex_lock((this + 400));
  ++*(this + 116);
  *(this + 59) = pthread_self();
  *(this + 1272) = 0;
  *(this + 1292) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 480;
  pthread_mutex_lock((this + 480));
  ++*(this + 136);
  *(this + 69) = pthread_self();
  *(this + 1273) = 0;
  *(this + 1293) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 560;
  pthread_mutex_lock((this + 560));
  ++*(this + 156);
  *(this + 79) = pthread_self();
  *(this + 1274) = 0;
  *(this + 1294) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 640;
  pthread_mutex_lock(this + 10);
  ++*(this + 176);
  *(this + 89) = pthread_self();
  *(this + 1275) = 0;
  *(this + 1295) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 720;
  pthread_mutex_lock((this + 720));
  ++*(this + 196);
  *(this + 99) = pthread_self();
  *(this + 1276) = 0;
  *(this + 1296) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 800;
  pthread_mutex_lock((this + 800));
  ++*(this + 216);
  *(this + 109) = pthread_self();
  *(this + 1277) = 0;
  *(this + 1297) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  bzero(this + 2152, 0x1F40uLL);
}

void *ApiState::startupHandlers(void *this, void (*a2)(const char *, unint64_t), uint64_t (*a3)(void, void), void (*a4)(const char *, unint64_t), uint64_t (*a5)(void, void), void (*a6)(const char *, unint64_t))
{
  ApiState::smMemoryErrorHandler = this;
  ApiState::smMemoryErrorUserData = a2;
  ApiState::smErrorHandler = a3;
  ApiState::smErrorUserData = a4;
  ApiState::smLogHandler = a5;
  ApiState::smLogUserData = a6;
  return this;
}

uint64_t ApiState::startupApiState(ApiState *this, const char *a2)
{
  v3 = MemChunkAlloc(0x28E8uLL, 0);
  ApiState::ApiState(v3);
  result = ApiState::init(v4, this);
  ApiState::smpApiState = v3;
  return result;
}

uint64_t ApiState::init(ApiState *this, DgnSharedMemMgr *a2)
{
  v8 = 0;
  v9 = 0;
  v7[12] = &unk_2875265F0;
  v10 = 1;
  SnapTime::recordTime((this + 8), 1, 1, 1, 1);
  logMaybeSetTimeStampingBase(*(this + 2));
  MemChunkRegion::getRegionStats(v7, 0);
  v4 = v7[4];
  *(this + 6) = v7[1];
  *(this + 7) = v4;
  StartupMrec(a2, v5);
  MrecInitLibrarySet_throughSdapi();
  MrecInitModule_sdpres_sdapi();
  GlobalParamMgr::resetAll(GlobalParamMgr::smpGlobalParamMgr);
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  return setDllTerminatedSuccessfullyOrNotInUse(0);
}

void FpuUseMrecDefaults::~FpuUseMrecDefaults(FpuUseMrecDefaults *this)
{
  *this = &unk_287528188;
}

{
  *this = &unk_287528188;
  JUMPOUT(0x26672B1B0);
}

void ApiState::staticSendMemoryError(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v7 = v6;
  v17 = *MEMORY[0x277D85DE8];
  v8 = ApiState::smpApiState;
  if (ApiState::smpApiState)
  {

    ApiState::sendMemoryError(v8, v2, v3, v4, v5, v6);
  }

  else
  {
    DgnString::DgnString(&v15);
    v12[0] = 0;
    v13 = 0x2000;
    v14 = 0;
    appended = MessageFormatPrefix(v12, 0, 1, -1);
    if (v7)
    {
      DgnBuffer::appendString(v12, ": ");
      appended = DgnBuffer::appendString(v12, v7);
    }

    if (gShadowSdapiCrashOnSendError == 1)
    {
      appended = crashIntoDebugger();
    }

    if (ApiState::smErrorHandler)
    {
      if (v16)
      {
        v10 = v15;
      }

      else
      {
        v10 = &unk_26288848C;
      }

      if (v14)
      {
        v11 = v10;
      }

      else
      {
        v11 = v12;
      }

      appended = ApiState::smMemoryErrorHandler(v11, ApiState::smMemoryErrorUserData);
    }

    DgnThreadMgr::broadcastError(appended);
    DgnString::~DgnString(&v15);
  }
}

uint64_t *ApiState::sendMemoryError(ApiState *this, const char *a2, int a3, const char *a4, int a5, const char *a6)
{
  v6 = MEMORY[0x28223BE20](this, a2);
  v8 = v7;
  v9 = v6;
  v22 = *MEMORY[0x277D85DE8];
  v16 = v6 + 560;
  pthread_mutex_lock((v6 + 560));
  ++*(v9 + 624);
  *(v9 + 632) = pthread_self();
  v10 = &unk_26288848C;
  if (*(v9 + 80) == 1)
  {
    v10 = *(v9 + 88);
  }

  DgnString::DgnString(&v20);
  v17[0] = 0;
  v18 = 0x2000;
  v19 = 0;
  MessageFormatPrefix(v17, 0, 1, -1);
  appended = DgnBuffer::appendString(v17, v10);
  if (v8)
  {
    DgnBuffer::appendString(v17, ": ");
    appended = DgnBuffer::appendString(v17, v8);
  }

  if (gShadowSdapiCrashOnSendError == 1)
  {
    appended = crashIntoDebugger();
  }

  if (ApiState::smErrorHandler)
  {
    *(v9 + 2) = 1;
    CallbackInsurance::CallbackInsurance(v15, 5, 0, 1);
    if (v21)
    {
      v12 = v20;
    }

    else
    {
      v12 = &unk_26288848C;
    }

    if (v19)
    {
      v13 = v12;
    }

    else
    {
      v13 = v17;
    }

    ApiState::smMemoryErrorHandler(v13, ApiState::smMemoryErrorUserData);
    CallbackInsurance::~CallbackInsurance(v15);
  }

  DgnThreadMgr::broadcastError(appended);
  *(v9 + 2) = 0;
  DgnString::~DgnString(&v20);
  return Latch<DgnLock,LatchAdapter>::~Latch(&v16);
}

void sub_2626AE054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  CallbackInsurance::~CallbackInsurance(va);
  DgnString::~DgnString(v3 + 8200);
  Latch<DgnLock,LatchAdapter>::~Latch(va1);
  _Unwind_Resume(a1);
}

void ApiState::staticSendError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2);
  v16 = v10;
  v17 = v9;
  v28 = *MEMORY[0x277D85DE8];
  if (ApiState::smpApiState)
  {
    LODWORD(v22) = v15;
    ApiState::sendError(ApiState::smpApiState, v9, v10, v11, v12, v12, v13, v14, v22, a9);
  }

  else
  {
    DgnString::DgnString(&v26);
    v23[0] = 0;
    v24 = 0x2000;
    v25 = 0;
    MessageFormatPrefix(v23, 0, 1, v16);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &unk_26288848C;
    }

    DgnBuffer::appendString(v23, v18);
    if (a9)
    {
      DgnBuffer::appendString(v23, ": ");
      DgnBuffer::appendString(v23, a9);
    }

    appended = DgnBuffer::appendString(v23, " (See mrec/doc/client.txt for general documentation on errors.)");
    if (gShadowSdapiCrashOnSendError == 1)
    {
      appended = crashIntoDebugger();
    }

    if (ApiState::smErrorHandler)
    {
      if (v27)
      {
        v20 = v26;
      }

      else
      {
        v20 = &unk_26288848C;
      }

      if (v25)
      {
        v21 = v20;
      }

      else
      {
        v21 = v23;
      }

      appended = ApiState::smErrorHandler(v21, ApiState::smErrorUserData);
    }

    DgnThreadMgr::broadcastError(appended);
    DgnString::~DgnString(&v26);
  }
}

uint64_t *ApiState::sendError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const char *a10)
{
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v10;
  v33 = *MEMORY[0x277D85DE8];
  v27 = v10 + 560;
  pthread_mutex_lock((v10 + 560));
  ++*(v17 + 624);
  *(v17 + 632) = pthread_self();
  if (!v16)
  {
    if (*(v17 + 80) == 1)
    {
      v16 = *(v17 + 88);
    }

    else
    {
      v16 = &unk_26288848C;
    }
  }

  DgnString::DgnString(&v31);
  v28[0] = 0;
  v29 = 0x2000;
  v30 = 0;
  MessageFormatPrefix(v28, 0, 1, v14);
  DgnBuffer::appendString(v28, v16);
  if (a10)
  {
    DgnBuffer::appendString(v28, ": ");
    DgnBuffer::appendString(v28, a10);
  }

  appended = DgnBuffer::appendString(v28, " (See mrec/doc/client.txt for general documentation on errors.)");
  if (gShadowSdapiCrashOnSendError == 1)
  {
    appended = crashIntoDebugger();
  }

  v19 = ApiState::smErrorHandler;
  if (!ApiState::smErrorHandler)
  {
    goto LABEL_26;
  }

  if (!v12)
  {
    *(v17 + 2) = 1;
    CallbackInsurance::CallbackInsurance(v26, 5, 0, 1);
    if (v32)
    {
      v23 = v31;
    }

    else
    {
      v23 = &unk_26288848C;
    }

    if (v30)
    {
      v24 = v23;
    }

    else
    {
      v24 = v28;
    }

    ApiState::smErrorHandler(v24, ApiState::smErrorUserData);
    CallbackInsurance::~CallbackInsurance(v26);
    goto LABEL_26;
  }

  if ((*(v17 + 2) & 1) == 0)
  {
    v20 = v30;
    *(v17 + 2) = 1;
    if (v32)
    {
      v21 = v31;
    }

    else
    {
      v21 = &unk_26288848C;
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = v28;
    }

    appended = v19(v22, ApiState::smErrorUserData);
LABEL_26:
    DgnThreadMgr::broadcastError(appended);
    *(v17 + 2) = 0;
  }

  DgnString::~DgnString(&v31);
  return Latch<DgnLock,LatchAdapter>::~Latch(&v27);
}

void sub_2626AE4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  CallbackInsurance::~CallbackInsurance(va);
  DgnString::~DgnString(v4 + v3);
  Latch<DgnLock,LatchAdapter>::~Latch(va1);
  _Unwind_Resume(a1);
}

void ApiState::staticSendLog(ApiState *this, const char *a2)
{
  if (ApiState::smpApiState)
  {
    ApiState::sendLog(this, this);
  }

  else if (ApiState::smLogHandler)
  {
    ApiState::smLogHandler(this, ApiState::smLogUserData);
  }
}

void ApiState::sendLog(ApiState *this, const char *a2)
{
  if (ApiState::smLogHandler)
  {
    if (ApiState::smpApiState && (*(ApiState::smpApiState + 1) & 1) == 0)
    {
      v3 = *(ApiState::smpApiState + 80);
    }

    else
    {
      v3 = 0;
    }

    CallbackInsurance::CallbackInsurance(v4, 6, 0, 0);
    ApiState::smLogHandler(a2, ApiState::smLogUserData);
    if (v3)
    {
      throwIfErroredDuringCallback("SDLogHandler");
    }

    CallbackInsurance::~CallbackInsurance(v4);
  }
}

void sub_2626AE5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CallbackInsurance::~CallbackInsurance(va);
  _Unwind_Resume(a1);
}

void ApiState::progressCallbackWrapper(ApiState *this, uint64_t a2, void *a3)
{
  if (*a3)
  {
    if (ApiState::smpApiState && (*(ApiState::smpApiState + 1) & 1) == 0)
    {
      v5 = *(ApiState::smpApiState + 80);
    }

    else
    {
      v5 = 0;
    }

    CallbackInsurance::CallbackInsurance(v6, 2, 0, 1);
    (*a3)(a2, a3[1]);
    if (v5)
    {
      throwIfErroredDuringCallback("SDProgressCallback");
    }

    CallbackInsurance::~CallbackInsurance(v6);
  }
}

void sub_2626AE66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CallbackInsurance::~CallbackInsurance(va);
  _Unwind_Resume(a1);
}

void ApiState::callReallocateArrayCallback(ApiState *this, void (*a2)(unint64_t, unsigned int, unsigned int, void *, unsigned int, void **, unsigned int *), unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void **a8, unsigned int *a9)
{
  if (ApiState::smpApiState && (*(ApiState::smpApiState + 1) & 1) == 0)
  {
    v17 = *(ApiState::smpApiState + 80);
  }

  else
  {
    v17 = 0;
  }

  CallbackInsurance::CallbackInsurance(v18, 3, 0, 1);
  a2(a3, a4, a5, a6, a7, a8, a9);
  if (v17)
  {
    throwIfErroredDuringCallback("SDReallocateArrayCallback");
  }

  CallbackInsurance::~CallbackInsurance(v18);
  if (*a9 < a5)
  {
    ThrowExternalNewFailure(this, (a5 * a4));
  }
}

void (***ApiState::cleanUpAfterSaveException(ApiState *this, DgnFileIOException *a2, DgnString *a3))(void)
{
  if (*(this + 10))
  {
    v4 = *(this + 4);
  }

  else
  {
    v4 = &unk_26288848C;
  }

  if (*(this + 16))
  {
    v5 = *(this + 7);
  }

  else
  {
    v5 = &unk_26288848C;
  }

  DgnString::stringPrintf(a2, "%s %d %s", v4, *(this + 12), v5);

  return DgnDelete<DgnFileIOException>(this);
}

void (***DgnDelete<DgnFileIOException>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t *ApiState::errorReexited(ApiState *this)
{
  pthread_mutex_lock((this + 96));
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v4) = 3;
  return ApiState::sendError(this, 0, 0xFFFFFFFFLL, 0, v2, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1746, "sdapi/apist", v4, &errStr_sdapi_apist_E_REEXIT);
}

uint64_t *ApiState::errorReentry(ApiState *this, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x100uLL, "Illegal SDAPI re-entry into %s while already in %s", a2, *(this + 11));
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v6) = 6;
  return ApiState::sendError(this, a2, 0xFFFFFFFFLL, 1, v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1767, "sdapi/apist", v6, __str);
}

uint64_t *ApiState::errorCallDuringRecog(ApiState *this, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  strcpy(v7, "Called function is illegal when there is an active SDhRecognizer");
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v6) = 7;
  return ApiState::sendError(this, a2, 0xFFFFFFFFLL, 0, v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1787, "sdapi/apist", v6, v7);
}

uint64_t *ApiState::errorRDApiNotInit(ApiState *this, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  strcpy(v7, "Called function is illegal when the RDApi is not enabled.");
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v6) = 38;
  return ApiState::sendError(this, a2, 0xFFFFFFFFLL, 0, v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1807, "sdapi/apist", v6, v7);
}

uint64_t *ApiState::errorBadHeapOnEntry(ApiState *this, const char *a2)
{
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v6) = 8;
  return ApiState::sendError(this, a2, 0xFFFFFFFFLL, 0, v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1821, "sdapi/apist", v6, &errStr_sdapi_apist_E_BAD_HEAP_ON_ENTRY);
}

uint64_t *ApiState::errorBadHeapOnExit(ApiState *this)
{
  pthread_mutex_lock((this + 96));
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v4) = 9;
  return ApiState::sendError(this, 0, 0xFFFFFFFFLL, 0, v2, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1835, "sdapi/apist", v4, &errStr_sdapi_apist_E_BAD_HEAP_ON_EXIT);
}

void ApiState::handleDgnMemoryException(uint64_t a1)
{
  if (ApiState::smpApiState)
  {
    pthread_mutex_lock((ApiState::smpApiState + 96));
    v1 = ApiState::smpApiState;
    *(ApiState::smpApiState + 1) = 1;
    a1 = pthread_mutex_unlock((v1 + 96));
  }

  ApiState::staticSendMemoryError(a1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp");
}

void ApiState::handleDgnException(ApiState *this, DgnException *a2)
{
  if (ApiState::smpApiState)
  {
    pthread_mutex_lock((ApiState::smpApiState + 96));
    v3 = ApiState::smpApiState;
    *(ApiState::smpApiState + 1) = 1;
    pthread_mutex_unlock((v3 + 96));
  }

  if (*(this + 4))
  {
    v4 = *(this + 1);
  }

  else
  {
    v4 = &unk_26288848C;
  }

  if (*(this + 10))
  {
    v5 = *(this + 4);
  }

  else
  {
    v5 = &unk_26288848C;
  }

  if (*(this + 16))
  {
    v6 = *(this + 7);
  }

  else
  {
    v6 = &unk_26288848C;
  }

  ApiState::staticSendError(0, *(this + 18), 0, 0, v4, *(this + 6), v5, *(this + 12), v6);
}

uint64_t SdapiInsurance::SdapiInsurance(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 104) = &unk_2875265F0;
  *(a1 + 120) = 1;
  *(a1 + 128) = a5;
  if (ApiState::smpApiState)
  {
    ApiState::enterApi(ApiState::smpApiState, a1, a2, a3, a4);
    if (*(DgnThreadMgr::smpThreadMgr + 76) == 1 && (*(DgnThreadMgr::smpThreadMgr + 77) & 1) == 0)
    {
      DgnThreadTrace::add(DgnThreadMgr::smpThreadMgr + 80, -1, 6);
    }

    *(a1 + 136) = mach_absolute_time();
  }

  return a1;
}

uint64_t *ApiState::enterApi(uint64_t a1, uint64_t a2, const char *a3, int a4, int a5)
{
  pthread_mutex_lock((a1 + 96));
  if (*(a1 + 80) == 1)
  {
    result = ApiState::errorReentry(a1, a3);
LABEL_15:
    *(a2 + 97) = 0;
    return result;
  }

  if (a5 != 1 && *(RecogCtlMgr::smpRecogCtlMgr + 272))
  {
    result = ApiState::errorCallDuringRecog(a1, a3);
    goto LABEL_15;
  }

  if (a4 == 3 && (*(a1 + 3) & 1) == 0)
  {
    result = ApiState::errorRDApiNotInit(a1, a3);
    goto LABEL_15;
  }

  if (gShadowSdapiDiagnosticCheckHeapEveryCall == 1 && (mrecHeapValid() & 1) == 0)
  {
    result = ApiState::errorBadHeapOnEntry(a1, a3);
    goto LABEL_15;
  }

  *(a1 + 80) = 1;
  *(a1 + 88) = a3;
  if (gbShowCallMemDeltas == 1)
  {
    MemChunkRegion::getRegionStats(v14, 0);
    v11 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v11;
    v12 = v14[3];
    *(a2 + 32) = v14[2];
    *(a2 + 48) = v12;
    v13 = v14[5];
    *(a2 + 64) = v14[4];
    *(a2 + 80) = v13;
    *(a2 + 96) = 1;
  }

  *(a2 + 97) = 1;
  return pthread_mutex_unlock((a1 + 96));
}

void SdapiInsurance::~SdapiInsurance(SdapiInsurance *this)
{
  if (*(this + 97) == 1)
  {
    if (*(DgnThreadMgr::smpThreadMgr + 76) == 1 && (*(DgnThreadMgr::smpThreadMgr + 77) & 1) == 0)
    {
      DgnThreadTrace::add(DgnThreadMgr::smpThreadMgr + 80, -1, 10);
    }

    if (*(this + 96) == 1 && gbShowCallMemDeltas == 1)
    {
      ShowDeltaMemSummary(0, *(ApiState::smpApiState + 88), this);
    }

    v2 = mach_absolute_time() - *(this + 17);
    v3 = ApiState::smpApiState;
    v4 = ApiState::smpApiState + 8 * *(this + 32);
    ++*(v4 + 2152);
    *(v4 + 6152) += v2;
    *(v3 + 5) += v2;
    ApiState::exitApi(v3, v5);
  }

  *(this + 13) = &unk_287528188;
}

uint64_t *ApiState::exitApi(ApiState *this, uint64_t a2)
{
  if (*(this + 80))
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Exiting sdapi call %s\n", a2, *(this + 11));
    }

    if (gShadowSdapiDiagnosticCheckHeapEveryCall == 1 && (mrecHeapValid() & 1) == 0)
    {
      ApiState::errorBadHeapOnExit(this);
    }

    pthread_mutex_lock((this + 96));
    *(this + 80) = 0;

    return pthread_mutex_unlock((this + 96));
  }

  else
  {

    return ApiState::errorReexited(this);
  }
}

uint64_t CallbackInsurance::CallbackInsurance(uint64_t a1, int a2, int a3, char a4)
{
  *a1 = a2;
  v7 = (ApiState::smpApiState + 1824);
  *(a1 + 16) = ApiState::smpApiState + 1824;
  *(a1 + 24) = a3 == 0;
  if (a3)
  {
    DgnReadWriteLock::acquireRead(v7);
  }

  else
  {
    DgnReadWriteLock::acquireWrite(v7);
  }

  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 32) = &unk_2875265F0;
  *(a1 + 48) = a4;
  DgnThreadMgr::startClientCallbackEvent((a2 == 6));
  *(a1 + 8) = mach_absolute_time();
  return a1;
}

void sub_2626AF1D8(_Unwind_Exception *a1)
{
  *v2 = &unk_287528188;
  Latch<DgnReadWriteLock,ReadWriteLatchAdapter>::~Latch(v1);
  _Unwind_Resume(a1);
}

void CallbackInsurance::~CallbackInsurance(CallbackInsurance *this)
{
  v2 = ApiState::smpApiState + 80 * *this + 160;
  v6 = v2;
  pthread_mutex_lock(v2);
  ++*(v2 + 64);
  *(v2 + 72) = pthread_self();
  v3 = mach_absolute_time();
  v4 = v3 - *(this + 1);
  v5 = ApiState::smpApiState + 8 * *this;
  ++*(v5 + 10152);
  *(v5 + 10312) += v4;
  DgnThreadMgr::endClientCallbackEvent(v3);
  Latch<DgnLock,LatchAdapter>::~Latch(&v6);
  *(this + 4) = &unk_287528188;
  Latch<DgnReadWriteLock,ReadWriteLatchAdapter>::~Latch(this + 2);
}

void IntGlobalParam::~IntGlobalParam(IntGlobalParam *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

void FpuSaveRestore::~FpuSaveRestore(FpuSaveRestore *this)
{
  *this = &unk_287528188;
}

{
  *this = &unk_287528188;
  JUMPOUT(0x26672B1B0);
}

pthread_rwlock_t **Latch<DgnReadWriteLock,ReadWriteLatchAdapter>::~Latch(pthread_rwlock_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    DgnReadWriteLock::releaseRead(v2);
    *a1 = 0;
  }

  return a1;
}

void CPUID::initCPUID(CPUID *this)
{
  if ((*this & 1) == 0)
  {
    *this = 1;
    bzero(this + 4, 0x418uLL);
    *(this + 263) = 1;
    *&v3 = 0x100000001;
    *(this + 132) = 0x100000001;
    *(this + 532) = 0;
    *(this + 267) = 1;
    *(this + 134) = 0x100000001;
    *(this + 135) = -1;
    *(this + 136) = -1;
    *(&v3 + 1) = 0x100000001;
    *(this + 1096) = v3;
    *(this + 1112) = 0u;
    *(this + 1128) = 0u;
    *(this + 1144) = 0;
    *(this + 9337) = 0u;
    *(this + 9353) = 0u;
    *(this + 9369) = 0u;
    *(this + 9385) = 0u;
    *(this + 9401) = 0u;
    *(this + 9417) = 0u;
    v4 = *(this + 2359);
    if (v4 <= 0x3F)
    {
      v5 = this + v4 + 9369;
      v6 = v4 + 1;
      do
      {
        v7 = *v5++;
        if (v7 != 32)
        {
          break;
        }

        *(this + 2359) = v6++;
      }

      while (v6 != 65);
    }

    bzero(this + 1145, 0x2000uLL);
  }
}

uint64_t TVertex::getInEdge(TVertex *this)
{
  result = *this;
  if (result && *(result + 32) == 1)
  {
    do
    {
      result = *result;
    }

    while (result && (*(result + 32) & 1) != 0);
  }

  return result;
}

uint64_t TVertex::getOutEdge(TVertex *this)
{
  result = *(this + 1);
  if (result && *(result + 32) == 1)
  {
    do
    {
      result = *(result + 8);
    }

    while (result && (*(result + 32) & 1) != 0);
  }

  return result;
}

uint64_t TVertex::getOutEdgeCount(TVertex *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 32) == 1)
  {
    do
    {
      v1 = *(v1 + 8);
      if (!v1)
      {
        return 0;
      }
    }

    while ((*(v1 + 32) & 1) != 0);
  }

  result = 0;
LABEL_6:
  ++result;
  while (1)
  {
    v1 = *(v1 + 8);
    if (!v1)
    {
      return result;
    }

    if ((*(v1 + 32) & 1) == 0)
    {
      goto LABEL_6;
    }
  }
}

void TGraph::TGraph(TGraph *this, char *a2, TSegmenter *a3, char a4)
{
  *this = a3;
  *(this + 8) = a4;
  TAllocator::TAllocator((this + 16), 2048);
  *(this + 5) = 0u;
  *(this + 18) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = a2;
  *(this + 9) = 0;
  *(this + 8) = TGraph::addVertex(this, a2);
}

void sub_2626AF608(_Unwind_Exception *a1)
{
  v4 = *(v1 + 128);
  if (v4)
  {
    *(v1 + 136) = v4;
    operator delete(v4);
  }

  TGraph::TGraph((v1 + 104), v2, v1);
  TAllocator::clear((v1 + 16));
  _Unwind_Resume(a1);
}

TVertex *TGraph::addVertex(TGraph *this, char *a2)
{
  if (!a2)
  {
    v12 = TAllocator::allocate((this + 16), 48);
    v12[5] = (*(this + 11) - *(this + 10)) >> 3;
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 32) = 0;
    v16 = v12;
    std::vector<TItnRule *>::push_back[abi:ne200100](this + 80, &v16);
    return v16;
  }

  v4 = &a2[-*(this + 7)];
  v5 = *(this + 16);
  if (v4 < (*(this + 17) - v5) >> 3)
  {
    result = *(v5 + 8 * v4);
    if (result)
    {
      *(result + 32) = 0;
      return result;
    }
  }

  Segment = TSegmenter::getSegment(*this, a2);
  v8 = a2;
  if (Segment)
  {
    v9 = Segment;
    v8 = a2;
    if (!*(Segment + 24))
    {
      v8 = a2;
      while (1)
      {
        v13 = **v9;
        {
          operator new();
        }

        if (v13 <= 8202)
        {
          if (v13 != 32 && v13 != 160)
          {
            goto LABEL_24;
          }
        }

        else if (v13 != 8203 && v13 != 12288 && v13 != 65279)
        {
LABEL_24:
          if (*(this + 8))
          {
            break;
          }
        }

        v8 = *(v9 + 8);
        v15 = TSegmenter::getSegment(*this, v8);
        if (v15)
        {
          v9 = v15;
          if (!*(v15 + 24))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v10 = TAllocator::allocate((this + 16), 48);
  v10[5] = (*(this + 11) - *(this + 10)) >> 3;
  v10[2] = v8;
  v10[3] = a2;
  *(v10 + 32) = 0;
  *v10 = 0;
  v10[1] = 0;
  v16 = v10;
  std::vector<TItnRule *>::push_back[abi:ne200100](this + 80, &v16);
  TGraph::setMap(this, v16);
  v11 = *(this + 9);
  if (!v11 || *(v11 + 24) < a2)
  {
    result = v16;
    *(this + 9) = v16;
    return result;
  }

  return v16;
}

void sub_2626AF854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x26672B1B0](a9, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void TGraph::~TGraph(TGraph *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  TAllocator::clear((this + 16));
}

uint64_t TGraph::getVertex(TGraph *this, const char *a2)
{
  v2 = &a2[-*(this + 7)];
  v3 = *(this + 16);
  if (v2 >= (*(this + 17) - v3) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8 * v2);
  }
}

void TGraph::setMap(void *this, TVertex *a2)
{
  v4 = this + 16;
  v3 = this[16];
  v5 = *(a2 + 3) - this[7];
  if (v5 >= (this[17] - v3) >> 3)
  {
    if (2 * v5 <= 0x100)
    {
      v6 = 256;
    }

    else
    {
      v6 = 2 * v5;
    }

    v7 = 0;
    std::vector<TFileObject *>::resize(this + 16, v6, &v7);
    v3 = *v4;
  }

  *(v3 + 8 * v5) = a2;
}

void TGraph::deleteVertex(TGraph *this, TVertex *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    if (*(v2 + 32) == 1)
    {
      while (1)
      {
        v2 = *(v2 + 8);
        if (!v2)
        {
          break;
        }

        if ((*(v2 + 32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      *(v2 + 32) = 1;
      while (1)
      {
        v2 = *(v2 + 8);
        if (!v2)
        {
          break;
        }

        if ((*(v2 + 32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }
  }

  v3 = *a2;
  if (*a2)
  {
    if (*(v3 + 32) == 1)
    {
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if ((v3[4] & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      *(v3 + 32) = 1;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if ((v3[4] & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }
  }

  *(a2 + 32) = 1;
}

uint64_t TGraph::getNextVertex(TGraph *this, unint64_t a2)
{
  v2 = *(this + 7);
  if (v2 > a2)
  {
    return *(this + 8);
  }

  v4 = *(*(this + 9) + 24);
  if (v4 < a2)
  {
    return 0;
  }

  for (i = (*(this + 16) - 8 * v2 + 8 * a2); ; ++i)
  {
    result = *i;
    if (*i)
    {
      break;
    }

    if (++a2 > v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TGraph::getPrevVertex(TGraph *this, unint64_t a2)
{
  v2 = *(this + 7);
  if (v2 > a2)
  {
    return 0;
  }

  result = *(this + 9);
  if (*(result + 24) >= a2)
  {
    for (i = (*(this + 16) - 8 * v2 + 8 * a2); ; --i)
    {
      result = *i;
      if (*i)
      {
        break;
      }

      if (--a2 < v2)
      {
        return 0;
      }
    }
  }

  return result;
}

void *TGraph::addEdge(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = (a2 + 8);
  v8 = *(a2 + 8);
  if (v8 && *(v8 + 32) == 1)
  {
    do
    {
      v8 = v8[1];
    }

    while (v8 && (v8[4] & 1) != 0);
  }

  if (*a4 != 5)
  {
    v10 = 0;
    if (!v8 || *a4 == 2)
    {
      goto LABEL_23;
    }

    v10 = 0;
    v11 = *(a4 + 8);
    v12 = *(a4 + 24);
LABEL_10:
    v13 = v8;
    v14 = *(v8 + 12);
    if (v14 != 2 && v14 != 5)
    {
      v16 = wcscmp(*v11, *v13[7]);
      if (v16 < 0)
      {
        goto LABEL_23;
      }

      if (!v16 && v13[3] == a3 && v12 == *(v13 + 72))
      {
        return v13;
      }
    }

    v8 = v13;
    while (1)
    {
      v8 = v8[1];
      if (!v8)
      {
        break;
      }

      if ((v8[4] & 1) == 0)
      {
        v10 = v13;
        goto LABEL_10;
      }
    }

    v10 = v13;
    goto LABEL_23;
  }

  v10 = 0;
LABEL_23:
  v13 = TAllocator::allocate((a1 + 2), 80);
  v17 = a1 + 13;
  v18 = (a1[14] - a1[13]) >> 3;
  *(v13 + 12) = 3;
  v13[7] = 0;
  v13[8] = 0;
  *(v13 + 72) = 0;
  v13[5] = v18;
  v13[2] = a2;
  v13[3] = a3;
  *(v13 + 32) = 0;
  *v13 = 0;
  v13[1] = 0;
  v19 = *(a4 + 16);
  *(v13 + 3) = *a4;
  *(v13 + 4) = v19;
  v21 = a1[14];
  v20 = a1[15];
  if (v21 >= v20)
  {
    v23 = (v21 - *v17) >> 3;
    if ((v23 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v24 = v20 - *v17;
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(v17, v26);
    }

    *(8 * v23) = v13;
    v22 = 8 * v23 + 8;
    v27 = a1[13];
    v28 = a1[14] - v27;
    v29 = (8 * v23 - v28);
    memcpy(v29, v27, v28);
    v30 = a1[13];
    a1[13] = v29;
    a1[14] = v22;
    a1[15] = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v21 = v13;
    v22 = (v21 + 1);
  }

  a1[14] = v22;
  v31 = v10 + 1;
  if (!v10)
  {
    v31 = v9;
  }

  v13[1] = *v31;
  *v31 = v13;
  *v13 = *a3;
  *a3 = v13;
  return v13;
}

void TGraph::topologicalSort(void *a1, void *a2, uint64_t a3)
{
  std::vector<unsigned long>::vector[abi:ne200100](__p, (a1[11] - a1[10]) >> 3);
  v6 = a1[10];
  v7 = a1[11];
  v8 = 0;
  v9 = v7 - v6;
  if (v7 != v6)
  {
    v10 = 0;
    v11 = v9 >> 3;
    v12 = __p[0];
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (1)
    {
      v13 = *(v6 + 8 * v10);
      if ((v13[4] & 1) == 0)
      {
        break;
      }

LABEL_16:
      if (++v10 == v11)
      {
        goto LABEL_17;
      }
    }

    v14 = *v13;
    if (v14)
    {
      if (*(v14 + 32) != 1)
      {
LABEL_9:
        v15 = 0;
LABEL_10:
        ++v15;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_15;
          }

          if ((v14[4] & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        if ((v14[4] & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    v15 = 0;
LABEL_15:
    ++v8;
    v12[v10] = v15;
    goto LABEL_16;
  }

LABEL_17:
  a2[1] = *a2;
  std::vector<TState const*>::reserve(a2, v8);
  v17 = a2[1];
  v16 = a2[2];
  if (v17 >= v16)
  {
    v19 = (v17 - *a2) >> 3;
    if ((v19 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v20 = v16 - *a2;
    v21 = v20 >> 2;
    if (v20 >> 2 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a2, v22);
    }

    *(8 * v19) = a1[8];
    v18 = 8 * v19 + 8;
    v23 = a2[1] - *a2;
    v24 = (8 * v19 - v23);
    memcpy(v24, *a2, v23);
    v25 = *a2;
    *a2 = v24;
    a2[1] = v18;
    a2[2] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v17 = a1[8];
    v18 = (v17 + 1);
  }

  a2[1] = v18;
  v26 = *a2;
  if (v18 != *a2)
  {
    v27 = 0;
    do
    {
      v28 = *(v26 + 8 * v27);
      if (a3)
      {
        (*(*a3 + 24))(a3, v28, a1);
      }

      v29 = *(v28 + 8);
      if (v29)
      {
        if (*(v29 + 32) == 1)
        {
          while (1)
          {
            v29 = *(v29 + 8);
            if (!v29)
            {
              break;
            }

            if ((*(v29 + 32) & 1) == 0)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
LABEL_37:
          if (a3)
          {
            (*(*a3 + 16))(a3, v29, a1);
          }

          v30 = *(v29 + 24);
          v31 = __p[0];
          --*(__p[0] + *(v30 + 40));
          if (!v31[*(v30 + 40)])
          {
            v32 = v30;
            std::vector<TWord const*>::push_back[abi:ne200100](a2, &v32);
          }

          while (1)
          {
            v29 = *(v29 + 8);
            if (!v29)
            {
              break;
            }

            if ((*(v29 + 32) & 1) == 0)
            {
              goto LABEL_37;
            }
          }
        }
      }

      ++v27;
      v26 = *a2;
    }

    while (v27 < (a2[1] - *a2) >> 3);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2626AFF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TGraph::minimize(TGraph *this)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  TGraph::topologicalSort(this, &v20, 0);
  v2 = v20;
  v3 = v21;
  if (v21 != v20)
  {
    v4 = 0;
    do
    {
      v5 = v2[v4];
      if ((*(v5 + 32) & 1) == 0)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          if (*(v6 + 32) == 1)
          {
            while (1)
            {
              v6 = *(v6 + 8);
              if (!v6)
              {
                break;
              }

              if ((*(v6 + 32) & 1) == 0)
              {
                goto LABEL_8;
              }
            }
          }

          else
          {
LABEL_8:
            v7 = *(v6 + 48);
            if (v7 != 2 && v7 != 5)
            {
              v9 = v6;
              do
              {
                v9 = *(v9 + 8);
                if (!v9)
                {
                  goto LABEL_13;
                }
              }

              while ((*(v9 + 32) & 1) != 0);
              while (1)
              {
                v10 = *(v9 + 48);
                if (v10 != 2 && v10 != 5)
                {
                  v12 = wcscmp(**(v6 + 56), **(v9 + 56));
                  if (!v12)
                  {
                    v13 = *(v6 + 24);
                    v14 = *(v9 + 24);
                    if (v13 == v14)
                    {
                      *(v9 + 32) = 1;
                    }

                    else if (*(v13 + 2) == *(v14 + 2))
                    {
                      v15 = *v13;
                      if (v15)
                      {
                        if (*(v15 + 32) == 1)
                        {
                          while (1)
                          {
                            v15 = *v15;
                            if (!v15)
                            {
                              break;
                            }

                            if ((v15[4] & 1) == 0)
                            {
                              goto LABEL_32;
                            }
                          }
                        }

                        else
                        {
LABEL_32:
                          v16 = 0;
                          while (1)
                          {
                            v15 = *v15;
                            if (!v15)
                            {
                              break;
                            }

                            if ((v15[4] & 1) == 0)
                            {
                              ++v16;
                            }
                          }

                          if (!v16)
                          {
                            v17 = *v14;
                            if (*v14)
                            {
                              if (*(v17 + 32) == 1)
                              {
                                while (1)
                                {
                                  v17 = *v17;
                                  if (!v17)
                                  {
                                    break;
                                  }

                                  if ((v17[4] & 1) == 0)
                                  {
                                    goto LABEL_42;
                                  }
                                }
                              }

                              else
                              {
LABEL_42:
                                v18 = 0;
                                while (1)
                                {
                                  v17 = *v17;
                                  if (!v17)
                                  {
                                    break;
                                  }

                                  if ((v17[4] & 1) == 0)
                                  {
                                    ++v18;
                                  }
                                }

                                if (!v18)
                                {
                                  v19 = *(v14 + 1);
                                  if (v19)
                                  {
                                    if (*(v19 + 32) == 1)
                                    {
                                      while (1)
                                      {
                                        v19 = *(v19 + 8);
                                        if (!v19)
                                        {
                                          break;
                                        }

                                        if ((*(v19 + 32) & 1) == 0)
                                        {
                                          goto LABEL_51;
                                        }
                                      }
                                    }

                                    else
                                    {
LABEL_51:
                                      v12 = TGraph::addEdge(this, *(v6 + 24), *(v19 + 24), v19 + 48);
                                      while (1)
                                      {
                                        v19 = *(v19 + 8);
                                        if (!v19)
                                        {
                                          break;
                                        }

                                        if ((*(v19 + 32) & 1) == 0)
                                        {
                                          goto LABEL_51;
                                        }
                                      }
                                    }
                                  }

                                  TGraph::deleteVertex(v12, v14);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                do
                {
                  v9 = *(v9 + 8);
                  if (!v9)
                  {
                    goto LABEL_13;
                  }
                }

                while ((*(v9 + 32) & 1) != 0);
              }
            }

LABEL_13:
            while (1)
            {
              v6 = *(v6 + 8);
              if (!v6)
              {
                break;
              }

              if ((*(v6 + 32) & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            v2 = v20;
            v3 = v21;
          }
        }
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v2)
  {
    v21 = v2;
    operator delete(v2);
  }
}

void sub_2626B01F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void *tknPrintString(const char *a1)
{
  v2 = strlen(s_pLogPartialLine);
  if (strlen(a1) + v2 + 101 > s_nPartialLineAllocSize)
  {
    s_pLogPartialLine = &s_pStaticLogPartialLine;
    s_nPartialLineAllocSize = 0x2000;
    operator new[]();
  }

  v3 = s_pLogPartialLine;
  v4 = &s_pLogPartialLine[strlen(s_pLogPartialLine)];
  v5 = *a1;
  if (*a1)
  {
    do
    {
      if ((s_bJustPrintedNewLine & 1) == 0)
      {
        v6 = strcpy(v4, gpLogLinePrefix);
        v4 += strlen(v6);
        s_bJustPrintedNewLine = 1;
        v5 = *a1;
      }

      *v4++ = v5;
      if (*a1 == 10)
      {
        *v4 = 0;
        tknLogString(s_pLogPartialLine);
        v4 = s_pLogPartialLine;
        s_bJustPrintedNewLine = 0;
        v3 = s_pLogPartialLine;
      }

      v7 = *++a1;
      v5 = v7;
    }

    while (v7);
  }

  *v4 = 0;
  v8 = s_pLogPartialLine;

  return memmove(v8, v3, v4 - v3 + 1);
}

void *tknPrintf(const char *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x28223BE20](a1, a2);
  v5 = *MEMORY[0x277D85DE8];
  __str[0] = 0;
  vsnprintf(__str, 0x1FFEuLL, v2, va);
  return tknPrintString(__str);
}

unint64_t loggableUnicode@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  __s = v10;
  v9 = xmmword_26286B6F0;
  v11 = 1;
  {
    operator new();
  }

  TLocaleInfo::unicodeToMultiByte(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a1, &__s);
  if (*(&v9 + 1) >= v9)
  {
    if (v11)
    {
      v7 = 0;
      TBuffer<char>::insert(&__s, *(&v9 + 1), &v7, 1uLL);
      --*(&v9 + 1);
    }

    else if (v9)
    {
      __s[v9 - 1] = 0;
    }
  }

  else
  {
    __s[*(&v9 + 1)] = 0;
  }

  v4 = __s;
  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memmove(a2, v4, result);
  }

  *(a2 + v6) = 0;
  if (v11 == 1)
  {
    result = __s;
    if (__s != v10)
    {
      if (__s)
      {
        return MEMORY[0x26672B1B0]();
      }
    }
  }

  return result;
}

void sub_2626B06C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  MEMORY[0x26672B1B0](v45, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (a45 == 1 && a10 != v46 && a10 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void *operator<<(void *a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  __s = v9;
  v8 = xmmword_26286B6F0;
  v10 = 1;
  {
    operator new();
  }

  TLocaleInfo::unicodeToMultiByte(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2, &__s);
  if (*(&v8 + 1) >= v8)
  {
    if (v10)
    {
      v6 = 0;
      TBuffer<char>::insert(&__s, *(&v8 + 1), &v6, 1uLL);
      --*(&v8 + 1);
    }

    else if (v8)
    {
      __s[v8 - 1] = 0;
    }
  }

  else
  {
    __s[*(&v8 + 1)] = 0;
  }

  v4 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
  if (v10 == 1 && __s != v9 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  return a1;
}

void sub_2626B08C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  MEMORY[0x26672B1B0](v45, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (a45 == 1 && a10 != v46 && a10 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

unint64_t StartupLatticeNBestParamSpecMgr(void)
{
  v0 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v0, "LatticeNBestListMaxLength", &byte_262899963, &byte_262899963, &sLatticeNBestListMaxLengthIntHistory);
  ParamSpecMgr::addParam(qword_281051F88, v0);
  v1 = qword_281051F88;

  return ParamSpecMgr::sortParams(v1);
}

uint64_t LatticeNBestParamSet::LatticeNBestParamSet(uint64_t a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a2);
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 36) = 0;
  *a1 = &unk_287525BA0;
  *(a1 + 40) = ParamSpecMgr::ParamGetDefault_int(qword_281051F88, 1, 0, 0);
  return a1;
}

void sub_2626B0A54(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t LatticeNBestParamSet::LatticeNBestParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287525BA0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t LatticeNBestParamSet::setDefaults(LatticeNBestParamSet *this)
{
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051F88, 1, 0, 0);
  *(this + 10) = result;
  return result;
}

uint64_t LatticeNBestParamSet::sizeObject(uint64_t a1, int a2)
{
  v3 = sizeObject(a1 + 8, a2);
  v4 = 4;
  if ((a2 == 3) | gShadowDiagnosticShowIdealizedObjectSizes & 1)
  {
    v4 = 0;
  }

  return v3 + 16 * (a2 != 3) + v4;
}

uint64_t LatticeNBestParamSet::getBoolParameter(int a1, int a2)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "BOOL");
  }

  else
  {
    throwWrongParamIdValue(a2, "BOOL");
  }

  return 0;
}

uint64_t LatticeNBestParamSet::getIntParameter(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F88, 1);
      }

      if (a3 == 3)
      {
        v5 = ParamSpecMgr::getParamByParamId(qword_281051F88, 1);
      }
    }

    else
    {
      if (!a3)
      {
        return *(a1 + 40);
      }

      if (a3 == 1)
      {
        v3 = ParamSpecMgr::getParamByParamId(qword_281051F88, 1);
      }
    }

    throwWrongQueryMode(a3, "int");
  }

  else
  {
    throwWrongParamIdValue(a2, "int");
  }

  return 0;
}

double LatticeNBestParamSet::getDoubleParameter(int a1, int a2)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "double");
  }

  else
  {
    throwWrongParamIdValue(a2, "double");
  }

  return 0.0;
}

uint64_t LatticeNBestParamSet::getStringParameter(int a1, int a2)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "string");
  }

  else
  {
    throwWrongParamIdValue(a2, "string");
  }

  return 0;
}

uint64_t LatticeNBestParamSet::getEnumParameter(int a1, int a2)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "BOOL");
  }

  else
  {
    throwWrongParamIdValue(a2, "enum");
  }

  return 0;
}

double LatticeNBestParamSet::setBoolParameter(LatticeNBestParamSet *this, int a2)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "BOOL");
  }

  return throwWrongParamIdValue(a2, "BOOL");
}

void LatticeNBestParamSet::setIntParameter(LatticeNBestParamSet *this, int a2, int a3)
{
  if (a2 == 1)
  {
    ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F88, 1);
    if (ParamByParamId)
    {
    }

    IntParamSpec::validateValue(ParamByParamId, a3, 0, 0);
    if (*(this + 9))
    {

      throwParamSetSetFailed("LatticeNBestListMaxLength", "int");
    }

    else
    {
      *(this + 10) = a3;
    }
  }

  else
  {

    throwWrongParamIdValue(a2, "int");
  }
}

double LatticeNBestParamSet::setDoubleParameter(LatticeNBestParamSet *this, int a2, double a3)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "double");
  }

  return throwWrongParamIdValue(a2, "double");
}

double LatticeNBestParamSet::setStringParameter(LatticeNBestParamSet *this, int a2, const char *a3)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "string");
  }

  return throwWrongParamIdValue(a2, "string");
}

double LatticeNBestParamSet::setEnumParameter(LatticeNBestParamSet *this, int a2)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "BOOL");
  }

  return throwWrongParamIdValue(a2, "enum");
}

void LatticeNBestParamSet::~LatticeNBestParamSet(LatticeNBestParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);

  JUMPOUT(0x26672B1B0);
}

const char *conditionalAssert(const char *result, const char *a2, uint64_t a3)
{
  if (g_bCrashOnError == 1)
  {
    assertFailed(result, a2, a3);
  }

  return result;
}

void getFilePath(char *__s@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, __s);
  v3 = std::string::rfind(&v4, 47, 0xFFFFFFFFFFFFFFFFLL);
  if (v3 == -1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, ".");
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::resize(&v4, v3, 0);
    *a2 = v4;
  }
}

void sub_2626B1270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int wcsncasecmp(const __int32 *a1, const __int32 *a2, size_t n)
{
  if (!n)
  {
    return 0;
  }

  v3 = n;
  while (1)
  {
    v7 = *a1++;
    v6 = v7;
    v8 = *a2;
    if (!v7 || v8 == 0)
    {
      break;
    }

    v10 = __tolower(v6);
    v11 = __tolower(*a2);
    if (v10 < v11)
    {
      return -1;
    }

    if (v10 > v11)
    {
      return 1;
    }

    ++a2;
    if (!--v3)
    {
      return 0;
    }
  }

  if (v6 | v8)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  if (v6)
  {
    return 1;
  }

  else
  {
    return v12;
  }
}

void MrecInitModule_searchlm_kernel(void)
{
  if (!gParDebugSearchLM)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugSearchLM", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugSearchLM = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugSearchLM);
  }
}

uint64_t SearchLMScorer::SearchLMScorer(uint64_t a1, unsigned int a2, char a3, int a4, int a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v11 = (a1 + 32);
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 50) = a2 < 4;
  *(a1 + 51) = a2 == 0;
  *(a1 + 52) = 0;
  *(a1 + 54) = a3;
  *(a1 + 55) = a6;
  *(a1 + 56) = a7;
  *(a1 + 64) = a8;
  *(a1 + 72) = a9;
  *(a1 + 80) = a10;
  *(a1 + 88) = a2;
  *(a1 + 92) = a4;
  *(a1 + 96) = a5;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 192) = 0;
  v12 = a1 + 192;
  *(a1 + 152) = 0;
  v13 = a1 + 152;
  *(a1 + 129) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0xFFFF00000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  v14 = *(*VocMgr::smpVocMgr + 8);
  if (v14)
  {
    v27 = 0;
    v15 = realloc_array(0, &v27, v14, 0, 0, 1);
    v16 = v27;
    *(a1 + 16) = v27;
    *(a1 + 24) = v14;
    *(a1 + 28) = v15;
    bzero(v16, v14);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v17 = *(*VocMgr::smpVocMgr + 8);
  v18 = *(a1 + 44);
  if (v17 > v18)
  {
    DgnPrimArray<unsigned long long>::reallocElts(v11, v17 - v18, 0);
  }

  v19 = *(a1 + 40);
  if (v19 <= v17)
  {
    if (v19 < v17)
    {
      do
      {
        (*v11)[v19++] = 0;
      }

      while (v17 != v19);
    }
  }

  else
  {
    DgnIOwnArray<LMContextData *>::destructAt(v11, v17, v19 - v17);
  }

  *(a1 + 40) = v17;
  if (v17 >= 1)
  {
    v20 = VocMgr::smpVocMgr;
    v21 = v17 - 1;
    do
    {
      v22 = *(**v20 + 8 * v21);
      if (v22)
      {
        (*v11)[v21] = (*(**(v22 + 72) + 464))(*(v22 + 72));
        v20 = VocMgr::smpVocMgr;
      }

      v23 = v21-- + 1;
    }

    while (v23 > 1);
  }

  v24 = *(a1 + 164);
  if (v24 <= 7)
  {
    DgnPrimArray<unsigned int>::reallocElts(v13, 8 - v24, 0);
  }

  v25 = *(a1 + 204);
  if (v25 <= 7)
  {
    DgnPrimArray<unsigned int>::reallocElts(v12, 8 - v25, 0);
  }

  return a1;
}

{
  return SearchLMScorer::SearchLMScorer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_2626B1618(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnIOwnArray<LMContextData *>::releaseAll(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void SearchLMScorer::~SearchLMScorer(SearchLMScorer *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    MemChunkFree(v2, 0);
  }

  *(this + 17) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnIOwnArray<LMContextData *>::releaseAll(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);

  DgnPrimArray<unsigned int>::~DgnPrimArray(this);
}

void SearchLMScorer::printSize(SearchLMScorer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 126);
  if (v125)
  {
    v12 = v124;
  }

  else
  {
    v12 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &byte_262899963, a3, &byte_262899963, v12);
  v122 = a6;
  DgnString::~DgnString(&v124);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &byte_262899963);
  v14 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v14 = 12;
  }

  v15 = *(this + 2);
  v16 = *(this + 3);
  v17 = v14 + 2 * (v15 - 1) + 2;
  if (v15 <= 0)
  {
    v17 = v14;
  }

  if (v16 >= v15)
  {
    v18 = v17;
  }

  else
  {
    v18 = v14;
  }

  if (v16 >= v15)
  {
    v19 = v17 + 2 * (v16 - v15);
  }

  else
  {
    v19 = v14;
  }

  if (v16 >= v15)
  {
    v20 = 0;
  }

  else
  {
    v20 = 2 * v15;
  }

  v21 = (a3 + 1);
  v121 = a3;
  v22 = (34 - a3);
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 128);
  if (v125)
  {
    v24 = v124;
  }

  else
  {
    v24 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v21, &byte_262899963, v22, v22, v24, v19, v18, v20);
  DgnString::~DgnString(&v124);
  *a4 += v19;
  *a5 += v18;
  *v122 += v20;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  else
  {
    v25 = 16;
  }

  v26 = *(this + 6);
  v27 = *(this + 7);
  v28 = v27 >= v26;
  v29 = v27 - v26;
  if (v28)
  {
    if (v26 > 0)
    {
      v30 = (v26 - 1) + v25 + 1;
    }

    else
    {
      v30 = v25;
    }

    v25 = v30 + v29;
    v26 = 0;
  }

  else
  {
    v30 = v25;
  }

  v31 = v26;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 130);
  if (v125)
  {
    v33 = v124;
  }

  else
  {
    v33 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v21, &byte_262899963, v22, v22, v33, v25, v30, v31);
  DgnString::~DgnString(&v124);
  *a4 += v25;
  *a5 += v30;
  *v122 += v31;
  v34 = sizeObject<LMContextData *>(this + 32, 0);
  v35 = sizeObject<LMContextData *>(this + 32, 1);
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 132);
  if (v125)
  {
    v37 = v124;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v21, &byte_262899963, v22, v22, v37, v34, v35, 0);
  DgnString::~DgnString(&v124);
  *a4 += v34;
  *a5 += v35;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 134);
  if (v125)
  {
    v39 = v124;
  }

  else
  {
    v39 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v21, &byte_262899963, v22, v22, v39, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 136);
  if (v125)
  {
    v41 = v124;
  }

  else
  {
    v41 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v21, &byte_262899963, v22, v22, v41, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 137);
  if (v125)
  {
    v43 = v124;
  }

  else
  {
    v43 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v21, &byte_262899963, v22, v22, v43, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 139);
  if (v125)
  {
    v45 = v124;
  }

  else
  {
    v45 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v21, &byte_262899963, v22, v22, v45, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 141);
  if (v125)
  {
    v47 = v124;
  }

  else
  {
    v47 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v21, &byte_262899963, v22, v22, v47, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 143);
  if (v125)
  {
    v49 = v124;
  }

  else
  {
    v49 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v21, &byte_262899963, v22, v22, v49, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v50 = 4;
  }

  else
  {
    v50 = 8;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 145);
  if (v125)
  {
    v52 = v124;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v21, &byte_262899963, v22, v22, v52, v50, v50, 0);
  DgnString::~DgnString(&v124);
  *a4 += v50;
  *a5 += v50;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 4;
  }

  else
  {
    v53 = 8;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 147);
  if (v125)
  {
    v55 = v124;
  }

  else
  {
    v55 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v21, &byte_262899963, v22, v22, v55, v53, v53, 0);
  DgnString::~DgnString(&v124);
  *a4 += v53;
  *a5 += v53;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v56 = 4;
  }

  else
  {
    v56 = 8;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 149);
  if (v125)
  {
    v58 = v124;
  }

  else
  {
    v58 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v21, &byte_262899963, v22, v22, v58, v56, v56, 0);
  DgnString::~DgnString(&v124);
  *a4 += v56;
  *a5 += v56;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 4;
  }

  else
  {
    v59 = 8;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 151);
  if (v125)
  {
    v61 = v124;
  }

  else
  {
    v61 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v21, &byte_262899963, v22, v22, v61, v59, v59, 0);
  DgnString::~DgnString(&v124);
  *a4 += v59;
  *a5 += v59;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 152);
  if (v125)
  {
    v63 = v124;
  }

  else
  {
    v63 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v21, &byte_262899963, v22, v22, v63, 4, 4, 0);
  DgnString::~DgnString(&v124);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 154);
  if (v125)
  {
    v65 = v124;
  }

  else
  {
    v65 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v21, &byte_262899963, v22, v22, v65, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 156);
  if (v125)
  {
    v67 = v124;
  }

  else
  {
    v67 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v21, &byte_262899963, v22, v22, v67, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 158);
  if (v125)
  {
    v69 = v124;
  }

  else
  {
    v69 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v21, &byte_262899963, v22, v22, v69, 4, 4, 0);
  DgnString::~DgnString(&v124);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 160);
  if (v125)
  {
    v71 = v124;
  }

  else
  {
    v71 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v21, &byte_262899963, v22, v22, v71, 4, 4, 0);
  DgnString::~DgnString(&v124);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 12;
  }

  else
  {
    v72 = 16;
  }

  v73 = *(this + 28);
  v74 = *(this + 29);
  if (v74 >= v73)
  {
    v75 = 0;
    if (v73 > 0)
    {
      v72 += 4 * (v73 - 1) + 4;
    }

    v76 = v72 + 4 * (v74 - v73);
  }

  else
  {
    v75 = 4 * v73;
    v76 = v72;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 162);
  if (v125)
  {
    v78 = v124;
  }

  else
  {
    v78 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v21, &byte_262899963, v22, v22, v78, v76, v72, v75);
  DgnString::~DgnString(&v124);
  *a4 += v76;
  *a5 += v72;
  *v122 += v75;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v79 = 4;
  }

  else
  {
    v79 = 8;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 163);
  if (v125)
  {
    v81 = v124;
  }

  else
  {
    v81 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v21, &byte_262899963, v22, v22, v81, v79, v79, 0);
  DgnString::~DgnString(&v124);
  *a4 += v79;
  *a5 += v79;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v82 = 4;
  }

  else
  {
    v82 = 8;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 164);
  if (v125)
  {
    v84 = v124;
  }

  else
  {
    v84 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v21, &byte_262899963, v22, v22, v84, v82, v82, 0);
  DgnString::~DgnString(&v124);
  *a4 += v82;
  *a5 += v82;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v85 = 4;
  }

  else
  {
    v85 = 8;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 165);
  if (v125)
  {
    v87 = v124;
  }

  else
  {
    v87 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v21, &byte_262899963, v22, v22, v87, v85, v85, 0);
  DgnString::~DgnString(&v124);
  *a4 += v85;
  *a5 += v85;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 166);
  if (v125)
  {
    v89 = v124;
  }

  else
  {
    v89 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v21, &byte_262899963, v22, v22, v89, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 12;
  }

  else
  {
    v90 = 16;
  }

  v91 = *(this + 40);
  v92 = *(this + 41);
  if (v92 >= v91)
  {
    v93 = 0;
    if (v91 > 0)
    {
      v90 += 4 * (v91 - 1) + 4;
    }

    v94 = v90 + 4 * (v92 - v91);
  }

  else
  {
    v93 = 4 * v91;
    v94 = v90;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 168);
  if (v125)
  {
    v96 = v124;
  }

  else
  {
    v96 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v21, &byte_262899963, v22, v22, v96, v94, v90, v93);
  DgnString::~DgnString(&v124);
  *a4 += v94;
  *a5 += v90;
  *v122 += v93;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 170);
  if (v125)
  {
    v98 = v124;
  }

  else
  {
    v98 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v21, &byte_262899963, v22, v22, v98, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 172);
  if (v125)
  {
    v100 = v124;
  }

  else
  {
    v100 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v21, &byte_262899963, v22, v22, v100, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 174);
  if (v125)
  {
    v102 = v124;
  }

  else
  {
    v102 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v21, &byte_262899963, v22, v22, v102, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 176);
  if (v125)
  {
    v104 = v124;
  }

  else
  {
    v104 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v21, &byte_262899963, v22, v22, v104, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 178);
  if (v125)
  {
    v106 = v124;
  }

  else
  {
    v106 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v21, &byte_262899963, v22, v22, v106, 4, 4, 0);
  DgnString::~DgnString(&v124);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v107 = 4;
  }

  else
  {
    v107 = 8;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 179);
  if (v125)
  {
    v109 = v124;
  }

  else
  {
    v109 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v21, &byte_262899963, v22, v22, v109, v107, v107, 0);
  DgnString::~DgnString(&v124);
  *a4 += v107;
  *a5 += v107;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 181);
  if (v125)
  {
    v111 = v124;
  }

  else
  {
    v111 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v21, &byte_262899963, v22, v22, v111, 1, 1, 0);
  DgnString::~DgnString(&v124);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v112 = 12;
  }

  else
  {
    v112 = 16;
  }

  v113 = *(this + 50);
  v114 = *(this + 51);
  if (v114 >= v113)
  {
    v115 = 0;
    if (v113 > 0)
    {
      v112 += 4 * (v113 - 1) + 4;
    }

    v116 = v112 + 4 * (v114 - v113);
  }

  else
  {
    v115 = 4 * v113;
    v116 = v112;
  }

  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 183);
  if (v125)
  {
    v118 = v124;
  }

  else
  {
    v118 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v21, &byte_262899963, v22, v22, v118, v116, v112, v115);
  DgnString::~DgnString(&v124);
  *a4 += v116;
  *a5 += v112;
  *v122 += v115;
  getShipObjectSizeDescription(&v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 184);
  if (v125)
  {
    v120 = v124;
  }

  else
  {
    v120 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v119, v121, &byte_262899963, (35 - v121), (35 - v121), v120, *a4, *a5, *v122);
  DgnString::~DgnString(&v124);
}

void sub_2626B2720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<LMContextData *>(uint64_t a1, uint64_t a2)
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
          v9 += (*(*v10 + 16))(v10, a2);
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

void SearchLMScorer::endSearchLMScorerSyncRecog(SearchLMScorer *this)
{
  if (*(this + 22) != 6)
  {
    if (*(this + 2))
    {
      v2 = 0;
      v3 = VocMgr::smpVocMgr;
      do
      {
        v4 = *(*this + 2 * v2);
        v5 = *(*(**v3 + 8 * v4) + 72);
        (*(*v5 + 424))(v5, *(this + 48), *(*(this + 4) + 8 * v4));
        ++v2;
      }

      while (v2 < *(this + 2));
    }

    *(this + 2) = 0;
    v6 = *(this + 6);
    if (v6)
    {
      bzero(*(this + 2), v6);
    }

    *(this + 49) = 0;
  }
}

uint64_t SearchLMScorer::beginSearchLMScorerLMRescoring(uint64_t this, char a2)
{
  v3 = this;
  if (*(this + 8))
  {
    v4 = 0;
    v5 = VocMgr::smpVocMgr;
    do
    {
      v6 = *(*v3 + 2 * v4);
      v7 = *(*(**v5 + 8 * v6) + 72);
      this = (*(*v7 + 416))(v7, *(*(v3 + 32) + 8 * v6));
      ++v4;
    }

    while (v4 < *(v3 + 8));
  }

  *(v3 + 52) = a2;
  *(v3 + 53) = 1;
  return this;
}

uint64_t *SearchLMScorer::setInitialContext(uint64_t *result, uint64_t *a2)
{
  if (*(result + 22) != 6)
  {
    v3 = result;
    v4 = *(a2 + 2);
    if (v4 >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }

    v6 = *(result + 29);
    if (v5 > v6)
    {
      result = DgnPrimArray<unsigned int>::reallocElts((result + 13), v5 - v6, 0);
    }

    *(v3 + 28) = v5;
    if (v4)
    {
      v7 = *a2;
      v8 = v3[13];
      v9 = -1;
      do
      {
        *v8++ = *(v7 + 4 * (v9 + *(a2 + 2)));
        --v9;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t SearchLMScorer::lmScoreFinalSilenceWithoutActualLM(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  SearchLMScorer::setContext(a1, a2, a3, 0, 0, 0, 0, 0, 0xFAFFFFFC, 0xFAFFFFFC);
  if (*(a1 + 88) == 6 || *(a1 + 160) && ((**(a1 + 152) >> 25) - 125) >= 2 && *(a1 + 168) != 1)
  {
    return 0;
  }

  else
  {
    return *(a1 + 96);
  }
}

void SearchLMScorer::setContext(uint64_t result, unsigned int a2, unsigned int *a3, uint64_t *a4, int a5, uint64_t a6, LMStats *a7, char a8, unsigned int a9, unsigned int a10)
{
  v17 = *(result + 120);
  if (v17)
  {
    *(result + 128) = *(v17 + 2216);
  }

  if (*(result + 88) == 6)
  {
    goto LABEL_73;
  }

  *(result + 184) = a8;
  v18 = *(result + 128);
  v19 = *(v18 + 68);
  if ((v19 & 0xFFFFFFFD) != 0)
  {
    isLMAllowedForState = 1;
  }

  else
  {
    isLMAllowedForState = Constraint::isLMAllowedForState(v18, a3);
    v18 = *(result + 128);
    v19 = *(v18 + 68);
  }

  *(result + 169) = isLMAllowedForState;
  if ((v19 & 0xFFFFFFFD) != 0)
  {
    isLeftWBAllowedForState = 1;
  }

  else
  {
    isLeftWBAllowedForState = Constraint::isLeftWBAllowedForState(v18, a3);
    v18 = *(result + 128);
    v19 = *(v18 + 68);
  }

  *(result + 170) = isLeftWBAllowedForState;
  if ((v19 & 0xFFFFFFFD) != 0)
  {
    isRightWBAllowedForState = 1;
  }

  else
  {
    isRightWBAllowedForState = Constraint::isRightWBAllowedForState(v18, a3);
    v18 = *(result + 128);
    v19 = *(v18 + 68);
  }

  *(result + 171) = isRightWBAllowedForState;
  if ((v19 & 0xFFFFFFFD) != 0)
  {
    WeightsForState = 0xFFFF;
  }

  else
  {
    WeightsForState = Constraint::getWeightsForState(v18, a3);
  }

  *(result + 172) = WeightsForState;
  v24 = *a3;
  *(result + 168) = v24 == -50331650;
  v25 = VocMgr::smpVocMgr;
  *(result + 160) = 0;
  if (*(result + 184) == 1)
  {
    Root = VocMgr::getRoot(v25, a9);
    v27 = *(result + 160);
    if (v27 == *(result + 164))
    {
      DgnPrimArray<unsigned int>::reallocElts(result + 152, 1, 1);
      v27 = *(result + 160);
    }

    *(*(result + 152) + 4 * v27) = Root;
    v28 = *(result + 160) + 1;
    *(result + 160) = v28;
    if (*(result + 50) != 1)
    {
      goto LABEL_44;
    }

    v29 = VocMgr::getRoot(v25, v24);
    v30 = *(result + 160);
    if (v30 == *(result + 164))
    {
      DgnPrimArray<unsigned int>::reallocElts(result + 152, 1, 1);
      v30 = *(result + 160);
    }

    *(*(result + 152) + 4 * v30) = v29;
    v28 = *(result + 160) + 1;
    *(result + 160) = v28;
    if (*(result + 52) != 1)
    {
      goto LABEL_44;
    }

    v31 = a3[5];
    if (v31 == -83886084)
    {
      v32 = a3[4];
    }

    else
    {
      v32 = v31;
    }
  }

  else
  {
    v33 = VocMgr::getRoot(v25, v24);
    v34 = *(result + 160);
    if (v34 == *(result + 164))
    {
      DgnPrimArray<unsigned int>::reallocElts(result + 152, 1, 1);
      v34 = *(result + 160);
    }

    *(*(result + 152) + 4 * v34) = v33;
    v28 = *(result + 160) + 1;
    *(result + 160) = v28;
    if (*(result + 50) != 1)
    {
      goto LABEL_44;
    }

    v35 = a3[5];
    if (v35 == -83886084)
    {
      v36 = VocMgr::getRoot(v25, a3[4]);
      v37 = *(result + 160);
      if (v37 == *(result + 164))
      {
        DgnPrimArray<unsigned int>::reallocElts(result + 152, 1, 1);
        v37 = *(result + 160);
      }

      *(*(result + 152) + 4 * v37) = v36;
      v28 = *(result + 160) + 1;
      *(result + 160) = v28;
      if (*(result + 52) == 1)
      {
        if (a10 == -83886084)
        {
          v38 = a2;
        }

        else
        {
          v38 = a10;
        }

        v39 = VocMgr::getRoot(v25, v38);
        DgnPrimArray<unsigned int>::add((result + 152), v39);
        v28 = *(result + 160);
      }

      goto LABEL_44;
    }

    v40 = VocMgr::getRoot(v25, v35);
    v41 = *(result + 160);
    if (v41 == *(result + 164))
    {
      DgnPrimArray<unsigned int>::reallocElts(result + 152, 1, 1);
      v41 = *(result + 160);
    }

    *(*(result + 152) + 4 * v41) = v40;
    v28 = *(result + 160) + 1;
    *(result + 160) = v28;
    if (*(result + 52) != 1)
    {
      goto LABEL_44;
    }

    v32 = a3[4];
  }

  v42 = VocMgr::getRoot(v25, v32);
  v43 = *(result + 160);
  if (v43 == *(result + 164))
  {
    DgnPrimArray<unsigned int>::reallocElts(result + 152, 1, 1);
    v43 = *(result + 160);
  }

  *(*(result + 152) + 4 * v43) = v42;
  v28 = *(result + 160) + 1;
  *(result + 160) = v28;
LABEL_44:
  if (v28)
  {
    v44 = 0;
    v45 = *(result + 152);
    while (1)
    {
      v47 = *v45++;
      v46 = v47;
      if (v47 == -50331650)
      {
        break;
      }

      if (v46 == -83886084)
      {
        v28 = -v44;
        goto LABEL_59;
      }

      --v44;
      if (!(v28 + v44))
      {
        goto LABEL_59;
      }
    }

    *(result + 160) = -v44;
    v48 = *(result + 112);
    v49 = *(result + 164);
    if (v48 - v44 > v49)
    {
      DgnPrimArray<unsigned int>::reallocElts(result + 152, v48 - v49 - v44, 1);
      v48 = *(result + 112);
    }

    if (v48)
    {
      v50 = 0;
      v51 = *(result + 104);
      v52 = *(result + 152);
      do
      {
        *(v52 + 4 * (v50 + *(result + 160))) = *(v51 + 4 * v50);
        ++v50;
        v53 = *(result + 112);
      }

      while (v50 < v53);
    }

    else
    {
      LODWORD(v53) = 0;
    }

    v28 = *(result + 160) + v53;
  }

LABEL_59:
  if (*(result + 52) == 1)
  {
    if (v28 >= 3)
    {
      v28 = 3;
    }
  }

  else
  {
    v54 = v28 != 0;
    if (v28 >= 2)
    {
      v28 = 2;
    }

    if (*(result + 50) != 1)
    {
      v28 = v54;
    }
  }

  *(result + 160) = v28;
  if (a5)
  {
    *(result + 176) = a6;
    if (*(result + 8))
    {
      v55 = 0;
      do
      {
        SearchLMScorer::setContext(result, *(*result + 2 * v55++), 0, a7);
      }

      while (v55 < *(result + 8));
    }
  }

  if (a4 && (*(result + 50) & 1) != 0)
  {
    SearchLMScorer::setLMStates(result, a4);
  }

LABEL_73:
  if (a5)
  {
    *(result + 144) = 1;
  }
}

uint64_t SearchLMScorer::lmScoreFinalSilence(SearchLMScorer *this, LMStats *a2)
{
  if (*(this + 22) == 6)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  if (!*(this + 40))
  {
    return *(this + 24);
  }

  v6 = **(this + 19) >> 25;
  if ((v6 - 125) < 2 || *(this + 168) == 1)
  {
    return *(this + 24);
  }

  if (*(this + 169) != 1)
  {
    return 0;
  }

  if ((*(*(this + 2) + v6) & 1) == 0)
  {
    SearchLMScorer::activateVoc(this, **(this + 19) >> 25, 0, a2);
  }

  v8 = *(*(**VocMgr::smpVocMgr + 8 * v6) + 72);
  v10 = 0;
  if (*(this + 53))
  {
    v9 = 1;
  }

  else
  {
    v9 = *(this + 54) ^ 1;
  }

  return (*(*v8 + 512))(v8, 16777213, *(this + 43), a2, *(*(this + 4) + 8 * v6), v9 & 1, &v10);
}

uint64_t SearchLMScorer::activateVoc(SearchLMScorer *this, int a2, unsigned int *a3, LMStats *a4)
{
  v8 = *(**VocMgr::smpVocMgr + 8 * a2);
  result = (*(**(v8 + 72) + 408))(*(v8 + 72), *(this + 48), *(*(this + 4) + 8 * a2));
  if (*(this + 144) == 1)
  {
    result = SearchLMScorer::setContext(this, a2, a3, a4);
  }

  v10 = *(this + 2);
  if (v10 == *(this + 3))
  {
    result = DgnPrimArray<short>::reallocElts(this, 1, 1);
    v10 = *(this + 2);
  }

  *(*this + 2 * v10) = a2;
  *(this + 2) = v10 + 1;
  *(*(this + 2) + a2) = 1;
  if ((*(this + 49) & 1) == 0)
  {
    result = (*(**(v8 + 72) + 696))(*(v8 + 72));
    *(this + 49) = result;
  }

  return result;
}

uint64_t SearchLMScorer::lmScoreNonAcousticWord(SearchLMScorer *this, unsigned int a2, uint64_t a3, LMStats *a4)
{
  if (*(this + 22) == 6)
  {
    return 0;
  }

  v16 = v4;
  v17 = v5;
  v11 = a2 >> 25;
  if ((*(*(this + 2) + v11) & 1) == 0)
  {
    SearchLMScorer::activateVoc(this, a2 >> 25, 0, a4);
  }

  v12 = *(**VocMgr::smpVocMgr + 8 * v11);
  v15 = 0;
  v13 = *(v12 + 72);
  if (*(this + 53))
  {
    v14 = 1;
  }

  else
  {
    v14 = *(this + 54) ^ 1;
  }

  return (*(*v13 + 512))(v13, a2 & 0xFFFFFF, a3, a4, *(*(this + 4) + 8 * v11), v14 & 1, &v15);
}

uint64_t SearchLMScorer::lmScoreNonSilCwidac(uint64_t a1, unsigned int *a2, LMStats *a3)
{
  if (*(a1 + 88) == 6)
  {
    return 0;
  }

  v37 = v3;
  v38 = v4;
  v9 = *a2;
  v36 = a2[2];
  if (*(a1 + 160))
  {
    v10 = **(a1 + 152);
    v11 = v10 >> 25;
    v12 = v10 & 0xFFFFFF;
  }

  else
  {
    v12 = 0xFFFFFF;
    v11 = 125;
  }

  v13 = *(a1 + 80);
  v14 = !v13 || v12 >= *(v13 + 8) || ((*(*v13 + 4 * (v12 >> 5)) >> v12) & 1) == 0;
  v15 = *(a1 + 72);
  if (v15 && *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v15, &v36))
  {
    v16 = *(a1 + 128);
    if ((*(v16 + 68) & 0xFFFFFFFD) == 0)
    {
      v14 &= Constraint::isLeftWBAllowedForState(v16, a2);
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    if (*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v17, &v36))
    {
LABEL_17:
      LODWORD(v17) = 0;
      goto LABEL_18;
    }

    v17 = *(a1 + 64);
    if (v17)
    {
      if (*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v17, &v36))
      {
        goto LABEL_17;
      }

      v28 = *(a1 + 128);
      if ((*(v28 + 68) & 0xFFFFFFFD) != 0)
      {
        goto LABEL_19;
      }

      LODWORD(v17) = Constraint::isLeftWBAllowedForState(v28, a2);
    }
  }

LABEL_18:
  if (((v14 | v17) & 1) == 0)
  {
    v20 = 0;
    goto LABEL_24;
  }

LABEL_19:
  v18 = *(*(**VocMgr::smpVocMgr + 8 * v11) + 72);
  v35 = 0;
  if (*(a1 + 53))
  {
    v19 = 1;
  }

  else
  {
    v19 = *(a1 + 54) ^ 1;
  }

  v20 = (*(*v18 + 512))(v18, 16777213, *(a1 + 172), a3, *(*(a1 + 32) + 8 * v11), v19 & 1, &v35);
LABEL_24:
  v21 = *(a1 + 128);
  if ((*(v21 + 68) & 0xFFFFFFFD) == 0 && !Constraint::isLMAllowedForState(v21, a2))
  {
    return (*(a1 + 92) + v20);
  }

  v22 = v9 >> 25;
  v23 = *(a1 + 56);
  if (*(*(a1 + 16) + (v9 >> 25)))
  {
    if (v23 && !*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v23, &v36))
    {
      v24 = *(*(**VocMgr::smpVocMgr + 8 * v22) + 72);
      (*(*v24 + 480))(v24, *(*(a1 + 32) + 8 * v22));
      SearchLMScorer::setContext(a1, v9 >> 25, &v36, a3);
    }
  }

  else
  {
    if (v23 && !*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v23, &v36))
    {
      v27 = &v36;
      v25 = a1;
      v26 = v9 >> 25;
    }

    else
    {
      v25 = a1;
      v26 = v9 >> 25;
      v27 = 0;
    }

    SearchLMScorer::activateVoc(v25, v26, v27, a3);
  }

  v29 = *(a1 + 128);
  if ((*(v29 + 68) & 0xFFFFFFFD) != 0)
  {
    WeightsForState = 0xFFFFLL;
  }

  else
  {
    WeightsForState = Constraint::getWeightsForState(v29, a2);
  }

  v31 = *(**VocMgr::smpVocMgr + 8 * v22);
  v34 = 0;
  v32 = *(v31 + 72);
  if (*(a1 + 53))
  {
    v33 = 1;
  }

  else
  {
    v33 = *(a1 + 54) ^ 1;
  }

  return v20 + (*(*v32 + 512))(v32, v9 & 0xFFFFFF, WeightsForState, a3, *(*(a1 + 32) + 8 * v22), v33 & 1, &v34);
}

uint64_t SearchLMScorer::setContext(SearchLMScorer *this, int a2, unsigned int *a3, LMStats *a4)
{
  SearchLMScorer::makeRestrictedContext(this, a2, a3);
  v5 = *(**(*(**VocMgr::smpVocMgr + 8 * a2) + 72) + 472);

  return v5();
}

void SearchLMScorer::makeRestrictedContext(SearchLMScorer *this, int a2, unsigned int *a3)
{
  v6 = *(this + 22);
  if ((v6 - 1) >= 3)
  {
    if (v6)
    {
      if (v6 != 4)
      {
        *(this + 50) = 0;
        return;
      }

      v7 = *(this + 40) != 0;
    }

    else
    {
      v7 = *(this + 40);
    }
  }

  else if (*(this + 40) >= 2u)
  {
    v7 = 2;
  }

  else
  {
    v7 = *(this + 40);
  }

  v8 = *(this + 51);
  if (v7 <= v8)
  {
    *(this + 50) = v7;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 192, v7 - v8, 0);
    *(this + 50) = v7;
  }

  if (a3 && *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(*(this + 8), a3))
  {
    **(this + 24) = 16777214;
    LODWORD(v9) = 1;
  }

  else if (*(this + 169) == 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(this + 19) + 4 * v9);
      if (a3)
      {
        Bucket = HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(*(this + 7), a3);
        if (v9 == 1 && !*Bucket && *(this + 170) == 1)
        {
          break;
        }
      }

      if (v10 >> 25 != a2 && (v10 >> 25) - 127 < 0xFFFFFFFE)
      {
        goto LABEL_29;
      }

      *(*(this + 24) + 4 * v9++) = v10 & 0xFFFFFF;
      if (v7 == v9)
      {
        return;
      }
    }

    *(*(this + 24) + 4) = 16777214;
    LODWORD(v9) = 2;
  }

  else
  {
    LODWORD(v9) = 0;
  }

LABEL_29:
  if (v9 < v7)
  {
    v13 = (*(this + 24) + 4 * v9);

    memset_pattern16(v13, &unk_262882000, 4 * (v7 + ~v9) + 4);
  }
}

void SearchLMScorer::setLMStates(SearchLMScorer *this, uint64_t *a2)
{
  v2 = a2;
  if (!*(this + 40))
  {
    v23 = *(a2 + 2);
    if (v23 >= 1)
    {
      v24 = *a2;
      v25 = vdup_n_s32(0xFAFFFFFC);
      do
      {
        v26 = v24 + 16 * (v23 - 1);
        v27 = *(v26 + 8);
        if (v27 >= 1)
        {
          v28 = *v26;
          v29 = v27 + 1;
          v30 = (v28 + 44 * v27 - 28);
          do
          {
            *v30 = v25;
            v30 = (v30 - 44);
            --v29;
          }

          while (v29 > 1);
        }

        v14 = v23-- < 2;
      }

      while (!v14);
    }

    return;
  }

  v4 = **(this + 19) >> 25;
  if (v4 == 125 || (*(this + 169) & 1) == 0)
  {
    v15 = *(v2 + 2);
    if (v15 >= 1)
    {
      v16 = *v2;
      v17 = vdup_n_s32(0xFAFFFFFC);
      do
      {
        v18 = v16 + 16 * (v15 - 1);
        v19 = *(v18 + 8);
        if (v19 >= 1)
        {
          v20 = *v18;
          v21 = v19 + 1;
          v22 = (v20 + 44 * v19 - 28);
          do
          {
            *v22 = v17;
            v22 = (v22 - 44);
            --v21;
          }

          while (v21 > 1);
        }

        v14 = v15-- < 2;
      }

      while (!v14);
    }

    return;
  }

  SearchLMScorer::makeRestrictedContext(this, v4, 0);
  if (!*(this + 50) || (v5 = **(this + 24), v5 == 0xFFFFFF) || (v53 = VocMgr::smpVocMgr, v5 <= 0xFFFFF3) && (v31 = *(*(**VocMgr::smpVocMgr + ((**(this + 19) >> 22) & 0x3F8)) + 72), ((*(*v31 + 440))(v31) & 1) == 0) && (*(this + 55) & 1) == 0)
  {
    v6 = *(v2 + 2);
    if (v6 >= 1)
    {
      v7 = *v2;
      v8 = vdup_n_s32(0xFAFFFFFC);
      do
      {
        v9 = v7 + 16 * (v6 - 1);
        v10 = *(v9 + 8);
        if (v10 >= 1)
        {
          v11 = *v9;
          v12 = v10 + 1;
          v13 = (v11 + 44 * v10 - 28);
          do
          {
            *v13 = v8;
            v13 = (v13 - 44);
            --v12;
          }

          while (v12 > 1);
        }

        v14 = v6-- < 2;
      }

      while (!v14);
    }

    return;
  }

  Root = -50331650;
  if (**(this + 24) != 16777214)
  {
    Root = VocMgr::getRoot(v53, **(this + 19));
  }

  v54 = -83886084;
  if (*(this + 184) == 1)
  {
    v54 = -50331650;
    if (*(*(this + 24) + 4) != 16777214)
    {
      v54 = VocMgr::getRoot(v53, *(*(this + 19) + 4));
    }
  }

  v33 = *(v2 + 2);
  if (!v33)
  {
    return;
  }

  v34 = 0;
  v35 = Root >> 25;
  v55 = 0;
  v36 = 127;
  v37 = vdup_n_s32(0xFAFFFFFC);
  v52 = v2;
  do
  {
    v38 = *v2 + 16 * v34;
    if (!*(v38 + 8))
    {
      goto LABEL_84;
    }

    v39 = 0;
    v40 = 0;
    v41 = *v38;
    do
    {
      v42 = *(v41 + v39);
      v43 = v42 >> 25;
      v44 = *(this + 16);
      v45 = *(v44 + 68) & 0xFFFFFFFD;
      if (*(this + 184))
      {
        if (!v45 && !Constraint::isLMAllowedForState(v44, (v41 + v39)) || v42 >> 27 == 31 || v43 != v35)
        {
          v41 = *v38;
          *(*v38 + v39 + 16) = v37;
          goto LABEL_73;
        }

        if (v35 == v54 >> 25)
        {
          goto LABEL_51;
        }

        if (*(*(this + 24) + 4) == 16777214)
        {
          if (v35 != v36)
          {
            v50 = *(*(**v53 + 8 * v35) + 72);
            if ((*(*v50 + 440))(v50, 16777214) & 1) != 0 || (*(this + 55))
            {
              v55 = 1;
              v46 = v54;
              goto LABEL_81;
            }

            v55 = 0;
LABEL_80:
            v46 = -83886084;
            goto LABEL_81;
          }

          if (v55)
          {
            v55 = 1;
LABEL_51:
            v46 = v54;
            v43 = v36;
LABEL_81:
            v41 = *v38;
            v51 = *v38 + v39;
            *(v51 + 16) = v46;
            *(v51 + 20) = Root;
            goto LABEL_72;
          }

          v55 = 0;
        }

        v43 = v36;
        goto LABEL_80;
      }

      if (!v45 && !Constraint::isLMAllowedForState(v44, (v41 + v39)) || v42 >> 27 == 31)
      {
        goto LABEL_69;
      }

      if (v43 != v35)
      {
        if (**(this + 24) != 16777214)
        {
          goto LABEL_69;
        }

        if (v43 != v36)
        {
          v48 = *(*(**v53 + 8 * v43) + 72);
          if ((*(*v48 + 440))(v48, 16777214) & 1) != 0 || (*(this + 55))
          {
            v55 = 1;
            v47 = Root;
            goto LABEL_71;
          }

          v55 = 0;
LABEL_70:
          v47 = -83886084;
          goto LABEL_71;
        }

        if ((v55 & 1) == 0)
        {
          v55 = 0;
LABEL_69:
          v43 = v36;
          goto LABEL_70;
        }

        v55 = 1;
      }

      v47 = Root;
      v43 = v36;
LABEL_71:
      v41 = *v38;
      v49 = *v38 + v39;
      *(v49 + 16) = v47;
      *(v49 + 20) = -83886084;
LABEL_72:
      v36 = v43;
LABEL_73:
      ++v40;
      v39 += 44;
    }

    while (v40 < *(v38 + 8));
    v2 = v52;
    v33 = *(v52 + 2);
LABEL_84:
    ++v34;
  }

  while (v34 < v33);
}

uint64_t *DgnPrimArray<unsigned int>::add(uint64_t *result, int a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result, 1, 1);
    v4 = *(v3 + 2);
  }

  *(*v3 + 4 * v4) = a2;
  ++*(v3 + 2);
  return result;
}

uint64_t SearchLMScorer::unsetContext(uint64_t this)
{
  v1 = this;
  if (*(this + 88) != 6 && *(this + 8))
  {
    v2 = 0;
    do
    {
      this = (*(**(*(**VocMgr::smpVocMgr + 8 * *(*v1 + 2 * v2++)) + 72) + 480))();
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 176) = 0;
  *(v1 + 144) = 0;
  return this;
}

void *DgnIOwnArray<LMContextData *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<LMContextData>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
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

void (***DgnIOwnArray<LMContextData *>::destructAt(void (***result)(void), int a2, int a3))(void)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<LMContextData>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

void (***DgnDelete<LMContextData>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void BitArray::setSize(BitArray *this, unsigned int a2)
{
  v4 = *(this + 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    BitArray::reallocElts(this, v6, 0);
  }

  else
  {
    v7 = *(this + 2);
    if (v7 > a2)
    {
      BitArray::clearRange(this, a2, v7);
    }
  }

  *(this + 2) = a2;
}

void BitArray::BitArray(BitArray *this, unsigned int a2)
{
  *this = 0;
  *(this + 1) = 0;
  BitArray::setSize(this, a2);
}

int **BitArray::copy(int **result, int **a2, unsigned int a3)
{
  if (result != a2)
  {
    v3 = a3 & 0xFFFFFFE0;
    if (a3 >= 0x20)
    {
      v4 = a3 >> 5;
      v5 = *a2;
      v6 = *result;
      do
      {
        v7 = *v5++;
        *v6++ = v7;
        --v4;
      }

      while (v4);
    }

    if (v3 != a3)
    {
      v8 = *a2;
      do
      {
        v9 = v3 >> 5;
        v10 = 1 << v3;
        if ((v8[v3 >> 5] & (1 << v3)) != 0)
        {
          v11 = (*result)[v9] | v10;
        }

        else
        {
          v11 = (*result)[v9] & ~v10;
        }

        (*result)[v9] = v11;
        ++v3;
      }

      while (v3 < a3);
    }
  }

  return result;
}

void BitArray::BitArray(BitArray *this, const BitArray *a2)
{
  *this = 0;
  *(this + 1) = 0;
  BitArray::setSize(this, *(a2 + 2));
  BitArray::copy(this, a2, *(this + 2));
}

int **BitArray::operator=(int **this, uint64_t a2)
{
  if (this != a2)
  {
    v4 = this;
    if (*(this + 2) <= *(this + 3))
    {
      v5 = *this;
      if (*v4)
      {
        MemChunkFree(v5, 0);
      }
    }

    *v4 = 0;
    v4[1] = 0;
    BitArray::setSize(v4, *(a2 + 8));
    v6 = *(v4 + 2);

    return BitArray::copy(v4, a2, v6);
  }

  return this;
}

uint64_t *BitArray::releaseAll(uint64_t *this)
{
  v1 = this;
  if (*(this + 2) <= *(this + 3))
  {
    this = *this;
    if (*v1)
    {
      this = MemChunkFree(this, 0);
    }
  }

  *v1 = 0;
  v1[1] = 0;
  return this;
}

void BitArray::~BitArray(BitArray *this)
{
  if (*(this + 2) <= *(this + 3))
  {
    v2 = *this;
    if (*this)
    {
      MemChunkFree(v2, 0);
    }
  }

  *this = 0;
  *(this + 1) = 0;
}

void BitArray::reallocElts(BitArray *this, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(this + 3));
  }

  v5 = *(this + 3) + 31;
  v8 = 0;
  v6 = realloc_array(*this, &v8, ((v5 + v3) >> 3) & 0x1FFFFFFC, 4 * (v5 >> 5), 4 * (v5 >> 5), 1);
  *(this + 3) = (8 * v6) & 0xFFFFFFE0;
  v7 = v8;
  *this = v8;
  bzero(&v7[4 * (v5 >> 5)], 4 * (((v6 >> 2) & 0x7FFFFFF) - (v5 >> 5)));
}

void BitArray::compact(BitArray *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  if (v1 != v2)
  {
    if (v1)
    {
      v4 = (v1 + 31) >> 5;
      v8 = 0;
      v5 = realloc_array(*this, &v8, 4 * v4, 4 * v4, ((v2 + 31) >> 3) & 0x1FFFFFFC, 0);
      *(this + 3) = (8 * v5) & 0xFFFFFFE0;
      v6 = v8;
      *this = v8;
      bzero(&v6[4 * v4], 4 * (((v5 >> 2) & 0x7FFFFFF) - v4));
    }

    else
    {
      v7 = *this;
      if (*this)
      {
        MemChunkFree(v7, 0);
      }

      *this = 0;
      *(this + 1) = 0;
    }
  }
}

void BitArray::clearRange(BitArray *this, unsigned int a2, unsigned int a3)
{
  if (a2 != a3)
  {
    v5 = a2 + 31;
    v6 = a3 - 1;
    v7 = (a3 - 1) >> 5;
    if (v7 >= (a2 + 31) >> 5)
    {
      v9 = v5 >> 5;
      v10 = v5 & 0xFFFFFFE0;
      if (v10 > a2)
      {
        v11 = *this;
        do
        {
          *(v11 + 4 * (a2 >> 5)) &= ~(1 << a2);
          ++a2;
        }

        while (v10 != a2);
      }

      v12 = v7 >= v9;
      v13 = v7 - v9;
      if (v13 != 0 && v12)
      {
        bzero((*this + 4 * v9), 4 * v13);
      }

      if (a3)
      {
        v14 = v6 & 0xFFFFFFE0;
        v15 = *this;
        do
        {
          *(v15 + 4 * (v14 >> 5)) &= ~(1 << v14);
          ++v14;
        }

        while (v14 < a3);
      }
    }

    else if (a2 < a3)
    {
      v8 = *this;
      do
      {
        *(v8 + 4 * (a2 >> 5)) &= ~(1 << a2);
        ++a2;
      }

      while (a3 != a2);
    }
  }
}

void BitArray::setSizeNoGrow(BitArray *this, unsigned int a2)
{
  v4 = *(this + 2);
  if (v4 > a2)
  {
    BitArray::clearRange(this, a2, v4);
  }

  *(this + 2) = a2;
}

void BitArray::addSize(BitArray *this, int a2)
{
  v4 = *(this + 3);
  v5 = *(this + 2) + a2;
  if (v5 > v4)
  {
    BitArray::reallocElts(this, v5 - v4, 1);
    v5 = *(this + 2) + a2;
  }

  BitArray::setSize(this, v5);
}

void BitArray::preAllocate(BitArray *this, unsigned int a2)
{
  v2 = *(this + 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    BitArray::reallocElts(this, v4, 0);
  }
}

_DWORD **BitArray::inplaceOrSameSize(_DWORD **this, const BitArray *a2)
{
  v2 = *(a2 + 2) + 31;
  if (v2 >= 0x20)
  {
    v3 = v2 >> 5;
    v4 = *a2;
    v5 = *this;
    do
    {
      v6 = *v4++;
      *v5++ |= v6;
      --v3;
    }

    while (v3);
  }

  return this;
}

_DWORD **BitArray::inplaceAndSameSize(_DWORD **this, const BitArray *a2)
{
  v2 = *(a2 + 2) + 31;
  if (v2 >= 0x20)
  {
    v3 = v2 >> 5;
    v4 = *a2;
    v5 = *this;
    do
    {
      v6 = *v4++;
      *v5++ &= v6;
      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t *BitArray::setRange(uint64_t *this, unsigned int a2, unsigned int a3)
{
  if (a2 != a3)
  {
    v4 = this;
    v5 = a2 + 31;
    v6 = a3 - 1;
    v7 = (a3 - 1) >> 5;
    if (v7 >= (a2 + 31) >> 5)
    {
      v9 = v5 >> 5;
      v10 = v5 & 0xFFFFFFE0;
      if (v10 > a2)
      {
        v11 = *this;
        do
        {
          *(v11 + 4 * (a2 >> 5)) &= ~(1 << a2);
          ++a2;
        }

        while (v10 != a2);
      }

      v12 = v7 >= v9;
      v13 = v7 - v9;
      if (v13 != 0 && v12)
      {
        this = memset((*this + 4 * v9), 255, 4 * v13);
      }

      if (a3)
      {
        v14 = v6 & 0xFFFFFFE0;
        v15 = *v4;
        do
        {
          *(v15 + 4 * (v14 >> 5)) |= 1 << v14;
          ++v14;
        }

        while (v14 < a3);
      }
    }

    else if (a2 < a3)
    {
      v8 = *this;
      do
      {
        *(v8 + 4 * (a2 >> 5)) |= 1 << a2;
        ++a2;
      }

      while (a3 != a2);
    }
  }

  return this;
}

void *BitArray::setBitsInRange(void *this, const BitArray *a2, unsigned int a3, int a4)
{
  if (a4 != a3)
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = 1 << a3;
      v7 = a3 >> 5;
      if ((*(v5 + 4 * (v4 >> 5)) >> v4))
      {
        v8 = *(*this + 4 * v7) | v6;
      }

      else
      {
        v8 = *(*this + 4 * v7) & ~v6;
      }

      *(*this + 4 * v7) = v8;
      ++v4;
      ++a3;
    }

    while (a4 != a3);
  }

  return this;
}

void BitArray::getBitsFromRange(BitArray *this, BitArray *a2, unsigned int a3, int a4)
{
  v8 = a4 - a3;
  v9 = *(a2 + 2);
  if (v9)
  {
    BitArray::clearRange(a2, 0, v9);
  }

  *(a2 + 2) = 0;
  BitArray::setSize(a2, v8);
  if (a4 != a3)
  {
    v10 = v8 >> 3;
    v11 = a3 >> 3;
    v12 = a3 & 7;
    if ((a3 & 7) != 0)
    {
      v13 = *this;
      v14 = 8 - v12;
      v15 = (*(*this + 4 * (a3 >> 5)) >> (a3 & 0x18)) >> v12;
      if (v8 >= 8)
      {
        v16 = 0;
        v17 = 0;
        v18 = v11 + 1;
        v19 = *a2;
        if (v10 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v8 >> 3;
        }

        v21 = 8 * v11 + 8;
        do
        {
          v22 = *(v13 + (v18 & 0xFFFFFFFC)) >> (v21 & 0x18);
          *(v19 + (v17++ & 0xFFFFFFFC)) |= ((v22 << v14) & 0xFE | v15) << (v16 & 0x18);
          v15 = v22 >> v12;
          v21 += 8;
          ++v18;
          v16 += 8;
          --v20;
        }

        while (v20);
      }

      if ((a4 & 7) != 0)
      {
        if ((v8 & 7) > v14)
        {
          v15 |= (*(v13 + ((v11 + v10 + 1) & 0x7FFFFFFC)) >> (8 * ((v11 + v10 + 1) & 3))) << v14;
        }

        v15 &= ~(-1 << (v8 & 7));
      }

      *(*a2 + 4 * (v8 >> 5)) |= v15 << (v8 & 0x18);
    }

    else
    {
      if (v8 >= 8)
      {
        v23 = 0;
        v24 = 0;
        v25 = *this;
        v26 = *a2;
        if (v10 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v8 >> 3;
        }

        v28 = 8 * v11;
        v29 = a3 >> 3;
        do
        {
          *(v26 + (v24++ & 0xFFFFFFFC)) |= (*(v25 + (v29 & 0xFFFFFFFC)) >> (v28 & 0x18)) << (v23 & 0x18);
          v28 += 8;
          ++v29;
          v23 += 8;
          --v27;
        }

        while (v27);
      }

      if ((a4 & 7) != 0)
      {
        *(*a2 + 4 * (v8 >> 5)) |= ((*(*this + ((v10 + v11) & 0x3FFFFFFC)) >> (8 * ((v10 + v11) & 3))) & ~(-1 << (a4 & 7))) << (v8 & 0x18);
      }
    }
  }
}

void *BitArray::getBitsFromRangeAsBytes(void *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = a5 - a4;
  if (a5 != a4)
  {
    v6 = v5 >> 3;
    v7 = a4 >> 3;
    v8 = a4 & 7;
    if ((a4 & 7) != 0)
    {
      v9 = 8 - v8;
      v10 = (*(*this + 4 * (a4 >> 5)) >> (a4 & 0x18)) >> v8;
      if (v5 >= 8)
      {
        v11 = v7 + 1;
        if (v6 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v6;
        }

        v13 = 8 * v7 + 8;
        v14 = a2;
        do
        {
          v15 = *(*this + (v11 & 0xFFFFFFFC)) >> (v13 & 0x18);
          *v14++ = (v15 << v9) | v10;
          v10 = v15 >> v8;
          ++v11;
          v13 += 8;
          --v12;
        }

        while (v12);
      }

      if ((a5 & 7) != 0)
      {
        v16 = v5 & 7;
        if (v16 > v9)
        {
          v10 |= (*(*this + ((v7 + v6 + 1) & 0x7FFFFFFC)) >> (8 * ((v7 + v6 + 1) & 3))) << v9;
        }

        LOBYTE(v10) = v10 & ~(-1 << v16);
      }

      goto LABEL_21;
    }

    if (v5 >= 8)
    {
      if (v6 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v6;
      }

      v18 = 8 * v7;
      v19 = a2;
      v20 = a4 >> 3;
      do
      {
        *v19++ = *(*this + (v20++ & 0xFFFFFFFC)) >> (v18 & 0x18);
        v18 += 8;
        --v17;
      }

      while (v17);
    }

    if ((a5 & 7) != 0)
    {
      v10 = (*(*this + ((v6 + v7) & 0x3FFFFFFC)) >> (8 * ((v6 + v7) & 3))) & ~(-1 << (a5 & 7));
LABEL_21:
      a2[v6] = v10;
    }
  }

  return this;
}

uint64_t BitArray::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v2 = *(a1 + 8);
    v3 = v2 > *(a1 + 12);
    v4 = ((v2 + 31) >> 3) & 0x1FFFFFFC;
    if (v3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = 16;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v6 = 12;
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    v9 = (v7 + 31) >> 5;
    v10 = v6 + 4 * v9;
    v11 = v10 + 4 * (((v8 + 31) >> 5) - v9);
    if (a2)
    {
      v11 = v10;
    }

    if (v7 > v8 || (a2 - 4) >= 0xFFFFFFFE)
    {
      return v6;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t SimpleFrameTransformer::SimpleFrameTransformer(uint64_t a1, uint64_t a2, NeuralNet *a3, uint64_t a4, uint64_t a5, const PelMgr *a6, int a7, BOOL a8, double a9, double a10)
{
  *a1 = &unk_287525468;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 56) = 4294967280;
  if (a3)
  {
    WindowSize = NeuralNet::getWindowSize(a3);
  }

  else
  {
    WindowSize = 1;
  }

  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::MovingArrayWindow((a1 + 64), WindowSize);
  if (a5)
  {
    v20 = *(a5 + 8) | 1u;
  }

  else
  {
    v20 = 1;
  }

  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::MovingArrayWindow((a1 + 88), v20);
  if (a5)
  {
    v21 = *(a5 + 8) | 1u;
  }

  else
  {
    v21 = 1;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 112, v21, 0);
  v45 = a8;
  v22 = *(a1 + 120);
  if (v22 <= v21)
  {
    if (v22 < v21)
    {
      v25 = v21 - v22;
      v26 = 16 * v22;
      do
      {
        v27 = (*(a1 + 112) + v26);
        *v27 = 0;
        v27[1] = 0;
        v26 += 16;
        --v25;
      }

      while (v25);
    }
  }

  else if (v22 > v21)
  {
    v23 = v22;
    v24 = 16 * v22 - 16;
    do
    {
      --v23;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 112) + v24);
      v24 -= 16;
    }

    while (v23 > v21);
  }

  *(a1 + 136) = 0;
  *(a1 + 120) = v21;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  v28 = *(a1 + 16);
  if (v28)
  {
    OutputSize = NeuralNet::getOutputSize(v28);
  }

  else
  {
    OutputSize = 0;
  }

  DgnPrimArray<unsigned char>::DgnPrimArray(a1 + 152, OutputSize);
  v30 = *(a1 + 16);
  if (v30)
  {
    v31 = NeuralNet::getOutputSize(v30);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    if (v31)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 168, v31, 0);
    }
  }

  else
  {
    LODWORD(v31) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 184) = 0;
  *(a1 + 176) = v31;
  *(a1 + 192) = 0;
  if (a5)
  {
    v32 = *(*(a5 + 112) + 132);
  }

  else
  {
    v32 = 0;
  }

  DgnPrimArray<unsigned char>::DgnPrimArray(a1 + 200, v32);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a7;
  if (a2)
  {
    v33 = *(a2 + 8);
    if (!a4)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v33 = 0;
    if (!a4)
    {
      goto LABEL_32;
    }
  }

  if (v33 <= *(a4 + 8))
  {
    v33 = *(a4 + 8);
  }

LABEL_32:
  v34 = v33 + 7;
  v35 = v34 & 0xFFFFFFF8;
  if ((v34 & 0xFFFFFFF8) != 0)
  {
    DgnPrimArray<short>::reallocElts(a1 + 216, v34 & 0xFFFFFFF8, 0);
  }

  *(a1 + 224) = v35;
  *(a1 + 48) = 0;
  if (a6)
  {
    v36 = MemChunkAlloc(0x298uLL, 0);
    OnDemandPelScorer::OnDemandPelScorer(v36, a6, 0, 0, 0, 0, 0, 0, a9, a10, v45);
    *(a1 + 48) = v37;
    v38 = *(a1 + 120);
    if (v38)
    {
      v39 = 0;
      v40 = 0;
      v41 = *(*(a5 + 112) + 132) * *(a5 + 12);
      do
      {
        v42 = *(a1 + 112) + v39;
        v43 = *(v42 + 12);
        if (v41 > v43)
        {
          DgnPrimArray<unsigned long long>::reallocElts(*(a1 + 112) + v39, v41 - v43, 0);
          v38 = *(a1 + 120);
        }

        *(v42 + 8) = v41;
        ++v40;
        v39 += 16;
      }

      while (v40 < v38);
      v37 = *(a1 + 48);
    }

    if (*(v37 + 144) == 0.0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 119, "recogctl/frmtrans", 1, "%s", &unk_262888520);
    }
  }

  return a1;
}

void sub_2626B4FD4(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  MovingArrayWindow<DgnPrimArray<double>,DgnArray<DgnPrimArray<double>>>::~MovingArrayWindow(v1 + 112);
  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::~MovingArrayWindow(v1 + 88);
  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::~MovingArrayWindow(v1 + 64);
  _Unwind_Resume(a1);
}

void *MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::MovingArrayWindow(void *a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a2)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, a2, 0);
    v4 = *(a1 + 2);
    if (v4 > v2)
    {
      if (v4 > v2)
      {
        v5 = v4;
        v6 = 16 * v4 - 16;
        do
        {
          --v5;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v6);
          v6 -= 16;
        }

        while (v5 > v2);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4 < v2)
  {
    v7 = v2 - v4;
    v8 = 16 * v4;
    do
    {
      v9 = (*a1 + v8);
      *v9 = 0;
      v9[1] = 0;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

LABEL_11:
  *(a1 + 2) = v2;
  a1[2] = 0;
  return a1;
}

void SimpleFrameTransformer::~SimpleFrameTransformer(SimpleFrameTransformer *this)
{
  *this = &unk_287525468;
  DgnDelete<PelScorer>(*(this + 6));
  *(this + 6) = 0;
  (*(*this + 24))(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  MovingArrayWindow<DgnPrimArray<double>,DgnArray<DgnPrimArray<double>>>::~MovingArrayWindow(this + 112);
  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::~MovingArrayWindow(this + 88);
  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::~MovingArrayWindow(this + 64);
}

{
  SimpleFrameTransformer::~SimpleFrameTransformer(this);

  JUMPOUT(0x26672B1B0);
}

double SimpleFrameTransformer::reset(SimpleFrameTransformer *this)
{
  *(this + 13) = 0;
  *(this + 10) = 0;
  *(this + 16) = 0;
  *&result = 4294967280;
  *(this + 7) = 4294967280;
  return result;
}

void SimpleFrameTransformer::printSize(SimpleFrameTransformer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 147);
  if (v104)
  {
    v13 = v103;
  }

  else
  {
    v13 = &unk_262888520;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_262888520, a3, &unk_262888520, v13);
  DgnString::~DgnString(&v103);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_262888520);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  v16 = (a3 + 1);
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 149);
  if (v104)
  {
    v19 = v103;
  }

  else
  {
    v19 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v19, v15, v15, 0);
  DgnString::~DgnString(&v103);
  *a4 += v15;
  *a5 += v15;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 150);
  if (v104)
  {
    v22 = v103;
  }

  else
  {
    v22 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v22, v20, v20, 0);
  DgnString::~DgnString(&v103);
  *a4 += v20;
  *a5 += v20;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 151);
  if (v104)
  {
    v25 = v103;
  }

  else
  {
    v25 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v25, v23, v23, 0);
  DgnString::~DgnString(&v103);
  *a4 += v23;
  *a5 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v26 = 4;
  }

  else
  {
    v26 = 8;
  }

  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 152);
  if (v104)
  {
    v28 = v103;
  }

  else
  {
    v28 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v28, v26, v26, 0);
  DgnString::~DgnString(&v103);
  *a4 += v26;
  *a5 += v26;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 153);
  if (v104)
  {
    v31 = v103;
  }

  else
  {
    v31 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v31, v29, v29, 0);
  DgnString::~DgnString(&v103);
  *a4 += v29;
  *a5 += v29;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 4;
  }

  else
  {
    v32 = 8;
  }

  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 154);
  if (v104)
  {
    v34 = v103;
  }

  else
  {
    v34 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v34, v32, v32, 0);
  DgnString::~DgnString(&v103);
  *a4 += v32;
  *a5 += v32;
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 163);
  if (v104)
  {
    v36 = v103;
  }

  else
  {
    v36 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v36, 4, 4, 0);
  DgnString::~DgnString(&v103);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 165);
  if (v104)
  {
    v38 = v103;
  }

  else
  {
    v38 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v38, 4, 4, 0);
  DgnString::~DgnString(&v103);
  *a4 += 4;
  *a5 += 4;
  v39 = sizeObject<DgnPrimArray<unsigned char>>(this + 64, 0) + 8;
  v40 = sizeObject<DgnPrimArray<unsigned char>>(this + 64, 1) + 8;
  v103 = 0;
  v104 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v103);
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 166);
  if (v104)
  {
    v42 = v103;
  }

  else
  {
    v42 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v42, v39, v40, 0);
  DgnString::~DgnString(&v103);
  *a4 += v39;
  *a5 += v40;
  v43 = sizeObject<DgnPrimArray<unsigned char>>(this + 88, 0) + 8;
  v44 = sizeObject<DgnPrimArray<unsigned char>>(this + 88, 1) + 8;
  v103 = 0;
  v104 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v103);
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 167);
  if (v104)
  {
    v46 = v103;
  }

  else
  {
    v46 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v46, v43, v44, 0);
  DgnString::~DgnString(&v103);
  *a4 += v43;
  *a5 += v44;
  v47 = sizeObject<DgnPrimArray<double>>(this + 112, 0) + 8;
  v48 = sizeObject<DgnPrimArray<double>>(this + 112, 1) + 8;
  v103 = 0;
  v104 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v103);
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 169);
  if (v104)
  {
    v50 = v103;
  }

  else
  {
    v50 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v50, v47, v48, 0);
  v102 = a3;
  DgnString::~DgnString(&v103);
  *a4 += v47;
  *a5 += v48;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 12;
  }

  else
  {
    v51 = 16;
  }

  v52 = *(this + 36);
  v53 = *(this + 37);
  v54 = v53 >= v52;
  v55 = v53 - v52;
  if (v54)
  {
    if (v52 > 0)
    {
      v56 = (v52 - 1) + v51 + 1;
    }

    else
    {
      v56 = v51;
    }

    v51 = v56 + v55;
    v52 = 0;
  }

  else
  {
    v56 = v51;
  }

  v57 = v52;
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 171);
  if (v104)
  {
    v59 = v103;
  }

  else
  {
    v59 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v16, &unk_262888520, v17, v17, v59, v51, v56, v57);
  DgnString::~DgnString(&v103);
  *a4 += v51;
  *a5 += v56;
  *a6 += v57;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v60 = 12;
  }

  else
  {
    v60 = 16;
  }

  v61 = *(this + 40);
  v62 = *(this + 41);
  v54 = v62 >= v61;
  v63 = v62 - v61;
  if (v54)
  {
    if (v61 > 0)
    {
      v64 = (v61 - 1) + v60 + 1;
    }

    else
    {
      v64 = v60;
    }

    v60 = v64 + v63;
    v61 = 0;
  }

  else
  {
    v64 = v60;
  }

  v65 = v61;
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 172);
  if (v104)
  {
    v67 = v103;
  }

  else
  {
    v67 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v16, &unk_262888520, v17, v17, v67, v60, v64, v65);
  DgnString::~DgnString(&v103);
  *a4 += v60;
  *a5 += v64;
  *a6 += v65;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v68 = 12;
  }

  else
  {
    v68 = 16;
  }

  v69 = *(this + 44);
  v70 = *(this + 45);
  if (v70 >= v69)
  {
    v71 = 0;
    if (v69 > 0)
    {
      v68 += 8 * (v69 - 1) + 8;
    }

    v72 = v68 + 8 * (v70 - v69);
  }

  else
  {
    v71 = 8 * v69;
    v72 = v68;
  }

  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 174);
  if (v104)
  {
    v74 = v103;
  }

  else
  {
    v74 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v16, &unk_262888520, v17, v17, v74, v72, v68, v71);
  DgnString::~DgnString(&v103);
  *a4 += v72;
  *a5 += v68;
  *a6 += v71;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v75 = 12;
  }

  else
  {
    v75 = 16;
  }

  v76 = *(this + 48);
  v77 = *(this + 49);
  v54 = v77 >= v76;
  v78 = v77 - v76;
  if (v54)
  {
    if (v76 > 0)
    {
      v79 = (v76 - 1) + v75 + 1;
    }

    else
    {
      v79 = v75;
    }

    v75 = v79 + v78;
    v76 = 0;
  }

  else
  {
    v79 = v75;
  }

  v80 = v76;
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 176);
  if (v104)
  {
    v82 = v103;
  }

  else
  {
    v82 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v16, &unk_262888520, v17, v17, v82, v75, v79, v80);
  DgnString::~DgnString(&v103);
  *a4 += v75;
  *a5 += v79;
  *a6 += v80;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v83 = 12;
  }

  else
  {
    v83 = 16;
  }

  v84 = *(this + 52);
  v85 = *(this + 53);
  v54 = v85 >= v84;
  v86 = v85 - v84;
  if (v54)
  {
    if (v84 > 0)
    {
      v87 = (v84 - 1) + v83 + 1;
    }

    else
    {
      v87 = v83;
    }

    v83 = v87 + v86;
    v84 = 0;
  }

  else
  {
    v87 = v83;
  }

  v88 = v84;
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 178);
  if (v104)
  {
    v90 = v103;
  }

  else
  {
    v90 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v16, &unk_262888520, v17, v17, v90, v83, v87, v88);
  DgnString::~DgnString(&v103);
  *a4 += v83;
  *a5 += v87;
  *a6 += v88;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v91 = 12;
  }

  else
  {
    v91 = 16;
  }

  v92 = *(this + 56);
  v93 = *(this + 57);
  if (v93 >= v92)
  {
    v94 = 0;
    if (v92 > 0)
    {
      v91 += 2 * (v92 - 1) + 2;
    }

    v95 = v91 + 2 * (v93 - v92);
  }

  else
  {
    v94 = 2 * v92;
    v95 = v91;
  }

  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 180);
  if (v104)
  {
    v97 = v103;
  }

  else
  {
    v97 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v16, &unk_262888520, v17, v17, v97, v95, v91, v94);
  DgnString::~DgnString(&v103);
  *a4 += v95;
  *a5 += v91;
  *a6 += v94;
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 182);
  if (v104)
  {
    v99 = v103;
  }

  else
  {
    v99 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v16, &unk_262888520, v17, v17, v99, 4, 4, 0);
  DgnString::~DgnString(&v103);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 184);
  if (v104)
  {
    v101 = v103;
  }

  else
  {
    v101 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v102, &unk_262888520, (35 - v102), (35 - v102), v101, *a4, *a5, *a6);
  DgnString::~DgnString(&v103);
}

void sub_2626B5D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *SimpleFrameTransformer::doStage2ForRecogFramesOnly(uint64_t *result, uint64_t a2)
{
  v3 = *(result + 14);
  if (!((v3 + 1) % *(result + 58)))
  {
    v4 = result;
    v5 = result[4];
    if (v5)
    {
      FmpeMgr::fmpeStage2(v5, v3, (v4 + 11), v4 + 14, v4 + 25);
    }

    else
    {
      v6 = v4[11] + 16 * (v3 % *(v4 + 24));
      DgnPrimArray<unsigned char>::copyArraySlice(v4 + 25, v6, 0, *(v6 + 8));
    }

    v7 = *(v4 + 14) / *(v4 + 58);

    return SynchronizedArray<DgnPrimArray<unsigned char>>::add(a2, v7, (v4 + 25));
  }

  return result;
}

uint64_t *SynchronizedArray<DgnPrimArray<unsigned char>>::add(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6 == *(a1 + 20))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 8, 1, 1);
    v6 = *(a1 + 16);
  }

  v7 = (*(a1 + 8) + 16 * v6);
  *v7 = 0;
  v7[1] = 0;
  ++*(a1 + 16);
  v8 = (*(a1 + 8) + 16 * a2);
  v9 = *(a3 + 8);

  return DgnPrimArray<unsigned char>::copyArraySlice(v8, a3, 0, v9);
}

void SimpleFrameTransformer::transformFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  if (!a4)
  {
    if (*(a1 + 80) != *(a1 + 84))
    {
      HalfWindowSize = NeuralNet::getHalfWindowSize(*(a1 + 16));
      v23 = HalfWindowSize;
      v24 = *(a1 + 80) - *(a1 + 84);
      v25 = v24 - HalfWindowSize;
      if (v24 - HalfWindowSize < HalfWindowSize + 1)
      {
        if (v24 < 2 * HalfWindowSize)
        {
          v26 = v24 - 1;
          v27 = 2 * HalfWindowSize;
          do
          {
            v28 = *(a1 + 80) + 1;
            v29 = *(a1 + 72);
            v30 = v28 - v29;
            if (v28 < v29)
            {
              v30 = 0;
            }

            *(a1 + 80) = v28;
            *(a1 + 84) = v30;
            DgnPrimArray<unsigned char>::copyArraySlice((*(a1 + 64) + 16 * (v24 % v29)), (*(a1 + 64) + 16 * (v26 % v29)), 0, *(*(a1 + 64) + 16 * (v26 % v29) + 8));
            ++v24;
          }

          while (v27 != v24);
        }

        v31 = v23;
        if (!v25)
        {
          goto LABEL_56;
        }

        goto LABEL_38;
      }

      v25 = HalfWindowSize;
      v31 = a2;
      if (HalfWindowSize)
      {
LABEL_38:
        v43 = 0;
        v44 = v31 + v23;
        do
        {
          v45 = *(a1 + 80) + 1;
          v46 = *(a1 + 72);
          v47 = v45 - v46;
          if (v45 < v46)
          {
            v47 = 0;
          }

          *(a1 + 80) = v45;
          *(a1 + 84) = v47;
          v48 = *(a1 + 64);
          v49 = v48 + 16 * ((v44 + v43 - 1) % v46);
          DgnPrimArray<unsigned char>::copyArraySlice((v48 + 16 * ((v44 + v43) % v46)), v49, 0, *(v49 + 8));
          NeuralNet::run(*(a1 + 16), (a1 + 64), (v43 + a2), (a1 + 152), (a1 + 168));
          if (a6)
          {
            v50 = *(a6 + 8);
            if (v50 == *(a6 + 12))
            {
              DgnArray<DgnPrimArray<double>>::reallocElts(a6, 1, 1);
              v50 = *(a6 + 8);
            }

            v51 = (*a6 + 16 * v50);
            *v51 = 0;
            v51[1] = 0;
            DgnPrimArray<double>::copyArraySlice(v51, (a1 + 168), 0, *(a1 + 176));
            ++*(a6 + 8);
          }

          v52 = SimpleFrameTransformer::concatenateFeatures(a1, *(a1 + 64) + 16 * ((v43 - v25 + a2 + v23) % *(a1 + 72)), v8);
          SimpleFrameTransformer::doImelda(a1, v43 - v25 + a2, v52);
          SimpleFrameTransformer::doFmpeStage1(a1, v43 - v25 + a2);
          v53 = *(a1 + 104) - *(a1 + 108);
          if (v53 >= (*(*a1 + 112))(a1) + 1)
          {
            v54 = *(a1 + 56);
            if (v54 == -16)
            {
              v55 = 0;
            }

            else
            {
              v55 = v54 + 1;
            }

            *(a1 + 56) = v55;
            SimpleFrameTransformer::doStage2ForRecogFramesOnly(a1, a5);
          }

          ++v43;
        }

        while (v43 != v25);
      }
    }

LABEL_56:
    while ((*(*a1 + 48))(a1, *(a5 + 16)) < a2)
    {
      v56 = *(a1 + 56);
      if (v56 == -16)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56 + 1;
      }

      *(a1 + 56) = v57;
      SimpleFrameTransformer::doStage2ForRecogFramesOnly(a1, a5);
    }

    *a5 = 1;
    return;
  }

  v11 = a4;
  v12 = *(a1 + 8);
  if (v12)
  {
    LinearTransform::doTransform(v12 + 8, a4, a1 + 136);
    v11 = a1 + 136;
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = NeuralNet::getHalfWindowSize(v13);
  v15 = v14;
  v16 = *(a1 + 80);
  if (v16 == *(a1 + 84))
  {
    v17 = 0;
    do
    {
      v18 = *(a1 + 80) + 1;
      v19 = *(a1 + 72);
      v20 = v18 - v19;
      if (v18 < v19)
      {
        v20 = 0;
      }

      *(a1 + 80) = v18;
      *(a1 + 84) = v20;
      DgnPrimArray<unsigned char>::copyArraySlice((*(a1 + 64) + 16 * (v17 % v19)), v11, 0, *(v11 + 8));
      ++v17;
    }

    while (v17 <= v15);
    v21 = *(a1 + 16);

    NeuralNet::reset(v21);
    return;
  }

  v32 = v16 + 1;
  v33 = *(a1 + 72);
  v34 = v32 - v33;
  if (v32 < v33)
  {
    v34 = 0;
  }

  *(a1 + 80) = v32;
  *(a1 + 84) = v34;
  DgnPrimArray<unsigned char>::copyArraySlice((*(a1 + 64) + 16 * ((v14 + a2) % v33)), v11, 0, *(v11 + 8));
  v35 = *(a1 + 80) - *(a1 + 84);
  if (v35 >= NeuralNet::getWindowSize(*(a1 + 16)))
  {
    NeuralNet::run(*(a1 + 16), (a1 + 64), a2, (a1 + 152), (a1 + 168));
    if (a6)
    {
      v36 = *(a6 + 8);
      if (v36 == *(a6 + 12))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(a6, 1, 1);
        v36 = *(a6 + 8);
      }

      v37 = (*a6 + 16 * v36);
      *v37 = 0;
      v37[1] = 0;
      DgnPrimArray<double>::copyArraySlice(v37, (a1 + 168), 0, *(a1 + 176));
      ++*(a6 + 8);
    }

    v38 = a2 % *(a1 + 72);
    LODWORD(a2) = a2 - v15;
    v11 = *(a1 + 64) + 16 * v38;
LABEL_30:
    v39 = SimpleFrameTransformer::concatenateFeatures(a1, v11, v8);
    SimpleFrameTransformer::doImelda(a1, a2, v39);
    SimpleFrameTransformer::doFmpeStage1(a1, a2);
    v40 = *(a1 + 104) - *(a1 + 108);
    if (v40 >= (*(*a1 + 112))(a1) + 1)
    {
      v41 = *(a1 + 56);
      if (v41 == -16)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41 + 1;
      }

      *(a1 + 56) = v42;

      SimpleFrameTransformer::doStage2ForRecogFramesOnly(a1, a5);
    }
  }
}

uint64_t SimpleFrameTransformer::concatenateFeatures(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (!NeuralNet::isOutTypeConcatenatedBF(v5) || (a3 & 1) != 0)
    {
      return a1 + 152;
    }

    else
    {
      v7 = (*(a2 + 8) + *(a1 + 160));
      if (*(a1 + 196) < v7)
      {
        v13 = 0;
        *(a1 + 196) = realloc_array(*(a1 + 184), &v13, v7, *(a1 + 192), *(a1 + 192), 1);
        *(a1 + 184) = v13;
      }

      *(a1 + 192) = v7;
      v8 = *(a2 + 8);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          *(*(a1 + 184) + i) = *(*a2 + i);
        }
      }

      v10 = *(a1 + 160);
      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          *(*(a1 + 184) + (v8 + j)) = *(*(a1 + 152) + j);
        }
      }

      return a1 + 184;
    }
  }

  return a2;
}

void SimpleFrameTransformer::doImelda(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 104) + 1;
  v4 = *(a1 + 96);
  v5 = v3 - v4;
  if (v3 < v4)
  {
    v5 = 0;
  }

  *(a1 + 104) = v3;
  *(a1 + 108) = v5;
  v6 = *(a1 + 24);
  v7 = a2 % v4;
  v8 = *(a1 + 88);
  if (v6)
  {
    LinearTransform::doTransform(v6 + 8, a3, v8 + 16 * v7);
  }

  else
  {
    DgnPrimArray<unsigned char>::copyArraySlice((v8 + 16 * v7), a3, 0, *(a3 + 8));
  }
}

uint64_t SimpleFrameTransformer::doFmpeStage1(SimpleFrameTransformer *this, unsigned int a2)
{
  result = *(this + 4);
  if (result)
  {
    v4 = *(this + 32) + 1;
    v5 = *(this + 30);
    v6 = v4 - v5;
    if (v4 < v5)
    {
      v6 = 0;
    }

    *(this + 32) = v4;
    *(this + 33) = v6;
    return FmpeMgr::fmpeStage1(result, a2, (*(this + 11) + 16 * (a2 % *(this + 24))), (*(this + 14) + 16 * (a2 % v5)), *(this + 6));
  }

  return result;
}

uint64_t SimpleFrameTransformer::getNextFrameTime(SimpleFrameTransformer *this)
{
  v1 = *(this + 20);
  if (v1 != *(this + 21))
  {
    return v1 - NeuralNet::getHalfWindowSize(*(this + 2));
  }

  v2 = *(this + 14);
  if (v2 == -16)
  {
    return (*(this + 26) - *(this + 27));
  }

  else
  {
    return v2 + (*(*this + 112))(this) + 1;
  }
}

uint64_t SimpleFrameTransformer::transformFramesUntil(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[0] = 0;
  v18[1] = 0;
  v11 = a2 + 1;
  for (i = *(a1 + 60); ; *(a1 + 60) = i)
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      LODWORD(v13) = NeuralNet::getHalfWindowSize(v13);
      v14 = *(a1 + 60);
    }

    else
    {
      v14 = i;
    }

    if (i > v13 + v11 || *(a4 + 16) <= v14)
    {
      break;
    }

    v15 = *(a4 + 8) + 16 * v14;
    DgnPrimArray<unsigned char>::copyArraySlice(v18, v15, 0, *(v15 + 8));
    SimpleFrameTransformer::transformFrame(a1, *(a1 + 60), a3, v18, a5, a6);
    i = *(a1 + 60) + 1;
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    LODWORD(v16) = NeuralNet::getHalfWindowSize(v16);
  }

  if (v14 <= v16 + v11 && *a4 == 1 && (*a5 & 1) == 0)
  {
    *(a5 + 4) = *(a5 + 16);
    SimpleFrameTransformer::transformFrame(a1, *(a4 + 16), a3, 0, a5, a6);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
}

void FrameTransformerThreadWorker::~FrameTransformerThreadWorker(FrameTransformerThreadWorker *this)
{
  *this = &unk_287524780;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);

  DgnThreadWorker::~DgnThreadWorker(this);
}

{
  *this = &unk_287524780;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);
  DgnThreadWorker::~DgnThreadWorker(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FrameTransformerThreadWorker::onStartup(FrameTransformerThreadWorker *this)
{
  v2 = *(this + 6);
  v3 = MemChunkAlloc(0xF0uLL, 0);
  v4 = SimpleFrameTransformer::SimpleFrameTransformer(v3, *(v2 + 1576), *(v2 + 1584), *(v2 + 1592), *(v2 + 1600), *(v2 + 1608), *(v2 + 1620), *(v2 + 1632), *(v2 + 1624), *(v2 + 1640));
  *(this + 33) = v4;
  (*(*v4 + 64))(v4);
  v5 = MemChunkAlloc(0x18uLL, 0);
  *(this + 34) = SynchronizedArray<DgnPrimArray<unsigned char>>::SynchronizedArray(v5);
  v6 = MemChunkAlloc(0x18uLL, 0);
  result = SynchronizedArray<DgnPrimArray<unsigned char>>::SynchronizedArray(v6);
  *(this + 35) = result;
  return result;
}

void *FrameTransformerThreadWorker::onShutdown(FrameTransformerThreadWorker *this)
{
  (*(**(this + 33) + 72))(*(this + 33));
  DgnDelete<FrameTransformer>(*(this + 33));
  DgnDelete<UttFeatureArraySynchronizedArray>(*(this + 34));
  v2 = *(this + 35);

  return DgnDelete<UttFeatureArraySynchronizedArray>(v2);
}

_BYTE *FrameTransformerThreadWorker::onPlay(FrameTransformerThreadWorker *this)
{
  v1 = *(this + 6);
  *(this + 64) = *(v1 + 1652);
  result = *(this + 35);
  if ((*result & 1) == 0)
  {
    return SynchronizedArray<DgnPrimArray<unsigned char>>::update(result, *(v1 + 1656));
  }

  return result;
}

unint64_t SynchronizedArray<DgnPrimArray<unsigned char>>::update(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v6 = *(result + 16);
  v5 = *(result + 20);
  if (v5 > 0x1F3)
  {
    v7 = *(a2 + 16);
  }

  else
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(result + 8, 500 - v5, 0);
    v7 = *(a2 + 16);
    v5 = *(v3 + 20);
  }

  if (v7 > v5)
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(v3 + 8, v7 - v5, 0);
  }

  v8 = *(v3 + 16);
  if (v8 <= v7)
  {
    if (v8 < v7)
    {
      v11 = v7 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*(v3 + 8) + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v7)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v3 + 8) + v10);
      v10 -= 16;
    }

    while (v9 > v7);
  }

  *(v3 + 16) = v7;
  if (v6 < v4)
  {
    do
    {
      v14 = *(a2 + 8) + 16 * v6;
      result = DgnPrimArray<unsigned char>::copyArraySlice((*(v3 + 8) + 16 * v6++), v14, 0, *(v14 + 8));
    }

    while (v4 != v6);
  }

  if (*a2 == 1)
  {
    *v3 = 1;
  }

  if (*(v3 + 4) == -16)
  {
    *(v3 + 4) = *(a2 + 4);
  }

  return result;
}

uint64_t FrameTransformerThreadWorker::playOne(FrameTransformerThreadWorker *this)
{
  v1 = *(this + 34);
  if (*v1)
  {
    return 4;
  }

  v4 = *(this + 64);
  if (v4 != -16 && *(v1 + 16) > v4)
  {
    return 4;
  }

  v5 = (*(**(this + 33) + 32))(*(this + 33));
  v6 = v5;
  v7 = *(this + 35);
  if (*(v7 + 16) <= v5)
  {
    if (*v7 == 1)
    {
      v10 = *(this + 33);
      v11 = *(this + 34);
      *(v11 + 4) = *(v11 + 16);
      SimpleFrameTransformer::transformFrame(v10, v6, 0, 0, v11, 0);
    }

    return 4;
  }

  v8 = *(v7 + 8) + 16 * v5;
  DgnPrimArray<unsigned char>::copyArraySlice(this + 36, v8, 0, *(v8 + 8));
  SimpleFrameTransformer::transformFrame(*(this + 33), v6, 0, this + 288, *(this + 34), 0);
  v9 = *(this + 64);
  if (v9 != -16 && *(*(this + 34) + 16) > v9)
  {
    return 4;
  }

  return 1;
}

uint64_t *FrameTransformerThreadWorker::reset(FrameTransformerThreadWorker *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v6, *(this + 5));
  v2 = *(this + 33);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    SynchronizedArray<DgnPrimArray<unsigned char>>::reset(v3);
  }

  v4 = *(this + 34);
  if (v4)
  {
    SynchronizedArray<DgnPrimArray<unsigned char>>::reset(v4);
  }

  *(this + 64) = -16;
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v6);
}

void sub_2626B6D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

void *Latch<MemChunkRegion,LatchAdapter>::Latch(void *a1, uint64_t a2)
{
  *a1 = a2;
  if (MemChunkRegion::smTlsID == -1)
  {
    v5 = &gGlobalMemChunkRegion;
    goto LABEL_7;
  }

  v4 = pthread_getspecific(MemChunkRegion::smTlsID);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *v4;
  if (!*v4)
  {
    pthread_setspecific(MemChunkRegion::smTlsID, 0);
LABEL_5:
    v5 = &gGlobalMemChunkRegion;
  }

LABEL_7:
  if (v5 != a2 && (a2 || v5 != &gGlobalMemChunkRegion))
  {
    if (!a2 || a2 == &gGlobalMemChunkRegion)
    {
      v6 = MemChunkRegion::smTlsID;
      v7 = 0;
    }

    else
    {
      *(a2 + 1288) = a2;
      v6 = MemChunkRegion::smTlsID;
      v7 = (a2 + 1288);
    }

    pthread_setspecific(v6, v7);
  }

  *a1 = v5;
  return a1;
}

uint64_t SynchronizedArray<DgnPrimArray<unsigned char>>::reset(uint64_t result)
{
  v1 = result;
  *result = 0;
  *(result + 4) = -16;
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v1 + 8) + v3);
      v3 -= 16;
    }

    while (v3 != -16);
  }

  *(v1 + 16) = 0;
  return result;
}

void FrameTransformerThreadWorker::printSize(FrameTransformerThreadWorker *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1091);
  if (v45)
  {
    v12 = v44;
  }

  else
  {
    v12 = &unk_262888520;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &unk_262888520, a3, &unk_262888520, v12);
  DgnString::~DgnString(&v44);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &unk_262888520);
  v14 = (a3 + 1);
  v15 = (34 - a3);
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1094);
  if (v45)
  {
    v17 = v44;
  }

  else
  {
    v17 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v17, 4, 4, 0);
  DgnString::~DgnString(&v44);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v18 = 4;
  }

  else
  {
    v18 = 8;
  }

  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1095);
  if (v45)
  {
    v20 = v44;
  }

  else
  {
    v20 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v20, v18, v18, 0);
  DgnString::~DgnString(&v44);
  *a4 += v18;
  *a5 += v18;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1096);
  if (v45)
  {
    v23 = v44;
  }

  else
  {
    v23 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v23, v21, v21, 0);
  DgnString::~DgnString(&v44);
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

  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1097);
  if (v45)
  {
    v26 = v44;
  }

  else
  {
    v26 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v26, v24, v24, 0);
  v39 = a3;
  DgnString::~DgnString(&v44);
  *a4 += v24;
  *a5 += v24;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 12;
  }

  else
  {
    v27 = 16;
  }

  v28 = *(this + 74);
  v29 = *(this + 75);
  v30 = a2;
  v31 = v29 >= v28;
  v32 = v29 - v28;
  if (v31)
  {
    if (v28 > 0)
    {
      v33 = (v28 - 1) + v27 + 1;
    }

    else
    {
      v33 = v27;
    }

    v27 = v33 + v32;
    v28 = 0;
  }

  else
  {
    v33 = v27;
  }

  v34 = v28;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1099);
  if (v45)
  {
    v36 = v44;
  }

  else
  {
    v36 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v14, &unk_262888520, v15, v15, v36, v27, v33, v34);
  DgnString::~DgnString(&v44);
  *a4 += v27;
  *a5 += v33;
  *a6 += v34;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  DgnThreadWorker::printSize(this, v30, v14, &v43, &v41, &v42);
  *a4 += v43;
  *a5 += v41;
  *a6 += v42;
  getShipObjectSizeDescription(&v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1108);
  if (v45)
  {
    v38 = v44;
  }

  else
  {
    v38 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v39, &unk_262888520, (35 - v39), (35 - v39), v38, *a4, *a5, *a6);
  DgnString::~DgnString(&v44);
}

unint64_t FrameTransformerThread::stopScoring(uint64_t a1, unint64_t a2)
{
  DgnThreadClient::pause(a1);
  *(a1 + 1648) = (*(**(*(a1 + 56) + 264) + 32))(*(*(a1 + 56) + 264));
  result = SynchronizedArray<DgnPrimArray<unsigned char>>::update(a2, *(*(a1 + 56) + 272));
  *(a1 + 1616) = 0;
  return result;
}

void FrameTransformerThread::printSize(FrameTransformerThread *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1171);
  if (v51)
  {
    v13 = v50;
  }

  else
  {
    v13 = &unk_262888520;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_262888520, a3, &unk_262888520, v13);
  v46 = this;
  DgnString::~DgnString(&v50);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_262888520);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1174);
  if (v51)
  {
    v17 = v50;
  }

  else
  {
    v17 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v17, v15, v15, 0);
  DgnString::~DgnString(&v50);
  *a4 += v15;
  *a5 += v15;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v18 = 4;
  }

  else
  {
    v18 = 8;
  }

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1175);
  if (v51)
  {
    v20 = v50;
  }

  else
  {
    v20 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v20, v18, v18, 0);
  DgnString::~DgnString(&v50);
  *a4 += v18;
  *a5 += v18;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1176);
  if (v51)
  {
    v23 = v50;
  }

  else
  {
    v23 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v23, v21, v21, 0);
  DgnString::~DgnString(&v50);
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

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1177);
  if (v51)
  {
    v26 = v50;
  }

  else
  {
    v26 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v26, v24, v24, 0);
  DgnString::~DgnString(&v50);
  *a4 += v24;
  *a5 += v24;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1179);
  if (v51)
  {
    v28 = v50;
  }

  else
  {
    v28 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v28, 8, 8, 0);
  DgnString::~DgnString(&v50);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1181);
  if (v51)
  {
    v30 = v50;
  }

  else
  {
    v30 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v30, 1, 1, 0);
  DgnString::~DgnString(&v50);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1183);
  if (v51)
  {
    v32 = v50;
  }

  else
  {
    v32 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v32, 8, 8, 0);
  DgnString::~DgnString(&v50);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1184);
  if (v51)
  {
    v34 = v50;
  }

  else
  {
    v34 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v34, 1, 1, 0);
  DgnString::~DgnString(&v50);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1186);
  if (v51)
  {
    v36 = v50;
  }

  else
  {
    v36 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v36, 4, 4, 0);
  DgnString::~DgnString(&v50);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1188);
  if (v51)
  {
    v38 = v50;
  }

  else
  {
    v38 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v38, 4, 4, 0);
  DgnString::~DgnString(&v50);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1190);
  if (v51)
  {
    v40 = v50;
  }

  else
  {
    v40 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v40, 4, 4, 0);
  DgnString::~DgnString(&v50);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v41 = 4;
  }

  else
  {
    v41 = 8;
  }

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1191);
  if (v51)
  {
    v43 = v50;
  }

  else
  {
    v43 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v43, v41, v41, 0);
  DgnString::~DgnString(&v50);
  *a4 += v41;
  *a5 += v41;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  DgnThreadClient::printSize(v46, a2, (a3 + 1), &v49, &v47, &v48);
  *a4 += v49;
  *a5 += v47;
  *a6 += v48;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1200);
  if (v51)
  {
    v45 = v50;
  }

  else
  {
    v45 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, a3, &unk_262888520, (35 - a3), (35 - a3), v45, *a4, *a5, *a6);
  DgnString::~DgnString(&v50);
}

void sub_2626B79B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *ThreadedFrameTransformer::ThreadedFrameTransformer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, char a11)
{
  v19 = a2;
  *a1 = &unk_287524B70;
  v21 = MemChunkAlloc(0x680uLL, 0);
  v22 = DgnThread<FrameTransformerThreadWorker>::DgnThread(v21, v19, 0, "FrameTransformer");
  *v22 = &unk_287525638;
  *(v22 + 1576) = a3;
  *(v22 + 1584) = a4;
  *(v22 + 1592) = a5;
  *(v22 + 1600) = a6;
  *(v22 + 1608) = a7;
  *(v22 + 1616) = 0;
  *(v22 + 1620) = a8;
  *(v22 + 1624) = a9;
  *(v22 + 1632) = a11;
  *(v22 + 1640) = a10;
  *(v22 + 1648) = 0xFFFFFFF000000000;
  *(v22 + 1656) = 0;
  a1[1] = v22;
  DgnThreadClient::startup(v22);
  return a1;
}

void ThreadedFrameTransformer::~ThreadedFrameTransformer(DgnThreadClient **this)
{
  *this = &unk_287524B70;
  if (DgnThreadClient::isLive(this[1]) && (DgnThreadClient::hasErrored(this[1]) & 1) == 0)
  {
    DgnThreadClient::shutdown(this[1]);
  }

  DgnDelete<FrameTransformerThread>(this[1]);
}

{
  ThreadedFrameTransformer::~ThreadedFrameTransformer(this);

  JUMPOUT(0x26672B1B0);
}

void (***DgnDelete<FrameTransformerThread>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ThreadedFrameTransformer::printSize(ThreadedFrameTransformer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1246);
  if (v20)
  {
    v12 = v19;
  }

  else
  {
    v12 = &unk_262888520;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &unk_262888520, a3, &unk_262888520, v12);
  DgnString::~DgnString(&v19);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &unk_262888520);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v14 = 4;
  }

  else
  {
    v14 = 8;
  }

  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1248);
  if (v20)
  {
    v16 = v19;
  }

  else
  {
    v16 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v16, v14, v14, 0);
  DgnString::~DgnString(&v19);
  *a4 += v14;
  *a5 += v14;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1251);
  if (v20)
  {
    v18 = v19;
  }

  else
  {
    v18 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, a3, &unk_262888520, (35 - a3), (35 - a3), v18, *a4, *a5, *a6);
  DgnString::~DgnString(&v19);
}

void sub_2626B7DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedFrameTransformer::reset(ThreadedFrameTransformer *this)
{
  v1 = *(this + 1);
  result = FrameTransformerThreadWorker::reset(*(v1 + 56));
  *(v1 + 1648) = 0;
  return result;
}

unint64_t ThreadedFrameTransformer::transformFramesUntil(unint64_t result, int a2, uint64_t a3, unint64_t a4)
{
  if (*(a4 + 16) <= a2 && (*a4 & 1) == 0)
  {
    v5 = *(result + 8);
    *(v5 + 1616) = 1;
    *(v5 + 1652) = a2;
    *(v5 + 1656) = a3;
    DgnThreadClient::playAllUntilWorkerPauses(v5);
    *(v5 + 1656) = 0;
    *(v5 + 1652) = -16;

    return FrameTransformerThread::stopScoring(v5, a4);
  }

  return result;
}

uint64_t ThreadedFrameTransformer::maybeStartTransforming(uint64_t a1, uint64_t a2)
{
  isScoring = FrameTransformerThread::isScoring(*(a1 + 8));
  v5 = *(a1 + 8);
  if ((isScoring & 1) == 0 && (**(*(v5 + 56) + 272) & 1) == 0)
  {
    *(v5 + 1656) = a2;
    DgnThreadClient::play(v5);
    *(v5 + 1616) = 1;
    *(v5 + 1656) = 0;
    v5 = *(a1 + 8);
  }

  return FrameTransformerThread::isScoring(v5);
}

uint64_t FrameTransformerThread::isScoring(FrameTransformerThread *this)
{
  if (*(this + 1616) != 1)
  {
    return 0;
  }

  result = DgnThreadClient::isLive(this);
  if (result)
  {
    return DgnThreadClient::hasErrored(this) ^ 1;
  }

  return result;
}