void sub_262821A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  DgnString::~DgnString(&a16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a24);
  DgnArray<DgnString>::releaseAll(&a26);
  DgnIArray<Utterance *>::~DgnIArray(&a29);
  DgnTextFileParser::~DgnTextFileParser(va);
  _Unwind_Resume(a1);
}

void (***RecentBuffer::loadRecentBufferBinary(RecentBuffer *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v65 = 0;
  v8 = OpenAndReadMrecHeader(a2, 0x49u, 1, "RCNTBUFB", &v65 + 1, &v65);
  v9 = HIDWORD(v65) == 18 && v65 == 7;
  v10 = v9;
  if (!v9 && (HIDWORD(v65) != 22 || v65 != 8))
  {
    if (*(a2 + 6))
    {
      v12 = *(a2 + 2);
    }

    else
    {
      v12 = byte_262891468;
    }

    MrecHeaderCheckVersions(v12, "RCNTBUFB", HIDWORD(v65), v65, 0x18u, 9u);
    MrecHeaderCheckLatestVersionIfShared(a2, "RCNTBUFB", SHIDWORD(v65), v65, 24, 9);
    v64 = 0;
    readObject(v8, this + 10, &v64);
    readObject(v8, this + 6, &v64);
    readObject(v8, this + 56, &v64);
    readObject(v8, this + 8, &v64);
    readObject(v8, this + 72, &v64);
    readObject(v8, this + 37, &v64);
    readObject<unsigned int,unsigned int,WordIdScope,unsigned int>(v8, this + 80, &v64);
    readObject(v8, (this + 192), &v64);
    readObject<unsigned int>(v8, this + 208, &v64);
    readObject<unsigned int>(v8, this + 224, &v64);
    readObject(v8, this + 60, &v64);
    readObject(v8, this + 61, &v64);
    readObject<unsigned short>(v8, this + 464, &v64);
    readObject(v8, this + 240, &v64);
    readObject(v8, this + 241, &v64);
    readObject(v8, this + 242, &v64);
    readObject(v8, this + 243, &v64);
    readObject(v8, this + 488, &v64);
    readObject(v8, (this + 496), &v64);
    readObject<unsigned int>(v8, this + 512, &v64);
    readObject(v8, this + 264, &v64);
    readObject(v8, this + 265, &v64);
    readObject(v8, this + 266, &v64);
    readObject(v8, this + 267, &v64);
    v32 = *(*(this + 1) + 388);
    v33 = *(this + 69);
    if (v32 <= v33)
    {
      *(this + 68) = v32;
      if (!v32)
      {
        v34 = 1;
        goto LABEL_63;
      }
    }

    else
    {
      DgnPrimArray<short>::reallocElts(this + 264, v32 - v33, 0);
      *(this + 68) = v32;
    }

    bzero(*(this + 33), 2 * v32);
    v34 = 0;
LABEL_63:
    *(this + 254) = 0;
    *(this + 31) = 0;
    if (*(this + 56) == 1)
    {
      v35 = *(this + 75);
      if (v32 > v35)
      {
        DgnPrimArray<short>::reallocElts(this + 288, v32 - v35, 0);
      }

      *(this + 74) = v32;
      if ((v34 & 1) == 0)
      {
        bzero(*(this + 36), 2 * v32);
      }

      *(this + 70) = 0;
    }

    v36 = (*(this + 10) + 1);
    v37 = *(this + 107);
    if (v36 > v37)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 416, v36 - v37, 0);
    }

    v38 = *(this + 106);
    if (v38 <= v36)
    {
      if (v38 < v36)
      {
        v41 = v36 - v38;
        v42 = 16 * v38;
        do
        {
          v43 = (*(this + 52) + v42);
          *v43 = 0;
          v43[1] = 0;
          v42 += 16;
          --v41;
        }

        while (v41);
      }
    }

    else if (v38 > v36)
    {
      v39 = v38;
      v40 = 16 * v38 - 16;
      do
      {
        --v39;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 52) + v40);
        v40 -= 16;
      }

      while (v39 > v36);
    }

    *(this + 106) = v36;
    if (*(this + 72) == 1 && a4 != 0)
    {
      RecentBuffer::computeRemainderScores(this);
    }

    v45 = *(this + 60);
    if (v45)
    {
      v46 = 0;
      v47 = (*(this + 61) + *(this + 10) - v45 + 1) % *(this + 10);
      do
      {
        v48 = v47;
        RecentBuffer::addWordCountUni(this, *(*(this + 26) + 4 * v47), 1);
        if (*(this + 56) == 1)
        {
          RecentBuffer::addWordCountBi(this, *(*(this + 26) + 4 * v48), *(*(this + 28) + 4 * v48), 1);
        }

        if (v48 + 1 == *(this + 10))
        {
          v47 = 0;
        }

        else
        {
          v47 = v48 + 1;
        }

        ++v46;
        v49 = *(this + 60);
      }

      while (v46 < v49);
    }

    else
    {
      v49 = 0;
    }

    RecentBuffer::computeAppearancesToScores(this, v49 - *(this + 64) - (*(this + 62) + *(this + 63)));
    RecentBuffer::setWeights(this);
    goto LABEL_95;
  }

  MrecHeaderCheckLatestVersionIfShared(a2, "RCNTBUFB", SHIDWORD(v65), v65, 24, 9);
  v64 = 0;
  readObject(v8, this + 10, &v64);
  readObject(v8, this + 6, &v64);
  readObject(v8, this + 56, &v64);
  readObject(v8, this + 8, &v64);
  readObject(v8, this + 72, &v64);
  readObject(v8, this + 37, &v64);
  v63 = 0;
  readObject(v8, &v63, &v64);
  *(this + 240) = v63;
  v62 = 0;
  readObject(v8, &v62, &v64);
  *(this + 242) = v62;
  v60 = 0;
  v61 = 0;
  v59[0] = 0;
  v59[1] = 0;
  readObject<int>(v8, &v60, &v64);
  if (v10)
  {
    v52[0] = 0;
    v52[1] = 0;
    readObject<int>(v8, v52, &v64);
    if (*(this + 56) == 1)
    {
      v13 = v61;
      if (v61 == LODWORD(v52[1]))
      {
        while (v13 >= 1)
        {
          v14 = *(v60 - 4 + 4 * v13);
          v15 = *(v52[0] + --v13);
          if (v14 != v15)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1718, "lm/recentb", 13, "%s", &errStr_lm_recentb_E_UNI_BI_MISMATCH);
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v52);
  }

  readObject<int>(v8, v59, &v64);
  v58[0] = 0;
  v58[1] = 0;
  readObject<int>(v8, v58, &v64);
  RecentBuffer::initRecentBuffer(this);
  RecentBuffer::initHeadClonesAndCommonWords(this);
  if (*(this + 72) == 1 && a4)
  {
    RecentBuffer::computeRemainderScores(this);
  }

  if ((a4 & 1) == 0)
  {
    v16 = *(*(this + 1) + 388);
    v17 = *(this + 119);
    if (v16 <= v17)
    {
      *(this + 118) = v16;
      LODWORD(v52[0]) = 0;
      if (!v16)
      {
LABEL_40:
        v52[0] = 0;
        v22 = realloc_array(0, v52, 4uLL, 0, 0, 1);
        v55 = v52[0];
        v56 = 1;
        v57 = v22 >> 2;
        *v52[0] = 16777214;
        *v52 = xmmword_262888C00;
        v53 = 1;
        v54 = 1;
        v23 = (*(**(this + 3) + 464))();
        v24 = (*(**(this + 4) + 464))(*(this + 4));
        (*(**(this + 3) + 408))(*(this + 3), 0, v23);
        *(this + 241) = RecentBuffer::computeRemainderScore(this, &v55, v52, v24);
        (*(**(this + 3) + 424))(*(this + 3), 1, v23);
        (*(**(this + 3) + 432))(*(this + 3), 0);
        DgnDelete<LMContextData>(v24);
        DgnDelete<LMContextData>(v23);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v55);
        goto LABEL_41;
      }
    }

    else
    {
      DgnPrimArray<short>::reallocElts(this + 464, v16 - v17, 0);
      *(this + 118) = v16;
      LODWORD(v52[0]) = 0;
    }

    v18 = 0;
    do
    {
      v19 = *(this + 1);
      if (*(v19 + 388) > v18 && *(*(v19 + 104) + v18) && *(*(v19 + 256) + 4 * v18) == v18)
      {
        if (((*(**(this + 2) + 112))(*(this + 2)) & 1) != 0 && !*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this + 80, v52))
        {
          MaybeContextLmId = WordLanguageModel::getMaybeContextLmId(*(this + 4), v52[0]);
          v20 = *(v58[0] + 4 * MaybeContextLmId);
        }

        else
        {
          LOWORD(v20) = 20000;
        }

        v18 = v52[0];
      }

      else
      {
        LOWORD(v20) = 20000;
      }

      *(*(this + 58) + 2 * v18++) = v20;
      LODWORD(v52[0]) = v18;
    }

    while (v18 < v16);
    goto LABEL_40;
  }

LABEL_41:
  if ((*(this + 56) & 1) == 0)
  {
    DgnPrimArray<int>::copyArraySlice(v59, &v60, 0, v61);
  }

  v55 = 0;
  v25 = realloc_array(0, &v55, 4uLL, 0, 0, 1);
  v52[0] = v55;
  LODWORD(v52[1]) = 1;
  HIDWORD(v52[1]) = v25 >> 2;
  if (v61)
  {
    v26 = 0;
    do
    {
      v27 = *(v60 + 4 * v26);
      if (v27 == -3)
      {
        v28 = 16777213;
      }

      else
      {
        v28 = 0xFFFFFF;
      }

      if (v27 >= 0xFFFFF4)
      {
        v27 = v28;
      }

      *v52[0] = v27;
      v29 = *(v59[0] + 4 * v26);
      if (v29 == -2)
      {
        v30 = 16777214;
      }

      else
      {
        v30 = 0xFFFFFF;
      }

      if (v29 >= 0xFFFFF4)
      {
        v31 = v30;
      }

      else
      {
        v31 = *(v59[0] + 4 * v26);
      }

      RecentBuffer::addToRecentInternal(this, v52, v31);
      ++v26;
    }

    while (v26 < v61);
  }

  RecentBuffer::computeAppearancesToScores(this, *(this + 60) - *(this + 64) - (*(this + 62) + *(this + 63)));
  RecentBuffer::setWeights(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v52);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v58);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v59);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v60);
LABEL_95:
  readObjectChecksumAndVerify(v8, v64);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 73, v64);
  return DgnDelete<DgnStream>(v8);
}

void sub_262822524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  va_copy(va2, va1);
  v19 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

uint64_t RecentBuffer::saveRecentBufferText(RecentBuffer *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v44);
  DgnTextFileWriter::openDgnTextFileWriter(v44, a2, 74, a3);
  v42 = 0;
  v43 = 0;
  DgnTextFile::legalDgnTextFileVersions(v44, sRBS_Versions, &v42);
  DgnTextFileWriter::setFileType(v44, "RecentBufferSpec", &v42[(v43 - 1)]);
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  DgnTextFileWriter::setLineFieldFormat(v44, &v40, &v38);
  if (*(this + 56))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v44, "Depth", v6);
  DgnTextFileWriter::setHeaderFieldUnsigned(v44, "RecentBufferLength", *(this + 10));
  DgnTextFileWriter::setHeaderFieldReal(v44, "RecentBufferWeight", *(this + 6));
  DgnTextFileWriter::setHeaderFieldReal(v44, "RecentBufferUnigramWeight", *(this + 8));
  DgnTextFileWriter::setHeaderFieldBool(v44, "UseRecentBufferCommonWordsFix", *(this + 72));
  DgnTextFileWriter::setHeaderFieldInteger(v44, "RecentBufferCommonWordScore", *(this + 37));
  DgnArray<DgnString>::releaseAll(&v38);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
  DgnIArray<Utterance *>::~DgnIArray(&v42);
  DgnTextFileWriter::~DgnTextFileWriter(v44);
  v7 = *(this + 60);
  v42 = 0;
  v43 = 0;
  if (v7)
  {
    v44[0] = 0;
    HIDWORD(v43) = realloc_array(0, v44, 4 * v7, 0, 0, 1) >> 2;
    v42 = v44[0];
  }

  LODWORD(v43) = v7;
  if (*(this + 56))
  {
    v8 = *(this + 60);
    v40 = 0;
    v41 = 0;
    if (!v8)
    {
      goto LABEL_34;
    }

    v44[0] = 0;
    HIDWORD(v41) = realloc_array(0, v44, 4 * v8, 0, 0, 1) >> 2;
    v9 = v44[0];
    v40 = v44[0];
  }

  else
  {
    v9 = 0;
    LODWORD(v8) = 0;
    v40 = 0;
    v41 = 0;
  }

  v10 = *(this + 60);
  LODWORD(v41) = v8;
  if (!v10)
  {
    LODWORD(v17) = 0;
    if (!v8)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v11 = 0;
  v12 = (*(this + 61) + *(this + 10) - v10 + 1) % *(this + 10);
  v13 = *(this + 26);
  v14 = v42;
  do
  {
    v15 = *(v13 + 4 * v12);
    if (v15 == 16777213)
    {
      v16 = -3;
    }

    else
    {
      v16 = -1;
    }

    if (v15 >= 0xFFFFF4)
    {
      v15 = v16;
    }

    *(v14 + v11) = v15;
    if (v12 + 1 == *(this + 10))
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    ++v11;
    v17 = *(this + 60);
  }

  while (v11 < v17);
  if (v8)
  {
LABEL_24:
    v18 = (*(this + 61) - v17 + *(this + 10) + 1) % *(this + 10);
    v19 = *(this + 28);
    v20 = v8;
    do
    {
      v21 = *(v19 + 4 * v18);
      if (v21 == 16777214)
      {
        v22 = -2;
      }

      else
      {
        v22 = -1;
      }

      if (v21 >= 0xFFFFF4)
      {
        v21 = v22;
      }

      *v9++ = v21;
      if (v18 + 1 == *(this + 10))
      {
        v18 = 0;
      }

      else
      {
        ++v18;
      }

      --v20;
    }

    while (v20);
  }

LABEL_34:
  if (v43)
  {
    DgnTextFileWriter::DgnTextFileWriter(v44);
    DgnTextFileWriter::openDgnTextFileWriter(v44, a2, 75, 1);
    v38 = 0;
    v39 = 0;
    DgnTextFile::legalDgnTextFileVersions(v44, sRBT_Versions, &v38);
    DgnTextFileWriter::setFileType(v44, "RecentBufferText", (v38 + 8 * (v39 - 1)));
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    DgnString::DgnString(v33, "EntryIndex");
    v23 = v35;
    if (v35 == HIDWORD(v35))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(&v34, 1, 1);
      v23 = v35;
    }

    DgnString::DgnString((v34 + 16 * v23), v33);
    LODWORD(v35) = v35 + 1;
    DgnString::~DgnString(v33);
    v24 = v37;
    if (v37 == HIDWORD(v37))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v36, 1, 1);
      v24 = v37;
    }

    *(v36 + 4 * v24) = 3;
    LODWORD(v37) = v24 + 1;
    DgnString::DgnString(v33, "EntryValue1");
    v25 = v35;
    if (v35 == HIDWORD(v35))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(&v34, 1, 1);
      v25 = v35;
    }

    DgnString::DgnString((v34 + 16 * v25), v33);
    LODWORD(v35) = v35 + 1;
    DgnString::~DgnString(v33);
    v26 = v37;
    if (v37 == HIDWORD(v37))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v36, 1, 1);
      v26 = v37;
    }

    *(v36 + 4 * v26) = 1;
    LODWORD(v37) = v26 + 1;
    if (*(this + 56) == 1)
    {
      DgnString::DgnString(v33, "EntryValue2");
      v27 = v35;
      if (v35 == HIDWORD(v35))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v34, 1, 1);
        v27 = v35;
      }

      DgnString::DgnString((v34 + 16 * v27), v33);
      LODWORD(v35) = v35 + 1;
      DgnString::~DgnString(v33);
      v28 = v37;
      if (v37 == HIDWORD(v37))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v36, 1, 1);
        v28 = v37;
      }

      *(v36 + 4 * v28) = 1;
      LODWORD(v37) = v28 + 1;
    }

    DgnTextFileWriter::setLineFieldFormat(v44, &v36, &v34);
    if (*(this + 56))
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    DgnTextFileWriter::setHeaderFieldUnsigned(v44, "Depth", v29);
    DgnTextFileWriter::setHeaderFieldUnsigned(v44, "RecentBufferLength", *(this + 10));
    if (*(this + 56))
    {
      if (v41)
      {
        v30 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldUnsignedValue(v44, 0, v30);
          DgnTextFileWriter::setLineFieldIntegerValue(v44, 1u, v40[v30]);
          DgnTextFileWriter::setLineFieldIntegerValue(v44, 2u, *(v42 + v30));
          DgnTextFileWriter::writeNextLine(v44);
          ++v30;
        }

        while (v30 < v41);
      }
    }

    else if (v43)
    {
      v31 = 0;
      do
      {
        DgnTextFileWriter::setLineFieldUnsignedValue(v44, 0, v31);
        DgnTextFileWriter::setLineFieldIntegerValue(v44, 1u, *(v42 + v31));
        DgnTextFileWriter::writeNextLine(v44);
        ++v31;
      }

      while (v31 < v43);
    }

    DgnArray<DgnString>::releaseAll(&v34);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v36);
    DgnIArray<Utterance *>::~DgnIArray(&v38);
    DgnTextFileWriter::~DgnTextFileWriter(v44);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
}

void sub_262822B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va4);
  _Unwind_Resume(a1);
}

void (***RecentBuffer::saveRecentBufferBinary(RecentBuffer *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x49u, a4, "RCNTBUFB", 24, 9);
  v10 = 0;
  writeObject(v7, this + 10, &v10);
  writeObject(v7, this + 6, &v10);
  writeObject(v7, this + 56, &v10);
  writeObject(v7, this + 8, &v10);
  writeObject(v7, this + 72, &v10);
  writeObject(v7, this + 37, &v10);
  writeObject<unsigned int,unsigned int,WordIdScope,unsigned int>(v7, this + 80, &v10);
  writeObject(v7, this + 192, &v10);
  writeObject<unsigned int>(v7, this + 208, &v10);
  writeObject<unsigned int>(v7, this + 224, &v10);
  writeObject(v7, this + 60, &v10);
  writeObject(v7, this + 61, &v10);
  writeObject<unsigned short>(v7, this + 464, &v10);
  writeObject(v7, this + 240, &v10);
  writeObject(v7, this + 241, &v10);
  writeObject(v7, this + 242, &v10);
  writeObject(v7, this + 243, &v10);
  writeObject(v7, this + 488, &v10);
  writeObject(v7, this + 496, &v10);
  writeObject<unsigned int>(v7, this + 512, &v10);
  writeObject(v7, this + 264, &v10);
  writeObject(v7, this + 265, &v10);
  writeObject(v7, this + 266, &v10);
  writeObject(v7, this + 267, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 73, v10);
  return DgnDelete<DgnStream>(v7);
}

void RecentBuffer::loadRecentBuffer(RecentBuffer *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (DFile::subFileExists(a2, 0x49u))
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 2042, "lm/recentb", 11, "%s", &errStr_lm_recentb_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    if (DFile::subFileExists(a2, 0x4Au))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 2044, "lm/recentb", 15, "%s", &errStr_lm_recentb_E_RBS_RBB_MISMATCH);
    }

    if (DFile::subFileExists(a2, 0x4Bu))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 2046, "lm/recentb", 6, "%s", &errStr_lm_recentb_E_RBT_WITH_BINARY_RB_FILE);
    }

    RecentBuffer::loadRecentBufferBinary(this, a2, a3, a5);
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 2055, "lm/recentb", 12, "%s", &errStr_lm_recentb_E_CANT_LOAD_TEXT_RECENT_BUFFER);
    }

    DgnTextFileParser::DgnTextFileParser(v21);
    DgnTextFileParser::openDgnTextFileParser(v21, a2, 74, 1);
    DgnTextFileParser::verifyMatchingFileType(v21, "RecentBufferSpec");
    v20[0] = 0;
    v20[1] = 0;
    DgnTextFile::legalDgnTextFileVersions(v21, sRBS_Versions, v20);
    DgnTextFileParser::verifyFileVersionInRange(v21, v20);
    v19 = 0;
    v18 = 0.0;
    v17 = 0;
    v16 = 1.0;
    v15 = 0;
    if (DgnTextFile::getFileVersion(v21) == 0x100000013)
    {
      DgnTextFile::getHeaderFieldUnsigned(v21, "RecentBufferLength", &v19, 1, 0, 0x7FFFFFFFu);
      DgnTextFile::getHeaderFieldReal(v21, "RecentBufferWeight", &v18, 1, 0.0, 0.99);
      DgnTextFile::getHeaderFieldBool(v21, "UseBigramRecentBuffer", &v17, 1);
    }

    else
    {
      v14 = 0;
      DgnTextFile::getHeaderFieldUnsigned(v21, "Depth", &v14, 1, 1u, 2u);
      v17 = v14 == 2;
      DgnTextFile::getHeaderFieldUnsigned(v21, "RecentBufferLength", &v19, 1, 0, 0x7FFFFFFFu);
      DgnTextFile::getHeaderFieldReal(v21, "RecentBufferWeight", &v18, 1, 0.0, 0.99);
    }

    DgnTextFile::getHeaderFieldReal(v21, "RecentBufferUnigramWeight", &v16, 1, 0.0, 1.0);
    DgnTextFile::getHeaderFieldBool(v21, "UseRecentBufferCommonWordsFix", &v15, 1);
    v14 = 0;
    DgnTextFile::getHeaderFieldInteger(v21, "RecentBufferCommonWordScore", &v14, 1, 0, 20000);
    v10 = v14;
    DgnTextFileParser::verifyNoUnknownHeaderFields(v21);
    DgnTextFileParser::verifyMatchingNumFieldSpecs(v21, 0);
    DgnTextFileParser::verifyNoBodyLines(v21);
    if (v18 < 0.0 || v18 > 1.0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 2117, "lm/recentb", 2, "%.500s %f", "weight", v18);
    }

    v11 = v16;
    if (v16 < 0.0 || v16 > 1.0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 2121, "lm/recentb", 2, "%.500s %f", "unigram weight", v16);
      v11 = v16;
    }

    v12 = v17;
    if ((((v11 == 1.0) ^ v17) & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 2127, "lm/recentb", 1, "%f", v11);
      v12 = v17;
    }

    v13 = v15;
    if (!v12 && v15)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 2129, "lm/recentb", 14, "%s", errStr_lm_recentb_E_COMMON_WORDS_FIX_CONFLICT);
      v12 = v17;
      v13 = v15;
    }

    *(this + 10) = v19;
    *(this + 6) = v18;
    *(this + 56) = v12;
    *(this + 8) = v16;
    *(this + 72) = v13;
    *(this + 37) = v10;
    if (DFile::subFileExists(a2, 0x4Bu))
    {
      RecentBuffer::loadRecentBufferText(this, a2);
    }

    else
    {
      RecentBuffer::initRecentBuffer(this);
      RecentBuffer::initHeadClonesAndCommonWords(this);
      if (*(this + 72) == 1)
      {
        RecentBuffer::computeRemainderScores(this);
      }
    }

    DgnIArray<Utterance *>::~DgnIArray(v20);
    DgnTextFileParser::~DgnTextFileParser(v21);
  }
}

void sub_262823370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnTextFileParser::~DgnTextFileParser(va1);
  _Unwind_Resume(a1);
}

void (***RecentBuffer::saveRecentBuffer(RecentBuffer *this, DFile *a2, DFileChecksums *a3, int a4, DFileChecksums *a5))(void)
{
  if (a4)
  {
    return RecentBuffer::saveRecentBufferText(this, a2, a5);
  }

  else
  {
    return RecentBuffer::saveRecentBufferBinary(this, a2, a3, a5);
  }
}

void RecentBuffer::addWordId(RecentBuffer *this, unsigned int a2)
{
  v4 = *(this + 68);
  if (a2 >= v4)
  {
    v5 = a2 + 1;
    v6 = *(this + 69);
    v7 = a2 + 1 - v6;
    if (v5 > v6)
    {
      DgnPrimArray<short>::reallocElts(this + 264, v7, 0);
    }

    *(this + 68) = v5;
    if (v4 < v5)
    {
      bzero((*(this + 33) + 2 * v4), 2 * (a2 - v4) + 2);
    }
  }

  if (*(this + 56) == 1)
  {
    v8 = *(this + 74);
    if (a2 >= v8)
    {
      v9 = a2 + 1;
      v10 = *(this + 75);
      if (a2 + 1 > v10)
      {
        DgnPrimArray<short>::reallocElts(this + 288, a2 + 1 - v10, 0);
      }

      *(this + 74) = v9;
      if (v8 < v9)
      {
        bzero((*(this + 36) + 2 * v8), 2 * (a2 - v8) + 2);
      }
    }
  }

  if (*(this + 72) == 1)
  {
    v11 = *(this + 118);
    if (a2 >= v11)
    {
      v12 = a2 + 1;
      v13 = *(this + 119);
      if (a2 + 1 > v13)
      {
        DgnPrimArray<short>::reallocElts(this + 464, a2 + 1 - v13, 0);
      }

      *(this + 118) = v12;
      if (v11 < v12)
      {
        memset_pattern16((*(this + 58) + 2 * v11), &unk_262888330, 2 * (a2 - v11) + 2);
      }
    }

    v14 = *(this + 243);
    if (v14 == 20000)
    {
      *&v19 = 0;
      v15 = realloc_array(0, &v19, 4uLL, 0, 0, 1);
      v22 = v19;
      v23 = 1;
      v24 = v15 >> 2;
      *v19 = a2;
      v19 = xmmword_262888C00;
      v20 = 1;
      v21 = 1;
      v18 = (*(**(this + 4) + 464))(*(this + 4), v16, v17);
      *(this + 243) = RecentBuffer::computeRemainderScore(this, &v22, &v19, v18);
      DgnDelete<LMContextData>(v18);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
      LOWORD(v14) = *(this + 243);
    }

    *(*(this + 58) + 2 * a2) = v14;
  }
}

void sub_2628235C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void RecentBuffer::deleteWordId(RecentBuffer *this, unsigned int a2, BOOL *a3, BOOL *a4)
{
  v18 = a2;
  if (!Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeIfPresent(this + 80, &v18))
  {
    v7 = v18;
    if (*(*(this + 33) + 2 * v18) || *(this + 126) > v18 && ((*(*(this + 62) + ((v18 >> 3) & 0x1FFFFFFC)) >> v18) & 1) != 0)
    {
      if (*(this + 54))
      {
        v8 = 0;
        do
        {
          v9 = *(*(this + 26) + 4 * v8);
          if (v9 == v18)
          {
            RecentBuffer::addWordCountUni(this, v9, 0);
            *(*(this + 26) + 4 * v8) = 0xFFFFFF;
            RecentBuffer::addWordCountUni(this, 0xFFFFFFu, 1);
            if (*(this + 56) == 1)
            {
              RecentBuffer::addWordCountBi(this, v18, *(*(this + 28) + 4 * v8), 0);
              RecentBuffer::addWordCountBi(this, *(*(this + 26) + 4 * v8), *(*(this + 28) + 4 * v8), 1);
            }
          }

          ++v8;
        }

        while (v8 < *(this + 54));
      }

      RecentBuffer::computeAppearancesToScores(this, *(this + 60) - *(this + 64) - (*(this + 62) + *(this + 63)));
      v7 = v18;
    }

    if (*(this + 56) == 1)
    {
      if (*(*(this + 36) + 2 * v7))
      {
        v10 = *(this + 58);
        if (v10)
        {
          for (i = 0; i < v10; ++i)
          {
            v12 = *(*(this + 28) + 4 * i);
            if (v12 == v18)
            {
              RecentBuffer::addWordCountBi(this, *(*(this + 26) + 4 * i), v12, 0);
              *(*(this + 28) + 4 * i) = 0xFFFFFF;
              RecentBuffer::addWordCountBi(this, *(*(this + 26) + 4 * i), 0xFFFFFFu, 1);
              v10 = *(this + 58);
            }
          }

          v7 = v18;
        }
      }
    }

    v13 = *(this + 72);
    if (v13 == 1)
    {
      *(*(this + 58) + 2 * v7) = 20000;
    }

    if (*(this + 50) > v7 && ((*(*(this + 24) + 4 * (v7 >> 5)) >> v7) & 1) != 0)
    {
      *a3 = 1;
LABEL_29:
      *a4 = 1;
      return;
    }

    if (v13)
    {
      if (*(this + 126) > v7)
      {
        v14 = *(this + 62);
        v15 = v7 >> 5;
        v16 = *(v14 + 4 * (v7 >> 5));
        v17 = 1 << v7;
        if ((v16 & v17) != 0)
        {
          *(v14 + 4 * v15) = v16 & ~v17;
          DgnPrimArray<unsigned int>::removeKeepOrder(this + 128, v18);
          goto LABEL_29;
        }
      }
    }
  }
}

uint64_t RecentBuffer::addToRecent(WordLanguageModel **this, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = a3;
  v7 = *(a2 + 8);
  v15 = 0;
  v16 = 0;
  if (v7)
  {
    v18 = 0;
    HIDWORD(v16) = realloc_array(0, &v18, 4 * v7, 0, 0, 1) >> 2;
    v15 = v18;
    v4 = v17;
  }

  LODWORD(v16) = v7;
  if (v4 != 0xFFFFFF)
  {
    if (v4 == 16777214)
    {
      v8 = *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket((this + 10), &v17);
      if (!v8)
      {
LABEL_11:
        if (WordLanguageModel::getMaybeContextLmId(this[4], v17) == -1)
        {
          LODWORD(v4) = 0xFFFFFF;
        }

        else
        {
          LODWORD(v4) = v17;
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (!(*(*this[2] + 112))(this[2], v4))
      {
        LODWORD(v4) = 0xFFFFFF;
        goto LABEL_14;
      }

      v8 = *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket((this + 10), &v17);
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    LODWORD(v4) = *(v8 + 4);
  }

LABEL_14:
  if (*(a2 + 8))
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(*a2 + v9);
      if (v11 != 0xFFFFFF)
      {
        break;
      }

LABEL_28:
      *&v15[v9] = v11;
      ++v10;
      v9 += 4;
      if (v10 >= *(a2 + 8))
      {
        goto LABEL_29;
      }
    }

    if (v11 == 16777213)
    {
      v12 = *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket((this + 10), (*a2 + v9));
      if (!v12)
      {
        if (WordLanguageModel::getLmId(this[4], *(*a2 + v9)) == -1)
        {
          goto LABEL_27;
        }

        v13 = (*a2 + v9);
        goto LABEL_24;
      }
    }

    else
    {
      if (!(*(*this[2] + 112))(this[2]))
      {
        goto LABEL_27;
      }

      v12 = *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket((this + 10), (*a2 + v9));
      if (!v12)
      {
        if (WordLanguageModel::getLmId(this[4], *(*a2 + v9)) == -1)
        {
LABEL_27:
          v11 = 0xFFFFFF;
          goto LABEL_28;
        }

        v13 = (*a2 + 4 * v10);
        goto LABEL_24;
      }
    }

    v13 = (v12 + 2);
LABEL_24:
    v11 = *v13;
    goto LABEL_28;
  }

LABEL_29:
  RecentBuffer::addToRecentInternal(this, &v15, v4);
  RecentBuffer::computeAppearancesToScores(this, *(this + 60) - *(this + 64) - (*(this + 62) + *(this + 63)));
  RecentBuffer::setWeights(this);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

uint64_t Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524220;
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
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 20;
  }

  else
  {
    v7 = 24;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_262823B94(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::~Hash(uint64_t a1)
{
  Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287524220;
  if (*(a1 + 8))
  {
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::removeBucket(uint64_t result, char ***a2)
{
  v2 = result;
  v3 = *a2;
  *a2 = **a2;
  v4 = *(result + 96);
  if (v4)
  {
    result = v4(v3 + 12);
  }

  v5 = *(v2 + 104);
  if (v5)
  {
    result = v5(v3 + 20);
  }

  *v3 = *(v2 + 32);
  *(v2 + 32) = v3;
  --*(v2 + 8);
  return result;
}

void VarClassMgr::printSize(VarClassMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/varclass.cpp", 76);
  if (v51)
  {
    v13 = v50;
  }

  else
  {
    v13 = &unk_26289150C;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26289150C, a3, &unk_26289150C, v13);
  DgnString::~DgnString(&v50);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26289150C);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/varclass.cpp", 78);
  if (v51)
  {
    v18 = v50;
  }

  else
  {
    v18 = &unk_26289150C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26289150C, (34 - a3), (34 - a3), v18, 4, 4, 0);
  v49 = a3;
  DgnString::~DgnString(&v50);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/varclass.cpp", 78);
  if (v51)
  {
    v20 = v50;
  }

  else
  {
    v20 = &unk_26289150C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26289150C, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v50);
  *a4 += 4;
  *a5 += 4;
  v21 = sizeObject(this + 12, 0);
  v22 = sizeObject(this + 12, 1);
  v23 = sizeObject(this + 12, 3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/varclass.cpp", 78);
  if (v51)
  {
    v25 = v50;
  }

  else
  {
    v25 = &unk_26289150C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v15, &unk_26289150C, v16, v16, v25, v21, v22, v23);
  DgnString::~DgnString(&v50);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/varclass.cpp", 78);
  if (v51)
  {
    v27 = v50;
  }

  else
  {
    v27 = &unk_26289150C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v15, &unk_26289150C, v16, v16, v27, 4, 4, 0);
  DgnString::~DgnString(&v50);
  *a4 += 4;
  *a5 += 4;
  v28 = sizeObject<LinearTransform>(this + 16, 0);
  v29 = sizeObject<LinearTransform>(this + 16, 1);
  v30 = sizeObject<LinearTransform>(this + 16, 3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/varclass.cpp", 78);
  if (v51)
  {
    v32 = v50;
  }

  else
  {
    v32 = &unk_26289150C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v15, &unk_26289150C, v16, v16, v32, v28, v29, v30);
  DgnString::~DgnString(&v50);
  *a4 += v28;
  *a5 += v29;
  *a6 += v30;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 12;
  }

  else
  {
    v33 = 16;
  }

  v34 = *(this + 10);
  v35 = *(this + 11);
  if (v35 >= v34)
  {
    v36 = 0;
    if (v34 > 0)
    {
      v33 += 4 * (v34 - 1) + 4;
    }

    v37 = v33 + 4 * (v35 - v34);
  }

  else
  {
    v36 = 4 * v34;
    v37 = v33;
  }

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/varclass.cpp", 78);
  if (v51)
  {
    v39 = v50;
  }

  else
  {
    v39 = &unk_26289150C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v15, &unk_26289150C, v16, v16, v39, v37, v33, v36);
  DgnString::~DgnString(&v50);
  *a4 += v37;
  *a5 += v33;
  *a6 += v36;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v40 = 12;
  }

  else
  {
    v40 = 16;
  }

  v41 = *(this + 14);
  v42 = *(this + 15);
  if (v42 >= v41)
  {
    v43 = 0;
    if (v41 > 0)
    {
      v40 += 2 * (v41 - 1) + 2;
    }

    v44 = v40 + 2 * (v42 - v41);
  }

  else
  {
    v43 = 2 * v41;
    v44 = v40;
  }

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/varclass.cpp", 78);
  if (v51)
  {
    v46 = v50;
  }

  else
  {
    v46 = &unk_26289150C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v15, &unk_26289150C, v16, v16, v46, v44, v40, v43);
  DgnString::~DgnString(&v50);
  *a4 += v44;
  *a5 += v40;
  *a6 += v43;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/varclass.cpp", 79);
  if (v51)
  {
    v48 = v50;
  }

  else
  {
    v48 = &unk_26289150C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v49, &unk_26289150C, (35 - v49), (35 - v49), v48, *a4, *a5, *a6);
  DgnString::~DgnString(&v50);
}

void sub_262824204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void VarClassMgr::saveVarClassMgr(VarClassMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {
    VarClassMgr::saveTransforms(this, a2, a5);

    VarClassMgr::saveMap(this, a2, a5);
  }

  else
  {
    v9 = OpenAndWriteMrecHeader(a2, 0x50u, a5, "MRSCB!?", 24, 4);
    v11 = 0;
    writeObject(v9, this + 1, &v11);
    writeObject(v9, this + 2, &v11);
    writeObject(v9, this + 3, &v11);
    writeObject(v9, this, &v11);
    writeObject<LinearTransform>(v9, this + 16, &v11);
    writeObject<unsigned int>(v9, this + 32, &v11);
    writeObject<unsigned short>(v9, this + 48, &v11);
    writeObjectChecksum(v9, &v11);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 80, v11);
    DgnDelete<DgnStream>(v9);
  }
}

void VarClassMgr::saveTransforms(VarClassMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v27);
  DgnTextFileWriter::openDgnTextFileWriter(v27, a2, 85, a3);
  v25 = 0;
  v26 = 0;
  DgnTextFile::legalDgnTextFileVersions(v27, sSCT_Versions, &v25);
  DgnTextFileWriter::setFileType(v27, "SemitiedCovarianceClassTransforms", (v25 + 8 * (v26 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v27, "NumberOfCovarianceClasses", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v27, "NumberOfOutputFeatures", *(this + 2));
  DgnTextFileWriter::setHeaderFieldUnsigned(v27, "NumberOfInputFeatures", *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v27, "SCTIntScale", 1 << *(this + 3));
  DgnArray<DgnString>::DgnArray(v24, 5);
  v20[0] = 0;
  v6 = realloc_array(0, v20, 0x14uLL, 0, 0, 1);
  v21 = v20[0];
  v22 = 5;
  v23 = v6 >> 2;
  DgnString::operator=(*v24, "Type");
  *v21 = 0;
  DgnString::operator=((*v24 + 16), "VarId");
  v21[1] = 3;
  DgnString::operator=((*v24 + 32), "RowNum");
  v21[2] = 3;
  DgnString::operator=((*v24 + 48), "ColNum");
  v21[3] = 3;
  DgnString::operator=((*v24 + 64), "Value");
  v21[4] = 1;
  DgnTextFileWriter::setLineFieldFormat(v27, &v21, v24);
  v7 = *this;
  if (v7)
  {
    v8 = 0;
    v9 = *(this + 2);
    v10 = v9;
    do
    {
      if (v10)
      {
        v11 = 0;
        v12 = *(this + 2) + 72 * v8;
        LODWORD(v13) = *(this + 1);
        do
        {
          if (v13)
          {
            for (i = 0; i < v13; ++i)
            {
              DgnTextFileWriter::setLineFieldValue(v27, 0, "SCTMatrix");
              DgnTextFileWriter::setLineFieldUnsignedValue(v27, 1u, v8);
              DgnTextFileWriter::setLineFieldUnsignedValue(v27, 2u, v11);
              DgnTextFileWriter::setLineFieldUnsignedValue(v27, 3u, i);
              DgnTextFileWriter::setLineFieldIntegerValue(v27, 4u, *(*(*(v12 + 24) + 16 * v11) + 4 * i));
              DgnTextFileWriter::writeNextLine(v27);
              v13 = *(this + 1);
            }

            v9 = *(this + 2);
          }

          ++v11;
        }

        while (v11 < v9);
        v7 = *this;
        v10 = v9;
      }

      ++v8;
    }

    while (v8 < v7);
    if (v7)
    {
      v15 = 0;
      do
      {
        v16 = *(this + 2) + 72 * v15;
        v20[0] = 0;
        v20[1] = 0;
        DgnPrimArray<int>::copyArraySlice(v20, (v16 + 8), 0, *(v16 + 16));
        if (*(this + 2))
        {
          v17 = 0;
          do
          {
            DgnTextFileWriter::setLineFieldValue(v27, 0, "SCTOffset");
            DgnTextFileWriter::setLineFieldUnsignedValue(v27, 1u, v15);
            DgnTextFileWriter::setLineFieldUnsignedValue(v27, 2u, v17);
            DgnTextFileWriter::setLineFieldUnsignedValue(v27, 3u, 0);
            DgnTextFileWriter::setLineFieldIntegerValue(v27, 4u, *(v20[0] + v17));
            DgnTextFileWriter::writeNextLine(v27);
            ++v17;
          }

          while (v17 < *(this + 2));
        }

        DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v15;
        v18 = *this;
      }

      while (v15 < v18);
      if (v18)
      {
        v19 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldValue(v27, 0, "SCTLogDeterminant");
          DgnTextFileWriter::setLineFieldUnsignedValue(v27, 1u, v19);
          DgnTextFileWriter::setLineFieldUnsignedValue(v27, 2u, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v27, 3u, 0);
          DgnTextFileWriter::setLineFieldIntegerValue(v27, 4u, *(*(this + 4) + 4 * v19));
          DgnTextFileWriter::writeNextLine(v27);
          ++v19;
        }

        while (v19 < *this);
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  DgnArray<DgnString>::releaseAll(v24);
  DgnIArray<Utterance *>::~DgnIArray(&v25);
  DgnTextFileWriter::~DgnTextFileWriter(v27);
}

void sub_26282478C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileWriter::~DgnTextFileWriter(va2);
  _Unwind_Resume(a1);
}

void VarClassMgr::saveMap(VarClassMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v16);
  DgnTextFileWriter::openDgnTextFileWriter(v16, a2, 83, a3);
  v14 = 0;
  v15 = 0;
  DgnTextFile::legalDgnTextFileVersions(v16, sSCM_Versions, &v14);
  DgnTextFileWriter::setFileType(v16, "SemitiedCovarianceClassMap", (v14 + 8 * (v15 - 1)));
  v6 = *(this + 14);
  DgnTextFileWriter::setHeaderFieldUnsigned(v16, "NumberOfGenones", v6);
  DgnTextFileWriter::setHeaderFieldUnsigned(v16, "NumberOfCovarianceClasses", *this);
  DgnArray<DgnString>::DgnArray(v13, 2);
  v17 = 0;
  v7 = realloc_array(0, &v17, 8uLL, 0, 0, 1);
  v8 = v17;
  v10 = v17;
  v11 = 2;
  v12 = v7 >> 2;
  DgnString::operator=(*v13, "GenId");
  *v8 = 3;
  DgnString::operator=((*v13 + 16), "VarId");
  v10[1] = 3;
  DgnTextFileWriter::setLineFieldFormat(v16, &v10, v13);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      DgnTextFileWriter::setLineFieldUnsignedValue(v16, 0, i);
      DgnTextFileWriter::setLineFieldUnsignedValue(v16, 1u, *(*(this + 6) + 2 * i));
      DgnTextFileWriter::writeNextLine(v16);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v10);
  DgnArray<DgnString>::releaseAll(v13);
  DgnIArray<Utterance *>::~DgnIArray(&v14);
  DgnTextFileWriter::~DgnTextFileWriter(v16);
}

void sub_26282499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileWriter::~DgnTextFileWriter(va2);
  _Unwind_Resume(a1);
}

uint64_t SDParamSetHolder_NewFromFile(FileSpec *a1)
{
  SdapiInsurance::SdapiInsurance(v12, "SDParamSetHolder_NewFromFile", 1, 1, 187);
  if (v12[97] == 1)
  {
    if (!a1)
    {
      throwBadStringPointer();
    }

    LOBYTE(v13) = 0;
    if ((gbShowCalls & 1) != 0 || gbShowCallsWithFileSpecArgs == 1)
    {
      DgnString::DgnString(&v10);
      DgnString::DgnString(&v13);
      FileSpec::getDiagnosticMaskedName(a1, &v13, v2);
      DgnString::preAllocate(&v10, 96);
      if (v14)
      {
        v3 = v13;
      }

      else
      {
        v3 = &unk_262891540;
      }

      DgnString::formatStringInPlace(&v10, v3);
      DgnString::~DgnString(&v13);
      if (v11)
      {
        v5 = v10;
      }

      else
      {
        v5 = &unk_262891540;
      }

      xlprintf("Entering sdapi call %.500s(%.500s)\n", v4, "SDParamSetHolder_NewFromFile", v5);
      DgnString::~DgnString(&v10);
    }

    FileSpec::FileSpec(&v13, a1);
    DFileOwner::DFileOwner(&v10);
    v6 = DFile::openDFile(&v13, 0, 13, &v10);
    ParamSetHolder = ParamSetHolderMgr::loadParamSetHolder(ParamSetHolderMgr::smpParamSetHolderMgr, v6);
    DFileOwner::~DFileOwner(&v10, v8);
    FileSpec::~FileSpec(&v13);
  }

  else
  {
    ParamSetHolder = 0;
  }

  SdapiInsurance::~SdapiInsurance(v12);
  return ParamSetHolder;
}

void SDParamSetHolder_Delete(unint64_t a1)
{
  SdapiInsurance::SdapiInsurance(v4, "SDParamSetHolder_Delete", 1, 1, 189);
  if (v4[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>)\n", v2, "SDParamSetHolder_Delete", a1);
    }

    v3 = ParamSetHolderMgr::smpParamSetHolderMgr;
    if (HIDWORD(a1))
    {
      throwBadSdapiArgument("SDhParamSetHolder", a1);
    }

    if ((a1 + 1) <= 1)
    {
      throwBadSdapiArgument("SDhParamSetHolder", a1);
    }

    ParamSetHolderMgr::deleteParamSetHolder(v3, a1);
  }

  SdapiInsurance::~SdapiInsurance(v4);
}

void MrecInitModule_wordlat_kernel(void)
{
  if (!gParDebugLatticeNBestGeneration)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugLatticeNBestGeneration", &unk_262891560, &unk_262891560, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugLatticeNBestGeneration = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugLatticeNBestGeneration);
  }

  if (!gParDebugLatticeLMRescoring)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugLatticeLMRescoring", &unk_262891560, &unk_262891560, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugLatticeLMRescoring = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugLatticeLMRescoring);
  }

  if (!gParDebugLatticeBestAlignment)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugLatticeBestAlignment", &unk_262891560, &unk_262891560, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugLatticeBestAlignment = v5;
    v6 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v6, &gParDebugLatticeBestAlignment);
  }
}

uint64_t LatticeStats::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 96;
  }

  v5 = LMStats::sizeObject(a1 + 48, a2) + v4;
  return v5 + LMStats::sizeObject(a1 + 256, a2);
}

double LatticeStats::resetStats(LatticeStats *this)
{
  *(this + 25) = 0;
  *(this + 52) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 28) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  LMStats::resetStats((this + 48));

  return LMStats::resetStats((this + 256));
}

double LatticeStats::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  LMStats::operator=(a1 + 48, a2 + 48);

  *&result = LMStats::operator=(a1 + 256, a2 + 256).n128_u64[0];
  return result;
}

double WordLatticeLC::WordLatticeLC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *(a1 + 16) = -16;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 64) = 1879048192;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_2875281A8;
  *(a1 + 8) = 0xBFF0000000000000;
  *(a1 + 94) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 94) = *(a2 + 94);
  result = NAN;
  *(a1 + 96) = xmmword_26286CC40;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 92) = 0x3FFF;
  if (a7)
  {
    *(a1 + 94) = 0;
  }

  if (a3)
  {
    *(a1 + 96) = 0;
  }

  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v11 = *(a2 + 24);
  if (a4)
  {
    v9 = -64;
    v10 = -4;
    v11 = -4;
  }

  *(a1 + 16) = v9;
  *(a1 + 20) = v10;
  *(a1 + 24) = v11;
  if (a5)
  {
    *(a1 + 36) = 0;
    *(a1 + 28) = 0;
    *(a1 + 52) = 0;
    *(a1 + 44) = 0;
  }

  else
  {
    *(a1 + 28) = *(a2 + 28);
    result = *(a2 + 44);
    *(a1 + 44) = result;
    *(a1 + 52) = *(a2 + 52);
  }

  v12 = *(a2 + 68);
  v13 = *(a2 + 72);
  if (a6)
  {
    v12 = 0;
    v13 = 0;
  }

  *(a1 + 68) = v12;
  *(a1 + 72) = v13;
  v14 = *(a2 + 80);
  if (a8)
  {
    v14 = -1;
  }

  *(a1 + 80) = v14;
  *(a1 + 8) = 0xBFF0000000000000;
  if ((a4 & 1) == 0 && (a5 & 1) == 0)
  {
    result = *(a2 + 56);
    *(a1 + 56) = result;
    *(a1 + 64) = *(a2 + 64);
  }

  return result;
}

uint64_t WordLatticeLC::cmp(WordLatticeLC *this, const WordLatticeLC *a2, const WordLatticeLC *a3)
{
  result = CWIDAC::cmp(this + 88, a2 + 88);
  if (!result)
  {
    result = ItemizedScores::cmp(this + 7, a2 + 7);
    if (!result)
    {
      v6 = *(this + 4);
      if (v6 == -64 || ((v16 = *(a2 + 4), v6 < v16) ? (result = 0xFFFFFFFFLL) : (result = 1), v6 == v16 && ((v17 = *(this + 6), v18 = v17 + *(this + 5), v19 = *(a2 + 6), v20 = v19 + *(a2 + 5), v18 < v20) ? (result = 0xFFFFFFFFLL) : (result = 1), v18 == v20 && (v17 < v19 ? (result = 0xFFFFFFFFLL) : (result = 1), v17 == v19))))
      {
        v7 = *(this + 17);
        v8 = *(a2 + 17);
        v9 = v7 >= v8;
        if (v7 == v8 && (v10 = *(this + 18), v11 = *(a2 + 18), v9 = v10 >= v11, v10 == v11))
        {
          v12 = *(this + 10);
          v13 = *(a2 + 10);
          v14 = v12 == v13;
          if (v12 < v13)
          {
            v15 = -1;
          }

          else
          {
            v15 = 1;
          }

          if (v14)
          {
            return 0;
          }

          else
          {
            return v15;
          }
        }

        else if (v9)
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t ItemizedScores::cmp(int *a1, int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = v2 + *a1 + v4 + v5 + v6 + v7 + v8;
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v15 = a2[4];
  v14 = a2[5];
  v16 = a2[6];
  v17 = v10 + v11 + v12 + v13 + v15 + v14 + v16;
  v19 = __OFSUB__(v9, v17);
  v18 = v9 - v17 < 0;
  if (v9 == v17 && (v19 = __OFSUB__(v3, v11), v18 = v3 - v11 < 0, v3 == v11) && (v19 = __OFSUB__(v2, v10), v18 = v2 - v10 < 0, v2 == v10))
  {
    if (v8 < v16)
    {
      v20 = -1;
    }

    else
    {
      v20 = 1;
    }

    if (v8 == v16)
    {
      v20 = 0;
    }

    v21 = v7 == v14;
    if (v7 < v14)
    {
      v22 = -1;
    }

    else
    {
      v22 = 1;
    }

    if (v21)
    {
      v22 = v20;
    }

    v23 = v6 == v15;
    if (v6 < v15)
    {
      v24 = -1;
    }

    else
    {
      v24 = 1;
    }

    if (v23)
    {
      v24 = v22;
    }

    v25 = v5 == v13;
    if (v5 < v13)
    {
      v26 = -1;
    }

    else
    {
      v26 = 1;
    }

    if (v25)
    {
      v26 = v24;
    }

    v27 = v4 == v12;
    if (v4 < v12)
    {
      v28 = -1;
    }

    else
    {
      v28 = 1;
    }

    if (v27)
    {
      return v26;
    }

    else
    {
      return v28;
    }
  }

  else if (v18 != v19)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t WordLatticeLC::cmpForDuplicateCheck(WordLatticeLC *this, const WordLatticeLC *a2, const WordLatticeLC *a3)
{
  result = CWIDAC::cmp(this + 88, a2 + 88);
  if (!result)
  {
    v6 = *(this + 17);
    v7 = *(a2 + 17);
    v8 = v6 >= v7;
    if (v6 == v7 && (v9 = *(this + 18), v10 = *(a2 + 18), v8 = v9 >= v10, v9 == v10))
    {
      v11 = *(this + 10);
      v12 = *(a2 + 10);
      v13 = v11 == v12;
      if (v11 < v12)
      {
        v14 = -1;
      }

      else
      {
        v14 = 1;
      }

      if (v13)
      {
        return 0;
      }

      else
      {
        return v14;
      }
    }

    else if (v8)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t WordLatticeLC::cmpForSameLinkWithDifferentScoresCheck(WordLatticeLC *this, const WordLatticeLC *a2, const WordLatticeLC *a3)
{
  v3 = vaddvq_s32(*(this + 28)) + *(this + 11) + *(this + 12) + *(this + 13);
  v4 = vaddvq_s32(*(a2 + 28)) + *(a2 + 11) + *(a2 + 12) + *(a2 + 13);
  v5 = v3 <= v4;
  v6 = v3 < v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t WordLatticeLC::cmpForMultiLinkCheck(WordLatticeLC *this, const WordLatticeLC *a2, const WordLatticeLC *a3)
{
  if (CWIDAC::cmp(this + 88, a2 + 88) || *(this + 17) != *(a2 + 17) || *(this + 18) != *(a2 + 18))
  {
    return 0;
  }

  if (vaddvq_s32(*(this + 28)) + *(this + 11) + *(this + 12) + *(this + 13) > vaddvq_s32(*(a2 + 28)) + *(a2 + 11) + *(a2 + 12) + *(a2 + 13))
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t writeObject(DgnStream *a1, const InputLatticeLC *a2, unsigned int *a3)
{
  writeObject(a1, a2 + 1, a3);
  v6 = *(a2 + 4);
  if (v6 == -64)
  {
    v6 = -1;
  }

  v20 = v6;
  writeObject(a1, &v20, a3);
  v7 = *(a2 + 5);
  if (v7 == -4)
  {
    v7 = -1;
  }

  v19 = v7;
  writeObject(a1, &v19, a3);
  v8 = *(a2 + 6);
  if (v8 == -4)
  {
    v8 = -1;
  }

  v18 = v8;
  writeObject(a1, &v18, a3);
  v17 = *(a2 + 7);
  writeObject(a1, &v17, a3);
  v16 = *(a2 + 8);
  writeObject(a1, &v16, a3);
  v15 = *(a2 + 9);
  writeObject(a1, &v15, a3);
  v14 = *(a2 + 10);
  writeObject(a1, &v14, a3);
  v13 = *(a2 + 11);
  writeObject(a1, &v13, a3);
  v12 = *(a2 + 12);
  writeObject(a1, &v12, a3);
  v11 = *(a2 + 13);
  writeObject(a1, &v11, a3);
  v10 = *(a2 + 16);
  writeObject(a1, &v10, a3);
  writeObject(a1, a2 + 14, a3);
  writeObject(a1, a2 + 15, a3);
  writeObject(a1, a2 + 17, a3);
  writeObject(a1, a2 + 18, a3);
  writeObject(a1, a2 + 10, a3);
  writeObject(a1, a2 + 22, a3);
  writeObject(a1, a2 + 23, a3);
  return writeObject(a1, a2 + 24, a3);
}

uint64_t LinkSegIds::findOrAddLinkSegSeqIdFromLinkSegIds(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (v5 > 1)
  {
    v6 = 0;
    v7 = *a2;
    for (i = 1; i != v5; ++i)
    {
      v9 = v7[i];
      v10 = i - 1;
      if (v9 < v7[i - 1])
      {
        v11 = v6;
        while (v11 != -1)
        {
          v12 = v7[v11--];
          if (v12 <= v9)
          {
            v13 = v11 + 2;
            goto LABEL_9;
          }
        }

        v13 = 0;
LABEL_9:
        if (v10 >= v13)
        {
          do
          {
            v7[(v10 + 1)] = v7[v10];
            LODWORD(v10) = v10 - 1;
          }

          while (v10 >= v13);
        }

        v7[v13] = v9;
      }

      ++v6;
    }
  }

  v14 = *(a1 + 2) | (v5 << 32);
  v15 = HashProbeKEV<unsigned long long,DgnPrimArray<unsigned long long>,LinkSegIds>::insert(a3, v14, a2);
  if (v15 == v14)
  {
    v16 = *(a2 + 8);
    v17 = *(a1 + 2);
    v18 = *(a1 + 3);
    if (v17 + v16 > v18)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1, v17 + v16 - v18, 1);
      v16 = *(a2 + 8);
      v17 = *(a1 + 2);
    }

    if (v16)
    {
      v19 = *a2;
      v20 = *a1;
      v21 = v16;
      v22 = v17;
      do
      {
        v23 = *v19++;
        *(v20 + 8 * v22++) = v23;
        --v21;
      }

      while (v21);
    }

    *(a1 + 2) = v16 + v17;
  }

  return v15;
}

uint64_t HashProbeKEV<unsigned long long,DgnPrimArray<unsigned long long>,LinkSegIds>::insert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 4);
  if (*a1 >= v6 >> 1)
  {
    HashProbeKEV<unsigned long long,DgnPrimArray<unsigned long long>,LinkSegIds>::upSize(a1, 2 * v6);
  }

  v7 = *(a3 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = *a3;
    do
    {
      v10 = *v9++;
      HIDWORD(v11) = v8;
      LODWORD(v11) = v8;
      HIDWORD(v11) = (v11 >> 19) + HIDWORD(v10);
      LODWORD(v11) = HIDWORD(v11);
      v8 = (v11 >> 19) + v10;
      --v7;
    }

    while (v7);
    LODWORD(v7) = -1640531527 * v8;
  }

  v12 = *(a1 + 8);
  v13 = v7 >> -v12;
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 16);
  v16 = *(v15 + 8 * v14);
  if (v16 == -1)
  {
LABEL_18:
    *(v15 + 8 * v14) = a2;
    ++*a1;
    return a2;
  }

  if (!LinkSegIds::equalKeys(*(a1 + 32), v16, a3))
  {
    while (1)
    {
      v14 = v14 + 1 == *(a1 + 4) ? 0 : (v14 + 1);
      v15 = *(a1 + 16);
      v17 = *(v15 + 8 * v14);
      if (v17 == -1)
      {
        break;
      }

      if (LinkSegIds::equalKeys(*(a1 + 32), v17, a3))
      {
        return *(*(a1 + 16) + 8 * v14);
      }
    }

    goto LABEL_18;
  }

  return *(*(a1 + 16) + 8 * v14);
}

void WordLattice::WordLattice(WordLattice *this, int a2, int a3, int a4, __int16 a5, char a6, char a7, char a8, BOOL a9)
{
  *(this + 8) = 0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 47) = 0;
  *(this + 48) = a2;
  *this = &unk_287528E60;
  *(this + 49) = a3;
  *(this + 50) = a4;
  *(this + 102) = a5;
  *(this + 206) = a6;
  *(this + 207) = 1;
  *(this + 208) = a7;
  *(this + 209) = 0;
  *(this + 211) = a8;
  *(this + 212) = 0;
  *(this + 213) = 16843009;
  *(this + 217) = 0;
  *(this + 218) = a9;
  *(this + 219) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  DgnString::DgnString((this + 272));
}

{
  WordLattice::WordLattice(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_262825BD8(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 32));
  DgnIArray<Utterance *>::~DgnIArray((v1 + 30));
  DgnIArray<Utterance *>::~DgnIArray(v2);
  Lattice<WordLatticeLC>::~Lattice(v1);
  _Unwind_Resume(a1);
}

void WordLattice::WordLattice(WordLattice *this, const WordLattice *a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, uint8x8_t a10)
{
  *(this + 8) = 0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 47) = 0;
  *this = &unk_287528E60;
  *(this + 24) = *(a2 + 24);
  *(this + 50) = *(a2 + 50);
  *(this + 102) = *(a2 + 102);
  *(this + 206) = *(a2 + 206);
  *(this + 105) = *(a2 + 105);
  *(this + 212) = *(a2 + 212);
  v12.i16[0] = a3;
  v12.i16[1] = a6;
  v12.i16[2] = a4;
  v12.i16[3] = a5;
  a10.i32[0] = *(a2 + 213);
  v14 = vand_s8(vbic_s8(*&vmovl_u8(a10), v12), 0x1000100010001);
  *(this + 213) = vuzp1_s8(v14, v14).u32[0];
  *(this + 217) = 0;
  *(this + 109) = *(a2 + 109);
  *(this + 220) = (a8 ^ 1) & *(a2 + 220);
  *(this + 28) = 0;
  *(this + 29) = 0;
  if (!a6)
  {
    DgnArray<ParseToken>::copyArraySlice(this + 28, a2 + 28, 0, *(a2 + 58));
  }

  if (a8)
  {
    *(this + 15) = 0u;
    *(this + 16) = 0u;
  }

  else
  {
    *(this + 30) = 0;
    *(this + 31) = 0;
    DgnArray<LinkSegment>::copyArraySlice(this + 30, a2 + 30, 0, *(a2 + 62));
    *(this + 32) = 0;
    *(this + 33) = 0;
    DgnPrimArray<unsigned long long>::copyArraySlice(this + 32, a2 + 32, 0, *(a2 + 66));
  }

  DgnString::DgnString((this + 272), (a2 + 272));
  if ((a4 & 1) != 0 || a5)
  {
    *(this + 219) = 0;
  }

  v17 = *(a2 + 6);
  v18 = *(a2 + 26);
  v19 = *(this + 7);
  if (v17 > v19)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 16, v17 - v19, 0);
  }

  v20 = *(this + 27);
  if (v18 > v20)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 96, v18 - v20, 0);
  }

  v30 = 0;
  v31 = 0;
  if (!v17)
  {
    LODWORD(v31) = 0;
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v29[0] = 0;
  v21 = realloc_array(0, v29, 4 * v17, 0, 0, 1);
  v22 = 0;
  v30 = v29[0];
  LODWORD(v31) = v17;
  HIDWORD(v31) = v21 >> 2;
  do
  {
    Node = Lattice<WordLatticeLC>::createNode(this);
    v30[v22++] = Node;
  }

  while (v17 != v22);
  if (v18)
  {
LABEL_19:
    v24 = 0;
    do
    {
      v25 = *(a2 + 16) + 136 * *(*(a2 + 12) + v24);
      WordLatticeLC::WordLatticeLC(v29, v25, a3, a4, a5, a6, a7, a8);
      Lattice<WordLatticeLC>::maybeCreateAndConnectLink2(this, v30[*(*(a2 + 10) + 24 * *(v25 + 116))], v30[*(*(a2 + 10) + 24 * *(v25 + 120))], v29);
      v24 += 4;
    }

    while (4 * v18 != v24);
  }

LABEL_21:
  *(this + 8) = 0;
  Lattice<WordLatticeLC>::minimize(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v30);
}

void sub_262825F08(_Unwind_Exception *a1)
{
  DgnIArray<Utterance *>::~DgnIArray((v1 + 30));
  DgnIArray<Utterance *>::~DgnIArray((v1 + 28));
  Lattice<WordLatticeLC>::~Lattice(v1);
  _Unwind_Resume(a1);
}

uint64_t Lattice<WordLatticeLC>::maybeCreateAndConnectLink2(uint64_t a1, int a2, const WordLatticeLC *a3, WordLatticeLC *a4)
{
  v5 = a3;
  v8 = *(*(a1 + 80) + 24 * a2 + 20);
  if (v8 != -2)
  {
    v9 = *(a1 + 128);
    do
    {
      if (*(v9 + 136 * v8 + 120) == v5)
      {
        result = WordLatticeLC::cmp(a4, (v9 + 136 * v8), a3);
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 128);
      }

      v8 = *(v9 + 136 * v8 + 128);
    }

    while (v8 != -2);
  }

  Link = Lattice<WordLatticeLC>::createLink(a1, a2, v5, a4);
  Lattice<WordLatticeLC>::connectInLink(a1, Link);
  Lattice<WordLatticeLC>::connectOutLink(a1, Link);
  return 1;
}

uint64_t Lattice<WordLatticeLC>::cmpNodesByInLinks(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = Lattice<WordLatticeLC>::cmpNodesByInLinksIgnoreNodes(a1, a2, a3);
  if (!result)
  {
    if (a2 == a3)
    {
      return 0;
    }

    else if (*(*(a1 + 80) + 24 * a2 + 4) < *(*(a1 + 80) + 24 * a3 + 4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t Lattice<WordLatticeLC>::cmpNodesByOutLinks(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = Lattice<WordLatticeLC>::cmpNodesByOutLinksIgnoreNodes(a1, a2, a3);
  if (!result)
  {
    if (a2 == a3)
    {
      return 0;
    }

    else if (*(*(a1 + 80) + 24 * a2 + 4) < *(*(a1 + 80) + 24 * a3 + 4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t mrec_qsort_r<InLinkICmp>(uint64_t result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<WordLatticeLC>::cmpInLink(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<WordLatticeLC>::cmpInLink(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<WordLatticeLC>::cmpInLink(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<WordLatticeLC>::cmpInLink(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<WordLatticeLC>::cmpInLink(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<WordLatticeLC>::cmpInLink(a4, *(v11 - v13), *v11);
      v22 = Lattice<WordLatticeLC>::cmpInLink(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<WordLatticeLC>::cmpInLink(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<WordLatticeLC>::cmpInLink(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<WordLatticeLC>::cmpInLink(a4, *v23, *v12);
      v25 = Lattice<WordLatticeLC>::cmpInLink(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<WordLatticeLC>::cmpInLink(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<WordLatticeLC>::cmpInLink(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<WordLatticeLC>::cmpInLink(a4, *v18, *v11);
    result = Lattice<WordLatticeLC>::cmpInLink(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<WordLatticeLC>::cmpInLink(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<WordLatticeLC>::cmpInLink(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<WordLatticeLC>::cmpInLink(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<WordLatticeLC>::cmpInLink(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<InLinkICmp>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<WordLatticeLC>::cmpInLink(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

uint64_t mrec_qsort_r<OutLinkICmp>(uint64_t result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<WordLatticeLC>::cmpOutLink(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<WordLatticeLC>::cmpOutLink(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<WordLatticeLC>::cmpOutLink(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<WordLatticeLC>::cmpOutLink(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<WordLatticeLC>::cmpOutLink(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<WordLatticeLC>::cmpOutLink(a4, *(v11 - v13), *v11);
      v22 = Lattice<WordLatticeLC>::cmpOutLink(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<WordLatticeLC>::cmpOutLink(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<WordLatticeLC>::cmpOutLink(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<WordLatticeLC>::cmpOutLink(a4, *v23, *v12);
      v25 = Lattice<WordLatticeLC>::cmpOutLink(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<WordLatticeLC>::cmpOutLink(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<WordLatticeLC>::cmpOutLink(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<WordLatticeLC>::cmpOutLink(a4, *v18, *v11);
    result = Lattice<WordLatticeLC>::cmpOutLink(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<WordLatticeLC>::cmpOutLink(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<WordLatticeLC>::cmpOutLink(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<WordLatticeLC>::cmpOutLink(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<WordLatticeLC>::cmpOutLink(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<OutLinkICmp>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<WordLatticeLC>::cmpOutLink(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

uint64_t mrec_qsort_r<NodeByInLinksICmp>(uint64_t result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *(v11 - v13), *v11);
      v22 = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v23, *v12);
      v25 = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v18, *v11);
    result = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<WordLatticeLC>::cmpNodesByInLinks(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<WordLatticeLC>::cmpNodesByInLinks(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<NodeByInLinksICmp>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<WordLatticeLC>::cmpNodesByInLinks(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

uint64_t mrec_qsort_r<NodeByOutLinksICmp>(uint64_t result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *(v11 - v13), *v11);
      v22 = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v23, *v12);
      v25 = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v18, *v11);
    result = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<WordLatticeLC>::cmpNodesByOutLinks(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<WordLatticeLC>::cmpNodesByOutLinks(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<NodeByOutLinksICmp>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<WordLatticeLC>::cmpNodesByOutLinks(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

BOOL WordLattice::hasCollapsedWords(WordLattice *this)
{
  v1 = *(this + 26);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 12);
  v3 = *(this + 16);
  if ((*(v3 + 136 * *v2 + 88) & 0xFFFFFF) == 0xFFFFFB)
  {
    return 1;
  }

  v5 = 1;
  do
  {
    v6 = v5;
    if (v1 == v5)
    {
      break;
    }

    v7 = *(v3 + 136 * v2[v5++] + 88) & 0xFFFFFF;
  }

  while (v7 != 16777211);
  return v6 < v1;
}

uint64_t WordLattice::findOrAddLinkSegId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 248) | (*(a2 + 8) << 32);
  v6 = HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::insert(a3, v5, a2);
  if (v6 == v5)
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 252);
    v9 = *(a1 + 248) + v7;
    if (v9 > v8)
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(a1 + 240, v9 - v8, 1);
      v7 = *(a2 + 8);
    }

    if (v7)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = (*a2 + v10);
        v13 = *(a1 + 240) + 28 * (v11 + *(a1 + 248));
        v14 = *v12;
        *(v13 + 8) = *(v12 + 4);
        *v13 = v14;
        *(v13 + 10) = *(v12 + 10);
        *(v13 + 11) = *(v12 + 11);
        *(v13 + 12) = *(v12 + 3);
        *(v13 + 16) = *(v12 + 4);
        *(v13 + 20) = *(v12 + 20);
        ++v11;
        v15 = *(a2 + 8);
        v10 += 28;
      }

      while (v11 < v15);
    }

    else
    {
      LODWORD(v15) = 0;
    }

    *(a1 + 248) += v15;
  }

  return v6;
}

uint64_t HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::insert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 4);
  if (*a1 >= v6 >> 1)
  {
    HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::upSize(a1, 2 * v6);
  }

  v7 = WordLattice::computeHash(a3);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = (-1640531527 * v7) >> -v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 16);
  v11 = *(v10 + 8 * v9);
  if (v11 == -1)
  {
LABEL_14:
    *(v10 + 8 * v9) = a2;
    ++*a1;
    return a2;
  }

  if (!WordLattice::equalKeys(*(a1 + 32), v11, a3))
  {
    while (1)
    {
      v9 = v9 + 1 == *(a1 + 4) ? 0 : (v9 + 1);
      v10 = *(a1 + 16);
      v12 = *(v10 + 8 * v9);
      if (v12 == -1)
      {
        break;
      }

      if (WordLattice::equalKeys(*(a1 + 32), v12, a3))
      {
        return *(*(a1 + 16) + 8 * v9);
      }
    }

    goto LABEL_14;
  }

  return *(*(a1 + 16) + 8 * v9);
}

void WordLattice::printSize(WordLattice *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1664);
  if (v84)
  {
    v13 = v83;
  }

  else
  {
    v13 = &unk_262891560;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_262891560, a3, &unk_262891560, v13);
  DgnString::~DgnString(&v83);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_262891560);
  v82 = 0;
  v83 = 0;
  v15 = (a3 + 1);
  v81 = 0;
  Lattice<WordLatticeLC>::printSize(this, 0xFFFFFFFFLL, v15, &v83, &v82, &v81);
  *a4 += v83;
  *a5 += v82;
  *a6 += v81;
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1668);
  if (v84)
  {
    v18 = v83;
  }

  else
  {
    v18 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1670);
  if (v84)
  {
    v20 = v83;
  }

  else
  {
    v20 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1672);
  if (v84)
  {
    v22 = v83;
  }

  else
  {
    v22 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v22, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1674);
  if (v84)
  {
    v24 = v83;
  }

  else
  {
    v24 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v24, 2, 2, 0);
  DgnString::~DgnString(&v83);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1676);
  if (v84)
  {
    v26 = v83;
  }

  else
  {
    v26 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v26, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1678);
  if (v84)
  {
    v28 = v83;
  }

  else
  {
    v28 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v28, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1680);
  if (v84)
  {
    v30 = v83;
  }

  else
  {
    v30 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v30, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1682);
  if (v84)
  {
    v32 = v83;
  }

  else
  {
    v32 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v32, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1684);
  if (v84)
  {
    v34 = v83;
  }

  else
  {
    v34 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v34, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1686);
  if (v84)
  {
    v36 = v83;
  }

  else
  {
    v36 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v36, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1688);
  if (v84)
  {
    v38 = v83;
  }

  else
  {
    v38 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v38, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1690);
  if (v84)
  {
    v40 = v83;
  }

  else
  {
    v40 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v40, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1692);
  if (v84)
  {
    v42 = v83;
  }

  else
  {
    v42 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v42, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1694);
  if (v84)
  {
    v44 = v83;
  }

  else
  {
    v44 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v44, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1696);
  if (v84)
  {
    v46 = v83;
  }

  else
  {
    v46 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v46, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1698);
  if (v84)
  {
    v48 = v83;
  }

  else
  {
    v48 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v48, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1700);
  if (v84)
  {
    v50 = v83;
  }

  else
  {
    v50 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v50, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1702);
  if (v84)
  {
    v52 = v83;
  }

  else
  {
    v52 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v52, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1704);
  if (v84)
  {
    v54 = v83;
  }

  else
  {
    v54 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v54, 1, 1, 0);
  v80 = a3;
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  v55 = sizeObject<ParseToken>(this + 224, 0);
  v56 = sizeObject<ParseToken>(this + 224, 1);
  sizeObject(&v83, 2);
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1706);
  if (v84)
  {
    v58 = v83;
  }

  else
  {
    v58 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v58, v55, v56, 0);
  DgnString::~DgnString(&v83);
  *a4 += v55;
  *a5 += v56;
  v59 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 12;
  }

  v60 = *(this + 62);
  v61 = 28 * v60;
  if (v60 <= 0)
  {
    v61 = 0;
  }

  v62 = v61 + v59;
  v63 = v61 + v59 + 28 * (*(this + 63) - v60);
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1708);
  if (v84)
  {
    v65 = v83;
  }

  else
  {
    v65 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v15, &unk_262891560, v16, v16, v65, v63, v62, 0);
  DgnString::~DgnString(&v83);
  *a4 += v63;
  *a5 += v62;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 12;
  }

  else
  {
    v66 = 16;
  }

  v67 = *(this + 66);
  v68 = *(this + 67);
  if (v68 >= v67)
  {
    v69 = 0;
    if (v67 > 0)
    {
      v66 += 8 * (v67 - 1) + 8;
    }

    v70 = v66 + 8 * (v68 - v67);
  }

  else
  {
    v69 = 8 * v67;
    v70 = v66;
  }

  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1710);
  if (v84)
  {
    v72 = v83;
  }

  else
  {
    v72 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v15, &unk_262891560, v16, v16, v72, v70, v66, v69);
  DgnString::~DgnString(&v83);
  *a4 += v70;
  *a5 += v66;
  *a6 += v69;
  v73 = sizeObject(this + 272, 0);
  v74 = sizeObject(this + 272, 1);
  v75 = sizeObject(this + 272, 3);
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1712);
  if (v84)
  {
    v77 = v83;
  }

  else
  {
    v77 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v15, &unk_262891560, v16, v16, v77, v73, v74, v75);
  DgnString::~DgnString(&v83);
  *a4 += v73;
  *a5 += v74;
  *a6 += v75;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/wordlat.cpp", 1713);
  if (v84)
  {
    v79 = v83;
  }

  else
  {
    v79 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v80, &unk_262891560, (35 - v80), (35 - v80), v79, *a4, *a5, *a6);
  DgnString::~DgnString(&v83);
}

void sub_262828E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void Lattice<WordLatticeLC>::printSize(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 898);
  if (v100)
  {
    v13 = v99;
  }

  else
  {
    v13 = &unk_262891560;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_262891560, a3, &unk_262891560, v13);
  DgnString::~DgnString(&v99);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_262891560);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v18 = v99;
  }

  else
  {
    v18 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v18, 1, 1, 0);
  DgnString::~DgnString(&v99);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v20 = v99;
  }

  else
  {
    v20 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_262891560, (34 - a3), (34 - a3), v20, 4, 4, 0);
  v98 = a3;
  DgnString::~DgnString(&v99);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 12;
  }

  else
  {
    v21 = 16;
  }

  v22 = a1[6];
  v23 = a1[7];
  if (v23 >= v22)
  {
    v24 = 0;
    if (v22 > 0)
    {
      v21 += 4 * (v22 - 1) + 4;
    }

    v25 = v21 + 4 * (v23 - v22);
  }

  else
  {
    v24 = 4 * v22;
    v25 = v21;
  }

  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v27 = v99;
  }

  else
  {
    v27 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v15, &unk_262891560, v16, v16, v27, v25, v21, v24);
  DgnString::~DgnString(&v99);
  *a4 += v25;
  *a5 += v21;
  *a6 += v24;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 12;
  }

  else
  {
    v28 = 16;
  }

  v29 = a1[10];
  v30 = a1[11];
  if (v30 >= v29)
  {
    v31 = 0;
    if (v29 > 0)
    {
      v28 += 4 * (v29 - 1) + 4;
    }

    v32 = v28 + 4 * (v30 - v29);
  }

  else
  {
    v31 = 4 * v29;
    v32 = v28;
  }

  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v34 = v99;
  }

  else
  {
    v34 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v15, &unk_262891560, v16, v16, v34, v32, v28, v31);
  DgnString::~DgnString(&v99);
  *a4 += v32;
  *a5 += v28;
  *a6 += v31;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 12;
  }

  else
  {
    v35 = 16;
  }

  v36 = a1[14];
  v37 = a1[15];
  if (v37 >= v36)
  {
    v38 = 0;
    if (v36 > 0)
    {
      v35 += 4 * (v36 - 1) + 4;
    }

    v39 = v35 + 4 * (v37 - v36);
  }

  else
  {
    v38 = 4 * v36;
    v39 = v35;
  }

  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v41 = v99;
  }

  else
  {
    v41 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v15, &unk_262891560, v16, v16, v41, v39, v35, v38);
  DgnString::~DgnString(&v99);
  *a4 += v39;
  *a5 += v35;
  *a6 += v38;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 12;
  }

  else
  {
    v42 = 16;
  }

  v43 = a1[18];
  v44 = a1[19];
  if (v44 >= v43)
  {
    v45 = 0;
    if (v43 > 0)
    {
      v42 += 4 * (v43 - 1) + 4;
    }

    v46 = v42 + 4 * (v44 - v43);
  }

  else
  {
    v45 = 4 * v43;
    v46 = v42;
  }

  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v48 = v99;
  }

  else
  {
    v48 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v15, &unk_262891560, v16, v16, v48, v46, v42, v45);
  DgnString::~DgnString(&v99);
  *a4 += v46;
  *a5 += v42;
  *a6 += v45;
  v49 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v49 = 12;
  }

  v50 = a1[22];
  v51 = 24 * v50;
  if (v50 <= 0)
  {
    v51 = 0;
  }

  v52 = v51 + v49;
  v53 = v51 + v49 + 24 * (a1[23] - v50);
  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v55 = v99;
  }

  else
  {
    v55 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v15, &unk_262891560, v16, v16, v55, v53, v52, 0);
  DgnString::~DgnString(&v99);
  *a4 += v53;
  *a5 += v52;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v56 = 12;
  }

  else
  {
    v56 = 16;
  }

  v57 = a1[26];
  v58 = a1[27];
  if (v58 >= v57)
  {
    v59 = 0;
    if (v57 > 0)
    {
      v56 += 4 * (v57 - 1) + 4;
    }

    v60 = v56 + 4 * (v58 - v57);
  }

  else
  {
    v59 = 4 * v57;
    v60 = v56;
  }

  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v62 = v99;
  }

  else
  {
    v62 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v15, &unk_262891560, v16, v16, v62, v60, v56, v59);
  DgnString::~DgnString(&v99);
  *a4 += v60;
  *a5 += v56;
  *a6 += v59;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 12;
  }

  else
  {
    v63 = 16;
  }

  v64 = a1[30];
  v65 = a1[31];
  if (v65 >= v64)
  {
    v66 = 0;
    if (v64 > 0)
    {
      v63 += 4 * (v64 - 1) + 4;
    }

    v67 = v63 + 4 * (v65 - v64);
  }

  else
  {
    v66 = 4 * v64;
    v67 = v63;
  }

  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v69 = v99;
  }

  else
  {
    v69 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v15, &unk_262891560, v16, v16, v69, v67, v63, v66);
  DgnString::~DgnString(&v99);
  *a4 += v67;
  *a5 += v63;
  *a6 += v66;
  v70 = sizeObject<LatticeLink<WordLatticeLC>>((a1 + 32), 0);
  v71 = sizeObject<LatticeLink<WordLatticeLC>>((a1 + 32), 1);
  v72 = sizeObject<LatticeLink<WordLatticeLC>>((a1 + 32), 3);
  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v74 = v99;
  }

  else
  {
    v74 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v15, &unk_262891560, v16, v16, v74, v70, v71, v72);
  DgnString::~DgnString(&v99);
  *a4 += v70;
  *a5 += v71;
  *a6 += v72;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v75 = 12;
  }

  else
  {
    v75 = 16;
  }

  v76 = a1[38];
  v77 = a1[39];
  if (v77 >= v76)
  {
    v78 = 0;
    if (v76 > 0)
    {
      v75 += 4 * (v76 - 1) + 4;
    }

    v79 = v75 + 4 * (v77 - v76);
  }

  else
  {
    v78 = 4 * v76;
    v79 = v75;
  }

  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v81 = v99;
  }

  else
  {
    v81 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v15, &unk_262891560, v16, v16, v81, v79, v75, v78);
  DgnString::~DgnString(&v99);
  *a4 += v79;
  *a5 += v75;
  *a6 += v78;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v82 = 12;
  }

  else
  {
    v82 = 16;
  }

  v83 = a1[42];
  v84 = a1[43];
  if (v84 >= v83)
  {
    v85 = 0;
    if (v83 > 0)
    {
      v82 += 4 * (v83 - 1) + 4;
    }

    v86 = v82 + 4 * (v84 - v83);
  }

  else
  {
    v85 = 4 * v83;
    v86 = v82;
  }

  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v88 = v99;
  }

  else
  {
    v88 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v15, &unk_262891560, v16, v16, v88, v86, v82, v85);
  DgnString::~DgnString(&v99);
  *a4 += v86;
  *a5 += v82;
  *a6 += v85;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v89 = 12;
  }

  else
  {
    v89 = 16;
  }

  v90 = a1[46];
  v91 = a1[47];
  if (v91 >= v90)
  {
    v92 = 0;
    if (v90 > 0)
    {
      v89 += 4 * (v90 - 1) + 4;
    }

    v93 = v89 + 4 * (v91 - v90);
  }

  else
  {
    v92 = 4 * v90;
    v93 = v89;
  }

  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v100)
  {
    v95 = v99;
  }

  else
  {
    v95 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v15, &unk_262891560, v16, v16, v95, v93, v89, v92);
  DgnString::~DgnString(&v99);
  *a4 += v93;
  *a5 += v89;
  *a6 += v92;
  getShipObjectSizeDescription(&v99, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 908);
  if (v100)
  {
    v97 = v99;
  }

  else
  {
    v97 = &unk_262891560;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v98, &unk_262891560, (35 - v98), (35 - v98), v97, *a4, *a5, *a6);
  DgnString::~DgnString(&v99);
}

void sub_2628298F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t writeObject(DgnStream *a1, const LatticeData *a2, unsigned int *a3)
{
  writeObject(a1, a2, a3);
  writeObject(a1, a2 + 1, a3);
  writeObject(a1, a2 + 2, a3);
  writeObject(a1, a2 + 3, a3);
  v11 = *(a2 + 6);
  writeObject(a1, &v11, a3);
  if (*(a2 + 6))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      writeObject(a1, (*(a2 + 2) + v6), a3);
      ++v7;
      v6 += 112;
    }

    while (v7 < *(a2 + 6));
  }

  v8 = *(a2 + 20);
  if (v8 == -64)
  {
    v8 = -1;
  }

  v10 = v8;
  writeObject(a1, &v10, a3);
  writeObject(a1, a2 + 21, a3);
  writeObject(a1, a2 + 22, a3);
  writeObject(a1, a2 + 23, a3);
  writeObject(a1, a2 + 96, a3);
  writeObject(a1, a2 + 97, a3);
  writeObject(a1, a2 + 98, a3);
  writeObject(a1, a2 + 99, a3);
  writeObject(a1, a2 + 100, a3);
  writeObject(a1, a2 + 101, a3);
  writeObject(a1, a2 + 102, a3);
  writeObject(a1, a2 + 103, a3);
  writeObject(a1, a2 + 104, a3);
  writeObject(a1, a2 + 105, a3);
  writeObject(a1, a2 + 106, a3);
  writeObject(a1, a2 + 107, a3);
  writeObject(a1, a2 + 108, a3);
  writeObject(a1, a2 + 109, a3);
  writeObject<ParseToken>(a1, a2 + 112, a3);
  writeObject<LinkSegment>(a1, a2 + 128, a3);
  writeObject<unsigned long long>(a1, a2 + 144, a3);
  return writeObject(a1, a2 + 160, a3);
}

uint64_t writeObject<LinkSegment>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, *a2 + v7, a3);
      ++v8;
      v7 += 28;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

DgnString *WordLattice::fillLatticeData(WordLattice *this, LatticeData *a2)
{
  VocOrThrow = VocMgr::getVocOrThrow(VocMgr::smpVocMgr, *(this + 102));
  v5 = VocOrThrow[7];
  *a2 = *(VocOrThrow[6] + 376);
  v6 = *(v5 + 732);
  LODWORD(v5) = *(VocOrThrow[8] + 44);
  *(a2 + 2) = v6;
  *(a2 + 3) = v5;
  if (*(this + 26))
  {
    v7 = 0;
    do
    {
      v8 = *(this + 16) + 136 * *(*(this + 12) + 4 * v7);
      v9 = *(this + 10);
      LODWORD(v37) = *(v9 + 24 * *(v8 + 116));
      HIDWORD(v37) = *(v9 + 24 * *(v8 + 120));
      v10 = *(v8 + 88);
      v11 = *(v8 + 108);
      v12 = *(v8 + 96);
      v13 = *(v8 + 16);
      v14 = *(v8 + 32);
      v15 = *(v8 + 48);
      v28 = v13;
      v29 = v14;
      v30 = v15;
      v34 = v10;
      v35 = v11;
      v36 = v12;
      v16 = *(v8 + 64);
      v17 = *(v8 + 72);
      v31 = v16;
      v32 = v17;
      v18 = *(v8 + 8);
      v27 = v18;
      v19 = *(v8 + 80);
      v33 = v19;
      v20 = *(a2 + 6);
      if (v20 == *(a2 + 7))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2 + 16, 1, 1);
        LODWORD(v20) = *(a2 + 6);
        v18 = v27;
        v13 = v28;
        v14 = v29;
        v15 = v30;
        v16 = v31;
        v17 = v32;
        v19 = v33;
        v10 = v34;
        v11 = v35;
        v12 = v36;
      }

      v21 = *(a2 + 2) + 112 * v20;
      *(v21 + 8) = v18;
      *(v21 + 16) = v13;
      *(v21 + 32) = v14;
      *(v21 + 48) = v15;
      *(v21 + 64) = v16;
      *(v21 + 72) = v17;
      *(v21 + 80) = v19;
      *v21 = &unk_287528168;
      *(v21 + 88) = v10;
      *(v21 + 92) = v11;
      *(v21 + 96) = v12;
      *(v21 + 104) = v37;
      ++*(a2 + 6);
      ++v7;
    }

    while (v7 < *(this + 26));
  }

  *(a2 + 10) = *(this + 24);
  v22 = *(this + 6);
  *(a2 + 22) = *(this + 50);
  *(a2 + 23) = v22;
  *(a2 + 48) = *(this + 103);
  v23.i32[0] = *(this + 52);
  v23.i32[1] = *(this + 213);
  *(a2 + 98) = v23;
  v23.i32[0] = *(this + 217);
  v24 = vmovl_u8(v23).u64[0];
  v25 = vuzp2_s16(vext_s8(v24, v24, 2uLL), v24);
  *(a2 + 106) = vuzp1_s8(v25, v25).u32[0];
  DgnArray<ParseToken>::copyArraySlice(a2 + 14, this + 28, 0, *(this + 58));
  DgnArray<LinkSegment>::copyArraySlice(a2 + 16, this + 30, 0, *(this + 62));
  DgnPrimArray<unsigned long long>::copyArraySlice(a2 + 18, this + 32, 0, *(this + 66));
  return DgnString::operator=((a2 + 160), (this + 272));
}

uint64_t WordLattice::computeConfidencePredictorsForLinks(uint64_t a1, uint64_t a2, uint64_t *a3, __int16 **a4)
{
  *(a1 + 219) = 1;
  v8 = *(a2 + 8);
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v9 = realloc_array(0, &v32, 4 * (v8 + 1), 0, 0, 1);
  v10 = v32;
  v34 = v32;
  LODWORD(v35) = v8 + 1;
  HIDWORD(v35) = v9 >> 2;
  *v32 = 0;
  if (v8)
  {
    v11 = 0;
    v12 = *a2;
    v13 = v10 + 4;
    do
    {
      v14 = *v12++;
      v11 += v14;
      *v13++ = v11;
      --v8;
    }

    while (v8);
  }

  v15 = *(a4 + 2);
  v32 = 0;
  v33 = 0;
  v36 = 0;
  v16 = realloc_array(0, &v36, 4 * (v15 + 1), 0, 0, 1);
  v17 = v36;
  v32 = v36;
  LODWORD(v33) = v15 + 1;
  HIDWORD(v33) = v16 >> 2;
  *v36 = 0;
  if (v15)
  {
    v18 = 0;
    v19 = *a4;
    v20 = v17 + 1;
    do
    {
      v21 = *v19++;
      v18 += v21;
      *v20++ = v18;
      --v15;
    }

    while (v15);
  }

  v22 = *(a1 + 104);
  if (v22)
  {
    v23 = *(a1 + 96);
    v24 = *(a1 + 128);
    v25 = v34;
    v26 = *a3;
    do
    {
      v27 = *v23++;
      v28 = (v24 + 136 * v27);
      v29 = v28[4];
      v30 = v28[5] + v29;
      v28[16] = v17[v30] - v17[v29];
      v28[14] = v25[v30] - v25[v29];
      v28[15] = *(v26 + 4 * (v30 - 1));
      --v22;
    }

    while (v22);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
}

void sub_26282A01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void WordLattice::saveLattice(WordLattice *a1, uint64_t a2, _DWORD *a3)
{
  DFileOwner::DFileOwner(v19);
  *a3 = 1;
  v6 = DFile::openDFile(a2, 1, 14, v19);
  *a3 = 2;
  v7 = OpenAndWriteMrecHeader(v6, 0x1Eu, 0, "MRLAB!? ", 24, 10);
  v18 = 0;
  v13[0] = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  DgnString::DgnString(v17);
  WordLattice::fillLatticeData(a1, v9);
  writeObject(v7, v9, &v18);
  writeObjectChecksum(v7, &v18);
  DgnDelete<DgnStream>(v7);
  DFileOwner::setRemoveFileOnDestruction(v19, 0);
  *a3 = 0;
  DgnString::~DgnString(v17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
  DgnIArray<Utterance *>::~DgnIArray(&v15);
  DgnIArray<Utterance *>::~DgnIArray(&v14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v11);
  DgnIArray<Utterance *>::~DgnIArray(&v10);
  DFileOwner::~DFileOwner(v19, v8);
}

void sub_26282A178(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 144);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 128);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 32);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 16);
  DFileOwner::~DFileOwner((v2 - 64), v4);
  _Unwind_Resume(a1);
}

void LatticeData::~LatticeData(LatticeData *this)
{
  DgnString::~DgnString(this + 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 144);
  DgnIArray<Utterance *>::~DgnIArray(this + 128);
  DgnIArray<Utterance *>::~DgnIArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnIArray<Utterance *>::~DgnIArray(this + 16);
}

uint64_t WordLattice::fixStateIds(uint64_t this)
{
  v1 = *(this + 104);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = v1 - 1;
    do
    {
      v4 = *(v2 + 128) + 136 * *(*(v2 + 96) + 4 * v3);
      v5 = *(v4 + 96);
      if (v5)
      {
        this = VocMgr::getVocOrThrow(VocMgr::smpVocMgr, *(v4 + 88) >> 25);
        v6 = *(this + 56);
        if (*(*(v6 + 48) + 2 * v5))
        {
          *(v4 + 96) = *(*(v6 + 64) + 4 * v5);
        }
      }

      v7 = v3-- + 1;
    }

    while (v7 > 1);
  }

  return this;
}

_DWORD *WordLattice::extendPath@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 12);
  v10 = (*(a1 + 128) + 136 * *(*(a1 + 96) + 4 * a3));
  result = v10 + 22;
  v12 = v10[22];
  if ((v12 & 0xFFFFFF) == 0xFFFFFB)
  {
    v13 = v12 >> 25;
    v14 = v10[24];
    if (*(a2 + 16) != v12 >> 25 || *(a2 + 20) != v14)
    {
      result = CWIDAC::computeHash(result);
      HIDWORD(v16) = v9;
      LODWORD(v16) = v9;
      v9 = result + (v16 >> 19);
      v17 = v10[18];
      if (v17)
      {
        HIDWORD(v18) = v9;
        LODWORD(v18) = v9;
        HIDWORD(v18) = v10[17] + (v18 >> 19);
        LODWORD(v18) = HIDWORD(v18);
        v9 = (v18 >> 19) + v17;
      }
    }
  }

  else
  {
    result = CWIDAC::computeHash(result);
    HIDWORD(v19) = v9;
    LODWORD(v19) = v9;
    v9 = result + (v19 >> 19);
    v20 = v10[18];
    v14 = 0;
    if (v20)
    {
      HIDWORD(v21) = v9;
      LODWORD(v21) = v9;
      HIDWORD(v21) = v10[17] + (v21 >> 19);
      LODWORD(v21) = HIDWORD(v21);
      v9 = (v21 >> 19) + v20;
    }

    v13 = 127;
  }

  v22 = v10[7] + *(a2 + 8) + v10[8] + v10[9] + v10[10] + v10[11] + v10[12] + v10[13];
  *a5 = a3;
  *(a5 + 4) = a4;
  *(a5 + 8) = v22;
  *(a5 + 12) = v9;
  *(a5 + 16) = v13 | (v14 << 32);
  return result;
}

void WordLattice::makeMinimumSpanningTree(uint64_t a1, unsigned int *a2, uint64_t a3, void **a4)
{
  v8 = *(a1 + 24);
  v9 = a2[3];
  if (v8 > v9)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v8 - v9, 0);
  }

  v10 = a2[2];
  if (v10 <= v8)
  {
    if (v10 < v8)
    {
      v13 = v8 - v10;
      v14 = 16 * v10;
      do
      {
        v15 = (*a2 + v14);
        *v15 = 0;
        v15[1] = 0;
        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }

  else if (v10 > v8)
  {
    v11 = v10;
    v12 = 16 * v10 - 16;
    do
    {
      --v11;
      DgnIArray<Utterance *>::~DgnIArray(*a2 + v12);
      v12 -= 16;
    }

    while (v11 > v8);
  }

  a2[2] = v8;
  v16 = *(a1 + 24);
  v17 = *(a3 + 12);
  if (v16 > v17)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a3, v16 - v17, 0);
  }

  v18 = *(a3 + 8);
  if (v18 <= v16)
  {
    if (v18 < v16)
    {
      do
      {
        *(*a3 + 8 * v18++) = 0;
      }

      while (v16 != v18);
    }
  }

  else
  {
    DgnIOwnArray<DgnPriorityQueue<LatticePath> *>::destructAt(a3, v16, v18 - v16);
  }

  *(a3 + 8) = v16;
  v19 = *(a1 + 24);
  if (*(a4 + 3) >= v19)
  {
    *(a4 + 2) = v19;
    if (!v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v34[0] = 0;
    v20 = realloc_array(*a4, v34, v19, *(a4 + 2), *(a4 + 2), 1);
    *a4 = v34[0];
    *(a4 + 2) = v19;
    *(a4 + 3) = v20;
  }

  bzero(*a4, v19);
LABEL_21:
  v21 = *a2;
  v22 = *(*a2 + 8);
  if (v22 == *(*a2 + 12))
  {
    DgnArray<CWIDAC>::reallocElts(*a2, 1, 1);
    v22 = *(v21 + 8);
  }

  v23 = *v21 + 24 * v22;
  *v23 = xmmword_26286C150;
  *(v23 + 16) = 127;
  *(v23 + 20) = 0;
  ++*(v21 + 8);
  **a4 = 1;
  v24 = *(a1 + 24);
  if (v24)
  {
    for (i = 0; i < v24; ++i)
    {
      v26 = *(*(a1 + 80) + 24 * *(*(a1 + 16) + 4 * i) + 20);
      if (v26 != -2)
      {
        v27 = *(*a2 + 16 * i);
        v28 = *(a1 + 128);
        do
        {
          WordLattice::extendPath(a1, v27, *(v28 + 136 * v26 + 112), 0, v34);
          v29 = (*a2 + 16 * *(*(a1 + 80) + 24 * *(*(a1 + 128) + 136 * v26 + 120)));
          if (v29[2])
          {
            v30 = v34[1];
            v31 = *v29;
            if (SLODWORD(v34[1]) < *(*v29 + 8))
            {
              *v31 = v34[0];
              *(v31 + 8) = v30;
              *(v31 + 12) = HIDWORD(v34[1]);
              *(v31 + 16) = v35;
            }
          }

          else
          {
            if (v29[3])
            {
              v32 = 0;
            }

            else
            {
              DgnArray<CWIDAC>::reallocElts(*a2 + 16 * *(*(a1 + 80) + 24 * *(*(a1 + 128) + 136 * v26 + 120)), 1, 1);
              v32 = v29[2];
            }

            v33 = *v29 + 24 * v32;
            *v33 = *v34;
            *(v33 + 16) = v35;
            ++v29[2];
          }

          v28 = *(a1 + 128);
          v26 = *(v28 + 136 * v26 + 128);
        }

        while (v26 != -2);
        v24 = *(a1 + 24);
      }
    }
  }
}

uint64_t *WordLattice::initializeEndNodeHeap(void *a1, unsigned int a2, void *a3, void *a4)
{
  v8 = *(a1[10] + 24 * *(a1[16] + 136 * *(a1[12] + 4 * a2) + 120));
  result = MemChunkAlloc(0x48uLL, 0);
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  result[7] = 0;
  result[8] = 0;
  *result = 0x1800000020;
  result[1] = 0;
  *(result + 12) = 0;
  *(*a4 + 8 * v8) = result;
  v10 = *(a1[10] + 24 * *(a1[2] + 4 * v8) + 16);
  if (v10 != -2)
  {
    v11 = a1[16];
    do
    {
      v12 = *(v11 + 136 * v10 + 112);
      if (v12 != a2)
      {
        v13 = *(*a4 + 8 * v8);
        WordLattice::extendPath(a1, *(*a3 + 16 * *(a1[10] + 24 * *(v11 + 136 * v10 + 116))), v12, 0, v14);
        result = DgnPriorityQueue<LatticePath>::push(v13, v14);
        v11 = a1[16];
      }

      v10 = *(v11 + 136 * v10 + 124);
    }

    while (v10 != -2);
  }

  return result;
}

uint64_t DgnPriorityQueue<LatticePath>::push(DgnPool *this, __int128 *a2)
{
  v4 = *(this + 1);
  if (!v4)
  {
    DgnPool::addChunk(this);
    v4 = *(this + 1);
  }

  *(this + 1) = *v4;
  v5 = *a2;
  v4[2] = *(a2 + 2);
  *v4 = v5;

  return DgnHeap<LatticePath>::insert(this + 56, v4);
}

double WordLattice::nextBestPath@<D0>(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = *(a1[10] + 24 * *(a1[16] + 136 * *(a1[12] + 4 * v10) + 120));
  v12 = *a4;
  if (!*(*a4 + 8 * v11))
  {
    WordLattice::initializeEndNodeHeap(a1, v10, a3, a4);
    v12 = *a4;
  }

  v43 = a5;
  v50 = *a2;
  v51 = *(a2 + 2);
  v14 = v50;
  v13 = DWORD1(v50);
  while (1)
  {
    v15 = a1[10];
    v16 = *(v15 + 24 * *(a1[16] + 136 * *(a1[12] + 4 * v14) + 120));
    v17 = *(v15 + 24 * *(a1[16] + 136 * *(a1[12] + 4 * v14) + 116));
    v48 = xmmword_262891550;
    LOWORD(v49) = 127;
    HIDWORD(v49) = 0;
    v18 = *a3 + 16 * v17;
    if (v13 + 1 >= *(v18 + 8))
    {
      if (*(*v43 + v17))
      {
        LODWORD(v25) = 0;
        v22 = 0;
        v20 = -2;
        v23 = 1879048192;
        v24 = 127;
        v21 = -2;
      }

      else
      {
        v26 = *v18 + 24 * v13;
        v46 = *v26;
        v47 = *(v26 + 16);
        WordLattice::nextBestPath(a1, &v46, a3, a4, v43, &v44);
        v21 = v44;
        v20 = DWORD1(v44);
        v48 = v44;
        v23 = DWORD2(v44);
        v22 = HIDWORD(v44);
        v49 = v45;
        v24 = v45;
        v25 = HIDWORD(v45);
      }
    }

    else
    {
      v19 = *v18 + 24 * (v13 + 1);
      v21 = *v19;
      v20 = *(v19 + 4);
      LODWORD(v48) = *v19;
      DWORD1(v48) = v20;
      v23 = *(v19 + 8);
      v22 = *(v19 + 12);
      *(&v48 + 1) = __PAIR64__(v22, v23);
      v49 = *(v19 + 16);
      v24 = v49;
      v25 = HIDWORD(v49);
    }

    v27 = *(v12 + 8 * v11);
    if (v21 != -2 || v20 != -2 || v23 != 1879048192 || v22 || v24 != 127 || v25)
    {
      WordLattice::extendPath(a1, &v48, v14, v13 + 1, &v46);
      DgnPriorityQueue<LatticePath>::push(v27, &v46);
      v27 = *(v12 + 8 * v11);
    }

    if (*(v27 + 64))
    {
      Min = DgnHeap<LatticePath>::extractMin((v27 + 56));
      v14 = *Min;
      v13 = *(Min + 4);
      v29 = *(Min + 8);
      v30 = *(Min + 12);
      v31 = *(Min + 16);
      *Min = *(v27 + 8);
      *(v27 + 8) = Min;
      *&v50 = __PAIR64__(v13, v14);
      *(&v50 + 1) = __PAIR64__(v30, v29);
      v51 = v31;
      v32 = v29 == 1879048192;
      v33 = v30 == 0;
      v34 = v31 == 127;
      v35 = HIDWORD(v31) == 0;
    }

    else
    {
      v35 = 1;
      *(*v43 + v16) = 1;
      DgnDelete<DgnPriorityQueue<LatticePath>>(v27);
      *(v12 + 8 * v11) = 0;
      v13 = -2;
      v50 = xmmword_262891550;
      v42 = v42 & 0xFFFF0000 | 0x7FLL;
      v51 = v42;
      v34 = 1;
      v33 = 1;
      v32 = 1;
      v14 = -2;
    }

    if (v14 == -2 && v13 == -2 && v32 && v33 && v34 && v35)
    {
      break;
    }

    if ((WordLattice::wordSeqPresent(a1, &v50, v11, a3) & 1) == 0)
    {
      v36 = *a3 + 16 * v11;
      v37 = *(v36 + 8);
      if (v37 == *(v36 + 12))
      {
        DgnArray<CWIDAC>::reallocElts(*a3 + 16 * v11, 1, 1);
        v37 = *(v36 + 8);
      }

      v38 = *v36 + 24 * v37;
      *v38 = v50;
      *(v38 + 16) = v51;
      ++*(v36 + 8);
      break;
    }
  }

  result = *&v50;
  *a6 = v50;
  *(a6 + 16) = v51;
  return result;
}

uint64_t DgnDelete<DgnPriorityQueue<LatticePath>>(uint64_t result)
{
  if (result)
  {
    DgnPriorityQueue<LatticePath>::~DgnPriorityQueue(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t WordLattice::wordSeqPresent(void *a1, LatticePath *this, unsigned int a3, void *a4)
{
  v4 = *(*a4 + 16 * a3 + 8);
  if (v4 < 1)
  {
    return 0;
  }

  v6 = this;
  v8 = 16 * a3;
  v18 = v8;
  while (1)
  {
    v9 = (*(*a4 + v8) + 24 * (v4 - 1));
    if (v6[3] == v9[3])
    {
      while (!LatticePath::isRootPath(v6))
      {
        if (LatticePath::isRootPath(v9))
        {
          break;
        }

        v12 = a1[12];
        v13 = *(v12 + 4 * *v6);
        v14 = *(v12 + 4 * *v9);
        if (!CWIDAC::operator==(a1[16] + 136 * v13 + 88, a1[16] + 136 * v14 + 88))
        {
          break;
        }

        v15 = a1[16];
        if ((*(v15 + 136 * v13 + 88) & 0xFFFFFF) == 0xFFFFFB)
        {
          v21 = 0;
          v6 = WordLattice::skipToNextPathWithDifferentWord(a1, v6, a4, &v21);
          v20 = 0;
          v9 = WordLattice::skipToNextPathWithDifferentWord(a1, v9, a4, &v20);
          if (*(v21 + 68) != *(v20 + 68) || *(v21 + 72) != *(v20 + 72))
          {
            break;
          }
        }

        else
        {
          v16 = a1[10];
          v6 = (*(*a4 + 16 * *(v16 + 24 * *(v15 + 136 * v13 + 116))) + 24 * v6[1]);
          v9 = (*(*a4 + 16 * *(v16 + 24 * *(v15 + 136 * v14 + 116))) + 24 * v9[1]);
        }
      }

      v10 = LatticePath::operator==(v6, v9);
      v8 = v18;
      v6 = this;
      if (v10)
      {
        return 1;
      }
    }

    if (v4-- <= 1)
    {
      return 0;
    }
  }
}

void *WordLattice::getNBestListMaybePrune(uint64_t a1, unsigned int a2, uint64_t *a3, void **a4)
{
  v79[0] = 0;
  v79[1] = 0;
  v78[0] = 0;
  v78[1] = 0;
  v77[0] = 0;
  v77[1] = 0;
  WordLattice::makeMinimumSpanningTree(a1, v79, v78, v77);
  v7 = *(v79[0] + 16 * *(*(a1 + 80) + 24 * **(a1 + 48)));
  v8 = *(a1 + 104);
  if (*(a4 + 3) >= v8)
  {
    *(a4 + 2) = v8;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v58 = 0;
    v9 = realloc_array(*a4, &v58, v8, *(a4 + 2), *(a4 + 2), 1);
    *a4 = v58;
    *(a4 + 2) = v8;
    *(a4 + 3) = v9;
  }

  bzero(*a4, v8);
LABEL_5:
  v57 = a4;
  v75 = *v7;
  v10 = *(v7 + 2);
  v76 = v10;
  if (a2 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a2;
  }

  v13 = v75;
  v12 = DWORD1(v75);
  v14 = DWORD2(v75);
  v15 = HIDWORD(v75) == 0;
  if (v75 != -2 || DWORD1(v75) != 4294967294 || *(&v75 + 1) != 1879048192 || (v10 == 127 ? (v16 = HIDWORD(v76) == 0) : (v16 = 0), !v16))
  {
    v17 = 0;
    v52 = v11 - 1;
    v55 = a1;
    do
    {
      v54 = v17;
      v73 = 0;
      v74 = 0;
      v70 = 0uLL;
      v72 = 0;
      v71 = 0;
      if (v13 != 0xFFFFFFFFLL || v12 != 0xFFFFFFFFLL || v14 || !v15 || (v76 & 0xFFFFFFFF0000FFFFLL) != 0x7F)
      {
        v18 = 0;
        v19 = 0;
        v20 = v57;
        do
        {
          v21 = v12;
          *(*v20 + v13) = 1;
          v22 = *(v55[12] + 4 * v13);
          v23 = v55[16];
          if (v19 == HIDWORD(v74))
          {
            DgnArray<WordLatticeLC>::reallocElts(&v73, 1, 1);
            v19 = v74;
            v18 = v73;
          }

          v24 = (v23 + 136 * v22);
          WordLatticeLC::WordLatticeLC((v18 + 112 * v19), v24);
          LODWORD(v74) = v74 + 1;
          v25 = v55[16];
          v26 = (*(v79[0] + 16 * *(v55[10] + 24 * *(v25 + 136 * v22 + 116))) + 24 * v21);
          v13 = *v26;
          v56 = v26[1];
          v28 = v26[2];
          v27 = v26[3];
          v29 = *(v26 + 2);
          if ((*(v24 + 22) & 0xFFFFFF) == 0xFFFFFB)
          {
            v30 = v25 + 136 * *(v55[12] + 4 * v13);
            if (CWIDAC::operator==(v30 + 88, v24 + 88))
            {
              v31 = v56;
              do
              {
                *(*v57 + v13) = 1;
                ItemizedScores::operator+=(v73 + 112 * (v74 - 1) + 28, v30 + 28);
                v32 = *(v30 + 24) + *(v30 + 20);
                v33 = v73 + 112 * (v74 - 1);
                v34 = *(v33 + 16) - v32;
                v35 = *(v33 + 20) + v32;
                *(v33 + 16) = v34;
                *(v33 + 20) = v35;
                *(v33 + 68) = *(v30 + 68);
                v36 = v55[12];
                v37 = v55[16];
                v38 = (*(v79[0] + 16 * *(v55[10] + 24 * *(v37 + 136 * *(v36 + 4 * v13) + 116))) + 24 * v31);
                v13 = *v38;
                v31 = v38[1];
                v28 = v38[2];
                v27 = v38[3];
                v29 = *(v38 + 2);
                v30 = v37 + 136 * *(v36 + 4 * v13);
              }

              while (CWIDAC::operator==(v30 + 88, v24 + 88));
              v56 = v31;
              v20 = v57;
            }
          }

          v19 = v74;
          v18 = v73;
          v39 = v73 + 112 * (v74 - 1);
          v70 = vaddq_s32(v70, *(v39 + 28));
          v71 = vadd_s32(v71, *(v39 + 44));
          v72 += *(v39 + 52);
          v12 = v56;
          v42 = v13 == 0xFFFFFFFFLL && v56 == 0xFFFFFFFFLL && v28 == 0 && v27 == 0;
        }

        while (!v42 || (v29 & 0xFFFFFFFF0000FFFFLL) != 0x7F);
        if (v74 >= 2)
        {
          v43 = v74 >> 1;
          v44 = 112 * ((v74 - 1) >> 1) + 208;
          v45 = v43 + 1;
          v46 = 112 * v43;
          do
          {
            WordLatticeLC::WordLatticeLC(&v58, (v18 + v46 - 112));
            v47 = (v73 + v44);
            v48 = v73 + v46;
            BaseWordLatticeLC::operator=(v73 + v46 - 112, v73 + v44 - 96);
            *(v48 - 24) = *(v47 - 2);
            *(v48 - 20) = *(v47 - 1);
            *(v48 - 16) = *v47;
            v18 = v73;
            v49 = (v73 + v44);
            *(v49 - 11) = v59;
            *(v49 - 5) = v60;
            *(v49 - 4) = v61;
            *(v49 - 3) = v62;
            *(v49 - 4) = v63;
            *(v49 - 6) = v64;
            *(v49 - 2) = v65;
            *(v49 - 2) = v66;
            *(v49 - 2) = v67;
            *(v49 - 1) = v68;
            *v49 = v69;
            v44 += 112;
            --v45;
            v46 -= 112;
          }

          while (v45 > 1);
        }
      }

      if (a3)
      {
        v50 = MemChunkAlloc(0x40uLL, 0);
        NBestChoice::NBestChoice(v50, &v73, &v70);
        ParamSpecMgr::addParam(a3, v50);
      }

      DgnArray<WordLatticeLC>::releaseAll(&v73);
      if (v54 == v52)
      {
        break;
      }

      WordLattice::nextBestPath(v55, &v75, v79, v78, v77, &v58);
      v17 = v54 + 1;
      v13 = v58;
      v12 = HIDWORD(v58);
      LODWORD(v75) = v58;
      *(&v75 + 4) = __PAIR64__(v59, HIDWORD(v58));
      v14 = v59;
      HIDWORD(v75) = HIDWORD(v59);
      v76 = v60;
      v15 = HIDWORD(v59) == 0;
    }

    while (v58 != -2 || HIDWORD(v58) != 4294967294 || v59 != 1879048192 || (v60 & 0xFFFFFFFF0000FFFFLL) != 0x7F);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v77);
  DgnIOwnArray<DgnPriorityQueue<LatticePath> *>::releaseAll(v78);
  return DgnArray<DgnArray<ParseToken>>::releaseAll(v79);
}

void sub_26282B3D4(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 136);
  DgnIOwnArray<DgnPriorityQueue<LatticePath> *>::releaseAll(v1 - 120);
  DgnArray<DgnArray<ParseToken>>::releaseAll(v1 - 104);
  _Unwind_Resume(a1);
}

int32x2_t ItemizedScores::operator+=(uint64_t a1, uint64_t a2)
{
  *a1 = vaddq_s32(*a1, *a2);
  result = vadd_s32(*(a1 + 16), *(a2 + 16));
  *(a1 + 16) = result;
  *(a1 + 24) += *(a2 + 24);
  return result;
}

uint64_t WordLattice::maybePruneToNumUniquePaths(uint64_t this, unsigned int a2)
{
  if (a2)
  {
    v2 = this;
    v5 = 0;
    v6 = 0;
    WordLattice::getNBestListMaybePrune(this, a2, 0, &v5);
    if (v6 >= 1)
    {
      v3 = v6 - 1;
      do
      {
        if ((v5[v3] & 1) == 0)
        {
          Lattice<WordLatticeLC>::disconnectAndDestroyLink(v2, *(*(v2 + 96) + 4 * v3));
          *(v2 + 8) = 0;
        }

        v4 = v3-- + 1;
      }

      while (v4 > 1);
    }

    Lattice<WordLatticeLC>::minimize(v2);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v5);
  }

  return this;
}

uint64_t *WordLattice::getNBestList(WordLattice *this, unsigned int a2)
{
  v4 = MemChunkAlloc(0x20uLL, 0);
  v5 = *(this + 196);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = v5;
  v4[3] = 0;
  v7[0] = 0;
  v7[1] = 0;
  WordLattice::getNBestListMaybePrune(this, a2, v4, v7);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v7);
  return v4;
}

unsigned int *WordLattice::skipToNextPathWithDifferentWord(void *a1, unsigned int *a2, void *a3, uint64_t *a4)
{
  v6 = a2;
  v8 = a1[16] + 136 * *(a1[12] + 4 * *a2);
  v9 = v8;
  do
  {
    v10 = a1[12];
    v11 = a1[16];
    v12 = v9;
    v6 = (*(*a3 + 16 * *(a1[10] + 24 * *(v11 + 136 * *(v10 + 4 * *v6) + 116))) + 24 * v6[1]);
    v9 = v11 + 136 * *(v10 + 4 * *v6);
  }

  while (CWIDAC::operator==(v9 + 88, v8 + 88) && !LatticePath::isRootPath(v6));
  *a4 = v12;
  return v6;
}

uint64_t WordLattice::getLatticeStats(uint64_t this, unsigned int *a2, unsigned int *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(this + 24);
  if (v5)
  {
    v6 = *(this + 16);
    v7 = *(this + 80);
    v8 = *(this + 24);
    do
    {
      v9 = *v6++;
      v10 = v7 + 24 * v9;
      v11 = *(v10 + 8);
      LODWORD(v10) = *(v10 + 12);
      *a4 += (v11 * v11);
      *a5 += (v10 * v10);
      --v8;
    }

    while (v8);
  }

  *a2 += v5;
  *a3 += *(this + 104);
  return this;
}

uint64_t WordLattice::resortLatticeLinks(WordLattice *this)
{
  ForwardLatticeNodeIterator<WordLatticeLC>::ForwardLatticeNodeIterator(&v3, this);
  while (v7)
  {
    Lattice<WordLatticeLC>::resortLinks(this, *(*(v3 + 16) + 4 * *(v5 + 4 * v6)));
    ForwardLatticeNodeIterator<WordLatticeLC>::next(&v3);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v5);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v4);
}

void sub_26282B754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5 + 24);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t Lattice<WordLatticeLC>::resortLinks(uint64_t result, unsigned int a2)
{
  v2 = result;
  v3 = *(result + 80);
  v5 = *(v3 + 24 * a2 + 12);
  if (v5 >= 2)
  {
    v6 = *(result + 156);
    if (v5 > v6)
    {
      DgnPrimArray<unsigned int>::reallocElts(result + 144, v5 - v6, 0);
      v3 = *(v2 + 80);
    }

    *(v2 + 152) = 0;
    v7 = *(v3 + 24 * a2 + 20);
    if (v7 != -2)
    {
      v8 = 0;
      v9 = *(v2 + 144);
      v10 = *(v2 + 128);
      do
      {
        *(v9 + 4 * v8) = v7;
        v8 = *(v2 + 152) + 1;
        *(v2 + 152) = v8;
        v7 = *(v10 + 136 * v7 + 128);
      }

      while (v7 != -2);
    }

    (*(*v2 + 8))(v2, v2 + 144);
    v11 = 0;
    v33 = 0;
    v34 = 0;
    v12 = v5 - 1;
    do
    {
      v13 = (*(v2 + 144) + 4 * v11);
      v14 = v13[1];
      *(*(v2 + 128) + 136 * *v13 + 128) = v14;
      if (!Lattice<WordLatticeLC>::cmpOutLink(v2, *v13, v14))
      {
        v15 = *(*(v2 + 144) + 4 * v11 + 4);
        v16 = v34;
        if (v34 == HIDWORD(v34))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v33, 1, 1);
          v16 = v34;
        }

        *(v33 + 4 * v16) = v15;
        LODWORD(v34) = v34 + 1;
      }

      ++v11;
    }

    while (v12 != v11);
    v17 = *(v2 + 144);
    *(*(v2 + 128) + 136 * v17[v12] + 128) = -2;
    *(*(v2 + 80) + 24 * a2 + 20) = *v17;
    while (v34)
    {
      v18 = *(v33 + 4 * (v34 - 1));
      LODWORD(v34) = v34 - 1;
      Lattice<WordLatticeLC>::disconnectAndDestroyLink(v2, v18);
    }

    result = DgnPrimArray<unsigned int>::~DgnPrimArray(&v33);
    v3 = *(v2 + 80);
  }

  v19 = *(v3 + 24 * a2 + 8);
  if (v19 >= 2)
  {
    v20 = *(v2 + 156);
    if (v19 > v20)
    {
      DgnPrimArray<unsigned int>::reallocElts(v2 + 144, v19 - v20, 0);
      v3 = *(v2 + 80);
    }

    *(v2 + 152) = 0;
    v21 = *(v3 + 24 * a2 + 16);
    if (v21 != -2)
    {
      v22 = 0;
      v23 = *(v2 + 144);
      v24 = *(v2 + 128);
      do
      {
        *(v23 + 4 * v22) = v21;
        v22 = *(v2 + 152) + 1;
        *(v2 + 152) = v22;
        v21 = *(v24 + 136 * v21 + 124);
      }

      while (v21 != -2);
    }

    (**v2)(v2, v2 + 144);
    v25 = 0;
    v33 = 0;
    v34 = 0;
    v26 = v19 - 1;
    do
    {
      v27 = (*(v2 + 144) + 4 * v25);
      v28 = v27[1];
      *(*(v2 + 128) + 136 * *v27 + 124) = v28;
      if (!Lattice<WordLatticeLC>::cmpInLink(v2, *v27, v28))
      {
        v29 = *(*(v2 + 144) + 4 * v25 + 4);
        v30 = v34;
        if (v34 == HIDWORD(v34))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v33, 1, 1);
          v30 = v34;
        }

        *(v33 + 4 * v30) = v29;
        LODWORD(v34) = v34 + 1;
      }

      ++v25;
    }

    while (v26 != v25);
    v31 = *(v2 + 144);
    *(*(v2 + 128) + 136 * v31[v26] + 124) = -2;
    *(*(v2 + 80) + 24 * a2 + 16) = *v31;
    while (v34)
    {
      v32 = *(v33 + 4 * (v34 - 1));
      LODWORD(v34) = v34 - 1;
      Lattice<WordLatticeLC>::disconnectAndDestroyLink(v2, v32);
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v33);
  }

  return result;
}

void WordLattice::addSegmentations(WordLattice *this, const Active *a2, const PhnMgr *a3, const PicMgr *a4)
{
  MrecInitModule_sdpres_sdapi();
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v58, 0, 128);
  v59[2] = this;
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v56, 0, 128);
  v57[2] = this + 256;
  v45 = *(a3 + 28);
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  if (!*(this + 26))
  {
    goto LABEL_59;
  }

  v7 = 0;
  v8 = *(this + 16);
  v44 = a2;
  do
  {
    v9 = *(*(this + 12) + 4 * v7);
    v10 = v8 + 136 * v9;
    v12 = *(v10 + 88);
    v11 = v10 + 88;
    v13 = *(v11 - 72);
    v14 = *(v11 - 68);
    v15 = *(v11 - 64);
    if (v12 >> 25 == 126)
    {
      v16 = v54;
      if (HIDWORD(v55))
      {
        if (v55)
        {
LABEL_6:
          LODWORD(v55) = 1;
          *(v16 + 12) = 0;
          *v16 = v45;
          *(v16 + 1) = v45;
          *(v16 + 2) = 0;
          *(v16 + 3) = v45;
          *(v16 + 4) = v45;
          *(v16 + 5) = 0;
          v17 = v54;
          *(v54 + 5) = v13;
          v17[6] = v15 + v14;
          v18 = WordLattice::findOrAddLinkSegId(this, &v54, v58);
LABEL_14:
          v22 = v18 | 0x8000000000000000;
          goto LABEL_15;
        }
      }

      else
      {
        v50 = 0;
        HIDWORD(v55) = realloc_array(v54, &v50, 0x1CuLL, 28 * v55, 28 * v55, 1) / 0x1C;
        v16 = v50;
        v54 = v50;
        if (v55)
        {
          goto LABEL_6;
        }
      }

      *(v16 + 2) = 0xFFFF;
      *v16 = -1;
      *(v16 + 5) = -16;
      v16 = v54;
      goto LABEL_6;
    }

    Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(a2 + 303024, v11);
    v47 = v13;
    if (*Bucket)
    {
      v20 = *(*Bucket + 40);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(this + 16);
    if (*(v21 + 136 * v9 + 24))
    {
      getPortSegments(v20, **(*(v20 + 8) + 72), &v54, v13, v14, v15, a4);
      v18 = WordLattice::findOrAddLinkSegId(this, &v54, v58);
      goto LABEL_14;
    }

    LODWORD(v53) = 0;
    v50 = 0;
    v51 = 0;
    v23 = *(*(this + 10) + 24 * *(v21 + 136 * v9 + 120) + 20);
    if (v23 == -2)
    {
      v48 = 0;
      v49 = 0;
      goto LABEL_55;
    }

    v24 = 0;
    v25 = 0;
    v26 = VocMgr::smpVocMgr;
    do
    {
      v27 = *(v21 + 136 * v23 + 88);
      if (v27 >> 25 == 126)
      {
        v28 = 0;
        if (!v25)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v28 = *(*(*(*(**v26 + ((v27 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v27 & 0xFFFFFF));
        if (!v25)
        {
          goto LABEL_29;
        }
      }

      v29 = 0;
      while (v24[v29] != v28)
      {
        if (v25 == ++v29)
        {
          goto LABEL_29;
        }
      }

      if (v29 == 0xFFFFFFFFLL)
      {
LABEL_29:
        if (v25 == HIDWORD(v51))
        {
          DgnPrimArray<short>::reallocElts(&v50, 1, 1);
          v25 = v51;
          v24 = v50;
          v21 = *(this + 16);
        }

        v24[v25++] = v28;
        LODWORD(v51) = v25;
      }

      v23 = *(v21 + 136 * v23 + 128);
    }

    while (v23 != -2);
    v48 = 0;
    v49 = 0;
    if (v25)
    {
      v30 = 0;
      do
      {
        NonSilOutPort = HmmNet::maybeGetNonSilOutPort(*(v20 + 8), *(v50 + v30));
        v32 = NonSilOutPort;
        if (NonSilOutPort)
        {
          v33 = v49;
          if (!v49)
          {
            goto LABEL_42;
          }

          v34 = v48;
          v35 = v49;
          v36 = 0xFFFFFFFFLL;
          while (*v34 != NonSilOutPort)
          {
            --v36;
            ++v34;
            if (!--v35)
            {
              goto LABEL_42;
            }
          }

          if (!v36)
          {
LABEL_42:
            if (v49 == HIDWORD(v49))
            {
              DgnPrimArray<unsigned long long>::reallocElts(&v48, 1, 1);
              v33 = v49;
            }

            v48[v33] = v32;
            LODWORD(v49) = v33 + 1;
            if ((*(**(v20 + 8) + 48))(*(v20 + 8), v32, (v15 + v14 + v47 - 1)))
            {
              getPortSegments(v20, v32, &v54, v47, v14, v15, a4);
              v37 = WordLattice::findOrAddLinkSegId(this, &v54, v58);
              v38 = v37;
              v39 = v53;
              if (!v53)
              {
                goto LABEL_51;
              }

              v40 = v52;
              v41 = v53;
              v42 = 0xFFFFFFFFLL;
              while (1)
              {
                v43 = *v40++;
                if (v43 == v37)
                {
                  break;
                }

                --v42;
                if (!--v41)
                {
                  goto LABEL_51;
                }
              }

              if (!v42)
              {
LABEL_51:
                if (v53 == HIDWORD(v53))
                {
                  DgnPrimArray<unsigned long long>::reallocElts(&v52, 1, 1);
                  v39 = v53;
                }

                v52[v39] = v38;
                LODWORD(v53) = v39 + 1;
              }
            }
          }
        }

        ++v30;
      }

      while (v30 < v51);
    }

LABEL_55:
    if (v53 == 1)
    {
      v22 = *v52 | 0x8000000000000000;
      a2 = v44;
    }

    else
    {
      a2 = v44;
      v22 = LinkSegIds::findOrAddLinkSegSeqIdFromLinkSegIds(this + 32, &v52, v56);
    }

    DgnIArray<Utterance *>::~DgnIArray(&v48);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v50);
LABEL_15:
    v8 = *(this + 16);
    *(v8 + 136 * v9 + 80) = v22;
    ++v7;
  }

  while (v7 < *(this + 26));
LABEL_59:
  *(this + 220) = 1;
  WordLattice::resortLatticeLinks(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v52);
  DgnIArray<Utterance *>::~DgnIArray(&v54);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v57);
  MrecInitModule_sdpres_sdapi();
  DgnPrimArray<unsigned int>::~DgnPrimArray(v59);
  MrecInitModule_sdpres_sdapi();
}

void sub_26282C020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va2, a17);
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  va_copy(va2, va1);
  v22 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  MrecInitModule_sdpres_sdapi();
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17 - 112);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void *getPortSegments(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7)
{
  v25 = 0;
  v26 = 0;
  if ((*(**(a1 + 8) + 64))(*(a1 + 8), a2, (a4 - 1 + a5 + a6), &v25) == a4 - 1)
  {
    v10 = *(**(*(a1 + 16) + 302976) + 56);
    v11 = v26;
    *(a3 + 8) = 0;
    v12 = *(a3 + 12);
    if (v11 + 1 > v12)
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(a3, v11 + 1 - v12, 0);
    }

    if (v11)
    {
      v13 = 0;
      v14 = 0;
      v15 = (v11 - 1);
      do
      {
        v16 = *(v25 + 8 * v15);
        v17 = *a3 + 28 * *(a3 + 8);
        *v17 = -1;
        *(v17 + 8) = 0xFFFF;
        *(v17 + 20) = -16;
        LODWORD(v17) = *(a3 + 8);
        *(a3 + 8) = v17 + 1;
        v18 = *a3 + 28 * v17;
        v19 = *(v16 + 8);
        v20 = *(v16 + 12);
        *(v18 + 20) = *v16;
        *(v18 + 24) = v19;
        LODWORD(v17) = *(v16 + 4);
        *(v18 + 16) = v17;
        *(v18 + 12) = v20;
        v21 = *(v16 + 20);
        *v18 = v10;
        *(v18 + 2) = v10;
        *(v18 + 4) = v21;
        *(v18 + 6) = v10;
        *(v18 + 8) = v10;
        *(v18 + 10) = 0;
        if (v17)
        {
          v22 = PicMgr::getPicNode(a7, v13, v18)[1];
        }

        else
        {
          v22 = 0;
        }

        *(v18 + 18) = v22;
        if (!v14)
        {
          v14 = *(*(a7 + 16) + v21);
        }

        if (v15)
        {
          v23 = v13 + 1 == v14;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          v14 = 0;
          v13 = 0;
        }

        else
        {
          ++v13;
        }

        --v15;
        --v11;
      }

      while (v11);
    }
  }

  DgnIOwnArray<PelSegment *>::releaseAll(&v25);
  return DgnIOwnArray<PelSegment *>::releaseAll(&v25);
}

void BackwardLatticeNodeIterator<WordLatticeLC>::next(void *a1)
{
  v2 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::dequeue((a1 + 3));
  v3 = *a1;
  v4 = *(*(*a1 + 80) + 24 * *(*(*a1 + 16) + 4 * v2) + 16);
  if (v4 != -2)
  {
    v5 = *(v3 + 128);
    do
    {
      v6 = *(*(v3 + 80) + 24 * *(v5 + 136 * v4 + 116));
      v7 = a1[1];
      v8 = *(v7 + 4 * v6) - 1;
      *(v7 + 4 * v6) = v8;
      if (!v8)
      {
        DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue((a1 + 3), v6);
        v3 = *a1;
        v5 = *(*a1 + 128);
      }

      v4 = *(v5 + 136 * v4 + 124);
    }

    while (v4 != -2);
  }
}

uint64_t WordLattice::computeBackwardScores(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 3);
  if (v4 > v5)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v4 - v5, 0);
    *(a2 + 2) = v4;
    v6 = (a2 + 1);
    goto LABEL_4;
  }

  *(a2 + 2) = v4;
  v6 = (a2 + 1);
  if (v4)
  {
LABEL_4:
    v7 = 0;
    v8 = *a2;
    do
    {
      *(v8 + 4 * v7++) = 1879048192;
    }

    while (v7 < *v6);
  }

  BackwardLatticeNodeIterator<WordLatticeLC>::BackwardLatticeNodeIterator(&v20, a1);
  while (v24)
  {
    v9 = *(*(v20 + 16) + 4 * *(v22 + 4 * v23));
    v10 = *(a1 + 80);
    v11 = (v10 + 24 * v9);
    v12 = *v11;
    if (v11[3])
    {
      v13 = *(v10 + 24 * v9 + 20);
      if (v13 != -2)
      {
        v14 = *(a1 + 128);
        v15 = *a2;
        v16 = *(*a2 + 4 * v12);
        do
        {
          v17 = v14 + 136 * v13;
          v18 = vaddvq_s32(*(v17 + 28)) + *(v17 + 44) + *(v17 + 48) + *(v17 + 52) + *(v15 + 4 * *(v10 + 24 * *(v17 + 120)));
          if (v16 > v18)
          {
            *(v15 + 4 * v12) = v18;
            v16 = v18;
          }

          v13 = *(v14 + 136 * v13 + 128);
        }

        while (v13 != -2);
      }
    }

    else
    {
      *(*a2 + 4 * v12) = 0;
    }

    BackwardLatticeNodeIterator<WordLatticeLC>::next(&v20);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v21);
  return *(*a2 + 4 * *(*(a1 + 80) + 24 * **(a1 + 32)));
}

void sub_26282C4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5 + 24);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordLattice::expandLMContext(WordLattice *a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v20[0] = 0;
  v20[1] = 0;
  if (a2 >= 2)
  {
    v12 = a3;
    v8 = 0;
    v15 = 2;
    while (1)
    {
      NodesToSplitForExpansion = WordLattice::getNodesToSplitForExpansion(a1, v20, v15, v12, (a5 + 204), (a5 + 208));
      if (a4 >= 1 && NodesToSplitForExpansion + v8 >= a4)
      {
        break;
      }

      v17 = WordLattice::splitNodes(a1, v20, (a5 + 216), (a5 + 224), (a5 + 232), (a5 + 240));
      Lattice<WordLatticeLC>::gc(a1);
      Lattice<WordLatticeLC>::topSortInternal(a1, 0);
      v8 += v17;
      if (++v15 > a2)
      {
        goto LABEL_7;
      }
    }

    *(a5 + 200) += v8;
    v18 = 1;
    *a6 = 1;
    *a7 = NodesToSplitForExpansion + v8;
  }

  else
  {
    v8 = 0;
LABEL_7:
    v18 = 0;
    *(a5 + 200) += v8;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
  return v18;
}

uint64_t WordLattice::getNodesToSplitForExpansion(WordLattice *a1, uint64_t a2, int a3, unsigned int a4, _DWORD *a5, _DWORD *a6)
{
  *(a2 + 8) = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23[0] = 0;
  v23[1] = 0;
  BackwardLatticeNodeIterator<WordLatticeLC>::BackwardLatticeNodeIterator(&v18, a1);
  v12 = 0;
  while (v22)
  {
    v13 = *(*(v18 + 16) + 4 * *(v20 + 4 * v21));
    v14 = *(a1 + 10);
    if (*(v14 + 24 * v13 + 8) >= 2u && *(v14 + 24 * v13 + 12))
    {
      if (a3 == 2 ? WordLattice::needToSplitNodeForBigramExpansion(a1, *(*(v18 + 16) + 4 * *(v20 + 4 * v21)), a4) : WordLattice::needToSplitNodeForExpansion(a1, v13, a3, a4, v26, v25, v24, v23, a5, a6))
      {
        v16 = *(a2 + 8);
        if (v16 == *(a2 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
          v16 = *(a2 + 8);
        }

        *(*a2 + 4 * v16) = v13;
        ++*(a2 + 8);
        v12 = (*(*(a1 + 10) + 24 * v13 + 8) + v12);
      }
    }

    BackwardLatticeNodeIterator<WordLatticeLC>::next(&v18);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v20);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v26);
  return v12;
}

void sub_26282C7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18 - 96);
  _Unwind_Resume(a1);
}

uint64_t WordLattice::splitNodes(uint64_t *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (!*(a2 + 8))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v23 = a2;
  do
  {
    v11 = *(a1[10] + 24 * *(*a2 + 4 * v9) + 16);
    v24 = v9;
    v27 = *(*a2 + 4 * v9);
    if (v11 != -2)
    {
      do
      {
        v12 = *(a1[16] + 136 * v11 + 124);
        Node = Lattice<WordLatticeLC>::createNode(a1);
        v10 = (v10 + 1);
        v14 = a5;
        v15 = a6;
        v16 = *(a1[16] + 136 * v11 + 116);
        v17 = a1[10];
        *a3 += *(v17 + 24 * v27 + 8);
        *a4 += *(v17 + 24 * v16 + 12);
        Lattice<WordLatticeLC>::disconnectInLink(a1, v11);
        Lattice<WordLatticeLC>::disconnectOutLink(a1, v11);
        v18 = a1[16] + 136 * v11;
        *(v18 + 116) = v16;
        *(v18 + 120) = Node;
        a6 = v15;
        a5 = v14;
        Lattice<WordLatticeLC>::connectInLink(a1, v11);
        Lattice<WordLatticeLC>::connectOutLink(a1, v11);
        Lattice<WordLatticeLC>::copyOutLinks(a1, v27, Node);
        v19 = a1[10] + 24 * Node;
        v21 = *(v19 + 8);
        v20 = *(v19 + 12);
        *v14 += v21;
        *a6 += v20;
        v11 = v12;
      }

      while (v12 != -2);
    }

    Lattice<WordLatticeLC>::destroyAllLinks(a1, v27);
    Lattice<WordLatticeLC>::destroyNode(a1, v27);
    a2 = v23;
    v9 = v24 + 1;
  }

  while (v24 + 1 < *(v23 + 8));
  return v10;
}

uint64_t WordLattice::needToSplitNodeForBigramExpansion(WordLattice *this, unsigned int a2, int a3)
{
  v3 = *(this + 10);
  if (*(v3 + 24 * a2 + 8))
  {
    v4 = *(v3 + 24 * a2 + 16);
    if (v4 != -2)
    {
      v7 = VocMgr::smpVocMgr;
      v8 = *(this + 16);
      v9 = -83886084;
      v10 = -83886084;
      do
      {
        Root = VocMgr::getRoot(v7, *(v8 + 136 * v4 + 88));
        v8 = *(this + 16);
        if (Root == -50331650)
        {
          v12 = a3;
        }

        else
        {
          v12 = Root;
        }

        if (v9 == -83886084)
        {
          v10 = *(v8 + 136 * v4 + 108);
          v9 = v12;
        }

        else if (v9 != v12 || v10 != *(v8 + 136 * v4 + 108))
        {
          return 1;
        }

        v4 = *(v8 + 136 * v4 + 124);
      }

      while (v4 != -2);
    }
  }

  return 0;
}

uint64_t WordLattice::needToSplitNodeForExpansion(uint64_t a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, _DWORD *a9, _DWORD *a10)
{
  v13 = a5;
  v16 = *(a1 + 80);
  v17 = *(v16 + 24 * a2 + 20);
  v18 = *(a1 + 128);
  v75 = *(v18 + 136 * v17 + 88) >> 25;
  if (v17 != -2)
  {
    while (v75 == *(v18 + 136 * v17 + 88) >> 25)
    {
      v17 = *(v18 + 136 * v17 + 128);
      if (v17 == -2)
      {
        goto LABEL_6;
      }
    }

    v75 = *(v18 + 136 * *(v16 + 24 * a2 + 16) + 88) >> 25;
  }

LABEL_6:
  *(a5 + 8) = 0;
  if (*(a5 + 12))
  {
    v19 = 0;
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
    v19 = *(v13 + 8);
  }

  v20 = 0;
  *(*v13 + 4 * v19) = a2;
  ++*(v13 + 8);
  *(a6 + 2) = 0;
  if (!*(a6 + 3))
  {
    DgnPrimArray<char>::reallocElts(a6, 1, 1);
    v20 = *(a6 + 2);
  }

  *(*a6 + v20) = 0;
  *(a6 + 2) = v20 + 1;
  v76 = VocMgr::smpVocMgr;
  v21 = a3;
  if (a3 == 2)
  {
    v73 = 0;
    v67 = 0;
    v22 = -83886081;
  }

  else
  {
    v63 = a6;
    v65 = 0;
    v72 = 0;
    v68 = -83886081;
    v59 = -83886084;
    v22 = -83886081;
    v74 = -83886084;
    *v60 = v13;
    do
    {
      *(a7 + 8) = 0;
      *(a8 + 8) = 0;
      v23 = *(v13 + 8);
      if (v23)
      {
        v24 = 0;
        do
        {
          v25 = *(*v13 + 4 * v24);
          v26 = *(a1 + 80);
          if (!*(v26 + 24 * v25 + 8))
          {
            return 0;
          }

          v62 = v24;
          v27 = *(v26 + 24 * v25 + 16);
          if (v27 == -2)
          {
            v13 = *v60;
          }

          else
          {
            v66 = *(*v63 + v24);
            v28 = *(a1 + 128);
            do
            {
              ++*a9;
              Root = VocMgr::getRoot(v76, *(v28 + 136 * v27 + 88));
              v30 = *(a1 + 128);
              v31 = *(v30 + 136 * v27 + 108);
              v32 = Root >> 25;
              if (v75 != 126 && v32 != v75)
              {
                return 0;
              }

              v33 = *(v30 + 136 * v27 + 116);
              v34 = *(a7 + 8);
              if (v34 == *(a7 + 12))
              {
                DgnPrimArray<unsigned int>::reallocElts(a7, 1, 1);
                v34 = *(a7 + 8);
              }

              *(*a7 + 4 * v34) = v33;
              ++*(a7 + 8);
              if (v72)
              {
                v35 = v74;
                if (v22 == -83886081)
                {
                  v35 = v31;
                }

                v74 = v35;
                if (v22 == -83886081)
                {
                  v22 = Root;
                }

                v36 = *(a8 + 8);
                if (v36 == *(a8 + 12))
                {
                  DgnPrimArray<char>::reallocElts(a8, 1, 1);
                  v36 = *(a8 + 8);
                }

                v37 = v66;
              }

              else
              {
                v38 = v68;
                if (v68 == -83886081)
                {
                  v39 = *(*(**v76 + 8 * v32) + 72);
                  v65 = (*(*v39 + 488))(v39, Root & 0xFFFFFF);
                  v59 = v31;
                  v38 = Root;
                }

                v68 = v38;
                v36 = *(a8 + 8);
                if (v36 == *(a8 + 12))
                {
                  DgnPrimArray<char>::reallocElts(a8, 1, 1);
                  v36 = *(a8 + 8);
                }

                v37 = v65 & 1;
              }

              *(*a8 + v36) = v37;
              *(a8 + 8) = v36 + 1;
              v28 = *(a1 + 128);
              v27 = *(v28 + 136 * v27 + 124);
            }

            while (v27 != -2);
            v13 = *v60;
            v23 = *(*v60 + 8);
          }

          v24 = v62 + 1;
        }

        while (v62 + 1 < v23);
        v40 = *(a7 + 8);
      }

      else
      {
        v40 = 0;
      }

      DgnPrimArray<int>::copyArraySlice(v13, a7, 0, v40);
      DgnPrimArray<BOOL>::copyArraySlice(v63, a8, 0, *(a8 + 8));
      ++v72;
      v21 = a3;
    }

    while (v72 != a3 - 2);
    v73 = v59 != -83886084;
    v67 = v74 != -83886084;
    if (v75 == 126)
    {
      a6 = v63;
      if (v68 != -83886081)
      {
        v41 = *(*(**v76 + 8 * (v68 >> 25)) + 72);
        v42 = (*(*v41 + 696))(v41);
        v21 = a3;
        v43 = 126;
        if (v42)
        {
          v43 = v68 >> 25;
        }

        v75 = v43;
      }
    }

    else
    {
      a6 = v63;
    }
  }

  v44 = *(v13 + 8);
  if (!v44)
  {
    return 0;
  }

  *v61 = v13;
  v64 = a6;
  v45 = 0;
  HasDistinctScore = 0;
  v69 = v21 != 4;
  v47 = -83886084;
  v48 = -83886084;
  while (1)
  {
    v49 = *(**v61 + 4 * v45);
    v50 = *(a1 + 80);
    if (*(v50 + 24 * v49 + 8))
    {
      v51 = *(v50 + 24 * v49 + 16);
      if (v51 != -2)
      {
        break;
      }
    }

LABEL_76:
    if (++v45 >= v44)
    {
      return 0;
    }
  }

  v52 = *(a1 + 128);
  while (1)
  {
    ++*a10;
    v53 = VocMgr::getRoot(v76, *(v52 + 136 * v51 + 88));
    v54 = v53 == -50331650 && a3 == 4;
    v55 = *(*(a1 + 128) + 136 * v51 + 108);
    if (v54)
    {
      v56 = a4;
    }

    else
    {
      v56 = v53;
    }

    if (v48 == -83886084)
    {
      if (a3 == 4)
      {
        v48 = v56;
      }

      else
      {
        v48 = v53;
      }

      if (v69 || v73 || v67)
      {
        HasDistinctScore |= a3 == 4;
      }

      else
      {
        HasDistinctScore = WordLattice::maybePred3Pred2HasDistinctScore(v53, v75, v56, v22, *(*v64 + v45));
        v48 = v56;
      }

      v47 = v55;
      goto LABEL_74;
    }

    if (v48 == v56 && v47 == v55)
    {
      goto LABEL_74;
    }

    if ((v69 | HasDistinctScore | (v73 || v67)) & 1) != 0 || (WordLattice::maybePred3Pred2HasDistinctScore(v53, v75, v56, v22, *(*v64 + v45)))
    {
      return 1;
    }

    HasDistinctScore = 0;
LABEL_74:
    v52 = *(a1 + 128);
    v51 = *(v52 + 136 * v51 + 124);
    if (v51 == -2)
    {
      v44 = *(*v61 + 8);
      goto LABEL_76;
    }
  }
}

uint64_t WordLattice::maybePred3Pred2HasDistinctScore(WordLattice *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  if (a3 >> 27 != 31 && a2 != a3 >> 25 || a4 >> 27 != 31 && a4 >> 25 != a2)
  {
    return 0;
  }

  v9 = *(*(**VocMgr::smpVocMgr + 8 * a2) + 72);
  v10 = (*(*v9 + 488))(v9, a3 & 0xFFFFFF);
  v11 = (*(*v9 + 488))(v9, a4 & 0xFFFFFF);
  if (a5)
  {
    if (v11)
    {
      return v10 ^ 1u;
    }

LABEL_10:
    if ((v10 & 1) == 0)
    {
      v12 = *(*v9 + 440);

      return v12(v9, a3 & 0xFFFFFF);
    }

    return 0;
  }

  if (v11)
  {
    goto LABEL_10;
  }

  if (v10)
  {
    return 0;
  }

  v13 = *(*v9 + 456);

  return v13(v9, a3 & 0xFFFFFF, a4 & 0xFFFFFF);
}

uint64_t WordLattice::rescoreLatticeLM(WordLattice *this, SearchLMScorer *a2, int32x2_t *a3, char a4)
{
  SearchLMScorer::beginSearchLMScorerLMRescoring(a2, a4);
  v7 = *(a2 + 16);
  v8 = *(this + 6);
  v63 = 0;
  v64 = 0;
  if (v8)
  {
    v54 = 0;
    HIDWORD(v64) = realloc_array(0, &v54, 24 * v8, 0, 0, 1) / 0x18;
    v9 = v54;
    v63 = v54;
    v10 = v64;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v10 < v8)
  {
    v11 = v8 - v10;
    v12 = &v9[24 * v10 + 8];
    do
    {
      *(v12 - 1) = 0x3FFF;
      *v12 = xmmword_26286CC40;
      v12 += 24;
      --v11;
    }

    while (v11);
  }

  LODWORD(v64) = v8;
  v61 = 0;
  v62 = 0;
  if (v8)
  {
    v54 = 0;
    v13 = realloc_array(0, &v54, 4 * v8, 0, 0, 1);
    v61 = v54;
    LODWORD(v62) = v8;
    HIDWORD(v62) = v13 >> 2;
    v54 = 0;
    v14 = realloc_array(0, &v54, 4 * v8, 0, 0, 1);
    v15 = v54;
    v59 = v54;
    LODWORD(v60) = v8;
    HIDWORD(v60) = v14 >> 2;
    v16 = v61;
    do
    {
      *v16++ = -83886081;
      *v15++ = -83886084;
      --v8;
    }

    while (v8);
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  ForwardLatticeNodeIterator<WordLatticeLC>::ForwardLatticeNodeIterator(&v54, this);
  while (v58)
  {
    v17 = *(*(v54 + 2) + 4 * *(v56 + 4 * v57));
    v18 = *(this + 10);
    if (!*(v18 + 24 * v17 + 8))
    {
      v29 = 24 * v17;
      v61[*(v18 + v29)] = -83886084;
      v30 = &v63[6 * *(v18 + v29)];
      *v30 = -50331650;
      *(v30 + 1) = 0x3FFF;
      *(v30 + 8) = xmmword_26286CC40;
      goto LABEL_43;
    }

    if (!*(v18 + 24 * v17 + 12))
    {
      goto LABEL_43;
    }

    v19 = (v18 + 24 * v17);
    v20 = *(this + 16) + 136 * v19[4];
    v21 = *(v20 + 116);
    v22 = 24 * v21;
    v23 = v63;
    v61[*v19] = v63[6 * *(v18 + v22) + 4];
    v59[*v19] = v23[6 * *(v18 + v22) + 5];
    v24 = &v23[6 * *v19];
    *v24 = *(v20 + 88);
    *(v24 + 2) = *(v20 + 92);
    *(v24 + 3) = *(v20 + 94);
    *(v24 + 2) = *(v20 + 96);
    if ((*(v7 + 68) & 0xFFFFFFFD) == 0)
    {
      isLMAllowedForState = Constraint::isLMAllowedForState(v7, v24);
      v18 = *(this + 10);
      if (!isLMAllowedForState)
      {
        goto LABEL_20;
      }

      v23 = v63;
    }

    v24[4] = v23[6 * *(v18 + 24 * v21)];
LABEL_20:
    v26 = *(v18 + 24 * v17 + 12);
    if (v26)
    {
      v27 = v63;
      if ((*(v7 + 68) & 0xFFFFFFFD) != 0)
      {
        SeededWeights = 0;
      }

      else
      {
        SeededWeights = Constraint::getSeededWeights(v7, &v63[6 * *(v18 + 24 * v17)], *(*(this + 16) + 136 * *(v18 + 24 * v17 + 20) + 16));
        v18 = *(this + 10);
        v26 = *(v18 + 24 * v17 + 12);
        v27 = v63;
      }

      v31.i32[0] = 1;
      v31.i32[1] = v26;
      a3[31] = vadd_s32(a3[31], v31);
      v32 = *(v18 + 24 * v17);
      SearchLMScorer::setContext(a2, v61[v32], &v27[6 * v32], 0, 1, SeededWeights, &a3[32], 0, 0xFAFFFFFC, v59[v32]);
      v33 = *(*(this + 10) + 24 * v17 + 20);
      if (v33 != -2)
      {
        v34 = *(this + 16);
        do
        {
          v35 = v34 + 136 * v33;
          v38 = *(v35 + 88);
          v37 = (v35 + 88);
          v36 = v38;
          if (v38 != -50331650)
          {
            if (v36 == -50331651)
            {
              v39 = SearchLMScorer::lmScoreFinalSilence(a2, &a3[32]);
            }

            else
            {
              v40 = v37[5];
              if (v40 != -83886084)
              {
                if ((*(v7 + 68) & 0xFFFFFFFD) != 0)
                {
                  WeightsForState = 0xFFFFLL;
                }

                else
                {
                  WeightsForState = Constraint::getWeightsForState(v7, v37);
                  v40 = v37[5];
                }

                v42 = SearchLMScorer::lmScoreNonAcousticWord(a2, v40, WeightsForState, &a3[32]);
                v34 = *(this + 16);
                *(v34 + 136 * v33 + 32) = v42;
                goto LABEL_37;
              }

              v39 = SearchLMScorer::lmScoreNonSilCwidac(a2, v37, &a3[32]);
            }

            v34 = *(this + 16);
            *(v34 + 136 * v33 + 28) = v39;
          }

LABEL_37:
          v33 = *(v34 + 136 * v33 + 128);
        }

        while (v33 != -2);
      }

      SearchLMScorer::unsetContext(a2);
      v43 = *(*(this + 10) + 24 * v17 + 20);
      if (v43 != -2)
      {
        v44 = *(this + 16);
        do
        {
          v45 = v44 + 136 * v43;
          v46 = *(v45 + 108);
          if (v46 != -83886084)
          {
            v47 = *(*(this + 10) + 24 * v17);
            SearchLMScorer::setContext(a2, v61[v47], &v63[6 * v47], 0, 1, SeededWeights, &a3[32], 1, v46, v59[v47]);
            *(*(this + 16) + 136 * v43 + 28) = SearchLMScorer::lmScoreNonSilCwidac(a2, (v45 + 88), &a3[32]);
            SearchLMScorer::unsetContext(a2);
            v44 = *(this + 16);
          }

          v43 = *(v44 + 136 * v43 + 128);
        }

        while (v43 != -2);
      }
    }

LABEL_43:
    ForwardLatticeNodeIterator<WordLatticeLC>::next(&v54);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v56);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v55);
  SearchLMScorer::endSearchLMScorerLMRescoring(a2);
  v48 = *(this + 26);
  if (v48 >= 1)
  {
    v49 = *(this + 16);
    v50 = v48 + 1;
    v51 = (*(this + 12) + 4 * v48 - 4);
    do
    {
      v52 = *v51--;
      *(v49 + 136 * v52 + 8) = 0xBFF0000000000000;
      --v50;
    }

    while (v50 > 1);
  }

  *(this + 217) = 0;
  WordLattice::resortLatticeLinks(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v59);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v61);
  return DgnIArray<Utterance *>::~DgnIArray(&v63);
}

void sub_26282D8B8(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 120);
  DgnIArray<Utterance *>::~DgnIArray(v1 - 104);
  _Unwind_Resume(a1);
}

void WordLattice::computeParseTokens(uint64_t a1, uint64_t a2, void *a3)
{
  Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::Hash(v60, 0, 128);
  v4 = *(a1 + 24);
  if (!v4)
  {
    goto LABEL_58;
  }

  v5 = 0;
  v57 = 0;
  do
  {
    v6 = *(*(a1 + 16) + 4 * v5);
    v7 = *(a1 + 80);
    if (!*(v7 + 24 * v6 + 12))
    {
      goto LABEL_55;
    }

    v8 = *(v7 + 24 * v6 + 16);
    if (v8 != -2)
    {
      v11 = 0;
      v10 = 0;
      v9 = 0;
      v12 = *(a1 + 128);
      while (1)
      {
        v13 = (v12 + 136 * v8);
        if (v13[22] >> 25 == 126)
        {
          v14 = 0;
          if ((v11 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v14 = v13[24];
          if ((v11 & 1) == 0)
          {
LABEL_11:
            if (v13[5])
            {
              v10 = 0;
            }

            else
            {
              v10 = v13[6] == 0;
            }

            v9 = v14;
          }
        }

        v8 = *(v12 + 136 * v8 + 124);
        v11 = 1;
        if (v8 == -2)
        {
          goto LABEL_16;
        }
      }
    }

    v9 = 0;
    v10 = 0;
LABEL_16:
    v15 = *(v7 + 24 * v6 + 20);
    if (v15 == -2)
    {
      goto LABEL_55;
    }

    v55 = v5;
    v59 = VocMgr::smpVocMgr;
    v16 = *(a1 + 128);
    v58 = v9;
    v56 = v10;
    do
    {
      v17 = v16 + 136 * v15;
      v18 = *(v17 + 88);
      if (v18 >> 25 == 126 || v10)
      {
        goto LABEL_47;
      }

      v19 = *(v17 + 96);
      if (!*(*(*(*(**v59 + ((v18 >> 22) & 0x3F8)) + 56) + 48) + 2 * v19))
      {
        goto LABEL_47;
      }

      v20 = *(a1 + 204);
      v62[0] = v9;
      v62[1] = v19;
      Bucket = Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::findBucket(v60, v62);
      if (*Bucket)
      {
        *(v17 + 68) = *(*Bucket + 20);
        v57 = 1;
        goto LABEL_46;
      }

      v22 = VocMgr::smpVocMgr;
      if (v9)
      {
        v23 = *(*(**VocMgr::smpVocMgr + 8 * v20) + 56);
        StateTransition = StateMgr::getStateTransition(v23, v9, 0);
        StateTransitionNumParseTokens = StateMgr::getStateTransitionNumParseTokens(v23, v9, 0);
        StateTransitionParseTokens = StateMgr::getStateTransitionParseTokens(v23, v9, 0);
        v27 = *(StateTransition + 8);
        if (!v27)
        {
          goto LABEL_45;
        }

        v28 = StateTransitionParseTokens;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          if (v19)
          {
            if (*(*StateTransition + 4 * v29) == v19)
            {
              goto LABEL_39;
            }
          }

          else if (*(*(*(*(**v22 + 8 * v20) + 56) + 32) + *(*StateTransition + 4 * v29)))
          {
LABEL_39:
            v37 = *StateTransitionNumParseTokens;
            v10 = v56;
            if (*(*StateTransitionNumParseTokens + 2 * v29))
            {
              v38 = 0;
              v39 = *(a1 + 232);
              v40 = v30;
              v41 = v39;
              do
              {
                v42 = *v28;
                if (v41 == *(a1 + 236))
                {
                  DgnPrimArray<unsigned int>::reallocElts(a1 + 224, 1, 1);
                  v41 = *(a1 + 232);
                  v37 = *StateTransitionNumParseTokens;
                }

                *(*(a1 + 224) + 4 * v41++) = *(v42 + 4 * (v40 + v38));
                *(a1 + 232) = v41;
                ++v38;
                v43 = *(v37 + 2 * v29);
              }

              while (v38 < v43);
              *(v17 + 68) = v39;
              *(v17 + 72) = v43;
              v61 = __PAIR64__(v43, v39);
              Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::add(v60, v62, &v61);
              MrecInitModule_sdpres_sdapi();
              v57 = 1;
              goto LABEL_45;
            }

            goto LABEL_46;
          }

          v30 += *(*StateTransitionNumParseTokens + 2 * v29++);
          if (v27 == v29)
          {
            goto LABEL_45;
          }
        }
      }

      v31 = *(a2 + 8);
      if (!v31)
      {
        goto LABEL_45;
      }

      v32 = 0;
      v33 = *a2;
      v34 = 16 * v31;
      v10 = v56;
      while (1)
      {
        v36 = *v33++;
        v35 = v36;
        if (!v19)
        {
          break;
        }

        if (v35 == v19)
        {
          goto LABEL_49;
        }

LABEL_37:
        v32 += 16;
        if (v34 == v32)
        {
          goto LABEL_46;
        }
      }

      if (!*(*(*(*(**VocMgr::smpVocMgr + 8 * v20) + 56) + 32) + v35))
      {
        goto LABEL_37;
      }

LABEL_49:
      v44 = *a3 + v32;
      v45 = *(v44 + 8);
      if (v45)
      {
        v47 = *(a1 + 232);
        v46 = *(a1 + 236);
        v48 = v47;
        if (v47 + v45 <= v46 || (DgnPrimArray<unsigned int>::reallocElts(a1 + 224, v47 + v45 - v46, 1), v45 = *(v44 + 8), v48 = *(a1 + 232), v45))
        {
          v49 = 0;
          v50 = *(a1 + 224);
          v51 = *v44 + 2;
          do
          {
            *(v50 + 4 * (v48 + v49++)) = *(v51 - 2);
            v51 += 4;
          }

          while (v45 != v49);
        }

        *(a1 + 232) = v48 + v45;
        v52 = *(*a3 + v32 + 8);
        *(v17 + 68) = v47;
        *(v17 + 72) = v52;
        v61 = __PAIR64__(v52, v47);
        Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::add(v60, v62, &v61);
        MrecInitModule_sdpres_sdapi();
        v57 = 1;
LABEL_45:
        v10 = v56;
      }

LABEL_46:
      MrecInitModule_sdpres_sdapi();
      v16 = *(a1 + 128);
      v9 = v58;
LABEL_47:
      v15 = *(v16 + 136 * v15 + 128);
    }

    while (v15 != -2);
    v4 = *(a1 + 24);
    v5 = v55;
LABEL_55:
    ++v5;
  }

  while (v5 < v4);
  if (v57)
  {
    WordLattice::resortLatticeLinks(a1);
  }

LABEL_58:
  Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::~Hash(v60);
}

void sub_26282DDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::~Hash(va);
  _Unwind_Resume(a1);
}

uint64_t Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::add(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v6);
  }

  result = StateIdPair::computeHash(a2);
  v8 = result;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (-1640531527 * result) >> -v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 80);
  v12 = *(a1 + 32);
  if (!v12)
  {
    result = DgnPool::addChunk((a1 + 24));
    v12 = *(a1 + 32);
  }

  v13 = (v11 + 8 * v10);
  *(a1 + 32) = *v12;
  *(v12 + 8) = 0;
  *&v14 = *a2;
  *(&v14 + 1) = *a3;
  *(v12 + 12) = v14;
  *(v12 + 8) = v8;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v12 = *v13;
  }

  else
  {
    *v12 = 0;
    v15 = *v13;
    if (*v13)
    {
      do
      {
        v13 = v15;
        v15 = *v15;
      }

      while (v15);
    }
  }

  *v13 = v12;
  return result;
}

uint64_t **Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::findBucket(uint64_t a1, _DWORD *a2)
{
  v4 = StateIdPair::computeHash(a2);
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
    do
    {
      v9 = v8;
      if (*(v8 + 2) == v4 && *(v8 + 3) == *a2 && *(v8 + 4) == a2[1])
      {
        break;
      }

      v8 = *v8;
      v7 = v9;
    }

    while (*v9);
  }

  return v7;
}

uint64_t HashProbeKEV<unsigned long long,DgnPrimArray<unsigned long long>,LinkSegIds>::upSize(uint64_t a1, int a2)
{
  v25 = 0;
  RoundUpToPowerOf2(a2, &v25);
  v23 = 0;
  v24 = 0;
  DgnPrimArray<unsigned long long>::copyArraySlice(&v23, (a1 + 16), 0, *(a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 16) = 0;
  }

  *(a1 + 24) = 0;
  v5 = v25;
  *(a1 + 4) = a2;
  *(a1 + 8) = v5;
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::initBuckets(a1);
  v6 = v24;
  if (v24)
  {
    v7 = 0;
    v8 = v23;
    v9 = v25;
    v10 = 32 - v25;
    do
    {
      v11 = *(v8 + 8 * v7);
      if (v11 != -1)
      {
        v12 = (HIDWORD(v11) & 0xFFFFFFF) + v11;
        if (v12 <= v11)
        {
          v19 = 0;
        }

        else
        {
          v13 = 0;
          v14 = v11 - v12;
          v15 = (**(a1 + 32) + 8 * v11);
          do
          {
            v16 = *v15++;
            HIDWORD(v17) = v13;
            LODWORD(v17) = v13;
            HIDWORD(v17) = (v17 >> 19) + HIDWORD(v16);
            LODWORD(v17) = HIDWORD(v17);
            v13 = (v17 >> 19) + v16;
          }

          while (!__CFADD__(v14++, 1));
          v19 = -1640531527 * v13;
        }

        LODWORD(v20) = v19 >> v10;
        if (v9)
        {
          v20 = v20;
        }

        else
        {
          v20 = 0;
        }

        v21 = *(a1 + 16);
        while (*(v21 + 8 * v20) != -1)
        {
          if (v20 + 1 == *(a1 + 4))
          {
            v20 = 0;
          }

          else
          {
            v20 = (v20 + 1);
          }
        }

        *(v21 + 8 * v20) = v11;
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
}

void sub_26282E134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

BOOL LinkSegIds::equalKeys(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = HIDWORD(a2) & 0xFFFFFFF;
  if (v3 != *(a3 + 8))
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *a1;
  v5 = *a3;
  v6 = v3 - 1;
  do
  {
    v7 = *v5++;
    result = *(v4 + 8 * a2) == v7;
    v9 = *(v4 + 8 * a2) != v7 || v6-- == 0;
    LODWORD(a2) = a2 + 1;
  }

  while (!v9);
  return result;
}

uint64_t HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::upSize(uint64_t a1, int a2)
{
  v15 = 0;
  RoundUpToPowerOf2(a2, &v15);
  v13 = 0;
  v14 = 0;
  DgnPrimArray<unsigned long long>::copyArraySlice(&v13, (a1 + 16), 0, *(a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 16) = 0;
  }

  *(a1 + 24) = 0;
  v5 = v15;
  *(a1 + 4) = a2;
  *(a1 + 8) = v5;
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::initBuckets(a1);
  v6 = v14;
  if (v14)
  {
    v7 = 0;
    do
    {
      v8 = *(v13 + 8 * v7);
      if (v8 != -1)
      {
        v9 = WordLattice::computeHash(*(a1 + 32), *(v13 + 8 * v7));
        if (v15)
        {
          v10 = (-1640531527 * v9) >> -v15;
        }

        else
        {
          v10 = 0;
        }

        v11 = *(a1 + 16);
        while (*(v11 + 8 * v10) != -1)
        {
          if (v10 + 1 == *(a1 + 4))
          {
            v10 = 0;
          }

          else
          {
            v10 = (v10 + 1);
          }
        }

        *(v11 + 8 * v10) = v8;
        v6 = v14;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
}

void sub_26282E2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordLattice::computeHash(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    HIDWORD(v5) = v4;
    LODWORD(v5) = v4;
    v4 = LinkSegment::computeHash((*a1 + v2)) + (v5 >> 19);
    ++v3;
    v2 += 28;
  }

  while (v3 < *(a1 + 8));
  return v4;
}

BOOL WordLattice::equalKeys(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) != HIDWORD(a2))
  {
    return 0;
  }

  if (!HIDWORD(a2))
  {
    return 1;
  }

  v5 = a2;
  v7 = 0;
  v8 = 28 * HIDWORD(a2) - 28;
  do
  {
    result = LinkSegment::operator==(*(a1 + 240) + 28 * v5, *a3 + v7);
    v9 = !result || v8 == v7;
    v7 += 28;
    ++v5;
  }

  while (!v9);
  return result;
}

uint64_t WordLattice::computeHash(WordLattice *this, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (HIDWORD(a2) + a2 <= a2)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = 28 * a2;
  do
  {
    HIDWORD(v6) = v4;
    LODWORD(v6) = v4;
    v4 = LinkSegment::computeHash((*(this + 30) + v5)) + (v6 >> 19);
    v5 += 28;
    LODWORD(v2) = v2 - 1;
  }

  while (v2);
  return v4;
}

uint64_t LinkSegment::computeHash(unsigned __int16 *a1)
{
  HIDWORD(v1) = a1[4] + (*a1 << 13);
  LODWORD(v1) = HIDWORD(v1);
  HIDWORD(v1) = (v1 >> 19) + *(a1 + 10);
  LODWORD(v1) = HIDWORD(v1);
  HIDWORD(v1) = (v1 >> 19) + *(a1 + 11);
  LODWORD(v1) = HIDWORD(v1);
  HIDWORD(v1) = (v1 >> 19) + a1[1];
  LODWORD(v1) = HIDWORD(v1);
  HIDWORD(v1) = (v1 >> 19) + a1[2];
  LODWORD(v1) = HIDWORD(v1);
  HIDWORD(v1) = (v1 >> 19) + a1[3];
  LODWORD(v1) = HIDWORD(v1);
  HIDWORD(v1) = (v1 >> 19) + *(a1 + 3);
  LODWORD(v1) = HIDWORD(v1);
  HIDWORD(v1) = (v1 >> 19) + a1[8];
  LODWORD(v1) = HIDWORD(v1);
  HIDWORD(v1) = (v1 >> 19) + a1[9];
  LODWORD(v1) = HIDWORD(v1);
  HIDWORD(v1) = (v1 >> 19) + *(a1 + 5);
  LODWORD(v1) = HIDWORD(v1);
  return (v1 >> 19) + *(a1 + 6);
}

BOOL LinkSegment::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == *(a2 + 20) && *(a1 + 16) == *(a2 + 16) && *(a1 + 18) == *(a2 + 18) && *(a1 + 24) == *(a2 + 24) && *(a1 + 12) == *(a2 + 12))
  {
    v2 = 0;
    while (*(a1 + v2) == *(a2 + v2))
    {
      v2 += 2;
      if (v2 == 10)
      {
        if (*(a1 + 10) != *(a2 + 10))
        {
          return 0;
        }

        return *(a1 + 11) == *(a2 + 11);
      }
    }
  }

  return 0;
}