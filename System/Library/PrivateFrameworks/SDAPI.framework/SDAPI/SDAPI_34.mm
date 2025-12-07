void sub_26274C95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowLeftWordBoundary(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1457, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateAllowLeftWordBoundary", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1459, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1461, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1463, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1466, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1471, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1484, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAllowLeftWordBoundary", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setLeftWBAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10 == 1, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StateAllowLeftWordBoundary");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26274CDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowRightWordBoundary(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1516, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateAllowRightWordBoundary", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1518, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1520, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1522, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1525, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1530, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1543, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAllowRightWordBoundary", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setRightWBAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10 == 1, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StateAllowRightWordBoundary");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26274D1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowPrecedingNonAcousticWords(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v31);
  v29 = 0;
  v30 = 0;
  while (1)
  {
    DgnString::DgnString(&v27);
    DgnString::DgnString(v26);
    DgnString::DgnString(v24);
    DgnString::DgnString(v22);
    DgnString::DgnString(v20);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v26, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v27, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v24, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v22, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v20, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v28)
    {
      v12 = v27;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1577, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateAllowPrecedingNonAcousticWords", v12);
    }

    if (v25 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1579, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v23 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1581, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v21 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1583, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1586, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1591, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v32 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v31, LineFieldInteger + 1);
    }

    v13 = *(v31 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1605, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAllowPrecedingNonAcousticWords", LineFieldInteger, *this);
    }

    else
    {
      *(v31 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    v14 = v30;
    while (v14 < LineFieldInteger + 1)
    {
      if (v14 == HIDWORD(v30))
      {
        DgnPrimArray<char>::reallocElts(&v29, 1, 1);
        v14 = v30;
      }

      *(v29 + v14) = 0;
      v14 = v30 + 1;
      LODWORD(v30) = v30 + 1;
    }

    *(v29 + LineFieldInteger) = v10;
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v18, v15);
    if (v19)
    {
      v16 = v18;
    }

    else
    {
      v16 = &byte_262899963;
    }

    v17 = strcmp(v16, "StateAllowPrecedingNonAcousticWords");
    DgnString::~DgnString(&v18);
    DgnString::~DgnString(v20);
    DgnString::~DgnString(v22);
    DgnString::~DgnString(v24);
    DgnString::~DgnString(v26);
    DgnString::~DgnString(&v27);
    if (v17)
    {
      goto LABEL_39;
    }
  }

  DgnString::~DgnString(v20);
  DgnString::~DgnString(v22);
  DgnString::~DgnString(v24);
  DgnString::~DgnString(v26);
  DgnString::~DgnString(&v27);
LABEL_39:
  if (v30)
  {
    StateMgr::upgradePrecedingNonAcousticWordsAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), &v29);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v29);
  BitArray::~BitArray(&v31);
}

void sub_26274D6A4(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 120);
  BitArray::~BitArray((v1 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowPrefiltering(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1650, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateAllowPrefiltering", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1652, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1654, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1656, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1659, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1664, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1677, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAllowPrefiltering", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setPrefilteringAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10 == 1, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StateAllowPrefiltering");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26274DB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowEndOfUtt(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1708, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateAllowEndOfUtt", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1710, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1712, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1714, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1717, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1722, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1735, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAllowEndOfUtt", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setEndOfUtteranceAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10 == 1, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StateAllowEndOfUtt");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26274DF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAliasState(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1767, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateAliasState", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1769, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1771, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1773, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1778, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v10 <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1782, "voc/tsr", 18, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1796, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAliasState", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setWordAliasState(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StateAliasState");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26274E3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  BitArray::~BitArray((v18 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStatePrecedingNonAcousticWordState(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1829, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StatePrecedingNonAcousticWordState", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1831, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1833, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1835, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1840, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v10 <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1844, "voc/tsr", 18, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1860, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StatePrecedingNonAcousticWordState", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setPrecedingNonAcousticWordState(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StatePrecedingNonAcousticWordState");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26274E7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  BitArray::~BitArray((v18 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStatePrecedingNonAcousticWordRequired(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1895, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StatePrecedingNonAcousticWordRequired", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1897, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1899, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1901, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1904, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1909, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1923, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StatePrecedingNonAcousticWordRequired", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setPrecedingNonAcousticWordRequired(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10 == 1, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StatePrecedingNonAcousticWordRequired");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26274EC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

uint64_t TextStateRule::parseStateIncludedWord(TextStateRule *this, DgnTextFileParser *a2)
{
  v46 = 0;
  v47 = 0;
  DgnString::DgnString(&v44);
  v4 = 0;
  LOWORD(v5) = 127;
  do
  {
    DgnString::DgnString(&v42);
    DgnString::DgnString(v41);
    DgnString::DgnString(&v39);
    DgnString::DgnString(v37);
    DgnString::DgnString(v35);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v41, LineFieldString);
    if (*(this + 32) == 1)
    {
      v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v42, v7);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v39, v9);
    v10 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v37, v10);
    v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v35, v11);
    v12 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v13 = *(this + 5);
    }

    else
    {
      v13 = &byte_262899963;
    }

    if (v43)
    {
      v14 = v42;
    }

    else
    {
      v14 = &byte_262899963;
    }

    if (strcmp(v13, v14))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1959, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateIncludedWord", v14);
    }

    if (v38 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1961, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v36 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1963, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v12)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1965, "voc/tsr", 13, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1970, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v4 == 0 && v5 == 127)
    {
      LOWORD(v5) = *this;
      v15 = LineFieldInteger;
    }

    else
    {
      v15 = v4;
    }

    if (v40)
    {
      v16 = v39;
    }

    else
    {
      v16 = &byte_262899963;
    }

    WordId = GetWordId(*this, v16, "StateIncludedWord", ".tsr", 0, 0);
    if (LineFieldInteger != v15 || (v18 = v5, *this != v5))
    {
      if (v45 < v15 + 1)
      {
        BitArray::setSize(&v44, v15 + 1);
      }

      v19 = *(v44 + 4 * (v15 >> 5));
      if ((v19 & (1 << v15)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1994, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateIncludedWord", v15, v5);
      }

      else
      {
        *(v44 + 4 * (v15 >> 5)) = v19 | (1 << v15);
      }

      StateMgr::addWordIdArray(*(*(**VocMgr::smpVocMgr + 8 * v5) + 56), v15, &v46, 1);
      LODWORD(v47) = 0;
      v18 = *this;
    }

    v33 = 0;
    v34 = 0;
    v20 = *(*(**VocMgr::smpVocMgr + 8 * v18) + 48);
    WordList::verifyVisible(v20, WordId);
    WordList::lookupAll(v20, WordId, &v33);
    v21 = v34;
    if ((v47 + v34) > HIDWORD(v47))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v46, (v47 + v34 - HIDWORD(v47)), 1);
      v21 = v34;
    }

    if (v21)
    {
      v22 = 0;
      v23 = v33;
      v24 = v46;
      do
      {
        *(v24 + 4 * (v22 + v47)) = *(v23 + 4 * v22);
        ++v22;
        v25 = v34;
      }

      while (v22 < v34);
    }

    else
    {
      v25 = 0;
    }

    LODWORD(v47) = v47 + v25;
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v26 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v31, v26);
      if (v32)
      {
        v27 = v31;
      }

      else
      {
        v27 = &byte_262899963;
      }

      v28 = strcmp(v27, "StateIncludedWord") == 0;
      DgnString::~DgnString(&v31);
    }

    else
    {
      v28 = 0;
    }

    v5 = *this;
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v33);
    DgnString::~DgnString(v35);
    DgnString::~DgnString(v37);
    DgnString::~DgnString(&v39);
    DgnString::~DgnString(v41);
    DgnString::~DgnString(&v42);
    v4 = LineFieldInteger;
  }

  while (v28);
  if (v45 < LineFieldInteger + 1)
  {
    BitArray::setSize(&v44, LineFieldInteger + 1);
  }

  v29 = *(v44 + 4 * (LineFieldInteger >> 5));
  if ((v29 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2035, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateIncludedWord", LineFieldInteger, v5);
  }

  else
  {
    *(v44 + 4 * (LineFieldInteger >> 5)) = v29 | (1 << LineFieldInteger);
  }

  StateMgr::addWordIdArray(*(*(**VocMgr::smpVocMgr + 8 * v5) + 56), LineFieldInteger, &v46, 1);
  BitArray::~BitArray(&v44);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v46);
}

uint64_t TextStateRule::parseStateTransitionState(TextStateRule *this, DgnTextFileParser *a2)
{
  v48 = 0;
  v49 = 0;
  DgnString::DgnString(&v46);
  v4 = 0;
  v5 = 127;
  v6 = "StateTransitionState";
  do
  {
    DgnString::DgnString(&v44);
    DgnString::DgnString(v43);
    DgnString::DgnString(&v41);
    DgnString::DgnString(v39);
    DgnString::DgnString(v37);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v43, LineFieldString);
    if (*(this + 32) == 1)
    {
      v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v44, v8);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v10 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v41, v10);
    v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v39, v11);
    v12 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v37, v12);
    v13 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v14 = *(this + 5);
    }

    else
    {
      v14 = &byte_262899963;
    }

    if (v45)
    {
      v15 = v44;
    }

    else
    {
      v15 = &byte_262899963;
    }

    if (strcmp(v14, v15))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2062, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), v6, v15);
    }

    if (v40 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2064, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v38 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2066, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2071, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v13 <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2075, "voc/tsr", 18, "%u", *(a2 + 25));
    }

    if (!v4 && v5 == 127)
    {
      v5 = *this;
      v4 = LineFieldInteger;
    }

    if ((*(this + 32) & 1) == 0)
    {
      v16 = v42 ? v41 : &byte_262899963;
      if (*v16)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2088, "voc/tsr", 10, "%u", *(a2 + 25));
      }
    }

    if (v4 == LineFieldInteger && v5 == *this)
    {
      v17 = v49;
    }

    else
    {
      if (v47 < v4 + 1)
      {
        BitArray::setSize(&v46, v4 + 1);
      }

      v18 = *(v46 + 4 * (v4 >> 5));
      if ((v18 & (1 << v4)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2105, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), v6, v4, v5);
      }

      else
      {
        *(v46 + 4 * (v4 >> 5)) = v18 | (1 << v4);
      }

      v34 = v13;
      v19 = v6;
      v20 = LineFieldInteger;
      v21 = *(*(**VocMgr::smpVocMgr + 8 * v5) + 56);
      RightWBAllowed = StateMgr::getRightWBAllowed(v21, v4, 1);
      if (StateMgr::getSkipAllowed(v21, v4, 1) && RightWBAllowed != StateMgr::getLeftWBAllowed(v21, v4, 1))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2122, "voc/tsr", 9, "%u %u", *(a2 + 25), v4);
      }

      if (v49)
      {
        v23 = 0;
        do
        {
          v24 = *(*(**VocMgr::smpVocMgr + 8 * *this) + 56);
          if (RightWBAllowed != StateMgr::getLeftWBAllowed(v24, *(v48 + 4 * v23), 1))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2132, "voc/tsr", 6, "%u %u %u", *(a2 + 25), v4, *(v48 + 4 * v23));
          }

          if (StateMgr::getSkipAllowed(v24, *(v48 + 4 * v23), 1) && RightWBAllowed != StateMgr::getRightWBAllowed(v24, *(v48 + 4 * v23), 1))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2139, "voc/tsr", 9, "%u %u", *(a2 + 25), *(v48 + 4 * v23));
          }

          ++v23;
        }

        while (v23 < v49);
      }

      StateMgr::addStateTransition(v21, v4, &v48, 1, 0, 0);
      v17 = 0;
      LODWORD(v49) = 0;
      LineFieldInteger = v20;
      v6 = v19;
      v13 = v34;
    }

    if (v17 == HIDWORD(v49))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v48, 1, 1);
      v17 = v49;
    }

    *(v48 + 4 * v17) = v13;
    LODWORD(v49) = v49 + 1;
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v25 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v35, v25);
      if (v36)
      {
        v26 = v35;
      }

      else
      {
        v26 = &byte_262899963;
      }

      v27 = strcmp(v26, v6) == 0;
      DgnString::~DgnString(&v35);
    }

    else
    {
      v27 = 0;
    }

    v5 = *this;
    DgnString::~DgnString(v37);
    DgnString::~DgnString(v39);
    DgnString::~DgnString(&v41);
    DgnString::~DgnString(v43);
    DgnString::~DgnString(&v44);
    v4 = LineFieldInteger;
  }

  while (v27);
  if (v47 < LineFieldInteger + 1)
  {
    BitArray::setSize(&v46, LineFieldInteger + 1);
  }

  v28 = *(v46 + 4 * (LineFieldInteger >> 5));
  if ((v28 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2171, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), v6, LineFieldInteger, v5);
  }

  else
  {
    *(v46 + 4 * (LineFieldInteger >> 5)) = v28 | (1 << LineFieldInteger);
  }

  v29 = *(*(**VocMgr::smpVocMgr + 8 * v5) + 56);
  v30 = StateMgr::getRightWBAllowed(v29, LineFieldInteger, 1);
  if (v49)
  {
    v31 = v30;
    v32 = 0;
    do
    {
      if (v31 != StateMgr::getLeftWBAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), *(v48 + 4 * v32), 1))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2188, "voc/tsr", 6, "%u %u %u", *(a2 + 25), LineFieldInteger, *(v48 + 4 * v32));
      }

      ++v32;
    }

    while (v32 < v49);
  }

  StateMgr::addStateTransition(v29, LineFieldInteger, &v48, 1, 0, 0);
  BitArray::~BitArray(&v46);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v48);
}

uint64_t TextStateRule::parseStateAllowedCollations(TextStateRule *this, DgnTextFileParser *a2)
{
  v37 = 0;
  v38 = 0;
  DgnString::DgnString(&v35);
  v4 = 0;
  v5 = 127;
  do
  {
    DgnString::DgnString(&v33);
    DgnString::DgnString(v32);
    DgnString::DgnString(&v30);
    DgnString::DgnString(v28);
    DgnString::DgnString(v27);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v32, LineFieldString);
    if (*(this + 32) == 1)
    {
      v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v33, v7);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v30, v9);
    v10 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v28, v10);
    v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v27, v11);
    v12 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v13 = *(this + 5);
    }

    else
    {
      v13 = &byte_262899963;
    }

    if (v34)
    {
      v14 = v33;
    }

    else
    {
      v14 = &byte_262899963;
    }

    if (strcmp(v13, v14))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2210, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateAllowedCollations", v14);
    }

    if (v29 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2212, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v12)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2214, "voc/tsr", 13, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2219, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (!v4 && v5 == 127)
    {
      v5 = *this;
      v4 = LineFieldInteger;
    }

    if (v31)
    {
      v15 = v30;
    }

    else
    {
      v15 = &byte_262899963;
    }

    if (!strcmp(v15, "_IDENTITY"))
    {
      v17 = -2;
    }

    else
    {
      v17 = CollMgr::lookupCollation(*(*(**VocMgr::smpVocMgr + 8 * *this) + 16), v15, v16);
    }

    if (v4 == LineFieldInteger && v5 == *this)
    {
      v18 = v38;
    }

    else
    {
      if (v36 < v4 + 1)
      {
        BitArray::setSize(&v35, v4 + 1);
      }

      v19 = *(v35 + 4 * (v4 >> 5));
      if ((v19 & (1 << v4)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2246, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAllowedCollations", v4, v5);
      }

      else
      {
        *(v35 + 4 * (v4 >> 5)) = v19 | (1 << v4);
      }

      StateMgr::setColls(*(*(**VocMgr::smpVocMgr + 8 * v5) + 56), v4, &v37, 1);
      v18 = 0;
      LODWORD(v38) = 0;
    }

    if (v18 == HIDWORD(v38))
    {
      DgnPrimArray<short>::reallocElts(&v37, 1, 1);
      v18 = v38;
    }

    *(v37 + 2 * v18) = v17;
    LODWORD(v38) = v18 + 1;
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v20 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v25, v20);
      if (v26)
      {
        v21 = v25;
      }

      else
      {
        v21 = &byte_262899963;
      }

      v22 = strcmp(v21, "StateAllowedCollations") == 0;
      DgnString::~DgnString(&v25);
    }

    else
    {
      v22 = 0;
    }

    v5 = *this;
    DgnString::~DgnString(v27);
    DgnString::~DgnString(v28);
    DgnString::~DgnString(&v30);
    DgnString::~DgnString(v32);
    DgnString::~DgnString(&v33);
    v4 = LineFieldInteger;
  }

  while (v22);
  if (v36 < LineFieldInteger + 1)
  {
    BitArray::setSize(&v35, LineFieldInteger + 1);
  }

  v23 = *(v35 + 4 * (LineFieldInteger >> 5));
  if ((v23 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2282, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAllowedCollations", LineFieldInteger, v5);
  }

  else
  {
    *(v35 + 4 * (LineFieldInteger >> 5)) = v23 | (1 << LineFieldInteger);
  }

  StateMgr::setColls(*(*(**VocMgr::smpVocMgr + 8 * v5) + 56), LineFieldInteger, &v37, 1);
  BitArray::~BitArray(&v35);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v37);
}

void TextStateRule::parseStateEnv(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v38);
  v4 = 0;
  v36 = 0;
  v37 = 0;
  v5 = 127;
  do
  {
    DgnString::DgnString(&v34);
    DgnString::DgnString(v33);
    DgnString::DgnString(&v31);
    DgnString::DgnString(v29);
    DgnString::DgnString(v27);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v33, LineFieldString);
    if (*(this + 32) == 1)
    {
      v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v34, v7);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v31, v9);
    v10 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v29, v10);
    v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v27, v11);
    v12 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v13 = *(this + 5);
    }

    else
    {
      v13 = &byte_262899963;
    }

    if (v35)
    {
      v14 = v34;
    }

    else
    {
      v14 = &byte_262899963;
    }

    if (strcmp(v13, v14))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2307, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateEnv", v14);
    }

    if (v28 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2309, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v12)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2311, "voc/tsr", 13, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2316, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if ((v4 || v5 != 127) && (LineFieldInteger != v4 || *this != v5))
    {
      if (v39 < v4 + 1)
      {
        BitArray::setSize(&v38, v4 + 1);
      }

      v15 = *(v38 + 4 * (v4 >> 5));
      if ((v15 & (1 << v4)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2338, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateEnv", v4, v5);
      }

      else
      {
        *(v38 + 4 * (v4 >> 5)) = v15 | (1 << v4);
      }
    }

    v16 = *(*(**VocMgr::smpVocMgr + 8 * *this) + 56);
    StateMgr::verifyVisible(v16, LineFieldInteger);
    v17 = *(v16 + 752);
    ItemEnvIdMaybeNew = EnvMgr::getItemEnvIdMaybeNew(v17, LineFieldInteger, 1);
    if (v32 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2353, "voc/tsr", 15, "%u", *(a2 + 25));
    }

    if (v30 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2355, "voc/tsr", 16, "%u", *(a2 + 25));
    }

    if (*(a2 + 10))
    {
      v19 = *(a2 + 4);
    }

    else
    {
      v19 = &byte_262899963;
    }

    DgnTextFile::convertFromEnvValueFormat(v29, &v36, v19, *(a2 + 25));
    if (v32)
    {
      v20 = v31;
    }

    else
    {
      v20 = &byte_262899963;
    }

    EnvMgr::setData(v17, ItemEnvIdMaybeNew, v20, v36, v37, 1);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v21 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v25, v21);
      if (v26)
      {
        v22 = v25;
      }

      else
      {
        v22 = &byte_262899963;
      }

      v23 = strcmp(v22, "StateEnv") == 0;
      DgnString::~DgnString(&v25);
    }

    else
    {
      v23 = 0;
    }

    v5 = *this;
    DgnString::~DgnString(v27);
    DgnString::~DgnString(v29);
    DgnString::~DgnString(&v31);
    DgnString::~DgnString(v33);
    DgnString::~DgnString(&v34);
    v4 = LineFieldInteger;
  }

  while (v23);
  if (v39 < LineFieldInteger + 1)
  {
    BitArray::setSize(&v38, LineFieldInteger + 1);
  }

  v24 = *(v38 + 4 * (LineFieldInteger >> 5));
  if ((v24 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2383, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateEnv", LineFieldInteger, v5);
  }

  else
  {
    *(v38 + 4 * (LineFieldInteger >> 5)) = v24 | (1 << LineFieldInteger);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v36);
  BitArray::~BitArray(&v38);
}

void sub_2627504FC(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 - 120);
  BitArray::~BitArray((v1 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateIncludedWordEnv(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v42);
  v4 = 0;
  v40 = 0;
  v41 = 0;
  v5 = 127;
  do
  {
    DgnString::DgnString(&v38);
    DgnString::DgnString(v37);
    DgnString::DgnString(&v35);
    DgnString::DgnString(&v33);
    DgnString::DgnString(v31);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v37, LineFieldString);
    if (*(this + 32) == 1)
    {
      v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v38, v7);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v35, v9);
    v10 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(&v33, v10);
    v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v31, v11);
    v12 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v13 = *(this + 5);
    }

    else
    {
      v13 = &byte_262899963;
    }

    if (v39)
    {
      v14 = v38;
    }

    else
    {
      v14 = &byte_262899963;
    }

    if (strcmp(v13, v14))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2407, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateIncludedWordEnv", v14);
    }

    if (v12)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2409, "voc/tsr", 13, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2414, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if ((v4 || v5 != 127) && (LineFieldInteger != v4 || *this != v5))
    {
      if (v43 < v4 + 1)
      {
        BitArray::setSize(&v42, v4 + 1);
      }

      v15 = *(v42 + 4 * (v4 >> 5));
      if ((v15 & (1 << v4)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2436, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateIncludedWordEnv", v4, v5);
      }

      else
      {
        *(v42 + 4 * (v4 >> 5)) = v15 | (1 << v4);
      }
    }

    if (v36)
    {
      v16 = v35;
    }

    else
    {
      v16 = &byte_262899963;
    }

    WordId = GetWordId(*this, v16, "StateIncludedWordEnv word", ".tsr", 0, 0);
    v4 = LineFieldInteger;
    v18 = *(**VocMgr::smpVocMgr + 8 * *this);
    v19 = *(v18 + 48);
    v20 = *(v18 + 56);
    StateMgr::verifyVisible(v20, LineFieldInteger);
    WordList::verifyVisible(v19, WordId);
    v21 = *(v20 + 760);
    ItemPairEnvIdMaybeNew = EnvMgr::getItemPairEnvIdMaybeNew(v21, LineFieldInteger, WordId, 1);
    if (v34 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2456, "voc/tsr", 16, "%u", *(a2 + 25));
    }

    if (v32 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2458, "voc/tsr", 24, "%u", *(a2 + 25));
    }

    if (*(a2 + 10))
    {
      v23 = *(a2 + 4);
    }

    else
    {
      v23 = &byte_262899963;
    }

    DgnTextFile::convertFromEnvValueFormat(v31, &v40, v23, *(a2 + 25));
    if (v34)
    {
      v24 = v33;
    }

    else
    {
      v24 = &byte_262899963;
    }

    EnvMgr::setData(v21, ItemPairEnvIdMaybeNew, v24, v40, v41, 1);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v25 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v29, v25);
      if (v30)
      {
        v26 = v29;
      }

      else
      {
        v26 = &byte_262899963;
      }

      v27 = strcmp(v26, "StateIncludedWordEnv") == 0;
      DgnString::~DgnString(&v29);
    }

    else
    {
      v27 = 0;
    }

    v5 = *this;
    DgnString::~DgnString(v31);
    DgnString::~DgnString(&v33);
    DgnString::~DgnString(&v35);
    DgnString::~DgnString(v37);
    DgnString::~DgnString(&v38);
  }

  while (v27);
  if (v43 < LineFieldInteger + 1)
  {
    BitArray::setSize(&v42, LineFieldInteger + 1);
  }

  v28 = *(v42 + 4 * (LineFieldInteger >> 5));
  if ((v28 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2486, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateIncludedWordEnv", LineFieldInteger, v5);
  }

  else
  {
    *(v42 + 4 * (LineFieldInteger >> 5)) = v28 | (1 << LineFieldInteger);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v40);
  BitArray::~BitArray(&v42);
}

void sub_262750A68(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 - 120);
  BitArray::~BitArray((v1 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleDefinition(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2506, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "RuleDefinition", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2508, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2510, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2512, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2517, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if ((v10 & 0x80000000) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2522, "voc/tsr", 18, "%u", *(a2 + 25));
    }

    if (v29 <= LineFieldInteger)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2542, "voc/tsr", 5, "%u %.500s %u %u", *(a2 + 25), "RuleDefinition", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    RuleMgr::newRule(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), v10, LineFieldInteger);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "RuleDefinition");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_262750EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  BitArray::~BitArray((v18 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleName(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v29);
  while (1)
  {
    DgnString::DgnString(&v27);
    DgnString::DgnString(v26);
    DgnString::DgnString(&v24);
    DgnString::DgnString(v22);
    DgnString::DgnString(v20);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v26, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v27, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v24, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v22, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v20, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v28)
    {
      v12 = v27;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2575, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "RuleName", v12);
    }

    if (v23 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2577, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v21 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2579, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2581, "voc/tsr", 13, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2586, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v30 <= LineFieldInteger)
    {
      BitArray::setSize(&v29, LineFieldInteger + 1);
    }

    v13 = *(v29 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2599, "voc/tsr", 5, "%u %.500s %u %u", *(a2 + 25), "RuleName", LineFieldInteger, *this);
    }

    else
    {
      *(v29 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    v14 = v25 ? v24 : &byte_262899963;
    RuleMgr::setName(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), LineFieldInteger, v14);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v18, v15);
    if (v19)
    {
      v16 = v18;
    }

    else
    {
      v16 = &byte_262899963;
    }

    v17 = strcmp(v16, "RuleName");
    DgnString::~DgnString(&v18);
    DgnString::~DgnString(v20);
    DgnString::~DgnString(v22);
    DgnString::~DgnString(&v24);
    DgnString::~DgnString(v26);
    DgnString::~DgnString(&v27);
    if (v17)
    {
      goto LABEL_35;
    }
  }

  DgnString::~DgnString(v20);
  DgnString::~DgnString(v22);
  DgnString::~DgnString(&v24);
  DgnString::~DgnString(v26);
  DgnString::~DgnString(&v27);
LABEL_35:
  BitArray::~BitArray(&v29);
}

void sub_2627512EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  BitArray::~BitArray((v18 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleAllowLM(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2629, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "RuleAllowLM", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2631, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2633, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2635, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2638, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2643, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 <= LineFieldInteger)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2656, "voc/tsr", 5, "%u %.500s %u %u", *(a2 + 25), "RuleAllowLM", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    RuleMgr::setLMAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), LineFieldInteger, v10 == 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "RuleAllowLM");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26275173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleAllowCoart(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2686, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "RuleAllowCoart", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2688, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2690, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2692, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2695, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2700, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 <= LineFieldInteger)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2713, "voc/tsr", 5, "%u %.500s %u %u", *(a2 + 25), "RuleAllowLM", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    RuleMgr::setCoartAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), LineFieldInteger, v10 == 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "RuleAllowCoart");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_262751B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleAllowPrefiltering(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2744, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "RuleAllowPrefiltering", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2746, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2748, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2750, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2753, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2758, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 <= LineFieldInteger)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2771, "voc/tsr", 5, "%u %.500s %u %u", *(a2 + 25), "RuleAllowPrefiltering", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    RuleMgr::setPrefilteringAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), LineFieldInteger, v10 == 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "RuleAllowPrefiltering");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_262751FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

uint64_t TextStateRule::parseRuleDescription(TextStateRule *this, DgnTextFileParser *a2)
{
  v46 = 0;
  v47 = 0;
  DgnString::DgnString(&v44);
  v5 = 0;
  v6 = 127;
  do
  {
    DgnString::DgnString(&v42);
    DgnString::DgnString(v41);
    DgnString::DgnString(&v39);
    DgnString::DgnString(&v37);
    DgnString::DgnString(&v35);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v41, LineFieldString);
    if (*(this + 32) == 1)
    {
      v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v42, v8);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v10 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v39, v10);
    v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(&v37, v11);
    v12 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(&v35, v12);
    v13 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v14 = *(this + 5);
    }

    else
    {
      v14 = &byte_262899963;
    }

    if (v43)
    {
      v15 = v42;
    }

    else
    {
      v15 = &byte_262899963;
    }

    if (strcmp(v14, v15))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2805, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "RuleDescription", v15);
    }

    if (v36 >= 2)
    {
      v16 = v40 ? v39 : &byte_262899963;
      if (strcmp(v16, "Word"))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2809, "voc/tsr", 12, "%u", *(a2 + 25));
      }
    }

    if (v13)
    {
      v17 = v40 ? v39 : &byte_262899963;
      if (strcmp(v17, "State") && strcmp(v17, "Rule") && strcmp(v17, "Word"))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2815, "voc/tsr", 13, "%u", *(a2 + 25));
      }
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2820, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v6 == 127 && !v5)
    {
      v6 = *this;
      v5 = LineFieldInteger;
    }

    if (v40)
    {
      v18 = v39;
    }

    else
    {
      v18 = &byte_262899963;
    }

    if (!strcmp(v18, "StartOperation"))
    {
      v19 = 3;
    }

    else
    {
      if (strcmp(v18, "EndOperation"))
      {
        if (!strcmp(v18, "Word"))
        {
          if ((v13 - 1001) <= 0xFFFFF82E)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2871, "voc/tsr", 26, "%u %500s %d", *(a2 + 25), "RuleDescription Word", v13);
          }

          if ((*(this + 32) & 1) == 0)
          {
            v21 = v38 ? v37 : &byte_262899963;
            if (*v21)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2878, "voc/tsr", 10, "%u", *(a2 + 25));
            }
          }

          if (v36)
          {
            v22 = v35;
          }

          else
          {
            v22 = &byte_262899963;
          }

          WordId = GetWordId(*this, v22, "RuleDescription word", ".tsr", 0, 0);
          v19 = 4;
        }

        else
        {
          if (!strcmp(v18, "State"))
          {
            if ((*(this + 32) & 1) == 0)
            {
              v23 = v38 ? v37 : &byte_262899963;
              if (*v23)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2894, "voc/tsr", 10, "%u", *(a2 + 25));
              }
            }

            if (v13 <= 0)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2900, "voc/tsr", 18, "%u", *(a2 + 25));
            }

            v19 = 1;
            WordId = v13;
            goto LABEL_83;
          }

          if (!strcmp(v18, "Rule"))
          {
            if ((*(this + 32) & 1) == 0)
            {
              v24 = v38 ? v37 : &byte_262899963;
              if (*v24)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2910, "voc/tsr", 10, "%u", *(a2 + 25));
              }
            }

            if (v13 <= 0)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2916, "voc/tsr", 18, "%u", *(a2 + 25));
            }

            WordId = WordId & 0xFFFF0000 | v13;
            v19 = 2;
            goto LABEL_83;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2923, "voc/tsr", 15, "%u", *(a2 + 25));
          v13 = 0;
          v19 = 3;
        }

        goto LABEL_84;
      }

      v19 = 0;
    }

    if (v38)
    {
      v20 = v37;
    }

    else
    {
      v20 = &byte_262899963;
    }

    if (!strcmp(v20, "Sequence"))
    {
      goto LABEL_50;
    }

    if (strcmp(v20, "Alternative"))
    {
      if (!strcmp(v20, "Repeat"))
      {
        v13 = 0;
        WordId = 2;
        goto LABEL_84;
      }

      if (!strcmp(v20, "Optional"))
      {
        v13 = 0;
        WordId = 3;
        goto LABEL_84;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2862, "voc/tsr", 16, "%u", *(a2 + 25));
LABEL_50:
      WordId = 0;
LABEL_83:
      v13 = 0;
      goto LABEL_84;
    }

    v13 = 0;
    WordId = 1;
LABEL_84:
    if (*this == v6 && v5 == LineFieldInteger)
    {
      v25 = v47;
    }

    else
    {
      if (v45 <= v5)
      {
        BitArray::setSize(&v44, v5 + 1);
      }

      v26 = *(v44 + 4 * (v5 >> 5));
      if ((v26 & (1 << v5)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2938, "voc/tsr", 5, "%u %.500s %u %u", *(a2 + 25), "RuleDescription", v5, v6);
      }

      else
      {
        *(v44 + 4 * (v5 >> 5)) = v26 | (1 << v5);
      }

      RuleMgr::setDesc(*(*(**VocMgr::smpVocMgr + 8 * v6) + 64), v5, &v46);
      v25 = 0;
      LODWORD(v47) = 0;
    }

    if (v25 == HIDWORD(v47))
    {
      DgnArray<RuleDesc>::reallocElts(&v46, 1, 1);
      LODWORD(v25) = v47;
    }

    v27 = (v46 + 12 * v25);
    *v27 = v19;
    v27[1] = v13;
    v27[2] = WordId;
    LODWORD(v47) = v47 + 1;
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v28 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v33, v28);
      if (v34)
      {
        v29 = v33;
      }

      else
      {
        v29 = &byte_262899963;
      }

      v30 = strcmp(v29, "RuleDescription") == 0;
      DgnString::~DgnString(&v33);
    }

    else
    {
      v30 = 0;
    }

    v6 = *this;
    DgnString::~DgnString(&v35);
    DgnString::~DgnString(&v37);
    DgnString::~DgnString(&v39);
    DgnString::~DgnString(v41);
    DgnString::~DgnString(&v42);
    v5 = LineFieldInteger;
  }

  while (v30);
  if (v45 <= LineFieldInteger)
  {
    BitArray::setSize(&v44, LineFieldInteger + 1);
  }

  v31 = *(v44 + 4 * (LineFieldInteger >> 5));
  if ((v31 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2973, "voc/tsr", 5, "%u %.500s %u %u", *(a2 + 25), "RuleDescription", LineFieldInteger, v6);
  }

  else
  {
    *(v44 + 4 * (LineFieldInteger >> 5)) = v31 | (1 << LineFieldInteger);
  }

  RuleMgr::setDesc(*(*(**VocMgr::smpVocMgr + 8 * v6) + 64), LineFieldInteger, &v46);
  BitArray::~BitArray(&v44);
  return DgnIArray<Utterance *>::~DgnIArray(&v46);
}

void sub_2627528E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va4, a15);
  va_start(va3, a15);
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  va_copy(va2, va1);
  v20 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  va_copy(va3, va2);
  v23 = va_arg(va3, void);
  v25 = va_arg(va3, void);
  va_copy(va4, va3);
  v26 = va_arg(va4, void);
  v28 = va_arg(va4, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  DgnString::~DgnString(va3);
  DgnString::~DgnString(va4);
  BitArray::~BitArray((v15 - 120));
  DgnIArray<Utterance *>::~DgnIArray(v15 - 104);
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleEnv(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v37);
  v4 = 0;
  v35 = 0;
  v36 = 0;
  v5 = 127;
  do
  {
    DgnString::DgnString(&v33);
    DgnString::DgnString(v32);
    DgnString::DgnString(&v30);
    DgnString::DgnString(v28);
    DgnString::DgnString(v26);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v32, LineFieldString);
    if (*(this + 32) == 1)
    {
      v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v33, v7);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v30, v9);
    v10 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v28, v10);
    v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v26, v11);
    v12 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v13 = *(this + 5);
    }

    else
    {
      v13 = &byte_262899963;
    }

    if (v34)
    {
      v14 = v33;
    }

    else
    {
      v14 = &byte_262899963;
    }

    if (strcmp(v13, v14))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2998, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "RuleEnv", v14);
    }

    if (v27 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3000, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v12)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3002, "voc/tsr", 13, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3007, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (!v4 && v5 == 127)
    {
      v5 = *this;
      v4 = LineFieldInteger;
    }

    if (LineFieldInteger != v4 || *this != v5)
    {
      if (v38 <= v4)
      {
        BitArray::setSize(&v37, v4 + 1);
      }

      v15 = *(v37 + 4 * (v4 >> 5));
      if ((v15 & (1 << v4)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3028, "voc/tsr", 5, "%u %.500s %u %u", *(a2 + 25), "RuleEnv", v4, v5);
      }

      else
      {
        *(v37 + 4 * (v4 >> 5)) = v15 | (1 << v4);
      }
    }

    v16 = *(*(**VocMgr::smpVocMgr + 8 * *this) + 64);
    RuleMgr::verifyRule(v16, LineFieldInteger, 1);
    v17 = *(v16 + 10);
    ItemEnvIdMaybeNew = EnvMgr::getItemEnvIdMaybeNew(v17, LineFieldInteger, 1);
    if (v31 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3043, "voc/tsr", 15, "%u", *(a2 + 25));
    }

    if (v29 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3045, "voc/tsr", 16, "%u", *(a2 + 25));
    }

    if (*(a2 + 10))
    {
      v19 = *(a2 + 4);
    }

    else
    {
      v19 = &byte_262899963;
    }

    DgnTextFile::convertFromEnvValueFormat(v28, &v35, v19, *(a2 + 25));
    if (v31)
    {
      v20 = v30;
    }

    else
    {
      v20 = &byte_262899963;
    }

    EnvMgr::setData(v17, ItemEnvIdMaybeNew, v20, v35, v36, 1);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v21 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v24, v21);
      if (v25)
      {
        v22 = v24;
      }

      else
      {
        v22 = &byte_262899963;
      }

      v23 = strcmp(v22, "RuleEnv") == 0;
      DgnString::~DgnString(&v24);
    }

    else
    {
      v23 = 0;
    }

    v5 = *this;
    DgnString::~DgnString(v26);
    DgnString::~DgnString(v28);
    DgnString::~DgnString(&v30);
    DgnString::~DgnString(v32);
    DgnString::~DgnString(&v33);
    v4 = LineFieldInteger;
  }

  while (v23);
  if (v38 <= LineFieldInteger)
  {
    BitArray::setSize(&v37, LineFieldInteger + 1);
  }

  if ((*(v37 + 4 * (LineFieldInteger >> 5)) >> LineFieldInteger))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3071, "voc/tsr", 5, "%u %.500s %u %u", *(a2 + 25), "RuleEnv", LineFieldInteger, v5);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v35);
  BitArray::~BitArray(&v37);
}

void sub_262752E54(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 - 120);
  BitArray::~BitArray((v1 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::loadStatesAndRules(TextStateRule *this, FileSpec **a2, __int16 a3)
{
  DgnTextFileParser::DgnTextFileParser(v7);
  DgnTextFileParser::openDgnTextFileParser(v7, a2, 97, 1);
  *this = a3;
  DgnString::DgnString(v6);
  TextStateRule::parseHeader(this, v7);
  TextStateRule::parseBody(this, v7);
  if (DgnTextFileParser::parseNextLine(v7))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3084, "voc/tsr", 23, "%u", v8);
  }

  DgnString::~DgnString(v6);
  DgnTextFileParser::~DgnTextFileParser(v7);
}

void sub_262752F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnTextFileParser::~DgnTextFileParser(va);
  _Unwind_Resume(a1);
}

void TextStateRule::saveStatesAndRules(TextStateRule *this, DFile *a2, unsigned int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v299);
  DgnTextFileWriter::openDgnTextFileWriter(v299, a2, 97, 1);
  v297 = 0;
  v298 = 0;
  DgnTextFile::legalDgnTextFileVersions(v299, sTSR_Versions, &v297);
  DgnTextFileWriter::setFileType(v299, "TSR", (v297 + 8 * (v298 - 1)));
  *(this + 1) = 0;
  *(this + 12) = xmmword_26288C7F0;
  *(this + 7) = 5;
  v295 = 0;
  v296 = 0;
  v288 = 0;
  v5 = realloc_array(0, &v288, 0x18uLL, 0, 0, 1);
  v294 = 0;
  v295 = v288;
  LODWORD(v296) = 6;
  HIDWORD(v296) = v5 >> 2;
  v293 = 0;
  v288 = 0;
  HIDWORD(v294) = realloc_array(0, &v288, 0x60uLL, 0, 0, 1) >> 4;
  v293 = v288;
  v6 = v294;
  if (v294 <= 6)
  {
    if (v294 != 6)
    {
      v8 = v294 + 1;
      v9 = 16 * v294;
      do
      {
        DgnString::DgnString(&v293[v9]);
        v9 += 16;
        v10 = v8++ == 6;
      }

      while (!v10);
    }
  }

  else if (v294 >= 7)
  {
    v7 = 16 * v294 - 16;
    do
    {
      --v6;
      DgnString::~DgnString(&v293[v7]);
      v7 -= 16;
    }

    while (v6 > 6);
  }

  LODWORD(v294) = 6;
  DgnString::operator=(&v293[16 * *(this + 1)], "Type");
  v295[*(this + 1)] = 0;
  DgnString::operator=(&v293[16 * *(this + 3)], "IntValue1");
  v295[*(this + 3)] = 1;
  DgnString::operator=(&v293[16 * *(this + 4)], "StrValue1");
  v295[*(this + 4)] = 0;
  DgnString::operator=(&v293[16 * *(this + 5)], "StrValue2");
  v295[*(this + 5)] = 0;
  DgnString::operator=(&v293[16 * *(this + 6)], "StrValue3");
  v295[*(this + 6)] = 0;
  DgnString::operator=(&v293[16 * *(this + 7)], "IntValue2");
  v295[*(this + 7)] = 1;
  DgnTextFileWriter::setLineFieldFormat(v299, &v295, &v293);
  v11 = *(**VocMgr::smpVocMgr + 8 * a3);
  v12 = *(*(v11 + 8) + 32);
  DgnTextFileWriter::setHeaderFieldUnsigned(v299, "MaxStateId", *(*(v11 + 7) + 720));
  DgnTextFileWriter::setHeaderFieldUnsigned(v299, "MaxRuleId", v12);
  v13 = *(v11 + 7);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v14 = v291;
    v15 = v289;
    v16 = *(v289 + 4 * v291);
    if (v16)
    {
      Parent = StateMgr::getParent(v13, *(v289 + 4 * v291));
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateDefinition");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v16);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      if (Parent)
      {
        v18 = Parent;
      }

      else
      {
        v18 = -1;
      }

      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), v18);
      DgnTextFileWriter::writeNextLine(v299);
      v14 = v291;
      v15 = v289;
      v19 = *(v289 + 4 * v291);
    }

    else
    {
      v19 = 0;
    }

    *(v15 + 4 * v14) = 0;
    v20 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v20 >= v290;
      v22 = v20 - v290;
      if (v21)
      {
        LODWORD(v291) = v22;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v19);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v23 = v291;
    v24 = v289;
    v25 = *(v289 + 4 * v291);
    if (v25)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateName");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v25);
      v26 = *(this + 4);
      Name = StateMgr::getName(v13, v25);
      DgnTextFileWriter::setLineFieldValue(v299, v26, Name);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), 0);
      DgnTextFileWriter::writeNextLine(v299);
      v23 = v291;
      v24 = v289;
      v28 = *(v289 + 4 * v291);
    }

    else
    {
      v28 = 0;
    }

    *(v24 + 4 * v23) = 0;
    v29 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v29 >= v290;
      v30 = v29 - v290;
      if (v21)
      {
        LODWORD(v291) = v30;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v28);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v31 = v291;
    v32 = v289;
    v33 = *(v289 + 4 * v291);
    if (v33)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateAllowLM");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v33);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      v34 = *(this + 7);
      LMAllowed = StateMgr::getLMAllowed(v13, v33, 1);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, v34, LMAllowed);
      DgnTextFileWriter::writeNextLine(v299);
      v31 = v291;
      v32 = v289;
      v36 = *(v289 + 4 * v291);
    }

    else
    {
      v36 = 0;
    }

    *(v32 + 4 * v31) = 0;
    v37 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v37 >= v290;
      v38 = v37 - v290;
      if (v21)
      {
        LODWORD(v291) = v38;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v36);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  v39 = *(v11 + 9);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v40 = v291;
    v41 = v289;
    v42 = *(v289 + 4 * v291);
    if (v42)
    {
      if (StateMgr::getWeights(v13, *(v289 + 4 * v291), 1) == 0xFFFF)
      {
        v43 = 0;
      }

      else
      {
        v43 = (*(*v39 + 672))(v39);
      }

      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateWeightsName");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v42);
      if (v43 && *(v43 + 8))
      {
        v45 = *v43;
      }

      else
      {
        v45 = &byte_262899963;
      }

      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), v45);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), 0);
      DgnTextFileWriter::writeNextLine(v299);
      v40 = v291;
      v41 = v289;
      v44 = *(v289 + 4 * v291);
    }

    else
    {
      v44 = 0;
    }

    *(v41 + 4 * v40) = 0;
    v46 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v46 >= v290;
      v47 = v46 - v290;
      if (v21)
      {
        LODWORD(v291) = v47;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v44);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v48 = v291;
    v49 = v289;
    v50 = *(v289 + 4 * v291);
    if (v50)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateWordPenalty");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v50);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      v51 = *(this + 7);
      WordPenalty = StateMgr::getWordPenalty(v13, v50, 1);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, v51, WordPenalty);
      DgnTextFileWriter::writeNextLine(v299);
      v48 = v291;
      v49 = v289;
      v53 = *(v289 + 4 * v291);
    }

    else
    {
      v53 = 0;
    }

    *(v49 + 4 * v48) = 0;
    v54 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v54 >= v290;
      v55 = v54 - v290;
      if (v21)
      {
        LODWORD(v291) = v55;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v53);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v56 = v291;
    v57 = v289;
    v58 = *(v289 + 4 * v291);
    if (v58)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateMinStartTime");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v58);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), *(*(v13 + 50) + 4 * v58));
      DgnTextFileWriter::writeNextLine(v299);
      v56 = v291;
      v57 = v289;
      v59 = *(v289 + 4 * v291);
    }

    else
    {
      v59 = 0;
    }

    *(v57 + 4 * v56) = 0;
    v60 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v60 >= v290;
      v61 = v60 - v290;
      if (v21)
      {
        LODWORD(v291) = v61;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v59);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v62 = v291;
    v63 = v289;
    v64 = *(v289 + 4 * v291);
    if (v64)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateMaxStartTime");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v64);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), *(*(v13 + 52) + 4 * v64));
      DgnTextFileWriter::writeNextLine(v299);
      v62 = v291;
      v63 = v289;
      v65 = *(v289 + 4 * v291);
    }

    else
    {
      v65 = 0;
    }

    *(v63 + 4 * v62) = 0;
    v66 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v66 >= v290;
      v67 = v66 - v290;
      if (v21)
      {
        LODWORD(v291) = v67;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v65);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v68 = v291;
    v69 = v289;
    v70 = *(v289 + 4 * v291);
    if (v70)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateMinEndTime");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v70);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), *(*(v13 + 54) + 4 * v70));
      DgnTextFileWriter::writeNextLine(v299);
      v68 = v291;
      v69 = v289;
      v71 = *(v289 + 4 * v291);
    }

    else
    {
      v71 = 0;
    }

    *(v69 + 4 * v68) = 0;
    v72 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v72 >= v290;
      v73 = v72 - v290;
      if (v21)
      {
        LODWORD(v291) = v73;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v71);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v74 = v291;
    v75 = v289;
    v76 = *(v289 + 4 * v291);
    if (v76)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateMaxEndTime");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v76);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), *(*(v13 + 56) + 4 * v76));
      DgnTextFileWriter::writeNextLine(v299);
      v74 = v291;
      v75 = v289;
      v77 = *(v289 + 4 * v291);
    }

    else
    {
      v77 = 0;
    }

    *(v75 + 4 * v74) = 0;
    v78 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v78 >= v290;
      v79 = v78 - v290;
      if (v21)
      {
        LODWORD(v291) = v79;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v77);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v80 = v291;
    v81 = v289;
    v82 = *(v289 + 4 * v291);
    if (v82)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateCollapsible");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v82);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      v83 = *(this + 7);
      Collapsible = StateMgr::getCollapsible(v13, v82);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, v83, Collapsible);
      DgnTextFileWriter::writeNextLine(v299);
      v80 = v291;
      v81 = v289;
      v85 = *(v289 + 4 * v291);
    }

    else
    {
      v85 = 0;
    }

    *(v81 + 4 * v80) = 0;
    v86 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v86 >= v290;
      v87 = v86 - v290;
      if (v21)
      {
        LODWORD(v291) = v87;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v85);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v88 = v291;
    v89 = v289;
    v90 = *(v289 + 4 * v291);
    if (v90)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateAllowCoart");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v90);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      v91 = *(this + 7);
      CoartAllowed = StateMgr::getCoartAllowed(v13, v90, 1);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, v91, CoartAllowed);
      DgnTextFileWriter::writeNextLine(v299);
      v88 = v291;
      v89 = v289;
      v93 = *(v289 + 4 * v291);
    }

    else
    {
      v93 = 0;
    }

    *(v89 + 4 * v88) = 0;
    v94 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v94 >= v290;
      v95 = v94 - v290;
      if (v21)
      {
        LODWORD(v291) = v95;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v93);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v96 = v291;
    v97 = v289;
    v98 = *(v289 + 4 * v291);
    if (v98)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateAllowSkip");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v98);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      v99 = *(this + 7);
      SkipAllowed = StateMgr::getSkipAllowed(v13, v98, 1);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, v99, SkipAllowed);
      DgnTextFileWriter::writeNextLine(v299);
      v96 = v291;
      v97 = v289;
      v101 = *(v289 + 4 * v291);
    }

    else
    {
      v101 = 0;
    }

    *(v97 + 4 * v96) = 0;
    v102 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v102 >= v290;
      v103 = v102 - v290;
      if (v21)
      {
        LODWORD(v291) = v103;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v101);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v104 = v291;
    v105 = v289;
    v106 = *(v289 + 4 * v291);
    if (v106)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateAllowLeftWordBoundary");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v106);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      v107 = *(this + 7);
      LeftWBAllowed = StateMgr::getLeftWBAllowed(v13, v106, 1);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, v107, LeftWBAllowed);
      DgnTextFileWriter::writeNextLine(v299);
      v104 = v291;
      v105 = v289;
      v109 = *(v289 + 4 * v291);
    }

    else
    {
      v109 = 0;
    }

    *(v105 + 4 * v104) = 0;
    v110 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v110 >= v290;
      v111 = v110 - v290;
      if (v21)
      {
        LODWORD(v291) = v111;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v109);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v112 = v291;
    v113 = v289;
    v114 = *(v289 + 4 * v291);
    if (v114)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateAllowRightWordBoundary");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v114);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      v115 = *(this + 7);
      RightWBAllowed = StateMgr::getRightWBAllowed(v13, v114, 1);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, v115, RightWBAllowed);
      DgnTextFileWriter::writeNextLine(v299);
      v112 = v291;
      v113 = v289;
      v117 = *(v289 + 4 * v291);
    }

    else
    {
      v117 = 0;
    }

    *(v113 + 4 * v112) = 0;
    v118 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v118 >= v290;
      v119 = v118 - v290;
      if (v21)
      {
        LODWORD(v291) = v119;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v117);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v120 = v291;
    v121 = v289;
    v122 = *(v289 + 4 * v291);
    if (v122)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateAllowPrefiltering");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v122);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      v123 = *(this + 7);
      PrefilteringAllowed = StateMgr::getPrefilteringAllowed(v13, v122);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, v123, PrefilteringAllowed);
      DgnTextFileWriter::writeNextLine(v299);
      v120 = v291;
      v121 = v289;
      v125 = *(v289 + 4 * v291);
    }

    else
    {
      v125 = 0;
    }

    *(v121 + 4 * v120) = 0;
    v126 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v126 >= v290;
      v127 = v126 - v290;
      if (v21)
      {
        LODWORD(v291) = v127;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v125);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v128 = v291;
    v129 = v289;
    v130 = *(v289 + 4 * v291);
    if (v130)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateAllowEndOfUtt");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v130);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      v131 = *(this + 7);
      EndOfUtteranceAllowed = StateMgr::getEndOfUtteranceAllowed(v13, v130);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, v131, EndOfUtteranceAllowed);
      DgnTextFileWriter::writeNextLine(v299);
      v128 = v291;
      v129 = v289;
      v133 = *(v289 + 4 * v291);
    }

    else
    {
      v133 = 0;
    }

    *(v129 + 4 * v128) = 0;
    v134 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v134 >= v290;
      v135 = v134 - v290;
      if (v21)
      {
        LODWORD(v291) = v135;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v133);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v136 = *(v289 + 4 * v291);
    if (v136)
    {
      WordAliasState = StateMgr::getWordAliasState(v13, *(v289 + 4 * v291), 1);
      if (WordAliasState)
      {
        DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateAliasState");
        DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v136);
        DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
        DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
        DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
        DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), WordAliasState);
        DgnTextFileWriter::writeNextLine(v299);
      }
    }

    v138 = *(v289 + 4 * v291);
    *(v289 + 4 * v291) = 0;
    v139 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v139 >= v290;
      v140 = v139 - v290;
      if (v21)
      {
        LODWORD(v291) = v140;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v138);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v141 = *(v289 + 4 * v291);
    if (v141)
    {
      PrecedingNonAcousticWordState = StateMgr::getPrecedingNonAcousticWordState(v13, *(v289 + 4 * v291));
      if (PrecedingNonAcousticWordState)
      {
        DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StatePrecedingNonAcousticWordState");
        DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v141);
        DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
        DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
        DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
        DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), PrecedingNonAcousticWordState);
        DgnTextFileWriter::writeNextLine(v299);
      }
    }

    v143 = *(v289 + 4 * v291);
    *(v289 + 4 * v291) = 0;
    v144 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v144 >= v290;
      v145 = v144 - v290;
      if (v21)
      {
        LODWORD(v291) = v145;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v143);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v146 = v291;
    v147 = v289;
    v148 = *(v289 + 4 * v291);
    if (v148)
    {
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StatePrecedingNonAcousticWordRequired");
      DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v148);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
      v149 = *(this + 7);
      PrecedingNonAcousticWordRequired = StateMgr::getPrecedingNonAcousticWordRequired(v13, v148);
      DgnTextFileWriter::setLineFieldIntegerValue(v299, v149, PrecedingNonAcousticWordRequired);
      DgnTextFileWriter::writeNextLine(v299);
      v146 = v291;
      v147 = v289;
      v151 = *(v289 + 4 * v291);
    }

    else
    {
      v151 = 0;
    }

    *(v147 + 4 * v146) = 0;
    v152 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v152 >= v290;
      v153 = v152 - v290;
      if (v21)
      {
        LODWORD(v291) = v153;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v151);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v154 = *(v289 + 4 * v291);
    if (v154)
    {
      CollWords = StateMgr::getCollWords(v13, *(v289 + 4 * v291), 0xFFFFu, 1);
      v156 = *(CollWords + 8);
      if (v156)
      {
        for (i = 0; i < v156; ++i)
        {
          v158 = *(*CollWords + 4 * i);
          v159 = *(v11 + 6);
          if (*(v159 + 388) > v158 && *(*(v159 + 104) + v158) && *(*(v159 + 256) + 4 * v158) == v158)
          {
            WordName = GetWordName(a3, v158);
            DgnString::DgnString(&v286, WordName);
            DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateIncludedWord");
            DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v154);
            if (v287)
            {
              v161 = v286;
            }

            else
            {
              v161 = &byte_262899963;
            }

            DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), v161);
            DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
            DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
            DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), 0);
            DgnTextFileWriter::writeNextLine(v299);
            DgnString::~DgnString(&v286);
            v156 = *(CollWords + 8);
          }
        }
      }
    }

    v162 = *(v289 + 4 * v291);
    *(v289 + 4 * v291) = 0;
    v163 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v163 >= v290;
      v164 = v163 - v290;
      if (v21)
      {
        LODWORD(v291) = v164;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v162);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v165 = *(v289 + 4 * v291);
    if (v165)
    {
      StateTransition = StateMgr::getStateTransition(v13, *(v289 + 4 * v291), 1);
      if (*(StateTransition + 8))
      {
        v167 = 0;
        do
        {
          v168 = *(*StateTransition + 4 * v167);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateTransitionState");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v165);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), v168);
          DgnTextFileWriter::writeNextLine(v299);
          ++v167;
        }

        while (v167 < *(StateTransition + 8));
      }
    }

    v169 = *(v289 + 4 * v291);
    *(v289 + 4 * v291) = 0;
    v170 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v170 >= v290;
      v171 = v170 - v290;
      if (v21)
      {
        LODWORD(v291) = v171;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v169);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  v172 = *(v11 + 2);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
  while (v292)
  {
    v173 = v291;
    v174 = v289;
    v175 = *(v289 + 4 * v291);
    if (v175)
    {
      Colls = StateMgr::getColls(v13, *(v289 + 4 * v291), 1);
      v286 = 0;
      v287 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v286, Colls, 0, *(Colls + 8));
      if (v287)
      {
        v178 = 0;
        do
        {
          v179 = *(v286 + v178);
          CollationName = "_IDENTITY";
          if (v179 != 65534)
          {
            CollationName = CollMgr::getCollationName(v172, v179, v177);
          }

          DgnString::DgnString(&v284, CollationName);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateAllowedCollations");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v175);
          if (v285)
          {
            v181 = v284;
          }

          else
          {
            v181 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), v181);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), 0);
          DgnTextFileWriter::writeNextLine(v299);
          DgnString::~DgnString(&v284);
          ++v178;
        }

        while (v178 < v287);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v286);
      v173 = v291;
      v174 = v289;
      v182 = *(v289 + 4 * v291);
    }

    else
    {
      v182 = 0;
    }

    *(v174 + 4 * v173) = 0;
    v183 = v291 + 1;
    v10 = v292 == 1;
    LODWORD(v291) = v291 + 1;
    --v292;
    if (v10)
    {
      v291 = 0;
    }

    else
    {
      v21 = v183 >= v290;
      v184 = v183 - v290;
      if (v21)
      {
        LODWORD(v291) = v184;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v182);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  v185 = *(v13 + 94);
  v286 = 0;
  v287 = 0;
  EnvMgr::getItemsWithEnv(v185, &v286);
  DgnString::DgnString(&v284);
  v276 = v13;
  v279 = v11;
  if (v287)
  {
    v186 = 0;
    do
    {
      v187 = *(v286 + v186);
      ItemEnvId = EnvMgr::getItemEnvId(v185, v187);
      NameIds = EnvMgr::getNameIds(v185, ItemEnvId);
      Values = EnvMgr::getValues(v185, ItemEnvId);
      if (*(NameIds + 8))
      {
        v191 = Values;
        v192 = 0;
        v193 = 0;
        do
        {
          v194 = EnvMgr::getName(v185, *(*NameIds + 2 * v193));
          DgnTextFile::convertToEnvValueFormat(*v191 + v192, &v284);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateEnv");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v187);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), v194);
          if (v285)
          {
            v195 = v284;
          }

          else
          {
            v195 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), v195);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), 0);
          DgnTextFileWriter::writeNextLine(v299);
          ++v193;
          v192 += 16;
        }

        while (v193 < *(NameIds + 8));
      }

      ++v186;
      v13 = v276;
      v11 = v279;
    }

    while (v186 < v287);
  }

  if (v286)
  {
    MemChunkFree(v286, 0);
    v286 = 0;
  }

  v287 = 0;
  v283[0] = 0;
  v283[1] = 0;
  EnvMgr::getItemPairsWithEnv(v185, &v286, v283);
  if (v287)
  {
    v196 = 0;
    do
    {
      v197 = *(v286 + v196);
      v198 = GetWordName(a3, *(v283[0] + 4 * v196));
      DgnString::DgnString(&v288, v198);
      ItemPairEnvId = EnvMgr::getItemPairEnvId(v185, *(v286 + v196), *(v283[0] + 4 * v196));
      v200 = EnvMgr::getNameIds(v185, ItemPairEnvId);
      v201 = EnvMgr::getValues(v185, ItemPairEnvId);
      if (*(v200 + 8))
      {
        v202 = v201;
        v203 = 0;
        v204 = 0;
        do
        {
          v205 = EnvMgr::getName(v185, *(*v200 + 2 * v204));
          DgnTextFile::convertToEnvValueFormat(*v202 + v203, &v284);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "StateIncludedWordEnv");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v197);
          if (v289)
          {
            v206 = v288;
          }

          else
          {
            v206 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), v206);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), v205);
          if (v285)
          {
            v207 = v284;
          }

          else
          {
            v207 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), v207);
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), 0);
          DgnTextFileWriter::writeNextLine(v299);
          ++v204;
          v203 += 16;
        }

        while (v204 < *(v200 + 8));
      }

      DgnString::~DgnString(&v288);
      ++v196;
      v13 = v276;
      v11 = v279;
    }

    while (v196 < v287);
  }

  v280 = *(v11 + 8);
  if (!RuleMgr::isEmpty(v280))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
    while (v292)
    {
      v208 = *(v289 + 4 * v291);
      ChildRules = StateMgr::getChildRules(v13, v208);
      if (*(ChildRules + 8))
      {
        v210 = 0;
        do
        {
          v211 = *(*ChildRules + 2 * v210);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "RuleDefinition");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v211);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), v208);
          DgnTextFileWriter::writeNextLine(v299);
          ++v210;
        }

        while (v210 < *(ChildRules + 8));
      }

      v212 = *(v289 + 4 * v291);
      *(v289 + 4 * v291) = 0;
      v213 = v291 + 1;
      v10 = v292 == 1;
      LODWORD(v291) = v291 + 1;
      --v292;
      if (v10)
      {
        v291 = 0;
      }

      else
      {
        v21 = v213 >= v290;
        v214 = v213 - v290;
        if (v21)
        {
          LODWORD(v291) = v214;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v212);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  }

  if (!RuleMgr::isEmpty(v280))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
    while (v292)
    {
      v215 = StateMgr::getChildRules(v13, *(v289 + 4 * v291));
      if (*(v215 + 8))
      {
        v216 = 0;
        do
        {
          v217 = *(*v215 + 2 * v216);
          v218 = RuleMgr::getName(v280, v217);
          DgnString::DgnString(&v281, v218);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "RuleName");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v217);
          if (v282)
          {
            v219 = v281;
          }

          else
          {
            v219 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), v219);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), 0);
          DgnTextFileWriter::writeNextLine(v299);
          DgnString::~DgnString(&v281);
          ++v216;
        }

        while (v216 < *(v215 + 8));
      }

      v220 = *(v289 + 4 * v291);
      *(v289 + 4 * v291) = 0;
      v221 = v291 + 1;
      v10 = v292 == 1;
      LODWORD(v291) = v291 + 1;
      --v292;
      if (v10)
      {
        v291 = 0;
      }

      else
      {
        v21 = v221 >= v290;
        v222 = v221 - v290;
        if (v21)
        {
          LODWORD(v291) = v222;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v220);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  }

  if (!RuleMgr::isEmpty(v280))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
    while (v292)
    {
      v223 = StateMgr::getChildRules(v13, *(v289 + 4 * v291));
      if (*(v223 + 8))
      {
        v224 = 0;
        do
        {
          v225 = *(*v223 + 2 * v224);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "RuleAllowLM");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v225);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
          v226 = *(this + 7);
          v227 = RuleMgr::getLMAllowed(v280, v225);
          DgnTextFileWriter::setLineFieldIntegerValue(v299, v226, v227);
          DgnTextFileWriter::writeNextLine(v299);
          ++v224;
        }

        while (v224 < *(v223 + 8));
      }

      v228 = *(v289 + 4 * v291);
      *(v289 + 4 * v291) = 0;
      v229 = v291 + 1;
      v10 = v292 == 1;
      LODWORD(v291) = v291 + 1;
      --v292;
      if (v10)
      {
        v291 = 0;
      }

      else
      {
        v21 = v229 >= v290;
        v230 = v229 - v290;
        if (v21)
        {
          LODWORD(v291) = v230;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v228);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  }

  if (!RuleMgr::isEmpty(v280))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
    while (v292)
    {
      v231 = StateMgr::getChildRules(v13, *(v289 + 4 * v291));
      if (*(v231 + 8))
      {
        v232 = 0;
        do
        {
          v233 = *(*v231 + 2 * v232);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "RuleAllowCoart");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v233);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
          v234 = *(this + 7);
          v235 = RuleMgr::getCoartAllowed(v280, v233);
          DgnTextFileWriter::setLineFieldIntegerValue(v299, v234, v235);
          DgnTextFileWriter::writeNextLine(v299);
          ++v232;
        }

        while (v232 < *(v231 + 8));
      }

      v236 = *(v289 + 4 * v291);
      *(v289 + 4 * v291) = 0;
      v237 = v291 + 1;
      v10 = v292 == 1;
      LODWORD(v291) = v291 + 1;
      --v292;
      if (v10)
      {
        v291 = 0;
      }

      else
      {
        v21 = v237 >= v290;
        v238 = v237 - v290;
        if (v21)
        {
          LODWORD(v291) = v238;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v236);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  }

  if (!RuleMgr::isEmpty(v280))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
    while (v292)
    {
      v239 = StateMgr::getChildRules(v13, *(v289 + 4 * v291));
      if (*(v239 + 8))
      {
        v240 = 0;
        do
        {
          v241 = *(*v239 + 2 * v240);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "RuleAllowPrefiltering");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v241);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
          v242 = *(this + 7);
          v243 = RuleMgr::getPrefilteringAllowed(v280, v241);
          DgnTextFileWriter::setLineFieldIntegerValue(v299, v242, v243);
          DgnTextFileWriter::writeNextLine(v299);
          ++v240;
        }

        while (v240 < *(v239 + 8));
      }

      v244 = *(v289 + 4 * v291);
      *(v289 + 4 * v291) = 0;
      v245 = v291 + 1;
      v10 = v292 == 1;
      LODWORD(v291) = v291 + 1;
      --v292;
      if (v10)
      {
        v291 = 0;
      }

      else
      {
        v21 = v245 >= v290;
        v246 = v245 - v290;
        if (v21)
        {
          LODWORD(v291) = v246;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v244);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  }

  if (!RuleMgr::isEmpty(v280))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v288, v13);
    while (v292)
    {
      v247 = StateMgr::getChildRules(v276, *(v289 + 4 * v291));
      v248 = v247;
      if (*(v247 + 8))
      {
        v249 = 0;
        v277 = v247;
        while (1)
        {
          v250 = *(*v248 + 2 * v249);
          Desc = RuleMgr::getDesc(v280, v250);
          if (*(Desc + 8))
          {
            break;
          }

LABEL_393:
          ++v249;
          v248 = v277;
          if (v249 >= *(v277 + 8))
          {
            goto LABEL_394;
          }
        }

        v252 = 0;
        v253 = 0;
        while (2)
        {
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "RuleDescription");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v250);
          v254 = *Desc;
          v255 = *(*Desc + v252);
          if (v255 <= 1)
          {
            if (v255)
            {
              if (v255 != 1)
              {
                goto LABEL_392;
              }

              DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), "State");
              DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
              DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
              v259 = *(v254 + v252 + 8);
            }

            else
            {
              DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), "EndOperation");
              v256 = *(this + 5);
              v257 = *(v254 + v252 + 8);
              if (v257 <= 2)
              {
                goto LABEL_389;
              }

LABEL_382:
              v258 = "Optional";
LABEL_390:
              DgnTextFileWriter::setLineFieldValue(v299, v256, v258);
              DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
              v259 = 0;
            }
          }

          else
          {
            switch(v255)
            {
              case 2:
                DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), "Rule");
                DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
                DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
                v259 = *(v254 + v252 + 8);
                break;
              case 4:
                DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), "Word");
                DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), &byte_262899963);
                v260 = *(this + 6);
                v261 = GetWordName(a3, *(v254 + v252 + 8));
                DgnTextFileWriter::setLineFieldValue(v299, v260, v261);
                v259 = *(v254 + v252 + 4);
                break;
              case 3:
                DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), "StartOperation");
                v256 = *(this + 5);
                v257 = *(v254 + v252 + 8);
                if (v257 >= 3)
                {
                  goto LABEL_382;
                }

LABEL_389:
                v258 = off_279B3F868[v257];
                goto LABEL_390;
              default:
LABEL_392:
                DgnTextFileWriter::writeNextLine(v299);
                ++v253;
                v252 += 12;
                if (v253 >= *(Desc + 8))
                {
                  goto LABEL_393;
                }

                continue;
            }
          }

          break;
        }

        DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), v259);
        goto LABEL_392;
      }

LABEL_394:
      v262 = *(v289 + 4 * v291);
      *(v289 + 4 * v291) = 0;
      v263 = v291 + 1;
      v10 = v292 == 1;
      LODWORD(v291) = v291 + 1;
      --v292;
      if (v10)
      {
        v291 = 0;
      }

      else
      {
        v21 = v263 >= v290;
        v264 = v263 - v290;
        if (v21)
        {
          LODWORD(v291) = v264;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v288, v262);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v289);
  }

  v265 = *(v280 + 10);
  v288 = 0;
  v289 = 0;
  EnvMgr::getItemsWithEnv(v265, &v288);
  if (v289)
  {
    v266 = 0;
    do
    {
      v267 = *(v288 + v266);
      v268 = EnvMgr::getItemEnvId(v265, v267);
      v269 = EnvMgr::getNameIds(v265, v268);
      v270 = EnvMgr::getValues(v265, v268);
      if (*(v269 + 8))
      {
        v271 = v270;
        v272 = 0;
        v273 = 0;
        do
        {
          v274 = EnvMgr::getName(v265, *(*v269 + 2 * v273));
          DgnTextFile::convertToEnvValueFormat(*v271 + v272, &v284);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 1), "RuleEnv");
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 3), v267);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 4), v274);
          if (v285)
          {
            v275 = v284;
          }

          else
          {
            v275 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v299, *(this + 5), v275);
          DgnTextFileWriter::setLineFieldValue(v299, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v299, *(this + 7), 0);
          DgnTextFileWriter::writeNextLine(v299);
          ++v273;
          v272 += 16;
        }

        while (v273 < *(v269 + 8));
      }

      ++v266;
    }

    while (v266 < v289);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v288);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v283);
  DgnString::~DgnString(&v284);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v286);
  DgnArray<DgnString>::releaseAll(&v293);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v295);
  DgnIArray<Utterance *>::~DgnIArray(&v297);
  DgnTextFileWriter::~DgnTextFileWriter(v299);
}

void sub_26275590C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a16);
  DgnString::~DgnString(&a18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a20);
  DgnArray<DgnString>::releaseAll(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a29);
  DgnIArray<Utterance *>::~DgnIArray(&a31);
  DgnTextFileWriter::~DgnTextFileWriter(va);
  _Unwind_Resume(a1);
}

uint64_t *UserMgr::startupUserMgr(uint64_t a1)
{
  result = MemChunkAlloc(8uLL, 0);
  *result = a1;
  UserMgr::smpUserMgr = result;
  return result;
}

void UserMgr::printSize(UserMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/usermgr.cpp", 61);
  if (v20)
  {
    v12 = v19;
  }

  else
  {
    v12 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &byte_262899963, a3, &byte_262899963, v12);
  DgnString::~DgnString(&v19);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v14 = 4;
  }

  else
  {
    v14 = 8;
  }

  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/usermgr.cpp", 62);
  if (v20)
  {
    v16 = v19;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v16, v14, v14, 0);
  DgnString::~DgnString(&v19);
  *a4 += v14;
  *a5 += v14;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/usermgr.cpp", 63);
  if (v20)
  {
    v18 = v19;
  }

  else
  {
    v18 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, a3, &byte_262899963, (35 - a3), (35 - a3), v18, *a4, *a5, *a6);
  DgnString::~DgnString(&v19);
}

void sub_262755DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MrecInitModule_btlat_kernel(void)
{
  if (!gParDebugLatticeConstruction)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugLatticeConstruction", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugLatticeConstruction = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugLatticeConstruction);
  }

  if (!gParDebugLatticeWatchTheseWords)
  {
    v2 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v2, "DebugLatticeWatchTheseWords", &byte_262899963, &byte_262899963, &byte_262899963, 0, 0);
    *v3 = &unk_287526E40;
    gParDebugLatticeWatchTheseWords = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugLatticeWatchTheseWords);
  }
}

uint64_t BackTraceItem::computeHash(_DWORD *a1)
{
  HIDWORD(v2) = CWIDAC::computeHash(a1);
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[6];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[7];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[8];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[9];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[10];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[11];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[13];
  LODWORD(v2) = HIDWORD(v2);
  return (v2 >> 19) + a1[14];
}

uint64_t BackTraceNodeCache::sizeObject(uint64_t a1, int a2)
{
  v3 = sizeObject<unsigned int>(a1 + 8, a2);
  v4 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 4;
  }

  if (a2 == 3)
  {
    v4 = 0;
    v5 = v3;
  }

  else
  {
    v5 = v3 + 1;
  }

  return v5 + v4;
}

uint64_t BackTraceNodeCache::createNodeCache(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  result = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v10 = MemChunkAlloc(0x98uLL, 0);
        return BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::BtNodeCacheType(v10, a2, v5, v4);
      }
    }

    else
    {
      v13 = MemChunkAlloc(0x98uLL, 0);
      return BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::BtNodeCacheType(v13, a2, v5, v4);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v11 = MemChunkAlloc(0x98uLL, 0);
        return BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::BtNodeCacheType(v11, a2, v5, v4);
      case 3:
        v12 = MemChunkAlloc(0x98uLL, 0);
        return BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::BtNodeCacheType(v12, a2, v5, v4);
      case 4:
        v9 = MemChunkAlloc(0x98uLL, 0);
        return BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::BtNodeCacheType(v9, a2, v5, 0);
    }
  }

  return result;
}

uint64_t BtNBestResult::init(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    DgnPrimArray<unsigned int>::~DgnPrimArray((v6 + 17));
    DgnPrimArray<unsigned int>::~DgnPrimArray((v6 + 13));
    DgnPriorityQueue<NBestQueueItem>::~DgnPriorityQueue((v6 + 4));
    BitArray::~BitArray((v6 + 2));
    MemChunkFree(v6, 0);
  }

  v7 = MemChunkAlloc(0x98uLL, 0);
  result = NetNBestAlg::NetNBestAlg(v7, a2, a3);
  *a1 = result;
  return result;
}

NetNBestAlg *DgnDelete<NetNBestAlg>(NetNBestAlg *result)
{
  if (result)
  {
    NetNBestAlg::~NetNBestAlg(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void BtNBestResult::prepare(unint64_t result, uint64_t a2, unsigned int *a3, int a4)
{
  if (*(result + 93) == 1)
  {
    v5 = *a3;
    *(result + 8) = v5;
    *(result + 12) = a3[1];
    *(result + 16) = *(a3 + 2);
    if ((*(result + 94) & 1) == 0 && v5 != -50331650)
    {
      v8 = *(*(**VocMgr::smpVocMgr + ((v5 >> 22) & 0x3F8)) + 184);
      BitArray::setSizeNoGrow((result + 40), 0);
      BitArray::setSize((result + 40), v8);
      *(result + 92) = 0;
      *(result + 32) = a2;
      *(result + 88) = a4;
      v9 = *(result + 64);
      if (v9 >= 1)
      {
        v10 = (v9 + 3) & 0xFFFFFFFC;
        v11 = vdupq_n_s64(v9 - 1);
        v12 = xmmword_26286BF80;
        v13 = xmmword_26286B680;
        v14 = (*(result + 56) + 40);
        v15 = vdupq_n_s64(4uLL);
        do
        {
          v16 = vmovn_s64(vcgeq_u64(v11, v13));
          if (vuzp1_s16(v16, *v11.i8).u8[0])
          {
            *(v14 - 8) = 0;
          }

          if (vuzp1_s16(v16, *&v11).i8[2])
          {
            *(v14 - 4) = 0;
          }

          if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
          {
            *v14 = 0;
            v14[4] = 0;
          }

          v12 = vaddq_s64(v12, v15);
          v13 = vaddq_s64(v13, v15);
          v14 += 16;
          v10 -= 4;
        }

        while (v10);
      }

      while (v9 < v8)
      {
        if (v9 == *(result + 68))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(result + 56, 1, 1);
          LODWORD(v9) = *(result + 64);
        }

        v9 = *(result + 56) + 16 * v9;
        *v9 = 0;
        *(v9 + 8) = 0;
        LODWORD(v9) = *(result + 64) + 1;
        *(result + 64) = v9;
      }

      *(result + 80) = 0;
    }
  }
}

uint64_t sizeObject<HistoryAndBigScore>(uint64_t a1, int a2)
{
  v11 = 0x70000000FFFFFFFELL;
  v12 = 1879048192;
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    return 0;
  }

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
      v9 = 12 * v7 - 12;
      do
      {
        v5 += sizeObject(*a1 + v9, a2);
        --v8;
        v9 -= 12;
      }

      while (v8 > 1);
    }

    if (!a2)
    {
      v5 += v6 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v5;
}

uint64_t BackTraceLatticeBuilder::BackTraceLatticeBuilder(uint64_t a1, Constraint *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, int a8, double a9, int a10, int a11, int a12, unsigned int a13, int a14, int a15, int a16, char a17, char a18, char a19, int a20, int a21, char a22, unsigned __int8 a23, char a24, uint64_t a25, int a26)
{
  *a1 = a19;
  *(a1 + 4) = 0x7000000000000000;
  v31 = *(a3 + 32);
  *(a1 + 16) = a3;
  *(a1 + 24) = v31;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::Hash(a1 + 72, 0, 128);
  *(a1 + 184) = 0;
  *(a1 + 196) = 0x3FFF;
  *(a1 + 200) = xmmword_26286CC40;
  *(a1 + 216) = 0;
  DgnString::DgnString((a1 + 224));
  v32 = a13;
  *(a1 + 277) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = -16;
  *(a1 + 340) = 0x3FFFFCFFFFFDLL;
  *(a1 + 348) = xmmword_26286CC40;
  *(a1 + 364) = 0;
  *(a1 + 366) = 1310720000;
  *(a1 + 370) = 0;
  *(a1 + 372) = -2;
  *(a1 + 376) = 1879048192;
  *(a1 + 384) = a9;
  *(a1 + 392) = a8;
  *(a1 + 396) = a10;
  *(a1 + 400) = a11;
  *(a1 + 404) = a12;
  *(a1 + 408) = a13;
  *(a1 + 412) = a14;
  *(a1 + 416) = a15;
  *(a1 + 420) = a16;
  *(a1 + 424) = a17;
  *(a1 + 425) = a18;
  *(a1 + 432) = a20;
  *(a1 + 436) = a21;
  *(a1 + 440) = a22;
  *(a1 + 441) = a23;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 512) = a24;
  *(a1 + 520) = a25;
  *(a1 + 528) = a26;
  *(a1 + 532) = a7;
  *(a1 + 536) = 0u;
  *(a1 + 560) = 0;
  if (MemChunkRegion::smTlsID != -1)
  {
    v33 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v33)
    {
      v34 = *v33;
      if (*v33)
      {
        goto LABEL_6;
      }

      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }
  }

  v34 = &gGlobalMemChunkRegion;
LABEL_6:
  if (v34 == MemChunkRegion::getBlockRegion(a2, v32))
  {
    v37 = *(a1 + 48);
  }

  else
  {
    Constraint::cloneConstraint(a2, v35);
    v37 = v36;
    *(a1 + 40) = v36;
    *(a1 + 48) = v36;
  }

  *(a1 + 280) = BackTraceNodeCache::createNodeCache(*(a1 + 532), v37, *(a1 + 64), a23);
  if (*(a1 + 425) == 1)
  {
    v38 = MemChunkAlloc(0x70uLL, 0);
    *(a1 + 560) = Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::Hash(v38, 0, 128);
  }

  v39 = MemChunkAlloc(0x68uLL, 0);
  *(a1 + 288) = HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::HashKEV(v39, 0, 128);
  if (*(a1 + 512) == 1)
  {
    *(*(a1 + 56) + 50) = 0;
  }

  return a1;
}

{

  return BackTraceLatticeBuilder::BackTraceLatticeBuilder(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void BackTraceLatticeBuilder::~BackTraceLatticeBuilder(Constraint **this)
{
  DgnDelete<Constraint>(this[5]);
  this[5] = 0;
  DgnDelete<BackTraceNodeCache>(this[35]);
  this[35] = 0;
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(this[70]);
  this[70] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 67));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 62));
  DgnIArray<Utterance *>::~DgnIArray((this + 60));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 58));
  DgnIArray<Utterance *>::~DgnIArray((this + 56));
  DgnIArray<Utterance *>::~DgnIArray((this + 39));
  DgnArray<DgnArray<ParseToken>>::releaseAll((this + 37));
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(this[36]);
  BtNBestResult::~BtNBestResult(this + 23);
  Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::~Hash((this + 9));
}

void (***DgnDelete<BackTraceNodeCache>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t BackTraceLatticeBuilder::getLatticeType(BackTraceLatticeBuilder *this, int a2, int a3, int a4)
{
  v4 = this;
  if (a3 == 2)
  {
    if (this)
    {
      if ((a2 & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/btlat.cpp", 501, "kernel/btlat", 2, "%.500s", "Bigram lattice, node creation use right word, with no coarticulation");
      }

      return 0;
    }

    else if (a2)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else if (a3 == 3)
  {
    if ((a2 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/btlat.cpp", 481, "kernel/btlat", 2, "%.500s", "Trigram lattice with no coarticulation");
    }

    return v4 ^ 1u;
  }

  else
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/btlat.cpp", 519, "kernel/btlat", 2, "%.500s", "Unigram lattice does not work with SearchLatticeComputeOnlyBestTimes set to True");
    }

    return 4;
  }
}

uint64_t BackTraceLatticeBuilder::getLMScore(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, LMStats *a5)
{
  if (*(a1 + 512) == 1)
  {
    *(*(a1 + 56) + 50) = 1;
  }

  v10 = *(a2 + 4);
  v42[0] = *a2;
  v42[1] = v10;
  v43 = *(a2 + 8);
  v11 = *(a3 + 4);
  v44 = *a3;
  v45 = v11;
  v46 = *(a3 + 8);
  v12 = *Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::findBucket(a1 + 72, v42);
  if (v12)
  {
    if (a4)
    {
      *a4 = *(v12 + 64);
    }

    if (*(a1 + 512) == 1)
    {
      *(*(a1 + 56) + 50) = 0;
    }

    v13 = *(v12 + 60);
    goto LABEL_45;
  }

  v40 = 0;
  v41 = 0;
  if (*a3 == -50331651)
  {
    v14 = a2;
  }

  else
  {
    v14 = a3;
  }

  v15 = *(a1 + 48);
  if ((*(v15 + 68) & 0xFFFFFFFD) != 0)
  {
    v16 = 0;
  }

  else
  {
    WeightsForState = Constraint::getWeightsForState(v15, v14);
    v17 = WeightsForState;
    if ((*(*(a1 + 48) + 68) & 0xFFFFFFFD) != 0)
    {
      v16 = 0;
      goto LABEL_32;
    }

    if (WeightsForState != 0xFFFF)
    {
      v19 = *v14 >> 25;
      v20 = v19 + 1;
      if (HIDWORD(v41) <= v19)
      {
        v38 = 0;
        HIDWORD(v41) = realloc_array(v40, &v38, 16 * v20, 16 * v41, 16 * v41, 1) >> 4;
        v40 = v38;
      }

      v21 = v41;
      v36 = v19 + 1;
      v37 = v19;
      if (v41 <= v20)
      {
        if (v41 <= v19)
        {
          v23 = v19 - v41 + 1;
          v24 = 16 * v41;
          do
          {
            v25 = v40 + v24;
            *v25 = 0;
            v25[1] = 0;
            v24 += 16;
            --v23;
          }

          while (v23);
        }
      }

      else if (v41 > v20)
      {
        v22 = 16 * v41 - 16;
        do
        {
          --v21;
          DgnPrimArray<unsigned int>::~DgnPrimArray(v40 + v22);
          v22 -= 16;
        }

        while (v21 > v36);
      }

      LODWORD(v41) = v36;
      v26 = v40 + 16 * v37;
      v27 = *(v26 + 2);
      if (v27 == *(v26 + 3))
      {
        DgnPrimArray<unsigned int>::reallocElts(v40 + 16 * v37, 1, 1);
        v27 = *(v26 + 2);
      }

      *(*v26 + 4 * v27) = v17;
      ++*(v26 + 2);
      v16 = &v40;
      goto LABEL_32;
    }

    v16 = &v40;
  }

  v17 = 0xFFFFLL;
LABEL_32:
  if (*(a3 + 20) == -83886084)
  {
    v28 = *(a1 + 56);
    v38 = v28;
    v39 = 1;
    SearchLMScorer::setContext(v28, 0xFAFFFFFC, a2, 0, 1, v16, a5, 0, 0xFAFFFFFC, 0xFAFFFFFC);
    if (*a3 == -50331651)
    {
      v13 = SearchLMScorer::lmScoreFinalSilence(*(a1 + 56), a5);
    }

    else if ((*a3 & 0xFFFFFF) == 0xFFFFF8)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a1 + 432) + SearchLMScorer::lmScoreNonSilCwidac(*(a1 + 56), a3, a5);
    }

    SearchLMScorer::unsetContext(v28);
    v30 = 0;
  }

  else
  {
    v29 = *(a1 + 56);
    v38 = v29;
    v39 = 1;
    SearchLMScorer::setContext(v29, 0xFAFFFFFC, a2, 0, 1, v16, a5, 0, 0xFAFFFFFC, 0xFAFFFFFC);
    v30 = SearchLMScorer::lmScoreNonAcousticWord(*(a1 + 56), *(a3 + 20), v17, a5);
    SearchLMScorer::unsetContext(v29);
    v31 = *(a1 + 56);
    v32 = *(a3 + 20);
    v38 = v31;
    v39 = 1;
    SearchLMScorer::setContext(v31, 0xFAFFFFFC, a2, 0, 1, v16, a5, 1, v32, 0xFAFFFFFC);
    v33 = SearchLMScorer::lmScoreNonSilCwidac(*(a1 + 56), a3, a5);
    v34 = *(a1 + 432);
    SearchLMScorer::unsetContext(v31);
    v13 = v33 + v30 + v34;
  }

  v38 = __PAIR64__(v30, v13);
  Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::add(a1 + 72, v42, &v38);
  if (a4)
  {
    *a4 = v30;
  }

  if (*(a1 + 512) == 1)
  {
    *(*(a1 + 56) + 50) = 0;
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v40);
LABEL_45:
  MrecInitModule_sdpres_sdapi();
  return v13;
}

void sub_262756DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::add(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v6);
  }

  v7 = CWIDACPair::computeHash(a2);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (-1640531527 * v7) >> -v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 80);
  v11 = *(a1 + 32);
  if (!v11)
  {
    DgnPool::addChunk((a1 + 24));
    v11 = *(a1 + 32);
  }

  v12 = (v10 + 8 * v9);
  *(a1 + 32) = *v11;
  *(v11 + 8) = 0;
  CWIDACPair::CWIDACPair(v11 + 12, a2);
  *(v11 + 60) = *a3;
  *(v11 + 8) = v7;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v11 = *v12;
  }

  else
  {
    *v11 = 0;
    v13 = *v12;
    if (*v12)
    {
      do
      {
        v12 = v13;
        v13 = *v13;
      }

      while (v13);
    }
  }

  *v12 = v11;
}

uint64_t BackTraceLatticeBuilder::bootStrap(BackTraceLatticeBuilder *this, WordLattice *a2, PelScorer *a3, BOOL a4, LMStats *a5)
{
  v6 = *(this + 35);
  result = Lattice<WordLatticeLC>::createNode(a2);
  v26 = result;
  v8 = *(v6 + 16);
  if (v8 == *(v6 + 20))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v6 + 8, 1, 1);
    v8 = *(v6 + 16);
  }

  *(*(v6 + 8) + 4 * v8) = 0;
  v9 = *(this + 1);
  v10 = v9 - 1;
  if (!*(*(this + 2) + 48))
  {
    v10 = *(this + 1);
  }

  v24 = v10;
  ++*(v6 + 16);
  *(this + 82) = v9 - 1;
  if (v9 >= 1)
  {
    v11 = 0;
    v12 = 16 * v9;
    do
    {
      v13 = v9 - 1;
      result = CWIDCrumbBank::hasRightSilenceCrumb(*(this + 2), v9 - 1);
      if (!result)
      {
        break;
      }

      FinalSilFrameScore = CWIDCrumbBank::getFinalSilFrameScore(*(this + 2), v9 - 1);
      *v27 = 0;
      result = CWIDCrumbBank::getRightSilenceInfo(*(this + 2), v9 - 1, &v27[1], v27);
      v15 = *(*(this + 3) + 8);
      v16 = *(v15 + 36 * v27[1] + 32);
      v17 = *(v15 + 36 * v16 + 28);
      v11 += FinalSilFrameScore;
      v18 = *(this + 424);
      if (v18 == 1 && v13 != v17)
      {
        goto LABEL_16;
      }

      v19 = *(*(a2 + 10) + 24 * v26);
      v20 = *(this + 512) ? v27[1] : v16;
      v21 = *(this + 37) + v12;
      v22 = *(v21 - 8);
      if (v22 == *(v21 - 4))
      {
        result = DgnArray<BackTraceItem>::reallocElts(v21 - 16, 1, 1);
        v22 = *(v21 - 8);
        LOBYTE(v18) = *(this + 424);
      }

      v23 = *(v21 - 16) + (v22 << 6);
      *v23 = 0x3FFFFCFFFFFDLL;
      *(v23 + 8) = xmmword_26286CC40;
      *(v23 + 24) = v24;
      *(v23 + 28) = v24;
      *(v23 + 32) = 0;
      *(v23 + 36) = v11;
      *(v23 + 40) = 0x7000000070000000;
      *(v23 + 48) = v26;
      *(v23 + 52) = v19;
      *(v23 + 56) = v20;
      *(v23 + 60) = 0;
      *(v21 - 8) = v22 + 1;
      ++*(this + 83);
      if (v18)
      {
LABEL_16:
        if (v13 == v17)
        {
          *(this + 82) = v9 - 1;
          return result;
        }
      }

      v12 -= 16;
      --v9;
    }

    while ((v13 + 1) > 1);
  }

  return result;
}

double BackTraceLatticeBuilder::assembleRightGerms(BackTraceLatticeBuilder *this, __n128 a2)
{
  *(this + 84) = -2;
  v2 = *(this + 82);
  v3 = *(this + 37);
  v4 = v3 + 16 * v2;
  if (*(v4 + 8))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1879048192;
    v10 = -2;
    do
    {
      v11 = (*v4 + v6);
      v12 = *v11;
      v13 = v11[9];
      v14 = v11[14];
      if (*v11 == -50331651)
      {
        *(this + 84) = v11[12];
        v9 = v13;
        v10 = v14;
      }

      else
      {
        v15 = *(v11 + 2);
        v16 = *(v11 + 3);
        a2 = *(v11 + 2);
        v17 = *(v11 + 60);
        v18 = *(this + 80);
        if (v18 == *(this + 81))
        {
          v21 = v16;
          v22 = v15;
          v23 = a2;
          DgnArray<RecogGerm>::reallocElts(this + 312, 1, 1);
          v16 = v21;
          v15 = v22;
          a2 = v23;
          v18 = *(this + 80);
          v2 = *(this + 82);
          v3 = *(this + 37);
        }

        v19 = *(this + 39) + 44 * v18;
        *v19 = v12;
        *(v19 + 4) = v15;
        *(v19 + 6) = v16;
        *(v19 + 8) = a2;
        *(v19 + 24) = v17;
        *(v19 + 26) = 1310720000;
        *(v19 + 30) = 0;
        *(v19 + 32) = v14;
        *(v19 + 36) = v13;
        *(v19 + 40) = v8;
        *(this + 80) = v18 + 1;
        ++v8;
      }

      ++v7;
      v4 = v3 + 16 * v2;
      v6 += 64;
    }

    while (v7 < *(v4 + 8));
    if (*(this + 84) != -2)
    {
      *(this + 85) = -50331651;
      *(this + 86) = 0x3FFF;
      a2.n128_u64[0] = 0xFFFFFFFE00000000;
      *(this + 348) = xmmword_26286CC40;
      *(this + 364) = 0;
      *(this + 366) = 1310720000;
      *(this + 185) = 0;
      *(this + 95) = v8;
      *(this + 94) = v9;
      *(this + 93) = v10;
    }
  }

  return a2.n128_f64[0];
}

uint64_t BackTraceLatticeBuilder::seedOneInContext(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, int a5, int a6, unsigned int a7, int a8, unint64_t a9, LMStats *a10, uint64_t a11, char a12)
{
  v19 = VocMgr::smpVocMgr;
  v20 = *a3;
  if (*a3 >> 25 == 126)
  {
    v149 = 0;
  }

  else
  {
    v149 = *(*(**VocMgr::smpVocMgr + 8 * (v20 >> 25)) + 56);
  }

  if (!BackTraceLatticeBuilder::canSeedInAcousticContext(a1, a4, a3))
  {
    return 0;
  }

  v142 = v19;
  v21 = a5;
  v150 = a6;
  v148 = a8;
  v22 = *a4;
  if (v22 == -50331650)
  {
    v151 = 0;
    v137 = 0;
    v23 = a4[9];
    v24 = v20;
    v141 = v23;
  }

  else
  {
    v25 = a4[8];
    v26 = *(*(a1 + 24) + 8);
    v27 = (v26 + 36 * v25);
    v28 = v27[8];
    v29 = v26 + 36 * v28;
    v151 = v27[6] != v27[7];
    if ((*(*(a1 + 48) + 68) & 0xFFFFFFFD) != 0)
    {
      v146 = 0;
      LODWORD(v30) = a4[2];
    }

    else
    {
      v30 = a4[2];
      v146 = *(*(*(*(**v142 + ((v22 >> 22) & 0x3F8)) + 56) + 288) + 4 * v30);
    }

    v31 = a4[1];
    v165 = *a4;
    v166 = v31;
    *(&v167 + 4) = *(a4 + 3);
    v32 = a4[5];
    LODWORD(v167) = v30;
    HIDWORD(v167) = v32;
    v153 = *v29;
    v154 = *(v29 + 8);
    if (*(a1 + 512) == 1)
    {
      v33 = *(a1 + 528);
      v34 = v26 + 36 * (v25 - v33);
      v165 = *v34;
      v166 = *(v34 + 4);
      v167 = *(v34 + 8);
      v35 = v26 + 36 * (v28 - v33);
      v153 = *v35;
      v154 = *(v35 + 8);
    }

    LMScore = BackTraceLatticeBuilder::getLMScore(a1, &v153, &v165, 0, a10);
    if (*(a1 + 512) == 1)
    {
      v37 = *(*(a1 + 24) + 8);
      v38 = (v37 + 36 * a4[8]);
      v39 = v38[8];
      v40 = v39 - *(a1 + 528);
      v41 = *(a1 + 520);
      if (*v38 == -50331650)
      {
        v42 = -1;
      }

      else
      {
        v42 = *(v37 + 36 * v39 + 28) - 1;
      }

      v45 = *a4;
      if (v45 >> 25 == 126 || (v45 & 0xFFFFFF) == 0xFFFFF8)
      {
        v46 = 0;
      }

      else
      {
        v46 = *(*(*(*(**VocMgr::smpVocMgr + ((v45 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v45 & 0xFFFFFF));
      }
    }

    else
    {
      v41 = *(a1 + 16);
      v43 = *(*(a1 + 24) + 8);
      v44 = (v43 + 36 * a4[8]);
      v40 = v44[8];
      if (*v44 == -50331650)
      {
        v42 = -1;
      }

      else
      {
        v42 = *(v43 + 36 * v40 + 28) - 1;
      }

      v47 = *a4;
      if (v47 >> 25 == 126 || (v47 & 0xFFFFFF) == 0xFFFFF8)
      {
        v46 = 0;
      }

      else
      {
        v46 = *(*(*(*(**VocMgr::smpVocMgr + ((v47 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v47 & 0xFFFFFF));
      }
    }

    AccumHistScore = CWIDCrumbBank::getAccumHistScore(v41, v42, v40, v46);
    v23 = a4[9];
    v137 = AccumHistScore;
    v141 = v23 - (LMScore + v146) - AccumHistScore;
    v24 = *a3;
  }

  v138 = a7;
  if (v24 >> 25 != 126)
  {
    if ((v24 & 0xFFFFFF) == 0xFFFFF8)
    {
      v145 = 0;
    }

    else
    {
      v145 = *(a1 + 432);
    }

    goto LABEL_34;
  }

  v145 = 0;
  if (v24 != -50331651)
  {
LABEL_34:
    v51 = a6;
    v50 = 0;
    LODWORD(v49) = a3[10];
    if (*(a1 + 336) == -2)
    {
      v49 = v49;
    }

    else
    {
      v49 = (v49 + 1);
    }

    goto LABEL_37;
  }

  v49 = 0;
  v50 = 1;
  v51 = a6;
LABEL_37:
  v52 = *(a1 + 328);
  v53 = (*(*(a1 + 296) + 16 * v52) + (v49 << 6));
  v54 = v53[12];
  v56 = v53[6];
  v55 = v53[7];
  v57 = v55 - v56;
  if (v55 == v56)
  {
    v144 = 0;
  }

  else
  {
    v144 = *(a1 + 436);
  }

  v58 = a3[9];
  v59 = v53[10];
  v60 = (*(a1 + 512) & a12) ^ 1;
  if (((v50 | v60) & 1) == 0)
  {
    v61 = v59 - (v58 + v51 + v53[11]);
    v62 = v61 - v21;
    if (v61 < v21)
    {
      if (a3[5] == -83886084)
      {
        v62 = 0;
      }

      v148 += v62;
      v21 = v59 - (v58 + v51 + v53[11]);
    }
  }

  if (*(a1 + 64) == 1)
  {
    if (((v50 | *(a1 + 440)) & 1) == 0)
    {
      v63 = v59 - (v23 + v51 + v21);
      v64 = v63 == v58;
      if (v63 >= v58)
      {
        v76 = v63 + v60;
        if (!v64)
        {
          v58 = v76;
        }
      }

      else
      {
        ++v58;
      }
    }
  }

  else
  {
    v58 = 0;
  }

  v65 = v53[8];
  v66 = *(a1 + 280);
  v147 = v21;
  v67 = v21 + v51 + v58 + *(v66[1] + 4 * *(*(a9 + 80) + 24 * v54));
  v68 = v67 + v23;
  v181[0] = v68;
  v69 = *(a1 + 8);
  v70 = 1879048192;
  v71 = 1879048192;
  if (v69 != 1879048192)
  {
    if ((a3[6] & 1) != 0 || (v71 = *(a1 + 8), *(a4 + 24) == 1))
    {
      v71 = *(a1 + 404) + v69;
    }

    if (v68 > v71)
    {
      return 0;
    }

    v70 = v71 - v67;
  }

  v72 = *a4;
  v136 = v70;
  v139 = v71;
  v140 = v57;
  if (*(a1 + 425) == 1)
  {
    if (v72 == -50331650)
    {
      v73 = -1;
    }

    else
    {
      v74 = *(*(a1 + 24) + 8);
      v75 = (v74 + 36 * *(v74 + 36 * a4[8] + 32));
      if (*v75 == -50331650)
      {
        v73 = 0;
      }

      else
      {
        v73 = *(v74 + 36 * v75[8] + 28);
      }
    }

    v77 = a4[1];
    v165 = *a4;
    v166 = v77;
    v167 = *(a4 + 2);
    v168 = v151;
    v169 = v24;
    v170 = v73;
    v171 = v54;
    v78 = *Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::findBucket(*(a1 + 560), &v165);
    if (!v78)
    {
      Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::add(*(a1 + 560), &v165, v181);
      goto LABEL_69;
    }

    if (*(v78 + 52) > v181[0])
    {
      *(v78 + 52) = v181[0];
LABEL_69:
      v72 = *a4;
      v24 = *a3;
      v66 = *(a1 + 280);
      v52 = *(a1 + 328);
      goto LABEL_70;
    }

    return 0;
  }

LABEL_70:
  v135 = a4[8];
  v80 = *(*(a1 + 24) + 8) + 36 * v135;
  v81 = a4[1];
  v82 = a4[2];
  v179[0] = v72;
  v179[1] = v81;
  v180 = *(a4 + 2);
  v83 = a3[1];
  v84 = a3[2];
  Root = v24;
  v175 = v83;
  v178 = *(a3 + 4);
  v179[2] = v82;
  v179[3] = -2;
  v176 = v84;
  v177 = -2;
  v173 = 0;
  v143 = v80;
  v152 = (*(*v66 + 40))(v66, a9, v52, v179, *(v80 + 24) != *(v80 + 28), &Root, &v173);
  if (v173 == 1)
  {
    v86 = *(a1 + 420);
    if (v86)
    {
      if (*(a9 + 24) > v86)
      {
        return 1;
      }
    }

    v87 = *(a1 + 412);
    if (v87)
    {
      v88 = *(a1 + 328);
      if (v88 != -16)
      {
        v89 = *(a1 + 4) - v88;
        if (v89 >= 0x32)
        {
          LODWORD(v85) = *(a9 + 24);
          if (v85 / v89 > v87 / 100.0)
          {
            return 1;
          }
        }
      }
    }
  }

  v90 = *(*(a9 + 80) + 24 * v152);
  v91 = *(*(a1 + 280) + 8);
  if (*(v91 + 4 * v90) > v67)
  {
    *(v91 + 4 * v90) = v67;
  }

  if ((*(*(a1 + 48) + 68) & 0xFFFFFFFD) == 0 && Root >> 25 != 126 && v176 && *(*(v149 + 384) + v176))
  {
    Root = v20 & 0xFE000000 | 0xFFFFFB;
    v178 = vdup_n_s32(0xFAFFFFFC);
    LOWORD(v175) = 0x3FFF;
  }

  if (*a1 == 1 && (Root & 0xFFFFFF) != 0xFFFFFB)
  {
    Root = VocMgr::getRoot(v142, Root);
  }

  v172[0] = v147 - (v148 + v145);
  v172[1] = v148;
  v172[2] = v150;
  v172[3] = v145;
  v172[4] = v58 - v144 - v65;
  v172[5] = v65;
  v172[6] = v144;
  if (*(a1 + 532) == 4)
  {
    v178.i32[0] = -83886084;
  }

  WordLatticeLC::WordLatticeLC(&v165, &Root, *(a1 + 328), v56 - *(a1 + 328), v140, v172);
  v164 = 0;
  updated = Lattice<WordLatticeLC>::maybeCreateAndConnectOrUpdateLink(a9, v152, v54, &v165, 0, &v164);
  v94 = v139;
  if (updated >= 1 && ((v95 = *(a1 + 416)) != 0 && *(a9 + 104) > v95 || (v96 = *(a1 + 408)) != 0 && (v97 = *(a1 + 328), v97 != -16) && (v98 = *(a1 + 4) - v97, v98 >= 0x32) && (LODWORD(v93) = *(a9 + 104), v93 / v98 > v96 / 100.0)))
  {
    v79 = 1;
  }

  else
  {
    if (*(a1 + 396))
    {
      BackTraceLatticeBuilder::updateLinkBestPathScore(a1, v181[0], *(*(a9 + 128) + 136 * v164 + 112));
      v94 = v139;
    }

    if (*a4 == -50331650)
    {
      if (v173 == 1)
      {
        v99 = *(a1 + 280);
        v100 = *(v99[1] + 4 * *(*(a9 + 80) + 24 * v152)) + v141;
        if (v100 <= v94)
        {
          v153 = 0x3FFFFAFFFFFFLL;
          v154 = xmmword_26286CC40;
          *v159 = 0x3FFFFCFFFFFELL;
          *&v159[8] = xmmword_26286CC40;
          v101 = (*(*v99 + 40))(v99, a9, 0, &v153, 0, v159, &v173);
          v102 = v143[6];
          v103 = v143[7];
          *v159 = 0u;
          *&v159[20] = 0;
          LODWORD(v160) = 0;
          *&v159[16] = v141;
          WordLatticeLC::WordLatticeLC(&v153, a4, 0, v102, v103 - v102, v159);
          Link = Lattice<WordLatticeLC>::createLink(a9, v101, v152, &v153);
          Lattice<WordLatticeLC>::connectInLinkUnordered(a9, Link);
          Lattice<WordLatticeLC>::connectOutLinkUnordered(a9, Link);
          if (*(a1 + 396))
          {
            BackTraceLatticeBuilder::updateLinkBestPathScore(a1, v100, *(*(a9 + 128) + 136 * Link + 112));
          }

          WordLatticeLC::~WordLatticeLC(&v153);
        }
      }

      else if (*(a1 + 396))
      {
        v115 = *(*(a9 + 80) + 24 * v152 + 16);
        if (v115 != -2)
        {
          v116 = *(a9 + 128);
          do
          {
            v117 = v116 + 136 * v115;
            BackTraceLatticeBuilder::updateLinkBestPathScore(a1, vaddvq_s32(*(v117 + 28)) + *(v117 + 44) + *(v117 + 48) + *(v117 + 52) + *(*(*(a1 + 280) + 8) + 4 * *(*(a9 + 80) + 24 * v152)), *(v117 + 112));
            v116 = *(a9 + 128);
            v115 = *(v116 + 136 * v115 + 124);
          }

          while (v115 != -2);
        }
      }
    }

    else
    {
      v105 = *(a4 + 24) | *(a3 + 24);
      v106 = *(v143 + 3);
      v107 = a4[9];
      v108 = *(*(a9 + 80) + 24 * v152);
      v109 = v135;
      if ((*(a1 + 512) & 1) == 0)
      {
        v109 = v143[8];
      }

      v110 = a4[1];
      LODWORD(v153) = *a4;
      HIDWORD(v153) = v110;
      v154 = *(a4 + 2);
      *&v155 = v106;
      *(&v155 + 1) = __PAIR64__(v141, v138);
      *&v156 = __PAIR64__(v137, v107);
      *(&v156 + 1) = __PAIR64__(v108, v152);
      v157 = v109;
      v158 = v105 & 1;
      if ((v173 & 1) != 0 || BackTraceItemCache::needCreateBTItem((a1 + 288), &v153))
      {
        v111 = (a1 + 296);
        v112 = *(*(a1 + 24) + 8);
        v113 = (v112 + 36 * v135);
        if (*v113 == -50331650)
        {
          v114 = 0;
        }

        else
        {
          v114 = *(v112 + 36 * v113[8] + 28);
        }

        v118 = *v111 + 16 * v114;
        v119 = *(v118 + 8);
        v120 = v119;
        if (v119 == *(v118 + 12))
        {
          DgnArray<BackTraceItem>::reallocElts(*v111 + 16 * v114, 1, 1);
          v120 = *(v118 + 8);
        }

        v121 = *v118 + (v120 << 6);
        *v121 = v153;
        *(v121 + 8) = v154;
        *(v121 + 24) = v155;
        *(v121 + 40) = v156;
        *(v121 + 56) = v157;
        *(v121 + 60) = v158;
        *(v118 + 8) = v120 + 1;
        ++*(a1 + 332);
        v122 = *(a1 + 288);
        if (v122)
        {
          *v159 = a1 + 296;
          *&v159[8] = v114;
          *&v159[12] = v119;
          HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::add(v122, v159);
        }

        if (*(a1 + 277) == 1)
        {
          if (a11)
          {
            if ((*(a1 + 278) & 1) == 0)
            {
              v123 = *(a11 + 8);
              if (v123 >= 1)
              {
                v124 = v123 + 1;
                v125 = *a11 + 8;
                v126 = v125;
                do
                {
                  v128 = *v126;
                  v126 += 3;
                  v127 = v128;
                  if (v128 > v136)
                  {
                    break;
                  }

                  v129 = *(v125 - 8);
                  v130 = *(*(*(a1 + 24) + 8) + 36 * v129 + 28);
                  BackTraceLatticeBuilder::getBackTraceItem(a1, a9, a4, v105 & 1, v143, v129, v127, 0, v159, v152, a10);
                  v131 = *v111 + 16 * v130;
                  v132 = *(v131 + 8);
                  if (v132 == *(v131 + 12))
                  {
                    DgnArray<BackTraceItem>::reallocElts(v131, 1, 1);
                    v132 = *(v131 + 8);
                  }

                  v133 = *v131 + (v132 << 6);
                  *v133 = *v159;
                  *(v133 + 8) = *&v159[8];
                  *(v133 + 24) = v160;
                  *(v133 + 40) = v161;
                  *(v133 + 56) = v162;
                  *(v133 + 60) = v163;
                  *(v131 + 8) = v132 + 1;
                  ++*(a1 + 332);
                  --v124;
                  v125 = v126;
                }

                while (v124 > 1);
              }
            }
          }
        }
      }
    }

    v79 = 0;
  }

  WordLatticeLC::~WordLatticeLC(&v165);
  return v79;
}

void sub_262758080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  WordLatticeLC::~WordLatticeLC(&a22);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

BOOL BackTraceLatticeBuilder::canSeedInAcousticContext(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = 1;
  if (*(a1 + 440) == 1)
  {
    v3 = *(*(a1 + 24) + 8) + 36 * a2[8];
    if (*(v3 + 24) != *(v3 + 28) || *a3 >> 25 == 126 || (v4 = *a2, v4 >> 25 == 126))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(*(*(*(**VocMgr::smpVocMgr + ((v4 >> 22) & 0x3F8)) + 48) + 608) + 2 * (v4 & 0xFFFFFF));
    }

    if (v5 != *(a3 + 6))
    {
      return 0;
    }
  }

  return result;
}

uint64_t Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::add(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v6);
  }

  result = CWIDAC::computeHash(a2);
  HIDWORD(v8) = result;
  LODWORD(v8) = result;
  v9 = *(a2 + 7);
  HIDWORD(v8) = (v8 >> 19) + v9;
  LODWORD(v8) = HIDWORD(v8);
  v10 = a2[9];
  HIDWORD(v8) = (v8 >> 19) + HIDWORD(v9);
  LODWORD(v8) = HIDWORD(v8);
  v11 = *(a2 + 24);
  HIDWORD(v8) = (v8 >> 19) + v10;
  LODWORD(v8) = HIDWORD(v8);
  v12 = (v8 >> 19) + v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (-1640531527 * v12) >> -v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 32);
  if (!v16)
  {
    result = DgnPool::addChunk((a1 + 24));
    v16 = *(a1 + 32);
    LOBYTE(v11) = *(a2 + 24);
    v9 = *(a2 + 7);
    v10 = a2[9];
  }

  v17 = (v15 + 8 * v14);
  *(a1 + 32) = *v16;
  v18 = *a2;
  *(v16 + 8) = 0;
  *(v16 + 12) = v18;
  *(v16 + 16) = a2[1];
  *(v16 + 20) = *(a2 + 2);
  *(v16 + 36) = v11;
  *(v16 + 40) = v9;
  *(v16 + 48) = v10;
  *(v16 + 52) = *a3;
  *(v16 + 8) = v12;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v16 = *v17;
  }

  else
  {
    *v16 = 0;
    v19 = *v17;
    if (*v17)
    {
      do
      {
        v17 = v19;
        v19 = *v19;
      }

      while (v19);
    }
  }

  *v17 = v16;
  return result;
}

uint64_t Lattice<WordLatticeLC>::maybeCreateAndConnectOrUpdateLink(unint64_t a1, int a2, const WordLatticeLC *a3, WordLatticeLC *a4, int a5, _DWORD *a6)
{
  v9 = a3;
  v12 = *(*(a1 + 80) + 24 * a2 + 20);
  if (v12 == -2)
  {
LABEL_6:
    Link = Lattice<WordLatticeLC>::createLink(a1, a2, v9, a4);
    v16 = Link;
    if (a6)
    {
      *a6 = Link;
    }

    if (a5)
    {
      Lattice<WordLatticeLC>::connectInLink(a1, Link);
      Lattice<WordLatticeLC>::connectOutLink(a1, v16);
    }

    else
    {
      Lattice<WordLatticeLC>::connectInLinkUnordered(a1, Link);
      Lattice<WordLatticeLC>::connectOutLinkUnordered(a1, v16);
    }

    return 1;
  }

  else
  {
    v13 = *(a1 + 128);
    while (1)
    {
      if (*(v13 + 136 * v12 + 120) == v9)
      {
        v14 = WordLatticeLC::cmpForDuplicateCheck(a4, (v13 + 136 * v12), a3);
        v13 = *(a1 + 128);
        if (!v14)
        {
          break;
        }
      }

      v12 = *(v13 + 136 * v12 + 128);
      if (v12 == -2)
      {
        goto LABEL_6;
      }
    }

    v18 = WordLatticeLC::cmpForSameLinkWithDifferentScoresCheck(a4, (v13 + 136 * v12), a3);
    if (v18 >= 1)
    {
      v19 = *(a1 + 128) + 136 * v12;
      BaseWordLatticeLC::operator=(v19, a4);
      *(v19 + 88) = *(a4 + 22);
      *(v19 + 92) = *(a4 + 23);
      *(v19 + 96) = *(a4 + 6);
    }

    if (a6)
    {
      *a6 = v12;
    }

    if (v18 <= 0)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t *BackTraceLatticeBuilder::updateLinkBestPathScore(uint64_t *this, int a2, unsigned int a3)
{
  v5 = this;
  v6 = this + 67;
  v7 = *(this + 136);
  if (v7 <= a3)
  {
    do
    {
      if (v7 == *(v5 + 548))
      {
        this = DgnPrimArray<unsigned int>::reallocElts(v6, 1, 1);
        v7 = *(v5 + 544);
      }

      v8 = *(v5 + 536);
      *(v8 + 4 * v7) = 0x7FFFFFFF;
      v7 = *(v5 + 544) + 1;
      *(v5 + 544) = v7;
    }

    while (v7 <= a3);
  }

  else
  {
    v8 = *v6;
  }

  v9 = a2 - *(v5 + 12);
  if (v9 < *(v8 + 4 * a3))
  {
    *(v8 + 4 * a3) = v9;
    if (*(v5 + 552) < v9)
    {
      *(v5 + 552) = v9;
    }
  }

  return this;
}

uint64_t BackTraceItemCache::needCreateBTItem(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    v4 = *HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::findBucket(result, a2);
    if (v4)
    {
      result = 0;
      if (*(a2 + 60) == 1)
      {
        *(*(**(v4 + 16) + 16 * *(v4 + 24)) + (*(v4 + 28) << 6) + 60) = 1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

double BackTraceLatticeBuilder::getBackTraceItem@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, unsigned int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned int a10, LMStats *a11)
{
  v17 = -50331650;
  v18 = *a3;
  if (v18 == -50331650)
  {
    AccumHistScore = 0;
    v20 = a7;
  }

  else
  {
    v22 = *(a1[3] + 8) + 36 * a6;
    if ((*(a1[6] + 68) & 0xFFFFFFFD) != 0)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(*(*(**VocMgr::smpVocMgr + ((v18 >> 22) & 0x3F8)) + 56) + 288) + 4 * a3[2]);
    }

    v23 = a1[2];
    v30 = a4;
    v29 = a5;
    if (v18 >> 25 == 126 || (v18 & 0xFFFFFF) == 0xFFFFF8)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(*(*(*(**VocMgr::smpVocMgr + ((v18 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v18 & 0xFFFFFF));
    }

    AccumHistScore = CWIDCrumbBank::getAccumHistScore(v23, *(v22 + 28) - 1, a6, v24);
    v20 = a7 - (v28 + BackTraceLatticeBuilder::getLMScore(a1, v22, a3, 0, a11)) - AccumHistScore;
    v17 = *a3;
    a4 = v30;
    a5 = v29;
  }

  v25 = *(*(a2 + 80) + 24 * a10);
  v26 = a3[1];
  *a9 = v17;
  *(a9 + 4) = v26;
  *(a9 + 8) = *(a3 + 2);
  result = *(a5 + 24);
  *(a9 + 24) = result;
  *(a9 + 32) = a8;
  *(a9 + 36) = v20;
  *(a9 + 40) = a7;
  *(a9 + 44) = AccumHistScore;
  *(a9 + 48) = a10;
  *(a9 + 52) = v25;
  *(a9 + 56) = a6;
  *(a9 + 60) = a4;
  return result;
}

uint64_t BackTraceLatticeBuilder::stackDecode(BackTraceLatticeBuilder *this, WordLattice *a2, int a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, LMStats *a8)
{
  if (*(this + 83))
  {
    v13 = (this + 448);
    v29 = this + 312;
    v28 = this + 448;
    do
    {
      v14 = *(this + 37);
      v15 = *(this + 82);
      if (!*(v14 + 16 * v15 + 8))
      {
        do
        {
          LODWORD(v15) = v15 - 1;
        }

        while (!*(v14 + 16 * v15 + 8));
        *(this + 82) = v15;
      }

      CWIDCrumbBank::getFrameInfoForBTLat(*(this + 2), *(this + 424), v15 - 1, v13, this + 464, this + 120, this + 62, *(this + 100));
      v16 = *(this + 107);
      v17 = *(CWIDCrumbBank::getCrumbFrame(*(this + 2), *(this + 82) - 1) + 24);
      v18 = *(this + 37) + 16 * *(this + 82);
      *(this + 83) -= *(v18 + 8);
      if (*(this + 114))
      {
        BackTraceItemCache::clearCache(this + 36);
        BackTraceLatticeBuilder::assembleRightGerms(this, v19);
        v20 = MemChunkAlloc(0x30uLL, 0);
        *(v20 + 2) = 0;
        *(v20 + 32) = 0;
        v20[3] = 0;
        *v20 = &unk_287524340;
        v20[5] = v29;
        *(v20 + 3) = *(this + 80);
        Constraint::prunePreList(*(this + 6), v20, 1);
        v21 = MemChunkAlloc(0x30uLL, 0);
        *(v21 + 2) = 0;
        v21[3] = 0;
        *v21 = &unk_2875253D0;
        v21[5] = v13;
        v22 = *(this + 114);
        *(v21 + 3) = v22;
        *a5 += v22;
        v33 = 0x3FFFFAFFFFFFLL;
        v34 = xmmword_26286CC40;
        v35 = 0;
        v36 = 1310720000;
        v37 = 0;
        v38 = 0x70000000FFFFFFFELL;
        *(v21 + 32) = 0;
        *(v21 + 2) = 0;
        if (*(v21 + 3))
        {
          while (1)
          {
            (*(*v21 + 16))(v21, &v33);
            v23 = *(v21 + 2);
            BtNBestResult::prepare(this + 184, *(this + 60) + 24 * v23, &v33, v17 + v16);
            if (BackTraceLatticeBuilder::seedAllRightGerms(this, &v33, v23, a2, 0, a4, a6, a7, a8) & 1) != 0 || (BackTraceLatticeBuilder::seedFinalSilence(this, &v33, v23, a2, a3, a7, a8))
            {
              break;
            }

            v24 = *(v21 + 2) + 1;
            *(v21 + 2) = v24;
            if (*(v21 + 32))
            {
              (*(*v21 + 24))(v21);
              v24 = *(v21 + 2);
            }

            if (v24 == *(v21 + 3))
            {
              v25 = 0;
              goto LABEL_18;
            }
          }

          v25 = 1;
LABEL_18:
          v13 = v28;
        }

        else
        {
          v25 = 0;
        }

        DgnDelete<RecogGermIterator>(v21);
        DgnDelete<RecogGermIterator>(v20);
        v26 = *(this + 37) + 16 * *(this + 82);
        if (*v26)
        {
          MemChunkFree(*v26, 0);
          *v26 = 0;
        }

        *(v26 + 8) = 0;
        *(this + 80) = 0;
      }

      else
      {
        if (*v18)
        {
          MemChunkFree(*v18, 0);
          *v18 = 0;
        }

        v25 = 0;
        *(v18 + 8) = 0;
      }
    }

    while (*(this + 83) && !v25);
    if (v25)
    {
      return 1;
    }
  }

  WordLattice::resortLatticeLinks(a2);
  return 0;
}

uint64_t *BackTraceItemCache::clearCache(uint64_t *this)
{
  v1 = *this;
  if (*this)
  {
    *(v1 + 8) = 0;
    v2 = *(v1 + 88);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        *(*(v1 + 80) + v3) = 0;
        v3 += 8;
      }

      while (v4 != v3);
    }

    return DgnPool::deleteAllWithoutDestroying((v1 + 24));
  }

  return this;
}

uint64_t BackTraceLatticeBuilder::seedAllRightGerms(uint64_t a1, unsigned int *a2, unsigned int a3, unint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, LMStats *a9)
{
  v83[0] = 0;
  v82[0] = 0;
  v82[1] = 0;
  if (*(a1 + 320))
  {
    Legal = Constraint::getLegal(*(a1 + 48), a2, 0, 0, v83, *(a1 + 328), a6, 0, 0, v82, 1);
    v13 = v83[0];
    if (v83[0])
    {
      v61 = (*(a1 + 480) + 24 * a3);
      v14 = *(v61 + 2);
      if (v14 && v14[2] != 1879048192)
      {
        v63 = BtNBestResult::maybeGetNBest<true>(a1 + 184);
        v72 = 1;
        v13 = v83[0];
      }

      else
      {
        v72 = 0;
        v63 = 0;
      }

      *a7 += v13;
      v60 = *(Legal + 8);
      if (*(Legal + 8))
      {
        v15 = 0;
        v69 = a3;
        v65 = v14;
        do
        {
          HistAndScore = AcousticContextScores::getHistAndScore(v61, v15);
          v68 = v15;
          v71 = HistAndScore;
          if (HistAndScore)
          {
            v17 = *(HistAndScore + 8);
            v18 = v72;
            if (v17 != 1879048192)
            {
              v18 = 1;
            }

            if (v18)
            {
              if (v17 == 1879048192)
              {
LABEL_16:
                v62 = 0;
                v19 = v15;
              }

              else
              {
                v19 = v15;
                v62 = BtNBestResult::maybeGetNBest<false>(a1 + 184, v15);
              }

              v20 = *Legal + 16 * v19;
              if (*(v20 + 8))
              {
                v21 = 0;
                v22 = 0;
                v70 = v20;
                do
                {
                  v23 = *v20;
                  v24 = (*v20 + v21);
                  v25 = VocMgr::smpVocMgr;
                  v26 = *v24 >> 25;
                  if (v26 == 126)
                  {
                    v27 = 0;
                  }

                  else
                  {
                    v27 = *(*(**VocMgr::smpVocMgr + 8 * v26) + 56);
                  }

                  v28 = v24[2];
                  if (v28 && *(*(v27 + 528) + 2 * v28) != 127)
                  {
                    *(v23 + v21 + 20) = -83886084;
                  }

                  v29 = *a2;
                  v30 = v29 >> 25 != 126 && a2[2] == v28;
                  if (v30 && *(*(*(*(**v25 + ((v29 >> 22) & 0x3F8)) + 56) + 528) + 2 * v28) != 127 || BackTraceLatticeBuilder::canSeedInLMContext(a1, a2, v24))
                  {
                    if (*(a1 + 512) == 1 && (v31 = *(*(a1 + 24) + 8), v32 = *(v31 + 36 * *(v23 + v21 + 32) + 32), CWIDAC::operator==(v31 + 36 * v32, a2)))
                    {
                      v33 = AcousticContextScores::getHistAndScore((*(a1 + 480) + 24 * v69), v68);
                      if (v33)
                      {
                        v34 = v32 == *v33;
                      }

                      else
                      {
                        v34 = 0;
                      }

                      v36 = v65 && v65[2] != 1879048192 && v32 == *v65;
                      if (v34 || v36)
                      {
                        v73 = 0;
                        v35 = 0;
                      }

                      else
                      {
                        v56 = v32 - *(a1 + 528);
                        v36 = 0;
                        v35 = v56 == CWIDCrumbBank::getHistory(*(a1 + 520), *(a1 + 328) - 1, *(*(a1 + 24) + 8) + 36 * v56, v68);
                        v73 = v56 == CWIDCrumbBank::getSilHistory(*(a1 + 520), *(a1 + 328) - 1, *(*(a1 + 24) + 8) + 36 * v56);
                      }
                    }

                    else
                    {
                      v73 = 0;
                      v35 = 0;
                      v36 = 1;
                    }

                    v74 = *(v23 + v21 + 26);
                    v81 = 0;
                    LMScore = 1879048192;
                    if (v71)
                    {
                      v38 = v71[2];
                      if (v38 != 1879048192)
                      {
                        a2[9] = v38;
                        v39 = *v71;
                        a2[8] = *v71;
                        *(a2 + 24) = *(*(a1 + 496) + v69);
                        if (*(a1 + 277))
                        {
                          v64 = 0;
                        }

                        else
                        {
                          v64 = v71[1];
                        }

                        v40 = a2[1];
                        v78 = *a2;
                        v79 = v40;
                        v80 = *(a2 + 2);
                        v75 = *(v23 + v21);
                        v76 = *(v23 + v21 + 4);
                        v77 = *(v24 + 2);
                        if (*(a1 + 512) == 1)
                        {
                          v41 = *(a1 + 528);
                          v42 = *(*(a1 + 24) + 8);
                          v43 = v42 + 36 * (v39 - v41);
                          v78 = *v43;
                          v79 = *(v43 + 4);
                          v80 = *(v43 + 8);
                          v44 = (v42 + 36 * (*(v23 + v21 + 32) - v41));
                          v75 = *v44;
                          v76 = v44[1];
                          v77 = *(v44 + 2);
                        }

                        LMScore = BackTraceLatticeBuilder::getLMScore(a1, &v78, &v75, &v81, a9);
                        ++*a8;
                        if (BackTraceLatticeBuilder::seedOneInContext(a1, 0, v24, a2, LMScore, v74, v64, v81, a4, a9, v62, v35))
                        {
                          goto LABEL_72;
                        }
                      }
                    }

                    if (v72)
                    {
                      v45 = *v24;
                      if (v45 >> 25 == 126 || (v46 = *(*(**VocMgr::smpVocMgr + ((v45 >> 22) & 0x3F8)) + 48), v47 = v45 & 0xFFFFFF, *(*(v46 + 32) + 2 * v47) != 1) || *(*(v46 + 592) + 2 * v47))
                      {
                        a2[9] = v65[2];
                        v48 = *v65;
                        a2[8] = *v65;
                        *(a2 + 24) = *(*(a1 + 496) + v69);
                        if (*(a1 + 277))
                        {
                          v49 = 0;
                        }

                        else
                        {
                          v49 = v65[1];
                        }

                        v50 = *(a1 + 512);
                        if (LMScore == 1879048192 || (v36 & v50) != 0)
                        {
                          v51 = a2[1];
                          v78 = *a2;
                          v79 = v51;
                          v80 = *(a2 + 2);
                          v75 = *(v23 + v21);
                          v76 = *(v23 + v21 + 4);
                          v77 = *(v24 + 2);
                          if (v50)
                          {
                            v52 = *(a1 + 528);
                            v53 = *(*(a1 + 24) + 8);
                            v54 = v53 + 36 * (v48 - v52);
                            v78 = *v54;
                            v79 = *(v54 + 4);
                            v80 = *(v54 + 8);
                            v55 = (v53 + 36 * (*(v23 + v21 + 32) - v52));
                            v75 = *v55;
                            v76 = v55[1];
                            v77 = *(v55 + 2);
                          }

                          LMScore = BackTraceLatticeBuilder::getLMScore(a1, &v78, &v75, &v81, a9);
                        }

                        ++*a8;
                        if (BackTraceLatticeBuilder::seedOneInContext(a1, 0, v24, a2, LMScore, v74, v49, v81, a4, a9, v63, v73))
                        {
LABEL_72:
                          v57 = 1;
                          goto LABEL_71;
                        }
                      }
                    }

                    v20 = v70;
                  }

                  ++v22;
                  v21 += 44;
                }

                while (v22 < *(v20 + 8));
              }
            }
          }

          else if (v72)
          {
            goto LABEL_16;
          }

          v15 = v68 + 1;
        }

        while (v60 > (v68 + 1));
      }
    }
  }

  v57 = 0;
LABEL_71:
  DgnIArray<Utterance *>::~DgnIArray(v82);
  return v57;
}

uint64_t BackTraceLatticeBuilder::seedFinalSilence(uint64_t a1, unsigned int *a2, unsigned int a3, unint64_t a4, int a5, _DWORD *a6, LMStats *a7)
{
  v14 = *a2;
  v15 = v14 & 0xFFFFFF;
  v16 = (v14 & 0xFFFFFF) == 0xFFFFF8 || (v14 & 0xFE000000) == -67108864;
  if (v16 || (v17 = *(*(**VocMgr::smpVocMgr + ((v14 >> 22) & 0x3F8)) + 48), *(*(v17 + 32) + 2 * v15) != 1) || *(*(v17 + 592) + 2 * v15))
  {
    CanSeedFinalSilence = Constraint::getCanSeedFinalSilence(*(a1 + 48), a2, *(a1 + 328));
  }

  else
  {
    CanSeedFinalSilence = 0;
  }

  v19 = *(a1 + 480) + 24 * a3;
  v20 = *(v19 + 8);
  if (v20 && *(v20 + 2) && (v21 = **v20, v21 != 255))
  {
    if (v21 == 254)
    {
      v22 = *(v19 + 16);
    }

    else
    {
      v22 = (**v19 + 12 * v21);
    }
  }

  else
  {
    v22 = 0;
  }

  if (*(a1 + 336) == -2)
  {
    return 0;
  }

  if (CanSeedFinalSilence)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (!a5 || !v22)
    {
      return result;
    }
  }

  if (v22[2] == 1879048192)
  {
    return 0;
  }

  v27 = *(a1 + 512) == 1 && (v24 = *(*(a1 + 24) + 8), v25 = *(v24 + 36 * *(a1 + 372) + 32), v26 = v24 + 36 * v25, CWIDAC::operator==(v26, a2)) && *(v26 + 28) == *(a1 + 328) && v25 != *v22;
  v28 = v22[2];
  v29 = *v22;
  a2[8] = *v22;
  a2[9] = v28;
  *(a2 + 24) = *(*(a1 + 496) + a3);
  if (*(a1 + 277))
  {
    v30 = 0;
  }

  else
  {
    v30 = v22[1];
  }

  v31 = a2[1];
  v36 = *a2;
  v37 = v31;
  v38 = *(a2 + 2);
  if (*(a1 + 512) == 1)
  {
    v32 = *(*(a1 + 24) + 8) + 36 * (v29 - *(a1 + 528));
    v36 = *v32;
    v37 = *(v32 + 4);
    v38 = *(v32 + 8);
  }

  LMScore = BackTraceLatticeBuilder::getLMScore(a1, &v36, a1 + 340, 0, a7);
  v34 = *(a1 + 366);
  ++*a6;
  v35 = BtNBestResult::maybeGetNBest<false>(a1 + 184, 0);
  return BackTraceLatticeBuilder::seedOneInContext(a1, 0, (a1 + 340), a2, LMScore, v34, v30, 0, a4, a7, v35, v27);
}

void *BtNBestResult::maybeGetNBest<true>(uint64_t a1)
{
  if (*(a1 + 93) != 1 || *(a1 + 8) == -50331650 || (*(a1 + 94) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 92) == 1)
  {
    return (a1 + 72);
  }

  NBest = NetNBestAlg::getNBest(*a1, **(*(a1 + 32) + 16), *(*(*(a1 + 32) + 16) + 4), *(*(*(a1 + 32) + 16) + 8), *(a1 + 88));
  v2 = (a1 + 72);
  v5 = *(NBest + 8);
  v6 = *(a1 + 84);
  if (v5 > v6)
  {
    DgnArray<RuleDesc>::reallocElts(a1 + 72, v5 - v6, 0);
  }

  v7 = *(a1 + 80);
  if (v7 < v5)
  {
    v8 = v5 - v7;
    v9 = 12 * v7;
    do
    {
      v10 = *v2 + v9;
      *v10 = 0x70000000FFFFFFFELL;
      *(v10 + 8) = 1879048192;
      v9 += 12;
      --v8;
    }

    while (v8);
  }

  *(a1 + 80) = v5;
  if (v5)
  {
    v11 = 0;
    do
    {
      v12 = (*NBest + v11);
      v13 = *v12;
      LODWORD(v12) = v12[2];
      v14 = (*v2 + v11);
      v14[1] = -1;
      v14[2] = v12;
      *v14 = v13;
      v11 += 12;
    }

    while (12 * v5 != v11);
  }

  *(a1 + 92) = 1;
  return v2;
}

uint64_t AcousticContextScores::getHistAndScore(AcousticContextScores *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 8) <= a2)
  {
    return 0;
  }

  v3 = *(*v2 + a2);
  if (v3 == 255)
  {
    return 0;
  }

  if (v3 == 254)
  {
    return *(this + 2);
  }

  return **this + 12 * v3;
}

uint64_t BtNBestResult::maybeGetNBest<false>(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 93) != 1 || *(a1 + 8) == -50331650 || (*(a1 + 94) & 1) != 0)
  {
    return 0;
  }

  v6 = a2 >> 5;
  v7 = 1 << a2;
  if ((*(*(a1 + 40) + 4 * (a2 >> 5)) & (1 << a2)) != 0)
  {
    return *(a1 + 56) + 16 * a2;
  }

  HistAndScore = AcousticContextScores::getHistAndScore(*(a1 + 32), a2);
  NBest = NetNBestAlg::getNBest(*a1, *HistAndScore, HistAndScore[1], HistAndScore[2], *(a1 + 88));
  v3 = *(a1 + 56) + 16 * a2;
  v10 = *(NBest + 8);
  v11 = *(v3 + 12);
  if (v10 > v11)
  {
    DgnArray<RuleDesc>::reallocElts(v3, v10 - v11, 0);
  }

  v12 = *(v3 + 8);
  if (v12 < v10)
  {
    v13 = v10 - v12;
    v14 = 12 * v12;
    do
    {
      v15 = *v3 + v14;
      *v15 = 0x70000000FFFFFFFELL;
      *(v15 + 8) = 1879048192;
      v14 += 12;
      --v13;
    }

    while (v13);
  }

  *(v3 + 8) = v10;
  if (v10)
  {
    v16 = 0;
    do
    {
      v17 = (*NBest + v16);
      v18 = *v17;
      LODWORD(v17) = v17[2];
      v19 = (*v3 + v16);
      v19[1] = -1;
      v19[2] = v17;
      *v19 = v18;
      v16 += 12;
    }

    while (12 * v10 != v16);
  }

  *(*(a1 + 40) + 4 * v6) |= v7;
  return v3;
}

BOOL BackTraceLatticeBuilder::canSeedInLMContext(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = a3[4];
  Root = VocMgr::getRoot(VocMgr::smpVocMgr, *a2);
  if (Root != -50331650 && v6 != -83886084 && v6 != Root)
  {
    return 0;
  }

  v22 = 0;
  v23 = 0;
  v10 = *a3;
  if (v10 >> 25 == 126 || (v10 & 0xFFFFFF) == 0xFFFFF8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(*(*(*(**VocMgr::smpVocMgr + ((v10 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v10 & 0xFFFFFF));
  }

  v13 = v11 + 1;
  v24 = 0;
  HIDWORD(v23) = realloc_array(0, &v24, (16 * v13), 0, 0, 1) >> 4;
  v22 = v24;
  v14 = v23;
  if (v23 <= v13)
  {
    if (v23 <= v11)
    {
      v16 = v11 - v23 + 1;
      v17 = 2 * v23;
      do
      {
        v18 = &v22[v17];
        *v18 = 0;
        v18[1] = 0;
        v17 += 2;
        --v16;
      }

      while (v16);
    }
  }

  else if (v23 > v13)
  {
    v15 = 16 * v23 - 16;
    do
    {
      --v14;
      DgnIArray<Utterance *>::~DgnIArray(v22 + v15);
      v15 -= 16;
    }

    while (v14 > v13);
  }

  LODWORD(v23) = v11 + 1;
  v19 = &v22[2 * v11];
  v20 = *(v19 + 2);
  if (v20 == *(v19 + 3))
  {
    DgnArray<RecogGerm>::reallocElts(&v22[2 * v11], 1, 1);
    v20 = *(v19 + 2);
  }

  RecogGerm::operator=(*v19 + 44 * v20, a3);
  ++*(v19 + 2);
  SearchLMScorer::setContext(*(a1 + 56), 0xFAFFFFFC, a2, &v22, 0, 0, 0, a3[5] != -83886084, a3[5], 0xFAFFFFFC);
  v12 = RecogGerm::operator==(v22[2 * v11], a3);
  DgnArray<DgnArray<ParseToken>>::releaseAll(&v22);
  return v12;
}

void sub_2627599A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnArray<DgnArray<ParseToken>>::releaseAll(va);
  _Unwind_Resume(a1);
}

void BackTraceLatticeBuilder::maybeEnableNBestGeneration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && (*(a2 + 16) || *(a2 + 32)))
  {
    if (*(a1 + 512) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/btlat.cpp", 2797, "kernel/btlat", 1, "%.500s", "TrigramsWithBigramLattice");
    }

    if ((*(a1 + 400) & 0x80000000) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/btlat.cpp", 2800, "kernel/btlat", 1, "%.500s", "LatticeBestCrumbDistancemaxFrames");
    }

    *(a1 + 277) = 1;
    v6 = *(a1 + 424);
    *(a1 + 278) = v6;
    if ((v6 & 1) == 0)
    {

      BtNBestResult::init((a1 + 184), a2, a3);
    }
  }
}

_DWORD *BackTraceLatticeBuilder::pruneLinks(_DWORD *this, WordLattice *a2, int a3, double a4)
{
  LODWORD(a4) = this[99];
  v4 = ((this[1] * a3) / 1000000.0 * *&a4);
  if (*(a2 + 26) > v4)
  {
    v6 = this;
    v7 = this[138];
    v26 = 0;
    v27 = 0;
    v8 = (v7 + 1);
    if (v7 == -1)
    {
      v9 = 0;
      LODWORD(v27) = v8;
    }

    else
    {
      v28 = 0;
      v10 = realloc_array(0, &v28, 4 * (v7 + 1), 0, 0, 1);
      v9 = v28;
      v26 = v28;
      LODWORD(v27) = v8;
      HIDWORD(v27) = v10 >> 2;
      v11 = (v8 + 3) & 0x1FFFFFFFCLL;
      v12 = vdupq_n_s64(v8 - 1);
      v13 = xmmword_26286BF80;
      v14 = xmmword_26286B680;
      v15 = v28 + 8;
      v16 = vdupq_n_s64(4uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v12, v14));
        if (vuzp1_s16(v17, *v12.i8).u8[0])
        {
          *(v15 - 2) = 0;
        }

        if (vuzp1_s16(v17, *&v12).i8[2])
        {
          *(v15 - 1) = 0;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
        {
          *v15 = 0;
          v15[1] = 0;
        }

        v13 = vaddq_s64(v13, v16);
        v14 = vaddq_s64(v14, v16);
        v15 += 4;
        v11 -= 4;
      }

      while (v11);
    }

    v18 = (v6 + 134);
    if (v6[136])
    {
      v19 = 0;
      v20 = *v18;
      while (1)
      {
        v21 = *(v20 + 4 * v19);
        v22 = v9;
        if (v21 < 1)
        {
          goto LABEL_17;
        }

        if (v21 != 0x7FFFFFFF)
        {
          break;
        }

LABEL_18:
        if (++v19 >= v6[136])
        {
          goto LABEL_19;
        }
      }

      v22 = &v9[v21];
LABEL_17:
      ++*v22;
      goto LABEL_18;
    }

LABEL_19:
    if (v8)
    {
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = v9[v23];
        if (v25)
        {
          v24 += v25;
          if (v24 >= v4)
          {
            break;
          }
        }

        if (v8 == ++v23)
        {
          return DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
        }
      }

      Lattice<WordLatticeLC>::pruneLinks(a2, v23, v18);
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  }

  return this;
}

void sub_262759CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Lattice<WordLatticeLC>::pruneLinks(uint64_t a1, int a2, void *a3)
{
  v23 = 0;
  v24 = 0;
  v4 = *(a1 + 104);
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    for (i = 0; i < v4; ++i)
    {
      v10 = *(*(a1 + 96) + 4 * i);
      if (*(*a3 + 4 * *(*(a1 + 128) + 136 * v10 + 112)) > a2)
      {
        if (v8 == HIDWORD(v24))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
          v8 = v24;
          v7 = v23;
        }

        *(v7 + 4 * v8) = v10;
        v8 = v24 + 1;
        LODWORD(v24) = v24 + 1;
        v4 = *(a1 + 104);
      }
    }
  }

  while (v24)
  {
    v11 = *(v23 + 4 * (v24 - 1));
    LODWORD(v24) = v24 - 1;
    Lattice<WordLatticeLC>::disconnectAndDestroyLink(a1, v11);
  }

  v21 = 0;
  v22 = 0;
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *(a1 + 56);
    v17 = v16;
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(*(a1 + 32) + 4 * v15);
        do
        {
          if (v19 == *(*(a1 + 48) + 4 * v18))
          {
            if (v14 == HIDWORD(v22))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
              v14 = v22;
              v13 = v21;
            }

            *(v13 + 4 * v14) = v19;
            v14 = v22 + 1;
            LODWORD(v22) = v22 + 1;
            v16 = *(a1 + 56);
          }

          ++v18;
        }

        while (v18 < v16);
        v12 = *(a1 + 40);
        v17 = v16;
      }

      ++v15;
    }

    while (v15 < v12);
    if (v14)
    {
      Lattice<WordLatticeLC>::destroyNodesUsingGcMarks(a1, &v21);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
}

void sub_262759E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

WordLattice *BackTraceLatticeBuilder::makeLattice(BackTraceLatticeBuilder *this, __int16 a2, PelScorer *a3, int a4, char a5, int a6, LatticeStats *a7, int a8, unsigned int a9, unsigned int a10, char a11)
{
  *(this + 107) = a8;
  *(this + 1) = CWIDCrumbBank::getLastFrame(*(this + 2)) + 1;
  BackTraceLatticeBuilder::maybeEnableNBestGeneration(this, *(this + 4), *(this + 3));
  *(this + 83) = 0;
  v16 = *(this + 1);
  v17 = *(this + 77);
  if (v16 > v17)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 296, v16 - v17, 0);
  }

  v18 = *(this + 76);
  if (v18 <= v16)
  {
    if (v18 < v16)
    {
      v21 = v16 - v18;
      v22 = 16 * v18;
      do
      {
        v23 = (*(this + 37) + v22);
        *v23 = 0;
        v23[1] = 0;
        v22 += 16;
        --v21;
      }

      while (v21);
    }
  }

  else if (v18 > v16)
  {
    v19 = v18;
    v20 = 16 * v18 - 16;
    do
    {
      --v19;
      DgnIArray<Utterance *>::~DgnIArray(*(this + 37) + v20);
      v20 -= 16;
    }

    while (v19 > v16);
  }

  *(this + 76) = v16;
  if (v16)
  {
    v24 = (v16 + 3) & 0x1FFFFFFFCLL;
    v25 = vdupq_n_s64(v16 - 1);
    v26 = xmmword_26286BF80;
    v27 = xmmword_26286B680;
    v28 = (*(this + 37) + 40);
    v29 = vdupq_n_s64(4uLL);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v25, v27));
      if (vuzp1_s16(v30, *v25.i8).u8[0])
      {
        *(v28 - 8) = 0;
      }

      if (vuzp1_s16(v30, *&v25).i8[2])
      {
        *(v28 - 4) = 0;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, *&v26))).i32[1])
      {
        *v28 = 0;
        v28[4] = 0;
      }

      v26 = vaddq_s64(v26, v29);
      v27 = vaddq_s64(v27, v29);
      v28 += 16;
      v24 -= 4;
    }

    while (v24);
  }

  v67 = 1879048192;
  v68 = -2;
  CWIDCrumbBank::getRightSilenceInfo(*(this + 2), *(this + 1) - 1, &v68, &v67);
  if (a5)
  {
    v31 = *(*(this + 3) + 8) + 36 * *(*(*(this + 3) + 8) + 36 * v68 + 32);
    v65 = 0x3FFFFCFFFFFDLL;
    v66 = xmmword_26286CC40;
    LMScore = BackTraceLatticeBuilder::getLMScore(this, v31, &v65, 0, (a7 + 48));
    v33 = v67 + LMScore;
    v67 += LMScore;
  }

  else
  {
    v33 = v67;
  }

  *(this + 3) = v33;
  *(this + 138) = 0x80000000;
  if (a6)
  {
    v34 = *(this + 98);
    if (v34 < 0)
    {
      v36 = fround(*(this + 48), 3);
      if (v67 < 0)
      {
        v36 = -v36;
      }

      v35 = ((v36 + *(this + 1)) * v67 / *(this + 1));
    }

    else
    {
      v35 = v34 + v33;
    }
  }

  else
  {
    v35 = 1879048192;
  }

  *(this + 2) = v35;
  v37 = *(this + 1) - *(*(this + 2) + 48);
  v38 = MemChunkAlloc(0x120uLL, 0);
  WordLattice::WordLattice(v38, v37, a9, a10, a2, *(this + 64), a11, 0, *this != 1);
  BackTraceLatticeBuilder::bootStrap(this, v38, v39, 0, v40);
  v41 = BackTraceLatticeBuilder::stackDecode(this, v38, a4, a7, a7 + 1, a7 + 2, a7 + 3, (a7 + 48));
  if (v41)
  {
    DgnDelete<WordLattice>(v38);
    v38 = MemChunkAlloc(0x120uLL, 0);
    WordLattice::WordLattice(v38, v37, a9, a10, a2, *(this + 64), a11, 1, *this != 1);
    if (*(this + 425) == 1)
    {
      Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::removeAll(*(this + 70));
    }

    *(this + 424) = 1;
    *(this + 277) = 0;
    *(this + 51) = 0;
    *(this + 52) = 0;
    v43 = *(this + 76);
    if (v43 >= 1)
    {
      v44 = 16 * v43 - 16;
      do
      {
        DgnIArray<Utterance *>::~DgnIArray(*(this + 37) + v44);
        v44 -= 16;
      }

      while (v44 != -16);
    }

    v45 = 0;
    *(this + 76) = 0;
    *(this + 83) = 0;
    v46 = *(this + 1);
    v47 = *(this + 77);
    if (v46 <= v47 || (DgnArray<DgnPrimArray<double>>::reallocElts(this + 296, v46 - v47, 0), v45 = *(this + 76), v45 <= v46))
    {
      if (v45 < v46)
      {
        v50 = v46 - v45;
        v51 = 16 * v45;
        do
        {
          v52 = (*(this + 37) + v51);
          *v52 = 0;
          v52[1] = 0;
          v51 += 16;
          --v50;
        }

        while (v50);
      }
    }

    else
    {
      if (v45 <= v46)
      {
        *(this + 76) = v46;
        goto LABEL_46;
      }

      v48 = v45;
      v49 = 16 * v45 - 16;
      do
      {
        --v48;
        DgnIArray<Utterance *>::~DgnIArray(*(this + 37) + v49);
        v49 -= 16;
      }

      while (v48 > v46);
    }

    *(this + 76) = v46;
    if (!v46)
    {
LABEL_54:
      (*(**(this + 35) + 24))(*(this + 35));
      *(*(this + 35) + 16) = 0;
      BackTraceItemCache::clearCache(this + 36);
      BackTraceLatticeBuilder::bootStrap(this, v38, v60, 0, v61);
      BackTraceLatticeBuilder::stackDecode(this, v38, a4, a7, a7 + 1, a7 + 2, a7 + 3, (a7 + 48));
      goto LABEL_55;
    }

LABEL_46:
    v53 = (v46 + 3) & 0x1FFFFFFFCLL;
    v54 = vdupq_n_s64(v46 - 1);
    v55 = xmmword_26286BF80;
    v56 = xmmword_26286B680;
    v57 = (*(this + 37) + 40);
    v58 = vdupq_n_s64(4uLL);
    do
    {
      v59 = vmovn_s64(vcgeq_u64(v54, v56));
      if (vuzp1_s16(v59, *v54.i8).u8[0])
      {
        *(v57 - 8) = 0;
      }

      if (vuzp1_s16(v59, *&v54).i8[2])
      {
        *(v57 - 4) = 0;
      }

      if (vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, *&v55))).i32[1])
      {
        *v57 = 0;
        v57[4] = 0;
      }

      v55 = vaddq_s64(v55, v58);
      v56 = vaddq_s64(v56, v58);
      v57 += 16;
      v53 -= 4;
    }

    while (v53);
    goto LABEL_54;
  }

LABEL_55:
  if (*(this + 99))
  {
    v62 = v41;
  }

  else
  {
    v62 = 1;
  }

  if ((v62 & 1) == 0)
  {
    BackTraceLatticeBuilder::pruneLinks(this, v38, a10, v42);
  }

  WordLattice::getLatticeStats(v38, a7 + 4, a7 + 5, a7 + 3, a7 + 4);
  *(a7 + 10) += *(this + 20);
  Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::removeAll(this + 72);
  (*(**(this + 35) + 24))(*(this + 35));
  Lattice<WordLatticeLC>::gc(v38);
  Lattice<WordLatticeLC>::topSortInternal(v38, 0);
  return v38;
}

uint64_t Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 12);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 52);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

void Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::removeAll(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(a1 + 96);
          if (v7)
          {
            v7(v5 + 12);
          }

          v8 = *(a1 + 104);
          if (v8)
          {
            v8(v5 + 60);
          }

          MrecInitModule_sdpres_sdapi();
          *v5 = *(a1 + 32);
          *(a1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(a1 + 80);
        v2 = *(a1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(a1 + 8) = 0;
}

WordLattice *BackTraceLatticeBuilder::makeSilentLattice(BackTraceLatticeBuilder *this, int a2, int a3, int a4, int a5, uint64_t a6, LatticeStats *a7)
{
  v7 = a7;
  v9 = a5;
  v12 = this;
  if (a2 == -16)
  {
    v13 = a5;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = a2;
  }

  else
  {
    v14 = 2;
  }

  v15 = MemChunkAlloc(0x120uLL, 0);
  WordLattice::WordLattice(v15, v14, a3, a4, v12, v9, v7, 1, 1);
  Node = Lattice<WordLatticeLC>::createNode(v16);
  v18 = Lattice<WordLatticeLC>::createNode(v15);
  v19 = Lattice<WordLatticeLC>::createNode(v15);
  v25 = 0x3FFFFCFFFFFDLL;
  v20 = v14 > 1;
  v26 = xmmword_26286CC40;
  v21 = v14 - v20;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  WordLatticeLC::WordLatticeLC(v32, &v25, v14 - v20, v20, 0, v30);
  Link = Lattice<WordLatticeLC>::createLink(v15, v18, Node, v32);
  Lattice<WordLatticeLC>::connectInLinkUnordered(v15, Link);
  Lattice<WordLatticeLC>::connectOutLinkUnordered(v15, Link);
  v28[0] = -50331650;
  v28[1] = 0x3FFF;
  v29 = xmmword_26286CC40;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  WordLatticeLC::WordLatticeLC(v30, v28, 0, v21, 0, &v25);
  v23 = Lattice<WordLatticeLC>::createLink(v15, v19, v18, v30);
  Lattice<WordLatticeLC>::connectInLinkUnordered(v15, v23);
  Lattice<WordLatticeLC>::connectOutLinkUnordered(v15, v23);
  WordLattice::getLatticeStats(v15, (a6 + 16), (a6 + 20), (a6 + 24), (a6 + 32));
  Lattice<WordLatticeLC>::topSortInternal(v15, 0);
  WordLatticeLC::~WordLatticeLC(v30);
  WordLatticeLC::~WordLatticeLC(v32);
  return v15;
}

void StringGlobalParam::~StringGlobalParam(StringGlobalParam *this)
{
  StringGlobalParamBase::~StringGlobalParamBase(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t NetNBestAlg::NetNBestAlg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  DgnString::DgnString((a1 + 16));
  *(a1 + 136) = 0;
  *(a1 + 32) = 0xC00000010;
  *(a1 + 64) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  BitArray::setSize((a1 + 16), *(a3 + 16));
  return a1;
}

void sub_26275A888(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPriorityQueue<NBestQueueItem>::~DgnPriorityQueue(v2);
  BitArray::~BitArray((v1 + 16));
  _Unwind_Resume(a1);
}

void DgnPriorityQueue<NBestQueueItem>::~DgnPriorityQueue(uint64_t a1)
{
  for (; *(a1 + 64); *(a1 + 8) = Min)
  {
    Min = DgnHeap<NBestQueueItem>::extractMin((a1 + 56));
    *Min = *(a1 + 8);
  }

  DgnIArray<Utterance *>::~DgnIArray(a1 + 56);

  DgnPool::~DgnPool(a1);
}

uint64_t DgnHeap<NBestQueueItem>::extractMin(uint64_t **a1)
{
  v1 = *(a1 + 2) - 1;
  v2 = **a1;
  if (v1 < 1)
  {
    *(a1 + 2) = 0;
  }

  else
  {
    **a1 = (*a1)[v1];
    *(a1 + 2) = v1;
    DgnHeap<NBestQueueItem>::heapifyDown(a1, 0);
  }

  return v2;
}

uint64_t DgnHeap<NBestQueueItem>::heapifyDown(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = (2 * a2) | 1u;
    if (v3 >= v2 || *(*(*a1 + 8 * v3) + 8) >= *(*(*a1 + 8 * a2) + 8))
    {
      v3 = a2;
    }

    v4 = (2 * a2 + 2);
    if (v4 >= v2 || *(*(*a1 + 8 * v4) + 8) >= *(*(*a1 + 8 * v3) + 8))
    {
      v4 = v3;
    }

    if (v4 == a2)
    {
      break;
    }

    v5 = *(*a1 + 8 * a2);
    *(*a1 + 8 * a2) = *(*a1 + 8 * v4);
    *(*a1 + 8 * v4) = v5;
    a2 = v4;
  }

  return a2;
}

uint64_t HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523AF0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 20;
  }

  else
  {
    v7 = 28;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26275AABC(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::~HashKEV(uint64_t a1)
{
  HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287523AF0;
  if (*(a1 + 8))
  {
    HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 2);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

void BtNBestResult::~BtNBestResult(NetNBestAlg **this)
{
  DgnDelete<NetNBestAlg>(*this);
  DgnIArray<Utterance *>::~DgnIArray((this + 9));
  DgnArray<DgnArray<ParseToken>>::releaseAll((this + 7));
  BitArray::~BitArray((this + 5));
}

void SearchLMContext::~SearchLMContext(SearchLMContext *this)
{
  if (*(this + 8) == 1)
  {
    SearchLMScorer::unsetContext(*this);
  }
}

uint64_t *HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::findBucket(uint64_t a1, _DWORD *a2)
{
  v4 = BackTraceItem::computeHash(a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (-1640531527 * v4) >> -v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  v8 = *v7;
  if (*v7)
  {
    v9 = v4;
    do
    {
      v10 = v8;
      if (*(v8 + 8) == v9 && BackTraceItem::operator==(a2, (*(**(v8 + 16) + 16 * *(v8 + 24)) + (*(v8 + 28) << 6))))
      {
        break;
      }

      v8 = *v10;
      v7 = v10;
    }

    while (*v10);
  }

  return v7;
}

BOOL BackTraceItem::operator==(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = CWIDAC::operator==(a1, a2);
  if (result)
  {
    return a1[6] == a2[6] && a1[7] == a2[7] && a1[8] == a2[8] && a1[9] == a2[9] && a1[10] == a2[10] && a1[11] == a2[11] && a1[12] == a2[12] && a1[13] == a2[13] && a1[14] == a2[14];
  }

  return result;
}

uint64_t HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  if (*(a1 + 8) >= v4 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v4);
  }

  result = BackTraceItem::computeHash((*(**a2 + 16 * *(a2 + 8)) + (*(a2 + 12) << 6)));
  v6 = result;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (-1640531527 * result) >> -v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 80);
  v10 = *(a1 + 32);
  if (!v10)
  {
    result = DgnPool::addChunk((a1 + 24));
    v10 = *(a1 + 32);
  }

  v11 = (v9 + 8 * v8);
  *(a1 + 32) = *v10;
  *(v10 + 8) = 0;
  *(v10 + 16) = *a2;
  *(v10 + 8) = v6;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v10 = *v11;
  }

  else
  {
    *v10 = 0;
    v12 = *v11;
    if (*v11)
    {
      do
      {
        v11 = v12;
        v12 = *v12;
      }

      while (v12);
    }
  }

  *v11 = v10;
  return result;
}

BOOL RecogGerm::operator==(uint64_t a1, uint64_t a2)
{
  result = CWIDAC::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 26) == *(a2 + 26) && *(a1 + 28) == *(a2 + 28) && *(a1 + 30) == *(a2 + 30) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

void NetNBestAlg::~NetNBestAlg(NetNBestAlg *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPriorityQueue<NBestQueueItem>::~DgnPriorityQueue(this + 32);
  BitArray::~BitArray((this + 16));
}

uint64_t BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::BtNodeCacheType(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  *a1 = &unk_287527DA0;
  HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::HashNCHV(a1 + 40, 0, 128);
  return a1;
}

void sub_26275B05C(_Unwind_Exception *a1)
{
  *v1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void *BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527DA0;
  HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));
  return a1;
}

void BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527DA0;
  HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));

  JUMPOUT(0x26672B1B0);
}

uint64_t BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::sizeObject(uint64_t a1, uint64_t a2)
{
  v4 = sizeObject<unsigned int>(a1 + 8, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1;
  }

  return v7 + Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(a1 + 40, a2) + v6;
}

uint64_t BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::findOrCreateNode(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, char a5, int *a6, char *a7)
{
  v13 = *a4;
  v14 = v13 & 0xFE000000;
  if (*(a1 + 32) != 1 || v14 == -100663296 || v14 == -67108864)
  {
    goto LABEL_9;
  }

  v26 = *(*(**VocMgr::smpVocMgr + ((v13 >> 22) & 0x3F8)) + 48);
  v27 = *(a1 + 24);
  v28 = (*(v27 + 68) & 0xFFFFFFFD) != 0 || Constraint::isCoartAllowedForState(v27, a4);
  v29 = v13 & 0xFFFFFF;
  if ((v13 & 0xFFFFFF) != 0xFFFFF8 && v28 && (*(*(v26 + 592) + 2 * v29) || *(*(v26 + 608) + 2 * v29)))
  {
    if (*(a1 + 33))
    {
      goto LABEL_26;
    }

LABEL_9:
    v17 = 0;
    v18 = -83886084;
    goto LABEL_10;
  }

  if (!v28)
  {
    goto LABEL_9;
  }

LABEL_26:
  v18 = *a6;
  v17 = 1;
LABEL_10:
  v19 = a4[1];
  v31[0] = *a4;
  v31[1] = v19;
  v32 = *(a4 + 2);
  v33 = v18;
  v34 = a3;
  v35 = v17 & a5;
  Bucket = HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::findBucket(a1 + 40, v31);
  if (*Bucket)
  {
    v21 = 0;
    p_Node = (*Bucket + 44);
  }

  else
  {
    Node = Lattice<WordLatticeLC>::createNode(a2);
    v23 = *(a1 + 16);
    if (v23 == *(a1 + 20))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 8, 1, 1);
      v23 = *(a1 + 16);
    }

    *(*(a1 + 8) + 4 * v23) = 1879048192;
    ++*(a1 + 16);
    p_Node = &Node;
    HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::add(a1 + 40, v31, &Node);
    v21 = 1;
  }

  result = *p_Node;
  *a7 = v21;
  return result;
}

uint64_t HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::HashNCHV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875234E0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v10[1] = 0x3FFF;
  v11 = xmmword_26286CC40;
  v12 = 0xFFFFFFF0FAFFFFFFLL;
  v13 = 0;
  LOBYTE(a3) = gShadowDiagnosticShowIdealizedObjectSizes;
  v7 = sizeObject(v10, 2);
  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v7 + v8 + 13;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26275B4C0(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::~HashNCHV(uint64_t a1)
{
  HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::~HashNCHV(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_2875234E0;
  if (*(a1 + 8))
  {
    HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 1);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 44);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

unint64_t HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::add(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::upSize(a1, 2 * v6);
  }

  result = CWIDAC::computeHash(a2);
  HIDWORD(v8) = result;
  LODWORD(v8) = result;
  HIDWORD(v8) = (v8 >> 19) + *(a2 + 28);
  LODWORD(v8) = HIDWORD(v8);
  HIDWORD(v8) = (v8 >> 19) + *(a2 + 32);
  LODWORD(v8) = HIDWORD(v8);
  v9 = *(a1 + 16);
  v10 = (-1640531527 * ((v8 >> 19) + *(a2 + 24))) >> -v9;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 32);
  if (!v13)
  {
    result = DgnPool::addChunk((a1 + 24));
    v13 = *(a1 + 32);
  }

  v14 = (v12 + 8 * v11);
  *(a1 + 32) = *v13;
  *(v13 + 8) = *a2;
  *(v13 + 12) = *(a2 + 4);
  *(v13 + 16) = *(a2 + 8);
  v15 = *(a2 + 24);
  *(v13 + 40) = *(a2 + 32);
  *(v13 + 32) = v15;
  *(v13 + 44) = *a3;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v13 = *v14;
  }

  else
  {
    *v13 = 0;
    v16 = *v14;
    if (*v14)
    {
      do
      {
        v14 = v16;
        v16 = *v16;
      }

      while (v16);
    }
  }

  *v14 = v13;
  return result;
}

void *HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::findBucket(uint64_t a1, uint64_t a2)
{
  HIDWORD(v4) = CWIDAC::computeHash(a2);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 28);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 32);
  LODWORD(v4) = HIDWORD(v4);
  v5 = *(a1 + 16);
  v6 = (-1640531527 * ((v4 >> 19) + *(a2 + 24))) >> -v5;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 && !BtTrigramNodeHashKey::equalKeys((v7 + 1), a2));
  return v8;
}

BOOL BtTrigramNodeHashKey::equalKeys(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  result = CWIDAC::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 32) == *(a2 + 32) && *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

uint64_t HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::upSize(uint64_t a1, int a2)
{
  v16 = 0;
  RoundUpToPowerOf2(a2, &v16);
  v14 = 0;
  v15 = 0;
  DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice(&v14, (a1 + 80), 0, *(a1 + 88));
  v4 = *(a1 + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  v5 = v16;
  *(a1 + 12) = a2;
  *(a1 + 16) = v5;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  v6 = v15;
  if (v15)
  {
    v7 = 0;
    do
    {
      v8 = *(v14 + 8 * v7);
      if (v8)
      {
        do
        {
          v9 = *v8;
          HIDWORD(v10) = CWIDAC::computeHash((v8 + 1));
          LODWORD(v10) = HIDWORD(v10);
          HIDWORD(v10) = *(v8 + 9) + (v10 >> 19);
          LODWORD(v10) = HIDWORD(v10);
          HIDWORD(v10) = (v10 >> 19) + *(v8 + 40);
          LODWORD(v10) = HIDWORD(v10);
          v11 = (-1640531527 * ((v10 >> 19) + *(v8 + 8))) >> -v16;
          if (!v16)
          {
            v11 = 0;
          }

          v12 = *(a1 + 80);
          *v8 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v8;
          v8 = v9;
        }

        while (v9);
        v6 = v15;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v14);
}

void sub_26275B988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::BtNodeCacheType(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  *a1 = &unk_287527E60;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::HashNCHV(a1 + 40, 0, 128);
  return a1;
}

void sub_26275BA08(_Unwind_Exception *a1)
{
  *v1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void *BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527E60;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));
  return a1;
}

void BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527E60;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));

  JUMPOUT(0x26672B1B0);
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::sizeObject(uint64_t a1, uint64_t a2)
{
  v4 = sizeObject<unsigned int>(a1 + 8, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1;
  }

  return v7 + Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(a1 + 40, a2) + v6;
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::findOrCreateNode(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v9 = a5;
  if (*(a1 + 32) != 1 || ((v14 = *a4, (v14 & 0xFE000000) != 0xFA000000) ? (v15 = (v14 & 0xFE000000) == -67108864) : (v15 = 1), v15))
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v22 = *(*(**VocMgr::smpVocMgr + ((v14 >> 22) & 0x3F8)) + 48);
    v23 = *(a1 + 24);
    v16 = (*(v23 + 68) & 0xFFFFFFFD) != 0 || Constraint::isCoartAllowedForState(v23, a4);
    v24 = v14 & 0xFFFFFF;
    if ((v14 & 0xFFFFFF) != 0xFFFFF8 && v16)
    {
      if (*(*(v22 + 592) + 2 * v24) || *(*(v22 + 608) + 2 * v24))
      {
        LOBYTE(v16) = *(a1 + 33);
      }

      else
      {
        LOBYTE(v16) = 1;
      }
    }
  }

  BtNodeKeyGenerator<false,true>::getKey(a3, a4, v9, a6, v16 & 1, v26);
  Bucket = HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::findBucket(a1 + 40, v26);
  if (*Bucket)
  {
    v18 = 0;
    p_Node = (*Bucket + 40);
  }

  else
  {
    Node = Lattice<WordLatticeLC>::createNode(a2);
    v20 = *(a1 + 16);
    if (v20 == *(a1 + 20))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 8, 1, 1);
      v20 = *(a1 + 16);
    }

    *(*(a1 + 8) + 4 * v20) = 1879048192;
    ++*(a1 + 16);
    p_Node = &Node;
    HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::add(a1 + 40, v26, &Node);
    v18 = 1;
  }

  result = *p_Node;
  *a7 = v18;
  return result;
}

uint64_t HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::HashNCHV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523508;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v10[1] = 0x3FFF;
  v11 = xmmword_26286CC40;
  v12 = -16;
  v13 = 0;
  LOBYTE(a3) = gShadowDiagnosticShowIdealizedObjectSizes;
  v7 = sizeObject(v10, 2);
  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v7 + v8 + 11;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26275BE58(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV(uint64_t a1)
{
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287523508;
  if (*(a1 + 8))
  {
    HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 1);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 5);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t BtNodeKeyGenerator<false,true>::getKey@<X0>(uint64_t result@<X0>, int *a2@<X1>, char a3@<W2>, unsigned int *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = 0;
  if (a5)
  {
    if ((a3 & 1) == 0)
    {
      v11 = *a4;
      if ((v6 & 0xFE000000) != 0xFC000000 && (v11 & 0xFE000000) != -67108864)
      {
        v10 = *(*(*(*(**VocMgr::smpVocMgr + ((v11 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v11 & 0xFFFFFF));
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a6 = v6;
  *(a6 + 4) = v7;
  *(a6 + 6) = v8;
  *(a6 + 8) = v9;
  *(a6 + 24) = result;
  *(a6 + 28) = v10;
  *(a6 + 30) = a3;
  return result;
}

unint64_t HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::add(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::upSize(a1, 2 * v6);
  }

  result = CWIDAC::computeHash(a2);
  HIDWORD(v8) = result;
  LODWORD(v8) = result;
  HIDWORD(v8) = (v8 >> 19) + *(a2 + 24);
  LODWORD(v8) = HIDWORD(v8);
  HIDWORD(v8) = (v8 >> 19) + *(a2 + 30);
  LODWORD(v8) = HIDWORD(v8);
  v9 = *(a1 + 16);
  v10 = (-1640531527 * ((v8 >> 19) + *(a2 + 28))) >> -v9;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 32);
  if (!v13)
  {
    result = DgnPool::addChunk((a1 + 24));
    v13 = *(a1 + 32);
  }

  v14 = (v12 + 8 * v11);
  *(a1 + 32) = *v13;
  *(v13 + 8) = *a2;
  *(v13 + 12) = *(a2 + 4);
  *(v13 + 16) = *(a2 + 8);
  v15 = *(a2 + 24);
  *(v13 + 35) = *(a2 + 27);
  *(v13 + 32) = v15;
  *(v13 + 40) = *a3;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v13 = *v14;
  }

  else
  {
    *v13 = 0;
    v16 = *v14;
    if (*v14)
    {
      do
      {
        v14 = v16;
        v16 = *v16;
      }

      while (v16);
    }
  }

  *v14 = v13;
  return result;
}

void *HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::findBucket(uint64_t a1, uint64_t a2)
{
  HIDWORD(v4) = CWIDAC::computeHash(a2);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 24);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 30);
  LODWORD(v4) = HIDWORD(v4);
  v5 = *(a1 + 16);
  v6 = (-1640531527 * ((v4 >> 19) + *(a2 + 28))) >> -v5;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 && !BtNodeHashKey::equalKeys((v7 + 1), a2));
  return v8;
}

BOOL BtNodeHashKey::equalKeys(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  result = CWIDAC::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 30) == *(a2 + 30) && *(a1 + 28) == *(a2 + 28);
  }

  return result;
}

uint64_t HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::upSize(uint64_t a1, int a2)
{
  v16 = 0;
  RoundUpToPowerOf2(a2, &v16);
  v14 = 0;
  v15 = 0;
  DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice(&v14, (a1 + 80), 0, *(a1 + 88));
  v4 = *(a1 + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  v5 = v16;
  *(a1 + 12) = a2;
  *(a1 + 16) = v5;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  v6 = v15;
  if (v15)
  {
    v7 = 0;
    do
    {
      v8 = *(v14 + 8 * v7);
      if (v8)
      {
        do
        {
          v9 = *v8;
          HIDWORD(v10) = CWIDAC::computeHash((v8 + 1));
          LODWORD(v10) = HIDWORD(v10);
          HIDWORD(v10) = *(v8 + 8) + (v10 >> 19);
          LODWORD(v10) = HIDWORD(v10);
          HIDWORD(v10) = (v10 >> 19) + *(v8 + 38);
          LODWORD(v10) = HIDWORD(v10);
          v11 = (-1640531527 * ((v10 >> 19) + *(v8 + 18))) >> -v16;
          if (!v16)
          {
            v11 = 0;
          }

          v12 = *(a1 + 80);
          *v8 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v8;
          v8 = v9;
        }

        while (v9);
        v6 = v15;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v14);
}