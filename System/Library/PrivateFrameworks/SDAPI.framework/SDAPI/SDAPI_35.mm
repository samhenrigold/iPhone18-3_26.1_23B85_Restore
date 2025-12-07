void sub_26275C3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::BtNodeCacheType(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  *a1 = &unk_287527E20;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::HashNCHV(a1 + 40, 0, 128);
  return a1;
}

void sub_26275C43C(_Unwind_Exception *a1)
{
  *v1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void *BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527E20;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));
  return a1;
}

void BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527E20;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));

  JUMPOUT(0x26672B1B0);
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::sizeObject(uint64_t a1, uint64_t a2)
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

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::findOrCreateNode(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v12 = *a4;
  v13 = *a4 & 0xFE000000;
  if (*(a1 + 32) == 1 && v13 != -100663296 && v13 != -67108864)
  {
    v22 = *(a1 + 24);
    if ((*(v22 + 68) & 0xFFFFFFFD) == 0)
    {
      Constraint::isCoartAllowedForState(v22, a4);
      v12 = *a4;
    }
  }

  v16 = *(a4 + 4);
  v24[0] = v12;
  v24[1] = v16;
  v25 = *(a4 + 8);
  v26 = vdup_n_s32(0xFAFFFFFC);
  v27 = a3;
  v28 = 0;
  v29 = 0;
  Bucket = HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::findBucket(a1 + 40, v24);
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
    HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::add(a1 + 40, v24, &Node);
    v18 = 1;
  }

  result = *p_Node;
  *a7 = v18;
  return result;
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::BtNodeCacheType(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  *a1 = &unk_287527DE0;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::HashNCHV(a1 + 40, 0, 128);
  return a1;
}

void sub_26275C784(_Unwind_Exception *a1)
{
  *v1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void *BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527DE0;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));
  return a1;
}

void BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527DE0;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));

  JUMPOUT(0x26672B1B0);
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::sizeObject(uint64_t a1, uint64_t a2)
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

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::findOrCreateNode(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v9 = a5;
  if (*(a1 + 32) != 1 || ((v14 = a4->u32[0], (v14 & 0xFE000000) != 0xFA000000) ? (v15 = (v14 & 0xFE000000) == -67108864) : (v15 = 1), v15))
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

  BtNodeKeyGenerator<true,true>::getKey(a3, a4, v9, a6, v16 & 1, v26);
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

uint64_t BtNodeKeyGenerator<true,true>::getKey@<X0>(uint64_t result@<X0>, int32x2_t *a2@<X1>, __int8 a3@<W2>, unsigned int *a4@<X3>, int a5@<W4>, int32x2_t *a6@<X8>)
{
  v6 = a2->i32[0];
  v7 = a2->i16[2];
  v8 = a2->i16[3];
  v9 = a2[1];
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

  a6->i32[0] = v6;
  a6->i16[2] = v7;
  a6->i16[3] = v8;
  a6[1] = v9;
  a6[2] = vdup_n_s32(0xFAFFFFFC);
  a6[3].i32[0] = result;
  a6[3].i16[2] = v10;
  a6[3].i8[6] = a3;
  return result;
}

uint64_t BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::BtNodeCacheType(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  *a1 = &unk_287527D60;
  HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::HashNCHV(a1 + 40, 0, 128);
  return a1;
}

void sub_26275CBDC(_Unwind_Exception *a1)
{
  *v1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void *BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527D60;
  HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));
  return a1;
}

void BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527D60;
  HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));

  JUMPOUT(0x26672B1B0);
}

uint64_t BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::sizeObject(uint64_t a1, uint64_t a2)
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

uint64_t BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::findOrCreateNode(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, uint64_t a5, uint64_t a6, char *a7)
{
  v12 = *a4;
  v13 = *a4 & 0xFE000000;
  if (*(a1 + 32) == 1 && v13 != -100663296 && v13 != -67108864)
  {
    v22 = *(a1 + 24);
    if ((*(v22 + 68) & 0xFFFFFFFD) == 0)
    {
      Constraint::isCoartAllowedForState(v22, a4);
      v12 = *a4;
    }
  }

  v16 = a4[2];
  v24 = a3 | ((v12 >> 25) << 32);
  v25 = v16;
  Bucket = HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::findBucket(a1 + 40, &v24);
  if (*Bucket)
  {
    v18 = 0;
    p_Node = (*Bucket + 20);
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
    HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::add(a1 + 40, &v24, &Node);
    v18 = 1;
  }

  result = *p_Node;
  *a7 = v18;
  return result;
}

uint64_t HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::HashNCHV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875234B8;
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
    v7 = 18;
  }

  else
  {
    v7 = 22;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26275CF68(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::~HashNCHV(uint64_t a1)
{
  HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::~HashNCHV(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_2875234B8;
  if (*(a1 + 8))
  {
    HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::removeAll(uint64_t result)
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
            result = v8(v5 + 20);
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

unint64_t HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::add(unint64_t result, uint64_t *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::upSize(result, 2 * v6);
  }

  HIDWORD(v7) = *a2;
  LODWORD(v7) = *a2;
  HIDWORD(v7) = (v7 >> 19) + *(a2 + 2);
  LODWORD(v7) = HIDWORD(v7);
  v8 = *(v5 + 16);
  v9 = (-1640531527 * ((v7 >> 19) + *(a2 + 2))) >> -v8;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v5 + 80);
  v12 = *(v5 + 32);
  if (!v12)
  {
    result = DgnPool::addChunk((v5 + 24));
    v12 = *(v5 + 32);
  }

  v13 = (v11 + 8 * v10);
  *(v5 + 32) = *v12;
  v14 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *(v12 + 8) = v14;
  *(v12 + 20) = *a3;
  ++*(v5 + 8);
  if (*(v5 + 20))
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

void *HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::findBucket(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  HIDWORD(v3) = *a2;
  LODWORD(v3) = *a2;
  HIDWORD(v3) = (v3 >> 19) + v2;
  LODWORD(v3) = HIDWORD(v3);
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = (-1640531527 * ((v3 >> 19) + v4)) >> -v5;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  v8 = *v7;
  if (!*v7)
  {
    return v7;
  }

  do
  {
    result = v7;
    v7 = v8;
    if (*(v8 + 2) == *a2 && *(v8 + 6) == v2 && *(v8 + 4) == v4)
    {
      break;
    }

    v8 = *v8;
    result = v7;
  }

  while (*v7);
  return result;
}

uint64_t HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::upSize(uint64_t a1, int a2)
{
  v18 = 0;
  RoundUpToPowerOf2(a2, &v18);
  v16 = 0;
  v17 = 0;
  DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice(&v16, (a1 + 80), 0, *(a1 + 88));
  v4 = *(a1 + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  v5 = v18;
  *(a1 + 12) = a2;
  *(a1 + 16) = v5;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  v6 = v17;
  if (v17)
  {
    v7 = 0;
    v8 = v18;
    v9 = 32 - v18;
    do
    {
      v10 = *(v16 + 8 * v7);
      if (v10)
      {
        do
        {
          v11 = *v10;
          HIDWORD(v12) = *(v10 + 2);
          LODWORD(v12) = HIDWORD(v12);
          HIDWORD(v12) = (v12 >> 19) + *(v10 + 6);
          LODWORD(v12) = HIDWORD(v12);
          v13 = (-1640531527 * ((v12 >> 19) + *(v10 + 4))) >> v9;
          if (!v8)
          {
            v13 = 0;
          }

          v14 = *(a1 + 80);
          *v10 = *(v14 + 8 * v13);
          *(v14 + 8 * v13) = v10;
          v10 = v11;
        }

        while (v11);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v16);
}

void sub_26275D36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524248;
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
  v12[1] = 0x3FFF;
  v13 = xmmword_26286CC40;
  v14 = 0x3FFF;
  v15 = xmmword_26286CC40;
  v7 = gShadowDiagnosticShowIdealizedObjectSizes;
  v8 = sizeObject(v12, 2);
  v9 = sizeObject(&v16, 2);
  if (v7)
  {
    v10 = 8;
  }

  else
  {
    v10 = 12;
  }

  *(a1 + 24) = 80;
  *(a1 + 28) = v10 + v8 + v9;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  MrecInitModule_sdpres_sdapi();
  return a1;
}

void sub_26275D49C(_Unwind_Exception *a1)
{
  MrecInitModule_sdpres_sdapi();
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::~Hash(uint64_t a1)
{
  Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287524248;
  if (*(a1 + 8))
  {
    Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875240B8;
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

  *(a1 + 24) = 64;
  *(a1 + 28) = v7 + v8 + 21;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26275D670(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::~Hash(uint64_t a1)
{
  Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_2875240B8;
  if (*(a1 + 8))
  {
    Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

void *Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::findBucket(uint64_t a1, uint64_t a2)
{
  v4 = CWIDACPair::computeHash(a2);
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
  if (!*v7)
  {
    return v7;
  }

  v9 = v4;
  do
  {
    v10 = v7;
    v7 = v8;
    if (*(v8 + 8) == v9 && CWIDAC::operator==(v8 + 12, a2) && CWIDAC::operator==(v7 + 36, a2 + 24))
    {
      break;
    }

    v8 = *v7;
    v10 = v7;
  }

  while (*v7);
  return v10;
}

__n128 CWIDACPair::CWIDACPair(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t *DgnArray<BackTraceItem>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, v6 << 6, v5 << 6, v5 << 6, 1);
  *(a1 + 12) = result >> 6;
  *a1 = v8;
  return result;
}

uint64_t *Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::findBucket(uint64_t a1, uint64_t a2)
{
  HIDWORD(v4) = CWIDAC::computeHash(a2);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 28);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 32);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 36);
  LODWORD(v4) = HIDWORD(v4);
  v5 = (v4 >> 19) + *(a2 + 24);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (-1640531527 * v5) >> -v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(a1 + 80) + 8 * v7);
  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9;
      if (*(v9 + 8) == v5 && BackTraceLinkPair::operator==(v9 + 12, a2))
      {
        break;
      }

      v9 = *v10;
      v8 = v10;
    }

    while (*v10);
  }

  return v8;
}

BOOL BackTraceLinkPair::operator==(uint64_t a1, uint64_t a2)
{
  result = CWIDAC::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36);
  }

  return result;
}

double BaseWordLatticeLC::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return result;
}

void UserDelta::printSize(UserDelta *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 77);
  if (v53)
  {
    v12 = v52;
  }

  else
  {
    v12 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &byte_262899963, a3, &byte_262899963, v12);
  DgnString::~DgnString(&v52);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &byte_262899963);
  v14 = (a3 + 1);
  v15 = (34 - a3);
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79);
  if (v53)
  {
    v17 = v52;
  }

  else
  {
    v17 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v17, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79);
  if (v53)
  {
    v19 = v52;
  }

  else
  {
    v19 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v19, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79);
  if (v53)
  {
    v21 = v52;
  }

  else
  {
    v21 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v21, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79);
  if (v53)
  {
    v23 = v52;
  }

  else
  {
    v23 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v23, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79);
  if (v53)
  {
    v25 = v52;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79);
  if (v53)
  {
    v27 = v52;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v27, 4, 4, 0);
  v50 = a3;
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 12;
  }

  else
  {
    v28 = 16;
  }

  v29 = *(this + 8);
  v30 = *(this + 9);
  v31 = this;
  v32 = v30 >= v29;
  v33 = v30 - v29;
  if (v32)
  {
    if (v29 > 0)
    {
      v34 = (v29 - 1) + v28 + 1;
    }

    else
    {
      v34 = v28;
    }

    v28 = v34 + v33;
    v29 = 0;
  }

  else
  {
    v34 = v28;
  }

  v35 = v29;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79);
  if (v53)
  {
    v37 = v52;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v14, &byte_262899963, v15, v15, v37, v28, v34, v35);
  DgnString::~DgnString(&v52);
  *a4 += v28;
  *a5 += v34;
  *a6 += v35;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79);
  if (v53)
  {
    v39 = v52;
  }

  else
  {
    v39 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v14, &byte_262899963, v15, v15, v39, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v40 = 12;
  }

  else
  {
    v40 = 16;
  }

  v41 = *(v31 + 14);
  v42 = *(v31 + 15);
  v32 = v42 >= v41;
  v43 = v42 - v41;
  if (v32)
  {
    if (v41 > 0)
    {
      v44 = (v41 - 1) + v40 + 1;
    }

    else
    {
      v44 = v40;
    }

    v40 = v44 + v43;
    v41 = 0;
  }

  else
  {
    v44 = v40;
  }

  v45 = v41;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79);
  if (v53)
  {
    v47 = v52;
  }

  else
  {
    v47 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v14, &byte_262899963, v15, v15, v47, v40, v44, v45);
  DgnString::~DgnString(&v52);
  *a4 += v40;
  *a5 += v44;
  *a6 += v45;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 80);
  if (v53)
  {
    v49 = v52;
  }

  else
  {
    v49 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v50, &byte_262899963, (35 - v50), (35 - v50), v49, *a4, *a5, *a6);
  DgnString::~DgnString(&v52);
}

void sub_26275DF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void (***UserDelta::saveUserDelta(UserDelta *this, DFile *a2, DFileChecksums *a3, uint64_t a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x64u, a4, "MRUDL!?", 23, 2);
  v10 = 0;
  writeObject(v7, this, &v10);
  writeObject(v7, this + 1, &v10);
  writeObject(v7, this + 2, &v10);
  writeObject(v7, this + 3, &v10);
  writeObject(v7, this + 4, &v10);
  writeObject(v7, this + 5, &v10);
  writeObject<char>(v7, this + 24, &v10);
  writeObject(v7, this + 10, &v10);
  writeObject<unsigned char>(v7, this + 48, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 100, v10);
  return DgnDelete<DgnStream>(v7);
}

void MrecInitLibrarySet_throughPhoneme(void)
{
  MrecInitLibrarySet_throughFileutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_sdpres_sdapi();
}

void EmptyNet::~EmptyNet(EmptyNet *this)
{
  HmmNet::~HmmNet(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t EmptyNet::sizeObject(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v4 = HmmNet::sizeObject(a1, a2);
  v5 = sizeObject((a1 + 29), v2);
  v6 = sizeObject((a1 + 32), v2);
  if (v2 == 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1;
  }

  return v7 + v5 + v6;
}

uint64_t EmptyNet::getBestScore(uint64_t a1, void *a2)
{
  result = *(a1 + 138);
  if (result != 20000)
  {
    *a2 = a1 + 128;
  }

  return result;
}

uint64_t EmptyNet::scoreNetInternal(uint64_t this, int a2, int a3, int a4)
{
  v4 = this;
  v5 = *(this + 124);
  v6 = 20000;
  if (v5 != 20000)
  {
    v7 = *(*(this + 8) + 244);
    if (v7 == 20000)
    {
      LOWORD(v7) = 0;
    }

    v8 = v5 - v7;
    if (v8 <= a4)
    {
      v6 = v8;
    }

    else
    {
      v6 = 20000;
    }
  }

  *(this + 128) = *(this + 116);
  *(this + 136) = v6;
  *(this + 138) = v6;
  v9 = *(this + 8);
  if (v6 != 20000)
  {
    if (*(v9 + 224) >= v6)
    {
      this = BestData::newOrTiedBestNode(v9 + 192, v6, (this + 128), 0);
      v9 = *(v4 + 8);
    }

    v10 = v9 + 4 * (v6 + 5000);
    ++*(v10 + 151392);
    ++*(v9 + 302468);
    ++*(v10 + 320);
    ++*(v9 + 302464);
  }

  *(v4 + 108) = v6;
  *(v4 + 110) = v6;
  if (v6 < *(v9 + 246))
  {
    *(v9 + 246) = v6;
  }

  return this;
}

uint64_t EmptyNet::thresholdNetInternal(uint64_t this, int a2, int a3)
{
  if (*(this + 110) <= a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    *(this + 110) = 20000;
  }

  *(this + 104) = v3;
  return this;
}

uint64_t EmptyNet::unpackEmptySequence(uint64_t this, Node **a2, Node **a3)
{
  *(this + 136) = 1310740000;
  *(this + 140) = 0;
  *(this + 148) = -65536;
  *(this + 152) = 1;
  *a3 = (this + 128);
  *a2 = (this + 128);
  return this;
}

void Imelda::printSize(Imelda *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/ldt.cpp", 76);
  if (v25)
  {
    v13 = v24;
  }

  else
  {
    v13 = &unk_26288CB64;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288CB64, a3, &unk_26288CB64, v13);
  DgnString::~DgnString(&v24);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288CB64);
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/ldt.cpp", 78);
  if (v25)
  {
    v16 = v24;
  }

  else
  {
    v16 = &unk_26288CB64;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), &unk_26288CB64, (34 - a3), (34 - a3), v16, 4, 4, 0);
  DgnString::~DgnString(&v24);
  *a4 += 4;
  *a5 += 4;
  v17 = LinearTransform::sizeObject(this + 8, 0);
  v18 = LinearTransform::sizeObject(this + 8, 1);
  v19 = LinearTransform::sizeObject(this + 8, 3);
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/ldt.cpp", 78);
  if (v25)
  {
    v21 = v24;
  }

  else
  {
    v21 = &unk_26288CB64;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &unk_26288CB64, (34 - a3), (34 - a3), v21, v17, v18, v19);
  DgnString::~DgnString(&v24);
  *a4 += v17;
  *a5 += v18;
  *a6 += v19;
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/ldt.cpp", 79);
  if (v25)
  {
    v23 = v24;
  }

  else
  {
    v23 = &unk_26288CB64;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, a3, &unk_26288CB64, (35 - a3), (35 - a3), v23, *a4, *a5, *a6);
  DgnString::~DgnString(&v24);
}

void sub_26275E5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void Imelda::saveImelda(Imelda *this, DFile *a2, DFileChecksums *a3, int a4, _BOOL8 a5)
{
  if (a4)
  {

    Imelda::saveImeldaText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x1Fu, a5, "MRLDB!?", 19, 3);
    v10 = 0;
    writeObject(v8, this, &v10);
    LinearTransform::writeObject((this + 8), v8, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 31, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void Imelda::saveImeldaText(Imelda *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v25);
  DgnTextFileWriter::openDgnTextFileWriter(v25, a2, 32, a3);
  v23 = 0;
  v24 = 0;
  DgnTextFile::legalDgnTextFileVersions(v25, sLDT_Versions, &v23);
  DgnTextFileWriter::setFileType(v25, "LinearDiscriminantTransform", (v23 + 8 * (v24 - 1)));
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v6 = realloc_array(0, &v19, 0x10uLL, 0, 0, 1);
  v20 = 0;
  v21 = v19;
  LODWORD(v22) = 4;
  HIDWORD(v22) = v6 >> 2;
  v18[0] = 0;
  HIDWORD(v20) = realloc_array(0, v18, 0x40uLL, 0, 0, 1) >> 4;
  v19 = v18[0];
  v7 = v20;
  if (v20 <= 4)
  {
    if (v20 != 4)
    {
      v9 = v20 + 1;
      v10 = 16 * v20;
      do
      {
        DgnString::DgnString((v19 + v10));
        v10 += 16;
      }

      while (v9++ != 4);
    }
  }

  else if (v20 >= 5)
  {
    v8 = 16 * v20 - 16;
    do
    {
      --v7;
      DgnString::~DgnString(v19 + v8);
      v8 -= 16;
    }

    while (v7 > 4);
  }

  LODWORD(v20) = 4;
  DgnString::operator=(v19, "TableName");
  *v21 = 0;
  DgnString::operator=((v19 + 16), "RowIndex");
  v21[1] = 3;
  DgnString::operator=((v19 + 32), "ColumnIndex");
  v21[2] = 3;
  DgnString::operator=((v19 + 48), "TableEntryInt");
  v21[3] = 1;
  DgnTextFileWriter::setLineFieldFormat(v25, &v21, &v19);
  v13 = *(this + 2);
  v12 = *(this + 3);
  v14 = *(this + 12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "InputFeatureDim", v13);
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "OutputFeatureDim", v12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "ModelFeatureDim", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "TransformIntScale", 1 << v14);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (v13)
      {
        for (j = 0; j != v13; ++j)
        {
          DgnTextFileWriter::setLineFieldValue(v25, 0, "LDAMatrix");
          DgnTextFileWriter::setLineFieldUnsignedValue(v25, 1u, i);
          DgnTextFileWriter::setLineFieldUnsignedValue(v25, 2u, j);
          DgnTextFileWriter::setLineFieldIntegerValue(v25, 3u, *(*(*(this + 4) + 16 * i) + 4 * j));
          DgnTextFileWriter::writeNextLine(v25);
        }
      }
    }
  }

  v18[0] = 0;
  v18[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v18, this + 2, 0, *(this + 6));
  if (v12)
  {
    for (k = 0; k != v12; ++k)
    {
      DgnTextFileWriter::setLineFieldValue(v25, 0, "LDAOffset");
      DgnTextFileWriter::setLineFieldUnsignedValue(v25, 1u, k);
      DgnTextFileWriter::setLineFieldUnsignedValue(v25, 2u, 0);
      DgnTextFileWriter::setLineFieldIntegerValue(v25, 3u, *(v18[0] + k));
      DgnTextFileWriter::writeNextLine(v25);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnArray<DgnString>::releaseAll(&v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  DgnIArray<Utterance *>::~DgnIArray(&v23);
  DgnTextFileWriter::~DgnTextFileWriter(v25);
}

void sub_26275EA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
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
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void MrecInitModule_utteranc_channel(void)
{
  if (!gParDebugUttAddFrame)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugUttAddFrame", byte_26288CB81, byte_26288CB81, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugUttAddFrame = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugUttAddFrame);
  }
}

void PerFrameUttInfo::~PerFrameUttInfo(PerFrameUttInfo *this)
{
  DgnIArray<Utterance *>::~DgnIArray(this + 32);
  DgnIArray<Utterance *>::~DgnIArray(this + 16);

  DgnIArray<Utterance *>::~DgnIArray(this);
}

uint64_t *DgnArray<EnergyInfo>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 2) = 0;
  v8 = *(result + 3);
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
    result = DgnPrimArray<unsigned long long>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 2);
  }

  v11 = a4;
  v10 = v9;
  do
  {
    *(*v7 + 8 * v10) = *(*a2 + 8 * a3);
    v10 = *(v7 + 2) + 1;
    *(v7 + 2) = v10;
    ++a3;
    --v11;
  }

  while (v11);
LABEL_6:
  if (v10 < a4)
  {
    v12 = a4 - v10;
    v13 = *v7 + 8 * v10 + 6;
    do
    {
      *(v13 - 6) = 1;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  *(v7 + 2) = a4;
  return result;
}

uint64_t *DgnArray<PitchInfo>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 2) = 0;
  v8 = *(result + 3);
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
    result = DgnPrimArray<unsigned long long>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 2);
  }

  v11 = a4;
  v10 = v9;
  do
  {
    *(*v7 + 8 * v10) = *(*a2 + 8 * a3);
    v10 = *(v7 + 2) + 1;
    *(v7 + 2) = v10;
    ++a3;
    --v11;
  }

  while (v11);
LABEL_6:
  if (v10 < a4)
  {
    v12 = a4 - v10;
    v13 = (*v7 + 8 * v10);
    do
    {
      *v13++ = 0xFFFFFFFF00000000;
      --v12;
    }

    while (v12);
  }

  *(v7 + 2) = a4;
  return result;
}

void DgnArray<DgnPrimArray<double>>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v9);
      v9 -= 16;
    }

    while (v9 != -16);
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
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    v14 = *a2 + 16 * a3;
    v15 = (*a1 + 16 * v12);
    *v15 = 0;
    v15[1] = 0;
    DgnPrimArray<double>::copyArraySlice(v15, v14, 0, *(v14 + 8));
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
      v16 = v12;
      v17 = 16 * v12 - 16;
      do
      {
        --v16;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v17);
        v17 -= 16;
      }

      while (v16 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v12 < a4)
  {
    v18 = a4 - v12;
    v19 = 16 * v12;
    do
    {
      v20 = (*a1 + v19);
      *v20 = 0;
      v20[1] = 0;
      v19 += 16;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

void Utterance::~Utterance(Utterance *this)
{
  if (*(this + 416) == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 270, "channel/utteranc", 1, "%s", &errStr_channel_utteranc_E_DEL);
  }

  if (!*(this + 53))
  {
    DgnDelete<EnvMgr>(*(this + 40));
    *(this + 40) = 0;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 288);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 272);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 256);
  DgnIOwnArray<WaveData *>::releaseAll(this + 240);
  DgnIOwnArray<WaveData *>::releaseAll(this + 224);
  DgnIOwnArray<SynchronizedArray<DgnPrimArray<unsigned char>> *>::releaseAll(this + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnIArray<Utterance *>::~DgnIArray(this + 152);
  DgnIArray<Utterance *>::~DgnIArray(this + 136);
  DgnIArray<Utterance *>::~DgnIArray(this + 120);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 104);
}

void Utterance::printSize(Utterance *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 286);
  if (v151)
  {
    v13 = v150;
  }

  else
  {
    v13 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26288CB81, a3, byte_26288CB81, v13);
  DgnString::~DgnString(&v150);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26288CB81);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 287);
  if (v151)
  {
    v18 = v150;
  }

  else
  {
    v18 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), byte_26288CB81, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 288);
  if (v151)
  {
    v20 = v150;
  }

  else
  {
    v20 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), byte_26288CB81, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 290);
  if (v151)
  {
    v22 = v150;
  }

  else
  {
    v22 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), byte_26288CB81, (34 - a3), (34 - a3), v22, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 292);
  if (v151)
  {
    v24 = v150;
  }

  else
  {
    v24 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), byte_26288CB81, (34 - a3), (34 - a3), v24, 8, 8, 0);
  DgnString::~DgnString(&v150);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 294);
  if (v151)
  {
    v26 = v150;
  }

  else
  {
    v26 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), byte_26288CB81, (34 - a3), (34 - a3), v26, 8, 8, 0);
  v147 = a3;
  DgnString::~DgnString(&v150);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 295);
  if (v151)
  {
    v28 = v150;
  }

  else
  {
    v28 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, (a3 + 1), byte_26288CB81, (34 - a3), (34 - a3), v28, 8, 8, 0);
  DgnString::~DgnString(&v150);
  *a4 += 8;
  *a5 += 8;
  v29 = sizeObject(this + 40, 0);
  v30 = sizeObject(this + 40, 1);
  v31 = sizeObject(this + 40, 3);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 297);
  if (v151)
  {
    v33 = v150;
  }

  else
  {
    v33 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v15, byte_26288CB81, v16, v16, v33, v29, v30, v31);
  DgnString::~DgnString(&v150);
  *a4 += v29;
  *a5 += v30;
  *a6 += v31;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 298);
  if (v151)
  {
    v35 = v150;
  }

  else
  {
    v35 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v15, byte_26288CB81, v16, v16, v35, 8, 8, 0);
  DgnString::~DgnString(&v150);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 300);
  if (v151)
  {
    v37 = v150;
  }

  else
  {
    v37 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v15, byte_26288CB81, v16, v16, v37, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 302);
  if (v151)
  {
    v39 = v150;
  }

  else
  {
    v39 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v15, byte_26288CB81, v16, v16, v39, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 304);
  if (v151)
  {
    v41 = v150;
  }

  else
  {
    v41 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v15, byte_26288CB81, v16, v16, v41, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  v42 = sizeObject<DgnPrimArray<unsigned char>>(this + 104, 0);
  v43 = sizeObject<DgnPrimArray<unsigned char>>(this + 104, 1);
  v150 = 0;
  v151 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v150);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 305);
  if (v151)
  {
    v45 = v150;
  }

  else
  {
    v45 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, byte_26288CB81, v16, v16, v45, v42, v43, 0);
  DgnString::~DgnString(&v150);
  *a4 += v42;
  *a5 += v43;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  else
  {
    v46 = 16;
  }

  v47 = *(this + 44);
  v48 = *(this + 45);
  if (v48 >= v47)
  {
    v49 = 0;
    if (v47 > 0)
    {
      v46 += 2 * (v47 - 1) + 2;
    }

    v50 = v46 + 2 * (v48 - v47);
  }

  else
  {
    v49 = 2 * v47;
    v50 = v46;
  }

  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 307);
  if (v151)
  {
    v52 = v150;
  }

  else
  {
    v52 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, byte_26288CB81, v16, v16, v52, v50, v46, v49);
  DgnString::~DgnString(&v150);
  *a4 += v50;
  *a5 += v46;
  *a6 += v49;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  else
  {
    v53 = 16;
  }

  v54 = *(this + 48);
  v55 = *(this + 49);
  if (v55 >= v54)
  {
    v56 = 0;
    if (v54 > 0)
    {
      v53 += 4 * (v54 - 1) + 4;
    }

    v57 = v53 + 4 * (v55 - v54);
  }

  else
  {
    v56 = 4 * v54;
    v57 = v53;
  }

  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 309);
  if (v151)
  {
    v59 = v150;
  }

  else
  {
    v59 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v15, byte_26288CB81, v16, v16, v59, v57, v53, v56);
  DgnString::~DgnString(&v150);
  *a4 += v57;
  *a5 += v53;
  *a6 += v56;
  v60 = sizeObject<SynchronizedArray<DgnPrimArray<unsigned char>> *>(this + 200, 0);
  v61 = sizeObject<SynchronizedArray<DgnPrimArray<unsigned char>> *>(this + 200, 1);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 311);
  if (v151)
  {
    v63 = v150;
  }

  else
  {
    v63 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, byte_26288CB81, v16, v16, v63, v60, v61, 0);
  DgnString::~DgnString(&v150);
  *a4 += v60;
  *a5 += v61;
  v64 = sizeObject(this + 120, 0);
  v65 = sizeObject(this + 120, 1);
  v66 = sizeObject(this + 120, 3);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 313);
  if (v151)
  {
    v68 = v150;
  }

  else
  {
    v68 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v15, byte_26288CB81, v16, v16, v68, v64, v65, v66);
  DgnString::~DgnString(&v150);
  *a4 += v64;
  *a5 += v65;
  *a6 += v66;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 315);
  if (v151)
  {
    v70 = v150;
  }

  else
  {
    v70 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v15, byte_26288CB81, v16, v16, v70, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 317);
  if (v151)
  {
    v72 = v150;
  }

  else
  {
    v72 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v15, byte_26288CB81, v16, v16, v72, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 319);
  if (v151)
  {
    v74 = v150;
  }

  else
  {
    v74 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v15, byte_26288CB81, v16, v16, v74, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 321);
  if (v151)
  {
    v76 = v150;
  }

  else
  {
    v76 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v15, byte_26288CB81, v16, v16, v76, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  v77 = sizeObject<WaveData *>(this + 224, 0);
  v78 = sizeObject<WaveData *>(this + 224, 1);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 322);
  if (v151)
  {
    v80 = v150;
  }

  else
  {
    v80 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v15, byte_26288CB81, v16, v16, v80, v77, v78, 0);
  DgnString::~DgnString(&v150);
  *a4 += v77;
  *a5 += v78;
  v81 = sizeObject<WaveData *>(this + 240, 0);
  v82 = sizeObject<WaveData *>(this + 240, 1);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 324);
  if (v151)
  {
    v84 = v150;
  }

  else
  {
    v84 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v15, byte_26288CB81, v16, v16, v84, v81, v82, 0);
  DgnString::~DgnString(&v150);
  *a4 += v81;
  *a5 += v82;
  v85 = sizeObject<DgnPrimArray<double>>(this + 256, 0);
  v86 = sizeObject<DgnPrimArray<double>>(this + 256, 1);
  v150 = 0;
  v151 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v150);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 326);
  if (v151)
  {
    v88 = v150;
  }

  else
  {
    v88 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v15, byte_26288CB81, v16, v16, v88, v85, v86, 0);
  DgnString::~DgnString(&v150);
  *a4 += v85;
  *a5 += v86;
  v89 = sizeObject<DgnPrimArray<double>>(this + 272, 0);
  v90 = sizeObject<DgnPrimArray<double>>(this + 272, 1);
  v150 = 0;
  v151 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v150);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 327);
  if (v151)
  {
    v92 = v150;
  }

  else
  {
    v92 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v15, byte_26288CB81, v16, v16, v92, v89, v90, 0);
  DgnString::~DgnString(&v150);
  *a4 += v89;
  *a5 += v90;
  v93 = sizeObject<DgnPrimArray<double>>(this + 288, 0);
  v94 = sizeObject<DgnPrimArray<double>>(this + 288, 1);
  v150 = 0;
  v151 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v150);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 329);
  if (v151)
  {
    v96 = v150;
  }

  else
  {
    v96 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v15, byte_26288CB81, v16, v16, v96, v93, v94, 0);
  DgnString::~DgnString(&v150);
  *a4 += v93;
  *a5 += v94;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v97 = 12;
  }

  else
  {
    v97 = 16;
  }

  v98 = *(this + 78);
  v99 = *(this + 79);
  if (v99 >= v98)
  {
    v100 = 0;
    if (v98 > 0)
    {
      v97 += 2 * (v98 - 1) + 2;
    }

    v101 = v97 + 2 * (v99 - v98);
  }

  else
  {
    v100 = 2 * v98;
    v101 = v97;
  }

  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 330);
  if (v151)
  {
    v103 = v150;
  }

  else
  {
    v103 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v15, byte_26288CB81, v16, v16, v103, v101, v97, v100);
  DgnString::~DgnString(&v150);
  *a4 += v101;
  *a5 += v97;
  *a6 += v100;
  v104 = *(this + 40);
  if (v104)
  {
    v149 = 0;
    v150 = 0;
    v148 = 0;
    EnvMgr::printSize(v104, 0xFFFFFFFFLL, v15, &v150, &v149, &v148);
    *a4 += v150;
    *a5 += v149;
    *a6 += v148;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v105 = 4;
  }

  else
  {
    v105 = 8;
  }

  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 331);
  if (v151)
  {
    v107 = v150;
  }

  else
  {
    v107 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v15, byte_26288CB81, v16, v16, v107, v105, v105, 0);
  DgnString::~DgnString(&v150);
  *a4 += v105;
  *a5 += v105;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 332);
  if (v151)
  {
    v109 = v150;
  }

  else
  {
    v109 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v15, byte_26288CB81, v16, v16, v109, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 334);
  if (v151)
  {
    v111 = v150;
  }

  else
  {
    v111 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v15, byte_26288CB81, v16, v16, v111, 8, 8, 0);
  DgnString::~DgnString(&v150);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 335);
  if (v151)
  {
    v113 = v150;
  }

  else
  {
    v113 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v15, byte_26288CB81, v16, v16, v113, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  v114 = SnapTime::sizeObject(this + 352, 0);
  v115 = SnapTime::sizeObject(this + 352, 1);
  v116 = SnapTime::sizeObject(this + 352, 3);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 336);
  if (v151)
  {
    v118 = v150;
  }

  else
  {
    v118 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v15, byte_26288CB81, v16, v16, v118, v114, v115, v116);
  DgnString::~DgnString(&v150);
  *a4 += v114;
  *a5 += v115;
  *a6 += v116;
  v119 = SnapTime::sizeObject(this + 384, 0);
  v120 = SnapTime::sizeObject(this + 384, 1);
  v121 = SnapTime::sizeObject(this + 384, 3);
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 337);
  if (v151)
  {
    v123 = v150;
  }

  else
  {
    v123 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v122, v15, byte_26288CB81, v16, v16, v123, v119, v120, v121);
  DgnString::~DgnString(&v150);
  *a4 += v119;
  *a5 += v120;
  *a6 += v121;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 339);
  if (v151)
  {
    v125 = v150;
  }

  else
  {
    v125 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v124, v15, byte_26288CB81, v16, v16, v125, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 341);
  if (v151)
  {
    v127 = v150;
  }

  else
  {
    v127 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v126, v15, byte_26288CB81, v16, v16, v127, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 343);
  if (v151)
  {
    v129 = v150;
  }

  else
  {
    v129 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v128, v15, byte_26288CB81, v16, v16, v129, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 345);
  if (v151)
  {
    v131 = v150;
  }

  else
  {
    v131 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v15, byte_26288CB81, v16, v16, v131, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 347);
  if (v151)
  {
    v133 = v150;
  }

  else
  {
    v133 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v15, byte_26288CB81, v16, v16, v133, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v134 = 4;
  }

  else
  {
    v134 = 8;
  }

  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 349);
  if (v151)
  {
    v136 = v150;
  }

  else
  {
    v136 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v15, byte_26288CB81, v16, v16, v136, v134, v134, 0);
  DgnString::~DgnString(&v150);
  *a4 += v134;
  *a5 += v134;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v137 = 4;
  }

  else
  {
    v137 = 8;
  }

  v138 = *(this + 54);
  if (v138)
  {
    v139 = (*(*v138 + 104))(v138, 0) + v137;
    v140 = *(this + 54);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v137 = 4;
    }

    else
    {
      v137 = 8;
    }

    if (v140 && (v137 += (*(*v140 + 104))(v140, 1), (v141 = *(this + 54)) != 0))
    {
      v142 = (*(*v141 + 104))(v141, 3);
    }

    else
    {
      v142 = 0;
    }
  }

  else
  {
    v142 = 0;
    v139 = v137;
  }

  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 351);
  if (v151)
  {
    v144 = v150;
  }

  else
  {
    v144 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v15, byte_26288CB81, v16, v16, v144, v139, v137, v142);
  DgnString::~DgnString(&v150);
  *a4 += v139;
  *a5 += v137;
  *a6 += v142;
  getShipObjectSizeDescription(&v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 352);
  if (v151)
  {
    v146 = v150;
  }

  else
  {
    v146 = byte_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v147, byte_26288CB81, (35 - v147), (35 - v147), v146, *a4, *a5, *a6);
  DgnString::~DgnString(&v150);
}

void sub_262760440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<SynchronizedArray<DgnPrimArray<unsigned char>> *>(uint64_t a1, int a2)
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
          v9 += sizeObject<DgnPrimArray<unsigned char>>(v10 + 8, a2) + 5;
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

uint64_t sizeObject<WaveData *>(uint64_t a1, uint64_t a2)
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

void Utterance::getEnvMgr(Utterance *this)
{
  if (!*(this + 40))
  {
    v2 = MemChunkAlloc(0x110uLL, 0);
    EnvMgr::EnvMgr(v2, 5);
    *(this + 40) = v3;
  }
}

void *DgnIOwnArray<WaveData *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<WaveData>(*(*a1 + v3));
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

uint64_t *Utterance::setTransformedFrames(uint64_t *result, __int16 a2, int a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 44);
  if (v8 == *(result + 45))
  {
    result = DgnPrimArray<short>::reallocElts((result + 21), 1, 1);
    v8 = *(v7 + 176);
  }

  *(*(v7 + 168) + 2 * v8) = a2;
  *(v7 + 176) = v8 + 1;
  v9 = *(v7 + 192);
  if (v9 == *(v7 + 196))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v7 + 184, 1, 1);
    v9 = *(v7 + 192);
  }

  *(*(v7 + 184) + 4 * v9) = a3;
  ++*(v7 + 192);
  v10 = *(v7 + 208);
  if (v10 == *(v7 + 212))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(v7 + 200, 1, 1);
    v10 = *(v7 + 208);
  }

  *(*(v7 + 200) + 8 * v10) = a4;
  *(v7 + 208) = v10 + 1;
  return result;
}

uint64_t Utterance::getTransformedFrames(uint64_t this, int a2, int a3)
{
  while (1)
  {
    if (*(this + 416))
    {
      return 0;
    }

    v3 = *(this + 176);
    if (v3)
    {
      break;
    }

LABEL_7:
    this = *(this + 424);
    if (!this)
    {
      return this;
    }
  }

  v4 = 0;
  while (*(*(this + 168) + 2 * v4) != a2 || *(*(this + 184) + 4 * v4) != a3)
  {
    if (v3 == ++v4)
    {
      goto LABEL_7;
    }
  }

  return *(*(this + 200) + 8 * v4);
}

uint64_t Utterance::numCompleteRecogFrames(Utterance *this, unsigned int a2)
{
  v2 = *(this + 28);
  result = 268435200;
  if (v2 != 268435200)
  {
    return v2 / a2;
  }

  return result;
}

void Utterance::Utterance(Utterance *this, Utterance *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  AcousticFormat::AcousticFormat(this + 40, a2 + 40);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = *(a2 + 11);
  *(this + 24) = *(a2 + 24);
  *(this + 13) = 0;
  *(this + 14) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::copyArraySlice(this + 104, a2 + 13, 0, *(a2 + 28));
  *(this + 15) = 0;
  *(this + 16) = 0;
  DgnArray<EnergyInfo>::copyArraySlice(this + 15, a2 + 15, 0, *(a2 + 32));
  *(this + 17) = 0;
  *(this + 18) = 0;
  DgnArray<PitchInfo>::copyArraySlice(this + 17, a2 + 17, 0, *(a2 + 36));
  *(this + 19) = 0;
  *(this + 20) = 0;
  DgnArray<FrameTypeInfo>::copyArraySlice(this + 19, a2 + 19, 0, *(a2 + 40));
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  v4 = *(a2 + 54);
  *(this + 15) = 0u;
  *(this + 54) = v4;
  *(this + 14) = 0u;
  *(this + 16) = 0u;
  DgnArray<DgnPrimArray<double>>::copyArraySlice(this + 256, a2 + 32, 0, *(a2 + 66));
  *(this + 34) = 0;
  *(this + 35) = 0;
  DgnArray<DgnPrimArray<double>>::copyArraySlice(this + 272, a2 + 34, 0, *(a2 + 70));
  *(this + 36) = 0;
  *(this + 37) = 0;
  DgnArray<DgnPrimArray<double>>::copyArraySlice(this + 288, a2 + 36, 0, *(a2 + 74));
  *(this + 38) = 0;
  *(this + 39) = 0;
  DgnPrimArray<unsigned short>::copyArraySlice(this + 38, a2 + 38, 0, *(a2 + 78));
  *(this + 40) = *(a2 + 40);
  *(this + 82) = *(a2 + 82);
  *(this + 42) = *(a2 + 42);
  *(this + 86) = *(a2 + 86);
  v5 = *(a2 + 23);
  *(this + 22) = *(a2 + 22);
  *(this + 23) = v5;
  v6 = *(a2 + 25);
  *(this + 24) = *(a2 + 24);
  *(this + 25) = v6;
  *(this + 416) = *(a2 + 416);
  *(this + 417) = *(a2 + 417);
  *(this + 418) = *(a2 + 418);
  *(this + 419) = 1;
  *(this + 420) = 0;
  v7 = *(a2 + 54);
  *(this + 53) = a2;
  *(this + 54) = v7;
  *(a2 + 419) = 1;
  if (*(a2 + 58))
  {
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 28) + 8 * v8);
      v10 = MemChunkAlloc(0x40uLL, 0);
      WaveData::WaveData(v10, v9);
      v11 = *(this + 58);
      if (v11 == *(this + 59))
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 224, 1, 1);
        v11 = *(this + 58);
      }

      *(*(this + 28) + 8 * v11) = v10;
      *(this + 58) = v11 + 1;
      ++v8;
    }

    while (v8 < *(a2 + 58));
  }

  if (*(a2 + 62))
  {
    v12 = 0;
    do
    {
      v13 = *(*(a2 + 30) + 8 * v12);
      v14 = MemChunkAlloc(0x40uLL, 0);
      WaveData::WaveData(v14, v13);
      v15 = *(this + 62);
      if (v15 == *(this + 63))
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 240, 1, 1);
        v15 = *(this + 62);
      }

      *(*(this + 30) + 8 * v15) = v14;
      *(this + 62) = v15 + 1;
      ++v12;
    }

    while (v12 < *(a2 + 62));
  }
}

void sub_262760BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v12 + 288);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v12 + 272);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v15 + 16);
  DgnIOwnArray<WaveData *>::releaseAll(v15);
  DgnIOwnArray<WaveData *>::releaseAll(v14);
  DgnIOwnArray<SynchronizedArray<DgnPrimArray<unsigned char>> *>::releaseAll(v13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a10);
  PerFrameUttInfo::~PerFrameUttInfo(v11);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v10);
  _Unwind_Resume(a1);
}

uint64_t *Utterance::syncAfterRecognitionDone(uint64_t *this)
{
  v1 = this;
  *(this[53] + 419) = 0;
  if (*(this + 44))
  {
    v2 = 0;
    do
    {
      v3 = MemChunkAlloc(0x18uLL, 0);
      v3[1] = 0;
      v3[2] = 0;
      *v3 = 0;
      *(v3 + 1) = -16;
      SynchronizedArray<DgnPrimArray<unsigned char>>::update(v3, *(*(v1 + 200) + 8 * v2));
      this = Utterance::setTransformedFrames(*(v1 + 424), *(*(v1 + 168) + 2 * v2), *(*(v1 + 184) + 4 * v2), v3);
      ++v2;
    }

    while (v2 < *(v1 + 176));
  }

  *(v1 + 419) = 0;
  return this;
}

uint64_t UttFeatureArraySynchronizedArray::update(uint64_t this, const Utterance *a2)
{
  v3 = this;
  v4 = *(a2 + 28);
  v6 = *(this + 16);
  v5 = *(this + 20);
  v7 = v6;
  if (v4 > v5)
  {
    this = DgnArray<DgnPrimArray<double>>::reallocElts(this + 8, v4 - v5, 0);
    v7 = *(v3 + 16);
  }

  if (v7 <= v4)
  {
    if (v7 < v4)
    {
      v10 = 16 * v7;
      v11 = v4 - v7;
      do
      {
        v12 = (*(v3 + 8) + v10);
        *v12 = 0;
        v12[1] = 0;
        v10 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v7 > v4)
  {
    v8 = v7;
    v9 = 16 * v7 - 16;
    do
    {
      --v8;
      this = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v3 + 8) + v9);
      v9 -= 16;
    }

    while (v8 > v4);
  }

  *(v3 + 16) = v4;
  if (v6 < v4)
  {
    do
    {
      v13 = *(a2 + 13) + 16 * v6;
      this = DgnPrimArray<unsigned char>::copyArraySlice((*(v3 + 8) + 16 * v6++), v13, 0, *(v13 + 8));
    }

    while (v4 != v6);
  }

  if ((*(a2 + 416) & 1) == 0)
  {
    *v3 = 1;
  }

  return this;
}

void DgnArray<FrameTypeInfo>::copyArraySlice(uint64_t *a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  *(a1 + 2) = 0;
  v8 = *(a1 + 3);
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
    DgnPrimArray<unsigned int>::reallocElts(a1, a4 - v8, 0);
    v9 = *(a1 + 2);
  }

  v11 = *a2;
  v12 = *a1;
  v13 = a4;
  v10 = v9;
  do
  {
    *(v12 + 4 * v10++) = *(v11 + 4 * a3++);
    --v13;
  }

  while (v13);
LABEL_6:
  if (v10 < a4)
  {
    bzero((*a1 + 4 * v10), 4 * (~v10 + a4) + 4);
  }

  *(a1 + 2) = a4;
}

void *DgnIOwnArray<SynchronizedArray<DgnPrimArray<unsigned char>> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<UttFeatureArraySynchronizedArray>(*(*a1 + v3));
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

void SigProcDescriptor::SigProcDescriptor(SigProcDescriptor *this)
{
  FeatureGeneratorSpec::FeatureGeneratorSpec(this);
  v2[10] = 0;
  v2[11] = 0;
  CharInfo::CharInfo((v2 + 12));
  *(this + 13) = 0;
  *(this + 14) = 0;
  FeatureSelectorSpec::FeatureSelectorSpec((this + 120));
  *(this + 9) = 0u;
  *(this + 44) = 0;
  *(this + 10) = 0u;
  ChanStatsSpec::ChanStatsSpec((this + 184));
  *(this + 332) = 0;
}

void sub_262760FB4(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  BitArray::~BitArray((v1 + 128));
  DgnArray<FeatureFilterSpec>::releaseAll(v3);
  DgnArray<FeatureFilterSpec>::releaseAll(v2);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void SigProcDescriptor::~SigProcDescriptor(SigProcDescriptor *this)
{
  ChanStatsSpec::~ChanStatsSpec((this + 184));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 144);
  BitArray::~BitArray((this + 128));
  DgnArray<FeatureFilterSpec>::releaseAll(this + 104);
  DgnArray<FeatureFilterSpec>::releaseAll(this + 80);

  MrecInitModule_sdpres_sdapi();
}

uint64_t sizeObject<FeatureFilterSpec>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  FeatureFilterSpec::FeatureFilterSpec(v11);
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
        v9 = 40 * v7 - 40;
        do
        {
          v5 += sizeObject(*a1 + v9, v2);
          --v8;
          v9 -= 40;
        }

        while (v8 > 1);
      }

      if (!v2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v12);
  return v5;
}

void sub_262761230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void SigProcDescriptor::saveSPD(SigProcDescriptor *this, DFile *a2, int a3)
{
  v6 = *(this + 22);
  v7 = *(this + 28);
  v8 = *(this + 1);
  v9 = *(this + 31);
  DgnTextFileWriter::DgnTextFileWriter(v94);
  DgnTextFileWriter::openDgnTextFileWriter(v94, a2, 87, a3);
  v92 = 0;
  v93 = 0;
  DgnTextFile::legalDgnTextFileVersions(v94, sSPD_Versions, &v92);
  DgnTextFileWriter::setFileType(v94, "SignalProcessorDescriptor", (v92 + 8 * (v93 - 1)));
  DgnString::DgnString(&v90);
  if ((*this - 1) < 4u)
  {
    DgnString::operator=(&v90, off_279B3F880[(*this - 1)]);
  }

  if (v91)
  {
    v10 = v90;
  }

  else
  {
    v10 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v94, "BasicFeatureType", v10);
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "MelLowFreqCutoff", *(this + 8));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "MelHighFreqCutoff", *(this + 9));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "MelCenterFreqLinearSpacing", *(this + 10));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "MelCenterFreqLinearSpacingHighCutoff", *(this + 11));
  DgnTextFileWriter::setHeaderFieldReal(v94, "MelCenterFreqGeometricScale", *(this + 6));
  v11 = *this;
  if (v11 != 3)
  {
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    DgnTextFileWriter::setHeaderFieldReal(v94, "PLPExponent", *(this + 8));
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "LPCOrder", *(this + 18));
LABEL_10:
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "SampleRateMin", *(this + 2));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "SampleRateMax", *(this + 3));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "FrameLengthInMicrosec", *(this + 83));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "AnalysisWindowLengthInMicrosec", *(this + 84));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "NumberOfSpectralWarpChoices", *(this + 80));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "BasicFeatureDim", *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "AntialiasFeatureFilters", v6);
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "AntialiasDecimationFactor", *(this + 24));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "BasicFeatureFilters", v7);
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "FinalFeatureDim", v9);
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "ModelFeatureDim", *(this + 82));
  DgnTextFileWriter::setHeaderFieldUnsigned(v94, "FeatureScaleAndOffsetIntScale", 1 << *(this + 44));
  DgnTextFileWriter::setHeaderFieldReal(v94, "PreemphCoeff", *(this + 3));
  v12 = *(this + 92);
  if (v12 == 1)
  {
    v13 = "NoMeansNorm";
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_15;
    }

    v13 = "ChannelMeansSubtraction";
  }

  DgnString::operator=(&v90, v13);
LABEL_15:
  if (v91)
  {
    v14 = v90;
  }

  else
  {
    v14 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v94, "ChannelMeansNormalizationType", v14);
  v15 = *(this + 104);
  if (v15 == 1)
  {
    v16 = "NoVarianceNorm";
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_23;
    }

    v16 = "ChannelVarianceNorm";
  }

  DgnString::operator=(&v90, v16);
LABEL_23:
  if (v91)
  {
    v17 = v90;
  }

  else
  {
    v17 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v94, "ChannelVarianceNormalizationType", v17);
  if (*(this + 132) - 1 <= 2)
  {
    DgnString::operator=(&v90, off_279B3F8A0[(*(this + 132) - 1)]);
  }

  if (v91)
  {
    v18 = v90;
  }

  else
  {
    v18 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v94, "CDFNormalizationType", v18);
  if (*(this + 132) != 1)
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v94, "CDFNormalizationSum", *(this + 72));
  }

  v19 = *(this + 146);
  if (v19 == 1)
  {
    v20 = "NoMaximumNorm";
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_38;
    }

    v20 = "C0MaximumNorm";
  }

  DgnString::operator=(&v90, v20);
LABEL_38:
  if (v91)
  {
    v21 = v90;
  }

  else
  {
    v21 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v94, "ChannelMaxNormalizationType", v21);
  v22 = *(this + 28);
  if (v22 == 1)
  {
    v23 = "SplitRadixFloat";
  }

  else
  {
    if (v22 != 2)
    {
      goto LABEL_46;
    }

    v23 = "SplitRadixInteger";
  }

  DgnString::operator=(&v90, v23);
LABEL_46:
  if (v91)
  {
    v24 = v90;
  }

  else
  {
    v24 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v94, "FourierTransformType", v24);
  *v88 = 0;
  v89 = 0;
  v86 = 0;
  HIDWORD(v89) = realloc_array(0, &v86, 0x40uLL, 0, 0, 1) >> 4;
  *v88 = v86;
  v25 = v89;
  if (v89 <= 4)
  {
    if (v89 != 4)
    {
      v27 = v89 + 1;
      v28 = 16 * v89;
      do
      {
        DgnString::DgnString((*v88 + v28));
        v28 += 16;
      }

      while (v27++ != 4);
    }
  }

  else if (v89 >= 5)
  {
    v26 = 16 * v89 - 16;
    do
    {
      --v25;
      DgnString::~DgnString(*v88 + v26);
      v26 -= 16;
    }

    while (v25 > 4);
  }

  v85 = v6;
  v86 = 0;
  LODWORD(v89) = 4;
  v87 = 0;
  v95 = 0;
  v30 = realloc_array(0, &v95, 0x10uLL, 0, 0, 1);
  v83 = v8;
  v86 = v95;
  LODWORD(v87) = 4;
  HIDWORD(v87) = v30 >> 2;
  DgnString::operator=(*v88, "Type");
  *v86 = 0;
  DgnString::operator=((*v88 + 16), "UnsVal1");
  *(v86 + 1) = 3;
  DgnString::operator=((*v88 + 32), "IntVal1");
  *(v86 + 2) = 1;
  DgnString::operator=((*v88 + 48), "IntVal2");
  *(v86 + 3) = 1;
  DgnTextFileWriter::setLineFieldFormat(v94, &v86, v88);
  v84 = v7;
  if (v7)
  {
    v31 = *(this + 80);
    if (v31)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = *(this + 39);
        DgnTextFileWriter::setLineFieldValue(v94, 0, "WarpChoiceInfo");
        DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, v33);
        DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(v34 + v32));
        DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, *(v34 + v32 + 16));
        DgnTextFileWriter::writeNextLine(v94);
        ++v33;
        v32 += 24;
      }

      while (24 * v31 != v32);
      for (i = 0; i != v31; ++i)
      {
        v36 = *(this + 39) + 24 * i;
        if (*(v36 + 16))
        {
          v37 = 0;
          v38 = 0;
          do
          {
            v39 = (*(v36 + 8) + v37);
            v41 = *v39;
            v40 = v39[1];
            DgnTextFileWriter::setLineFieldValue(v94, 0, "SpectralWarpChoiceCoordinates");
            DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, i);
            DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, v41);
            DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, v40);
            DgnTextFileWriter::writeNextLine(v94);
            ++v38;
            v37 += 8;
          }

          while (v38 < *(v36 + 16));
        }
      }
    }
  }

  if (v85)
  {
    v42 = 0;
    v43 = 0;
    v44 = 40 * v85;
    do
    {
      v45 = *(this + 10);
      DgnTextFileWriter::setLineFieldValue(v94, 0, "AntialiasFeatureFilterInput");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, v43);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(v45 + v42 + 12) / *(v45 + v42));
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, 0);
      DgnTextFileWriter::writeNextLine(v94);
      ++v43;
      v42 += 40;
    }

    while (v44 != v42);
    v46 = 0;
    v47 = 32;
    do
    {
      v48 = *(this + 10);
      DgnTextFileWriter::setLineFieldValue(v94, 0, "AntialiasFeatureFilterInverseScale");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, v46);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(v48 + v47));
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, 0);
      DgnTextFileWriter::writeNextLine(v94);
      ++v46;
      v47 += 40;
    }

    while (v85 != v46);
    v49 = 0;
    v50 = 0;
    do
    {
      v51 = *(this + 10) + v49;
      v52 = *(v51 + 4);
      v53 = *(v51 + 8);
      DgnTextFileWriter::setLineFieldValue(v94, 0, "AntialiasFeatureFilterRange");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, v50);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, -v53);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, v52 + ~v53);
      DgnTextFileWriter::writeNextLine(v94);
      v49 += 40;
      ++v50;
    }

    while (v44 != v49);
    for (j = 0; j != v85; ++j)
    {
      v55 = *(this + 10) + 40 * j;
      if (*(v55 + 4))
      {
        v56 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldValue(v94, 0, "AntialiasFeatureFilterCoeff");
          DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, j);
          DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, v56 - *(v55 + 8));
          DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, *(*(v55 + 16) + 4 * v56));
          DgnTextFileWriter::writeNextLine(v94);
          ++v56;
        }

        while (v56 < *(v55 + 4));
      }
    }
  }

  if (v84)
  {
    v57 = 0;
    v58 = 0;
    v59 = 40 * v84;
    do
    {
      v60 = *(this + 13);
      DgnTextFileWriter::setLineFieldValue(v94, 0, "BasicFeatureFilterInput");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, v58);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(v60 + v57 + 12) / *(v60 + v57));
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, 0);
      DgnTextFileWriter::writeNextLine(v94);
      ++v58;
      v57 += 40;
    }

    while (v59 != v57);
    v61 = 0;
    v62 = 32;
    do
    {
      v63 = *(this + 13);
      DgnTextFileWriter::setLineFieldValue(v94, 0, "BasicFeatureFilterInverseScale");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, v61);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(v63 + v62));
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, 0);
      DgnTextFileWriter::writeNextLine(v94);
      ++v61;
      v62 += 40;
    }

    while (v84 != v61);
    v64 = 0;
    v65 = 0;
    do
    {
      v66 = *(this + 13) + v64;
      v67 = *(v66 + 4);
      v68 = *(v66 + 8);
      DgnTextFileWriter::setLineFieldValue(v94, 0, "BasicFeatureFilterRange");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, v65);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, -v68);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, v67 + ~v68);
      DgnTextFileWriter::writeNextLine(v94);
      v64 += 40;
      ++v65;
    }

    while (v59 != v64);
    for (k = 0; k != v84; ++k)
    {
      v70 = *(this + 13) + 40 * k;
      if (*(v70 + 4))
      {
        v71 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldValue(v94, 0, "BasicFeatureFilterCoeff");
          DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, k);
          DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, v71 - *(v70 + 8));
          DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, *(*(v70 + 16) + 4 * v71));
          DgnTextFileWriter::writeNextLine(v94);
          ++v71;
        }

        while (v71 < *(v70 + 4));
      }
    }
  }

  v72 = (v83 + v83 * v84);
  if (v72)
  {
    for (m = 0; m != v72; ++m)
    {
      DgnTextFileWriter::setLineFieldValue(v94, 0, "FeatureScaleAndOffset");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, m);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(*(this + 18) + 4 * m));
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, *(*(this + 20) + 4 * m));
      DgnTextFileWriter::writeNextLine(v94);
    }
  }

  if (*(this + 146) == 2)
  {
    v74 = 0;
    v75 = 1;
    do
    {
      v76 = v75;
      DgnTextFileWriter::setLineFieldValue(v94, 0, "ChannelMaxNormInitialCoordinates");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, v74);
      if (v76)
      {
        DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(this + 74));
        v77 = (this + 300);
      }

      else
      {
        DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(this + 76));
        v77 = (this + 308);
      }

      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, *v77);
      DgnTextFileWriter::writeNextLine(v94);
      v75 = 0;
      v74 = 1;
    }

    while ((v76 & 1) != 0);
  }

  if (*(this + 92) != 1 && v72)
  {
    for (n = 0; n != v72; ++n)
    {
      DgnTextFileWriter::setLineFieldValue(v94, 0, "ChannelMeansTarget");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, n);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(*(this + 24) + n));
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, 0);
      DgnTextFileWriter::writeNextLine(v94);
    }
  }

  if (*(this + 104) != 1 && v72)
  {
    for (ii = 0; ii != v72; ++ii)
    {
      DgnTextFileWriter::setLineFieldValue(v94, 0, "ChannelVarianceTarget");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, ii);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(*(this + 27) + ii));
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, 0);
      DgnTextFileWriter::writeNextLine(v94);
    }

    for (jj = 0; jj != v72; ++jj)
    {
      DgnTextFileWriter::setLineFieldValue(v94, 0, "ChannelVarianceRange");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, jj);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(*(this + 29) + jj));
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, *(*(this + 31) + jj));
      DgnTextFileWriter::writeNextLine(v94);
    }
  }

  if (*(this + 132) != 1)
  {
    for (kk = 0; kk != 256; ++kk)
    {
      DgnTextFileWriter::setLineFieldValue(v94, 0, "CDFNormalizationTargetHistogram");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, kk);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, *(*(this + 34) + 4 * kk));
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, 0);
      DgnTextFileWriter::writeNextLine(v94);
    }
  }

  if (v72)
  {
    v82 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v94, 0, "FeatureSelector");
      DgnTextFileWriter::setLineFieldUnsignedValue(v94, 1u, v82);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 2u, (*(*(this + 16) + 4 * (v82 >> 5)) >> v82) & 1);
      DgnTextFileWriter::setLineFieldIntegerValue(v94, 3u, 0);
      DgnTextFileWriter::writeNextLine(v94);
      ++v82;
    }

    while (v72 != v82);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v86);
  DgnArray<DgnString>::releaseAll(v88);
  DgnString::~DgnString(&v90);
  DgnIArray<Utterance *>::~DgnIArray(&v92);
  DgnTextFileWriter::~DgnTextFileWriter(v94);
}

void sub_2627620A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va3, a11);
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  va_copy(va3, va2);
  v18 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnString::~DgnString(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void SigProcDescriptor::saveSigProcDescriptor(SigProcDescriptor *this, DFile *a2, DFileChecksums *a3, int a4, uint64_t a5)
{
  if (a4)
  {

    SigProcDescriptor::saveSPD(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x56u, a5, "MRSPD!?", 24, 6);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObject<FeatureFilterSpec>(v8, this + 80, &v10);
    writeObject(v8, this + 24, &v10);
    writeObject<FeatureFilterSpec>(v8, this + 104, &v10);
    writeObject(v8, (this + 120), &v10);
    writeObject(v8, (this + 144), &v10);
    writeObject(v8, (this + 184), &v10);
    writeObject(v8, this + 82, &v10);
    writeObject(v8, this + 83, &v10);
    writeObject(v8, this + 84, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 86, v10);
    DgnDelete<DgnStream>(v8);
  }
}

uint64_t writeObject<FeatureFilterSpec>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, (*a2 + v7), a3);
      ++v8;
      v7 += 40;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void SigProcDescriptor::printSize(SigProcDescriptor *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1365);
  if (v62)
  {
    v13 = v61;
  }

  else
  {
    v13 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288CBBA, a3, &unk_26288CBBA, v13);
  DgnString::~DgnString(&v61);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288CBBA);
  v15 = sizeObject(this, 0);
  v16 = sizeObject(this, 1);
  v17 = sizeObject(this, 3);
  v18 = (a3 + 1);
  v60 = a3;
  v19 = (34 - a3);
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367);
  if (v62)
  {
    v21 = v61;
  }

  else
  {
    v21 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v18, &unk_26288CBBA, v19, v19, v21, v15, v16, v17);
  DgnString::~DgnString(&v61);
  *a4 += v15;
  *a5 += v16;
  *a6 += v17;
  v22 = sizeObject<FeatureFilterSpec>(this + 80, 0);
  v23 = sizeObject<FeatureFilterSpec>(this + 80, 1);
  v24 = sizeObject<FeatureFilterSpec>(this + 80, 3);
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367);
  if (v62)
  {
    v26 = v61;
  }

  else
  {
    v26 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v18, &unk_26288CBBA, v19, v19, v26, v22, v23, v24);
  DgnString::~DgnString(&v61);
  *a4 += v22;
  *a5 += v23;
  *a6 += v24;
  v27 = sizeObject(this + 96, 0);
  v28 = sizeObject(this + 96, 1);
  v29 = sizeObject(this + 96, 3);
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367);
  if (v62)
  {
    v31 = v61;
  }

  else
  {
    v31 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v18, &unk_26288CBBA, v19, v19, v31, v27, v28, v29);
  DgnString::~DgnString(&v61);
  *a4 += v27;
  *a5 += v28;
  *a6 += v29;
  v32 = sizeObject<FeatureFilterSpec>(this + 104, 0);
  v33 = sizeObject<FeatureFilterSpec>(this + 104, 1);
  v34 = sizeObject<FeatureFilterSpec>(this + 104, 3);
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367);
  if (v62)
  {
    v36 = v61;
  }

  else
  {
    v36 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v18, &unk_26288CBBA, v19, v19, v36, v32, v33, v34);
  DgnString::~DgnString(&v61);
  *a4 += v32;
  *a5 += v33;
  *a6 += v34;
  v37 = sizeObject(this + 120, 0);
  v38 = sizeObject(this + 120, 1);
  v39 = sizeObject(this + 120, 3);
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367);
  if (v62)
  {
    v41 = v61;
  }

  else
  {
    v41 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v18, &unk_26288CBBA, v19, v19, v41, v37, v38, v39);
  DgnString::~DgnString(&v61);
  *a4 += v37;
  *a5 += v38;
  *a6 += v39;
  v42 = sizeObject(this + 144, 0);
  v43 = sizeObject(this + 144, 1);
  v44 = sizeObject(this + 144, 3);
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367);
  if (v62)
  {
    v46 = v61;
  }

  else
  {
    v46 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v18, &unk_26288CBBA, v19, v19, v46, v42, v43, v44);
  DgnString::~DgnString(&v61);
  *a4 += v42;
  *a5 += v43;
  *a6 += v44;
  v47 = sizeObject(this + 184, 0);
  v48 = sizeObject(this + 184, 1);
  v49 = sizeObject(this + 184, 3);
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367);
  if (v62)
  {
    v51 = v61;
  }

  else
  {
    v51 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v18, &unk_26288CBBA, v19, v19, v51, v47, v48, v49);
  DgnString::~DgnString(&v61);
  *a4 += v47;
  *a5 += v48;
  *a6 += v49;
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367);
  if (v62)
  {
    v53 = v61;
  }

  else
  {
    v53 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v18, &unk_26288CBBA, v19, v19, v53, 4, 4, 0);
  DgnString::~DgnString(&v61);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367);
  if (v62)
  {
    v55 = v61;
  }

  else
  {
    v55 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v18, &unk_26288CBBA, v19, v19, v55, 4, 4, 0);
  DgnString::~DgnString(&v61);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367);
  if (v62)
  {
    v57 = v61;
  }

  else
  {
    v57 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v18, &unk_26288CBBA, v19, v19, v57, 4, 4, 0);
  DgnString::~DgnString(&v61);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1368);
  if (v62)
  {
    v59 = v61;
  }

  else
  {
    v59 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v60, &unk_26288CBBA, (35 - v60), (35 - v60), v59, *a4, *a5, *a6);
  DgnString::~DgnString(&v61);
}

void sub_2627629F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *DgnArray<FeatureFilterSpec>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 40 * v2 - 24;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v3);
      v3 -= 40;
    }

    while (v3 != -24);
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

uint64_t DgnSharedMemStream::DgnSharedMemStream(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v8 = DgnStream::DgnStream(a1, a4, 0);
  *v8 = &unk_2875268E0;
  *(v8 + 56) = a3;
  *(v8 + 64) = a2;
  *(v8 + 72) = 0;
  FileSpec::setEmpty((v8 + 16));
  DgnSharedMemSet::getMappedDSMName(*(a1 + 64), a3, &v13);
  if (v14)
  {
    v9 = v13;
  }

  else
  {
    v9 = byte_26288CBFD;
  }

  FileSpec::fillFromName((a1 + 16), v9);
  DgnString::~DgnString(&v13);
  if (v4 == 2)
  {
    if (*(a1 + 24))
    {
      v10 = *(a1 + 16);
    }

    else
    {
      v10 = byte_26288CBFD;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 58, "dfutil/dsmstream", 2, "%.500s", v10);
  }

  if (v4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  DgnSharedMemStream::openDSM(a1, v11, -1);
  return a1;
}

char *DgnSharedMemStream::openDSM(uint64_t a1, int a2, uint64_t a3)
{
  v8 = a3;
  if (*(a1 + 72))
  {
    if (*(a1 + 24))
    {
      v5 = *(a1 + 16);
    }

    else
    {
      v5 = byte_26288CBFD;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 79, "dfutil/dsmstream", 6, "%.500s", v5);
  }

  result = DgnSharedMemSet::openDSMWithSizeEx(*(a1 + 64), *(a1 + 56), a2, &v8);
  if (!a2)
  {
    *(a1 + 72) = -1;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    goto LABEL_10;
  }

  *(a1 + 72) = result;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  if ((a2 & 0xFFFFFFFE) != 2)
  {
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:
  *(a1 + 8) = v7;
  return result;
}

void DgnSharedMemStream::DgnSharedMemStream(DgnSharedMemStream *this, DgnSharedMemSet *a2, unsigned int a3)
{
  v6 = DgnStream::DgnStream(this, 0, 0);
  *v6 = &unk_2875268E0;
  *(v6 + 56) = a3;
  *(v6 + 64) = a2;
  *(v6 + 72) = 0;
  FileSpec::setEmpty((v6 + 16));
  DgnSharedMemSet::getMappedDSMName(*(this + 8), a3, &v8);
  if (v9)
  {
    v7 = v8;
  }

  else
  {
    v7 = byte_26288CBFD;
  }

  FileSpec::fillFromName((this + 16), v7);
  DgnString::~DgnString(&v8);
}

void sub_262762D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  DgnString::~DgnString(&a9);
  DgnStream::~DgnStream(v9);
  _Unwind_Resume(a1);
}

uint64_t *DgnSharedMemStream::closeDSM(uint64_t *this)
{
  v1 = this;
  if (this[9])
  {
    this = DgnSharedMemSet::closeDSMEx(this[8], *(this + 14));
  }

  v1[9] = 0;
  return this;
}

void DgnSharedMemStream::~DgnSharedMemStream(DgnSharedMemStream *this)
{
  *this = &unk_2875268E0;
  if (*(this + 9))
  {
    DgnSharedMemSet::closeDSMEx(*(this + 8), *(this + 14));
  }

  DgnStream::~DgnStream(this);
}

{
  DgnSharedMemStream::~DgnSharedMemStream(this);

  JUMPOUT(0x26672B1B0);
}

void DgnSharedMemStream::seekFromBeg(DgnSharedMemStream *this, unint64_t a2)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 137, "dfutil/dsmstream", 1, "%s", byte_26288CBFD);
  }

  v4 = *(this + 5);
  if (v4 < a2)
  {
    if (*(this + 9) == -1)
    {
      *(this + 5) = a2;
    }

    else
    {
      if (*(this + 6))
      {
        v5 = *(this + 2);
      }

      else
      {
        v5 = byte_26288CBFD;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 148, "dfutil/dsmstream", 3, "%.500s %llu %llu", v5, a2, v4);
    }
  }

  *(this + 6) = a2;
}

void DgnSharedMemStream::seekToEnd(DgnSharedMemStream *this)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 157, "dfutil/dsmstream", 1, "%s", byte_26288CBFD);
  }

  *(this + 6) = *(this + 5);
}

uint64_t DgnSharedMemStream::tell(DgnSharedMemStream *this)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 166, "dfutil/dsmstream", 1, "%s", byte_26288CBFD);
  }

  return *(this + 6);
}

unint64_t DgnSharedMemStream::tell32(DgnSharedMemStream *this)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 173, "dfutil/dsmstream", 1, "%s", byte_26288CBFD);
  }

  v2 = *(this + 6);
  if (HIDWORD(v2))
  {
    if (*(this + 6))
    {
      v3 = *(this + 2);
    }

    else
    {
      v3 = byte_26288CBFD;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 176, "dfutil/dsmstream", 5, "%.500s", v3);
  }

  return v2;
}

BOOL DgnSharedMemStream::eof(DgnSharedMemStream *this)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 183, "dfutil/dsmstream", 1, "%s", byte_26288CBFD);
  }

  return *(this + 6) == *(this + 5);
}

uint64_t DgnSharedMemStream::peekForChar(DgnSharedMemStream *this)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 198, "dfutil/dsmstream", 1, "%s", byte_26288CBFD);
  }

  v2 = *(this + 6);
  if (v2 >= *(this + 5))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(this + 9) + v2);
  }
}

size_t DgnSharedMemStream::readWithMode(uint64_t a1, void *__dst, size_t __n, int a4)
{
  if (!*(a1 + 72))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 213, "dfutil/dsmstream", 1, "%s", byte_26288CBFD);
  }

  if (__n)
  {
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = v9 - v8;
    if (v9 - v8 >= __n)
    {
      v10 = __n;
    }

    else
    {
      if (a4 == 1)
      {
        if (*(a1 + 24))
        {
          v11 = *(a1 + 16);
        }

        else
        {
          v11 = byte_26288CBFD;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 226, "dfutil/dsmstream", 3, "%.500s %llu %llu", v11, v8 + __n, v9);
        LODWORD(v8) = *(a1 + 48);
      }

      __n = v10;
    }

    memcpy(__dst, (*(a1 + 72) + v8), v10);
    *(a1 + 48) += v10;
  }

  return __n;
}

void DgnSharedMemStream::writeBytes(DgnSharedMemStream *this, const char *__src, size_t __n)
{
  v3 = __n;
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 239, "dfutil/dsmstream", 1, "%s", byte_26288CBFD);
  }

  if (!*(this + 2))
  {
    if (*(this + 6))
    {
      v6 = *(this + 2);
    }

    else
    {
      v6 = byte_26288CBFD;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 241, "dfutil/dsmstream", 4, "%.500s", v6);
  }

  if (v3)
  {
    v7 = *(this + 9);
    if (v7 == -1)
    {
      v13 = *(this + 5);
      v14 = *(this + 6) + v3;
      *(this + 6) = v14;
      if (v13 < v14)
      {
        *(this + 5) = v14;
      }
    }

    else
    {
      v8 = v3;
      v10 = *(this + 5);
      v9 = *(this + 6);
      v11 = v9 + v3;
      if (v11 > v10)
      {
        if (*(this + 6))
        {
          v12 = *(this + 2);
        }

        else
        {
          v12 = byte_26288CBFD;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 260, "dfutil/dsmstream", 3, "%.500s %llu %llu", v12, v11, v10);
        v7 = *(this + 9);
        LODWORD(v9) = *(this + 12);
      }

      memcpy((v7 + v9), __src, v8);
      *(this + 6) = v11;
    }
  }
}

uint64_t DgnSharedMemStream::writeSharedBytes(DgnSharedMemStream *this, const char *a2, uint64_t a3, __n128 a4)
{
  if (!*(this + 9))
  {
    a4.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 272, "dfutil/dsmstream", 1, "%s", byte_26288CBFD);
  }

  if (*(this + 2))
  {
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    if (*(this + 6))
    {
      v7 = *(this + 2);
    }

    else
    {
      v7 = byte_26288CBFD;
    }

    a4.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 274, "dfutil/dsmstream", 4, "%.500s", v7);
    if (!a3)
    {
      return 0;
    }
  }

  v8 = *(this + 6) + 15;
  v9 = v8 & 0xFFFFFFFFFFFFFFF0;
  v10 = (a3 + 3) & 0xFFFFFFFC;
  v11 = *(this + 9);
  v12 = (v8 & 0xFFFFFFFFFFFFFFF0) + v10;
  if (v11 == -1)
  {
    *(this + 6) = v12;
    if (*(this + 5) >= v12)
    {
      return 0;
    }

    v15 = 0;
    *(this + 5) = v12;
  }

  else
  {
    v13 = *(this + 5);
    if (v12 > v13)
    {
      if (*(this + 6))
      {
        v14 = *(this + 2);
      }

      else
      {
        v14 = byte_26288CBFD;
      }

      a4.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 305, "dfutil/dsmstream", 3, "%.500s %llu %llu", v14, (v8 & 0xFFFFFFFFFFFFFFF0) + v10, v13);
      v11 = *(this + 9);
    }

    v15 = v11 + (v8 & 0xFFFFFFF0);
    *(this + 6) = v9;
    (*(*this + 80))(this, a2, a3, a4);
    if (v10 != a3)
    {
      v16 = a3 - v10;
      do
      {
        v17 = *(this + 9);
        v18 = *(this + 6);
        *(this + 6) = v18 + 1;
        *(v17 + v18) = 0;
      }

      while (!__CFADD__(v16++, 1));
    }
  }

  return v15;
}

uint64_t DgnSharedMemStream::readSharedBytes(DgnSharedMemStream *this, int a2)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 328, "dfutil/dsmstream", 1, "%s", byte_26288CBFD);
    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_3:
  v4 = *(this + 5);
  v5 = *(this + 6) + 15;
  v6 = *(this + 9) + (v5 & 0xFFFFFFF0);
  v7 = (v5 & 0xFFFFFFFFFFFFFFF0) + ((a2 + 3) & 0xFFFFFFFC);
  if (v7 > v4)
  {
    if (*(this + 6))
    {
      v8 = *(this + 2);
    }

    else
    {
      v8 = byte_26288CBFD;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 343, "dfutil/dsmstream", 3, "%.500s %llu %llu", v8, v7, v4);
  }

  *(this + 6) = v7;
  return v6;
}

void VocCompatData::loadVocCompatDataText(VocCompatData *this, FileSpec **a2)
{
  DgnTextFileParser::DgnTextFileParser(v13);
  DgnTextFileParser::openDgnTextFileParser(v13, a2, 104, 1);
  DgnTextFileParser::verifyMatchingFileType(v13, "VocCompatibility");
  v12[0] = 0;
  v12[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v13, sVCC_Versions, v12);
  DgnTextFileParser::verifyFileVersionInRange(v13, v12);
  FileVersion = DgnTextFile::getFileVersion(v13);
  v5 = FileVersion;
  v6 = HIDWORD(FileVersion);
  if (HIDWORD(FileVersion) == 7 && FileVersion == 19)
  {
    v8 = "TreeLMPerWordPenalty";
  }

  else
  {
    v8 = "PrefiltererPerWordPenalty";
  }

  DgnTextFile::getHeaderFieldUnsigned(v13, v8, this, 1, 0, 0x3E8u);
  DgnTextFile::getHeaderFieldUnsigned(v13, "LMScale", this + 1, 1, 1u, 0x100u);
  if (v5 == 19)
  {
    if (v6 != 7)
    {
      goto LABEL_16;
    }
  }

  else if (v5 != 22 || v6 != 8)
  {
    goto LABEL_16;
  }

  DgnString::DgnString(&v10);
  DgnTextFile::getHeaderField(v13, "VocName", &v10, 1);
  if (v11)
  {
    v9 = v10;
  }

  else
  {
    v9 = &unk_26288CC20;
  }

  VerifyVocName(v9, ".vcc");
  DgnString::~DgnString(&v10);
LABEL_16:
  DgnTextFile::getHeaderFieldUnsigned64(v13, "LMStaticizationNoGroupingSize", this + 1, 1, 0, 0xFFFFFFFFuLL);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v13);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v13, 0);
  DgnTextFileParser::verifyNoBodyLines(v13);
  DgnIArray<Utterance *>::~DgnIArray(v12);
  DgnTextFileParser::~DgnTextFileParser(v13);
}

void sub_2627638AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnTextFileParser::~DgnTextFileParser(va1);
  _Unwind_Resume(a1);
}

void VocCompatData::saveVocCompatDataText(VocCompatData *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v10);
  DgnTextFileWriter::openDgnTextFileWriter(v10, a2, 104, a3);
  v8 = 0;
  v9 = 0;
  DgnTextFile::legalDgnTextFileVersions(v10, sVCC_Versions, &v8);
  DgnTextFileWriter::setFileType(v10, "VocCompatibility", (v8 + 8 * (v9 - 1)));
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  DgnTextFileWriter::setLineFieldFormat(v10, v7, v6);
  DgnTextFileWriter::setHeaderFieldUnsigned(v10, "PrefiltererPerWordPenalty", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v10, "LMScale", *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v10, "LMStaticizationNoGroupingSize", *(this + 1));
  DgnArray<DgnString>::releaseAll(v6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v7);
  DgnIArray<Utterance *>::~DgnIArray(&v8);
  DgnTextFileWriter::~DgnTextFileWriter(v10);
}

void sub_2627639EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  DgnTextFileWriter::~DgnTextFileWriter(va);
  _Unwind_Resume(a1);
}

void VocCompatData::loadVocCompatData(VocCompatData *this, FileSpec **a2, DFileChecksums *a3, int a4)
{
  if (DFile::subFileExists(a2, 0x68u))
  {

    VocCompatData::loadVocCompatDataText(this, a2);
  }

  else
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 209, "voc/vcc", 3, "%s", &unk_26288CC20);
    }

    v17 = 0;
    v8 = 1;
    v9 = OpenAndReadMrecHeader(a2, 0x67u, 1, "MRVCCD!?", &v17 + 1, &v17);
    v16 = 0;
    DgnString::DgnString(v15);
    v10 = HIDWORD(v17) == 18 && v17 == 1;
    v11 = v10;
    if (v10)
    {
      v12 = 18;
    }

    else
    {
      if (*(a2 + 6))
      {
        v13 = a2[2];
      }

      else
      {
        v13 = &unk_26288CC20;
      }

      MrecHeaderCheckVersions(v13, "MRVCCD!?", HIDWORD(v17), v17, 0x18u, 2u);
      v8 = v17;
      v12 = HIDWORD(v17);
    }

    MrecHeaderCheckLatestVersionIfShared(a2, "MRVCCD!?", v12, v8, 24, 2);
    readObject(v9, this, &v16);
    readObject(v9, this + 1, &v16);
    if (v11)
    {
      readObject(v9, v15, &v16);
    }

    readObject(v9, this + 1, &v16);
    readObjectChecksumAndVerify(v9, v16);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 103, v16);
    DgnDelete<DgnStream>(v9);
    DgnString::~DgnString(v15);
  }
}

void sub_262763C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void VocCompatData::saveVocCompatData(VocCompatData *this, DFile *a2, DFileChecksums *a3, int a4, uint64_t a5)
{
  if (a4)
  {

    VocCompatData::saveVocCompatDataText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x67u, a5, "MRVCCD!?", 24, 2);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObject(v8, this + 1, &v10);
    writeObject(v8, this + 1, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 103, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void VocCompatData::printSize(VocCompatData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v22, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 277);
  if (v23)
  {
    v12 = v22;
  }

  else
  {
    v12 = &unk_26288CC20;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &unk_26288CC20, a3, &unk_26288CC20, v12);
  DgnString::~DgnString(&v22);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &unk_26288CC20);
  getShipObjectSizeDescription(&v22, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 279);
  if (v23)
  {
    v15 = v22;
  }

  else
  {
    v15 = &unk_26288CC20;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v14, (a3 + 1), &unk_26288CC20, (34 - a3), (34 - a3), v15, 4, 4, 0);
  DgnString::~DgnString(&v22);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v22, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 279);
  if (v23)
  {
    v17 = v22;
  }

  else
  {
    v17 = &unk_26288CC20;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &unk_26288CC20, (34 - a3), (34 - a3), v17, 4, 4, 0);
  DgnString::~DgnString(&v22);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v22, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 279);
  if (v23)
  {
    v19 = v22;
  }

  else
  {
    v19 = &unk_26288CC20;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &unk_26288CC20, (34 - a3), (34 - a3), v19, 8, 8, 0);
  DgnString::~DgnString(&v22);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v22, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 281);
  if (v23)
  {
    v21 = v22;
  }

  else
  {
    v21 = &unk_26288CC20;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, a3, &unk_26288CC20, (35 - a3), (35 - a3), v21, *a4, *a5, *a6);
  DgnString::~DgnString(&v22);
}

void sub_262763F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

_DWORD *SvcCompatData::SvcCompatData(_DWORD *result, int a2, int a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

void (***SvcCompatData::loadSvcCompatData(SvcCompatData *this, const char **a2, DFileChecksums *a3))(void)
{
  v11 = 0;
  v12 = 0;
  v6 = OpenAndReadMrecHeader(a2, 0x51u, 0, "SCCBIN", &v12, &v11);
  if (*(a2 + 6))
  {
    v7 = a2[2];
  }

  else
  {
    v7 = &unk_26288CC20;
  }

  MrecHeaderCheckVersions(v7, "SCCBIN", v12, v11, 0x11u, 2u);
  MrecHeaderCheckLatestVersionIfShared(a2, "SCCBIN", v12, v11, 17, 2);
  v10 = 0;
  v13 = 0;
  readObject(v6, &v13, &v10);
  *this = v13;
  readObject(v6, this + 1, &v10);
  if (a3)
  {
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 81, v10);
  }

  return DgnDelete<DgnStream>(v6);
}

void (***SvcCompatData::saveSvcCompatData(SvcCompatData *this, DFile *a2, DFileChecksums *a3))(void)
{
  v6 = OpenAndWriteMrecHeader(a2, 0x51u, 0, "SCCBIN", 17, 2);
  v7 = *this;
  v10 = 0;
  v11 = v7;
  writeObject(v6, &v11, &v10);
  writeObject(v6, this + 1, &v10);
  if (a3)
  {
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 81, v10);
  }

  return DgnDelete<DgnStream>(v6);
}

void PrefiltererThreadWorker::printSize(PrefiltererThreadWorker *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 263);
  if (v66)
  {
    v13 = v65;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v65);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  v60 = a2;
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  v16 = (a3 + 1);
  v61 = a3;
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 265);
  if (v66)
  {
    v19 = v65;
  }

  else
  {
    v19 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, v16, &byte_262899963, v17, v17, v19, v15, v15, 0);
  DgnString::~DgnString(&v65);
  *a4 += v15;
  *a5 += v15;
  v20 = sizeObject(this + 264, 0);
  v21 = sizeObject(this + 264, 1);
  v22 = sizeObject(this + 264, 3);
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 266);
  if (v66)
  {
    v24 = v65;
  }

  else
  {
    v24 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v16, &byte_262899963, v17, v17, v24, v20, v21, v22);
  DgnString::~DgnString(&v65);
  *a4 += v20;
  *a5 += v21;
  *a6 += v22;
  v25 = sizeObject<DgnPrimArray<unsigned char>>(this + 360, 0) + 5;
  v26 = sizeObject<DgnPrimArray<unsigned char>>(this + 360, 1) + 5;
  v65 = 0;
  v66 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v65);
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 267);
  if (v66)
  {
    v28 = v65;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v16, &byte_262899963, v17, v17, v28, v25, v26, 0);
  DgnString::~DgnString(&v65);
  *a4 += v25;
  *a5 += v26;
  v29 = sizeObject<ScoreFixArray>(this + 384, 0) + 5;
  v30 = sizeObject<ScoreFixArray>(this + 384, 1) + 5;
  v65 = 0;
  LODWORD(v66) = 0;
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v65);
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 269);
  if (v66)
  {
    v32 = v65;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v16, &byte_262899963, v17, v17, v32, v29, v30, 0);
  DgnString::~DgnString(&v65);
  *a4 += v29;
  *a5 += v30;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 12;
  }

  else
  {
    v33 = 16;
  }

  v34 = *(this + 102);
  v35 = *(this + 103);
  v36 = v35 >= v34;
  v37 = v35 - v34;
  if (v36)
  {
    if (v34 > 0)
    {
      v38 = (v34 - 1) + v33 + 1;
    }

    else
    {
      v38 = v33;
    }

    v33 = v38 + v37;
    v34 = 0;
  }

  else
  {
    v38 = v33;
  }

  v39 = v34;
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 270);
  if (v66)
  {
    v41 = v65;
  }

  else
  {
    v41 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v16, &byte_262899963, v17, v17, v41, v33, v38, v39);
  DgnString::~DgnString(&v65);
  *a4 += v33;
  *a5 += v38;
  *a6 += v39;
  v42 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 8;
  }

  v43 = *(this + 106);
  if (v43 <= 0)
  {
    v44 = 0;
  }

  else
  {
    v44 = (2 * v43);
  }

  v45 = v42 + v44;
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 272);
  if (v66)
  {
    v47 = v65;
  }

  else
  {
    v47 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v16, &byte_262899963, v17, v17, v47, v45, v45, 0);
  DgnString::~DgnString(&v65);
  *a4 += v45;
  *a5 += v45;
  v48 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 8;
  }

  v49 = *(this + 110);
  if (v49 <= 0)
  {
    v50 = 0;
  }

  else
  {
    v50 = (2 * v49);
  }

  v51 = v48 + v50;
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 274);
  if (v66)
  {
    v53 = v65;
  }

  else
  {
    v53 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v16, &byte_262899963, v17, v17, v53, v51, v51, 0);
  DgnString::~DgnString(&v65);
  *a4 += v51;
  *a5 += v51;
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 275);
  if (v66)
  {
    v55 = v65;
  }

  else
  {
    v55 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v16, &byte_262899963, v17, v17, v55, 4, 4, 0);
  DgnString::~DgnString(&v65);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 276);
  if (v66)
  {
    v57 = v65;
  }

  else
  {
    v57 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v16, &byte_262899963, v17, v17, v57, 8, 8, 0);
  DgnString::~DgnString(&v65);
  *a4 += 8;
  *a5 += 8;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  DgnThreadWorker::printSize(this, v60, v16, &v64, &v62, &v63);
  *a4 += v64;
  *a5 += v62;
  *a6 += v63;
  getShipObjectSizeDescription(&v65, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 284);
  if (v66)
  {
    v59 = v65;
  }

  else
  {
    v59 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v61, &byte_262899963, (35 - v61), (35 - v61), v59, *a4, *a5, *a6);
  DgnString::~DgnString(&v65);
}

uint64_t PrefiltererThreadWorker::PrefiltererThreadWorker(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  DgnThreadWorker::DgnThreadWorker(a1, a2, a3, a4, a5);
  *v6 = &unk_287525200;
  ReturnListQueue::ReturnListQueue((v6 + 33), 0, 127);
  SynchronizedArray<DgnPrimArray<unsigned char>>::SynchronizedArray(a1 + 352);
  SynchronizedArray<ScoreFixArray>::SynchronizedArray(a1 + 376);
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 448) = 4294967280;
  *(a1 + 456) = 0;
  return a1;
}

void sub_2627648B0(_Unwind_Exception *a1)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 360);
  ReturnListQueue::~ReturnListQueue((v1 + 264));
  DgnThreadWorker::~DgnThreadWorker(v1);
  _Unwind_Resume(a1);
}

void PrefiltererThreadWorker::~PrefiltererThreadWorker(PrefiltererThreadWorker *this)
{
  *this = &unk_287525200;
  PrefiltererThreadWorker::reset(this);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 432);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 416);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 400);
  DgnArray<DgnVector>::releaseAll(this + 384);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 360);
  ReturnListQueue::~ReturnListQueue((this + 264));

  DgnThreadWorker::~DgnThreadWorker(this);
}

{
  PrefiltererThreadWorker::~PrefiltererThreadWorker(this);

  JUMPOUT(0x26672B1B0);
}

void *PrefiltererThreadWorker::reset(PrefiltererThreadWorker *this)
{
  *(this + 56) = 4294967280;
  *(this + 114) = 0;
  SynchronizedArray<DgnPrimArray<unsigned char>>::reset(this + 352);
  SynchronizedArray<ScoreFixArray>::reset(this + 376);
  result = ReturnListQueue::reset((this + 264));
  *(this + 102) = 0;
  return result;
}

uint64_t SynchronizedArray<ScoreFixArray>::reset(uint64_t result)
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
      result = DgnPrimFixArray<double>::~DgnPrimFixArray(*(v1 + 8) + v3);
      v3 -= 16;
    }

    while (v3 != -16);
  }

  *(v1 + 16) = 0;
  return result;
}

void PrefiltererThreadWorker::onStartup(PrefiltererThreadWorker *this)
{
  v2 = MemChunkAlloc(0x25308uLL, 0);
  TreePrefilterer::TreePrefilterer(v2);
  *(this + 32) = v3;
}

void (***PrefiltererThreadWorker::onShutdown(PrefiltererThreadWorker *this))(void)
{
  PrefiltererThreadWorker::reset(this);
  v2 = *(this + 32);

  return DgnDelete<TreePrefilterer>(v2);
}

void (***DgnDelete<TreePrefilterer>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t PrefiltererThreadWorker::onPlay(PrefiltererThreadWorker *this)
{
  v2 = *(this + 6);
  *(this + 112) = *(v2 + 1592);
  if ((*(this + 352) & 1) == 0)
  {
    SynchronizedArray<DgnPrimArray<unsigned char>>::update(this + 352, *(v2 + 1576));
  }

  v3 = *(v2 + 1584);
  if (v3 && (*(this + 376) & 1) == 0)
  {
    SynchronizedArray<ScoreFixArray>::update(this + 376, v3);
  }

  ReturnListQueue::clear((this + 264));
  *(this + 452) = 0;
  result = (*(**(this + 32) + 96))(*(this + 32));
  *(this + 113) = result;
  return result;
}

unint64_t SynchronizedArray<ScoreFixArray>::update(unint64_t result, uint64_t a2)
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
      v12 = (*(v3 + 8) + 16 * v8 + 8);
      do
      {
        *(v12 - 1) = 0;
        *v12 = 0;
        v12 += 4;
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
      result = DgnPrimFixArray<double>::~DgnPrimFixArray(*(v3 + 8) + v10);
      v10 -= 16;
    }

    while (v9 > v7);
  }

  *(v3 + 16) = v7;
  if (v6 < v4)
  {
    do
    {
      v13 = *(a2 + 8) + 16 * v6;
      result = DgnPrimFixArray<short>::copyArraySlice((*(v3 + 8) + 16 * v6++), v13, 0, *(v13 + 8));
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

uint64_t PrefiltererThreadWorker::playOne(PrefiltererThreadWorker *this)
{
  if (*(this + 264))
  {
    return 4;
  }

  v3 = *(this + 113);
  if (*(this + 92) <= v3)
  {
    if (*(this + 352) == 1)
    {
      if (*(this + 67) == -16)
      {
        *(this + 67) = ReturnListQueue::getNextFrameTime((this + 264));
        (*(**(this + 32) + 88))(*(this + 32));
        v3 = *(this + 113);
      }

      TreePrefilterer::completeUtterance(*(this + 32), v3, (this + 264));
      return 4;
    }

    v11 = 2;
    goto LABEL_24;
  }

  v4 = TreePrefilterer::needLookaheadToScoreFrame(*(this + 32));
  v5 = *(this + 113);
  if (!v4)
  {
    v7 = 432;
    goto LABEL_16;
  }

  if (*(this + 98) <= v5)
  {
    v11 = 3;
LABEL_24:
    *(this + 114) = v11;
    return 4;
  }

  DgnPrimFixArray<short>::copyArraySlice(this + 52, (*(this + 48) + 16 * v5), 0, *(*(this + 48) + 16 * v5 + 8));
  LODWORD(v5) = *(this + 113);
  if (*(this + 67) != -16)
  {
LABEL_10:
    v7 = 416;
    goto LABEL_16;
  }

  v6 = *(this + 95);
  v7 = 416;
  if (v6 != -16 && v6 <= v5)
  {
    *(this + 67) = ReturnListQueue::getNextFrameTime((this + 264));
    (*(**(this + 32) + 88))(*(this + 32));
    LODWORD(v5) = *(this + 113);
    goto LABEL_10;
  }

LABEL_16:
  v8 = *(this + 45) + 16 * v5;
  DgnPrimArray<unsigned char>::copyArraySlice(this + 50, v8, 0, *(v8 + 8));
  TreePrefilterer::scoreFrame(*(this + 32), *(this + 113), this + 400, (this + v7), (this + 264));
  v9 = *(this + 113) + 1;
  *(this + 113) = v9;
  if (*(this + 352) == 1 && *(this + 92) <= v9)
  {
    return 0;
  }

  v10 = *(this + 112);
  if (v10 == -16)
  {
    return 1;
  }

  NextFrameTime = ReturnListQueue::getNextFrameTime((this + 264));
  result = 1;
  if (v10 < NextFrameTime)
  {
    *(this + 114) = 1;
    return 4;
  }

  return result;
}

void PrefiltererThread::printSize(PrefiltererThread *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v31, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 461);
  if (v32)
  {
    v13 = v31;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  v27 = this;
  DgnString::~DgnString(&v31);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  getShipObjectSizeDescription(&v31, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 463);
  if (v32)
  {
    v17 = v31;
  }

  else
  {
    v17 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v17, v15, v15, 0);
  DgnString::~DgnString(&v31);
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

  getShipObjectSizeDescription(&v31, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 464);
  if (v32)
  {
    v20 = v31;
  }

  else
  {
    v20 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v20, v18, v18, 0);
  DgnString::~DgnString(&v31);
  *a4 += v18;
  *a5 += v18;
  getShipObjectSizeDescription(&v31, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 465);
  if (v32)
  {
    v22 = v31;
  }

  else
  {
    v22 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v22, 4, 4, 0);
  DgnString::~DgnString(&v31);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v31, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 466);
  if (v32)
  {
    v24 = v31;
  }

  else
  {
    v24 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v24, 8, 8, 0);
  DgnString::~DgnString(&v31);
  *a4 += 8;
  *a5 += 8;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  DgnThreadClient::printSize(v27, a2, (a3 + 1), &v30, &v28, &v29);
  *a4 += v30;
  *a5 += v28;
  *a6 += v29;
  getShipObjectSizeDescription(&v31, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 474);
  if (v32)
  {
    v26 = v31;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, a3, &byte_262899963, (35 - a3), (35 - a3), v26, *a4, *a5, *a6);
  DgnString::~DgnString(&v31);
}

void sub_262765250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *PrefiltererThread::reset(PrefiltererThread *this)
{
  *(this + 199) = 4294967280;
  *(this + 400) = 0;
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v3, *(this + 2));
  PrefiltererThreadWorker::reset(*(this + 7));
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v3);
}

void sub_2627652CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

void PrefiltererThread::scoreUntil(uint64_t a1, int a2, uint64_t a3, uint64_t a4, ReturnListQueue *a5)
{
  *(a1 + 1592) = a2;
  v7 = (a1 + 1576);
  *(a1 + 1576) = a3;
  *(a1 + 1584) = a4;
  DgnThreadClient::playAllUntilWorkerPauses(a1);
  *v7 = 0u;
  DgnThreadClient::pause(a1);
  v8 = *(a1 + 56);
  v9 = v8[114];
  *(a1 + 1596) = v8[113];
  *(a1 + 1600) = v9;

  ReturnListQueue::copyIntoQueue(v8 + 66, a5);
}

uint64_t ThreadedTreePrefilterer::ThreadedTreePrefilterer(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Prefilterer::Prefilterer(a1);
  *v4 = &unk_287524F70;
  v5 = MemChunkAlloc(0x648uLL, 0);
  v6 = DgnThread<PrefiltererThreadWorker>::DgnThread(v5, v2, 0, "Prefilterer");
  *v6 = &unk_287526EF8;
  *(v6 + 1592) = 4294967280;
  *(v6 + 1600) = 0;
  *(a1 + 24) = v6;
  *(a1 + 40) = *(v6 + 16);
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  DgnThreadClient::startup(v6);
  *(a1 + 32) = *(*(*(a1 + 24) + 56) + 256);
  return a1;
}

void ThreadedTreePrefilterer::~ThreadedTreePrefilterer(DgnThreadClient **this)
{
  *this = &unk_287524F70;
  if (DgnThreadClient::isLive(this[3]) && (DgnThreadClient::hasErrored(this[3]) & 1) == 0)
  {
    DgnThreadClient::shutdown(this[3]);
  }

  this[4] = 0;
  this[5] = 0;
  DgnDelete<FrameTransformerThread>(this[3]);
  this[3] = 0;

  MrecInitModule_sdpres_sdapi();
}

{
  ThreadedTreePrefilterer::~ThreadedTreePrefilterer(this);

  JUMPOUT(0x26672B1B0);
}

void ThreadedTreePrefilterer::printSize(ThreadedTreePrefilterer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 567);
  if (v40)
  {
    v13 = v39;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v39);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v38 = 0;
  v39 = 0;
  v37 = 0;
  Prefilterer::printSize(this, 0xFFFFFFFFLL, (a3 + 1), &v39, &v38, &v37);
  *a4 += v39;
  *a5 += v38;
  *a6 += v37;
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 570);
  if (v40)
  {
    v16 = v39;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v16, 1, 1, 0);
  DgnString::~DgnString(&v39);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 571);
  if (v40)
  {
    v18 = v39;
  }

  else
  {
    v18 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v18, 1, 1, 0);
  DgnString::~DgnString(&v39);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v19 = 4;
  }

  else
  {
    v19 = 8;
  }

  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 572);
  if (v40)
  {
    v21 = v39;
  }

  else
  {
    v21 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v21, v19, v19, 0);
  DgnString::~DgnString(&v39);
  *a4 += v19;
  *a5 += v19;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 573);
  if (v40)
  {
    v24 = v39;
  }

  else
  {
    v24 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v24, v22, v22, 0);
  DgnString::~DgnString(&v39);
  *a4 += v22;
  *a5 += v22;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 4;
  }

  else
  {
    v25 = 8;
  }

  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 574);
  if (v40)
  {
    v27 = v39;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v27, v25, v25, 0);
  DgnString::~DgnString(&v39);
  *a4 += v25;
  *a5 += v25;
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 576);
  if (v40)
  {
    v29 = v39;
  }

  else
  {
    v29 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v29, 1, 1, 0);
  DgnString::~DgnString(&v39);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 578);
  if (v40)
  {
    v31 = v39;
  }

  else
  {
    v31 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v31, 1, 1, 0);
  DgnString::~DgnString(&v39);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 4;
  }

  else
  {
    v32 = 8;
  }

  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 579);
  if (v40)
  {
    v34 = v39;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v34, v32, v32, 0);
  DgnString::~DgnString(&v39);
  *a4 += v32;
  *a5 += v32;
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 581);
  if (v40)
  {
    v36 = v39;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, a3, &byte_262899963, (35 - a3), (35 - a3), v36, *a4, *a5, *a6);
  DgnString::~DgnString(&v39);
}

void sub_2627659F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t ThreadedTreePrefilterer::scoreFramesUntil(uint64_t a1, int a2, uint64_t a3, uint64_t a4, ReturnListQueue *this)
{
  if (*(a1 + 17))
  {
    return 0;
  }

  if (ReturnListQueue::getNextFrameTime(this) > a2)
  {
    return 0;
  }

  *(a1 + 16) = 1;
  PrefiltererThread::scoreUntil(*(a1 + 24), a2, a3, a4, this);
  *(a1 + 16) = 0;
  *(a1 + 17) = *this;
  return *(*(a1 + 24) + 1600);
}

uint64_t ThreadedTreePrefilterer::maybeStartScoring(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 16);
  if ((result & 1) == 0)
  {
    if (*(a1 + 17))
    {
      return 0;
    }

    else
    {
      v5 = *(a1 + 24);
      *(v5 + 1592) = -16;
      v6 = (v5 + 1576);
      *(v5 + 1576) = a2;
      *(v5 + 1584) = a3;
      DgnThreadClient::play(v5);
      *v6 = 0u;
      result = 1;
      *(a1 + 16) = 1;
    }
  }

  return result;
}

uint64_t ThreadedTreePrefilterer::maybeStopScoring(ThreadedTreePrefilterer *this, int a2, ReturnListQueue *a3)
{
  if (*(this + 16) != 1)
  {
    return 0;
  }

  if (a2 && DgnThreadClient::getThreadState(*(this + 3)) != 4)
  {
    return 0;
  }

  v5 = *(this + 3);
  DgnThreadClient::pause(v5);
  v6 = *(v5 + 56);
  v7 = v6[114];
  *(v5 + 1596) = v6[113];
  *(v5 + 1600) = v7;
  ReturnListQueue::copyIntoQueue(v6 + 66, a3);
  *(this + 17) = *a3;
  *(this + 16) = 0;
  return *(*(this + 3) + 1600);
}

uint64_t *ThreadedTreePrefilterer::setInjectCwids(uint64_t a1, uint64_t a2)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v5, *(a1 + 40));
  (*(**(a1 + 32) + 40))(*(a1 + 32), a2);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v5);
}

void sub_262765C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedTreePrefilterer::beginPrefSyncRecog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v13, *(a1 + 40));
  (*(**(a1 + 32) + 48))(*(a1 + 32), a2, a3, a4, a5, a6);
  *(a1 + 49) = 1;
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v13);
}

void sub_262765CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedTreePrefilterer::endPrefSyncRecog(ThreadedTreePrefilterer *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v3, *(this + 5));
  (*(**(this + 4) + 56))(*(this + 4));
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v3);
  result = PrefiltererThread::reset(*(this + 3));
  *(this + 17) = 0;
  *(this + 49) = 0;
  return result;
}

void sub_262765D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedTreePrefilterer::setPelScoreCacheData(uint64_t a1, uint64_t a2)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v5, *(a1 + 40));
  (*(**(a1 + 32) + 72))(*(a1 + 32), a2);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v5);
}

void sub_262765E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedTreePrefilterer::initPrefilterer(ThreadedTreePrefilterer *this, int ***a2, unsigned int a3, int a4, char a5)
{
  *(this + 7) = a2;
  *(this + 4) = a3;
  *(this + 3) = a4;
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v11, *(this + 5));
  TreePrefilterer::initPrefilterer(*(this + 4), a2, a3, a4, a5, 1);
  *(this + 48) = 1;
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v11);
}

void sub_262765EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t ThreadedTreePrefilterer::getUserId(ThreadedTreePrefilterer *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    return *(v1 + 184);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t *ThreadedTreePrefilterer::setSynchronousPrefiltererStats(ThreadedTreePrefilterer *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v3, *(this + 5));
  (*(**(this + 4) + 88))(*(this + 4));
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v3);
}

void sub_262765F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

void PrefiltererThread::~PrefiltererThread(PrefiltererThread *this)
{
  DgnThreadClient::~DgnThreadClient(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t *DgnThread<PrefiltererThreadWorker>::newWorker(uint64_t a1)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v4, *(a1 + 16));
  v2 = MemChunkAlloc(0x1D0uLL, *(a1 + 16));
  PrefiltererThreadWorker::PrefiltererThreadWorker(v2, *(a1 + 12), a1, *(a1 + 16), *(a1 + 28));
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v4);
  return v2;
}

void sub_262766074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t DgnThread<PrefiltererThreadWorker>::DgnThread(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v5 = DgnThreadClient::DgnThreadClient(a1, a2, a3, a4);
  *v5 = &unk_287523298;
  *(a1 + 56) = DgnThread<PrefiltererThreadWorker>::newWorker(v5);
  return a1;
}

void DgnThread<PrefiltererThreadWorker>::~DgnThread(DgnThreadClient *a1)
{
  DgnThreadClient::~DgnThreadClient(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t sizeObject<ScoreFixArray>(uint64_t a1, int a2)
{
  v2 = 0;
  v11 = 0;
  v12 = 0;
  v3 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 8;
  }

  if (a2 != 3)
  {
    v2 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v4 = *(a1 + 8);
      if (v4 >= 1)
      {
        v5 = v4 + 1;
        v6 = (*a1 + 16 * v4 - 8);
        do
        {
          v7 = *v6;
          v6 -= 4;
          v8 = 2 * v7;
          if (v7 <= 0)
          {
            v9 = 0;
          }

          else
          {
            v9 = v8;
          }

          v2 += v3 + v9;
          --v5;
        }

        while (v5 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - v4);
      }
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  return v2;
}

uint64_t SynchronizedArray<ScoreFixArray>::SynchronizedArray(uint64_t a1)
{
  *(a1 + 4) = -16;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  SynchronizedArray<ScoreFixArray>::reset(a1);
  return a1;
}

void ParamValue::~ParamValue(ParamValue *this)
{
  if (*(this + 32) == 1)
  {
    v1 = *(this + 3);
    if (v1)
    {
      MemChunkFree(v1, 0);
    }
  }
}

void ParamValue::ParamValue(ParamValue *this, const ParamValue *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + 4) = *(a2 + 4);
  *(this + 2) = *(a2 + 2);
  *(this + 2) = *(a2 + 2);
  if ((v4 & 0xFFFFFFFE) == 4 && *(a2 + 32) == 1)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      v6 = strlen(*(a2 + 3));
      v7 = MemChunkAlloc((v6 + 1), 0);
      v8 = strcpy(v7, v5);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = *(a2 + 3);
  }

  *(this + 3) = v8;
  *(this + 32) = *(a2 + 32);
}

uint64_t DynamicParamSet::DynamicParamSet(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5)
{
  DgnString::DgnString(a1);
  *(v10 + 32) = 0;
  v11 = (v10 + 32);
  *(v10 + 40) = 0;
  *(v10 + 24) = a3;
  DgnString::operator=(v10, a2);
  *(a1 + 16) = a4;
  v12 = ParamSpecMgr::smpParamSpecMgrArray[a3];
  NumParamIds = ParamSpecMgr::getNumParamIds(v12);
  v14 = NumParamIds;
  v15 = *(a1 + 44);
  if (NumParamIds > v15)
  {
    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v11, NumParamIds - v15, 0);
  }

  v16 = *(a1 + 40);
  if (v16 <= v14)
  {
    if (v16 < v14)
    {
      v18 = v14 - v16;
      v19 = 40 * v16;
      do
      {
        v20 = *v11 + v19;
        *v20 = 0;
        *(v20 + 4) = 0;
        *(v20 + 8) = 0;
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        *(v20 + 32) = 0;
        v19 += 40;
        --v18;
      }

      while (v18);
    }
  }

  else if (v16 > v14)
  {
    v17 = 40 * v16 - 40;
    do
    {
      --v16;
      ParamValue::~ParamValue((*v11 + v17));
      v17 -= 40;
    }

    while (v16 > v14);
  }

  *(a1 + 40) = v14;
  if (*(a5 + 8))
  {
    v21 = 0;
    do
    {
      v22 = *(*a5 + 2 * v21);
      ParamByParamId = ParamSpecMgr::getParamByParamId(v12, v22);
      v24 = (*(*ParamByParamId + 24))(ParamByParamId);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
          Default_BOOL = ParamSpecMgr::ParamGetDefault_BOOL(v12, v22, a4, HIDWORD(a4));
          v32 = *v11 + 40 * v22;
          *v32 = 1;
          *(v32 + 4) = Default_BOOL;
        }

        else if (v24 == 2)
        {
          Default_int = ParamSpecMgr::ParamGetDefault_int(v12, v22, a4, HIDWORD(a4));
          v27 = (*v11 + 40 * v22);
          *v27 = 2;
          v27[2] = Default_int;
        }
      }

      else
      {
        switch(v24)
        {
          case 3:
            Default_double = ParamSpecMgr::ParamGetDefault_double(v12, v22, a4, HIDWORD(a4));
            v29 = *v11 + 40 * v22;
            *v29 = 3;
            *(v29 + 16) = Default_double;
            break;
          case 4:
            Default_string = ParamSpecMgr::ParamGetDefault_string(v12, v22, a4, HIDWORD(a4));
            DynamicParamSet::setStringParameter(a1, v22, Default_string, 0);
            break;
          case 5:
            Default_enumAsString = ParamSpecMgr::ParamGetDefault_enumAsString(v12, v22, a4, HIDWORD(a4));
            DynamicParamSet::setEnumParameter(a1, v22, Default_enumAsString, 0);
            break;
        }
      }

      ++v21;
    }

    while (v21 < *(a5 + 8));
  }

  return a1;
}

void sub_262766638(_Unwind_Exception *a1)
{
  DgnArray<ParamValue>::releaseAll(v2);
  DgnString::~DgnString(v1);
  _Unwind_Resume(a1);
}

uint64_t DynamicParamSet::setBoolParameter(uint64_t this, unsigned int a2, char a3)
{
  v3 = *(this + 32) + 40 * a2;
  *v3 = 1;
  *(v3 + 4) = a3;
  return this;
}

uint64_t DynamicParamSet::setIntParameter(uint64_t this, unsigned int a2, int a3)
{
  v3 = (*(this + 32) + 40 * a2);
  *v3 = 2;
  v3[2] = a3;
  return this;
}

uint64_t DynamicParamSet::setDoubleParameter(uint64_t this, unsigned int a2, double a3)
{
  v3 = *(this + 32) + 40 * a2;
  *v3 = 3;
  *(v3 + 16) = a3;
  return this;
}

uint64_t DynamicParamSet::setStringParameter(uint64_t this, unsigned int a2, const char *__s, int a4)
{
  v5 = __s;
  v7 = this;
  v8 = *(this + 32) + 40 * a2;
  if (*v8 != 4 || (this = strcmp(*(v8 + 24), __s), this))
  {
    *v8 = 4;
    if (*(v8 + 32) == 1)
    {
      this = *(v8 + 24);
      if (this)
      {
        this = MemChunkFree(this, 0);
      }
    }

    if (a4)
    {
      if (v5)
      {
        v9 = strlen(v5);
        v10 = MemChunkAlloc((v9 + 1), 0);
        this = strcpy(v10, v5);
        v5 = this;
      }
    }

    v11 = *(v7 + 32) + 40 * a2;
    *(v11 + 24) = v5;
    *(v11 + 32) = a4;
  }

  return this;
}

uint64_t DynamicParamSet::setEnumParameter(uint64_t this, unsigned int a2, const char *__s, int a4)
{
  v5 = __s;
  v7 = this;
  v8 = *(this + 32) + 40 * a2;
  if (*v8 != 5 || (this = strcmp(*(v8 + 24), __s), this))
  {
    *v8 = 5;
    if (*(v8 + 32) == 1)
    {
      this = *(v8 + 24);
      if (this)
      {
        this = MemChunkFree(this, 0);
      }
    }

    if (a4)
    {
      if (v5)
      {
        v9 = strlen(v5);
        v10 = MemChunkAlloc((v9 + 1), 0);
        this = strcpy(v10, v5);
        v5 = this;
      }
    }

    v11 = *(v7 + 32) + 40 * a2;
    *(v11 + 24) = v5;
    *(v11 + 32) = a4;
  }

  return this;
}

void DynamicParamSet::DynamicParamSet(DynamicParamSet *this, const DynamicParamSet *a2)
{
  DgnString::DgnString(this);
  *(v4 + 32) = 0;
  v5 = v4 + 32;
  *(v4 + 40) = 0;
  *(v4 + 24) = *(a2 + 6);
  DgnString::operator=(v4, a2);
  *(this + 2) = *(a2 + 2);
  DgnArray<ParamValue>::copyArraySlice(v5, a2 + 4, 0, *(a2 + 10));
}

void sub_2627668CC(_Unwind_Exception *a1)
{
  DgnArray<ParamValue>::releaseAll(v2);
  DgnString::~DgnString(v1);
  _Unwind_Resume(a1);
}

uint64_t DynamicParamSet::setBoolParameter(DynamicParamSet *this, const char *a2, char a3)
{
  result = ParamSpecMgr::getParamId(*(this + 6), a2);
  v6 = *(this + 4) + 40 * result;
  *v6 = 1;
  *(v6 + 4) = a3;
  return result;
}

uint64_t DynamicParamSet::setIntParameter(DynamicParamSet *this, const char *a2, int a3)
{
  result = ParamSpecMgr::getParamId(*(this + 6), a2);
  v6 = (*(this + 4) + 40 * result);
  *v6 = 2;
  v6[2] = a3;
  return result;
}

uint64_t DynamicParamSet::setDoubleParameter(DynamicParamSet *this, const char *a2, double a3)
{
  result = ParamSpecMgr::getParamId(*(this + 6), a2);
  v6 = *(this + 4) + 40 * result;
  *v6 = 3;
  *(v6 + 16) = a3;
  return result;
}

char *DynamicParamSet::setStringParameter(DynamicParamSet *this, const char *a2, const char *a3, int a4)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::setStringParameter(this, ParamId, a3, a4);
}

char *DynamicParamSet::setEnumParameter(DynamicParamSet *this, const char *a2, const char *a3, int a4)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::setEnumParameter(this, ParamId, a3, a4);
}

uint64_t DynamicParamSet::getBoolParameter(DynamicParamSet *this, int a2)
{
  v2 = *(this + 4);
  v4 = *(v2 + 40 * a2);
  if (v4 != 1)
  {
    if (!v4)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2);
      if (*(this + 2))
      {
        v8 = *this;
      }

      else
      {
        v8 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 341, "dfutil/dynparset", 2, "%.500s %.500s", *(ParamByParamId + 8), v8);
    }

    v9 = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 347, "dfutil/dynparset", 1, "%.500s %.500s %.500s", *(v9 + 8), sParamTypeNames[v4], "BOOL");
    v2 = *(this + 4);
  }

  return *(v2 + 40 * a2 + 4);
}

uint64_t DynamicParamSet::getIntParameter(DynamicParamSet *this, int a2)
{
  v2 = *(this + 4);
  v4 = *(v2 + 40 * a2);
  if (v4 != 2)
  {
    if (!v4)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2);
      if (*(this + 2))
      {
        v8 = *this;
      }

      else
      {
        v8 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 358, "dfutil/dynparset", 2, "%.500s %.500s", *(ParamByParamId + 8), v8);
    }

    v9 = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 364, "dfutil/dynparset", 1, "%.500s %.500s %.500s", *(v9 + 8), sParamTypeNames[v4], "int");
    v2 = *(this + 4);
  }

  return *(v2 + 40 * a2 + 8);
}

double DynamicParamSet::getDoubleParameter(DynamicParamSet *this, int a2)
{
  v2 = *(this + 4);
  v4 = *(v2 + 40 * a2);
  if (v4 != 3)
  {
    if (!v4)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2);
      if (*(this + 2))
      {
        v8 = *this;
      }

      else
      {
        v8 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 375, "dfutil/dynparset", 2, "%.500s %.500s", *(ParamByParamId + 8), v8);
    }

    v9 = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 381, "dfutil/dynparset", 1, "%.500s %.500s %.500s", *(v9 + 8), sParamTypeNames[v4], "double");
    v2 = *(this + 4);
  }

  return *(v2 + 40 * a2 + 16);
}

uint64_t DynamicParamSet::getStringParameter(DynamicParamSet *this, int a2)
{
  v2 = *(this + 4);
  v4 = *(v2 + 40 * a2);
  if (v4 != 4)
  {
    if (!v4)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2);
      if (*(this + 2))
      {
        v8 = *this;
      }

      else
      {
        v8 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 392, "dfutil/dynparset", 2, "%.500s %.500s", *(ParamByParamId + 8), v8);
    }

    v9 = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 398, "dfutil/dynparset", 1, "%.500s %.500s %.500s", *(v9 + 8), sParamTypeNames[v4], "string");
    v2 = *(this + 4);
  }

  return *(v2 + 40 * a2 + 24);
}

uint64_t DynamicParamSet::getEnumParameter(DynamicParamSet *this, int a2)
{
  v2 = *(this + 4);
  v4 = *(v2 + 40 * a2);
  if (v4 != 5)
  {
    if (!v4)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2);
      if (*(this + 2))
      {
        v8 = *this;
      }

      else
      {
        v8 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 409, "dfutil/dynparset", 2, "%.500s %.500s", *(ParamByParamId + 8), v8);
    }

    v9 = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 415, "dfutil/dynparset", 1, "%.500s %.500s %.500s", *(v9 + 8), sParamTypeNames[v4], "enum");
    v2 = *(this + 4);
  }

  return *(v2 + 40 * a2 + 24);
}

uint64_t DynamicParamSet::getBoolParameter(DynamicParamSet *this, const char *a2)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::getBoolParameter(this, ParamId);
}

uint64_t DynamicParamSet::getIntParameter(DynamicParamSet *this, const char *a2)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::getIntParameter(this, ParamId);
}

double DynamicParamSet::getDoubleParameter(DynamicParamSet *this, const char *a2)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::getDoubleParameter(this, ParamId);
}

uint64_t DynamicParamSet::getEnumParameter(DynamicParamSet *this, const char *a2)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::getEnumParameter(this, ParamId);
}

void *DynamicParamSet::removeParameter(void *this, unsigned int a2)
{
  v2 = this[4];
  v4 = v2 + 40 * a2;
  if (*(v4 + 32) == 1)
  {
    v5 = this;
    this = *(v4 + 24);
    if (this)
    {
      this = MemChunkFree(this, 0);
      v2 = v5[4];
    }

    *(v2 + 40 * a2 + 24) = 0;
  }

  *(v2 + 40 * a2) = 0;
  return this;
}

void *DynamicParamSet::removeParameter(DynamicParamSet *this, const char *a2)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::removeParameter(this, ParamId);
}

uint64_t DynamicParamSet::validateSelf(DynamicParamSet *this)
{
  v2 = *(this + 5);
  v3 = ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)];
  v22 = 0;
  v23 = 0;
  ParamSpecMgr::getAllParamIdsSortedByName(v3, &v22, *(this + 4), v2);
  if (v23)
  {
    v4 = 0;
    do
    {
      v5 = v22[v4];
      ParamByParamId = ParamSpecMgr::getParamByParamId(v3, v5);
      v7 = (*(*ParamByParamId + 24))(ParamByParamId);
      switch(v7)
      {
        case 2:
          IntParameter = DynamicParamSet::getIntParameter(this, v5);
          IntParamSpec::validateValue(v13, IntParameter, *(this + 4), *(this + 5));
          break;
        case 3:
          DoubleParameter = DynamicParamSet::getDoubleParameter(this, v5);
          DoubleParamSpec::validateValue(v11, DoubleParameter, *(this + 4), *(this + 5));
          break;
        case 5:
          EnumParameter = DynamicParamSet::getEnumParameter(this, v5);
          EnumParamSpec::checkStringEnumValue(v9, EnumParameter, *(this + 4), *(this + 5));
          break;
      }

      ++v4;
    }

    while (v4 < v23);
  }

  v14 = *(this + 10);
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      if (*(*(this + 4) + 40 * i))
      {
        v16 = v23;
        if (!v23)
        {
          goto LABEL_19;
        }

        v17 = v22;
        v18 = 0xFFFFFFFFLL;
        while (1)
        {
          v19 = *v17++;
          if (v19 == i)
          {
            break;
          }

          --v18;
          if (!--v16)
          {
            goto LABEL_19;
          }
        }

        if (!v18)
        {
LABEL_19:
          v20 = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], i);
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 532, "dfutil/dynparset", 3, "%.500s", *(v20 + 8));
          v14 = *(this + 10);
        }
      }
    }
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
}

void sub_262767498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void DgnArray<ParamValue>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 40 * v8 - 40;
    do
    {
      ParamValue::~ParamValue((*a1 + v9));
      v9 -= 40;
    }

    while (v9 != -40);
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
    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    ParamValue::ParamValue((*a1 + 40 * v12), (*a2 + 40 * a3));
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
      v15 = 40 * v12 - 40;
      do
      {
        --v14;
        ParamValue::~ParamValue((*a1 + v15));
        v15 -= 40;
      }

      while (v14 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v12 < a4)
  {
    v16 = a4 - v12;
    v17 = 40 * v12;
    do
    {
      v18 = *a1 + v17;
      *v18 = 0;
      *(v18 + 4) = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      v17 += 40;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

uint64_t sdGetAndValidateParamSet(unint64_t *a1)
{
  v2 = ParamSetHolderMgr::smpParamSetHolderMgr;
  v3 = *a1;
  if (HIDWORD(*a1))
  {
    throwBadSdapiArgument("SDhParamSetHolder", v3);
  }

  if ((v3 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhParamSetHolder", v3);
  }

  ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(v2, v3);
  v5 = a1[1];
  if (v5 > 6)
  {
    if (v5 > 9)
    {
      switch(v5)
      {
        case 10:
          v15 = a1[11];
          if (HIDWORD(v15))
          {
            throwBadSdapiArgument("SDhSearchParamSet", v15);
          }

          if ((v15 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhSearchParamSet", v15);
          }

          ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v15);
          v8 = 10;
          break;
        case 11:
          v19 = a1[12];
          if (HIDWORD(v19))
          {
            throwBadSdapiArgument("SDhSearchCrossLayerParamSet", v19);
          }

          if ((v19 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhSearchCrossLayerParamSet", v19);
          }

          ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v19);
          v8 = 11;
          break;
        case 12:
          v11 = a1[13];
          if (HIDWORD(v11))
          {
            throwBadSdapiArgument("SDhUserDeltaParamSet", v11);
          }

          if ((v11 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhUserDeltaParamSet", v11);
          }

          ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v11);
          v8 = 12;
          break;
        default:
LABEL_78:
          throwBadSdapiArgument("SDParamSetContainerType", a1[1]);
          v20 = a1[11];
          if (HIDWORD(v20))
          {
            throwBadSdapiArgument("SDhSearchParamSet", v20);
          }

          if ((v20 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhSearchParamSet", v20);
          }

          ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v20);
          throwBadSdapiArgument("SDParamSetContainerType", v5);
LABEL_83:
          v8 = 1;
          break;
      }
    }

    else if (v5 == 7)
    {
      v13 = a1[8];
      if (HIDWORD(v13))
      {
        throwBadSdapiArgument("SDhPrefiltererSearchParamSet", v13);
      }

      if ((v13 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhPrefiltererSearchParamSet", v13);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v13);
      v8 = 7;
    }

    else if (v5 == 8)
    {
      v17 = a1[9];
      if (HIDWORD(v17))
      {
        throwBadSdapiArgument("SDhPronGuessParamSet", v17);
      }

      if ((v17 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhPronGuessParamSet", v17);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v17);
      v8 = 8;
    }

    else
    {
      v9 = a1[10];
      if (HIDWORD(v9))
      {
        throwBadSdapiArgument("SDhSausageParamSet", v9);
      }

      if ((v9 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhSausageParamSet", v9);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v9);
      v8 = 9;
    }
  }

  else if (v5 > 3)
  {
    if (v5 == 4)
    {
      v14 = a1[5];
      if (HIDWORD(v14))
      {
        throwBadSdapiArgument("SDhLatticeNBestParamSet", v14);
      }

      if ((v14 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhLatticeNBestParamSet", v14);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v14);
      v8 = 4;
    }

    else if (v5 == 5)
    {
      v18 = a1[6];
      if (HIDWORD(v18))
      {
        throwBadSdapiArgument("SDhLatticePostProbParamSet", v18);
      }

      if ((v18 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhLatticePostProbParamSet", v18);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v18);
      v8 = 5;
    }

    else
    {
      v10 = a1[7];
      if (HIDWORD(v10))
      {
        throwBadSdapiArgument("SDhPrefiltererBuildParamSet", v10);
      }

      if ((v10 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhPrefiltererBuildParamSet", v10);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v10);
      v8 = 6;
    }
  }

  else
  {
    if (v5 == 1)
    {
      v12 = a1[2];
      if (HIDWORD(v12))
      {
        throwBadSdapiArgument("SDhAdapterParamSet", v12);
      }

      if ((v12 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhAdapterParamSet", v12);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v12);
      goto LABEL_83;
    }

    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v6 = a1[4];
        if (HIDWORD(v6))
        {
          throwBadSdapiArgument("SDhConfidenceParamSet", v6);
        }

        if ((v6 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhConfidenceParamSet", v6);
        }

        ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v6);
        v8 = 3;
        goto LABEL_84;
      }

      goto LABEL_78;
    }

    v16 = a1[3];
    if (HIDWORD(v16))
    {
      throwBadSdapiArgument("SDhChannelParamSet", v16);
    }

    if ((v16 + 1) <= 1)
    {
      throwBadSdapiArgument("SDhChannelParamSet", v16);
    }

    ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v16);
    v8 = 2;
  }

LABEL_84:
  if (v8 != *(ParamSet + 24))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdparamsetparam.cpp", 60, "sdapi/sdparamsetparam", 1, "%s", &unk_26288CCC2);
  }

  return ParamSet;
}

uint64_t SDParamSetParam_GetHandle(uint64_t a1, const char *a2)
{
  SdapiInsurance::SdapiInsurance(v11, "SDParamSetParam_GetHandle", 1, 1, 193);
  if (v11[97] == 1)
  {
    if (!a2)
    {
      v5 = throwBadStringPointer();
    }

    v11[151] = 0;
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v6 = a1;
      }

      else
      {
        v6 = 0;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, '%.500s')\n", v4, v5, "SDParamSetParam_GetHandle", v6, a2);
    }

    v7 = *(a1 + 8);
    if ((v7 - 1) >= 0xC)
    {
      throwBadSdapiArgument("SDParamSetContainerType", v7);
      v7 = 1;
    }

    ParamIdByParamName = ParamSpecMgr::getParamIdByParamName(ParamSpecMgr::smpParamSpecMgrArray[v7], a2);
    if (ParamIdByParamName == 0xFFFF)
    {
      v9 = -1;
    }

    else
    {
      v9 = ParamIdByParamName;
    }
  }

  else
  {
    v9 = -1;
  }

  SdapiInsurance::~SdapiInsurance(v11);
  return v9;
}

uint64_t SDParamSetParam_GetType(uint64_t a1, unint64_t a2)
{
  v4 = 1;
  SdapiInsurance::SdapiInsurance(v12, "SDParamSetParam_GetType", 1, 1, 194);
  if (v12[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v6 = a1;
      }

      else
      {
        v6 = 0;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>)\n", v5, "SDParamSetParam_GetType", v6, a2);
    }

    v7 = *(a1 + 8);
    if ((v7 - 1) >= 0xC)
    {
      throwBadSdapiArgument("SDParamSetContainerType", v7);
      v7 = 1;
    }

    v8 = ParamSpecMgr::smpParamSpecMgrArray[v7];
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2);
      }

      if (a2 == 0xFFFF || !a2)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2);
      }
    }

    ParamByParamId = ParamSpecMgr::getParamByParamId(v8, a2);
    v10 = (*(*ParamByParamId + 24))(ParamByParamId);
    v4 = 1;
    if (v10 <= 2)
    {
      if (v10 == 1)
      {
        v4 = 2;
      }

      else if (v10 == 2)
      {
        v4 = 3;
      }
    }

    else
    {
      switch(v10)
      {
        case 3:
          v4 = 4;
          break;
        case 4:
          v4 = 5;
          break;
        case 5:
          v4 = 6;
          break;
      }
    }
  }

  SdapiInsurance::~SdapiInsurance(v12);
  return v4;
}

void sub_262767E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2 == 2)
  {
    v13 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v13, v14);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v15 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v15);
  }

  __cxa_end_catch();
  JUMPOUT(0x262767E7CLL);
}

void SDParamSetParam_SetBoolValue(unint64_t *a1, unint64_t a2, int a3)
{
  SdapiInsurance::SdapiInsurance(v11, "SDParamSetParam_SetBoolValue", 1, 1, 202);
  if (v11[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v7 = a1;
      }

      else
      {
        v7 = 0;
      }

      v8 = "SD_TRUE";
      if (!a3)
      {
        v8 = "SD_FALSE";
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>, %.500s)\n", v6, "SDParamSetParam_SetBoolValue", v7, a2, v8);
    }

    v9 = sdGetAndValidateParamSet(a1);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        v10.n128_f64[0] = throwBadSdapiArgument("SDhParamSetParam", a2);
      }

      if (a2 == 0xFFFF || !a2)
      {
        v10.n128_f64[0] = throwBadSdapiArgument("SDhParamSetParam", a2);
      }
    }

    if (a3 >= 2)
    {
      v10.n128_f64[0] = throwBadSdapiArgument("SDBool", a3);
    }

    (*(*v9 + 64))(v9, a2, a3 == 1, v10);
  }

  SdapiInsurance::~SdapiInsurance(v11);
}

void sub_262768070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2 == 2)
  {
    v13 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v13, v14);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v15 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v15);
  }

  __cxa_end_catch();
  JUMPOUT(0x262768054);
}

void SDParamSetParam_SetIntValue(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  SdapiInsurance::SdapiInsurance(v10, "SDParamSetParam_SetIntValue", 1, 1, 203);
  if (v10[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v7 = a1;
      }

      else
      {
        v7 = 0;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>, %lld)\n", v6, "SDParamSetParam_SetIntValue", v7, a2, a3);
    }

    v8 = sdGetAndValidateParamSet(a1);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        v9.n128_f64[0] = throwBadSdapiArgument("SDhParamSetParam", a2);
      }

      if (a2 == 0xFFFF || !a2)
      {
        v9.n128_f64[0] = throwBadSdapiArgument("SDhParamSetParam", a2);
      }
    }

    (*(*v8 + 72))(v8, a2, a3, v9);
  }

  SdapiInsurance::~SdapiInsurance(v10);
}

void sub_262768204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2 == 2)
  {
    v13 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v13, v14);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v15 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v15);
  }

  __cxa_end_catch();
  JUMPOUT(0x2627681E8);
}

void SDParamSetParam_SetDoubleValue(unint64_t *a1, unint64_t a2, double a3)
{
  SdapiInsurance::SdapiInsurance(v13, "SDParamSetParam_SetDoubleValue", 1, 1, 204);
  if (v13[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v6 = a1;
      }

      else
      {
        v6 = 0;
      }

      v7 = eround(a3, 14);
      DgnString::formatFloat(0xE, v7, &v11);
      if (v12)
      {
        v9 = v11;
      }

      else
      {
        v9 = &unk_26288CCC2;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>, %.500s)\n", v8, "SDParamSetParam_SetDoubleValue", v6, a2, v9);
      DgnString::~DgnString(&v11);
    }

    v10 = sdGetAndValidateParamSet(a1);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2);
      }

      if (a2 == 0xFFFF || !a2)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2);
      }
    }

    (*(*v10 + 80))(v10, a2, a3);
  }

  SdapiInsurance::~SdapiInsurance(v13);
}

void sub_2627683DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  DgnString::~DgnString(va);
  if (a2 == 2)
  {
    v12 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v12, v13);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va1);
      _Unwind_Resume(a1);
    }

    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v14);
  }

  __cxa_end_catch();
  JUMPOUT(0x2627683B8);
}

void SDParamSetParam_SetStringValue(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  SdapiInsurance::SdapiInsurance(v11, "SDParamSetParam_SetStringValue", 1, 1, 205);
  if (v11[97] == 1)
  {
    if (!a3)
    {
      v7 = throwBadStringPointer();
    }

    v11[151] = 0;
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v8 = a1;
      }

      else
      {
        v8 = 0;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>, '%.500s')\n", v6, v7, "SDParamSetParam_SetStringValue", v8, a2, a3);
    }

    v9 = sdGetAndValidateParamSet(a1);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        v10.n128_f64[0] = throwBadSdapiArgument("SDhParamSetParam", a2);
      }

      if (a2 == 0xFFFF || !a2)
      {
        v10.n128_f64[0] = throwBadSdapiArgument("SDhParamSetParam", a2);
      }
    }

    (*(*v9 + 88))(v9, a2, a3, v10);
  }

  SdapiInsurance::~SdapiInsurance(v11);
}

void sub_262768594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v14, v15);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v16);
  }

  __cxa_end_catch();
  JUMPOUT(0x262768578);
}

void SDParamSetParam_SetEnumValue(unint64_t *a1, unint64_t a2, const char *a3)
{
  SdapiInsurance::SdapiInsurance(v17, "SDParamSetParam_SetEnumValue", 1, 1, 206);
  if (v17[97] == 1)
  {
    if (!a3)
    {
      v7 = throwBadStringPointer();
    }

    v17[151] = 0;
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v8 = a1;
      }

      else
      {
        v8 = 0;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>, '%.500s')\n", v6, v7, "SDParamSetParam_SetEnumValue", v8, a2, a3);
    }

    v9 = sdGetAndValidateParamSet(a1);
    v10 = a1[1];
    if ((v10 - 1) >= 0xC)
    {
      throwBadSdapiArgument("SDParamSetContainerType", v10);
      v10 = 1;
    }

    v11 = ParamSpecMgr::smpParamSpecMgrArray[v10];
    v12 = HIDWORD(a2);
    if (a2 == -1)
    {
      v13 = -1;
    }

    else
    {
      if (v12 || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2);
      }

      if (a2 != 0xFFFF && a2)
      {
        v13 = a2;
      }

      else
      {
        throwBadSdapiArgument("SDhParamSetParam", a2);
        v13 = a2;
      }
    }

    ParamByParamId = ParamSpecMgr::getParamByParamId(v11, v13);
    if (ParamByParamId)
    {
    }

    v15 = EnumParamSpec::convertEnumStringToInt(ParamByParamId, a3);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (v12 || (a2 & 0xFFFF0000) != 0)
      {
        v16.n128_f64[0] = throwBadSdapiArgument("SDhParamSetParam", a2);
      }

      if (a2 == 0xFFFF || !a2)
      {
        v16.n128_f64[0] = throwBadSdapiArgument("SDhParamSetParam", a2);
      }
    }

    (*(*v9 + 96))(v9, a2, v15, v16);
  }

  SdapiInsurance::~SdapiInsurance(v17);
}

void sub_262768820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v14, v15);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v16);
  }

  __cxa_end_catch();
  JUMPOUT(0x262768800);
}

_DWORD *DFileChecksumBucket::DFileChecksumBucket(_DWORD *a1, _DWORD *a2)
{
  DgnString::DgnString((a1 + 2));
  *a1 = *a2;
  DgnString::operator=((a1 + 2), (a2 + 2));
  return a1;
}

BOOL DFileChecksumBucket::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v2 = *(a1 + 8);
  }

  else
  {
    v2 = &byte_262899963;
  }

  if (*(a2 + 16))
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = &byte_262899963;
  }

  return strcmp(v2, v3) == 0;
}

void DFileChecksums::DFileChecksums(DFileChecksums *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
}

uint64_t DFileChecksums::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  DgnArray<DFileChecksumBucket>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  return a1;
}

BOOL DgnArray<DFileChecksumBucket>::operator==(uint64_t a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (v3 != *(a2 + 2))
  {
    return 0;
  }

  v4 = *a2;
  v5 = v3 + 1;
  v6 = 24 * v3 - 24;
  do
  {
    v7 = --v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v8 = v6 - 24;
    v9 = DFileChecksumBucket::operator==(*a1 + v6, v4 + v6);
    v6 = v8;
  }

  while (v9);
  return v7;
}

void DFileChecksums::addChecksum(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  SubFileExtensionString = GetSubFileExtensionString(a3);
  DgnString::DgnString(&v18);
  DFile::makeSubFileName(a2, SubFileExtensionString, &v18);
  v9 = *(a1 + 8);
  v8 = *(a1 + 12);
  v10 = v9 + 1;
  v11 = v9;
  if (v9 + 1 > v8)
  {
    DgnArray<CWIDAC>::reallocElts(a1, v9 + 1 - v8, 0);
    v11 = *(a1 + 8);
  }

  if (v11 <= v10)
  {
    if (v11 < v10)
    {
      v14 = v9 - v11 + 1;
      v15 = 24 * v11 + 8;
      do
      {
        DgnString::DgnString((*a1 + v15));
        v15 += 24;
        --v14;
      }

      while (v14);
    }
  }

  else if (v11 > v10)
  {
    v12 = v11;
    v13 = 24 * v11 - 16;
    do
    {
      --v12;
      DgnString::~DgnString(*a1 + v13);
      v13 -= 24;
    }

    while (v12 > v10);
  }

  *(a1 + 8) = v10;
  v16 = (*a1 + 24 * v9);
  if (v19)
  {
    v17 = v18;
  }

  else
  {
    v17 = &byte_262899963;
  }

  *v16 = a4;
  DgnString::operator=((v16 + 2), v17);
  *(a1 + 16) ^= a4;
  DgnString::~DgnString(&v18);
}

uint64_t DFileChecksums::find(DFileChecksums *this, const char *__s2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  for (i = (*this + 16); ; i += 6)
  {
    v6 = *i ? *(i - 1) : &byte_262899963;
    if (!strcmp(v6, __s2))
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

char *DFileChecksums::getSubFileName(DFileChecksums *this, unsigned int a2)
{
  v2 = *this + 24 * a2;
  if (*(v2 + 16))
  {
    return *(v2 + 8);
  }

  else
  {
    return &byte_262899963;
  }
}

uint64_t writeObject<DFileChecksumBucket>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *(a2 + 8);
  result = writeObject(a1, &v10, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 8;
    do
    {
      v9 = *a2 + v8;
      writeObject(a1, (v9 - 8), a3);
      result = writeObject(a1, v9, a3);
      ++v7;
      v8 += 24;
    }

    while (v7 < *(a2 + 8));
  }

  return result;
}

void readObject<DFileChecksumBucket>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<CWIDAC>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  v9 = v8;
  if (v6 >= v8)
  {
    if (v6 > v8)
    {
      v11 = v6 - v8;
      v12 = 24 * v8 + 8;
      do
      {
        DgnString::DgnString((*a2 + v12));
        v12 += 24;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v10 = 24 * v8 - 16;
    do
    {
      --v9;
      DgnString::~DgnString(*a2 + v10);
      v10 -= 24;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v13 = 0;
    v14 = 8;
    do
    {
      v15 = (*a2 + v14);
      readObject(a1, v15 - 2, a3);
      readObject(a1, v15, a3);
      ++v13;
      v14 += 24;
    }

    while (v13 < *(a2 + 8));
  }
}

uint64_t readObject(DgnStream *a1, DFileChecksums *a2, unsigned int *a3)
{
  readObject<DFileChecksumBucket>(a1, a2, a3);

  return readObject(a1, a2 + 4, a3);
}

void *DgnArray<DFileChecksumBucket>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 16;
    do
    {
      DgnString::~DgnString(*a1 + v3);
      v3 -= 24;
    }

    while (v3 != -16);
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

void DgnArray<DFileChecksumBucket>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 24 * v8 - 16;
    do
    {
      DgnString::~DgnString(*a1 + v9);
      v9 -= 24;
    }

    while (v9 != -16);
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
    DgnArray<CWIDAC>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    DFileChecksumBucket::DFileChecksumBucket((*a1 + 24 * v12), (*a2 + 24 * a3));
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
      v15 = 24 * v12 - 16;
      do
      {
        --v14;
        DgnString::~DgnString(*a1 + v15);
        v15 -= 24;
      }

      while (v14 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  v16 = a4 - v12;
  if (a4 > v12)
  {
    v17 = 24 * v12 + 8;
    do
    {
      DgnString::DgnString((*a1 + v17));
      v17 += 24;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

uint64_t *mrec_qsort_r<EncodeBuildAlphabetCountsUns16Cmp>(uint64_t *result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = -a3;
  v6 = a3 != 8;
  v7 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v9 = result + a2 * a3;
      v10 = result + a3;
      v11 = result;
      do
      {
        if (v10 > result)
        {
          v12 = v11;
          v13 = v10;
          do
          {
            v14 = v13;
            v13 += v5;
            v15 = *v13;
            v16 = *v14;
            v17 = *(*v13 + 4);
            v18 = *(*v14 + 4);
            v19 = v17 > v18;
            if (v17 == v18)
            {
              v19 = *(v15 + 8) > *(v16 + 8);
            }

            if (!v19)
            {
              break;
            }

            if (v8)
            {
              v20 = 0;
              if (v7)
              {
                v21 = v13;
                do
                {
                  v22 = *(v14 + 8 * v20);
                  *(v14 + 8 * v20) = *v21;
                  *v21++ = v22;
                  ++v20;
                }

                while (a3 >> 3 != v20);
              }

              else
              {
                v23 = a3;
                do
                {
                  v24 = *(v14 + v20);
                  *(v14 + v20) = *(v12 + v20);
                  *(v12 + v20++) = v24;
                  --v23;
                }

                while (v23);
              }
            }

            else
            {
              *v14 = v15;
              *v13 = v16;
            }

            v12 += v5;
          }

          while (v13 > result);
        }

        v10 += a3;
        v11 += a3;
      }

      while (v10 < v9);
    }

    return result;
  }

  v26 = a3 >> 3;
  while (2)
  {
    v27 = result + (a2 >> 1) * a3;
    if (a2 == 7)
    {
      goto LABEL_26;
    }

    v31 = result + (a2 - 1) * a3;
    if (a2 < 0x29)
    {
      v33 = result;
      goto LABEL_111;
    }

    v32 = (a2 >> 3) * a3;
    v33 = result + v32;
    v34 = result + 2 * v32;
    v35 = *result;
    v36 = *(result + v32);
    v37 = *(*result + 4);
    v38 = *(v36 + 4);
    if (v37 == v38)
    {
      if (*(v35 + 8) >= *(v36 + 8))
      {
        goto LABEL_34;
      }

LABEL_113:
      v94 = *v34;
      v95 = *(*v34 + 4);
      if (v38 == v95)
      {
        if (*(v36 + 8) < *(v94 + 8))
        {
          goto LABEL_124;
        }
      }

      else if (v38 <= v95)
      {
        goto LABEL_124;
      }

      if (v37 == v95)
      {
        v33 = result + 2 * v32;
        if (*(v35 + 8) < *(v94 + 8))
        {
          goto LABEL_124;
        }
      }

      else
      {
        v33 = result + 2 * v32;
        if (v37 <= v95)
        {
          goto LABEL_124;
        }
      }

      v33 = result;
      goto LABEL_124;
    }

    if (v37 <= v38)
    {
      goto LABEL_113;
    }

LABEL_34:
    v39 = *v34;
    v40 = *(*v34 + 4);
    v41 = v38 > v40;
    if (v38 == v40)
    {
      v41 = *(v36 + 8) > *(v39 + 8);
    }

    if (!v41)
    {
      if (v37 == v40)
      {
        v33 = result;
        if (*(v35 + 8) < *(v39 + 8))
        {
          goto LABEL_124;
        }
      }

      else
      {
        v33 = result;
        if (v37 <= v40)
        {
          goto LABEL_124;
        }
      }

      v33 = result + 2 * v32;
    }

LABEL_124:
    v96 = &v27[-v32];
    v97 = &v27[v32];
    v98 = *&v27[-v32];
    v99 = *v27;
    v100 = *(v98 + 4);
    v101 = *(*v27 + 4);
    if (v100 == v101)
    {
      if (*(v98 + 8) >= *(v99 + 8))
      {
        goto LABEL_126;
      }

LABEL_133:
      v105 = *v97;
      v106 = *(*v97 + 4);
      if (v101 == v106)
      {
        if (*(v99 + 8) < *(v105 + 8))
        {
          goto LABEL_144;
        }
      }

      else if (v101 <= v106)
      {
        goto LABEL_144;
      }

      if (v100 == v106)
      {
        v27 += v32;
        if (*(v98 + 8) < *(v105 + 8))
        {
          goto LABEL_144;
        }
      }

      else
      {
        v27 += v32;
        if (v100 <= v106)
        {
          goto LABEL_144;
        }
      }

      v27 = v96;
      goto LABEL_144;
    }

    if (v100 <= v101)
    {
      goto LABEL_133;
    }

LABEL_126:
    v102 = *v97;
    v103 = *(*v97 + 4);
    v104 = v101 > v103;
    if (v101 == v103)
    {
      v104 = *(v99 + 8) > *(v102 + 8);
    }

    if (!v104)
    {
      if (v100 == v103)
      {
        v27 -= v32;
        if (*(v98 + 8) < *(v102 + 8))
        {
          goto LABEL_144;
        }
      }

      else
      {
        v27 -= v32;
        if (v100 <= v103)
        {
          goto LABEL_144;
        }
      }

      v27 = v97;
    }

LABEL_144:
    v107 = -v32;
    v93 = &v31[-2 * v32];
    v108 = &v31[v107];
    v109 = *v93;
    v110 = *v108;
    v111 = *(*v93 + 4);
    v112 = *(*v108 + 4);
    if (v111 == v112)
    {
      if (*(v109 + 8) >= *(v110 + 8))
      {
        goto LABEL_146;
      }

LABEL_150:
      v115 = *v31;
      v116 = *(*v31 + 4);
      if (v112 == v116)
      {
        if (*(v110 + 8) < *(v115 + 8))
        {
          goto LABEL_161;
        }
      }

      else if (v112 <= v116)
      {
        goto LABEL_161;
      }

      if (v111 == v116)
      {
        if (*(v109 + 8) < *(v115 + 8))
        {
          goto LABEL_111;
        }
      }

      else if (v111 <= v116)
      {
        goto LABEL_111;
      }

      goto LABEL_162;
    }

    if (v111 <= v112)
    {
      goto LABEL_150;
    }

LABEL_146:
    v113 = *v31;
    v114 = *(*v31 + 4);
    if (v112 == v114)
    {
      if (*(v110 + 8) > *(v113 + 8))
      {
        goto LABEL_161;
      }

      goto LABEL_154;
    }

    if (v112 > v114)
    {
LABEL_161:
      v93 = v108;
      goto LABEL_162;
    }

LABEL_154:
    if (v111 == v114)
    {
      if (*(v109 + 8) < *(v113 + 8))
      {
        goto LABEL_162;
      }

LABEL_111:
      v93 = result + (a2 - 1) * a3;
      goto LABEL_162;
    }

    if (v111 > v114)
    {
      goto LABEL_111;
    }

LABEL_162:
    v117 = *v33;
    v118 = *v27;
    v119 = *(*v33 + 4);
    v120 = *(*v27 + 4);
    if (v119 == v120)
    {
      if (*(v117 + 8) >= *(v118 + 8))
      {
        goto LABEL_164;
      }

LABEL_171:
      v124 = *v93;
      v125 = *(*v93 + 4);
      if (v120 == v125)
      {
        if (*(v118 + 8) < *(v124 + 8))
        {
          goto LABEL_26;
        }
      }

      else if (v120 <= v125)
      {
        goto LABEL_26;
      }

      if (v119 == v125)
      {
        v27 = v93;
        if (*(v117 + 8) < *(v124 + 8))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v27 = v93;
        if (v119 <= v125)
        {
          goto LABEL_26;
        }
      }

      v27 = v33;
      goto LABEL_26;
    }

    if (v119 <= v120)
    {
      goto LABEL_171;
    }

LABEL_164:
    v121 = *v93;
    v122 = *(*v93 + 4);
    v123 = v120 > v122;
    if (v120 == v122)
    {
      v123 = *(v118 + 8) > *(v121 + 8);
    }

    if (v123)
    {
      goto LABEL_26;
    }

    if (v119 == v122)
    {
      v27 = v33;
      if (*(v117 + 8) >= *(v121 + 8))
      {
        goto LABEL_179;
      }
    }

    else
    {
      v27 = v33;
      if (v119 > v122)
      {
LABEL_179:
        v27 = v93;
      }
    }

LABEL_26:
    if (v8)
    {
      if (v7)
      {
        v28 = result;
        v29 = a3 >> 3;
        do
        {
          v30 = *v28;
          *v28++ = *v27;
          *v27 = v30;
          v27 += 8;
          --v29;
        }

        while (v29);
      }

      else
      {
        v43 = a3;
        v44 = result;
        do
        {
          v45 = *v44;
          *v44++ = *v27;
          *v27++ = v45;
          --v43;
        }

        while (v43);
      }
    }

    else
    {
      v42 = *result;
      *result = *v27;
      *v27 = v42;
    }

    v46 = 0;
    v47 = result + a3;
    v48 = (result + (a2 - 1) * a3);
    v49 = v48;
    v50 = result + a3;
    v51 = (result + a3);
    while (1)
    {
LABEL_44:
      if (v50 > v49)
      {
        goto LABEL_59;
      }

      v52 = *v50;
      v53 = *(*v50 + 4);
      v54 = *(*result + 4);
      v55 = v53 > v54;
      if (v53 != v54)
      {
        break;
      }

      v56 = *(v52 + 8);
      v57 = *(*result + 8);
      v55 = v56 > v57;
      if (v56 != v57)
      {
        break;
      }

      if (v8)
      {
        v58 = 0;
        if (v7)
        {
          do
          {
            v59 = v51[v58];
            v51[v58] = *&v50[8 * v58];
            *&v50[8 * v58++] = v59;
          }

          while (v26 != v58);
        }

        else
        {
          do
          {
            v60 = *(v51 + v58);
            *(v51 + v58) = v50[v58];
            v50[v58++] = v60;
          }

          while (a3 != v58);
        }
      }

      else
      {
        v73 = *v51;
        *v51 = v52;
        *v50 = v73;
      }

      v51 = (v51 + a3);
      v46 = 1;
LABEL_77:
      v50 += a3;
    }

    if (!v55)
    {
      goto LABEL_77;
    }

LABEL_59:
    while (v50 <= v49)
    {
      v61 = *v49;
      v62 = *(*v49 + 4);
      v63 = *(*result + 4);
      v64 = v62 > v63;
      if (v62 == v63 && (v65 = *(v61 + 8), v66 = *(*result + 8), v64 = v65 > v66, v65 == v66))
      {
        if (v8)
        {
          v67 = 0;
          if (v7)
          {
            do
            {
              v68 = v49[v67];
              v49[v67] = v48[v67];
              v48[v67++] = v68;
            }

            while (v26 != v67);
          }

          else
          {
            do
            {
              v69 = *(v49 + v67);
              *(v49 + v67) = *(v48 + v67);
              *(v48 + v67++) = v69;
            }

            while (a3 != v67);
          }
        }

        else
        {
          *v49 = *v48;
          *v48 = v61;
        }

        v48 = (v48 + v5);
        v46 = 1;
      }

      else if (!v64)
      {
        if (v8)
        {
          v70 = 0;
          if (v7)
          {
            do
            {
              v71 = *&v50[8 * v70];
              *&v50[8 * v70] = v49[v70];
              v49[v70++] = v71;
            }

            while (v26 != v70);
          }

          else
          {
            do
            {
              v72 = v50[v70];
              v50[v70] = *(v49 + v70);
              *(v49 + v70++) = v72;
            }

            while (a3 != v70);
          }
        }

        else
        {
          v74 = *v50;
          *v50 = v61;
          *v49 = v74;
        }

        v50 += a3;
        v49 = (v49 + v5);
        v46 = 1;
        goto LABEL_44;
      }

      v49 = (v49 + v5);
    }

    v75 = result + a2 * a3;
    if (v46)
    {
      v76 = v50 - v51;
      if (v51 - result >= v50 - v51)
      {
        v77 = v50 - v51;
      }

      else
      {
        v77 = v51 - result;
      }

      if (v77)
      {
        if (v7)
        {
          v78 = &v50[-v77];
          v79 = v77 >> 3;
          v80 = result;
          do
          {
            v81 = *v80;
            *v80++ = *v78;
            *v78++ = v81;
            --v79;
          }

          while (v79);
        }

        else
        {
          v82 = -v77;
          v83 = result;
          do
          {
            v84 = *v83;
            *v83++ = v50[v82];
            v50[v82] = v84;
            v85 = __CFADD__(v82++, 1);
          }

          while (!v85);
        }
      }

      v86 = v48 - v49;
      v87 = v75 - (v48 + a3);
      if (v48 - v49 < v87)
      {
        v87 = v48 - v49;
      }

      if (v87)
      {
        if (v7)
        {
          v88 = (v75 - v87);
          v89 = v87 >> 3;
          do
          {
            v90 = *v50;
            *v50 = *v88;
            v50 += 8;
            *v88++ = v90;
            --v89;
          }

          while (v89);
        }

        else
        {
          v91 = -v87;
          do
          {
            v92 = *v50;
            *v50++ = *(v75 + v91);
            *(v75 + v91) = v92;
            v85 = __CFADD__(v91++, 1);
          }

          while (!v85);
        }
      }

      if (v76 > a3)
      {
        result = mrec_qsort_r<EncodeBuildAlphabetCountsUns16Cmp>(result, v76 / a3, a3, a4);
      }

      if (v86 > a3)
      {
        result = (v75 - v86);
        a2 = v86 / a3;
        v7 = (((v75 - v86) | a3) & 7) == 0;
        if ((((v75 - v86) | a3) & 7) != 0)
        {
          v8 = 2;
        }

        else
        {
          v8 = v6;
        }

        if (a2 < 7)
        {
          goto LABEL_5;
        }

        continue;
      }
    }

    else if ((a2 * a3) > a3)
    {
      v126 = result;
      do
      {
        if (v47 > result)
        {
          v127 = v126;
          v128 = v47;
          do
          {
            v129 = v128;
            v128 += v5;
            v130 = *v128;
            v131 = *v129;
            v132 = *(*v128 + 4);
            v133 = *(*v129 + 4);
            v134 = v132 > v133;
            if (v132 == v133)
            {
              v134 = *(v130 + 8) > *(v131 + 8);
            }

            if (!v134)
            {
              break;
            }

            if (v8)
            {
              v135 = 0;
              if (v7)
              {
                v136 = v128;
                do
                {
                  v137 = *(v129 + 8 * v135);
                  *(v129 + 8 * v135) = *v136;
                  *v136++ = v137;
                  ++v135;
                }

                while (v26 != v135);
              }

              else
              {
                v138 = a3;
                do
                {
                  v139 = *(v129 + v135);
                  *(v129 + v135) = *(v127 + v135);
                  *(v127 + v135++) = v139;
                  --v138;
                }

                while (v138);
              }
            }

            else
            {
              *v129 = v130;
              *v128 = v131;
            }

            v127 += v5;
          }

          while (v128 > result);
        }

        v47 += a3;
        v126 += a3;
      }

      while (v47 < v75);
    }

    return result;
  }
}

void ForwardLatticeNodeIterator<WordLatticeLC>::next(void *a1)
{
  v2 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::dequeue((a1 + 3));
  v3 = *a1;
  v4 = *(*(*a1 + 80) + 24 * *(*(*a1 + 16) + 4 * v2) + 20);
  if (v4 != -2)
  {
    v5 = *(v3 + 128);
    do
    {
      v6 = *(*(v3 + 80) + 24 * *(v5 + 136 * v4 + 120));
      v7 = a1[1];
      v8 = *(v7 + 4 * v6) - 1;
      *(v7 + 4 * v6) = v8;
      if (!v8)
      {
        DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue((a1 + 3), v6);
        v3 = *a1;
        v5 = *(*a1 + 128);
      }

      v4 = *(v5 + 136 * v4 + 128);
    }

    while (v4 != -2);
  }
}

void WordLattice::~WordLattice(WordLattice *this)
{
  *this = &unk_287528E60;
  v2 = this + 224;
  DgnString::~DgnString(this + 272);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  Lattice<WordLatticeLC>::~Lattice(this);
}

{
  WordLattice::~WordLattice(this);

  JUMPOUT(0x26672B1B0);
}

void *Lattice<WordLatticeLC>::~Lattice(void *a1)
{
  *a1 = &unk_2875239D8;
  v2 = a1 + 16;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 22));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 20));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 18));
  DgnArray<LatticeLink<WordLatticeLC>>::releaseAll(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 14));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 12));
  DgnIArray<Utterance *>::~DgnIArray((a1 + 10));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 8));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 4));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 2));
  return a1;
}

void *DgnArray<LatticeLink<WordLatticeLC>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 136 * v2 - 136;
    do
    {
      WordLatticeLC::~WordLatticeLC((*a1 + v3));
      v3 -= 136;
    }

    while (v3 != -136);
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

uint64_t ForwardLatticeNodeIterator<WordLatticeLC>::ForwardLatticeNodeIterator(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = 0;
    *(a1 + 8) = MemChunkAlloc(4 * v4, 0);
    *(a1 + 16) = v4;
    do
    {
      v6 = *(*a1 + 16);
      v7 = *(*a1 + 80);
      v8 = *(v7 + 24 * *(v6 + 4 * v5) + 8);
      *(*(a1 + 8) + 4 * v5) = v8;
      if (!v8)
      {
        DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue(v3, *(v7 + 24 * *(v6 + 4 * v5)));
      }

      ++v5;
    }

    while (v5 < *(a1 + 16));
  }

  return a1;
}

void sub_262769E24(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1);
  _Unwind_Resume(a1);
}

void MrecInitModule_lexnet_prefilt(void)
{
  if (!gParDebugShowPrefiltererStats)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowPrefiltererStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowPrefiltererStats = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPrefiltererStats);
  }

  if (!gParDebugPrefiltererProcessing)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugPrefiltererProcessing", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugPrefiltererProcessing = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPrefiltererProcessing);
  }

  if (!gParDebugShowPrefiltererBestActiveSeqs)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowPrefiltererBestActiveSeqs", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowPrefiltererBestActiveSeqs = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPrefiltererBestActiveSeqs);
  }

  if (!gParDebugShowPrefiltererEarliestTheory)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugShowPrefiltererEarliestTheory", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugShowPrefiltererEarliestTheory = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDebugShowPrefiltererEarliestTheory);
  }
}

void HmmDurationPenalties::initDurationsLookups(HmmDurationPenalties *this, double a2)
{
  *(this + 1) = a2;
  if (a2 <= 0.0)
  {
    *(this + 4) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  else
  {
    *(this + 4) = 25;
    v3 = DgnExp(-25.5 / a2);
    v4.f64[0] = 1.0 - v3;
    v4.f64[1] = v3;
    __asm { FMOV            V0.2D, #1.0 }

    *(this + 24) = vdivq_f64(_Q0, v4);
    v10 = *(this + 4);
    v11 = (v10 + 1);
    v12 = *(this + 13);
    if (v11 > v12)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 40, v11 - v12, 0);
    }

    *(this + 12) = v11;
    v13 = *(this + 17);
    if (v11 > v13)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 56, v11 - v13, 0);
    }

    *(this + 16) = v11;
    if (v10 <= 0x7FFFFFFE)
    {
      v14 = v11 - 1;
      do
      {
        v15 = DgnExp(-(v14 + 0.5) / *(this + 1));
        *(*(this + 5) + 8 * v14) = 1.0 / v15;
        *(*(this + 7) + 8 * v14) = 1.0 / (1.0 - v15);
        v16 = v14-- + 1;
      }

      while (v16 > 1);
    }

    v17 = *(this + 21);
    if (v11 > v17)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 72, v11 - v17, 0);
    }

    *(this + 20) = v11;
    if (v10 <= 0x7FFFFFFE)
    {
      v18 = 0;
      v19 = *(this + 5);
      v20 = *(this + 9);
      do
      {
        v21 = v18;
        v22 = *(this + 12);
        if (v22 <= v21 + 1)
        {
          v22 = v21 + 1;
        }

        v18 = v22 - 1;
        while (v18 != v21)
        {
          v23 = v21 + 1;
          v24 = *(*(this + 7) + 8 * v21++);
          if (*(v19 + 8 * v10) >= v24)
          {
            v18 = v23 - 1;
            break;
          }
        }

        *(v20 + 4 * v10) = v18;
      }

      while (v10-- > 0);
    }
  }

  *this = 1;
}

uint64_t HmmDurationPenalties::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned long long>(a1 + 40, a2);
  v5 = sizeObject<unsigned long long>(a1 + 56, a2);
  v6 = sizeObject<unsigned int>(a1 + 72, a2);
  v7 = 24;
  if (a2 == 3)
  {
    v7 = 0;
  }

  return (v7 | (a2 != 3) | (4 * (a2 != 3))) + v4 + v5 + v6;
}

uint64_t PrefStats::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 72;
  }
}

double PrefStats::resetStats(PrefStats *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

__n128 PrefStats::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

int32x4_t PrefStats::operator-=(uint64_t a1, uint64_t a2)
{
  *a1 -= *a2;
  *(a1 + 8) = vsubq_s64(*(a1 + 8), *(a2 + 8));
  *(a1 + 24) = vsubq_s64(*(a1 + 24), *(a2 + 24));
  *(a1 + 40) = vsubq_s64(*(a1 + 40), *(a2 + 40));
  result = vsubq_s32(*(a1 + 56), *(a2 + 56));
  *(a1 + 56) = result;
  *(a1 + 72) -= *(a2 + 72);
  return result;
}

void LexTreeNetScorer::LexTreeNetScorer(LexTreeNetScorer *this)
{
  *(this + 64) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  v2 = this + 151340;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 220) = 0xF0000000FLL;
  *(this + 57) = 0;
  *(this + 9461) = 0u;
  v3 = this + 151376;
  *(this + 9469) = 0u;
  *(this + 9462) = 0u;
  *(this + 9463) = 0u;
  *(this + 9464) = 0u;
  *(this + 9465) = 0u;
  *(this + 9466) = 0u;
  ReturnListMgr::ReturnListMgr((this + 151520));
  *(this + 9488) = 0u;
  *(this + 9489) = 0u;
  *(this + 9486) = 0u;
  *(this + 9487) = 0u;
  *(this + 9484) = 0u;
  *(this + 9485) = 0u;
  *(this + 9482) = 0u;
  *(this + 9483) = 0u;
  PelStats::resetStats((this + 151672));
  *(v2 + 127) = 0;
  *(this + 9491) = 0u;
  *(this + 9492) = 0u;
  *(this + 9493) = 0u;
  *(this + 9494) = 0u;
  *(this + 37980) = 0;
  *(this + 9498) = 0u;
  *(this + 9499) = 0u;
  *(this + 9500) = 0u;
  *(this + 9501) = 0u;
  *(this + 9502) = 0u;
  *(this + 9503) = 0u;
  *(this + 9504) = 0u;
  *(this + 9505) = 0u;
  PelStats::resetStats((this + 151928));
  *(v2 + 191) = 0;
  *(this + 9507) = 0u;
  *(this + 9508) = 0u;
  *(this + 9509) = 0u;
  *(this + 9510) = 0u;
  *(this + 38044) = 0;
  v2[300] = 0;
  *(this + 18956) = 0;
  *(this + 151656) = 0u;
  *(v2 + 3) = -1;
  *(this + 9460) = 0u;
  v4 = *(v2 + 11);
  if (v4 == *(v2 + 12))
  {
    DgnPrimArray<unsigned int>::reallocElts(v3, 1, 1);
    v4 = *(v2 + 11);
  }

  v5 = *(v2 + 36);
  *(v5 + 4 * v4) = 0;
  v6 = *(v2 + 11) + 1;
  *(v2 + 11) = v6;
  for (i = 35; i != 2585; i += 10)
  {
    if (v6 == *(v2 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(v3, 1, 1);
      v6 = *(v2 + 11);
      v5 = *(v2 + 36);
    }

    *(v5 + 4 * v6) = i & 0x1FFC;
    v6 = *(v2 + 11) + 1;
    *(v2 + 11) = v6;
  }

  *(v2 + 33) = 0;
  *(v2 + 140) = 0;
  v2[148] = 0;
  *(v2 + 156) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 62) = 0;
  *(this + 30) = 0xFFFF00000000;
  *(this + 32) = 0x4E2000000000;
  *(this + 126) = -1;
  bzero(this + 264, 0x24E24uLL);
  *v2 = 20000;
  *(v2 + 2) = 0;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
}

void sub_26276A544(_Unwind_Exception *a1)
{
  ReturnListMgr::~ReturnListMgr((v1 + v5));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 151456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 151440);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 151424);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 151408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 151392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 152);
  HmmDurationPenalties::~HmmDurationPenalties(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void LexTreeNetScorer::~LexTreeNetScorer(LexTreeNetScorer *this)
{
  ReturnListMgr::~ReturnListMgr((this + 151520));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 151504);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 151456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 151440);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 151424);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 151408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 151392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 151376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);

  DgnPrimArray<unsigned int>::~DgnPrimArray(this);
}

void LexTreeNetScorer::printSize(LexTreeNetScorer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 600);
  if (v207)
  {
    v13 = v206;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  v203 = a6;
  DgnString::~DgnString(&v206);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v15 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 12;
  }

  v16 = *(this + 2);
  v17 = *(this + 3);
  v18 = v15 + 4 * (v16 - 1) + 4;
  if (v16 <= 0)
  {
    v18 = v15;
  }

  if (v17 >= v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = v15;
  }

  if (v17 >= v16)
  {
    v20 = v18 + 4 * (v17 - v16);
  }

  else
  {
    v20 = v15;
  }

  v21 = this;
  if (v17 >= v16)
  {
    v22 = 0;
  }

  else
  {
    v22 = 4 * v16;
  }

  v23 = (a3 + 1);
  v202 = a3;
  v24 = (34 - a3);
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 601);
  if (v207)
  {
    v26 = v206;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v23, &byte_262899963, v24, v24, v26, v20, v19, v22);
  DgnString::~DgnString(&v206);
  *a4 += v20;
  *a5 += v19;
  *v203 += v22;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 12;
  }

  else
  {
    v27 = 16;
  }

  v28 = v21[6];
  v29 = v21[7];
  if (v29 >= v28)
  {
    v30 = 0;
    if (v28 > 0)
    {
      v27 += 4 * (v28 - 1) + 4;
    }

    v31 = v27 + 4 * (v29 - v28);
  }

  else
  {
    v30 = 4 * v28;
    v31 = v27;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 603);
  if (v207)
  {
    v33 = v206;
  }

  else
  {
    v33 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v23, &byte_262899963, v24, v24, v33, v31, v27, v30);
  DgnString::~DgnString(&v206);
  *a4 += v31;
  *a5 += v27;
  *v203 += v30;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 605);
  if (v207)
  {
    v35 = v206;
  }

  else
  {
    v35 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v23, &byte_262899963, v24, v24, v35, 1, 1, 0);
  DgnString::~DgnString(&v206);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 607);
  if (v207)
  {
    v37 = v206;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v23, &byte_262899963, v24, v24, v37, 1, 1, 0);
  DgnString::~DgnString(&v206);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 609);
  if (v207)
  {
    v39 = v206;
  }

  else
  {
    v39 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v23, &byte_262899963, v24, v24, v39, 8, 8, 0);
  DgnString::~DgnString(&v206);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 610);
  if (v207)
  {
    v41 = v206;
  }

  else
  {
    v41 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v23, &byte_262899963, v24, v24, v41, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 612);
  if (v207)
  {
    v43 = v206;
  }

  else
  {
    v43 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v23, &byte_262899963, v24, v24, v43, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 614);
  if (v207)
  {
    v45 = v206;
  }

  else
  {
    v45 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v23, &byte_262899963, v24, v24, v45, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 616);
  if (v207)
  {
    v47 = v206;
  }

  else
  {
    v47 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v23, &byte_262899963, v24, v24, v47, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  v48 = HmmDurationPenalties::sizeObject((v21 + 16), 0);
  v49 = HmmDurationPenalties::sizeObject((v21 + 16), 1);
  v50 = HmmDurationPenalties::sizeObject((v21 + 16), 3);
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 617);
  if (v207)
  {
    v52 = v206;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v23, &byte_262899963, v24, v24, v52, v48, v49, v50);
  DgnString::~DgnString(&v206);
  *a4 += v48;
  *a5 += v49;
  *v203 += v50;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  else
  {
    v53 = 16;
  }

  v54 = v21[40];
  v55 = v21[41];
  if (v55 >= v54)
  {
    v56 = 0;
    if (v54 > 0)
    {
      v53 += 6 * (v54 - 1) + 6;
    }

    v57 = v53 + 6 * (v55 - v54);
  }

  else
  {
    v56 = 6 * v54;
    v57 = v53;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 619);
  if (v207)
  {
    v59 = v206;
  }

  else
  {
    v59 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v23, &byte_262899963, v24, v24, v59, v57, v53, v56);
  DgnString::~DgnString(&v206);
  *a4 += v57;
  *a5 += v53;
  *v203 += v56;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v60 = 12;
  }

  else
  {
    v60 = 16;
  }

  v61 = v21[44];
  v62 = v21[45];
  if (v62 >= v61)
  {
    v63 = 0;
    if (v61 > 0)
    {
      v60 += 2 * (v61 - 1) + 2;
    }

    v64 = v60 + 2 * (v62 - v61);
  }

  else
  {
    v63 = 2 * v61;
    v64 = v60;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 620);
  if (v207)
  {
    v66 = v206;
  }

  else
  {
    v66 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v23, &byte_262899963, v24, v24, v66, v64, v60, v63);
  DgnString::~DgnString(&v206);
  *a4 += v64;
  *a5 += v60;
  *v203 += v63;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v67 = 12;
  }

  else
  {
    v67 = 16;
  }

  v68 = v21[48];
  v69 = v21[49];
  if (v69 >= v68)
  {
    v70 = 0;
    if (v68 > 0)
    {
      v67 += 4 * (v68 - 1) + 4;
    }

    v71 = v67 + 4 * (v69 - v68);
  }

  else
  {
    v70 = 4 * v68;
    v71 = v67;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 622);
  if (v207)
  {
    v73 = v206;
  }

  else
  {
    v73 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v23, &byte_262899963, v24, v24, v73, v71, v67, v70);
  DgnString::~DgnString(&v206);
  *a4 += v71;
  *a5 += v67;
  *v203 += v70;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 624);
  if (v207)
  {
    v75 = v206;
  }

  else
  {
    v75 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v23, &byte_262899963, v24, v24, v75, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 626);
  if (v207)
  {
    v77 = v206;
  }

  else
  {
    v77 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v23, &byte_262899963, v24, v24, v77, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 628);
  if (v207)
  {
    v79 = v206;
  }

  else
  {
    v79 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v23, &byte_262899963, v24, v24, v79, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 630);
  if (v207)
  {
    v81 = v206;
  }

  else
  {
    v81 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v23, &byte_262899963, v24, v24, v81, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 631);
  if (v207)
  {
    v83 = v206;
  }

  else
  {
    v83 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v23, &byte_262899963, v24, v24, v83, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 632);
  if (v207)
  {
    v85 = v206;
  }

  else
  {
    v85 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v23, &byte_262899963, v24, v24, v85, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 634);
  if (v207)
  {
    v87 = v206;
  }

  else
  {
    v87 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v23, &byte_262899963, v24, v24, v87, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 636);
  if (v207)
  {
    v89 = v206;
  }

  else
  {
    v89 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v23, &byte_262899963, v24, v24, v89, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 637);
  if (v207)
  {
    v91 = v206;
  }

  else
  {
    v91 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v23, &byte_262899963, v24, v24, v91, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 639);
  if (v207)
  {
    v93 = v206;
  }

  else
  {
    v93 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v23, &byte_262899963, v24, v24, v93, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 641);
  if (v207)
  {
    v95 = v206;
  }

  else
  {
    v95 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v23, &byte_262899963, v24, v24, v95, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 642);
  if (v207)
  {
    v97 = v206;
  }

  else
  {
    v97 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v23, &byte_262899963, v24, v24, v97, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 650);
  if (v207)
  {
    v99 = v206;
  }

  else
  {
    v99 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v23, &byte_262899963, v24, v24, v99, 2, 2, 0);
  DgnString::~DgnString(&v206);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 652);
  if (v207)
  {
    v101 = v206;
  }

  else
  {
    v101 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v23, &byte_262899963, v24, v24, v101, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 654);
  if (v207)
  {
    v103 = v206;
  }

  else
  {
    v103 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v23, &byte_262899963, v24, v24, v103, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 673);
  if (v207)
  {
    v105 = v206;
  }

  else
  {
    v105 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v104, v23, &byte_262899963, v24, v24, v105, 151072, 151072, 0);
  DgnString::~DgnString(&v206);
  *a4 += 151072;
  *a5 += 151072;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 675);
  if (v207)
  {
    v107 = v206;
  }

  else
  {
    v107 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v23, &byte_262899963, v24, v24, v107, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 677);
  if (v207)
  {
    v109 = v206;
  }

  else
  {
    v109 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v23, &byte_262899963, v24, v24, v109, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 678);
  if (v207)
  {
    v111 = v206;
  }

  else
  {
    v111 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v23, &byte_262899963, v24, v24, v111, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 679);
  if (v207)
  {
    v113 = v206;
  }

  else
  {
    v113 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v23, &byte_262899963, v24, v24, v113, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 680);
  if (v207)
  {
    v115 = v206;
  }

  else
  {
    v115 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v23, &byte_262899963, v24, v24, v115, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v116 = 4;
  }

  else
  {
    v116 = 8;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 681);
  if (v207)
  {
    v118 = v206;
  }

  else
  {
    v118 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v23, &byte_262899963, v24, v24, v118, v116, v116, 0);
  DgnString::~DgnString(&v206);
  *a4 += v116;
  *a5 += v116;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v119 = 4;
  }

  else
  {
    v119 = 8;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 682);
  if (v207)
  {
    v121 = v206;
  }

  else
  {
    v121 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v120, v23, &byte_262899963, v24, v24, v121, v119, v119, 0);
  DgnString::~DgnString(&v206);
  *a4 += v119;
  *a5 += v119;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v122 = 12;
  }

  else
  {
    v122 = 16;
  }

  v123 = v21[37846];
  v124 = v21[37847];
  if (v124 >= v123)
  {
    v125 = 0;
    if (v123 > 0)
    {
      v122 += 4 * (v123 - 1) + 4;
    }

    v126 = v122 + 4 * (v124 - v123);
  }

  else
  {
    v125 = 4 * v123;
    v126 = v122;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 684);
  if (v207)
  {
    v128 = v206;
  }

  else
  {
    v128 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v23, &byte_262899963, v24, v24, v128, v126, v122, v125);
  DgnString::~DgnString(&v206);
  *a4 += v126;
  *a5 += v122;
  *v203 += v125;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v129 = 12;
  }

  else
  {
    v129 = 16;
  }

  v130 = v21[37850];
  v131 = v21[37851];
  if (v131 >= v130)
  {
    v132 = 0;
    if (v130 > 0)
    {
      v129 += 4 * (v130 - 1) + 4;
    }

    v133 = v129 + 4 * (v131 - v130);
  }

  else
  {
    v132 = 4 * v130;
    v133 = v129;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 686);
  if (v207)
  {
    v135 = v206;
  }

  else
  {
    v135 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v134, v23, &byte_262899963, v24, v24, v135, v133, v129, v132);
  DgnString::~DgnString(&v206);
  *a4 += v133;
  *a5 += v129;
  *v203 += v132;
  v136 = sizeObject<DgnPrimArray<unsigned char>>((v21 + 37852), 0);
  v137 = sizeObject<DgnPrimArray<unsigned char>>((v21 + 37852), 1);
  v206 = 0;
  v207 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v206);
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 688);
  if (v207)
  {
    v139 = v206;
  }

  else
  {
    v139 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v138, v23, &byte_262899963, v24, v24, v139, v136, v137, 0);
  DgnString::~DgnString(&v206);
  *a4 += v136;
  *a5 += v137;
  v140 = sizeObject<DgnPrimArray<unsigned int>>((v21 + 37856), 0);
  v141 = sizeObject<DgnPrimArray<unsigned int>>((v21 + 37856), 1);
  v206 = 0;
  v207 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v206);
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 690);
  if (v207)
  {
    v143 = v206;
  }

  else
  {
    v143 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v142, v23, &byte_262899963, v24, v24, v143, v140, v141, 0);
  DgnString::~DgnString(&v206);
  *a4 += v140;
  *a5 += v141;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v144 = 12;
  }

  else
  {
    v144 = 16;
  }

  v145 = v21[37862];
  v146 = v21[37863];
  if (v146 >= v145)
  {
    v147 = 0;
    if (v145 > 0)
    {
      v144 += 4 * (v145 - 1) + 4;
    }

    v148 = v144 + 4 * (v146 - v145);
  }

  else
  {
    v147 = 4 * v145;
    v148 = v144;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 691);
  if (v207)
  {
    v150 = v206;
  }

  else
  {
    v150 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v23, &byte_262899963, v24, v24, v150, v148, v144, v147);
  DgnString::~DgnString(&v206);
  *a4 += v148;
  *a5 += v144;
  *v203 += v147;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v151 = 12;
  }

  else
  {
    v151 = 16;
  }

  v152 = v21[37866];
  v153 = v21[37867];
  if (v153 >= v152)
  {
    v154 = 0;
    if (v152 > 0)
    {
      v151 += 4 * (v152 - 1) + 4;
    }

    v155 = v151 + 4 * (v153 - v152);
  }

  else
  {
    v154 = 4 * v152;
    v155 = v151;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 693);
  if (v207)
  {
    v157 = v206;
  }

  else
  {
    v157 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v156, v23, &byte_262899963, v24, v24, v157, v155, v151, v154);
  DgnString::~DgnString(&v206);
  *a4 += v155;
  *a5 += v151;
  *v203 += v154;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 695);
  if (v207)
  {
    v159 = v206;
  }

  else
  {
    v159 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v158, v23, &byte_262899963, v24, v24, v159, 4, 4, 0);
  DgnString::~DgnString(&v206);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v160 = 4;
  }

  else
  {
    v160 = 8;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 697);
  if (v207)
  {
    v162 = v206;
  }

  else
  {
    v162 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v161, v23, &byte_262899963, v24, v24, v162, v160, v160, 0);
  DgnString::~DgnString(&v206);
  *a4 += v160;
  *a5 += v160;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 699);
  if (v207)
  {
    v164 = v206;
  }

  else
  {
    v164 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v23, &byte_262899963, v24, v24, v164, 1, 1, 0);
  DgnString::~DgnString(&v206);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v165 = 4;
  }

  else
  {
    v165 = 8;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 701);
  if (v207)
  {
    v167 = v206;
  }

  else
  {
    v167 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v166, v23, &byte_262899963, v24, v24, v167, v165, v165, 0);
  DgnString::~DgnString(&v206);
  *a4 += v165;
  *a5 += v165;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v168 = 12;
  }

  else
  {
    v168 = 16;
  }

  v169 = v21[37878];
  v170 = v21[37879];
  if (v170 >= v169)
  {
    v171 = 0;
    if (v169 > 0)
    {
      v168 += 4 * (v169 - 1) + 4;
    }

    v172 = v168 + 4 * (v170 - v169);
  }

  else
  {
    v171 = 4 * v169;
    v172 = v168;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 703);
  if (v207)
  {
    v174 = v206;
  }

  else
  {
    v174 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v173, v23, &byte_262899963, v24, v24, v174, v172, v168, v171);
  DgnString::~DgnString(&v206);
  *a4 += v172;
  *a5 += v168;
  *v203 += v171;
  v206 = 0;
  v204 = 0;
  v205 = 0;
  ReturnListMgr::printSize((v21 + 37880), 0xFFFFFFFFLL, v23, &v206, &v205, &v204);
  *a4 += v206;
  *a5 += v205;
  *v203 += v204;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 706);
  if (v207)
  {
    v176 = v206;
  }

  else
  {
    v176 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v175, v23, &byte_262899963, v24, v24, v176, 1, 1, 0);
  DgnString::~DgnString(&v206);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v177 = 4;
  }

  else
  {
    v177 = 8;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 707);
  if (v207)
  {
    v179 = v206;
  }

  else
  {
    v179 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v178, v23, &byte_262899963, v24, v24, v179, v177, v177, 0);
  DgnString::~DgnString(&v206);
  *a4 += v177;
  *a5 += v177;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v180 = 4;
  }

  else
  {
    v180 = 8;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 708);
  if (v207)
  {
    v182 = v206;
  }

  else
  {
    v182 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v181, v23, &byte_262899963, v24, v24, v182, v180, v180, 0);
  DgnString::~DgnString(&v206);
  *a4 += v180;
  *a5 += v180;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v183 = 4;
  }

  else
  {
    v183 = 8;
  }

  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 709);
  if (v207)
  {
    v185 = v206;
  }

  else
  {
    v185 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v184, v23, &byte_262899963, v24, v24, v185, v183, v183, 0);
  DgnString::~DgnString(&v206);
  *a4 += v183;
  *a5 += v183;
  v186 = PelStats::sizeObject((v21 + 37918), 0);
  v187 = PelStats::sizeObject((v21 + 37918), 1);
  v188 = PelStats::sizeObject((v21 + 37918), 3);
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 723);
  if (v207)
  {
    v190 = v206;
  }

  else
  {
    v190 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v189, v23, &byte_262899963, v24, v24, v190, v186, v187, v188);
  DgnString::~DgnString(&v206);
  *a4 += v186;
  *a5 += v187;
  *v203 += v188;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 724);
  if (v207)
  {
    v192 = v206;
  }

  else
  {
    v192 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v191, v23, &byte_262899963, v24, v24, v192, 72, 72, 0);
  DgnString::~DgnString(&v206);
  *a4 += 72;
  *a5 += 72;
  v193 = PelStats::sizeObject((v21 + 37982), 0);
  v194 = PelStats::sizeObject((v21 + 37982), 1);
  v195 = PelStats::sizeObject((v21 + 37982), 3);
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 726);
  if (v207)
  {
    v197 = v206;
  }

  else
  {
    v197 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v196, v23, &byte_262899963, v24, v24, v197, v193, v194, v195);
  DgnString::~DgnString(&v206);
  *a4 += v193;
  *a5 += v194;
  *v203 += v195;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 728);
  if (v207)
  {
    v199 = v206;
  }

  else
  {
    v199 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v198, v23, &byte_262899963, v24, v24, v199, 72, 72, 0);
  DgnString::~DgnString(&v206);
  *a4 += 72;
  *a5 += 72;
  getShipObjectSizeDescription(&v206, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 729);
  if (v207)
  {
    v201 = v206;
  }

  else
  {
    v201 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v200, v202, &byte_262899963, (35 - v202), (35 - v202), v201, *a4, *a5, *v203);
  DgnString::~DgnString(&v206);
}