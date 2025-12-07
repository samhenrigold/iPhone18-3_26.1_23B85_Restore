void sub_26268CC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x26672B1B0](v13, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x420]) == 1 && __p != &a13 && __p != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

TAllocator *TPatternManager::clear(TPatternManager *this)
{
  v2 = *(this + 4);
  v4 = *(v2 + 48);
  result = (v2 + 48);
  if (v4 >= 0x801)
  {
    result = TAllocator::clear(result);
  }

  *(this + 22) = 0;
  return result;
}

void TPatternManager::addWords(TPatternManager *this, TVertex *a2, TGraph *a3, TSegmenter *a4, uint64_t a5)
{
  *this = a5;
  v9 = *(a2 + 2);
  Segment = TSegmenter::getSegment(a4, v9);
  if (!Segment)
  {
    return;
  }

  v11 = Segment;
  if (*(Segment + 24) == 5)
  {
    return;
  }

  v12 = **Segment;
  {
    operator new();
  }

  if (v12 > 159)
  {
    v14 = v12 == 12288;
    if (v12 >= 12288)
    {
      v15 = 65279;
    }

    else
    {
      v14 = v12 == 160;
      v15 = 8203;
    }

    if (v14 || v12 == v15)
    {
      return;
    }
  }

  else if (v12 <= 0x20 && ((1 << v12) & 0x100002600) != 0)
  {
    return;
  }

  v80 = a3;
  v17 = *(v11 + 8) - v9;
  v84 = v17;
  if (v17 >= 0x32)
  {
    v17 = 50;
  }

  if (v9 >= *(this + 22))
  {
    v18 = 50;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(this + 2);
  v20 = *(*(this + 3) + 56);
  v96[0] = &unk_287528B70;
  v96[1] = v9;
  v96[2] = a4;
  v96[3] = v20;
  v96[4] = v18;
  ActiveConfigHandle = TParam::getActiveConfigHandle((v19 + 21160));
  v22 = *(v19 + 4 * TParam::getValidConfig((v19 + 21160), ActiveConfigHandle) + 21320);
  v23 = *(this + 4);
  v24 = *(v23 + 16);
  *(v23 + 24) = v22;
  (*(v24 + 16))();
  AllProductions = TParser::getAllProductions(*(this + 4), v96);
  TAllocator::TAllocator(v95, 2048);
  if (!AllProductions)
  {
    v56 = 0;
    goto LABEL_103;
  }

  v82 = 0;
  v26 = &v90;
  v27 = AllProductions;
  do
  {
    v28 = **TSegmenter::getPreviousSegment(a4, &v9[v27[2]]);
    {
      operator new();
    }

    if (v28 > 159)
    {
      v30 = v28 == 12288;
      if (v28 >= 12288)
      {
        v31 = 65279;
      }

      else
      {
        v30 = v28 == 160;
        v31 = 8203;
      }

      if (v30 || v28 == v31)
      {
        goto LABEL_43;
      }
    }

    else if (v28 <= 0x20 && ((1 << v28) & 0x100002600) != 0)
    {
      goto LABEL_43;
    }

    if (TGrammarCompiler::getAttributeValue(v27, "s", v95, 0) <= 1)
    {
      if (*v33)
      {
        if (TGrammarCompiler::getAttributeValue(v27, "l", v95, 0) <= 1)
        {
          v35 = v34;
          if (!*v34)
          {
            goto LABEL_91;
          }

          v36 = v26;
          v88 = v26;
          v89 = xmmword_26286B6F0;
          v94 = 1;
          PreviousSegment = TSegmenter::getPreviousSegment(a4, v9);
          v39 = v38;
          while (PreviousSegment && *(PreviousSegment + 24) != 5)
          {
            if (*(&v89 + 1) > 0x31uLL)
            {
              goto LABEL_59;
            }

            v40 = 0;
            v41 = *PreviousSegment;
              ;
            }

            TBuffer<wchar_t>::insert(&v88, 0, v41, v40 - 1);
            PreviousSegment = TSegmenter::getPreviousSegment(a4, v39);
            v39 = v43;
          }

          if (!*(&v89 + 1))
          {
            TBuffer<wchar_t>::insert(&v88, 0, "\n", 1uLL);
          }

LABEL_59:
          TRegExp::TRegExp(&__p, v35, *(this + 1) + 240);
          v26 = v36;
          if (*(&v89 + 1) >= v89)
          {
            if (v94)
            {
              v97[0] = 0;
              TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v97, 1uLL);
              v44 = v88;
              --*(&v89 + 1);
            }

            else
            {
              v44 = v88;
              if (v89)
              {
                v88[v89 - 1] = 0;
              }
            }
          }

          else
          {
            v44 = v88;
            v88[*(&v89 + 1)] = 0;
          }

          v45 = TRegExp::match(&__p, v44, 1);
          TRegExp::~TRegExp(&__p);
          if (v94 == 1 && v88 != v36 && v88)
          {
            MEMORY[0x26672B1B0](v88);
          }

          if (v45)
          {
LABEL_91:
            if (TGrammarCompiler::getAttributeValue(v27, "r", v95, 0) <= 1)
            {
              v47 = v46;
              if (!*v46)
              {
                goto LABEL_92;
              }

              v48 = v26;
              v88 = v26;
              v89 = xmmword_26286B6F0;
              v94 = 1;
              for (i = TSegmenter::getSegment(a4, &v9[v27[2]]); i && *(i + 24) != 5; i = TSegmenter::getSegment(a4, *(i + 8)))
              {
                if (*(&v89 + 1) > 0x31uLL)
                {
                  goto LABEL_81;
                }

                v50 = 0;
                v51 = *i;
                  ;
                }

                TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v51, v50 - 1);
              }

              if (!*(&v89 + 1))
              {
                TBuffer<wchar_t>::insert(&v88, 0, "\n", 1uLL);
              }

LABEL_81:
              TRegExp::TRegExp(&__p, v47, *(this + 1) + 240);
              v26 = v48;
              if (*(&v89 + 1) >= v89)
              {
                if (v94)
                {
                  v97[0] = 0;
                  TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v97, 1uLL);
                  v53 = v88;
                  --*(&v89 + 1);
                }

                else
                {
                  v53 = v88;
                  if (v89)
                  {
                    v88[v89 - 1] = 0;
                  }
                }
              }

              else
              {
                v53 = v88;
                v88[*(&v89 + 1)] = 0;
              }

              v54 = TRegExp::match(&__p, v53, 2);
              TRegExp::~TRegExp(&__p);
              if (v94 == 1 && v88 != v48 && v88)
              {
                MEMORY[0x26672B1B0](v88);
              }

              if (v54)
              {
LABEL_92:
                v55 = v82;
                if (v27[2] > v82)
                {
                  v55 = v27[2];
                }

                v82 = v55;
              }
            }
          }
        }
      }

      else
      {
        tknPrintString("Error: Top production 'spoken' attribute is an empty string\n");
      }
    }

LABEL_43:
    v27 = *v27;
  }

  while (v27);
  v56 = v82;
  if (v82)
  {
    if (&v9[v82] <= *(this + 22))
    {
      v56 = v84;
    }

    else
    {
      *(this + 22) = &v9[v82];
    }
  }

  else
  {
    AllProductions = 0;
  }

LABEL_103:
  v57 = *(this + 2);
  v58 = TParam::getActiveConfigHandle((v57 + 21512));
  ValidConfig = TParam::getValidConfig((v57 + 21512), v58);
  v60 = MEMORY[0x277D82828];
  if (*(v57 + ValidConfig + 21664) == 1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v88);
    TParser::logChart(*(this + 4), &v88);
    std::stringbuf::str();
    if (v87 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    tknPrintString(p_p);
    if (v87 < 0)
    {
      operator delete(__p);
    }

    v88 = *v60;
    *(&v88 + *(v88 - 3)) = v60[3];
    *&v89 = MEMORY[0x277D82878] + 16;
    if (v92 < 0)
    {
      operator delete(v91);
    }

    *&v89 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v89 + 1);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v93);
  }

  if (AllProductions)
  {
    v62 = v56;
    v83 = *v60;
    v81 = v60[3];
    do
    {
      v63 = AllProductions[2];
      if (v63 == v62 || v63 == v84)
      {
        v65 = *(this + 2);
        v66 = TParam::getActiveConfigHandle((v65 + 21760));
        if (*(v65 + TParam::getValidConfig((v65 + 21760), v66) + 21912) == 1)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v88);
          TParser::logTree(*(this + 4), AllProductions, &v88);
          std::stringbuf::str();
          if (v87 >= 0)
          {
            v67 = &__p;
          }

          else
          {
            v67 = __p;
          }

          tknPrintString(v67);
          if (v87 < 0)
          {
            operator delete(__p);
          }

          v88 = v83;
          *(&v88 + *(v83 - 3)) = v81;
          *&v89 = MEMORY[0x277D82878] + 16;
          if (v92 < 0)
          {
            operator delete(v91);
          }

          *&v89 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v89 + 1);
          std::ostream::~ostream();
          MEMORY[0x26672B160](v93);
        }

        __p = TGrammarCompiler::getAttributeValue(AllProductions, "s", v95, 0);
        v86 = v68;
        if (__p <= 1)
        {
          if (*v68)
          {
            v69 = callBackSeqAlt(&__p, 1, "S", *(this + 1), v95);
            v71 = v70;
            __p = v69;
            v86 = v70;
            if (v69 <= 1 && v70 && TGrammarCompiler::getAttributeValue(AllProductions, "n", v95, 0) <= 1)
            {
              v73 = v72;
              v74 = v60;
              v75 = TGraph::addVertex(v80, &v9[AllProductions[2]]);
              v76 = TLexicon::addTempWord(*(this + 1), v73, "p", 0, v71);
              LODWORD(v88) = 5;
              v89 = v76;
              v90 = 0;
              TGraph::addEdge(v80, a2, v75, &v88);
              v60 = v74;
            }
          }
        }
      }

      AllProductions = *AllProductions;
    }

    while (AllProductions);
  }

  v77 = *(this + 4);
  v79 = *(v77 + 48);
  v78 = (v77 + 48);
  if (v79 >= 0x801)
  {
    TAllocator::clear(v78);
  }

  TAllocator::clear(v95);
}

void sub_26268D7B8(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void *addToken(__int32 **a1, TVertex *a2, TVertex *a3, TGraph *a4, TLexicon *a5)
{
  HeadClone = TLexicon::findHeadClone(a5, a1[3]);
  if (HeadClone)
  {
    v11 = 1;
  }

  else
  {
    HeadClone = TLexicon::addTempWord(a5, a1[3], 0, 0, 0);
    v11 = 4;
  }

  v13 = v11;
  v14 = HeadClone;
  v15 = 0;
  v16 = 0;
  return TGraph::addEdge(a4, a2, a3, &v13);
}

const char *addAlt(const TFileObject *a1, TVertex *a2, TVertex *a3, TGraph *a4, TLexicon *a5, const char *a6, const char *a7, const char *a8)
{
  v9 = *(a1 + 3);
  if (v9)
  {
    v15 = a7;
    while (1)
    {
      v16 = *(v9 + 8);
      if (!wcscmp(v16, "T"))
      {
        addToken(v9, a2, a3, a4, a5);
      }

      else
      {
        if (!wcscmp(v16, "A"))
        {
          v17 = addAlt(v9, a2, a3, a4, a5, a6, a7, a8);
LABEL_10:
          if (v17 > a7)
          {
            v15 = v17;
          }

          goto LABEL_14;
        }

        if (!wcscmp(v16, "P"))
        {
          addPattern(v9, a2, a3, a4, a5);
        }

        else if (!wcscmp(v16, "S"))
        {
          v17 = addSequence(v9, a2, a3, a4, a5, a6, a7, a8);
          goto LABEL_10;
        }
      }

LABEL_14:
      v9 = *(v9 + 16);
      if (!v9)
      {
        return v15;
      }
    }
  }

  return a7;
}

uint64_t addPattern(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = 0;
  v9 = *(a1 + 24);
  do
  {
    v10 = v9[1];
    if (!wcscmp(v10, "A"))
    {
      v15 = 0;
      v11 = v9[3];
      {
        operator new();
      }

      v7 = TLocaleInfo::stringToULong(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11, &v15, 1);
    }

    else if (!wcscmp(v10, "V"))
    {
      v8 = v9[3];
    }

    v9 = v9[2];
  }

  while (v9);
  return (*(*v7 + 24))(v7, v8, a2, a3, a4, a5);
}

void sub_26268DC70(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TPatternManager::expandWord(uint64_t a1, TGraph *a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (a4)
  {
    v27 = v29;
    v28 = xmmword_26286B6F0;
    v30 = 1;
    TWord::getWrittenForm(*(a3 + 56), &v27);
    v22 = v25;
    v23 = 256;
    v26 = 1;
    v24 = 0;
    TBuffer<wchar_t>::insert(&v22, 0, "d", 0xCuLL);
    TBuffer<wchar_t>::operator+=(&v22, &v27);
    v9 = *(a1 + 8);
    if (v24 >= v23)
    {
      if (v26)
      {
        v18 = 0;
        TBuffer<wchar_t>::insert(&v22, v24, &v18, 1uLL);
        v10 = v22;
        --v24;
      }

      else
      {
        v10 = v22;
        if (v23)
        {
          v22[v23 - 1] = 0;
        }
      }
    }

    else
    {
      v10 = v22;
      v22[v24] = 0;
    }

    v13 = TLexicon::addTempWord(v9, 0, v10, 0, 0);
    v12 = TGraph::addVertex(a2, 0);
    v18 = 6;
    v19 = v13;
    v20 = 0;
    v21 = 0;
    TGraph::addEdge(a2, v8, v12, &v18);
    v24 = 0;
    TBuffer<wchar_t>::insert(&v22, 0, "d", 0xAuLL);
    TBuffer<wchar_t>::operator+=(&v22, &v27);
    v14 = *(a1 + 8);
    if (v24 >= v23)
    {
      if (v26)
      {
        v18 = 0;
        TBuffer<wchar_t>::insert(&v22, v24, &v18, 1uLL);
        v15 = v22;
        --v24;
      }

      else
      {
        v15 = v22;
        if (v23)
        {
          v22[v23 - 1] = 0;
        }
      }
    }

    else
    {
      v15 = v22;
      v22[v24] = 0;
    }

    v16 = TLexicon::addTempWord(v14, 0, v15, 0, 0);
    v11 = TGraph::addVertex(a2, 0);
    v18 = 6;
    v19 = v16;
    v20 = 0;
    v21 = 0;
    TGraph::addEdge(a2, v11, v7, &v18);
    if (v26 == 1 && v22 != v25 && v22)
    {
      MEMORY[0x26672B1B0]();
    }

    if (v30 == 1 && v27 != v29 && v27)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  else
  {
    v11 = *(a3 + 24);
    v12 = *(a3 + 16);
  }

  v17 = wcslen(**(a3 + 56));
  TFileObjectParser::TFileObjectParser(&v27, (**(a3 + 56) + 4 * v17 + 4), 1, (*(a1 + 8) + 240));
  addSequence(v27[3], v12, v11, a2, *(a1 + 8), *(v12 + 2), *(v12 + 2), v11[3]);
  TFileObjectParser::~TFileObjectParser(&v27);
  TGraph::deleteEdge(a2, a3);
}

void sub_26268DFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v14 && a13)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x858]) == 1)
  {
    v16 = STACK[0x440];
    if (STACK[0x440] != v13)
    {
      if (v16)
      {
        MEMORY[0x26672B1B0](v16, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TDigitObject::~TDigitObject(TDigitObject *this)
{
  TDigitObject::~TDigitObject(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287528AA0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_287527FD0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void TRomanObject::~TRomanObject(TRomanObject *this)
{
  TRomanObject::~TRomanObject(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287528A50;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_287527FD0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t TRomanObject::isBuildable(uint64_t a1, int *a2)
{
  v5 = 0;
  {
    operator new();
  }

  v3 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2, &v5);
  return (v3 < 0xBB8) & ~v5;
}

void sub_26268E19C(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TCountingObject::~TCountingObject(void **this)
{
  *this = &unk_287527FD0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_287527FD0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

BOOL TCountingObject::isBuildable(uint64_t a1, __int32 *a2)
{
  do
  {
    v4 = a2;
    v5 = a2[1];
    ++a2;
    if (!v5)
    {
      break;
    }

    v6 = *v4;
    {
      operator new();
    }

    DigitExtended = v6 - 48;
    if (v6 < 48)
    {
      break;
    }

    if (v6 > 0x39)
    {
      if (v6 < 0x660)
      {
        return wcslen(v4) <= *(a1 + 88);
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v6);
    }
  }

  while (!DigitExtended);
  return wcslen(v4) <= *(a1 + 88);
}

void sub_26268E374(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TArrayObject::~TArrayObject(TArrayObject *this)
{
  TArrayObject::~TArrayObject(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287528B98;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_287527FD0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

BOOL TArrayObject::isBuildable(uint64_t a1, __int32 *a2)
{
  do
  {
    v4 = a2;
    v5 = a2[1];
    ++a2;
    if (!v5)
    {
      break;
    }

    v6 = *v4;
    {
      operator new();
    }

    DigitExtended = v6 - 48;
    if (v6 < 48)
    {
      break;
    }

    if (v6 > 0x39)
    {
      if (v6 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v6);
    }
  }

  while (!DigitExtended);
  if (wcslen(v4) > 5)
  {
    return 0;
  }

  v11 = 0;
  {
    operator new();
  }

  v8 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v4, &v11);
  if (v11)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  return v8 < ((*(a1 + 40) - v9) >> 3) && *(v9 + 8 * v8) != 0;
}

void sub_26268E570(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

const char *TArrayObject::build(uint64_t a1, int *a2, TVertex *a3, TVertex *a4, TGraph *a5, TLexicon *a6)
{
  v14 = 0;
  {
    operator new();
  }

  v12 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2, &v14);
  return addSequence(*(*(a1 + 32) + 8 * v12), a3, a4, a5, a6, 0, 0, 0);
}

void sub_26268E6B0(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

size_t callBackSeqAltHelper(uint64_t a1, uint64_t a2, __int32 *a3, uint64_t a4, __int32 *a5)
{
  v5 = a5;
  if (a5)
  {
    wcscpy(a5, a3);
    v8 = &v5[wcslen(v5)];
    strcpy(v8, " ");
    v5 = &v8[4 * wcslen(v8)];
  }

  if (a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = a2;
    v12 = 1;
    while (1)
    {
      v13 = (a1 + 16 * v9);
      if (*v13 > 1uLL)
      {
        break;
      }

      v14 = v13[1];
      if (*v14)
      {
        v15 = wcsncmp(v14, "S", 8uLL);
        v16 = v15 == 0;
        if (v15)
        {
LABEL_8:
          if (!wcsncmp(v14, "S", 6uLL) || !wcsncmp(v14, "A", 6uLL) || !wcsncmp(v14, "P", 0xAuLL) || !wcsncmp(v14, "S", 7uLL))
          {
            v19 = wcslen(v14);
            if (v5)
            {
              wcscpy(v5, v14);
              v5 += wcslen(v5);
            }
          }

          else
          {
            if (TLexicon::checkName(a4, v14, 0, 0xFFFFFFFFFFFFFFFFLL))
            {
              loggableUnicode(v14, &__p);
              if (v36 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              tknPrintf("Warning: '%s' : The tokenizer grammar constructed an invalid word name.\n", v26, p_p);
              if (SHIBYTE(v36) < 0)
              {
                operator delete(__p);
              }

              return 0;
            }

            __p = v37;
            v36 = xmmword_26286B6F0;
            v38 = 1;
            slashEscape(v14, &__p);
            v17 = *(&v36 + 1);
            if (v5)
            {
              v30 = v5;
              v31 = *(&v36 + 1) + 11;
              v34 = 0;
              v32 = 0;
              TBuffer<wchar_t>::insert(&v30, 0, "T", 9uLL);
              if (*(&v36 + 1) >= v36)
              {
                if (v38)
                {
                  v39[0] = 0;
                  TBuffer<wchar_t>::insert(&__p, *(&v36 + 1), v39, 1uLL);
                  v18 = __p;
                  --*(&v36 + 1);
                }

                else
                {
                  v18 = __p;
                  if (v36)
                  {
                    *(__p + v36 - 1) = 0;
                  }
                }
              }

              else
              {
                v18 = __p;
                *(__p + *(&v36 + 1)) = 0;
              }

              v22 = 0;
                ;
              }

              TBuffer<wchar_t>::insert(&v30, v32, v18, v22 - 1);
              v39[0] = 34;
              TBuffer<wchar_t>::insert(&v30, v32, v39, 1uLL);
              if (v32 >= v31)
              {
                if (v34)
                {
                  v39[0] = 0;
                  TBuffer<wchar_t>::insert(&v30, v32--, v39, 1uLL);
                }

                else if (v31)
                {
                  v30[v31 - 1] = 0;
                }
              }

              else
              {
                v30[v32] = 0;
              }

              v24 = wcslen(v5);
              if (v34 == 1 && v30 != &v33 && v30)
              {
                MEMORY[0x26672B1B0]();
              }

              v5 += v24;
            }

            if (v38 == 1 && __p != v37 && __p)
            {
              MEMORY[0x26672B1B0]();
            }

            v19 = v17 + 10;
          }

          v10 += v19;
          v12 = v16;
        }

        else if (v10)
        {
          v20 = wcscmp(a3, "A");
          if (!((v20 != 0) | v12 & 1))
          {
            v21 = v11;
            while (--v21)
            {
              if (wcsncmp(v14, "S", 8uLL))
              {
                goto LABEL_8;
              }
            }

            goto LABEL_51;
          }

          v12 |= v20 == 0;
        }
      }

      ++v9;
      --v11;
      if (v9 == a2)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_51:
    if (v5)
    {
      strcpy(v5, "}");
    }

    if (v10)
    {
      return v10 + wcslen(a3) + 6;
    }
  }

  return 0;
}

void sub_26268EB38(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  _Unwind_Resume(a1);
}

void std::vector<TFileObject *>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_26286B680)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_26286B680)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_26286B680)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_26286B680)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_26286B680)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_26286B680)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void MrecInitModule_timer_mrecutil(void)
{
  if (!gParDiagnosticComputeFullTimingStats)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DiagnosticComputeFullTimingStats", byte_262881FF8, byte_262881FF8, 0, SetShadowDiagnosticComputeFullTimingStats, 0);
    *v2 = &unk_287527EA0;
    gParDiagnosticComputeFullTimingStats = v2;
    gShadowDiagnosticComputeFullTimingStats = 0;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDiagnosticComputeFullTimingStats);
  }
}

void MrecTime::MrecTime(MrecTime *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

double MrecTime::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

DgnString *MrecTime::formatAndAppendToString(MrecTime *this, DgnString *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x64uLL, "%04u-%02u-%02u %02u:%02u:%02u", *(this + 5) + 1900, *(this + 4) + 1, *(this + 3), *(this + 2), *(this + 1), *this);
  return DgnString::operator+=(a2, __str);
}

double MrecTime::setToCurrentLocalTime(MrecTime *this)
{
  v4 = time(0);
  v2 = localtime(&v4);
  if (!v2)
  {
    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/timer.cpp", 157, "mrecutil/timer", 5, "%s", byte_262881FF8);
  }

  *this = *&v2->tm_sec;
  result = *&v2->tm_mon;
  *(this + 2) = result;
  return result;
}

uint64_t MrecTime::setToPreprocessorStyleDateAndTime(MrecTime *this, const char *a2, const char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  *__s1 = 0;
  v7 = 0;
  sscanf(a2, "%s %u %u", __s1, this + 12, &v7);
  v5 = 0;
  *(this + 5) = v7 - 1900;
  while (strcmp(__s1, MrecTime::setToPreprocessorStyleDateAndTime(char const*,char const*)::ppMonth[v5]))
  {
    if (++v5 == 12)
    {
      return sscanf(a3, "%u:%u:%u", this + 8, this + 4, this);
    }
  }

  *(this + 4) = v5;
  return sscanf(a3, "%u:%u:%u", this + 8, this + 4, this);
}

DgnString *MrecTime::appendLocalTimeToString(MrecTime *this, DgnString *a2)
{
  memset(v4, 0, sizeof(v4));
  MrecTime::setToCurrentLocalTime(v4);
  return MrecTime::formatAndAppendToString(v4, this);
}

_DWORD *MrecTime::unpackLittleEndMrecTime(_DWORD *this, const unsigned int *a2)
{
  *this = *a2;
  this[1] = a2[1];
  this[2] = a2[2];
  this[3] = a2[3];
  this[4] = a2[4];
  this[5] = a2[5];
  return this;
}

unsigned int *MrecTime::packLittleEndMrecTime(unsigned int *this, unsigned int *a2)
{
  *a2 = *this;
  a2[1] = this[1];
  a2[2] = this[2];
  a2[3] = this[3];
  a2[4] = this[4];
  a2[5] = this[5];
  return this;
}

__darwin_time_t ClockTimer::getCurrentMicrosec(ClockTimer *this)
{
  if (gettimeofday(&v3, 0))
  {
    v1 = __error();
    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/timer.cpp", 410, "mrecutil/timer", 6, "%d", *v1);
  }

  return v3.tv_usec + 1000000 * v3.tv_sec;
}

__darwin_time_t ClockTimer::getCurrentTickMicrosec(ClockTimer *this)
{
  if (gettimeofday(&v3, 0))
  {
    v1 = __error();
    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/timer.cpp", 486, "mrecutil/timer", 6, "%d", *v1);
  }

  return v3.tv_usec + 1000000 * v3.tv_sec;
}

uint64_t ClockTimer::initClockTimer(ClockTimer *this)
{
  *this = 0;
  *(this + 1) = 1;
  *(this + 2) = 0x100000001;
  *(this + 24) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  CurrentMicrosec = ClockTimer::getCurrentMicrosec(this);
  if (!CurrentMicrosec)
  {
    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/timer.cpp", 571, "mrecutil/timer", 4, "%s", &warnStr_mrecutil_timer_W_BAD_ELAPSED_MICROSEC);
  }

  *this = 1;
  *(this + 5) = ClockTimer::getCurrentMicrosec(CurrentMicrosec);
  result = getrusage(0, &v4);
  *(this + 6) = v4.ru_stime.tv_usec + v4.ru_utime.tv_usec + 1000000 * (v4.ru_stime.tv_sec + v4.ru_utime.tv_sec);
  return result;
}

double ClockTimer::initCyclesPerSecondAndSpeedFactor(ClockTimer *this)
{
  *(this + 1) = 1;
  *&result = 0x100000001;
  *(this + 2) = 0x100000001;
  *(this + 24) = 1;
  return result;
}

int64x2_t ClockTimer::useFreeTime@<Q0>(int64x2_t *a1@<X8>)
{
  v4 = 0u;
  v5 = 0u;
  SnapTime::recordTime(&v4, 1, 0, 0, 0);
  usleep(0x2710u);
  *a1 = 0u;
  a1[1] = 0u;
  SnapTime::recordTime(a1, 1, 0, 0, 0);
  result = vsubq_s64(*a1, v4);
  v3 = vsubq_s64(a1[1], v5);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MrecInitModule_trgrm_voc(void)
{
  if (!gParDebugWordFst)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugWordFst", byte_262881FFC, byte_262881FFC, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugWordFst = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordFst);
  }

  if (!gParDebugWordFstSelfLoop)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugWordFstSelfLoop", byte_262881FFC, byte_262881FFC, 1, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugWordFstSelfLoop = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordFstSelfLoop);
  }

  if (!gParDebugWordFstShowPronlessWords)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugWordFstShowPronlessWords", byte_262881FFC, byte_262881FFC, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugWordFstShowPronlessWords = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordFstShowPronlessWords);
  }

  if (!gParDebugTransducerGrammarIO)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugTransducerGrammarIO", byte_262881FFC, byte_262881FFC, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugTransducerGrammarIO = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDebugTransducerGrammarIO);
  }
}

EnvMgr **DgnDelete<StateMgr>(EnvMgr **result)
{
  if (result)
  {
    StateMgr::~StateMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

RuleMgr *DgnDelete<RuleMgr>(RuleMgr *result)
{
  if (result)
  {
    RuleMgr::~RuleMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void MrecInitModule_spdebug_sigproc(void)
{
  if (!gParDebugSignalProcessing)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugSignalProcessing", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugSignalProcessing = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugSignalProcessing);
  }
}

void MrecInitModule_dsmset_mrecutil(void)
{
  if (!gParDebugDgnSharedMemSet)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugDgnSharedMemSet", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugDgnSharedMemSet = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugDgnSharedMemSet);
  }
}

DSMSetData **DgnSharedMemSet::createSet(DgnSharedMemSet *this, const DgnString *a2, const DgnString *a3)
{
  v5 = MemChunkAlloc(0x130uLL, 0);
  DSMSetData::DSMSetData(v5, this, a2);
  DSMSetData::refMaybeCreateSetRecordBlobEx(v6);
  result = MemChunkAlloc(8uLL, 0);
  *result = v5;
  return result;
}

uint64_t DgnSharedMemSet::getMaybeReserveAndRefDSMIdEx(DSMSetData **this, char **a2, int a3)
{
  v6 = *this;
  v7 = &byte_262899963;
  if (*(a2 + 2))
  {
    v7 = *a2;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = 0;
    v10 = (v7 + 1);
    do
    {
      HIDWORD(v11) = v9;
      LODWORD(v11) = v9;
      v9 = (v11 >> 19) + v8;
      v12 = *v10++;
      v8 = v12;
    }

    while (v12);
    v13 = (-1640531527 * v9);
  }

  else
  {
    v13 = 0;
  }

  v70 = -1;
  v71 = 0;
  v14 = *(*(v6 + 34) + 48);
  v15 = sysconf(29);
  if (v15 <= 0x10000)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = v15;
  }

  v17 = mmap(0, v16, 3, 1, v14, 0);
  v70 = v17;
  v71 = v16;
  if (v17 == -1)
  {
    if (*(*this + 6))
    {
      v18 = *(*this + 2);
    }

    else
    {
      v18 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 191, "mrecutil/dsmset", 3, "%.500s", v18);
    v17 = v70;
  }

  v69 = v6 + 32;
  pthread_mutex_lock((v6 + 32));
  ++*(v6 + 24);
  *(v6 + 13) = pthread_self();
  v67 = v6 + 112;
  if (DgnSharedLock::acquire(v6 + 14, 0xEA60u))
  {
    if (*(*this + 6))
    {
      v19 = *(*this + 2);
    }

    else
    {
      v19 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 201, "mrecutil/dsmset", 2, "%.500s", v19);
  }

  v61 = a3;
  v20 = 0;
  v60 = v17;
  v21 = v17 + 56;
  v22 = 0xFFFFFFFFLL;
  do
  {
    v23 = &v21[56 * v20];
    v24 = 5 * v20++;
    v25 = 16 * v24;
    while (1)
    {
      v26 = *(v6 + 34);
      v27 = veorq_s8(*v23, v23[1]);
      *v27.i8 = veor_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
      v28 = v23[2].i32[1];
      if ((v23[2].i32[0] ^ v23[2].i32[2] ^ v23[2].i32[3] ^ v28 ^ v27.i32[1] ^ v27.i32[0]) != v23[3].i32[0])
      {
        goto LABEL_41;
      }

      v29 = v23[2].i32[2];
      if (v29 == 1)
      {
        goto LABEL_41;
      }

      if (!v29)
      {
        break;
      }

      if (v28 == v13)
      {
        if (*(v26 + v25 + 120))
        {
          if (*(a2 + 2))
          {
            v30 = *a2;
          }

          else
          {
            v30 = &byte_262899963;
          }

          if (!strcmp(v30, (*(v26 + v25 + 136) + 16)))
          {
            ++*(v26 + v25 + 152);
LABEL_76:
            v22 = v20;
            goto LABEL_72;
          }
        }

        else
        {
          DgnString::DgnString(&v65);
          DSMSetData::getDSMName(*this, v20, v13, v23[2].u32[0], &v65);
          if (v66)
          {
            v31 = v65;
          }

          else
          {
            v31 = &byte_262899963;
          }

          if (*(a2 + 2))
          {
            v32 = *a2;
          }

          else
          {
            v32 = &byte_262899963;
          }

          if (!strcmp(v31, v32))
          {
            v57 = *(v26 + v25 + 152);
            if (!v57)
            {
              v58 = v23[2].i32[3] + 1;
              v23[2].i32[3] = v58;
              v59 = v23->i64[1] ^ v23->i64[0] ^ v23[1].i64[0] ^ v23[1].i64[1];
              v23[3].i32[0] = v23[2].i32[2] ^ v23[2].i32[0] ^ v23[2].i32[1] ^ v58 ^ HIDWORD(v59) ^ v59;
            }

            *(v26 + v25 + 152) = v57 + 1;
            DgnString::~DgnString(&v65);
            goto LABEL_76;
          }

          DgnString::~DgnString(&v65);
        }
      }

LABEL_41:
      ++v20;
      v23 = (v23 + 56);
      v25 += 80;
      if (v20 == 1024)
      {
        goto LABEL_47;
      }
    }

    if (v22 == -1)
    {
      v22 = v20;
    }

    else
    {
      v22 = v22;
    }
  }

  while (v20 != 1023);
LABEL_47:
  if (!v61)
  {
    v22 = 0xFFFFFFFFLL;
    goto LABEL_72;
  }

  if (v22 == -1)
  {
    if (*(*this + 6))
    {
      v33 = *(*this + 2);
    }

    else
    {
      v33 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 326, "mrecutil/dsmset", 4, "%.500s", v33);
  }

  DgnString::DgnString(&v65);
  DSMSetData::getSysReserveName(v6, v13, v22, &v65);
  v34 = *(a2 + 2);
  v35 = v34 != 0;
  v36 = v34 - 1;
  if (v35)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = sysconf(29);
  v39 = (v37 & 0xFFFFFFF0) + 32;
  v40 = ((v38 - 1) + v39) & ~(v38 - 1);
  v64 = -1;
  v41 = DSMHandle::open(&v64, *this, a2, &v65, v40, 1, 1);
  v42 = mmap(0, v40, 3, 1, v64, 0);
  v62 = v42;
  v63 = v40;
  if (v42 == -1 && v41)
  {
    DSMHandle::unlink(*this, &v65, v43);
    goto LABEL_60;
  }

  if (v42 == -1)
  {
LABEL_60:
    if (*(a2 + 2))
    {
      v44 = *a2;
    }

    else
    {
      v44 = &byte_262899963;
    }

    if (v66)
    {
      v45 = v65;
    }

    else
    {
      v45 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 355, "mrecutil/dsmset", 5, "%.500s %.500s %llu", v44, v45, v40);
    v42 = v62;
  }

  DSMHeadData::init(v42, a2, 0);
  v46 = pthread_self();
  v47 = getpid();
  v48 = v47;
  PlatformAbsoluteTime = ClockTimer::getPlatformAbsoluteTime(v47);
  v50 = *(v6 + 34) + 80 * v22;
  *(v50 + 72) = 1;
  *(v50 + 24) = v46;
  v51 = v64;
  v64 = -1;
  v52 = *(v50 + 52);
  if (v52 != -1)
  {
    close(v52);
  }

  *(v50 + 52) = v51;
  v53 = v62;
  v54 = v63;
  v62 = -1;
  if (v53 != -1)
  {
    munmap(*(v50 + 56), *(v50 + 64));
  }

  *(v50 + 56) = v53;
  *(v50 + 64) = v54;
  *(v50 + 8) = 0;
  *(v50 + 16) = v48;
  *v50 = PlatformAbsoluteTime;
  *(v50 + 32) = v39;
  *(v50 + 36) = 2;
  *(v50 + 44) = v13;
  v55 = &v60[56 * v22];
  *v55 = PlatformAbsoluteTime;
  *(v55 + 1) = 0;
  *(v55 + 2) = 0;
  *(v55 + 3) = v48;
  *(v55 + 8) = v39;
  *(v55 + 9) = v13;
  *(v55 + 11) = 1;
  *(v55 + 12) = (v39 | 2) ^ ((PlatformAbsoluteTime ^ v48) >> 32) ^ PlatformAbsoluteTime ^ v48 ^ v13 ^ 1;
  __dmb(0xBu);
  *(v50 + 40) = 1;
  *(v55 + 10) = 2;
  DSMMappedPtr::~DSMMappedPtr(&v62);
  DSMHandle::~DSMHandle(&v64);
  DgnString::~DgnString(&v65);
LABEL_72:
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(&v67);
  Latch<DgnLock,LatchAdapter>::~Latch(&v69);
  DSMMappedPtr::~DSMMappedPtr(&v70);
  return v22;
}

void sub_262690400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(va);
  Latch<DgnLock,LatchAdapter>::~Latch(va1);
  DSMMappedPtr::~DSMMappedPtr((v19 - 96));
  _Unwind_Resume(a1);
}

void DSMHeadData::init(DSMHeadData *this, const DgnString *a2, uint64_t a3)
{
  v4 = *(a2 + 2);
  LODWORD(v5) = v4 - 1;
  if (v4)
  {
    v5 = v5;
  }

  else
  {
    v5 = 0;
  }

  *this = 0;
  *(this + 1) = v5;
  *(this + 1) = a3;
  if (v4 >= 2)
  {
    v6 = 0;
    do
    {
      *(this + v6 + 16) = *(*a2 + v6);
      ++v6;
    }

    while (v6 < v5);
  }

  v7 = v5 & 0xFFFFFFF0;
  v8 = (v5 & 0xFFFFFFF0) + 32;
  if (v5 < (v5 & 0xFFFFFFF0) + 16)
  {
    v9 = this + v5;
    if (v4)
    {
      ++v7;
    }

    bzero(v9 + 16, v7 - v4 + 15 + 1);
  }

  v10 = 0;
  if (v8)
  {
    LODWORD(v11) = v8 >> 2;
    if (v8 >> 2 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v11;
    }

    v12 = this;
    do
    {
      v13 = *v12;
      v12 = (v12 + 4);
      v10 ^= v13;
      --v11;
    }

    while (v11);
  }

  *this = v10;
}

BOOL DgnSharedMemSet::waitTilCreatedAndMapEx(DSMSetData **this, uint64_t a2, const char **a3, unsigned int a4)
{
  v7 = *(*this + 32) + 56 * a2;
  for (i = *(*this + 34); *(v7 + 40) == 2; a4 = v11 - 100)
  {
    isProcessAlive = DSMGlobalRecord::isProcessAlive(*(v7 + 24));
    if (!a4 || !isProcessAlive)
    {
      break;
    }

    __rqtp = xmmword_262882010;
    nanosleep(&__rqtp, 0);
    v11 = a4 <= 0x64 ? 100 : a4;
  }

  v12 = *(v7 + 40);
  if (v12 != 2)
  {
    v13 = *this;
    v44 = (*this + 32);
    pthread_mutex_lock(v44);
    ++*(v13 + 24);
    v13[13] = pthread_self();
    __rqtp.tv_sec = *this + 112;
    LODWORD(__rqtp.tv_nsec) = 2;
    LODWORD(__rqtp.tv_nsec) = DgnSharedLock::acquire(__rqtp.tv_sec, 0xEA60u);
    if (LODWORD(__rqtp.tv_nsec))
    {
      if (*(*this + 6))
      {
        v14 = *(*this + 2);
      }

      else
      {
        v14 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 496, "mrecutil/dsmset", 2, "%.500s", v14);
    }

    v15 = veorq_s8(*v7, *(v7 + 16));
    *v15.i8 = veor_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
    if ((*(v7 + 32) ^ *(v7 + 40) ^ *(v7 + 36) ^ *(v7 + 44) ^ v15.i32[1] ^ v15.i32[0]) != *(v7 + 48))
    {
      if (*(a3 + 2))
      {
        v16 = *a3;
      }

      else
      {
        v16 = &byte_262899963;
      }

      if (*(*this + 6))
      {
        v17 = *(*this + 2);
      }

      else
      {
        v17 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 499, "mrecutil/dsmset", 7, "%d %.500s %.500s", a2, v16, v17);
    }

    v18 = *this;
    if ((*(*(*this + 32) + 56 * a2 + 40) - 3) >= 2)
    {
      if (*(a3 + 2))
      {
        v19 = *a3;
      }

      else
      {
        v19 = &byte_262899963;
      }

      if (*(v18 + 6))
      {
        v20 = *(v18 + 2);
      }

      else
      {
        v20 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 503, "mrecutil/dsmset", 8, "%d %.500s %d %.500s", a2, v19, *(v7 + 40), v20);
    }

    v21 = i + 80 * a2;
    if (!*(v21 + 40))
    {
      DgnString::DgnString(&v42);
      DSMSetData::getSysName(*this, *(v7 + 36), a2, &v42);
      v22 = *(v7 + 40);
      v41 = -1;
      DSMHandle::open(&v41, *this, a3, &v42, 0xFFFFFFFFFFFFFFFFLL, v22 == 4, 0);
      v23 = v41;
      if (v41 == -1)
      {
        if (*(a3 + 2))
        {
          v24 = *a3;
        }

        else
        {
          v24 = &byte_262899963;
        }

        if (v43)
        {
          v25 = v42;
        }

        else
        {
          v25 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 521, "mrecutil/dsmset", 6, "%.500s %.500s", v24, v25);
        v23 = v41;
      }

      v39 = -1;
      v40 = 0;
      v26 = *(v7 + 8);
      if (v22 == 4)
      {
        v27 = 3;
      }

      else
      {
        v27 = 1;
      }

      v39 = mmap(0, *(v7 + 8), v27, 1, v23, 0);
      v40 = v26;
      if (v39 == -1)
      {
        if (*(a3 + 2))
        {
          v28 = *a3;
        }

        else
        {
          v28 = &byte_262899963;
        }

        if (v43)
        {
          v29 = v42;
        }

        else
        {
          v29 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 528, "mrecutil/dsmset", 5, "%.500s %.500s %llu", v28, v29, *(v7 + 8));
      }

      *v21 = *v7;
      *(v21 + 8) = *(v7 + 16);
      *(v21 + 32) = *(v7 + 32);
      *(v21 + 36) = *(v7 + 40);
      *(v21 + 16) = *(v7 + 24);
      *(v21 + 24) = pthread_self();
      if (v22 == 4)
      {
        v30 = 9;
      }

      else
      {
        v30 = 8;
      }

      v31 = v41;
      v41 = -1;
      v32 = *(v21 + 48);
      if (v32 != -1)
      {
        close(v32);
      }

      *(v21 + 48) = v31;
      v33 = v39;
      v34 = v40;
      v39 = -1;
      if (v33 != -1)
      {
        munmap(*(v21 + 56), *(v21 + 64));
      }

      *(v21 + 56) = v33;
      *(v21 + 64) = v34;
      __dmb(0xBu);
      *(v21 + 40) = v30;
      DSMMappedPtr::~DSMMappedPtr(&v39);
      DSMHandle::~DSMHandle(&v41);
      DgnString::~DgnString(&v42);
    }

    v35 = (*(v21 + 56) + 16);
    if (*(a3 + 2))
    {
      v36 = *a3;
    }

    else
    {
      v36 = &byte_262899963;
    }

    if (strcmp(v36, (*(v21 + 56) + 16)))
    {
      if (*(*this + 6))
      {
        v37 = *(*this + 2);
      }

      else
      {
        v37 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 561, "mrecutil/dsmset", 9, "%d %.500s %.500s %.500s", a2, v37, v36, v35);
    }

    Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(&__rqtp.tv_sec);
    Latch<DgnLock,LatchAdapter>::~Latch(&v44);
  }

  return v12 != 2;
}

void sub_262690A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va2, a17);
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void);
  DgnString::~DgnString(va);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(va2);
  Latch<DgnLock,LatchAdapter>::~Latch(va1);
  _Unwind_Resume(a1);
}

char *DgnSharedMemSet::openDSMWithSizeEx(DSMSetData **a1, uint64_t a2, int a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = *(*a1 + 32);
  v10 = *(*a1 + 34) + 80 * a2;
  v39 = &CONTAINING_RECORD(*a1, pthread_mutex_t, __opaque)->__opaque[32];
  pthread_mutex_lock(v39);
  ++*(v8 + 24);
  v11 = 0;
  *(v8 + 13) = pthread_self();
  if (a3 > 2)
  {
    if ((a3 - 3) <= 1)
    {
      v11 = (*(v10 + 56) + *(v10 + 32));
      *a4 = *(v10 + 8);
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 622, "mrecutil/dsmset", 1, "%.500s", "eDSMOM_ReadValidate");
          v11 = 0;
        }

        goto LABEL_31;
      }

      v17 = *a4;
      v18 = *(v10 + 32);
      v19 = sysconf(29);
      DgnString::DgnString(&v37);
      DSMSetData::getSysName(*a1, *(v10 + 44), a2, &v37);
      DgnString::DgnString(&v35, (*(v10 + 56) + 16));
      v20 = (v17 + v18 + (v19 - 1)) & ~(v19 - 1);
      v34 = -1;
      LOBYTE(v17) = DSMHandle::open(&v34, *a1, &v35, &v37, v20, 1, 1);
      v21 = mmap(0, v20, 3, 1, v34, 0);
      v32 = v21;
      v33 = v20;
      if (((v21 == -1) & v17) == 1)
      {
        DSMHandle::unlink(*a1, &v37, v22);
      }

      else if (v21 != -1)
      {
LABEL_21:
        DSMHeadData::init(v21, &v35, *a4);
        v25 = v32;
        v26 = *(v10 + 32);
        *(v10 + 8) = *a4;
        DSMHandle::~DSMHandle((v10 + 48));
        v27 = v34;
        v34 = -1;
        v28 = *(v10 + 48);
        if (v28 != -1)
        {
          close(v28);
        }

        *(v10 + 48) = v27;
        DSMMappedPtr::~DSMMappedPtr((v10 + 56));
        v29 = v32;
        v30 = v33;
        v32 = -1;
        if (v29 != -1)
        {
          munmap(*(v10 + 56), *(v10 + 64));
        }

        v11 = v25 + v26;
        *(v10 + 56) = v29;
        *(v10 + 64) = v30;
        *(v10 + 40) = 6;
        DSMMappedPtr::~DSMMappedPtr(&v32);
        DSMHandle::~DSMHandle(&v34);
        DgnString::~DgnString(&v35);
        DgnString::~DgnString(&v37);
        goto LABEL_31;
      }

      if (v36)
      {
        v23 = v35;
      }

      else
      {
        v23 = &byte_262899963;
      }

      if (v38)
      {
        v24 = v37;
      }

      else
      {
        v24 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 663, "mrecutil/dsmset", 5, "%.500s %.500s %llu", v23, v24, v20);
      v21 = v32;
      goto LABEL_21;
    }

    v12 = v9 + 56 * a2;
    v14 = *(v12 + 40);
    v13 = (v12 + 40);
    if (v14 != 2)
    {
      v15 = *v13;
      if (*(*a1 + 6))
      {
        v16 = *(*a1 + 2);
      }

      else
      {
        v16 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 610, "mrecutil/dsmset", 8, "%d %.500s %d %.500s", a2, (*(v10 + 56) + 16), v15, v16);
    }

    if (a4)
    {
      *a4 = 0;
    }

    v11 = 0;
    *(v10 + 40) = 2;
  }

LABEL_31:
  Latch<DgnLock,LatchAdapter>::~Latch(&v39);
  return v11;
}

void sub_262690DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, __int16 a17, uint64_t a18, uint64_t a19, char a20)
{
  DSMHandle::~DSMHandle(&a16);
  DgnString::~DgnString(&a18);
  DgnString::~DgnString(&a20);
  Latch<DgnLock,LatchAdapter>::~Latch((v20 - 72));
  _Unwind_Resume(a1);
}

uint64_t *DgnSharedMemSet::closeDSMEx(DgnSharedMemSet *this, unsigned int a2)
{
  v3 = *this;
  v4 = *(*this + 272);
  v11 = (*this + 32);
  pthread_mutex_lock(v11);
  ++*(v3 + 96);
  *(v3 + 104) = pthread_self();
  v5 = v4 + 80 * a2;
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if ((v8 - 10) <= 0xFFFFFFFD)
  {
    switch(v7)
    {
      case 2:
        v9 = 3;
        goto LABEL_8;
      case 6:
        v9 = 7;
        goto LABEL_8;
      case 4:
        v9 = 5;
LABEL_8:
        *v6 = v9;
        break;
    }
  }

  return Latch<DgnLock,LatchAdapter>::~Latch(&v11);
}

BOOL DgnSharedMemSet::createMaybeRemapDSMEx(DSMSetData **this, uint64_t a2, int a3)
{
  v6 = *(*this + 34);
  v35 = -1;
  v36 = 0;
  v7 = *(v6 + 48);
  v8 = sysconf(29);
  if (v8 <= 0x10000)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = v8;
  }

  v10 = mmap(0, v9, 3, 1, v7, 0);
  v35 = v10;
  v36 = v9;
  if (v10 == -1)
  {
    if (*(*this + 6))
    {
      v11 = *(*this + 2);
    }

    else
    {
      v11 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 757, "mrecutil/dsmset", 3, "%.500s", v11);
    v10 = v35;
  }

  v12 = *this;
  v34 = (*this + 32);
  pthread_mutex_lock(v34);
  ++*(v12 + 24);
  v12[13] = pthread_self();
  v32 = (*this + 112);
  v13 = DgnSharedLock::acquire(v32, 0xEA60u);
  v33 = v13;
  if (v13)
  {
    if (*(*this + 6))
    {
      v14 = *(*this + 2);
    }

    else
    {
      v14 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 765, "mrecutil/dsmset", 2, "%.500s", v14);
  }

  v15 = v6 + 80 * a2;
  if (a3)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v31 = 0;
  if ((a3 & 1) == 0)
  {
    v13 = DSMMappedPtr::remap((v15 + 56), *(v15 + 48), 0, &v31);
    if ((v13 & 1) == 0)
    {
      DgnString::DgnString(&v29);
      DSMSetData::getSysName(*this, *(v15 + 44), a2, &v29);
      if (v30)
      {
        v17 = v29;
      }

      else
      {
        v17 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 795, "mrecutil/dsmset", 5, "%.500s %.500s %llu", (*(v15 + 56) + 16), v17, *(v15 + 64));
      DgnString::~DgnString(&v29);
    }
  }

  PlatformAbsoluteTime = ClockTimer::getPlatformAbsoluteTime(v13);
  v19 = &v10[56 * a2];
  *v15 = PlatformAbsoluteTime;
  *(v15 + 36) = v16;
  v20 = *(v15 + 64);
  *(v19 + 1) = v20;
  v21 = *(v15 + 8);
  *(v19 + 2) = v21;
  v22 = *(v15 + 16);
  *(v19 + 3) = v22;
  v23 = *(v15 + 32);
  *(v19 + 8) = v23;
  v24 = *(v15 + 44);
  *(v19 + 9) = v24;
  *v19 = PlatformAbsoluteTime;
  *(v19 + 12) = *(v19 + 11) ^ ((v20 ^ PlatformAbsoluteTime ^ v21 ^ v22) >> 32) ^ v20 ^ PlatformAbsoluteTime ^ v21 ^ v22 ^ v16 ^ v23 ^ v24;
  if (a3)
  {
    v25 = 9;
  }

  else
  {
    v25 = 8;
  }

  __dmb(0xBu);
  *(v19 + 10) = v16;
  *(v15 + 40) = v25;
  DSMHandle::~DSMHandle((v15 + 52));
  DgnString::DgnString(&v29);
  DSMSetData::getSysReserveName(*this, *(v15 + 44), a2, &v29);
  DSMHandle::unlink(*this, &v29, v26);
  v27 = v31;
  DgnString::~DgnString(&v29);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(&v32);
  Latch<DgnLock,LatchAdapter>::~Latch(&v34);
  DSMMappedPtr::~DSMMappedPtr(&v35);
  return v27;
}

void sub_2626911E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(va);
  Latch<DgnLock,LatchAdapter>::~Latch(va1);
  DSMMappedPtr::~DSMMappedPtr((v15 - 64));
  _Unwind_Resume(a1);
}

BOOL DgnSharedMemSet::isCurThreadDSMOwner(DgnSharedMemSet *this, unsigned int a2)
{
  v2 = *(*this + 272) + 80 * a2;
  if (!*(v2 + 40))
  {
    return 0;
  }

  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = getpid();
  v6 = pthread_self();
  return v3 == v5 && v4 == v6;
}

uint64_t *DgnSharedMemSet::unrefDSMEx(DSMSetData **this, uint64_t a2)
{
  v4 = *this;
  v5 = *(*this + 34) + 80 * a2;
  v30 = &CONTAINING_RECORD(*this, pthread_mutex_t, __opaque)->__opaque[32];
  pthread_mutex_lock(v30);
  ++*(v4 + 24);
  *(v4 + 13) = pthread_self();
  v6 = *(v5 + 72) - 1;
  *(v5 + 72) = v6;
  if (!v6)
  {
    v28 = -1;
    v29 = 0;
    v7 = *(*(*this + 34) + 48);
    v8 = sysconf(29);
    if (v8 <= 0x10000)
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = v8;
    }

    v28 = mmap(0, v9, 3, 1, v7, 0);
    v29 = v9;
    if (v28 == -1)
    {
      if (*(*this + 6))
      {
        v10 = *(*this + 2);
      }

      else
      {
        v10 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 1024, "mrecutil/dsmset", 3, "%.500s", v10);
    }

    v26 = (*this + 112);
    if (DgnSharedLock::acquire(v26, 0xEA60u))
    {
      if (*(*this + 6))
      {
        v11 = *(*this + 2);
      }

      else
      {
        v11 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 1029, "mrecutil/dsmset", 2, "%.500s", v11);
    }

    v12 = (v28 + 56 * a2);
    v13 = veorq_s8(*v12, v12[1]);
    v14 = veor_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    v15 = v12[2].i32[0];
    v16 = v12[2].i32[1];
    v17 = v12[2].i32[3];
    if ((v15 ^ v12[2].i32[2] ^ v16 ^ v17 ^ v14.i32[1] ^ v14.i32[0]) != v12[3].i32[0] || v12[2].i32[2] == 1)
    {
      if (v12[2].i32[2] != 1)
      {
        DSMGlobalRecord::reset((v28 + 56 * a2));
        v12[2].i32[2] = 1;
        v18 = veorq_s8(*v12, v12[1]);
        *v18.i8 = veor_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
        v12[3].i32[0] = v12[2].i32[0] ^ v12[2].i32[2] ^ v12[2].i32[1] ^ v12[2].i32[3] ^ v18.i32[1] ^ v18.i32[0];
      }

      goto LABEL_26;
    }

    if (v12[2].i32[2] == 2)
    {
      DgnString::DgnString(v25);
      DSMSetData::getSysReserveName(*this, v12[2].u32[1], a2, v25);
      DSMHandle::unlink(*this, v25, v19);
      if (v12[2].i32[3] < 2u)
      {
        DSMGlobalRecord::reset(v12);
      }

      else
      {
        DSMGlobalRecord::reset(v12);
        v12[2].i32[2] = 1;
        v20 = veorq_s8(*v12, v12[1]);
        *v20.i8 = veor_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
        v12[3].i32[0] = v12[2].i32[0] ^ v12[2].i32[2] ^ v12[2].i32[1] ^ v12[2].i32[3] ^ v20.i32[1] ^ v20.i32[0];
      }
    }

    else
    {
      v21 = v17 - 1;
      v22 = v15 ^ v12[2].i32[2] ^ v16 ^ v21 ^ v14.i32[1] ^ v14.i32[0];
      v12[2].i32[3] = v21;
      v12[3].i32[0] = v22;
      if (v21)
      {
LABEL_26:
        DSMHandle::~DSMHandle((v5 + 48));
        DSMHandle::~DSMHandle((v5 + 52));
        DSMMappedPtr::~DSMMappedPtr((v5 + 56));
        *(v5 + 40) = 0;
        __dmb(0xBu);
        *v5 = 0u;
        *(v5 + 16) = -1;
        *(v5 + 24) = -1;
        *(v5 + 32) = 0;
        *(v5 + 44) = 0;
        *(v5 + 72) = 0;
        Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(&v26);
        DSMMappedPtr::~DSMMappedPtr(&v28);
        return Latch<DgnLock,LatchAdapter>::~Latch(&v30);
      }

      DgnString::DgnString(v25);
      DSMSetData::getSysName(*this, v12[2].u32[1], a2, v25);
      DSMHandle::unlink(*this, v25, v23);
      DSMGlobalRecord::reset(v12);
    }

    DgnString::~DgnString(v25);
    goto LABEL_26;
  }

  return Latch<DgnLock,LatchAdapter>::~Latch(&v30);
}

void sub_262691640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(va);
  DSMMappedPtr::~DSMMappedPtr(va1);
  Latch<DgnLock,LatchAdapter>::~Latch(va2);
  _Unwind_Resume(a1);
}

void DgnSharedMemSet::printSize(DSMSetData **this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 1116);
  if (v25)
  {
    v13 = v24;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v24);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v15 = *this;
  if (*this)
  {
    v23 = 0;
    v24 = 0;
    v16 = (a3 + 1);
    v22 = 0;
    DSMSetData::printSize(v15, 0xFFFFFFFFLL, v16, &v24, &v23, &v22);
    *a4 += v24;
    *a5 += v23;
    *a6 += v22;
  }

  else
  {
    v16 = (a3 + 1);
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v17 = 4;
  }

  else
  {
    v17 = 8;
  }

  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 1119);
  if (v25)
  {
    v19 = v24;
  }

  else
  {
    v19 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, v16, &byte_262899963, (34 - a3), (34 - a3), v19, v17, v17, 0);
  DgnString::~DgnString(&v24);
  *a4 += v17;
  *a5 += v17;
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 1121);
  if (v25)
  {
    v21 = v24;
  }

  else
  {
    v21 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, a3, &byte_262899963, (35 - a3), (35 - a3), v21, *a4, *a5, *a6);
  DgnString::~DgnString(&v24);
}

void sub_2626918CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DSMSetData::DSMSetData(DSMSetData *this, const DgnString *a2, const DgnString *a3)
{
  DgnString::DgnString(this, a2);
  DgnString::DgnString((v5 + 16), a3);
  recursive_mutex_init((this + 32));
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = -1;
  *(this + 15) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = -1;
  *(this + 74) = -1;
}

void sub_26269194C(_Unwind_Exception *a1)
{
  DgnString::~DgnString(v1 + 16);
  DgnString::~DgnString(v1);
  _Unwind_Resume(a1);
}

void UttFile::printSize(UttFile *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 148);
  if (v53)
  {
    v13 = v52;
  }

  else
  {
    v13 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288209A, a3, &unk_26288209A, v13);
  DgnString::~DgnString(&v52);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288209A);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 150);
  if (v53)
  {
    v18 = v52;
  }

  else
  {
    v18 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26288209A, (34 - a3), (34 - a3), v18, 1, 1, 0);
  v49 = a3;
  DgnString::~DgnString(&v52);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 152);
  if (v53)
  {
    v20 = v52;
  }

  else
  {
    v20 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26288209A, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  v21 = sizeObject(this + 8, 0);
  v22 = sizeObject(this + 8, 1);
  v23 = sizeObject(this + 8, 3);
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 154);
  if (v53)
  {
    v25 = v52;
  }

  else
  {
    v25 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v15, &unk_26288209A, v16, v16, v25, v21, v22, v23);
  DgnString::~DgnString(&v52);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  v26 = FileSpec::sizeObject(this + 48, 0);
  v27 = FileSpec::sizeObject(this + 48, 1);
  v28 = FileSpec::sizeObject(this + 48, 3);
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 155);
  if (v53)
  {
    v30 = v52;
  }

  else
  {
    v30 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v15, &unk_26288209A, v16, v16, v30, v26, v27, v28);
  DgnString::~DgnString(&v52);
  *a4 += v26;
  *a5 += v27;
  *a6 += v28;
  v31 = *(this + 8);
  if (v31)
  {
    v51 = 0;
    v52 = 0;
    v50 = 0;
    (*(*v31 + 16))(v31, 0xFFFFFFFFLL, v15, &v52, &v51, &v50);
    *a4 += v52;
    *a5 += v51;
    *a6 += v50;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 4;
  }

  else
  {
    v32 = 8;
  }

  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 156);
  if (v53)
  {
    v34 = v52;
  }

  else
  {
    v34 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v15, &unk_26288209A, v16, v16, v34, v32, v32, 0);
  DgnString::~DgnString(&v52);
  *a4 += v32;
  *a5 += v32;
  v35 = *(this + 9);
  if (v35)
  {
    v51 = 0;
    v52 = 0;
    v50 = 0;
    (*(*v35 + 16))(v35, 0xFFFFFFFFLL, v15, &v52, &v51, &v50);
    *a4 += v52;
    *a5 += v51;
    *a6 += v50;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v36 = 4;
  }

  else
  {
    v36 = 8;
  }

  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 158);
  if (v53)
  {
    v38 = v52;
  }

  else
  {
    v38 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v15, &unk_26288209A, v16, v16, v38, v36, v36, 0);
  DgnString::~DgnString(&v52);
  *a4 += v36;
  *a5 += v36;
  v39 = *(this + 10);
  if (v39)
  {
    v51 = 0;
    v52 = 0;
    v50 = 0;
    (*(*v39 + 16))(v39, 0xFFFFFFFFLL, v15, &v52, &v51, &v50);
    *a4 += v52;
    *a5 += v51;
    *a6 += v50;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v40 = 4;
  }

  else
  {
    v40 = 8;
  }

  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 159);
  if (v53)
  {
    v42 = v52;
  }

  else
  {
    v42 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v15, &unk_26288209A, v16, v16, v42, v40, v40, 0);
  DgnString::~DgnString(&v52);
  *a4 += v40;
  *a5 += v40;
  v43 = *(this + 11);
  if (v43)
  {
    v51 = 0;
    v52 = 0;
    v50 = 0;
    (*(*v43 + 16))(v43, 0xFFFFFFFFLL, v15, &v52, &v51, &v50);
    *a4 += v52;
    *a5 += v51;
    *a6 += v50;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v44 = 4;
  }

  else
  {
    v44 = 8;
  }

  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 160);
  if (v53)
  {
    v46 = v52;
  }

  else
  {
    v46 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v15, &unk_26288209A, v16, v16, v46, v44, v44, 0);
  DgnString::~DgnString(&v52);
  *a4 += v44;
  *a5 += v44;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 161);
  if (v53)
  {
    v48 = v52;
  }

  else
  {
    v48 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v49, &unk_26288209A, (35 - v49), (35 - v49), v48, *a4, *a5, *a6);
  DgnString::~DgnString(&v52);
}

void sub_26269207C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void xprintStringFancy(char *a1, const char *a2, int a3, const char *a4, int a5)
{
  v6 = a2;
  v8 = DgnPrinterMgr::smpDgnPrinterMgr;
  if (DgnPrinterMgr::smpDgnPrinterMgr)
  {
    if (*DgnPrinterMgr::smpDgnPrinterMgr == -1 || (v11 = pthread_getspecific(*DgnPrinterMgr::smpDgnPrinterMgr)) == 0)
    {
      v11 = (v8 + 8);
    }

    DgnPrinter::xprint(v11, a1, v6, a3, a4, a5);
  }

  else
  {
    if (a3)
    {
      MrecInitModule_sdpres_sdapi();
    }

    if (v6)
    {

      xalogString(a1, a2);
    }
  }
}

void DgnPrinter::xprint(DgnPrinter *this, const char *a2, int a3, int a4, const char *a5, int a6)
{
  if (a5)
  {
    v12 = strlen(a5);
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (a4)
  {
LABEL_3:
    MrecInitModule_sdpres_sdapi();
  }

LABEL_4:
  if (a3)
  {
    v13 = this + 212;
    v14 = strlen(this + 212);
    v21 = v14;
    v16 = *a2;
    if (*a2)
    {
      v17 = a2 + 1;
      do
      {
        if (*(this + 8404) & 1) != 0 || v16 != 10 && v14 == 8190 && (*(this + 8402) = 0, DgnPrinter::xprint(this, "\n[forced newline for overly long log line]\n", 1, 0, a5, 0), v14 = 0, v21 = 0, (*(this + 8404)))
        {
          DgnPrinter::addLinePrefix(this, this + 212, 0x1FFEu, &v21, a5, v12, a6);
          *(this + 8404) = 0;
          v14 = v21;
        }

        v18 = *(v17 - 1);
        v19 = v14 + 1;
        v21 = v14 + 1;
        v13[v14] = v18;
        if (v18 == 10)
        {
          v13[v19] = 0;
          xalogString((this + 212), v15);
          v19 = 0;
          v21 = 0;
          *(this + 8404) = 1;
        }

        v20 = *v17++;
        v16 = v20;
        v14 = v19;
      }

      while (v20);
    }

    else
    {
      v19 = v14;
    }

    v13[v19] = 0;
  }
}

void xprintf(const char *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x28223BE20](a1, a2);
  v13 = *MEMORY[0x277D85DE8];
  DgnString::DgnString(&v11);
  v8[0] = 0;
  __size = 0x2000;
  __size_4 = 0;
  Buffer = DgnBuffer::getBuffer(v8, 0);
  for (i = __size; ; i = __size)
  {
    v5 = vsnprintf(Buffer, i, v2, va);
    if ((v5 & 0x80000000) == 0 && v5 < i)
    {
      break;
    }

    Buffer = DgnBuffer::getBuffer(v8, 1);
  }

  if (v12)
  {
    v6 = v11;
  }

  else
  {
    v6 = &byte_262899963;
  }

  if (__size_4)
  {
    v7 = v6;
  }

  else
  {
    v7 = v8;
  }

  xprintStringFancy(v7, 1, 1, 0, 0);
  DgnString::~DgnString(&v11);
}

void xlprintf(const char *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x28223BE20](a1, a2);
  v13 = *MEMORY[0x277D85DE8];
  DgnString::DgnString(&v11);
  v8[0] = 0;
  __size = 0x2000;
  __size_4 = 0;
  Buffer = DgnBuffer::getBuffer(v8, 0);
  for (i = __size; ; i = __size)
  {
    v5 = vsnprintf(Buffer, i, v2, va);
    if ((v5 & 0x80000000) == 0 && v5 < i)
    {
      break;
    }

    Buffer = DgnBuffer::getBuffer(v8, 1);
  }

  if (v12)
  {
    v6 = v11;
  }

  else
  {
    v6 = &byte_262899963;
  }

  if (__size_4)
  {
    v7 = v6;
  }

  else
  {
    v7 = v8;
  }

  xprintStringFancy(v7, 1, 0, 0, 0);
  DgnString::~DgnString(&v11);
}

void xgenprintf(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v3 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v19 = *MEMORY[0x277D85DE8];
  DgnString::DgnString(&v17);
  v14[0] = 0;
  __size = 0x2000;
  __size_4 = 0;
  Buffer = DgnBuffer::getBuffer(v14, 0);
  for (i = __size; ; i = __size)
  {
    v11 = vsnprintf(Buffer, i, v5, va);
    if ((v11 & 0x80000000) == 0 && v11 < i)
    {
      break;
    }

    Buffer = DgnBuffer::getBuffer(v14, 1);
  }

  if (v18)
  {
    v12 = v17;
  }

  else
  {
    v12 = &byte_262899963;
  }

  if (__size_4)
  {
    v13 = v12;
  }

  else
  {
    v13 = v14;
  }

  xprintStringFancy(v13, v8, v7, 0, 0);
  DgnString::~DgnString(&v17);
}

void DgnPrinterMgr::DgnPrinterMgr(DgnPrinterMgr *this)
{
  *(this + 1) = ClockTimer::getCurrentMicrosec(&ClockTimer::smClockTimer);
  *(this + 16) = 0;
  *(this + 116) = 0;
  *(this + 54) = 0;
  *(this + 220) = 0;
  *(this + 8412) = 1;
  DgnReadWriteLock::DgnReadWriteLock((this + 8416));
  recursive_mutex_init((this + 8848));
  *(this + 2228) = 0;
  *(this + 1115) = 0;
  v4 = 0;
  v2 = pthread_key_create(&v4, 0);
  v3 = v4;
  if (v2)
  {
    v3 = -1;
  }

  *this = v3;
  *(this + 8744) = 0;
  *(this + 2211) = 0;
  *(this + 558) = 0u;
  *(this + 8944) = 0;
}

void sub_262692820(_Unwind_Exception *a1)
{
  DgnLock::~DgnLock((v2 + v4));
  DgnReadWriteLock::~DgnReadWriteLock((v1 + v3));
  DgnPrinter::~DgnPrinter(v1);
  _Unwind_Resume(a1);
}

void DgnPrinter::DgnPrinter(DgnPrinter *this)
{
  *this = ClockTimer::getCurrentMicrosec(&ClockTimer::smClockTimer);
  *(this + 8) = 0;
  *(this + 108) = 0;
  *(this + 52) = 0;
  *(this + 212) = 0;
  *(this + 8404) = 1;
}

void DgnPrinterMgr::startupDgnPrinterMgr(DgnPrinterMgr *this)
{
  v1 = MemChunkAlloc(0x22F8uLL, 0);
  DgnPrinterMgr::DgnPrinterMgr(v1);
  DgnPrinterMgr::smpDgnPrinterMgr = v2;
}

uint64_t DgnPrinterMgr::setAsCurrentPrinter(DgnPrinterMgr *this, DgnPrinter *a2)
{
  v3 = pthread_getspecific(*DgnPrinterMgr::smpDgnPrinterMgr);
  if (v3)
  {
    v4 = v3 == this;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = pthread_self();
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 173, "mrecutil/xprhelp", 2, "%llu", v5);
  }

  v6 = *DgnPrinterMgr::smpDgnPrinterMgr;

  return pthread_setspecific(v6, this);
}

void DgnPrinterMgr::printSize(DgnPrinterMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 183);
  if (v44)
  {
    v13 = v43;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v43);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v42 = 0;
  v43 = 0;
  v15 = (a3 + 1);
  v41 = 0;
  DgnPrinter::printSize(v16, 0xFFFFFFFFLL, v15, &v43, &v42, &v41);
  *a4 += v43;
  *a5 += v42;
  *a6 += v41;
  v17 = sizeObject(this + 8416, 0);
  v18 = sizeObject(this + 8416, 1);
  v19 = sizeObject(this + 8416, 3);
  v40 = a3;
  v20 = (34 - a3);
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 186);
  if (v44)
  {
    v22 = v43;
  }

  else
  {
    v22 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v15, &byte_262899963, v20, v20, v22, v17, v18, v19);
  DgnString::~DgnString(&v43);
  *a4 += v17;
  *a5 += v18;
  *a6 += v19;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 188);
  if (v44)
  {
    v24 = v43;
  }

  else
  {
    v24 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v15, &byte_262899963, v20, v20, v24, 100, 100, 0);
  DgnString::~DgnString(&v43);
  *a4 += 100;
  *a5 += 100;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 190);
  if (v44)
  {
    v26 = v43;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v15, &byte_262899963, v20, v20, v26, 4, 4, 0);
  DgnString::~DgnString(&v43);
  *a4 += 4;
  *a5 += 4;
  v27 = sizeObject(this + 8848, 0);
  v28 = sizeObject(this + 8848, 1);
  v29 = sizeObject(this + 8848, 3);
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 191);
  if (v44)
  {
    v31 = v43;
  }

  else
  {
    v31 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v15, &byte_262899963, v20, v20, v31, v27, v28, v29);
  DgnString::~DgnString(&v43);
  *a4 += v27;
  *a5 += v28;
  *a6 += v29;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 193);
  if (v44)
  {
    v33 = v43;
  }

  else
  {
    v33 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v15, &byte_262899963, v20, v20, v33, 8, 8, 0);
  DgnString::~DgnString(&v43);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 195);
  if (v44)
  {
    v35 = v43;
  }

  else
  {
    v35 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v15, &byte_262899963, v20, v20, v35, 8, 8, 0);
  DgnString::~DgnString(&v43);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 197);
  if (v44)
  {
    v37 = v43;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v15, &byte_262899963, v20, v20, v37, 1, 1, 0);
  DgnString::~DgnString(&v43);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 198);
  if (v44)
  {
    v39 = v43;
  }

  else
  {
    v39 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v40, &byte_262899963, (35 - v40), (35 - v40), v39, *a4, *a5, *a6);
  DgnString::~DgnString(&v43);
}

void sub_262692E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnPrinter::printSize(DgnPrinter *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 386);
  if (v29)
  {
    v12 = v28;
  }

  else
  {
    v12 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &byte_262899963, a3, &byte_262899963, v12);
  DgnString::~DgnString(&v28);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &byte_262899963);
  getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 388);
  if (v29)
  {
    v15 = v28;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v14, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v15, 1, 1, 0);
  DgnString::~DgnString(&v28);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 390);
  if (v29)
  {
    v17 = v28;
  }

  else
  {
    v17 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v17, 8, 8, 0);
  DgnString::~DgnString(&v28);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 392);
  if (v29)
  {
    v19 = v28;
  }

  else
  {
    v19 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v19, 100, 100, 0);
  DgnString::~DgnString(&v28);
  *a4 += 100;
  *a5 += 100;
  getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 394);
  if (v29)
  {
    v21 = v28;
  }

  else
  {
    v21 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v21, 100, 100, 0);
  DgnString::~DgnString(&v28);
  *a4 += 100;
  *a5 += 100;
  getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 396);
  if (v29)
  {
    v23 = v28;
  }

  else
  {
    v23 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v23, 4, 4, 0);
  DgnString::~DgnString(&v28);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 398);
  if (v29)
  {
    v25 = v28;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, 0x2000, 0x2000, 0);
  DgnString::~DgnString(&v28);
  *a4 += 0x2000;
  *a5 += 0x2000;
  getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 415);
  if (v29)
  {
    v27 = v28;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, a3, &byte_262899963, (35 - a3), (35 - a3), v27, *a4, *a5, *a6);
  DgnString::~DgnString(&v28);
}

void sub_262693204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

pthread_rwlock_t **DgnPrinterMgr::setLogLinePrefix(DgnPrinterMgr *this, const char *a2)
{
  v5 = (this + 8416);
  DgnReadWriteLock::acquireWrite((this + 8416));
  if (strlen(a2) >= 0x64)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 217, "mrecutil/xprhelp", 1, "%d", 100);
  }

  strcpy(this + 8744, a2);
  *(this + 2211) = strlen(this + 8744);
  return Latch<DgnReadWriteLock,WriteLatchAdapter>::~Latch(&v5);
}

void sub_2626932DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<DgnReadWriteLock,WriteLatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *DgnPrinterMgr::setShowLogLineTimeStamps(DgnPrinterMgr *this, char a2)
{
  v5 = this + 8848;
  pthread_mutex_lock((this + 8848));
  ++*(this + 2228);
  *(this + 1115) = pthread_self();
  *(this + 8944) = a2;
  return Latch<DgnLock,LatchAdapter>::~Latch(&v5);
}

pthread_rwlock_t **DgnPrinterMgr::addLinePrefix(DgnPrinterMgr *this, char *a2, unsigned int a3, unsigned int *a4)
{
  v8 = (this + 8416);
  DgnReadWriteLock::acquireRead((this + 8416));
  if (*(this + 2211))
  {
    strcpy(&a2[*a4], this + 8744);
    *a4 += *(this + 2211);
  }

  return Latch<DgnReadWriteLock,ReadLatchAdapter>::~Latch(&v8);
}

uint64_t *DgnPrinterMgr::maybeSetTimeStampingBase(uint64_t *this, uint64_t a2)
{
  if (!this[1116])
  {
    v6[3] = v2;
    v6[4] = v3;
    v5 = this;
    v6[0] = (this + 1106);
    pthread_mutex_lock((this + 1106));
    ++*(v5 + 2228);
    v5[1115] = pthread_self();
    v5[1116] = a2;
    v5[1117] = a2;
    return Latch<DgnLock,LatchAdapter>::~Latch(v6);
  }

  return this;
}

uint64_t *DgnPrinterMgr::getDeltasAndResetLast(DgnPrinterMgr *this, unint64_t *a2, unint64_t *a3, unint64_t *a4, __darwin_time_t *a5)
{
  v12 = this + 8848;
  pthread_mutex_lock((this + 8848));
  ++*(this + 2228);
  *(this + 1115) = pthread_self();
  CurrentMicrosec = ClockTimer::getCurrentMicrosec(&ClockTimer::smClockTimer);
  DgnPrinterMgr::maybeSetTimeStampingBase(DgnPrinterMgr::smpDgnPrinterMgr, CurrentMicrosec);
  *a2 = CurrentMicrosec - *(this + 1116);
  *a3 = CurrentMicrosec - *(this + 1117);
  *a4 = CurrentMicrosec - *a5;
  *(this + 1117) = CurrentMicrosec;
  *a5 = CurrentMicrosec;
  return Latch<DgnLock,LatchAdapter>::~Latch(&v12);
}

void sub_2626934FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<DgnLock,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

char *DgnPrinter::addLinePrefix(DgnPrinter *this, char *a2, unsigned int a3, unsigned int *a4, const char *a5, int a6, int a7)
{
  DgnPrinterMgr::addLinePrefix(DgnPrinterMgr::smpDgnPrinterMgr, a2, a3, a4);
  if (*(this + 52))
  {
    strcpy(&a2[*a4], this + 108);
    *a4 += *(this + 52);
  }

  result = DgnPrinterMgr::smpDgnPrinterMgr;
  if (*(DgnPrinterMgr::smpDgnPrinterMgr + 8944))
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
    DgnPrinterMgr::getDeltasAndResetLast(DgnPrinterMgr::smpDgnPrinterMgr, &v19, &v18, &v17, this);
    snprintf(this + 8, 0x64uLL, "[%llu.%06llu (mrinc %llu.%06llu) (thinc %llu.%06llu)] ", v19 / 0xF4240, v19 % 0xF4240, v18 / 0xF4240, v18 % 0xF4240, v17 / 0xF4240, v17 % 0xF4240);
    v15 = strlen(this + 8);
    result = strcpy(&a2[*a4], this + 8);
    v16 = *a4 + v15;
    *a4 = v16;
    if (!a6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = *a4;
  if (a6)
  {
LABEL_7:
    result = strcpy(&a2[v16], a5);
    v16 = *a4 + a6;
    *a4 = v16;
  }

LABEL_8:
  if (a7 && a3 - v16 >= a7 + 2)
  {
    do
    {
      a2[v16] = 32;
      v16 = *a4 + 1;
      *a4 = v16;
      --a7;
    }

    while (a7);
  }

  a2[v16] = 0;
  return result;
}

void DgnPrinter::~DgnPrinter(DgnPrinter *this)
{
  if ((*(this + 8404) & 1) == 0)
  {
    DgnPrinter::xprint(this, "\n[flushed previous partial line]\n", 1, 0, 0, 0);
  }

  *(this + 212) = 0;
}

char *DgnPrinter::setInstancePrefix(DgnPrinter *this, const char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x63)
  {
    v5 = 99;
  }

  else
  {
    v5 = v4;
  }

  *(this + 52) = v5;

  return strcpy(this + 108, __s);
}

pthread_rwlock_t **Latch<DgnReadWriteLock,WriteLatchAdapter>::~Latch(pthread_rwlock_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    DgnReadWriteLock::releaseRead(v2);
    *a1 = 0;
  }

  return a1;
}

pthread_rwlock_t **Latch<DgnReadWriteLock,ReadLatchAdapter>::~Latch(pthread_rwlock_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    DgnReadWriteLock::releaseRead(v2);
    *a1 = 0;
  }

  return a1;
}

void TLattProcParamManager::TLattProcParamManager(TLattProcParamManager *this, TLocaleInfo *a2)
{
  TParamManager::TParamManager(this, 0, a2);
  *v3 = &unk_287525670;
  v4 = (v3 + 18);
  TIntParam::TIntParam((v3 + 18), "C", "I", 256, 0, 0x7FFFFFFF, 0, "1", &unk_2628823A4);
  TParamManager::add(this, v4);
}

void sub_2626938A4(_Unwind_Exception *a1)
{
  TParam::~TParam(v2);
  TParamManager::~TParamManager(v1);
  _Unwind_Resume(a1);
}

uint64_t TLatticeProcessor::TLatticeProcessor(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_287526DE8;
  *(result + 8) = -1;
  *(result + 48) = 0;
  *(result + 40) = 0;
  *(result + 32) = result + 40;
  *(result + 16) = a2;
  *(result + 24) = a3;
  if (a3)
  {
    ++*(a2 + 360);
  }

  return result;
}

void *TRegisterable<TLatticeProcessor>::~TRegisterable(void *a1)
{
  *a1 = &unk_287528230;
  if (a1[1] != -1)
  {
    Registry = TRegisterable<TLatticeProcessor>::getRegistry();
    v3 = *Registry;
    *(Registry[1] + 8 * a1[1] - 8) = 0;
    *Registry = v3 - 1;
  }

  return a1;
}

void TLatticeProcessor::~TLatticeProcessor(TLatticeProcessor *this)
{
  *this = &unk_287526DE8;
  v2 = *(this + 2);
  if (v2 && *(this + 24) == 1)
  {
    --*(v2 + 360);
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(this + 32, *(this + 5));

  TRegisterable<TLatticeProcessor>::~TRegisterable(this);
}

void TLatticeProcessor::clearLoadedLmData(uint64_t this, uint64_t a2)
{
  v4 = *(this + 32);
  v5 = (this + 40);
  if (v4 == (this + 40))
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      SDVoc_GetInfo(v4[4], v24);
      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v6 += v27;
      v7 += v26;
      v8 += v25;
      v4 = v10;
    }

    while (v10 != v5);
  }

  v12 = v7 + v8;
  if (v12 + v6 > a2 << 20)
  {
    v13 = a2 << 20;
    v14 = *(this + 32);
    if (v14 != v5)
    {
      do
      {
        SDLm_ClearLoadedData(v14[4], 4);
        v15 = v14[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v14[2];
            v11 = *v16 == v14;
            v14 = v16;
          }

          while (!v11);
        }

        v14 = v16;
      }

      while (v16 != v5);
    }

    if (v12 > v13 >> 1)
    {
      v17 = v13 >> 1;
      v18 = *(this + 32);
      if (v18 != v5)
      {
        do
        {
          SDLm_ClearLoadedData(v18[4], 3);
          v19 = v18[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v18[2];
              v11 = *v20 == v18;
              v18 = v20;
            }

            while (!v11);
          }

          v18 = v20;
        }

        while (v20 != v5);
      }

      if (v8 > v17)
      {
        v21 = *(this + 32);
        if (v21 != v5)
        {
          do
          {
            SDLm_ClearLoadedData(v21[4], 2);
            v22 = v21[1];
            if (v22)
            {
              do
              {
                v23 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v23 = v21[2];
                v11 = *v23 == v21;
                v21 = v23;
              }

              while (!v11);
            }

            v21 = v23;
          }

          while (v23 != v5);
        }
      }
    }
  }
}

uint64_t TLatticeProcessor::combineMrecData(uint64_t result, uint64_t a2, int a3)
{
  *(result + 24) = *(a2 + 24);
  *(result + 36) += *(a2 + 36);
  v3 = *(a2 + 44);
  v3.i32[1] = *(a2 + 48) - a3;
  v3.i64[1] = *(a2 + 52);
  *(result + 44) = vaddq_s32(v3, *(result + 44));
  *(result + 60) += *(a2 + 60);
  *(result + 64) = 0xBFF0000000000000;
  v4 = *(result + 76);
  if (!v4)
  {
    v6 = *(a2 + 76);
    *(result + 72) = *(a2 + 72);
    goto LABEL_6;
  }

  v5 = *(a2 + 76);
  if (v5 && *(result + 72) + v4 == *(a2 + 72))
  {
    v6 = v5 + v4;
LABEL_6:
    *(result + 76) = v6;
  }

  if (*(result + 80) && *(a2 + 80))
  {
    v7 = *(a2 + 88);
    *(result + 84) += *(a2 + 84);
    *(result + 88) = v7;
    *(result + 92) += *(a2 + 92) - a3;
  }

  else
  {
    *(result + 80) = 0;
    *(result + 88) = 0;
  }

  return result;
}

void TRegisterable<TLatticeProcessor>::~TRegisterable(void *a1)
{
  TRegisterable<TLatticeProcessor>::~TRegisterable(a1);

  JUMPOUT(0x26672B1B0);
}

void CTFTMgr::~CTFTMgr(CTFTMgr *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 240);
  DgnArray<LinearTransform>::releaseAll(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 200);
  DgnArray<LinearTransform>::releaseAll(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 160);
  DgnArray<LinearTransform>::releaseAll(this + 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnArray<LinearTransform>::releaseAll(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnArray<LinearTransform>::releaseAll(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 24);
}

void CTFTMgr::printSize(CTFTMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 342);
  if (v118)
  {
    v13 = v117;
  }

  else
  {
    v13 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_2628823E4, a3, &unk_2628823E4, v13);
  DgnString::~DgnString(&v117);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_2628823E4);
  v15 = (a3 + 1);
  v116 = a3;
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v18 = v117;
  }

  else
  {
    v18 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, v15, &unk_2628823E4, v16, v16, v18, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v19 = sizeObject(this + 4, 0);
  v20 = sizeObject(this + 4, 1);
  v21 = sizeObject(this + 4, 3);
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v23 = v117;
  }

  else
  {
    v23 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v15, &unk_2628823E4, v16, v16, v23, v19, v20, v21);
  DgnString::~DgnString(&v117);
  *a4 += v19;
  *a5 += v20;
  *a6 += v21;
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v25 = v117;
  }

  else
  {
    v25 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v15, &unk_2628823E4, v16, v16, v25, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v27 = v117;
  }

  else
  {
    v27 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v15, &unk_2628823E4, v16, v16, v27, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v29 = v117;
  }

  else
  {
    v29 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v15, &unk_2628823E4, v16, v16, v29, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 12;
  }

  else
  {
    v30 = 16;
  }

  v31 = *(this + 8);
  v32 = *(this + 9);
  if (v32 >= v31)
  {
    v33 = 0;
    if (v31 > 0)
    {
      v30 += 4 * (v31 - 1) + 4;
    }

    v34 = v30 + 4 * (v32 - v31);
  }

  else
  {
    v33 = 4 * v31;
    v34 = v30;
  }

  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v36 = v117;
  }

  else
  {
    v36 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v15, &unk_2628823E4, v16, v16, v36, v34, v30, v33);
  DgnString::~DgnString(&v117);
  *a4 += v34;
  *a5 += v30;
  *a6 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 12;
  }

  else
  {
    v37 = 16;
  }

  v38 = *(this + 12);
  v39 = *(this + 13);
  if (v39 >= v38)
  {
    v40 = 0;
    if (v38 > 0)
    {
      v37 += 4 * (v38 - 1) + 4;
    }

    v41 = v37 + 4 * (v39 - v38);
  }

  else
  {
    v40 = 4 * v38;
    v41 = v37;
  }

  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v43 = v117;
  }

  else
  {
    v43 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v15, &unk_2628823E4, v16, v16, v43, v41, v37, v40);
  DgnString::~DgnString(&v117);
  *a4 += v41;
  *a5 += v37;
  *a6 += v40;
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v45 = v117;
  }

  else
  {
    v45 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_2628823E4, v16, v16, v45, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v46 = sizeObject<LinearTransform>(this + 64, 0);
  v47 = sizeObject<LinearTransform>(this + 64, 1);
  v48 = sizeObject<LinearTransform>(this + 64, 3);
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v50 = v117;
  }

  else
  {
    v50 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v15, &unk_2628823E4, v16, v16, v50, v46, v47, v48);
  DgnString::~DgnString(&v117);
  *a4 += v46;
  *a5 += v47;
  *a6 += v48;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 12;
  }

  else
  {
    v51 = 16;
  }

  v52 = *(this + 22);
  v53 = *(this + 23);
  if (v53 >= v52)
  {
    v54 = 0;
    if (v52 > 0)
    {
      v51 += 4 * (v52 - 1) + 4;
    }

    v55 = v51 + 4 * (v53 - v52);
  }

  else
  {
    v54 = 4 * v52;
    v55 = v51;
  }

  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v57 = v117;
  }

  else
  {
    v57 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v15, &unk_2628823E4, v16, v16, v57, v55, v51, v54);
  DgnString::~DgnString(&v117);
  *a4 += v55;
  *a5 += v51;
  *a6 += v54;
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v59 = v117;
  }

  else
  {
    v59 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v15, &unk_2628823E4, v16, v16, v59, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v60 = sizeObject<LinearTransform>(this + 104, 0);
  v61 = sizeObject<LinearTransform>(this + 104, 1);
  v62 = sizeObject<LinearTransform>(this + 104, 3);
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v64 = v117;
  }

  else
  {
    v64 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v15, &unk_2628823E4, v16, v16, v64, v60, v61, v62);
  DgnString::~DgnString(&v117);
  *a4 += v60;
  *a5 += v61;
  *a6 += v62;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v65 = 12;
  }

  else
  {
    v65 = 16;
  }

  v66 = *(this + 32);
  v67 = *(this + 33);
  if (v67 >= v66)
  {
    v68 = 0;
    if (v66 > 0)
    {
      v65 += 4 * (v66 - 1) + 4;
    }

    v69 = v65 + 4 * (v67 - v66);
  }

  else
  {
    v68 = 4 * v66;
    v69 = v65;
  }

  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v71 = v117;
  }

  else
  {
    v71 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v15, &unk_2628823E4, v16, v16, v71, v69, v65, v68);
  DgnString::~DgnString(&v117);
  *a4 += v69;
  *a5 += v65;
  *a6 += v68;
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v73 = v117;
  }

  else
  {
    v73 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v15, &unk_2628823E4, v16, v16, v73, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v74 = sizeObject<LinearTransform>(this + 144, 0);
  v75 = sizeObject<LinearTransform>(this + 144, 1);
  v76 = sizeObject<LinearTransform>(this + 144, 3);
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v78 = v117;
  }

  else
  {
    v78 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v15, &unk_2628823E4, v16, v16, v78, v74, v75, v76);
  DgnString::~DgnString(&v117);
  *a4 += v74;
  *a5 += v75;
  *a6 += v76;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v79 = 12;
  }

  else
  {
    v79 = 16;
  }

  v80 = *(this + 42);
  v81 = *(this + 43);
  if (v81 >= v80)
  {
    v82 = 0;
    if (v80 > 0)
    {
      v79 += 4 * (v80 - 1) + 4;
    }

    v83 = v79 + 4 * (v81 - v80);
  }

  else
  {
    v82 = 4 * v80;
    v83 = v79;
  }

  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v85 = v117;
  }

  else
  {
    v85 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v15, &unk_2628823E4, v16, v16, v85, v83, v79, v82);
  DgnString::~DgnString(&v117);
  *a4 += v83;
  *a5 += v79;
  *a6 += v82;
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v87 = v117;
  }

  else
  {
    v87 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v15, &unk_2628823E4, v16, v16, v87, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v88 = sizeObject<LinearTransform>(this + 184, 0);
  v89 = sizeObject<LinearTransform>(this + 184, 1);
  v90 = sizeObject<LinearTransform>(this + 184, 3);
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v92 = v117;
  }

  else
  {
    v92 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v15, &unk_2628823E4, v16, v16, v92, v88, v89, v90);
  DgnString::~DgnString(&v117);
  *a4 += v88;
  *a5 += v89;
  *a6 += v90;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v93 = 12;
  }

  else
  {
    v93 = 16;
  }

  v94 = *(this + 52);
  v95 = *(this + 53);
  if (v95 >= v94)
  {
    v96 = 0;
    if (v94 > 0)
    {
      v93 += 4 * (v94 - 1) + 4;
    }

    v97 = v93 + 4 * (v95 - v94);
  }

  else
  {
    v96 = 4 * v94;
    v97 = v93;
  }

  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v99 = v117;
  }

  else
  {
    v99 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v15, &unk_2628823E4, v16, v16, v99, v97, v93, v96);
  DgnString::~DgnString(&v117);
  *a4 += v97;
  *a5 += v93;
  *a6 += v96;
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v101 = v117;
  }

  else
  {
    v101 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v15, &unk_2628823E4, v16, v16, v101, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v102 = sizeObject<LinearTransform>(this + 224, 0);
  v103 = sizeObject<LinearTransform>(this + 224, 1);
  v104 = sizeObject<LinearTransform>(this + 224, 3);
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v106 = v117;
  }

  else
  {
    v106 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v15, &unk_2628823E4, v16, v16, v106, v102, v103, v104);
  DgnString::~DgnString(&v117);
  *a4 += v102;
  *a5 += v103;
  *a6 += v104;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v107 = 12;
  }

  else
  {
    v107 = 16;
  }

  v108 = *(this + 62);
  v109 = *(this + 63);
  if (v109 >= v108)
  {
    v110 = 0;
    if (v108 > 0)
    {
      v107 += 4 * (v108 - 1) + 4;
    }

    v111 = v107 + 4 * (v109 - v108);
  }

  else
  {
    v110 = 4 * v108;
    v111 = v107;
  }

  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344);
  if (v118)
  {
    v113 = v117;
  }

  else
  {
    v113 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v15, &unk_2628823E4, v16, v16, v113, v111, v107, v110);
  DgnString::~DgnString(&v117);
  *a4 += v111;
  *a5 += v107;
  *a6 += v110;
  getShipObjectSizeDescription(&v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 345);
  if (v118)
  {
    v115 = v117;
  }

  else
  {
    v115 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v116, &unk_2628823E4, (35 - v116), (35 - v116), v115, *a4, *a5, *a6);
  DgnString::~DgnString(&v117);
}

void sub_262694B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<LinearTransform>(uint64_t a1, int a2)
{
  LinearTransform::LinearTransform(v11);
  v4 = LinearTransform::sizeObject(v11, 2);
  if (a2 == 3)
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

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 72 * v7 - 72;
        do
        {
          v5 += LinearTransform::sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 72;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  LinearTransform::~LinearTransform(v11);
  return v5;
}

void sub_262694CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LinearTransform::~LinearTransform(va);
  _Unwind_Resume(a1);
}

void CTFTMgr::saveCTFT(CTFTMgr *this, DFile *a2, DFileChecksums *a3, int a4, _BOOL8 a5)
{
  v5 = a5;
  v10 = (this + 56);
  if ((*(this + 14) == 0) != (*(this + 8) == 0))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 408, "sigproc/ctftmgr", 20, "%s", errStr_sigproc_ctftmgr_E_CTFT_SAVE);
  }

  if ((*(this + 34) == 0) != (*(this + 12) == 0))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 411, "sigproc/ctftmgr", 20, "%s", errStr_sigproc_ctftmgr_E_CTFT_SAVE);
  }

  if (a4)
  {

    CTFTMgr::saveCTFTText(this, a2, v5);
  }

  else
  {
    v11 = OpenAndWriteMrecHeader(a2, 0x23u, v5, "MRCTFTM!", 22, 7);
    v13 = 0;
    writeObject(v11, this, &v13);
    writeObject(v11, this + 1, &v13);
    writeObject(v11, this + 2, &v13);
    writeObject(v11, this + 3, &v13);
    writeObject<unsigned int>(v11, this + 24, &v13);
    writeObject<unsigned int>(v11, this + 40, &v13);
    writeObject(v11, v10, &v13);
    writeObject<LinearTransform>(v11, this + 64, &v13);
    writeObject<unsigned int>(v11, this + 80, &v13);
    writeObject(v11, this + 24, &v13);
    writeObject<LinearTransform>(v11, this + 104, &v13);
    writeObject<unsigned int>(v11, this + 120, &v13);
    writeObject(v11, this + 34, &v13);
    writeObject<LinearTransform>(v11, this + 144, &v13);
    writeObject<unsigned int>(v11, this + 160, &v13);
    writeObject(v11, this + 44, &v13);
    writeObject<LinearTransform>(v11, this + 184, &v13);
    writeObject<unsigned int>(v11, this + 200, &v13);
    writeObjectChecksum(v11, &v13);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 35, v13);
    DgnDelete<DgnStream>(v11);
  }
}

void CTFTMgr::saveCTFTText(CTFTMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v110);
  DgnTextFileWriter::openDgnTextFileWriter(v110, a2, 36, a3);
  v108 = 0;
  v109 = 0;
  DgnTextFile::legalDgnTextFileVersions(v110, sLTF_Versions, &v108);
  DgnTextFileWriter::setFileType(v110, "LinearTransformFeatures", (v108 + 8 * (v109 - 1)));
  v106 = 0;
  v107 = 0;
  v104 = 0;
  v6 = realloc_array(0, &v104, 0x14uLL, 0, 0, 1);
  v105 = 0;
  v106 = v104;
  LODWORD(v107) = 5;
  HIDWORD(v107) = v6 >> 2;
  v104 = 0;
  v102 = 0;
  HIDWORD(v105) = realloc_array(0, &v102, 0x50uLL, 0, 0, 1) >> 4;
  v104 = v102;
  v7 = v105;
  if (v105 <= 5)
  {
    if (v105 != 5)
    {
      v9 = v105 + 1;
      v10 = 16 * v105;
      do
      {
        DgnString::DgnString((v104 + v10));
        v10 += 16;
        v18 = v9++ == 5;
      }

      while (!v18);
    }
  }

  else if (v105 >= 6)
  {
    v8 = 16 * v105 - 16;
    do
    {
      --v7;
      DgnString::~DgnString(v104 + v8);
      v8 -= 16;
    }

    while (v7 > 5);
  }

  LODWORD(v105) = 5;
  DgnString::operator=(v104, "TableName");
  *v106 = 0;
  DgnString::operator=((v104 + 16), "UnsValue1");
  v106[1] = 3;
  DgnString::operator=((v104 + 32), "IntValue1");
  v106[2] = 1;
  DgnString::operator=((v104 + 48), "IntValue2");
  v106[3] = 1;
  DgnString::operator=((v104 + 64), "IntValue3");
  v106[4] = 1;
  DgnTextFileWriter::setLineFieldFormat(v110, &v106, &v104);
  DgnTextFileWriter::setHeaderFieldUnsigned(v110, "ModelFeatureDim", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v110, "TransformIntScale", 1 << *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v110, "NumberOfSpeakerTransforms", *(this + 14));
  DgnTextFileWriter::setHeaderFieldUnsigned(v110, "NumberOfChannelTransforms", *(this + 34));
  if (*(this + 14))
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v110, "NumberOfHierScorerSpeakerTransforms", *(this + 24));
  }

  if (*(this + 34))
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v110, "NumberOfHierScorerChannelTransforms", *(this + 44));
  }

  DgnString::DgnString(&v102, "None");
  if (*(this + 14))
  {
    v11 = *(this + 8);
    if (v11)
    {
      LODWORD(v12) = 0;
      v13 = *(this + 3);
      do
      {
        v14 = *v13++;
        if (v14 == -1)
        {
          v12 = v12;
        }

        else
        {
          v12 = (v12 + 1);
        }

        --v11;
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    DgnTextFileWriter::setHeaderFieldUnsigned(v110, "NumberOfSpeakerTransformationClasses", v12);
    DgnTextFileWriter::setHeaderFieldUnsigned(v110, "SpeakerTransformDim", *(this + 2));
    v16 = *(this + 8);
    v17 = *(v16 + 32);
    if (v17)
    {
      v18 = *(*(v16 + 24) + 8) != 1 || v17 == 1;
      if (v18)
      {
        v19 = "Full";
      }

      else
      {
        v19 = "Diagonal";
      }

      DgnString::operator=(&v102, v19);
    }

    if (v103)
    {
      v20 = v102;
    }

    else
    {
      v20 = &unk_2628823E4;
    }

    DgnTextFileWriter::setHeaderField(v110, "SpeakerTransformMatrixType", v20);
    v21 = *(this + 8);
    v100 = 0;
    v101 = 0;
    DgnPrimArray<int>::copyArraySlice(&v100, (v21 + 8), 0, *(v21 + 16));
    v15 = v101 != 0;
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v100);
    DgnTextFileWriter::setHeaderFieldBool(v110, "HasSpeakerTransformOffsets", v15);
  }

  else
  {
    v15 = 0;
  }

  DgnString::DgnString(&v100, "None");
  if (*(this + 34))
  {
    v22 = *(this + 12);
    if (v22)
    {
      LODWORD(v23) = 0;
      v24 = *(this + 5);
      do
      {
        v25 = *v24++;
        if (v25 == -1)
        {
          v23 = v23;
        }

        else
        {
          v23 = (v23 + 1);
        }

        --v22;
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    DgnTextFileWriter::setHeaderFieldUnsigned(v110, "NumberOfChannelTransformationClasses", v23);
    DgnTextFileWriter::setHeaderFieldUnsigned(v110, "ChannelTransformDim", *(this + 3));
    v27 = *(this + 18);
    v28 = *(v27 + 32);
    if (v28)
    {
      if (*(*(v27 + 24) + 8) != 1 || v28 == 1)
      {
        v30 = "Full";
      }

      else
      {
        v30 = "Diagonal";
      }

      DgnString::operator=(&v100, v30);
    }

    if (v101)
    {
      v31 = v100;
    }

    else
    {
      v31 = &unk_2628823E4;
    }

    DgnTextFileWriter::setHeaderField(v110, "ChannelTransformMatrixType", v31);
    v32 = *(this + 18);
    v98 = 0;
    v99 = 0;
    DgnPrimArray<int>::copyArraySlice(&v98, (v32 + 8), 0, *(v32 + 16));
    v26 = v99 != 0;
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v98);
    DgnTextFileWriter::setHeaderFieldBool(v110, "HasChannelTransformOffsets", v26);
  }

  else
  {
    v26 = 0;
  }

  if (v103)
  {
    v33 = v102;
  }

  else
  {
    v33 = &unk_2628823E4;
  }

  v34 = strcmp(v33, "None");
  LODWORD(v39) = *(this + 14);
  if (v34)
  {
    v40 = strcmp(v33, "Diagonal");
    if (!v39)
    {
      goto LABEL_72;
    }

    v41 = v40;
    v42 = 0;
    v43 = 24;
    do
    {
      writeIntMatrix(v110, "SpeakerTransAccMatrix", v41 == 0, (*(this + 8) + v43), v42++, *(this + 2), *(this + 2));
      v39 = *(this + 14);
      v43 += 72;
    }

    while (v42 < v39);
  }

  if (v15)
  {
    if (!v39)
    {
      goto LABEL_72;
    }

    v44 = 0;
    v45 = 16;
    do
    {
      v46 = *(this + 8);
      v98 = 0;
      v99 = 0;
      DgnPrimArray<int>::copyArraySlice(&v98, (v46 + v45 - 8), 0, *(v46 + v45));
      writeIntOffset(v110, "SpeakerTransAccOffset", &v98, v44, *(this + 2));
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v98);
      ++v44;
      v39 = *(this + 14);
      v45 += 72;
    }

    while (v44 < v39);
  }

  if (v39)
  {
    v47 = 0;
    do
    {
      writeLogDeterminant(v110, "SpeakerTransAccLogDeterminant", *(*(this + 10) + 4 * v47), v47, v35, v36, v37, v38, v97);
      ++v47;
    }

    while (v47 < *(this + 14));
  }

LABEL_72:
  v48 = *(this + 8);
  if (v48)
  {
    v49 = 0;
    v50 = 0;
    do
    {
      if (*(*(this + 3) + 4 * v49) != -1)
      {
        DgnTextFileWriter::setLineFieldValue(v110, 0, "SpeakerClassNodeIdToTransformMap");
        DgnTextFileWriter::setLineFieldUnsignedValue(v110, 1u, v50);
        DgnTextFileWriter::setLineFieldIntegerValue(v110, 2u, v49);
        DgnTextFileWriter::setLineFieldIntegerValue(v110, 3u, *(*(this + 3) + 4 * v49));
        DgnTextFileWriter::setLineFieldIntegerValue(v110, 4u, 0);
        DgnTextFileWriter::writeNextLine(v110);
        ++v50;
        v48 = *(this + 8);
      }

      ++v49;
    }

    while (v49 < v48);
  }

  if (v103)
  {
    v51 = v102;
  }

  else
  {
    v51 = &unk_2628823E4;
  }

  if (strcmp(v51, "None"))
  {
    v56 = strcmp(v51, "Diagonal");
    if (*(this + 24))
    {
      v57 = v56;
      v58 = 0;
      v59 = 24;
      do
      {
        writeIntMatrix(v110, "HierScorerSpeakerTransAccMatrix", v57 == 0, (*(this + 13) + v59), v58++, *(this + 2), *(this + 2));
        v59 += 72;
      }

      while (v58 < *(this + 24));
    }
  }

  LODWORD(v60) = *(this + 24);
  if (v15)
  {
    if (!v60)
    {
      goto LABEL_91;
    }

    v61 = 0;
    v62 = 16;
    do
    {
      v63 = *(this + 13);
      v98 = 0;
      v99 = 0;
      DgnPrimArray<int>::copyArraySlice(&v98, (v63 + v62 - 8), 0, *(v63 + v62));
      writeIntOffset(v110, "HierScorerSpeakerTransAccOffset", &v98, v61, *(this + 2));
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v98);
      ++v61;
      v60 = *(this + 24);
      v62 += 72;
    }

    while (v61 < v60);
  }

  if (v60)
  {
    v64 = 0;
    do
    {
      writeLogDeterminant(v110, "HierScorerSpeakerTransAccLogDeterminant", *(*(this + 15) + 4 * v64), v64, v52, v53, v54, v55, v97);
      ++v64;
    }

    while (v64 < *(this + 24));
  }

LABEL_91:
  if (v101)
  {
    v65 = v100;
  }

  else
  {
    v65 = &unk_2628823E4;
  }

  v66 = strcmp(v65, "None");
  LODWORD(v71) = *(this + 34);
  if (v66)
  {
    v72 = strcmp(v65, "Diagonal");
    if (!v71)
    {
      goto LABEL_105;
    }

    v73 = v72;
    v74 = 0;
    v75 = 24;
    do
    {
      writeIntMatrix(v110, "ChannelTransAccMatrix", v73 == 0, (*(this + 18) + v75), v74++, *(this + 3), *(this + 3));
      v71 = *(this + 34);
      v75 += 72;
    }

    while (v74 < v71);
  }

  if (v26)
  {
    if (!v71)
    {
      goto LABEL_105;
    }

    v76 = 0;
    v77 = 16;
    do
    {
      v78 = *(this + 18);
      v98 = 0;
      v99 = 0;
      DgnPrimArray<int>::copyArraySlice(&v98, (v78 + v77 - 8), 0, *(v78 + v77));
      writeIntOffset(v110, "ChannelTransAccOffset", &v98, v76, *(this + 3));
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v98);
      ++v76;
      v71 = *(this + 34);
      v77 += 72;
    }

    while (v76 < v71);
  }

  if (v71)
  {
    v79 = 0;
    do
    {
      writeLogDeterminant(v110, "ChannelTransAccLogDeterminant", *(*(this + 20) + 4 * v79), v79, v67, v68, v69, v70, v97);
      ++v79;
    }

    while (v79 < *(this + 34));
  }

LABEL_105:
  v80 = *(this + 12);
  if (v80)
  {
    v81 = 0;
    v82 = 0;
    do
    {
      if (*(*(this + 5) + 4 * v81) != -1)
      {
        DgnTextFileWriter::setLineFieldValue(v110, 0, "ChannelClassNodeIdToTransformMap");
        DgnTextFileWriter::setLineFieldUnsignedValue(v110, 1u, v82);
        DgnTextFileWriter::setLineFieldIntegerValue(v110, 2u, v81);
        DgnTextFileWriter::setLineFieldIntegerValue(v110, 3u, *(*(this + 5) + 4 * v81));
        DgnTextFileWriter::setLineFieldIntegerValue(v110, 4u, 0);
        DgnTextFileWriter::writeNextLine(v110);
        ++v82;
        v80 = *(this + 12);
      }

      ++v81;
    }

    while (v81 < v80);
  }

  if (v101)
  {
    v83 = v100;
  }

  else
  {
    v83 = &unk_2628823E4;
  }

  if (strcmp(v83, "None"))
  {
    v88 = strcmp(v83, "Diagonal");
    if (*(this + 44))
    {
      v89 = v88;
      v90 = 0;
      v91 = 24;
      do
      {
        writeIntMatrix(v110, "HierScorerChannelTransAccMatrix", v89 == 0, (*(this + 23) + v91), v90++, *(this + 3), *(this + 3));
        v91 += 72;
      }

      while (v90 < *(this + 44));
    }
  }

  LODWORD(v92) = *(this + 44);
  if (v26)
  {
    if (!v92)
    {
      goto LABEL_124;
    }

    v93 = 0;
    v94 = 16;
    do
    {
      v95 = *(this + 23);
      v98 = 0;
      v99 = 0;
      DgnPrimArray<int>::copyArraySlice(&v98, (v95 + v94 - 8), 0, *(v95 + v94));
      writeIntOffset(v110, "HierScorerChannelTransAccOffset", &v98, v93, *(this + 3));
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v98);
      ++v93;
      v92 = *(this + 44);
      v94 += 72;
    }

    while (v93 < v92);
  }

  if (v92)
  {
    v96 = 0;
    do
    {
      writeLogDeterminant(v110, "HierScorerChannelTransAccLogDeterminant", *(*(this + 25) + 4 * v96), v96, v84, v85, v86, v87, v97);
      ++v96;
    }

    while (v96 < *(this + 44));
  }

LABEL_124:
  DgnString::~DgnString(&v100);
  DgnString::~DgnString(&v102);
  DgnArray<DgnString>::releaseAll(&v104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v106);
  DgnIArray<Utterance *>::~DgnIArray(&v108);
  DgnTextFileWriter::~DgnTextFileWriter(v110);
}

void sub_262695A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va5, a7);
  va_start(va4, a7);
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  va_copy(va4, va3);
  v17 = va_arg(va4, void);
  v19 = va_arg(va4, void);
  va_copy(va5, va4);
  v20 = va_arg(va5, void);
  v22 = va_arg(va5, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnArray<DgnString>::releaseAll(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  DgnIArray<Utterance *>::~DgnIArray(va4);
  DgnTextFileWriter::~DgnTextFileWriter(va5);
  _Unwind_Resume(a1);
}

uint64_t writeObject<LinearTransform>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = LinearTransform::writeObject((*a2 + v7), a1, a3);
      ++v8;
      v7 += 72;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void writeIntMatrix(DgnTextFileWriter *this, char *a2, int a3, void *a4, int a5, unsigned int a6, int a7)
{
  if (a6)
  {
    for (i = 0; i < a6; ++i)
    {
      if (a7)
      {
        v14 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldValue(this, 0, a2);
          DgnTextFileWriter::setLineFieldUnsignedValue(this, 1u, a5);
          if (a3)
          {
            i = v14;
            v15 = 0;
          }

          else
          {
            v15 = v14;
          }

          DgnTextFileWriter::setLineFieldUnsignedValue(this, 2u, i);
          DgnTextFileWriter::setLineFieldUnsignedValue(this, 3u, v14);
          DgnTextFileWriter::setLineFieldIntegerValue(this, 4u, *(*(*a4 + 16 * i) + 4 * v15));
          DgnTextFileWriter::writeNextLine(this);
          ++v14;
        }

        while (a7 != v14);
      }
    }
  }
}

void writeIntOffset(DgnTextFileWriter *this, char *a2, void *a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v9 = 0;
    v10 = a5;
    do
    {
      DgnTextFileWriter::setLineFieldValue(this, 0, a2);
      DgnTextFileWriter::setLineFieldUnsignedValue(this, 1u, a4);
      DgnTextFileWriter::setLineFieldUnsignedValue(this, 2u, v9);
      DgnTextFileWriter::setLineFieldUnsignedValue(this, 3u, 0);
      DgnTextFileWriter::setLineFieldIntegerValue(this, 4u, *(*a3 + 4 * v9));
      DgnTextFileWriter::writeNextLine(this);
      ++v9;
    }

    while (v10 != v9);
  }
}

void writeLogDeterminant(DgnTextFileWriter *a1, char *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9)
{
  DgnTextFileWriter::setLineFieldValue(a1, 0, a2);
  DgnTextFileWriter::setLineFieldUnsignedValue(a1, 1u, a4);
  DgnTextFileWriter::setLineFieldIntegerValue(a1, 2u, 0);
  DgnTextFileWriter::setLineFieldIntegerValue(a1, 3u, 0);
  DgnTextFileWriter::setLineFieldIntegerValue(a1, 4u, a3);

  DgnTextFileWriter::writeNextLine(a1);
}

void MrecInitModule_recoggrm_recogctl(void)
{
  if (!gParDebugPronGuesser)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugPronGuesser", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugPronGuesser = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugPronGuesser);
  }
}

void dismantleRecogGrammarIArray(uint64_t result)
{
  if (*(result + 8))
  {
    v2 = 0;
    do
    {
      RecogGrammar::unlinkStates(*(*result + 8 * v2++));
      v3 = *(result + 8);
    }

    while (v2 < v3);
    if (v3)
    {
      v4 = 0;
      do
      {
        RecogGrammar::killStates(*(*result + 8 * v4));
        DgnDelete<RecogGrammar>(*(*result + 8 * v4++));
      }

      while (v4 < *(result + 8));
    }
  }

  *(result + 8) = 0;
}

void RecogGrammar::unlinkStates(StateMgr *this)
{
  if (*(this + 6))
  {
    v2 = 0;
    v3 = *(*(*(ModelMgr::smpModelMgr + 264) + 8 * *(this + 4)) + 56);
    do
    {
      StateMgr::setEmptyStateTransition(v3, *(*(this + 2) + 4 * v2), 1);
      StateMgr::setWordAliasState(v3, *(*(this + 2) + 4 * v2++), 0, 1);
    }

    while (v2 < *(this + 6));
  }
}

void *RecogGrammar::killStates(RecogGrammar *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 4) = 0;
  }

  *(this + 5) = 0;
  v3 = *(this + 6);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 6) = 0;
  }

  *(this + 7) = 0;
  v4 = *(this + 6);
  if (v4)
  {
    v5 = ModelMgr::smpModelMgr;
    do
    {
      v6 = v4 - 1;
      v7 = *(*(this + 2) + 4 * v6);
      *(this + 6) = v6;
      StateMgr::killState(*(*(*(v5 + 264) + 8 * *(this + 4)) + 56), v7, 1);
      v4 = *(this + 6);
    }

    while (v4);
  }

  result = *(this + 2);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 2) = 0;
  }

  *(this + 3) = 0;
  *(this + 4) = 127;
  *(this + 10) = 0;
  return result;
}

void (***DgnDelete<RecogGrammar>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void PronGenerator::PronGenerator(PronGenerator *this, unsigned int a2, __int16 a3, unsigned int a4, int a5, int a6, PronGuessParamSet *a7)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 1) = a4;
  *(this + 2) = a5;
  *(this + 3) = a7;
  v7 = *(a7 + 14);
  *(this + 3) = a6;
  *(this + 4) = v7;
  StateMgr::getColls(*(*(*(ModelMgr::smpModelMgr + 264) + 8 * a2) + 56), a4, 1);
}

uint64_t *RecogGrammar::newEndOfUtteranceRecogGrammar(RecogGrammar *this)
{
  v1 = this;
  v2 = MemChunkAlloc(0x40uLL, 0);
  *v2 = &unk_287528BC8;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = v1;
  *(v2 + 10) = 0;
  RecogGrammar::setupEndOfUtteranceGrammar(v2);
  return v2;
}

void RecogGrammar::setupEndOfUtteranceGrammar(RecogGrammar *this)
{
  NewState = RecogGrammar::getNewState(this);
  v3 = *(this + 10);
  if (v3 == *(this + 11))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 32, 1, 1);
    v3 = *(this + 10);
  }

  *(*(this + 4) + 4 * v3) = NewState;
  ++*(this + 10);
  v4 = *(this + 14);
  if (v4 == *(this + 15))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 48, 1, 1);
    v4 = *(this + 14);
  }

  *(*(this + 6) + 4 * v4) = NewState;
  v5 = *(*(ModelMgr::smpModelMgr + 264) + 8 * *(this + 4));
  ++*(this + 14);
  v6 = *(v5 + 56);

  StateMgr::setEndOfUtteranceAllowed(v6, NewState, 1, 1);
}

WordStatesRecogGrammar *RecogGrammar::newPronGuessRecogGrammar(RecogGrammar *this, const PronGenerator *a2, CharInfo **a3, const DgnString *a4)
{
  v7 = MemChunkAlloc(0xA8uLL, 0);
  WordStatesRecogGrammar::WordStatesRecogGrammar(v7, *this);
  WordStatesRecogGrammar::setupPronGuessGrammar(v8, this, a2, a3);
  return v7;
}

uint64_t WordStatesRecogGrammar::setupPronGuessGrammar(WordStatesRecogGrammar *this, const PronGenerator *a2, uint64_t a3, CharInfo **a4)
{
  v138 = a3;
  v5 = *(*(ModelMgr::smpModelMgr + 264) + 8 * *(this + 4));
  v6 = **(v5 + 8);
  v174 = 0;
  v175 = 0;
  if (*(a4 + 2))
  {
    v7 = *a4;
  }

  else
  {
    v7 = &byte_262899963;
  }

  if (v6)
  {
    CharInfo::getLogicalCharLengthsForEncodedCharString(v7, &v174, a3, a4);
    v8 = v175;
  }

  else if (*v7)
  {
    LODWORD(v8) = 0;
    v9 = v7 + 1;
    do
    {
      if (v8 == HIDWORD(v175))
      {
        DgnPrimArray<char>::reallocElts(&v174, 1, 1);
        LODWORD(v8) = v175;
      }

      *(v174 + v8) = 1;
      v8 = (v175 + 1);
      LODWORD(v175) = v175 + 1;
    }

    while (*v9++);
  }

  else
  {
    v8 = 0;
  }

  v141 = v8;
  v142 = this;
  v11 = *(a2 + 1);
  v12 = *(v5 + 56);
  StateMgr::checkCollIdExposed(v12, *(a2 + 1), *(a2 + 1));
  v13 = *(v5 + 48);
  v14 = *(v5 + 16);
  v172 = 0;
  v173 = 0;
  if (!v141)
  {
    v15 = 0;
LABEL_20:
    if (v15 < v141)
    {
      v18 = v141 - v15;
      v19 = 4 * v15;
      do
      {
        v20 = &v172[v19];
        *v20 = 0;
        v20[1] = 0;
        v19 += 4;
        --v18;
      }

      while (v18);
    }

    goto LABEL_23;
  }

  v170 = 0;
  HIDWORD(v173) = realloc_array(0, &v170, 16 * v141, 0, 0, 1) >> 4;
  v172 = v170;
  v15 = v173;
  if (v173 <= v141)
  {
    goto LABEL_20;
  }

  if (v173 <= v141)
  {
    v21 = v141;
    LODWORD(v173) = v141;
    v170 = 0;
    v171 = 0;
    goto LABEL_26;
  }

  v16 = v173;
  v17 = 16 * v173 - 16;
  do
  {
    --v16;
    DgnPrimArray<unsigned int>::~DgnPrimArray(v172 + v17);
    v17 -= 16;
  }

  while (v16 > v141);
LABEL_23:
  v21 = v141;
  LODWORD(v173) = v141;
  v170 = 0;
  v171 = 0;
  if (!v141)
  {
    v22 = 1;
    goto LABEL_27;
  }

LABEL_26:
  v168 = 0;
  v22 = 0;
  HIDWORD(v171) = realloc_array(0, &v168, 4 * v21, 0, 0, 1) >> 2;
  v170 = v168;
LABEL_27:
  v23 = v141;
  LODWORD(v171) = v141;
  v168 = 0;
  v169 = 0;
  v166 = 0;
  v167 = 0;
  if (v138)
  {
    if (v141)
    {
      v164 = 0;
      HIDWORD(v169) = realloc_array(0, &v164, 4 * v141, 0, 0, 1) >> 2;
      v168 = v164;
      v24 = HIDWORD(v167);
    }

    else
    {
      v24 = 0;
    }

    v23 = v141;
    LODWORD(v169) = v141;
    if (v24 < v141)
    {
      v164 = 0;
      HIDWORD(v167) = realloc_array(v166, &v164, 4 * v141, 4 * v167, 4 * v167, 1) >> 2;
      v166 = v164;
      v23 = v141;
    }

    LODWORD(v167) = v23;
  }

  v164 = 0;
  v165 = 0;
  if (v23)
  {
    v163[0] = 0;
    HIDWORD(v165) = realloc_array(0, v163, 16 * v23, 0, 0, 1) >> 4;
    v164 = v163[0];
    v25 = v165;
    if (v165 > v23)
    {
      if (v165 > v23)
      {
        v26 = v165;
        v27 = 16 * v165 - 16;
        do
        {
          --v26;
          DgnPrimArray<unsigned int>::~DgnPrimArray(v164 + v27);
          v27 -= 16;
        }

        while (v26 > v141);
      }

      goto LABEL_44;
    }
  }

  else
  {
    v25 = 0;
  }

  if (v25 < v141)
  {
    v28 = v141 - v25;
    v29 = 16 * v25;
    do
    {
      v30 = v164 + v29;
      *v30 = 0;
      v30[1] = 0;
      v29 += 16;
      --v28;
    }

    while (v28);
  }

LABEL_44:
  LODWORD(v165) = v141;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v163, v141);
  v31 = (v141 + 1);
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v162, v31);
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v161, v31);
  DgnString::DgnString(v160);
  DgnString::DgnString(&v158);
  v156 = 0;
  v157 = 0;
  v154 = 0;
  v155 = 0;
  v152 = 0;
  v153 = 0;
  v32 = *(a2 + 3);
  v33 = *(v32 + 48);
  v34 = *(v32 + 40);
  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = &byte_262899963;
  }

  v135 = v22;
  if ((v22 & 1) == 0)
  {
    v36 = 0;
    v140 = 0;
    v137 = 1;
    while (1)
    {
      *v143 = v36;
      v136 = v36 + 1;
      if (v36 + 1 < v31)
      {
        break;
      }

LABEL_91:
      v150[0] = RecogGrammar::getNewState(v142);
      HashKEV<unsigned int,unsigned int,CWIDScope>::add(v142 + 64, v150);
      v67 = v150[0];
      *(v170 + *v143) = v150[0];
      StateMgr::setSkipAllowed(v12, v67, 1, 1);
      StateMgr::setLeftWBAllowed(v12, *(v170 + *v143), *v143 == 0, 1);
      StateMgr::setRightWBAllowed(v12, *(v170 + *v143), *v143 == 0, 1);
      if (v138)
      {
        v150[0] = RecogGrammar::getNewState(v142);
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v142 + 64, v150);
        v68 = v150[0];
        *(v168 + *v143) = v150[0];
        StateMgr::setWordPenalty(v12, v68, *(a2 + 4), 1);
        StateMgr::setWordAliasState(v12, *(v168 + *v143), *(a2 + 3), 1);
        StateMgr::setLeftWBAllowed(v12, *(v168 + *v143), 0, 1);
        StateMgr::setRightWBAllowed(v12, *(v168 + *v143), 0, 1);
        v150[0] = RecogGrammar::getNewState(v142);
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v142 + 64, v150);
        v69 = v150[0];
        *(v166 + *v143) = v150[0];
        StateMgr::setSkipAllowed(v12, v69, 1, 1);
        StateMgr::setLeftWBAllowed(v12, *(v166 + *v143), 0, 1);
        StateMgr::setRightWBAllowed(v12, *(v166 + *v143), 0, 1);
      }

      v140 += *(v174 + *v143);
      ++v137;
      v36 = v136;
      if (v136 == v141)
      {
        goto LABEL_94;
      }
    }

    v37 = 0;
    v38 = v137;
    while (1)
    {
      v37 += *(v174 + v38 - 1);
      DgnString::setToMid(v160, a4, v140, v37);
      DgnString::operator=(&v158, v160);
      DgnString::operator+=(&v158, v35);
      LODWORD(v157) = 0;
      LOBYTE(v149[0]) = 0;
      v39 = v159 ? v158 : &byte_262899963;
      StateMgr::getWordsWithPrefix(v12, *(a2 + 1), v11, v39, &byte_262899963, &v156, v149);
      if (v157)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          v43 = *(v156 + 4 * v41);
          if (*v35 || (v159 ? (v45 = v158) : (v45 = &byte_262899963), !CollMgr::collStrcmpUns8(v14, v11, v45, (v13[28] + *(v13[25] + 4 * v43)), v40)))
          {
            v42 = v42 || StateMgr::isWordIdInState(v12, *(a2 + 2), v43, 1);
            v44 = v157;
          }

          else
          {
            LODWORD(v157) = v41;
            v44 = v41;
          }

          ++v41;
        }

        while (v41 < v44);
        if (v44)
        {
          break;
        }
      }

LABEL_90:
      ++v38;
      v31 = (v141 + 1);
      if (v141 + 1 == v38)
      {
        goto LABEL_91;
      }
    }

    v46 = v164 + 16 * *v143;
    v47 = *(v46 + 2);
    if (v47 == *(v46 + 3))
    {
      DgnPrimArray<char>::reallocElts(v164 + 16 * *v143, 1, 1);
      v48 = *(v46 + 2);
      v49 = v157;
      *(*v46 + v48) = v42;
      *(v46 + 2) = v48 + 1;
      LODWORD(v153) = 0;
      if (!v49)
      {
LABEL_81:
        v150[0] = RecogGrammar::getNewState(v142);
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v142 + 64, v150);
        v56 = v150[0];
        StateMgr::addWordIdArray(v12, v150[0], &v152, 1);
        StateMgr::setLeftWBAllowed(v12, v56, *v143 == 0, 1);
        StateMgr::setRightWBAllowed(v12, v56, v38 == v141, 1);
        v57 = v162[0] + 16 * v38;
        v58 = *(v57 + 8);
        if (v58 == *(v57 + 12))
        {
          DgnPrimArray<short>::reallocElts(v162[0] + 16 * v38, 1, 1);
          v58 = *(v57 + 8);
        }

        *(*v57 + 2 * v58) = v143[0];
        *(v57 + 8) = v58 + 1;
        v59 = v161[0] + 16 * v38;
        v60 = v172;
        v61 = v172[4 * *v143 + 2];
        v62 = *(v59 + 8);
        if (v62 == *(v59 + 12))
        {
          DgnPrimArray<short>::reallocElts(v161[0] + 16 * v38, 1, 1);
          v62 = *(v59 + 8);
          v60 = v172;
        }

        *(*v59 + 2 * v62) = v61;
        *(v59 + 8) = v62 + 1;
        v63 = &v60[4 * *v143];
        v64 = *(v63 + 8);
        if (v64 == *(v63 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(v63, 1, 1);
          v64 = *(v63 + 8);
        }

        *(*v63 + 4 * v64) = v56;
        ++*(v63 + 8);
        v65 = v163[0] + 16 * *v143;
        v66 = *(v65 + 2);
        if (v66 == *(v65 + 3))
        {
          DgnPrimArray<short>::reallocElts(v163[0] + 16 * *v143, 1, 1);
          v66 = *(v65 + 2);
        }

        *(*v65 + 2 * v66) = v38;
        *(v65 + 2) = v66 + 1;
        goto LABEL_90;
      }
    }

    else
    {
      *(*v46 + v47) = v42;
      *(v46 + 2) = v47 + 1;
      LODWORD(v153) = 0;
    }

    v50 = 0;
    do
    {
      WordList::lookupAll(v13, *(v156 + 4 * v50), &v154);
      v51 = v155;
      if ((v153 + v155) > HIDWORD(v153))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v152, (v153 + v155 - HIDWORD(v153)), 1);
        v51 = v155;
      }

      if (v51)
      {
        v52 = 0;
        v53 = v154;
        v54 = v152;
        do
        {
          *(v54 + 4 * (v52 + v153)) = *(v53 + 4 * v52);
          ++v52;
          v55 = v155;
        }

        while (v52 < v155);
      }

      else
      {
        v55 = 0;
      }

      LODWORD(v153) = v153 + v55;
      ++v50;
    }

    while (v50 < v157);
    goto LABEL_81;
  }

LABEL_94:
  *v150 = 0;
  v151 = 0;
  if (v138)
  {
    v70 = v142;
    v71 = v141;
    v72 = v135;
    v149[0] = RecogGrammar::getNewState(v142);
    HashKEV<unsigned int,unsigned int,CWIDScope>::add(v142 + 64, v149);
    v144 = v149[0];
    StateMgr::setWordPenalty(v12, v149[0], *(a2 + 4), 1);
    StateMgr::setWordAliasState(v12, v144, *(a2 + 3), 1);
    StateMgr::setLeftWBAllowed(v12, v144, 1, 1);
    StateMgr::setRightWBAllowed(v12, v144, 0, 1);
    v149[0] = RecogGrammar::getNewState(v142);
    HashKEV<unsigned int,unsigned int,CWIDScope>::add(v142 + 64, v149);
    v73 = v149[0];
    StateMgr::setWordPenalty(v12, v149[0], *(a2 + 4), 1);
    StateMgr::setWordAliasState(v12, v73, *(a2 + 3), 1);
    StateMgr::setLeftWBAllowed(v12, v73, 0, 1);
    StateMgr::setRightWBAllowed(v12, v73, 1, 1);
    v149[0] = RecogGrammar::getNewState(v142);
    HashKEV<unsigned int,unsigned int,CWIDScope>::add(v142 + 64, v149);
    v74 = v149[0];
    StateMgr::setWordPenalty(v12, v149[0], *(a2 + 4), 1);
    StateMgr::setWordAliasState(v12, v74, *(a2 + 3), 1);
    StateMgr::setLeftWBAllowed(v12, v74, 1, 1);
    StateMgr::setRightWBAllowed(v12, v74, 1, 1);
    v75 = *(v142 + 10);
    if (v75 == *(v142 + 11))
    {
      DgnPrimArray<unsigned int>::reallocElts(v142 + 32, 1, 1);
      v75 = *(v142 + 10);
    }

    *(*(v142 + 4) + 4 * v75) = v74;
    ++*(v142 + 10);
    v76 = *(v142 + 14);
    if (v76 == *(v142 + 15))
    {
      DgnPrimArray<unsigned int>::reallocElts(v142 + 48, 1, 1);
      v76 = *(v142 + 14);
    }

    *(*(v142 + 6) + 4 * v76) = v74;
    ++*(v142 + 14);
  }

  else
  {
    v73 = 0;
    v144 = 0;
    v71 = v141;
    v70 = v142;
    v72 = v135;
  }

  v77 = *v170;
  v78 = *(v70 + 10);
  if (v78 == *(v70 + 11))
  {
    DgnPrimArray<unsigned int>::reallocElts(v70 + 32, 1, 1);
    v78 = *(v70 + 10);
  }

  *(*(v70 + 4) + 4 * v78) = v77;
  ++*(v70 + 10);
  BitArray::BitArray(v149, v71);
  BitArray::BitArray(v148, v71);
  if ((v72 & 1) == 0)
  {
    v79 = 0;
    v80 = v71 - 1;
    v81 = v71;
    while (1)
    {
      v82 = &v172[4 * v79];
      if (*(v82 + 2))
      {
        StateMgr::addStateTransition(v12, *(v170 + v79), v82, 1, 0, 0);
        v83 = v172;
        v84 = &v172[4 * v79];
        if (*(v84 + 2))
        {
          break;
        }
      }

LABEL_124:
      v71 = v141;
      v70 = v142;
      if (v138)
      {
        if (!v79)
        {
          LODWORD(v151) = 0;
          if (HIDWORD(v151))
          {
            v93 = 0;
          }

          else
          {
            DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
            v93 = v151;
          }

          *(*v150 + 4 * v93) = v144;
          LODWORD(v151) = v151 + 1;
          StateMgr::addStateTransition(v12, *v170, v150, 1, 0, 0);
          LODWORD(v151) = 0;
          v94 = *v168;
          if (HIDWORD(v151))
          {
            v95 = 0;
          }

          else
          {
            DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
            v95 = v151;
          }

          v96 = *v150;
          *(*v150 + 4 * v95) = v94;
          v97 = v151 + 1;
          LODWORD(v151) = v151 + 1;
          v98 = v73;
          if (v141 != 1)
          {
            v98 = *(v166 + 1);
          }

          if (v97 == HIDWORD(v151))
          {
            DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
            v97 = v151;
            v96 = *v150;
          }

          *(v96 + 4 * v97) = v98;
          LODWORD(v151) = v151 + 1;
          StateMgr::addStateTransition(v12, v144, v150, 1, 0, 0);
          if (v141 != 1)
          {
            StateMgr::addStateTransition(v12, *v168, v150, 1, 0, 0);
          }
        }

        if (v79 == v80)
        {
          LODWORD(v151) = 0;
          v99 = *(v168 + v80);
          if (HIDWORD(v151))
          {
            v100 = 0;
          }

          else
          {
            DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
            v100 = v151;
          }

          v101 = *v150;
          *(*v150 + 4 * v100) = v99;
          v102 = v151 + 1;
          LODWORD(v151) = v102;
          if (v102 == HIDWORD(v151))
          {
            DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
            v102 = v151;
            v101 = *v150;
          }

          *(v101 + 4 * v102) = v73;
          LODWORD(v151) = v151 + 1;
          StateMgr::addStateTransition(v12, *(v168 + v80), v150, 1, 0, 0);
          v103 = *(v142 + 14);
          if (v103 == *(v142 + 15))
          {
            DgnPrimArray<unsigned int>::reallocElts(v142 + 48, 1, 1);
            v103 = *(v142 + 14);
          }

          *(*(v142 + 6) + 4 * v103) = v73;
          ++*(v142 + 14);
          if (v141 != 1)
          {
            StateMgr::addStateTransition(v12, *(v170 + v80), v150, 1, 0, 0);
            StateMgr::addStateTransition(v12, *(v166 + v80), &v172[4 * v80], 1, 0, 0);
            LODWORD(v151) = 0;
            if (HIDWORD(v151))
            {
              v104 = 0;
            }

            else
            {
              DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
              v104 = v151;
            }

            *(*v150 + 4 * v104) = v73;
            LODWORD(v151) = v151 + 1;
            StateMgr::addStateTransition(v12, *(v166 + v80), v150, 1, 0, 0);
          }
        }

        if (v79 && v79 < v80)
        {
          LODWORD(v151) = 0;
          v105 = *(v168 + v79);
          if (HIDWORD(v151))
          {
            v106 = 0;
          }

          else
          {
            DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
            v106 = v151;
          }

          *(*v150 + 4 * v106) = v105;
          LODWORD(v151) = v151 + 1;
          StateMgr::addStateTransition(v12, *(v170 + v79), v150, 1, 0, 0);
          v107 = *(v166 + v79 + 1);
          v108 = v151;
          if (v151 == HIDWORD(v151))
          {
            DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
            v108 = v151;
          }

          *(*v150 + 4 * v108) = v107;
          LODWORD(v151) = v151 + 1;
          StateMgr::addStateTransition(v12, *(v168 + v79), v150, 1, 0, 0);
          StateMgr::addStateTransition(v12, *(v166 + v79), &v172[4 * v79], 1, 0, 0);
          LODWORD(v151) = 0;
          v109 = v166;
          v110 = *(v166 + v79 + 1);
          if (HIDWORD(v151))
          {
            v111 = 0;
          }

          else
          {
            DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
            v111 = v151;
            v109 = v166;
          }

          *(*v150 + 4 * v111) = v110;
          LODWORD(v151) = v151 + 1;
          StateMgr::addStateTransition(v12, *(v109 + v79), v150, 1, 0, 0);
        }
      }

      if (++v79 == v81)
      {
        goto LABEL_163;
      }
    }

    v85 = 0;
    while (1)
    {
      v86 = *(*(v163[0] + 2 * v79) + 2 * v85);
      if (v141 <= v86)
      {
        v89 = *(*v84 + 4 * v85);
        v90 = v142;
        v91 = *(v142 + 14);
        if (v91 == *(v142 + 15))
        {
          DgnPrimArray<unsigned int>::reallocElts(v142 + 48, 1, 1);
          v90 = v142;
          v91 = *(v142 + 14);
        }

        *(*(v90 + 6) + 4 * v91) = v89;
        ++*(v90 + 14);
      }

      else
      {
        LODWORD(v151) = 0;
        v87 = *(v170 + v86);
        if (HIDWORD(v151))
        {
          v88 = 0;
        }

        else
        {
          DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
          v88 = v151;
          v83 = v172;
        }

        *(*v150 + 4 * v88) = v87;
        LODWORD(v151) = v151 + 1;
        StateMgr::addStateTransition(v12, *(*&v83[4 * v79] + 4 * v85), v150, 1, 0, 0);
      }

      if (*(*(v164 + 2 * v79) + v85) != 1)
      {
        goto LABEL_123;
      }

      if (v141 == v86)
      {
        break;
      }

      if (!v79)
      {
        v92 = (*v149 + ((v86 >> 3) & 0x1FFC));
        goto LABEL_122;
      }

      StateMgr::setSkipAllowed(v12, *(*&v172[4 * v79] + 4 * v85), 1, 1);
LABEL_123:
      ++v85;
      v83 = v172;
      v84 = &v172[4 * v79];
      if (v85 >= *(v84 + 2))
      {
        goto LABEL_124;
      }
    }

    v92 = (v148[0] + 4 * (v79 >> 5));
    LOBYTE(v86) = v79;
LABEL_122:
    *v92 |= 1 << v86;
    goto LABEL_123;
  }

LABEL_163:
  if (v71 >= 2)
  {
    for (i = 1; i != v71; ++i)
    {
      if ((*(*v149 + 4 * (i >> 5)) >> i))
      {
        LODWORD(v151) = 0;
        v146 = 0;
        v147 = 0;
        v176[0] = 0;
        v113 = realloc_array(0, v176, 4uLL, 0, 0, 1);
        v146 = v176[0];
        LODWORD(v147) = 1;
        HIDWORD(v147) = v113 >> 2;
        if (v172[4 * i + 2])
        {
          v114 = 0;
          do
          {
            v115 = *(*(v163[0] + 2 * i) + 2 * v114);
            if (*(*(v164 + 2 * i) + v114) == 1 && v71 > v115)
            {
              *(*v149 + ((v115 >> 3) & 0x1FFC)) |= 1 << v115;
            }

            LODWORD(v176[0]) = RecogGrammar::getNewState(v70);
            HashKEV<unsigned int,unsigned int,CWIDScope>::add(v70 + 64, v176);
            v117 = v176[0];
            StateMgr::setWordAliasState(v12, v176[0], *(*&v172[4 * i] + 4 * v114), 1);
            StateMgr::setLeftWBAllowed(v12, v117, 1, 1);
            if (v71 <= v115)
            {
              StateMgr::setRightWBAllowed(v12, v117, 1, 1);
              v118 = *(v70 + 14);
              if (v118 == *(v70 + 15))
              {
                DgnPrimArray<unsigned int>::reallocElts(v70 + 48, 1, 1);
                v118 = *(v70 + 14);
              }

              *(*(v70 + 6) + 4 * v118) = v117;
              ++*(v70 + 14);
            }

            else
            {
              StateMgr::setRightWBAllowed(v12, v117, 0, 1);
              *v146 = *(v170 + v115);
              StateMgr::addStateTransition(v12, v117, &v146, 1, 0, 0);
            }

            v119 = v151;
            if (v151 == HIDWORD(v151))
            {
              DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
              v119 = v151;
            }

            *(*v150 + 4 * v119) = v117;
            LODWORD(v151) = v151 + 1;
            ++v114;
          }

          while (v114 < v172[4 * i + 2]);
        }

        StateMgr::addStateTransition(v12, *v170, v150, 1, 0, 0);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v146);
      }
    }
  }

  v120 = v71 - 1;
  if (v71 != 1)
  {
    do
    {
      if ((*(v148[0] + 4 * (v120 >> 5)) >> v120))
      {
        LODWORD(v151) = 0;
        v146 = 0;
        v147 = 0;
        v176[0] = 0;
        v121 = realloc_array(0, v176, 4uLL, 0, 0, 1);
        v146 = v176[0];
        LODWORD(v147) = 1;
        HIDWORD(v147) = v121 >> 2;
        v122 = v162[0] + 16 * v120;
        if (*(v122 + 8))
        {
          v123 = 0;
          while (1)
          {
            v124 = *(*v122 + 2 * v123);
            v125 = *(*(v161[0] + 16 * v120) + 2 * v123);
            if (*(*(v164 + 2 * v124) + v125) == 1)
            {
              *(v148[0] + ((v124 >> 3) & 0x1FFC)) |= 1 << v124;
            }

            LODWORD(v176[0]) = RecogGrammar::getNewState(v70);
            HashKEV<unsigned int,unsigned int,CWIDScope>::add(v70 + 64, v176);
            v126 = v176[0];
            v127 = *(*&v172[4 * v124] + 4 * v125);
            StateMgr::setWordAliasState(v12, v176[0], v127, 1);
            StateMgr::setRightWBAllowed(v12, v126, 1, 1);
            StateMgr::setLeftWBAllowed(v12, v126, v124 == 0, 1);
            v128 = *(v70 + 14);
            if (v128 == *(v70 + 15))
            {
              DgnPrimArray<unsigned int>::reallocElts(v70 + 48, 1, 1);
              v128 = *(v70 + 14);
            }

            *(*(v70 + 6) + 4 * v128) = v126;
            ++*(v70 + 14);
            *v146 = v126;
            StateMgr::addStateTransition(v12, *(v170 + v124), &v146, 1, 0, 0);
            if (v124)
            {
              if (v138)
              {
                break;
              }
            }

            if (v124)
            {
              goto LABEL_196;
            }

LABEL_202:
            ++v123;
            v122 = v162[0] + 16 * v120;
            if (v123 >= *(v122 + 8))
            {
              goto LABEL_203;
            }
          }

          StateMgr::addStateTransition(v12, *(v166 + v124), &v146, 1, 0, 0);
LABEL_196:
          if ((*(*v149 + ((v124 >> 3) & 0x1FFC)) >> v124))
          {
            LODWORD(v176[0]) = RecogGrammar::getNewState(v70);
            HashKEV<unsigned int,unsigned int,CWIDScope>::add(v70 + 64, v176);
            v129 = v176[0];
            StateMgr::setWordAliasState(v12, v176[0], v127, 1);
            StateMgr::setRightWBAllowed(v12, v129, 1, 1);
            StateMgr::setLeftWBAllowed(v12, v129, 1, 1);
            v130 = *(v70 + 14);
            if (v130 == *(v70 + 15))
            {
              DgnPrimArray<unsigned int>::reallocElts(v70 + 48, 1, 1);
              v130 = *(v70 + 14);
            }

            *(*(v70 + 6) + 4 * v130) = v129;
            ++*(v70 + 14);
            v131 = v151;
            if (v151 == HIDWORD(v151))
            {
              DgnPrimArray<unsigned int>::reallocElts(v150, 1, 1);
              v131 = v151;
            }

            *(*v150 + 4 * v131) = v129;
            LODWORD(v151) = v151 + 1;
          }

          goto LABEL_202;
        }

LABEL_203:
        if (v151)
        {
          StateMgr::addStateTransition(v12, *v170, v150, 1, 0, 0);
        }

        DgnPrimArray<unsigned int>::~DgnPrimArray(&v146);
      }

      --v120;
    }

    while (v120);
  }

  if (v138 & 1) != 0 && (*v148[0])
  {
    v132 = *v170;
    v133 = *(v70 + 14);
    if (v133 == *(v70 + 15))
    {
      DgnPrimArray<unsigned int>::reallocElts(v70 + 48, 1, 1);
      v133 = *(v70 + 14);
    }

    *(*(v70 + 6) + 4 * v133) = v132;
    ++*(v70 + 14);
  }

  BitArray::~BitArray(v148);
  BitArray::~BitArray(v149);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v150);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v154);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v156);
  DgnString::~DgnString(&v158);
  DgnString::~DgnString(v160);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v161);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v162);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v163);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v164);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v166);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v170);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v172);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v174);
}

void sub_262697A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  BitArray::~BitArray(&a23);
  BitArray::~BitArray(&a25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a29);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a31);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a33);
  DgnString::~DgnString(&a35);
  DgnString::~DgnString(&a37);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v38 - 224);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v38 - 208);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v38 - 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v38 - 176);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v38 - 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v38 - 144);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v38 - 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v38 - 112);
  _Unwind_Resume(a1);
}

double RecogGrammar::newSequenceRecogGrammar(RecogGrammar *this)
{
  v1 = this;
  v2 = MemChunkAlloc(0x50uLL, 0);
  result = 0.0;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = v1;
  *(v2 + 10) = 0;
  v2[8] = 0;
  v2[9] = 0;
  *v2 = &unk_287525AA8;
  return result;
}

void RecogGrammar::~RecogGrammar(RecogGrammar *this)
{
  *this = &unk_287528BC8;
  v2 = this + 16;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
}

{
  RecogGrammar::~RecogGrammar(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t RecogGrammar::getNewState(RecogGrammar *this)
{
  v2 = StateMgr::newState(*(*(*(ModelMgr::smpModelMgr + 264) + 8 * *(this + 4)) + 56), 0);
  v3 = *(this + 6);
  if (v3 == *(this + 7))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 16, 1, 1);
    v3 = *(this + 6);
  }

  *(*(this + 2) + 4 * v3) = v2;
  ++*(this + 6);
  return v2;
}

uint64_t RecogGrammar::setTransitionsTo(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  if (*(a2 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*a2 + 8 * v5);
      v7 = *(v6 + 40);
      v8 = v4 + v7;
      if (v8 > HIDWORD(v17))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v16, v8 - HIDWORD(v17), 1);
        v7 = *(v6 + 40);
      }

      if (v7)
      {
        v9 = 0;
        v10 = *(v6 + 32);
        v11 = v16;
        do
        {
          *(v11 + 4 * (v9 + v17)) = *(v10 + 4 * v9);
          ++v9;
          v12 = *(v6 + 40);
        }

        while (v9 < v12);
      }

      else
      {
        LODWORD(v12) = 0;
      }

      v4 = v17 + v12;
      LODWORD(v17) = v17 + v12;
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }

  if (*(a1 + 56))
  {
    v13 = 0;
    v14 = ModelMgr::smpModelMgr;
    do
    {
      StateMgr::addStateTransition(*(*(*(v14 + 264) + 8 * *(a1 + 8)) + 56), *(*(a1 + 48) + 4 * v13++), &v16, 1, 0, 0);
    }

    while (v13 < *(a1 + 56));
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
}

void WordStatesRecogGrammar::WordStatesRecogGrammar(WordStatesRecogGrammar *this, __int16 a2)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *this = &unk_287525400;
  HashKEV<unsigned int,unsigned int,StateIdScope>::HashKEV(this + 64, 0, 16);
}

void WordStatesRecogGrammar::~WordStatesRecogGrammar(WordStatesRecogGrammar *this)
{
  *this = &unk_287525400;
  HashKEV<unsigned int,unsigned int,StateIdScope>::~HashKEV(this + 64);

  RecogGrammar::~RecogGrammar(this);
}

{
  *this = &unk_287525400;
  HashKEV<unsigned int,unsigned int,StateIdScope>::~HashKEV(this + 64);
  RecogGrammar::~RecogGrammar(this);

  JUMPOUT(0x26672B1B0);
}

void ContainerRecogGrammar::~ContainerRecogGrammar(ContainerRecogGrammar *this)
{
  *this = &unk_287525970;
  DgnIArray<Utterance *>::~DgnIArray(this + 64);

  RecogGrammar::~RecogGrammar(this);
}

{
  *this = &unk_287525970;
  DgnIArray<Utterance *>::~DgnIArray(this + 64);
  RecogGrammar::~RecogGrammar(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t *ContainerRecogGrammar::add(uint64_t *this, RecogGrammar *a2)
{
  v3 = this;
  v4 = *(this + 18);
  if (v4 == *(this + 19))
  {
    this = DgnPrimArray<unsigned long long>::reallocElts((this + 8), 1, 1);
    v4 = *(v3 + 72);
  }

  *(*(v3 + 64) + 8 * v4) = a2;
  *(v3 + 72) = v4 + 1;
  return this;
}

void SequenceRecogGrammar::~SequenceRecogGrammar(SequenceRecogGrammar *this)
{
  *this = &unk_287525970;
  DgnIArray<Utterance *>::~DgnIArray(this + 64);

  RecogGrammar::~RecogGrammar(this);
}

{
  *this = &unk_287525970;
  DgnIArray<Utterance *>::~DgnIArray(this + 64);
  RecogGrammar::~RecogGrammar(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t SequenceRecogGrammar::hasInStateSet(SequenceRecogGrammar *this, const unsigned int *a2)
{
  if (!*(this + 18))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = *(*(this + 8) + 8 * v4);
    result = (*(*v5 + 32))(v5, a2);
    if (result)
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(this + 18));
  return result;
}

uint64_t SequenceRecogGrammar::finalize(uint64_t this)
{
  v1 = this;
  if ((*(this + 10) & 1) == 0 && *(this + 72))
  {
    (*(***(this + 64) + 24))(**(this + 64));
    DgnPrimArray<int>::copyArraySlice((v1 + 32), (**(v1 + 64) + 32), 0, *(**(v1 + 64) + 40));
    v10 = 0;
    v2 = realloc_array(0, &v10, 8uLL, 0, 0, 1);
    v3 = 0;
    v7 = v10;
    v8 = 1;
    v9 = v2 >> 3;
    while (1)
    {
      v4 = (*(v1 + 72) - 1);
      if (v3 >= v4)
      {
        break;
      }

      *v7 = *(*(v1 + 64) + 8 * v3 + 8);
      (*(**v7 + 24))();
      v5 = *(*(v1 + 64) + 8 * v3++);
      RecogGrammar::setTransitionsTo(v5, &v7);
    }

    v6 = *(*(v1 + 64) + 8 * v4);
    DgnPrimArray<int>::copyArraySlice((v1 + 48), (v6 + 48), 0, *(v6 + 56));
    this = DgnIArray<Utterance *>::~DgnIArray(&v7);
  }

  *(v1 + 10) = 1;
  return this;
}

void sub_262698360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

uint64_t **HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (-1640531527 * *a2) >> -v3;
  }

  else
  {
    v4 = 0;
  }

  result = (*(a1 + 80) + 8 * v4);
  v6 = *result;
  if (*result)
  {
    do
    {
      v7 = v6;
      if (*(v6 + 2) == v2 && *(v6 + 3) == v2)
      {
        break;
      }

      v6 = *v6;
      result = v7;
    }

    while (*v7);
  }

  return result;
}

void *std::__tree<SDhVoc_fake **>::__emplace_unique_key_args<SDhVoc_fake **,SDhVoc_fake ** const&>(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t TLocaleInfo::composeCharacter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 768)
  {
LABEL_2:
    if (a3 == 3634 && a2 == 3661)
    {
      return 3635;
    }

    else
    {
      return 0;
    }
  }

  if (a3 >= 0x370)
  {
    if (a3 > 0xE30)
    {
      if (a3 > 0xE4E)
      {
        goto LABEL_2;
      }

      if (a3 > 0xE33)
      {
        if (a3 - 3655 >= 0xFFFFFFF4)
        {
          goto LABEL_2;
        }
      }

      else if (a3 != 3633)
      {
        goto LABEL_2;
      }

      return 0;
    }

    if (a3 == 1600)
    {
      return a2;
    }

    if (a3 < 0x64B)
    {
      goto LABEL_2;
    }

    if (a3 < 0x660 || (a3 & 0xFFB) == 0x670)
    {
      if (a3 != 2364)
      {
        if (a3 >= 0x660 && (a3 & 0x7FB) != 0x670)
        {
          return 0;
        }

        return a2;
      }

      v8 = *(a1 + 72) < 4uLL;
    }

    else
    {
      if (a3 != 2364 || *(a1 + 72) <= 3uLL)
      {
        goto LABEL_2;
      }

      v8 = 0;
    }

    result = 0;
    if ((a2 - 2356) >= 0xFFFFFFE1 && !v8)
    {
      return s_szTableNuktaComposition0915to0933[(a2 - 2325)];
    }

    return result;
  }

  if (a3 > 0x345)
  {
    return 0;
  }

  v5 = *(&s_szTableCharacterComposition0300to0345 + a3 - 768);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5 - 1;
  if (*v5 < 1)
  {
    return 0;
  }

  if (*v5 == 1)
  {
    v7 = 0;
LABEL_36:
    if (v5[v7 | 1] == a2)
    {
      return v5[v7 + 2];
    }

    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = (v9 + v6) | 1;
    v11 = v5[v10];
    if (v11 == a2)
    {
      return v5[v10 + 1];
    }

    v12 = (v9 + v6) >> 1;
    if (v11 < a2)
    {
      v9 = v12 + 1;
    }

    else
    {
      v6 = v12 - 1;
    }

    if (v9 >= v6)
    {
      v7 = 2 * v9;
      goto LABEL_36;
    }
  }
}

uint64_t TLocaleInfo::splitDiacritic(uint64_t a1, unsigned int a2)
{
  if (a2 <= 191)
  {
    if (a2 == 105 && (*(a1 + 80) & 1) != 0)
    {
      return 0x30700000131;
    }

    return a2;
  }

  if (a2 <= 0x233)
  {
    return s_szTableBaseCharacter00C0to0233[a2 - 192] | (s_szTableDiacritic00C0to0233[a2 - 192] << 32);
  }

  v3 = a2 - 902;
  if (a2 < 0x386)
  {
    return a2;
  }

  if (a2 <= 0x3D4)
  {
    v4 = &s_szTableBaseCharacter0386to03D4;
    v5 = &s_szTableDiacritic0386to03D4;
    return v4[v3] | (v5[v3] << 32);
  }

  v3 = a2 - 1024;
  if (a2 < 0x400)
  {
    return a2;
  }

  if (a2 <= 0x4F9)
  {
    v4 = &s_szTableBaseCharacter0400to04F9;
    v5 = &s_szTableDiacritic0400to04F9;
    return v4[v3] | (v5[v3] << 32);
  }

  v6 = a2 - 2345;
  if (a2 < 0x929)
  {
    return a2;
  }

  if (a2 > 0x95F)
  {
    v3 = a2 - 7680;
    if (a2 - 7680 <= 0x1FC)
    {
      v4 = &s_szTableBaseCharacter1E00to1FFC;
      v5 = &s_szTableDiacritic1E00to1FFC;
      return v4[v3] | (v5[v3] << 32);
    }

    return a2;
  }

  if (a2 < 0x958)
  {
    if (v6 <= 0xB && ((1 << v6) & 0x901) != 0)
    {
      v7 = a2 - 1;
      return v7 | 0x93C00000000;
    }

    return a2;
  }

  v7 = s_szTableNuktaBaseCharacter0958to095F[a2 - 2392];
  return v7 | 0x93C00000000;
}

unint64_t TLocaleInfo::decomposeCharacter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a3 + 16);
  v16 = a2;
  TBuffer<wchar_t>::insert(a3, v6, &v16, 1uLL);
  result = TLocaleInfo::splitDiacritic(a1, v4);
  if (v4)
  {
    v8 = HIDWORD(result);
    if (HIDWORD(result))
    {
      if (HIDWORD(result) != v4)
      {
        LODWORD(v9) = 0;
        do
        {
          v10 = v4;
          v4 = result;
          v17 = v8;
          TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v17, 1uLL);
          result = TLocaleInfo::splitDiacritic(a1, v4);
          v9 = (v9 + 1);
          if (v10 == v4)
          {
            break;
          }

          v8 = HIDWORD(result);
          if (!HIDWORD(result))
          {
            break;
          }
        }

        while (v4 != HIDWORD(result));
        if (v9)
        {
          v11 = *a3;
          if (v9 != 1)
          {
            v12 = &v11[v6 + 1];
            v13 = v9 >> 1;
            v14 = &v11[v6 + v9];
            do
            {
              v15 = *v12;
              *v12++ = *v14;
              *v14-- = v15;
              --v13;
            }

            while (v13);
          }

          v11[v6] = v4;
        }
      }
    }
  }

  return result;
}

uint64_t TLocaleInfo::removeDiacritics(uint64_t a1, uint64_t a2)
{
  do
  {
    v3 = a2;
    a2 = TLocaleInfo::splitDiacritic(a1, a2);
  }

  while (v3 != a2);
  return v3;
}

const void **TLocaleInfo::katakanaToHiragana(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = a2 + 1;
    do
    {
      if ((v3 - 12449) < 0x56)
      {
        v3 -= 96;
      }

      v8 = v3;
      result = TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v8, 1uLL);
      v7 = *v5++;
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

void TLocaleInfo::katakanaToRomaji(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *a2;
  if (*a2 == 12540)
  {
    do
    {
      v27 = 45;
      TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v27, 1uLL);
      v6 = v4[1];
      ++v4;
      v5 = v6;
    }

    while (v6 == 12540);
  }

  for (; v5; v4 = v11 + 1)
  {
    if ((v5 - 12535) > 0xFFFFFFA9)
    {
      v12 = *(&s_szTableKatakanaToRomaji + (v5 - 12449));
      v11 = v4 + 1;
      v13 = v4[1];
      if (v13 == 12540)
      {
        v14 = 0;
          ;
        }

        TBuffer<wchar_t>::insert(a3, *(a3 + 16), *(&s_szTableKatakanaToRomaji + (v5 - 12449)), v14 - 1);
        v16 = *(a3 + 16);
        v17 = *(*a3 + 4 * v16 - 4);
        v27 = v17;
        TBuffer<wchar_t>::insert(a3, v16, &v27, 1uLL);
        if (v4[2] != 12540)
        {
          goto LABEL_31;
        }

        v18 = v4 + 3;
        do
        {
          v27 = v17;
          TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v27, 1uLL);
          v19 = *v18++;
        }

        while (v19 == 12540);
        goto LABEL_30;
      }

      if ((v5 - 12461) <= 0x3D && ((1 << (v5 + 83)) & 0x200400E040100C03) != 0)
      {
        if ((v13 - 12515) <= 4 && ((1 << (v13 + 29)) & 0x15) != 0)
        {
          v20 = wcslen(*(&s_szTableKatakanaToRomaji + (v5 - 12449)));
          TBuffer<wchar_t>::insert(a3, *(a3 + 16), v12, v20 - 1);
          if (v5 != 12472 && v20 == 2)
          {
            v27 = 121;
            TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v27, 1uLL);
          }

          if (v13 == 12517)
          {
            v21 = 117;
          }

          else
          {
            v21 = 111;
          }

          if (v13 == 12515)
          {
            v22 = 97;
          }

          else
          {
            v22 = v21;
          }

          v27 = v22;
          TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v27, 1uLL);
          if (v4[2] != 12540)
          {
            goto LABEL_31;
          }

          v18 = v4 + 3;
          do
          {
            v27 = v22;
            TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v27, 1uLL);
            v23 = *v18++;
          }

          while (v23 == 12540);
LABEL_30:
          v11 = v18 - 2;
          goto LABEL_31;
        }

        v24 = 0;
        v7 = *(a3 + 16);
          ;
        }
      }

      else
      {
        v24 = 0;
        v7 = *(a3 + 16);
          ;
        }
      }

      v10 = v24 - 1;
      v9 = a3;
      v8 = *(&s_szTableKatakanaToRomaji + (v5 - 12449));
    }

    else
    {
      v27 = v5;
      v7 = *(a3 + 16);
      v8 = &v27;
      v9 = a3;
      v10 = 1;
    }

    TBuffer<wchar_t>::insert(v9, v7, v8, v10);
    v11 = v4;
LABEL_31:
    v5 = v11[1];
  }
}

uint64_t TLocaleInfo::isKtivMenukad(uint64_t a1, unsigned int *a2)
{
  while (1)
  {
    v2 = *a2;
    if (*a2 <= 8202)
    {
      if (v2 == 32 || v2 == 160)
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == 8203)
      {
        goto LABEL_21;
      }

      if (v2 == 12288 || v2 == 65279)
      {
        goto LABEL_21;
      }
    }

    if (v2 < 1425)
    {
      return 0;
    }

    if (v2 < 0x5F5)
    {
      break;
    }

    if (v2 - 64285 >= 0x33)
    {
      return 0;
    }

    result = 1;
    if (v2 >> 5 < 0x7D9 || v2 - 64298 < 0x25)
    {
      return result;
    }

LABEL_21:
    ++a2;
  }

  if (v2 >= 0x5AF)
  {
    if (v2 <= 0x5C7)
    {
      result = 1;
      v5 = v2 - 1470;
      if (v5 > 8 || ((1 << v5) & 0x125) == 0)
      {
        return result;
      }
    }

    goto LABEL_21;
  }

  return 1;
}

const void **TLocaleInfo::ktivMenukadToKtivMaleh(double a1, int32x4_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v8 = 1;
  v9.i64[1] = 0xFB390000FB30;
  while (1)
  {
    v10 = *a4;
    if (*a4 <= 8202)
    {
      if (v10 == 32 || v10 == 160)
      {
        goto LABEL_11;
      }

      if (!v10)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v11 = v10 == 8203 || v10 == 65279;
      if (v11 || v10 == 12288)
      {
LABEL_11:
        v22 = *a4;
        v8 = 1;
        TBuffer<wchar_t>::insert(a5, *(a5 + 16), &v22, 1uLL);
        goto LABEL_12;
      }
    }

    if (v10 < 1425)
    {
      goto LABEL_84;
    }

    if (v10 >= 0x5F5)
    {
      break;
    }

    if (v10 >= 0x5AF)
    {
      if (v10 > 0x5C7)
      {
        goto LABEL_23;
      }

      if ((*a4 & 0x7FE) == 0x5BA)
      {
        v12 = *(a5 + 16);
        if (v12 <= v7 || *(*a5 + 4 * v12 - 4) == 1493)
        {
          goto LABEL_80;
        }

LABEL_54:
        v22 = 1493;
LABEL_79:
        TBuffer<wchar_t>::insert(a5, v12, &v22, 1uLL);
        goto LABEL_80;
      }

      v8 = 0;
      if ((v10 - 1460) > 0x12)
      {
        goto LABEL_12;
      }

      if (((1 << (v10 + 76)) & 0x49400) != 0)
      {
        goto LABEL_58;
      }

      if (v10 != 1460)
      {
        goto LABEL_12;
      }

      v12 = *(a5 + 16);
      if (v12 > v7 && *(*a5 + 4 * v12 - 4) != 1497)
      {
        v18 = a4[1];
        if (!v18 || v18 != 1456 && a4[2] != 1456)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_80:
    v8 = 0;
LABEL_12:
    ++a4;
  }

  if ((v10 - 64285) < 0x33)
  {
LABEL_23:
    if (v10 > 64284)
    {
      if (v10 <= 64286)
      {
        if (v10 != 64285)
        {
          goto LABEL_80;
        }

        goto LABEL_42;
      }

      if (v10 == 64287)
      {
        goto LABEL_55;
      }

      if (v10 == 64313)
      {
LABEL_42:
        v12 = *(a5 + 16);
        if (!(v8 & 1 | (v12 <= v7)))
        {
          v13 = a4[1];
          *v9.i8 = vand_s8(vdup_n_s32(v13), 0xFFFFFFFDFFFFFFFBLL);
          a2.i32[0] = v13;
          v14 = vzip1q_s32(a2, v9);
          v15 = vextq_s8(vextq_s8(v14, v14, 8uLL), v14, 4uLL);
          v14.i32[2] = v14.i32[0];
          if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(v14, xmmword_262882470), vceqq_s32(v15, xmmword_262882480)))) & 1) == 0)
          {
            v16 = *(*a5 + 4 * v12 - 4);
            if (v16 != 1493 && (v16 & 0xFFFFFFFB) != 0x5D0 && v16 != 1497 && (v16 & 0xFFFFFFFD) != 0xFB21 && v13 - 64304 <= 0xFFFFFFFD)
            {
              v22 = 1497;
              TBuffer<wchar_t>::insert(a5, v12, &v22, 1uLL);
              v12 = *(a5 + 16);
            }
          }
        }

LABEL_50:
        v22 = 1497;
        goto LABEL_79;
      }

      if (v10 != 64309)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v10 > 1519)
      {
        if (v10 == 1520)
        {
LABEL_76:
          v17 = 1493;
          v22 = 1493;
          TBuffer<wchar_t>::insert(a5, *(a5 + 16), &v22, 1uLL);
          goto LABEL_77;
        }

        if (v10 == 1521)
        {
          v22 = 1493;
          TBuffer<wchar_t>::insert(a5, *(a5 + 16), &v22, 1uLL);
          v22 = 1497;
          goto LABEL_78;
        }

        if (v10 != 1522)
        {
LABEL_39:
          if (v10 < 0xFB2A)
          {
LABEL_58:
            v22 = v10;
LABEL_78:
            v12 = *(a5 + 16);
            goto LABEL_79;
          }

          if (v10 <= 0xFB2D)
          {
            v10 = 1513;
            goto LABEL_58;
          }

          if (v10 <= 0xFB30)
          {
            v10 = 1488;
            goto LABEL_58;
          }

          if (v10 <= 0xFB4A)
          {
            v10 -= 62816;
            goto LABEL_58;
          }

          if (v10 > 64332)
          {
            if (v10 == 64333)
            {
              v10 = 1499;
            }

            else if (v10 == 64334)
            {
              v10 = 1492;
            }

            else
            {
              v22 = 1488;
              TBuffer<wchar_t>::insert(a5, *(a5 + 16), &v22, 1uLL);
              v10 = 1500;
            }

            goto LABEL_58;
          }

          if (v10 != 64331)
          {
            v10 = 1489;
            goto LABEL_58;
          }

          goto LABEL_76;
        }

LABEL_55:
        v17 = 1497;
        v22 = 1497;
        TBuffer<wchar_t>::insert(a5, *(a5 + 16), &v22, 1uLL);
LABEL_77:
        v22 = v17;
        goto LABEL_78;
      }

      if (v10 != 1493)
      {
        if (v10 != 1497)
        {
          goto LABEL_39;
        }

        goto LABEL_42;
      }
    }

    v12 = *(a5 + 16);
    if (!(v8 & 1 | (v12 <= v7)) && *(*a5 + 4 * v12 - 4) != 1493)
    {
      v22 = 1493;
      TBuffer<wchar_t>::insert(a5, v12, &v22, 1uLL);
      v12 = *(a5 + 16);
    }

    goto LABEL_54;
  }

LABEL_84:
  v19 = 0;
    ;
  }

  return TBuffer<wchar_t>::insert(a5, *(a5 + 16), a4, v19 - 1);
}

uint64_t TLocaleInfo::getDigitExtended(uint64_t a1, unsigned int a2)
{
  if (a2 >= 65296)
  {
    v2 = a2 - 65296;
    v3 = a2 >= 0xFF1A;
    goto LABEL_3;
  }

  result = a2 - 1632;
  if (a2 < 1632)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x669)
  {
    return result;
  }

  result = a2 - 1776;
  if (a2 < 0x6F0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x6F9)
  {
    return result;
  }

  result = a2 - 1984;
  if (a2 < 0x7C0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x7C9)
  {
    return result;
  }

  result = a2 - 2406;
  if (a2 < 0x966)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x96F)
  {
    return result;
  }

  result = a2 - 2534;
  if (a2 < 0x9E6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x9EF)
  {
    return result;
  }

  result = a2 - 2662;
  if (a2 < 0xA66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA6F)
  {
    return result;
  }

  result = a2 - 2790;
  if (a2 < 0xAE6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xAEF)
  {
    return result;
  }

  result = a2 - 2918;
  if (a2 < 0xB66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xB6F)
  {
    return result;
  }

  result = a2 - 3046;
  if (a2 < 0xBE6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xBEF)
  {
    return result;
  }

  result = a2 - 3174;
  if (a2 < 0xC66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xC6F)
  {
    return result;
  }

  result = a2 - 3302;
  if (a2 < 0xCE6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xCEF)
  {
    return result;
  }

  result = a2 - 3430;
  if (a2 < 0xD66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xD6F)
  {
    return result;
  }

  result = a2 - 3664;
  if (a2 < 0xE50)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xE59)
  {
    return result;
  }

  result = a2 - 3792;
  if (a2 < 0xED0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xED9)
  {
    return result;
  }

  result = a2 - 3872;
  if (a2 < 0xF20)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xF29)
  {
    return result;
  }

  if (a2 >> 6 < 0x41)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2 >> 1;
  if (a2 >> 1 <= 0x824)
  {
    v6 = -4160;
    return a2 + v6;
  }

  v7 = a2 >> 4;
  if (a2 >> 4 < 0x109)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0x84C)
  {
    v6 = -4240;
    return a2 + v6;
  }

  if (a2 < 0x1369)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0x9B8)
  {
    v6 = -4968;
    return a2 + v6;
  }

  if (a2 >> 5 < 0xBF)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xBF4)
  {
    v6 = -6112;
    return a2 + v6;
  }

  if (v7 < 0x181)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xC0C)
  {
    v6 = -6160;
    return a2 + v6;
  }

  if (v5 < 0xCA3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 <= 0x194)
  {
    v6 = -6470;
    return a2 + v6;
  }

  if (v7 < 0x19D)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xCEC)
  {
    v6 = -6608;
    return a2 + v6;
  }

  if (a2 == 6618)
  {
    return 1;
  }

  if (a2 >> 7 < 0x35)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xD44)
  {
    v6 = -6784;
    return a2 + v6;
  }

  if (v7 < 0x1A9)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xD4C)
  {
    v6 = -6800;
    return a2 + v6;
  }

  if (v7 < 0x1B5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xDAC)
  {
    v6 = -6992;
    return a2 + v6;
  }

  if (v7 < 0x1BB)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xDDC)
  {
    v6 = -7088;
    return a2 + v6;
  }

  if (a2 >> 6 < 0x71)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xE24)
  {
    v6 = -7232;
    return a2 + v6;
  }

  if (v7 < 0x1C5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xE2C)
  {
    v6 = -7248;
    return a2 + v6;
  }

  if (a2 >> 5 < 0x531)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA629)
  {
    v6 = -42528;
    return a2 + v6;
  }

  if (v7 < 0xA8D)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA8D9)
  {
    v6 = -43216;
    return a2 + v6;
  }

  if (a2 >> 8 < 0xA9)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA909)
  {
    v6 = -43264;
    return a2 + v6;
  }

  if (v7 < 0xA9D)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA9D9)
  {
    v6 = -43472;
    return a2 + v6;
  }

  if (v7 < 0xAA5)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xAA59)
  {
    v6 = -43600;
    return a2 + v6;
  }

  v2 = a2 - 44016;
  v3 = a2 - 44016 >= 0xA;
LABEL_3:
  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2;
  }
}

uint64_t TLocaleInfo::stringToUInt(uint64_t DigitExtended, unsigned int *a2, unsigned int **a3)
{
  v4 = a2;
  for (i = a2 + 1; ; ++i)
  {
    v6 = *(i - 1);
    if (v6 > 159)
    {
      break;
    }

    if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    ;
  }

  if (v6 >= 12288)
  {
    if (v6 != 65279 && v6 != 12288)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v6 == 160 || v6 == 8203)
  {
    goto LABEL_17;
  }

LABEL_18:
  v9 = (v6 - 48);
  if (v6 < 48 || v6 > 0x39 && (v6 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v6), v9 = DigitExtended, DigitExtended == -1)))
  {
    v9 = 0;
  }

  else
  {
    v10 = *i;
    if (*i >= 48)
    {
      v4 = i;
      while (1)
      {
        if (v10 > 0x39)
        {
          if (v10 < 0x660)
          {
            goto LABEL_31;
          }

          DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v10);
          if (DigitExtended == -1)
          {
            goto LABEL_31;
          }
        }

        else
        {
          DigitExtended = v10 - 48;
        }

        v9 = (DigitExtended + 10 * v9);
        v11 = v4[1];
        ++v4;
        v10 = v11;
        if (v11 <= 47)
        {
          goto LABEL_31;
        }
      }
    }

    v4 = i;
  }

LABEL_31:
  *a3 = v4;
  return v9;
}

uint64_t TLocaleInfo::stringToUInt(uint64_t a1, int *a2, BOOL *a3)
{
  v10 = 0;
  LODWORD(result) = TLocaleInfo::stringToInt(a1, a2, &v10);
  v6 = v10;
  if (v10 == a2)
  {
    result = 0;
    *a3 = 1;
    return result;
  }

  while (1)
  {
    v7 = *v6;
    if (*v6 > 159)
    {
      break;
    }

    if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    ++v6;
  }

  if (v7 >= 12288)
  {
    if (v7 != 65279 && v7 != 12288)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v7 == 160 || v7 == 8203)
  {
    goto LABEL_17;
  }

LABEL_18:
  *a3 = v7 != 0;
  if (v7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t TLocaleInfo::stringToInt(uint64_t DigitExtended, signed int *a2, signed int **a3)
{
  for (i = a2 + 1; ; ++i)
  {
    v6 = *(i - 1);
    if (v6 <= 159)
    {
      break;
    }

    if (v6 >= 12288)
    {
      if (v6 != 65279 && v6 != 12288)
      {
        goto LABEL_17;
      }
    }

    else if (v6 != 160 && v6 != 8203)
    {
      goto LABEL_17;
    }

LABEL_14:
    ;
  }

  if (v6 > 0x2D)
  {
    goto LABEL_17;
  }

  if (((1 << v6) & 0x100002600) != 0)
  {
    goto LABEL_14;
  }

  if (((1 << v6) & 0x280000000000) != 0)
  {
    v8 = v6 == 45;
    v6 = *i;
    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  --i;
LABEL_18:
  v9 = v6 - 48;
  if (v6 < 48 || v6 > 0x39 && (v6 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v6), v9 = DigitExtended, DigitExtended == -1)))
  {
    result = 0;
    *a3 = a2;
  }

  else
  {
    v12 = i[1];
    v11 = i + 1;
    v10 = v12;
    if (v12 >= 48)
    {
      do
      {
        if (v10 > 0x39)
        {
          if (v10 < 0x660)
          {
            break;
          }

          DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v10);
          if (DigitExtended == -1)
          {
            break;
          }
        }

        else
        {
          DigitExtended = v10 - 48;
        }

        v9 = DigitExtended + 10 * v9;
        v13 = v11[1];
        ++v11;
        v10 = v13;
      }

      while (v13 > 47);
    }

    *a3 = v11;
    if (v8)
    {
      return -v9;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

BOOL TLocaleInfo::stringToBool(uint64_t DigitExtended, unsigned int *a2, unsigned int **a3)
{
  for (i = a2 + 1; ; ++i)
  {
    v6 = *(i - 1);
    if (v6 > 159)
    {
      break;
    }

    if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    ;
  }

  if (v6 >= 12288)
  {
    if (v6 != 65279 && v6 != 12288)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v6 == 160 || v6 == 8203)
  {
    goto LABEL_17;
  }

LABEL_18:
  *a3 = i - 1;
  v9 = v6 - 48;
  if (v6 < 48 || v6 > 0x39 && (v6 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v6), v9 = DigitExtended, DigitExtended == -1)))
  {
    v12 = wcsncasecmp(i - 1, dword_262884B3C, 4uLL);
    v13 = *a3;
    if (v12 || (TLocaleInfo::isAlpha(v12, *(v13 + 16)) & 1) != 0)
    {
      v14 = wcsncasecmp(v13, dword_262884B50, 5uLL);
      if (v14)
      {
        goto LABEL_32;
      }

      v15 = (*a3 + 5);
      if (TLocaleInfo::isAlpha(v14, *v15))
      {
        goto LABEL_32;
      }

      result = 0;
      *a3 = v15;
    }

    else
    {
      *a3 = (v13 + 16);
      return 1;
    }
  }

  else
  {
    if (v9 <= 1)
    {
      v10 = *i;
      if (*i < 48 || v10 >= 0x3A && (v10 < 0x660 || TLocaleInfo::getDigitExtended(DigitExtended, v10) == -1))
      {
        *a3 = i;
        return v9 != 0;
      }
    }

LABEL_32:
    result = 0;
    *a3 = a2;
  }

  return result;
}

uint64_t TLocaleInfo::isAlpha(uint64_t a1, signed int a2)
{
  LOBYTE(v2) = 0;
  if (BYTE1(a2) > 0x1Eu)
  {
    if (BYTE1(a2) <= 0x2Cu)
    {
      if (BYTE1(a2) == 31)
      {
        if (a2 <= 8188)
        {
          v3 = a2 - 7936;
          if (s_szTableLowercase1F00to1FFC[v3] != a2)
          {
            goto LABEL_101;
          }

          if (a2 <= 8179)
          {
            v4 = s_szTableUppercase1F00to1FF3;
            goto LABEL_7;
          }
        }

        goto LABEL_85;
      }

      if (BYTE1(a2) != 33)
      {
        if (BYTE1(a2) != 44)
        {
          return v2 & 1;
        }

        if (a2 >> 5 != 355)
        {
          v17 = a2 != 11311 && (a2 - 11264) < 0x5F;
          v18 = (a2 - 11499) < 4 || v17;
          if ((a2 - 11392) >= 0xF)
          {
            LOBYTE(v2) = v18;
          }

          else
          {
            LOBYTE(v2) = 1;
          }

          return v2 & 1;
        }

        v9 = a2 - 11360;
        if (s_szTableLowercase2C60to2C7F[a2 - 11360] != a2)
        {
          goto LABEL_101;
        }

        v10 = &s_szTableUppercase2C60to2C76;
LABEL_49:
        v2 = v10[v9];
        goto LABEL_50;
      }

      LOBYTE(v2) = 1;
      if ((a2 - 8526) <= 0x36 && ((1 << (a2 - 78)) & 0x60000000000001) != 0)
      {
        return v2 & 1;
      }

      v12 = a2 == 8498;
    }

    else
    {
      if (BYTE1(a2) <= 0xA6u)
      {
        LOBYTE(v2) = a2 < 11558;
        v5 = (a2 - 42560) < 0x2E || (a2 - 42624) < 0x18;
        if (BYTE1(a2) != 166)
        {
          v5 = 0;
        }

        v6 = BYTE1(a2) == 45;
        goto LABEL_29;
      }

      if (BYTE1(a2) == 167)
      {
        if (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_2628824A0, vaddq_s32(vdupq_n_s32(a2), xmmword_262882490)))))
        {
          goto LABEL_101;
        }

        v2 = 0xC001u >> (a2 - 125);
        if ((a2 - 42877) >= 0x10)
        {
          LOBYTE(v2) = 0;
        }

        return v2 & 1;
      }

      LOBYTE(v2) = (a2 - 65313) < 0x1A || (a2 - 65345) < 0x1A;
      v12 = BYTE1(a2) == 255;
    }

    if (!v12)
    {
      LOBYTE(v2) = 0;
    }

    return v2 & 1;
  }

  if (BYTE1(a2) > 3u)
  {
    if (BYTE1(a2) - 4 < 2)
    {
      LOBYTE(v2) = 1;
      if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_2628824C0, vaddq_s32(vdupq_n_s32(a2), xmmword_2628824B0)))) & 1) == 0)
      {
        v13 = (a2 - 1329) < 0x26 || (a2 - 1377) < 0x26;
        if (a2 == 1231)
        {
          v13 = 1;
        }

        v14 = a2 == 1216 || v13;
        if ((a2 - 1024) >= 0x60)
        {
          LOBYTE(v2) = v14;
        }

        else
        {
          LOBYTE(v2) = 1;
        }
      }

      return v2 & 1;
    }

    LOBYTE(v2) = (a2 - 4256) < 0x26;
    v8 = a2 == 7838 || a2 == 7835;
    v5 = (a2 - 7840) < 0xFFFFFFF6 || v8;
    if (BYTE1(a2) != 30)
    {
      v5 = 0;
    }

    v6 = BYTE1(a2) == 16;
LABEL_29:
    if (!v6)
    {
      LOBYTE(v2) = v5;
    }

    return v2 & 1;
  }

  if (BYTE1(a2) > 1u)
  {
    if (BYTE1(a2) == 2)
    {
      if (a2 <= 658)
      {
        v3 = a2 - 256;
        if (s_szTableUppercase0100to0292[v3] != a2)
        {
          goto LABEL_101;
        }

        if (a2 <= 591)
        {
          v4 = s_szTableLowercase0100to024F;
          goto LABEL_7;
        }
      }
    }

    else
    {
      v9 = a2 - 880;
      if (a2 >= 880)
      {
        if (s_szTableLowercase0370to03FF[v9] != a2)
        {
          goto LABEL_101;
        }

        v10 = &s_szTableUppercase0370to03FF;
        goto LABEL_49;
      }
    }

LABEL_85:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (BYTE1(a2))
  {
    v3 = a2 - 256;
    if (s_szTableLowercase0100to024F[v3] == a2)
    {
      v4 = s_szTableUppercase0100to0292;
LABEL_7:
      v2 = v4[v3];
LABEL_50:
      LOBYTE(v2) = v2 != a2;
      return v2 & 1;
    }

LABEL_101:
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  LOBYTE(v2) = (a2 & 0xFFFFFFC0) == 0xC0 && (a2 & 0xFFFFFFDF) != 215;
  if ((a2 & 0xFFFFFFDF) - 65 < 0x1A)
  {
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

uint64_t TLocaleInfo::stringToBool(uint64_t a1, unsigned int *a2, BOOL *a3)
{
  v11 = 0;
  v5 = TLocaleInfo::stringToBool(a1, a2, &v11);
  v6 = v11;
  if (v11 != a2)
  {
    while (1)
    {
      v7 = *v6;
      if (*v6 > 159)
      {
        if (v7 >= 12288)
        {
          if (v7 != 65279 && v7 != 12288)
          {
            goto LABEL_18;
          }
        }

        else if (v7 != 160 && v7 != 8203)
        {
LABEL_18:
          *a3 = v7 != 0;
          return (v7 == 0) & v5;
        }
      }

      else if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
      {
        goto LABEL_18;
      }

      ++v6;
    }
  }

  result = 0;
  *a3 = 1;
  return result;
}

uint64_t TLocaleInfo::toNarrow(uint64_t a1, uint64_t a2)
{
  if (a2 == 12288)
  {
    return 32;
  }

  result = a2;
  if (a2 >= 65281)
  {
    if (a2 > 0xFF5E)
    {
      if (a2 <= 65505)
      {
        if (a2 > 65503)
        {
          if (a2 == 65504)
          {
            return 162;
          }

          else
          {
            return 163;
          }
        }

        else if (a2 == 65375)
        {
          return 10629;
        }

        else if (a2 == 65376)
        {
          return 10630;
        }
      }

      else if (a2 <= 65507)
      {
        if (a2 == 65506)
        {
          return 172;
        }

        else
        {
          return 175;
        }
      }

      else
      {
        switch(a2)
        {
          case 0xFFE4:
            return 166;
          case 0xFFE5:
            return 165;
          case 0xFFE6:
            return 8361;
        }
      }
    }

    else
    {
      return (a2 - 65248);
    }
  }

  return result;
}

uint64_t TLocaleInfo::normalizeWidth(uint64_t a1, uint64_t a2)
{
  if ((a2 - 65377) > 0x7B)
  {
    return TLocaleInfo::toNarrow(a1, a2);
  }

  else
  {
    return s_szTableNormalizeWidthFF61toFFDC[(a2 - 65377)];
  }
}

uint64_t TLocaleInfo::toWide(uint64_t a1, uint64_t a2)
{
  result = a2;
  if ((a2 - 33) <= 0x5D)
  {
    return (a2 + 65248);
  }

  if (a2 > 10628)
  {
    if (a2 == 10630)
    {
      return 65376;
    }

    if (a2 == 10629)
    {
      return 65375;
    }
  }

  else
  {
    if (a2 == 32)
    {
      return 12288;
    }

    if (a2 == 8361)
    {
      return 65510;
    }
  }

  if (a2 - 176) >= 0xFFFFFFF2 && (a2 + 94) <= 0xDu && ((0x241Bu >> (a2 + 94)))
  {
    return dword_262888258[(a2 + 94)];
  }

  return result;
}

BOOL TLocaleInfo::isUpper(uint64_t a1, unsigned int a2)
{
  if (BYTE1(a2) > 0x1Du)
  {
    if (BYTE1(a2) <= 0x2Bu)
    {
      if (BYTE1(a2) == 30)
      {
        if (a2 >> 5 >= 0xF5)
        {
          v12 = (a2 & 1) == 0;
        }

        else
        {
          v12 = a2 == 7838;
        }

        if (a2 <= 7829)
        {
          return (a2 & 1) == 0;
        }

        else
        {
          return v12;
        }
      }

      if (BYTE1(a2) == 31)
      {
        if (a2 <= 8188)
        {
          v2 = s_szTableLowercase1F00to1FFC[a2 - 7936];
          return v2 != a2;
        }

        return 0;
      }

      v4 = a2 == 8498 || a2 == 8579;
      v5 = BYTE1(a2) == 33;
    }

    else
    {
      if (BYTE1(a2) <= 0xA6u)
      {
        if (BYTE1(a2) != 44)
        {
          v3 = a2 - 42624 <= 0x17 && (a2 & 1) == 0;
          if (a2 - 42560 <= 0x2D)
          {
            v4 = (a2 & 1) == 0;
          }

          else
          {
            v4 = v3;
          }

          v5 = BYTE1(a2) == 166;
          return v5 && v4;
        }

        if (a2 >> 5 != 355)
        {
          if (a2 - 11499 <= 3)
          {
            v13 = (a2 & 1) == 0;
          }

          else
          {
            v13 = a2 - 11264 < 0x2F;
          }

          if (a2 - 11392 <= 0xE)
          {
            return (a2 & 1) == 0;
          }

          else
          {
            return v13;
          }
        }

        v10 = a2 - 11360;
        v11 = s_szTableLowercase2C60to2C7F;
        goto LABEL_66;
      }

      if (BYTE1(a2) == 167)
      {
        if (a2 - 42786 > 0xD && a2 - 42802 > 0x3D)
        {
          if (a2 - 42873 <= 3)
          {
            return (a2 & 1) == 0;
          }

          if (a2 - 42878 > 9)
          {
            return a2 == 42877 || a2 == 42891;
          }
        }

        return a2 & 1;
      }

      v4 = a2 - 65313 < 0x1A;
      v5 = BYTE1(a2) == 255;
    }

    return v5 && v4;
  }

  if (BYTE1(a2) > 2u)
  {
    if (BYTE1(a2) - 4 >= 2)
    {
      if (BYTE1(a2) != 3)
      {
        v4 = a2 - 4256 < 0x26;
        v5 = BYTE1(a2) == 16;
        return v5 && v4;
      }

      v10 = a2 - 880;
      if (a2 < 880)
      {
        return 0;
      }

      v11 = s_szTableLowercase0370to03FF;
LABEL_66:
      v2 = v11[v10];
      return v2 != a2;
    }

    if (a2 - 1120 <= 0x21 || a2 - 1162 <= 0x35)
    {
      return (a2 & 1) == 0;
    }

    if (a2 - 1217 > 0xD)
    {
      if (a2 - 1232 > 0x55)
      {
        result = 1;
        if (a2 != 1216)
        {
          return a2 - 1024 < 0x30 || a2 - 1329 < 0x26;
        }

        return result;
      }

      return (a2 & 1) == 0;
    }

    return a2 & 1;
  }

  if (BYTE1(a2))
  {
    if (BYTE1(a2) == 1 || a2 <= 591)
    {
      v2 = s_szTableLowercase0100to024F[a2 - 256];
      return v2 != a2;
    }

    return 0;
  }

  v9 = a2 != 215 && a2 - 192 < 0x1F;
  return a2 - 65 < 0x1A || v9;
}

uint64_t TLocaleInfo::isLower(uint64_t a1, int a2)
{
  result = 0;
  if (BYTE1(a2) > 0x1Eu)
  {
    if (BYTE1(a2) <= 0x2Cu)
    {
      if (BYTE1(a2) == 31)
      {
        if (a2 <= 8179)
        {
          v3 = s_szTableUppercase1F00to1FF3[a2 - 7936];
          return v3 != a2;
        }

        return 0;
      }

      if (BYTE1(a2) == 33)
      {
        return a2 == 8526 || a2 == 8580;
      }

      if (BYTE1(a2) != 44)
      {
        return result;
      }

      v9 = a2 - 11360;
      if ((a2 - 11360) <= 0x16)
      {
        v10 = &s_szTableUppercase2C60to2C76;
        goto LABEL_71;
      }

      if ((a2 - 11392) > 0xE && (a2 - 11499) > 3)
      {
        return (a2 - 11312) < 0x2F;
      }
    }

    else
    {
      if (BYTE1(a2) <= 0xA6u)
      {
        if ((a2 - 42624) <= 0x17)
        {
          v4 = a2 & 1;
        }

        else
        {
          v4 = 0;
        }

        if ((a2 - 42560) <= 0x2D)
        {
          v5 = a2 & 1;
        }

        else
        {
          v5 = v4;
        }

        if (BYTE1(a2) != 166)
        {
          v5 = 0;
        }

        if (BYTE1(a2) == 45)
        {
          return a2 < 11558;
        }

        else
        {
          return v5;
        }
      }

      if (BYTE1(a2) != 167)
      {
        v7 = (a2 - 65345) < 0x1A;
        v8 = BYTE1(a2) == 255;
LABEL_36:
        if (v8)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }

      if ((a2 - 42786) > 0xD && (a2 - 42802) > 0x3D)
      {
        if ((a2 - 42873) > 3)
        {
          if ((a2 - 42878) <= 9)
          {
            return a2 & 1;
          }

          return a2 == 42892;
        }

        return (a2 & 1) == 0;
      }
    }

    return a2 & 1;
  }

  if (BYTE1(a2) > 2u)
  {
    if (BYTE1(a2) - 4 >= 2)
    {
      if (BYTE1(a2) != 3)
      {
        if (a2 >> 5 >= 0xF5)
        {
          v6 = a2 & 1;
        }

        else
        {
          v6 = a2 == 7835;
        }

        if (a2 <= 7829)
        {
          v7 = a2 & 1;
        }

        else
        {
          v7 = v6;
        }

        v8 = BYTE1(a2) == 30;
        goto LABEL_36;
      }

      v9 = a2 - 880;
      if (a2 < 880)
      {
        return 0;
      }

      v10 = &s_szTableUppercase0370to03FF;
LABEL_71:
      v3 = v10[v9];
      return v3 != a2;
    }

    if ((a2 - 1120) > 0x21 && (a2 - 1162) > 0x35)
    {
      if ((a2 - 1217) > 0xD)
      {
        if ((a2 - 1232) > 0x55)
        {
          result = 1;
          if (a2 != 1231)
          {
            return (a2 - 1072) < 0x30 || (a2 - 1377) < 0x26;
          }

          return result;
        }

        return a2 & 1;
      }

      return (a2 & 1) == 0;
    }

    return a2 & 1;
  }

  if (BYTE1(a2))
  {
    if (BYTE1(a2) == 1 || a2 <= 658)
    {
      v3 = s_szTableUppercase0100to0292[a2 - 256];
      return v3 != a2;
    }

    return 0;
  }

  v12 = a2 != 247 && (a2 - 223) < 0x21;
  return (a2 - 97) < 0x1A || v12;
}

uint64_t TLocaleInfo::toUpper(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 <= 127)
  {
    if (a2 == 105 && (*(a1 + 80) & 1) != 0)
    {
      return 304;
    }

    else
    {
      return __toupper(a2);
    }
  }

  if (!TLocaleInfo::isLower(a1, a2))
  {
    return v2;
  }

  if (BYTE1(v2) > 0x1Eu)
  {
    if (BYTE1(v2) <= 0x2Cu)
    {
      if (BYTE1(v2) == 31)
      {
        if (v2 >> 2 <= 0x7FC)
        {
          return s_szTableUppercase1F00to1FF3[v2 - 7936];
        }

        return v2;
      }

      if (BYTE1(v2) == 33)
      {
        if (v2 == 8526)
        {
          return 8498;
        }

        if (v2 == 8580)
        {
          return 8579;
        }

        return v2;
      }

      if (BYTE1(v2) != 44)
      {
        return v2;
      }

      v5 = v2 - 11360;
      if ((v2 - 11360) <= 0x16)
      {
        v6 = &s_szTableUppercase2C60to2C76;
        return v6[v5];
      }

      if ((v2 - 11392) <= 0xE)
      {
        v4 = 11406;
        return v2 & v4;
      }

      if ((v2 - 11499) <= 3)
      {
        v4 = 11502;
        return v2 & v4;
      }

      if ((v2 - 11312) > 0x2E)
      {
        return v2;
      }

      return (v2 - 48);
    }

    if (BYTE1(v2) > 0xA6u)
    {
      if (BYTE1(v2) != 167)
      {
        if (BYTE1(v2) != 255 || (v2 - 65345) > 0x19)
        {
          return v2;
        }

        return (v2 - 32);
      }

      if ((v2 - 42786) <= 0xD)
      {
        v4 = 42798;
        return v2 & v4;
      }

      if ((v2 - 42802) <= 0x3D)
      {
        v4 = 42878;
        return v2 & v4;
      }

      if ((v2 - 42873) <= 3)
      {
        return v2 + (v2 & 1) - 1;
      }

      if ((v2 - 42878) > 9)
      {
        if (v2 == 42892)
        {
          return 42891;
        }

        return v2;
      }

      v4 = 43006;
    }

    else
    {
      if (BYTE1(v2) == 45)
      {
        if ((v2 - 11520) <= 0x25)
        {
          return (v2 - 7264);
        }

        return v2;
      }

      if (BYTE1(v2) != 166)
      {
        return v2;
      }

      if ((v2 - 42560) > 0x2D)
      {
        if ((v2 - 42624) > 0x17)
        {
          return v2;
        }

        v4 = 42654;
      }

      else
      {
        v4 = 42622;
      }
    }

    return v2 & v4;
  }

  if (BYTE1(v2) > 2u)
  {
    if (BYTE1(v2) - 4 >= 2)
    {
      if (BYTE1(v2) != 3)
      {
        if (BYTE1(v2) == 30)
        {
          if (v2 >> 1 > 0xF4A)
          {
            if (v2 == 7835)
            {
              return 7776;
            }

            else if (v2 >> 5 >= 0xF5)
            {
              return v2 & 0x7FFFFFFE;
            }
          }

          else
          {
            return v2 & 0x1FFE;
          }
        }

        return v2;
      }

      v5 = v2 - 880;
      if (v2 < 0x370)
      {
        return v2;
      }

      v6 = &s_szTableUppercase0370to03FF;
      return v6[v5];
    }

    if ((v2 - 1120) <= 0x21)
    {
      v4 = 1278;
      return v2 & v4;
    }

    if ((v2 - 1162) <= 0x35)
    {
      v4 = 1214;
      return v2 & v4;
    }

    if ((v2 - 1217) > 0xD)
    {
      if ((v2 - 1232) <= 0x55)
      {
        v4 = 1534;
        return v2 & v4;
      }

      if ((v2 - 1072) <= 0x1F)
      {
        return (v2 - 32);
      }

      if ((v2 & 0x7FFFFFF0) == 0x450)
      {
        return (v2 - 80);
      }

      if (v2 == 1231)
      {
        return 1216;
      }

      if ((v2 - 1377) > 0x25)
      {
        return v2;
      }

      return (v2 - 48);
    }

    return v2 + (v2 & 1) - 1;
  }

  if (BYTE1(v2))
  {
    if (BYTE1(v2) == 1 || v2 <= 0x292)
    {
      return s_szTableUppercase0100to0292[v2 - 256];
    }

    return v2;
  }

  if (v2 != 247 && (v2 - 224) <= 0x1E)
  {
    return (v2 - 32);
  }

  if (v2 == 255)
  {
    return 376;
  }

  return v2;
}