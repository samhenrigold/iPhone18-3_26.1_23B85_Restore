uint64_t sizeObject<LatticeLink<WordLatticeLC>>(uint64_t a1, int a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 1879048192;
  v14 = 0;
  v15 = -1;
  v16[1] = 0x3FFF;
  v17 = xmmword_26286CC40;
  v4 = sizeObject(v16, 2);
  v5 = sizeObject(&v12[8], 2);
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v6 = 12;
  }

  else
  {
    v6 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v7 = v5;
    v8 = *(a1 + 8);
    if (v8 >= 1)
    {
      v9 = v8 + 1;
      v10 = 136 * v8 - 136;
      do
      {
        v6 += sizeObject(*a1 + v10, a2) + 20;
        --v9;
        v10 -= 136;
      }

      while (v9 > 1);
    }

    if (!a2)
    {
      v6 += (v4 + v7 + 56) * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v6;
}

uint64_t *DgnArray<LinkSegment>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
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
    result = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 2);
  }

  v11 = a4;
  v10 = v9;
  do
  {
    v12 = *a2 + 28 * a3;
    v13 = *v7 + 28 * v10;
    v14 = *v12;
    *(v13 + 8) = *(v12 + 8);
    *v13 = v14;
    *(v13 + 10) = *(v12 + 10);
    *(v13 + 11) = *(v12 + 11);
    *(v13 + 12) = *(v12 + 12);
    *(v13 + 16) = *(v12 + 16);
    *(v13 + 20) = *(v12 + 20);
    v10 = *(v7 + 2) + 1;
    *(v7 + 2) = v10;
    ++a3;
    --v11;
  }

  while (v11);
LABEL_6:
  if (v10 < a4)
  {
    v15 = a4 - v10;
    v16 = 28 * v10;
    do
    {
      v17 = *v7 + v16;
      *v17 = -1;
      *(v17 + 8) = 0xFFFF;
      *(v17 + 20) = -16;
      v16 += 28;
      --v15;
    }

    while (v15);
  }

  *(v7 + 2) = a4;
  return result;
}

void *DgnIOwnArray<DgnPriorityQueue<LatticePath> *>::destructAt(void *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<DgnPriorityQueue<LatticePath>>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

uint64_t DgnHeap<LatticePath>::insert(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4;
  if (v4 == *(a1 + 12))
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
    v5 = *(a1 + 8);
  }

  *(*a1 + 8 * v5) = 0;
  *(a1 + 8) = v5 + 1;
  *(*a1 + 8 * v4) = a2;

  return DgnHeap<LatticePath>::heapifyUp(a1, v4);
}

uint64_t DgnHeap<LatticePath>::heapifyUp(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8 * a2);
  if (a2 < 1)
  {
LABEL_9:
    v5 = a2;
  }

  else
  {
    v4 = *(v3 + 8);
    v5 = a2;
    do
    {
      a2 = v5;
      v5 = ((v5 + 1) >> 1) - 1;
      v2 = *a1;
      v6 = *(*a1 + 8 * v5);
      v7 = *(v6 + 8);
      if (v4 == v7)
      {
        if (*v3 >= *v6)
        {
          goto LABEL_9;
        }
      }

      else if (v4 >= v7)
      {
        goto LABEL_9;
      }

      *(v2 + 8 * a2) = v6;
    }

    while (a2 > 2);
    v2 = *a1;
    a2 = v5;
  }

  *(v2 + 8 * v5) = v3;
  return a2;
}

void DgnPriorityQueue<LatticePath>::~DgnPriorityQueue(uint64_t a1)
{
  for (; *(a1 + 64); *(a1 + 8) = Min)
  {
    Min = DgnHeap<LatticePath>::extractMin((a1 + 56));
    *Min = *(a1 + 8);
  }

  DgnIArray<Utterance *>::~DgnIArray(a1 + 56);

  DgnPool::~DgnPool(a1);
}

uint64_t DgnHeap<LatticePath>::extractMin(uint64_t **a1)
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
    DgnHeap<LatticePath>::heapifyDown(a1, 0);
  }

  return v2;
}

uint64_t DgnHeap<LatticePath>::heapifyDown(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = (2 * a2) | 1u;
    if (v3 >= v2)
    {
      goto LABEL_7;
    }

    v4 = *(*a1 + 8 * v3);
    v5 = *(*a1 + 8 * a2);
    v6 = *(v4 + 8);
    v7 = *(v5 + 8);
    if (v6 != v7)
    {
      if (v6 < v7)
      {
        goto LABEL_8;
      }

LABEL_7:
      v3 = a2;
      goto LABEL_8;
    }

    if (*v4 >= *v5)
    {
      goto LABEL_7;
    }

LABEL_8:
    v8 = (2 * a2 + 2);
    if (v8 >= v2)
    {
      goto LABEL_13;
    }

    v9 = *(*a1 + 8 * v8);
    v10 = *(*a1 + 8 * v3);
    v11 = *(v9 + 8);
    v12 = *(v10 + 8);
    if (v11 != v12)
    {
      if (v11 < v12)
      {
        goto LABEL_14;
      }

LABEL_13:
      v8 = v3;
      goto LABEL_14;
    }

    if (*v9 >= *v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v8 == a2)
    {
      return a2;
    }

    v13 = *(*a1 + 8 * a2);
    *(*a1 + 8 * a2) = *(*a1 + 8 * v8);
    *(*a1 + 8 * v8) = v13;
    a2 = v8;
  }
}

void *DgnIOwnArray<DgnPriorityQueue<LatticePath> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnPriorityQueue<LatticePath>>(*(*a1 + v3));
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

uint64_t BackwardLatticeNodeIterator<WordLatticeLC>::BackwardLatticeNodeIterator(uint64_t a1, uint64_t a2)
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
      v8 = *(v7 + 24 * *(v6 + 4 * v5) + 12);
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

void sub_26282EC1C(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1);
  _Unwind_Resume(a1);
}

uint64_t Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875241A8;
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
  v7 = gShadowDiagnosticShowIdealizedObjectSizes;
  v8 = sizeObject(&v12, 2);
  v9 = sizeObject(&v13, 2);
  if (v7)
  {
    v10 = 8;
  }

  else
  {
    v10 = 12;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v10 + v8 + v9;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  return a1;
}

void sub_26282ED44(_Unwind_Exception *a1)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::~Hash(uint64_t a1)
{
  Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_2875241A8;
  if (*(a1 + 8))
  {
    Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

void Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::removeAll(uint64_t a1)
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
            v8(v5 + 20);
          }

          MrecInitModule_sdpres_sdapi();
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

__n128 HmmNet::HmmNet(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  *a1 = &unk_287523C08;
  *(a1 + 8) = a2;
  *(a1 + 16) = *a3;
  *(a1 + 20) = *(a3 + 4);
  result = *(a3 + 8);
  *(a1 + 24) = result;
  *(a1 + 40) = a4;
  *(a1 + 44) = a5;
  *(a1 + 48) = a6;
  *(a1 + 52) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x4E204E2000000000;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 112) = 0;
  *(a1 + 114) = 0;
  return result;
}

uint64_t HmmNet::sizeofOutPorts(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 8;
  }

  else
  {
    result = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v4 = *(a1 + 80);
    v5 = 2;
    if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
    {
      v5 = 3;
    }

    result += v4 << v5;
  }

  return result;
}

uint64_t HmmNet::sizeObject(_DWORD *a1, uint64_t a2)
{
  v4 = sizeObject((a1 + 4), a2);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  else
  {
    v5 = 8;
  }

  active = sizeObject<ActiveWord *>((a1 + 14), a2);
  v7 = (*(*a1 + 288))(a1, a2);
  if (a2 == 3)
  {
    v5 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 8;
    if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
    {
      v9 = 12;
    }

    v10 = a1[24];
    if (v10 >= 1)
    {
      v11 = (v10 - 1) + v9 + 1;
    }

    else
    {
      v11 = v9;
    }

    v8 = 24;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v9 = v11;
    }
  }

  return ((a2 != 3) | (2 * (a2 != 3))) + v4 + active + v5 + v9 + v8 + v7;
}

uint64_t HmmNet::unpackNonAcoustic(HmmNet *this)
{
  (*(*this + 136))(this, 1);
  v5 = 0;
  v6 = 0;
  (*(*this + 240))(this, &v6, &v5);
  v2 = HmmNet::newInPort(this);
  (*(*this + 160))(this, v2, v6);
  v3 = *(this + 9);
  if (*(this + 13))
  {
    *v3 = v5;
  }

  else
  {
    PredStruct::addPred((*v3 + 16), v5);
  }

  return v2;
}

uint64_t HmmNet::unpackEmbeddedFst(HmmNet *this)
{
  (*(*this + 136))(this, 1);
  v5 = 0;
  v6 = 0;
  (*(*this + 248))(this, &v6, &v5);
  v2 = HmmNet::newInPort(this);
  (*(*this + 160))(this, v2, v6);
  v3 = *(this + 9);
  if (*(this + 13))
  {
    *v3 = v5;
  }

  else
  {
    PredStruct::addPred((*v3 + 16), v5);
  }

  return v2;
}

uint64_t HmmNet::unpackSilence(HmmNet *this)
{
  (*(*this + 136))(this, 1);
  v6 = 0;
  v7 = 0;
  v8 = 16842752;
  v5 = 0;
  (*(*this + 208))(this, &v7, 1, &v6, &v5, 2);
  v2 = HmmNet::newInPort(this);
  (*(*this + 160))(this, v2, v6);
  v3 = *(this + 9);
  if (*(this + 13))
  {
    *v3 = v5;
  }

  else
  {
    PredStruct::addPred((*v3 + 16), v5);
  }

  return v2;
}

uint64_t HmmNet::unpackNoCoart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 136))(a1, 2);
  v6 = (*(*a1 + 216))(a1);
  v10 = 0;
  v11 = 0;
  (*(*a1 + 208))(a1, a2, a3, &v11, &v10, 2);
  (*(*a1 + 120))(a1, v10, v6);
  v7 = HmmNet::newInPort(a1);
  (*(*a1 + 160))(a1, v7, v11);
  v8 = *(a1 + 72);
  if (*(a1 + 52))
  {
    *(v8 + 8) = v10;
  }

  else
  {
    PredStruct::addPred((*(v8 + 8) + 16), v10);
  }

  return v7;
}

uint64_t HmmNet::unpackInPort(HmmNet *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  (*(*a1 + 208))(a1, a2, 1, &v8, &v7, 3);
  v5 = HmmNet::newInPort(a1);
  (*(*a1 + 160))(a1, v5, v8);
  (*(*a1 + 120))(a1, v7, a3);
  return v5;
}

uint64_t HmmNet::passScoresToOutPorts1(uint64_t this)
{
  v1 = this;
  v2 = *(this + 80);
  if (v2 < 1)
  {
    v4 = 20000;
  }

  else
  {
    v3 = v2 - 1;
    v4 = 20000;
    do
    {
      v5 = *(*(v1 + 72) + 8 * v3);
      v8 = 0;
      this = ExternalOutPort::seedOutPort<false>(v5, &v8);
      if (this < v4)
      {
        v4 = this;
      }

      v6 = v3-- + 1;
    }

    while (v6 > 1);
  }

  *(v1 + 108) = v4;
  v7 = *(v1 + 8);
  if (v4 < *(v7 + 246))
  {
    *(v7 + 246) = v4;
  }

  return this;
}

void HmmNet::~HmmNet(HmmNet *this)
{
  *this = &unk_287523C08;
  if (!*(this + 11))
  {
    HmmNet::deleteInPorts(this);
  }

  if (!*(this + 13))
  {
    HmmNet::deleteOutPorts(this);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 88);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 72);
  DgnIArray<Utterance *>::~DgnIArray(this + 56);
}

uint64_t HmmNet::deleteInPorts(uint64_t this)
{
  v1 = *(this + 64);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = v1 - 1;
    do
    {
      v4 = *(v2 + 56);
      this = *(v4 + 8 * v3);
      if (this)
      {
        this = MemChunkFree(this, 0);
        v4 = *(v2 + 56);
      }

      *(v4 + 8 * v3) = 0;
      v5 = v3-- + 1;
    }

    while (v5 > 1);
  }

  return this;
}

void *HmmNet::deleteOutPorts(HmmNet *this)
{
  *(this + 13) = 2;
  v2 = *(this + 20);
  if (v2 >= 1)
  {
    v3 = v2 - 1;
    do
    {
      PredStruct::~PredStruct((*(*(this + 9) + 8 * v3) + 16));
      v4 = v3-- + 1;
    }

    while (v4 > 1);
  }

  result = **(this + 9);
  if (result)
  {
    result = MemChunkFree(result, 0);
  }

  v6 = *(this + 20);
  if (v6 >= 1)
  {
    v7 = v6 - 1;
    do
    {
      *(*(this + 9) + 8 * v7) = 0;
      v8 = v7-- + 1;
    }

    while (v8 > 1);
  }

  return result;
}

void *HmmNet::initEndIndices(HmmNet *this)
{
  v2 = *(this + 10);
  if (v2 < 2)
  {
    v3 = 1;
  }

  else if (v2 - 3 >= 2)
  {
    if (v2 != 2)
    {
      v3 = 0;
      v4 = (this + 88);
      goto LABEL_11;
    }

    v3 = 2;
  }

  else
  {
    v3 = ***(*(this + 1) + 16) - 2;
  }

  v4 = (this + 88);
  if (v3 && !*(this + 24))
  {
    *(this + 11) = MemChunkAlloc(v3, 0);
    *(this + 24) = v3;
  }

LABEL_11:
  v5 = *v4;

  return memset(v5, 255, v3);
}

void *HmmNet::configureOutPortsInternal(HmmNet *this, int a2)
{
  result = HmmNet::initEndIndices(this);
  *(this + 13) = 1;
  v5 = *(this + 20);
  if (a2 && !v5)
  {
    result = MemChunkAlloc(8 * a2, 0);
    *(this + 9) = result;
    *(this + 20) = a2;
    v5 = a2;
  }

  if (v5 >= 1)
  {
    v6 = v5 - 1;
    do
    {
      *(*(this + 9) + 8 * v6) = 0;
      v7 = v6-- + 1;
    }

    while (v7 > 1);
  }

  return result;
}

uint64_t *HmmNet::configureOutPortsExternal(HmmNet *this, int a2)
{
  HmmNet::initEndIndices(this);
  *(this + 13) = 0;
  if (a2 && !*(this + 20))
  {
    *(this + 9) = MemChunkAlloc(8 * a2, 0);
    *(this + 20) = a2;
  }

  result = MemChunkAlloc(32 * a2, 0);
  if (a2 >= 1)
  {
    v5 = a2 - 1;
    v6 = &result[4 * a2 - 4];
    do
    {
      *v6 = 0x100000001;
      *(v6 + 2) = 1310740000;
      v6[2] = 0;
      *(*(this + 9) + 8 * v5) = v6;
      *(v6 + 12) = 0;
      v7 = v5-- + 1;
      v6 -= 4;
    }

    while (v7 > 1);
  }

  return result;
}

uint64_t VocGroupInfo::loadVocGroupInfo(VocGroupInfo *this, char **a2)
{
  v4 = DFile::subFileExists(a2, 0x69u);
  if (v4)
  {
    v19 = 0;
    v5 = OpenAndReadMrecHeader(a2, 0x69u, 0, "MRVGI!? ", &v19 + 1, &v19);
    v18 = 0;
    if (HIDWORD(v19) == 19 && v19 == 8)
    {
      MrecHeaderCheckLatestVersionIfShared(a2, "MRVGI!? ", 19, 8, 24, 9);
      v16 = 0;
      v17 = 0;
      v14 = 0;
      v15 = 0;
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v11 = 0;
      readObject<unsigned short>(v5, &v16, &v18);
      readObject<DgnString>(v5, &v14, &v18);
      readObject<unsigned short>(v5, &v12, &v18);
      readObject<DFileChecksums>(v5, &v10, &v18);
      DgnString::DgnString(v9);
      readObject(v5, v9, &v18);
      if (v17 >= 2)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vgroupi.cpp", 106, "voc/vgroupi", 1, "%u %u", v17, 1);
      }

      DFileChecksums::operator=(this, v10 + 24 * *v16);
      DgnString::~DgnString(v9);
    }

    else
    {
      if (*(a2 + 6))
      {
        v7 = a2[2];
      }

      else
      {
        v7 = &byte_262899963;
      }

      MrecHeaderCheckVersions(v7, "MRVGI!? ", HIDWORD(v19), v19, 0x18u, 9u);
      MrecHeaderCheckLatestVersionIfShared(a2, "MRVGI!? ", SHIDWORD(v19), v19, 24, 9);
      v16 = 0;
      v17 = 0;
      v14 = 0;
      v15 = 0;
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v11 = 0;
      readObject(v5, this, &v18);
    }

    readObjectChecksumAndVerify(v5, v18);
    DgnDelete<DgnStream>(v5);
    DgnArray<DFileChecksums>::releaseAll(&v10);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v12);
    DgnArray<DgnString>::releaseAll(&v14);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
  }

  return v4;
}

void sub_26282FC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  DgnArray<DFileChecksums>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnArray<DgnString>::releaseAll(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

void readObject<DFileChecksums>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v15 = 0;
  readObject(a1, &v15, a3);
  v6 = v15;
  v7 = *(a2 + 12);
  if (v15 > v7)
  {
    DgnArray<CWIDAC>::reallocElts(a2, v15 - v7, 0);
  }

  v8 = *(a2 + 8);
  v9 = v8;
  if (v6 >= v8)
  {
    if (v6 > v8)
    {
      v11 = v6 - v8;
      v12 = 24 * v8;
      do
      {
        DFileChecksums::DFileChecksums((*a2 + v12));
        v12 += 24;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v10 = 24 * v8 - 24;
    do
    {
      --v9;
      DFileChecksums::~DFileChecksums((*a2 + v10));
      v10 -= 24;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      readObject(a1, (*a2 + v13), a3);
      ++v14;
      v13 += 24;
    }

    while (v14 < *(a2 + 8));
  }
}

void (***VocGroupInfo::saveVocGroupInfo(VocGroupInfo *this, DFile *a2))(void)
{
  v3 = OpenAndWriteMrecHeader(a2, 0x69u, 0, "MRVGI!? ", 24, 9);
  v5 = 0;
  writeObject(v3, this, &v5);
  writeObjectChecksum(v3, &v5);
  return DgnDelete<DgnStream>(v3);
}

void *DgnArray<DFileChecksums>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 24;
    do
    {
      DFileChecksums::~DFileChecksums((*a1 + v3));
      v3 -= 24;
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

void MrecInitLibrary_voc(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_rulemgr_voc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_trgrm_voc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_voc_voc();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_sdpres_sdapi();
}

void MrecInitLibrarySet_throughVoc(void)
{
  MrecInitLibrarySet_throughLm();

  MrecInitLibrary_voc();
}

void NodeNet::~NodeNet(NodeNet *this)
{
  *this = &unk_287523810;
  DgnIOwnArray<NodeNetNode *>::releaseAll(this + 176);
  DgnIOwnArray<NodeNetNode *>::releaseAll(this + 160);

  AcousticNet::~AcousticNet(this);
}

{
  NodeNet::~NodeNet(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t NodeNet::sizeObject(_DWORD *a1, uint64_t a2)
{
  v4 = HmmNet::sizeObject(a1, a2);
  v5 = sizeObject<NodeNetNode *>((a1 + 40), a2) + v4;
  return v5 + sizeObject<NodeNetNode *>((a1 + 44), a2);
}

uint64_t sizeObject<NodeNetNode *>(uint64_t a1, uint64_t a2)
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

uint64_t NodeNet::getBestScore(uint64_t a1, void *a2)
{
  v2 = *(a1 + 168);
  if (v2 < 1)
  {
    return 20000;
  }

  v3 = v2 - 1;
  v4 = 20000;
  do
  {
    v5 = *(*(a1 + 160) + 8 * v3);
    v6 = *(v5 + 18);
    if (v4 > v6)
    {
      *a2 = v5 + 8;
      v4 = v6;
    }

    v7 = v3-- + 1;
  }

  while (v7 > 1);
  return v4;
}

uint64_t NodeNet::addNodesIndirect(NodeNet *this, int a2)
{
  v2 = *(this + 42);
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = a2 + 1;
    do
    {
      v6 = (*(*this + 336))(this, 0);
      v7 = *(this + 42);
      if (v7 == *(this + 43))
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 160, 1, 1);
        v7 = *(this + 42);
      }

      *(*(this + 20) + 8 * v7) = v6;
      *(this + 42) = v7 + 1;
      if (v4)
      {
        if (v6)
        {
          v8 = v6 + 8;
        }

        else
        {
          v8 = 0;
        }

        (*(*this + 120))(this, v8, v4);
      }

      if (v6)
      {
        v4 = v6 + 8;
      }

      else
      {
        v4 = 0;
      }

      --v5;
    }

    while (v5 > 1);
  }

  return v2;
}

uint64_t *NodeNet::preallocEndSequences(uint64_t *this, unsigned int a2, int a3)
{
  v3 = this;
  v4 = *(*(*(this[1] + 16) + 16) + a2) * a3;
  v5 = *(this + 43);
  v6 = v4 + *(this + 42);
  if (v6 > v5)
  {
    this = DgnPrimArray<unsigned long long>::reallocElts((this + 20), v6 - v5, 0);
  }

  if (*(v3 + 12))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 47);
  v9 = *(v3 + 46) + v7 + 1;
  if (v9 > v8)
  {

    return DgnPrimArray<unsigned long long>::reallocElts((v3 + 22), v9 - v8, 0);
  }

  return this;
}

uint64_t NodeNet::unpackEpsilonNodes(NodeNet *this, unsigned int a2, int a3)
{
  v5 = a3 - 1;
  if (a3 >= 1)
  {
    v6 = a3 + 1;
    do
    {
      (*(*this + 128))(this);
      --v6;
    }

    while (v6 > 1);
  }

  v7 = *(this + 46);
  v8 = v7 - 1;
  v9 = *(*(this + 22) + 8 * (v7 - 1));
  if (v9)
  {
    v10 = v9 + 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(this + 20) + 8 * a2);
  if (v11)
  {
    v12 = v11 + 8;
  }

  else
  {
    v12 = 0;
  }

  (*(*this + 120))(this, v10, v12);
  v13 = *(*(this + 22) + 8 * v8);
  *(v13 + 8) = 0x100000001;
  *(v13 + 16) = 1310740000;
  *(v13 + 30) = -1;
  *(v13 + 20) = 0;
  *(v13 + 28) = 0;
  v14 = v7 - 2;
  (*(*this + 328))(this, *(*(this + 22) + 8 * (v7 - 2)), *(*(this + 20) + 8 * a2));
  v15 = *(*(this + 22) + 8 * (v7 - 2));
  if (v15)
  {
    v16 = v15 + 8;
  }

  else
  {
    v16 = 0;
  }

  v17 = a2 - 1;
  v18 = *(*(this + 20) + 8 * (a2 - 1));
  if (v18)
  {
    v19 = v18 + 8;
  }

  else
  {
    v19 = 0;
  }

  (*(*this + 120))(this, v16, v19);
  v20 = *(this + 22);
  v21 = *(v20 + 8 * v8);
  if (v21)
  {
    v22 = v21 + 8;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(v20 + 8 * v14);
  if (v23)
  {
    v24 = v23 + 8;
  }

  else
  {
    v24 = 0;
  }

  result = (*(*this + 120))(this, v22, v24);
  if (v5 >= 2)
  {
    v26 = 0;
    v27 = *(this + 12);
    v28 = a2 - 2;
    v29 = a2;
    v30 = v7 - 3;
    v31 = 1 - v5;
    do
    {
      v32 = *(*(this + 22) + 8 * (v30 + v26));
      (*(*this + 328))(this, v32, *(*(this + 20) + 8 * (v17 + v26)));
      v33 = *(*(this + 20) + 8 * (v29 + v26));
      if (v33)
      {
        v34 = v33 + 8;
      }

      else
      {
        v34 = 0;
      }

      if (v32)
      {
        v35 = v32 + 8;
      }

      else
      {
        v35 = 0;
      }

      (*(*this + 120))(this, v34, v35);
      v36 = *(*(this + 20) + 8 * (v28 + v26));
      if (v36)
      {
        v37 = v36 + 8;
      }

      else
      {
        v37 = 0;
      }

      result = (*(*this + 120))(this, v35, v37);
      if (v27 == 2)
      {
        v38 = *(*(this + 22) + 8 * (v14 + v26));
        if (v38)
        {
          v39 = v38 + 8;
        }

        else
        {
          v39 = 0;
        }

        result = (*(*this + 120))(this, v39, v35);
      }

      --v26;
    }

    while (v31 != v26);
  }

  return result;
}

uint64_t NodeNet::fillTraceNodes(uint64_t result, int a2, int a3, uint64_t a4, unsigned int a5, __int16 a6)
{
  if (a5 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = *(result + 8);
    v10 = *(v9 + 4);
    v11 = a3 - 1;
    if (v10 == 1)
    {
      v11 = 0;
    }

    v21 = *(v9 + 16);
    v12 = a5;
    do
    {
      v13 = a4 + 12 * v8;
      v14 = *(v13 + 4);
      v15 = *(v21 + 16);
      v16 = *(v15 + v14);
      if (*(v15 + v14))
      {
        v17 = 0;
        v18 = -v11;
        do
        {
          v19 = *(*(v7 + 160) + 8 * (a2 + v18));
          result = (*(*v19 + 32))(v19, (a6 + 4 * v8), v13, v17++);
          v18 -= v10;
        }

        while (v16 > v17);
        v11 = -v18;
      }

      ++v8;
    }

    while (v8 != v12);
  }

  return result;
}

uint64_t NodeNet::unpackSequence(NodeNet *this, unsigned __int16 *a2, unsigned int a3, void *a4, void *a5, __int16 a6)
{
  v9 = *(this + 1);
  v10 = *(v9 + 16);
  v11 = a3;
  v12 = 0;
  if (a3 >= 1)
  {
    v13 = a2 + 2;
    v14 = a3;
    do
    {
      v15 = *v13;
      v13 += 6;
      v12 += *(*(v10 + 16) + v15);
      --v14;
    }

    while (v14);
  }

  v16 = *(v9 + 4);
  NodeNet::addNodesIndirect(this, v12);
  v17 = *(this + 42);
  v18 = *(this + 1);
  v19 = v18 + 299008;
  v20 = *(v18 + 302836);
  if (v12 <= v20)
  {
    *(v18 + 302832) = v12;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(v18 + 302824, v12 - v20, 0);
    *(v19 + 3824) = v12;
  }

  v21 = 0;
  if (v16 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v12 - 1;
  }

  v23 = ~v22 + v17;
  do
  {
    *(*(*(this + 1) + 302824) + 8 * v21++) = *(*(this + 20) + 8 * v23) + 20;
    v23 -= v16;
  }

  while (v12 != v21);
LABEL_12:
  v24 = v17 - 1;
  v25 = *(this + 1);
  v26 = *(v25 + 302824);
  v40 = 0;
  if (a3 < 1)
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v27 = a2;
    do
    {
      PicMgr::getNodeDataPtrs(v10, v26, *(*(this + 1) + 32), v27, &v40 + 1, &v40);
      v26 += *(*(v10 + 16) + v27[2]);
      v27 += 6;
      --v11;
    }

    while (v11);
    v28 = v40;
    v29 = HIDWORD(v40);
    v25 = *(this + 1);
  }

  v30 = v25 + 299008;
  *(v30 + 3660) += v29;
  *(v30 + 3664) += v28;
  result = (*(*this + 40))(this);
  if (result)
  {
    result = NodeNet::fillTraceNodes(this, v17 - 1, v12, a2, a3, a6);
  }

  if (v12 >= 2 && *(this + 12))
  {
    result = NodeNet::unpackEpsilonNodes(this, v17 - 1, v12);
    v32 = this + 176;
    v24 = *(this + 46) - 1;
  }

  else
  {
    v32 = this + 160;
  }

  v33 = *(*v32 + 8 * v24);
  if (v33)
  {
    v34 = v33 + 8;
  }

  else
  {
    v34 = 0;
  }

  *a4 = v34;
  v35 = *(*(this + 20) + 8 * (v17 - v12));
  if (v35)
  {
    v36 = v35 + 8;
  }

  else
  {
    v36 = 0;
  }

  *a5 = v36;
  return result;
}

uint64_t NodeNet::unpackEndSilence(uint64_t **this)
{
  NodeNet::addNodesIndirect(this, 1);
  v2 = this[20][*(this + 42) - 1];
  *(v2 + 20) = 0;
  *(v2 + 28) = 0;
  if (((*this)[5])(this))
  {
    NodeNet::fillTraceNodes(this, *(this + 42) - 1, 1, (this[1] + 37848), 1u, 0);
  }

  v3 = (*(this + 42) - 1);
  v4 = this[20][v3];
  if (v4)
  {
    v5 = v4 + 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = this[9];
  if (*(this + 13))
  {
    *v6 = v5;
  }

  else
  {
    PredStruct::addPred((*v6 + 16), v5);
    v3 = (*(this + 42) - 1);
  }

  v7 = this[20];
  v8 = v7[v3];
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  this[18] = v9;
  v10 = v7[v3];
  if (v10)
  {
    return v10 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t NodeNet::unpackOne(uint64_t *a1, unsigned __int16 *a2, void *a3, void *a4, __int16 a5)
{
  v9 = a1[1];
  v10 = *(v9 + 16);
  v11 = *(v9 + 4);
  v12 = *(*(v10 + 16) + a2[2]);
  NodeNet::addNodesIndirect(a1, v12);
  v13 = *(a1 + 42);
  v14 = a1[1];
  v15 = v14 + 299008;
  v16 = *(v14 + 302836);
  if (v12 > v16)
  {
    DgnPrimArray<unsigned long long>::reallocElts(v14 + 302824, v12 - v16, 0);
  }

  v17 = v13 - 1;
  *(v15 + 3824) = v12;
  if (v12)
  {
    v18 = 0;
    if (v11 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v12 - 1;
    }

    v20 = ~v19 + v13;
    do
    {
      *(*(a1[1] + 302824) + v18) = *(a1[20] + 8 * v20) + 20;
      v18 += 8;
      v20 -= v11;
    }

    while (8 * v12 != v18);
  }

  v30 = 0;
  PicMgr::getNodeDataPtrs(v10, *(a1[1] + 302824), *(a1[1] + 32), a2, &v30 + 1, &v30);
  v21 = *a1;
  v22 = a1[1] + 299008;
  *(v22 + 3660) = *(a1[1] + 302668) + HIDWORD(v30);
  *(v22 + 3664) += v30;
  result = (*(v21 + 40))(a1);
  if (result)
  {
    result = NodeNet::fillTraceNodes(a1, v13 - 1, v12, a2, 1u, a5);
  }

  if (v12 >= 2 && *(a1 + 12))
  {
    result = NodeNet::unpackEpsilonNodes(a1, v13 - 1, v12);
    v24 = a1 + 22;
    v17 = *(a1 + 46) - 1;
  }

  else
  {
    v24 = a1 + 20;
  }

  v25 = *(*v24 + 8 * v17);
  if (v25)
  {
    v26 = v25 + 8;
  }

  else
  {
    v26 = 0;
  }

  *a3 = v26;
  v27 = *(a1[20] + 8 * (v13 - v12));
  if (v27)
  {
    v28 = v27 + 8;
  }

  else
  {
    v28 = 0;
  }

  *a4 = v28;
  return result;
}

uint64_t NodeNet::unpackOneFromPicNodes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5, void *a6, __int16 a7)
{
  v12 = *(a1 + 8);
  v13 = *(v12 + 16);
  v14 = *(v12 + 4);
  NodeNet::addNodesIndirect(a1, a3);
  v15 = *(a1 + 168);
  v16 = v15 - 1;
  v17 = *(a1 + 8);
  v18 = v17 + 299008;
  v19 = *(v17 + 302836);
  if (a3 <= v19)
  {
    *(v17 + 302832) = a3;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(v17 + 302824, a3 - v19, 0);
    *(v18 + 3824) = a3;
  }

  v20 = 0;
  if (v14 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = a3 - 1;
  }

  v22 = ~v21 + v15;
  do
  {
    *(*(*(a1 + 8) + 302824) + 8 * v20++) = *(*(a1 + 160) + 8 * v22) + 20;
    v22 -= v14;
  }

  while (a3 != v20);
LABEL_9:
  PicMgr::getNodeDataPtrsFromPicNodes(v13, *(*(a1 + 8) + 302824), *(*(a1 + 8) + 32), a2, a3);
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    result = NodeNet::fillTraceNodes(a1, v15 - 1, a3, a4, 1u, a7);
  }

  if (a3 >= 2 && *(a1 + 48))
  {
    result = NodeNet::unpackEpsilonNodes(a1, v15 - 1, a3);
    v24 = (a1 + 176);
    v16 = *(a1 + 184) - 1;
  }

  else
  {
    v24 = (a1 + 160);
  }

  v25 = *(*v24 + 8 * v16);
  if (v25)
  {
    v26 = v25 + 8;
  }

  else
  {
    v26 = 0;
  }

  *a5 = v26;
  v27 = *(*(a1 + 160) + 8 * (v15 - a3));
  if (v27)
  {
    v28 = v27 + 8;
  }

  else
  {
    v28 = 0;
  }

  *a6 = v28;
  return result;
}

_WORD *NodeNet::addArc(NodeNet *this, const Node *a2, Node *a3)
{
  v3 = a3 - 8;
  if (!a3)
  {
    v3 = 0;
  }

  v4 = a2 - 8;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = v4 + 8;
  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return PredStruct::addPred(v3 + 16, v6);
}

uint64_t NodeNet::addEpsilonNode(NodeNet *this)
{
  v2 = (*(*this + 336))(this, 1);
  v3 = *(this + 46);
  if (v3 == *(this + 47))
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 176, 1, 1);
    v3 = *(this + 46);
  }

  *(*(this + 22) + 8 * v3) = v2;
  *(this + 46) = v3 + 1;
  if (v2)
  {
    return v2 + 8;
  }

  else
  {
    return 0;
  }
}

_WORD *NodeNet::attachInPort(NodeNet *this, unsigned int a2, Node *a3)
{
  v3 = a3 - 8;
  if (!a3)
  {
    v3 = 0;
  }

  return PredStruct::addPred(v3 + 16, *(*(this + 7) + 8 * a2));
}

_WORD *TraceNodeNet::attachInPort(TraceNodeNet *this, unsigned int a2, Node *a3)
{
  v3 = a3 - 8;
  *(a3 + 74) = 1;
  if (!a3)
  {
    v3 = 0;
  }

  return PredStruct::addPred(v3 + 16, *(*(this + 7) + 8 * a2));
}

uint64_t NodeNet::seedEpsilonNodes(uint64_t this)
{
  v1 = *(this + 184);
  if (v1 >= 1)
  {
    do
    {
      v2 = *(*(this + 176) + 8 * (v1 - 1));
      v3 = *(v2 + 40);
      if (v3 == 1)
      {
        v4 = *(v2 + 32);
      }

      else
      {
        v5 = *(v2 + 32);
        v6 = (v3 - 1);
        v4 = *(v5 + 8 * v6);
        v7 = *(v4 + 8);
        v8 = v5 - 8;
        do
        {
          if (v7 >= *(*(v8 + 8 * v6) + 8))
          {
            v4 = *(v8 + 8 * v6);
            v7 = *(v4 + 8);
          }

          --v6;
        }

        while (v6);
      }

      v9 = *(v4 + 8);
      if (v9 == 20000)
      {
        v10 = v2 + 8;
      }

      else
      {
        if (*(v2 + 30) != -1 && *(v2 + 42))
        {
          v11 = *(v2 + 24);
          if (v11 < 0)
          {
            v12 = *(v2 + 29) + v11;
          }

          else
          {
            v12 = *(v2 + 29);
          }

          v9 += v12 + *(this + 116);
        }

        v10 = v2 + 8;
        if (v9 != 20000)
        {
          *(v2 + 8) = *v4;
          v14 = *(v4 + 4);
          v13 = v9 + (*(v2 + 20) >> 8);
          *(v2 + 12) = v14 + *(v2 + 26);
          goto LABEL_19;
        }
      }

      LOWORD(v13) = 20000;
      *(v2 + 18) = 20000;
LABEL_19:
      *(v10 + 8) = v13;
    }

    while (v1-- > 1);
  }

  return this;
}

uint64_t NodeNet::scoreNetInternal(NodeNet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(this + 26);
  *(this + 26) = 0;
  v40 = 0;
  v13 = *(this + 42);
  if (v12)
  {
    if (v13)
    {
      v14 = 0;
      do
      {
        *(this + 26) += Node::thresholdNode((*(*(this + 20) + v14) + 8), a3);
        v14 += 8;
      }

      while (8 * v13 != v14);
    }
  }

  else if (v13)
  {
    v15 = *(this + 20);
    v16 = *(this + 42);
    do
    {
      v17 = *v15++;
      *(v17 + 16) = 1310740000;
      --v16;
    }

    while (v16);
  }

  if (*(this + 10) == 1)
  {
    v18 = 0;
    v19 = 20000;
  }

  else
  {
    (*(*this + 344))(this, a2);
    v20 = **(this + 20);
    v21 = *(v20 + 40);
    if (v21 == 1)
    {
      v22 = *(v20 + 32);
    }

    else
    {
      v23 = *(v20 + 32);
      v24 = (v21 - 1);
      v22 = *(v23 + 8 * v24);
      v25 = *(v22 + 8);
      v26 = v23 - 8;
      do
      {
        if (v25 >= *(*(v26 + 8 * v24) + 8))
        {
          v22 = *(v26 + 8 * v24);
          v25 = *(v22 + 8);
        }

        --v24;
      }

      while (v24);
    }

    *(this + 113) = 0;
    LODWORD(v38) = 0;
    HIDWORD(v38) = a6;
    v19 = (*(*this + 352))(this, v20, v22, a3, a4, a5, a2, this + 113, v38, &v40, this);
    v18 = 1;
  }

  if (v18 < v13)
  {
    v27 = v18;
    do
    {
      v28 = *(*(this + 20) + 8 * v27);
      v29 = *(v28 + 40);
      if (v29 == 1)
      {
        v30 = *(v28 + 32);
      }

      else
      {
        v31 = *(v28 + 32);
        v32 = (v29 - 1);
        v30 = *(v31 + 8 * v32);
        v33 = *(v30 + 8);
        v34 = v31 - 8;
        do
        {
          if (v33 >= *(*(v34 + 8 * v32) + 8))
          {
            v30 = *(v34 + 8 * v32);
            v33 = *(v30 + 8);
          }

          --v32;
        }

        while (v32);
      }

      v39 = 0;
      if (*(this + 10) == 1)
      {
        v35 = this;
      }

      else
      {
        v35 = 0;
      }

      v36 = (*(*this + 352))(this, v28, v30, a3, a4, a5, a2, &v39, *(this + 29), &v40, v35);
      if (v36 < v19)
      {
        v19 = v36;
      }

      ++v27;
    }

    while (v27 != v13);
  }

  *(this + 55) = v19;
  return HmmNet::passScoresToOutPorts1(this);
}

uint64_t NodeNet::thresholdNetInternal(uint64_t this, uint64_t a2, int a3)
{
  v4 = this;
  *(this + 152) = *(**(this + 160) + 18) <= a3;
  if (*(this + 40) != 1)
  {
    this = (*(*this + 320))(this, *(this + 113), a2);
  }

  if (*(v4 + 110) <= a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *(v4 + 110) = 20000;
  }

  *(v4 + 104) = v5;
  return this;
}

uint64_t NodeNet::calcNumActiveNodes(NodeNet *this, int a2)
{
  v2 = *(this + 42);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 8 * v2;
  do
  {
    v6 = Node::thresholdNode((*(*(this + 20) + v5) + 8), a2) + v6;
    v5 += 8;
  }

  while (v7 != v5);
  return v6;
}

void TraceNodeNet::thresholdNetInternal(TraceNodeNet *this, uint64_t a2, int a3)
{
  v4 = a2;
  NodeNet::thresholdNetInternal(this, a2, a3);
  v6 = *(this + 42);
  if (v6)
  {
    v7 = 0;
    v8 = 8 * v6;
    do
    {
      TraceNode::maybeSeedNode(*(*(this + 20) + v7), a3, v4);
      v7 += 8;
    }

    while (v8 != v7);
  }

  TraceNodeNet::passScoresToOutPorts2(this, a3, v4);
}

void TraceNodeNet::passScoresToOutPorts2(_DWORD *this, int a2, int a3)
{
  v3 = this[20];
  if (v3 >= 1)
  {
    v7 = v3 - 1;
    do
    {
      TraceExternalOutPort::seedOutPortForTraceBack2(*(*(this + 9) + 8 * v7), a2, a3, *(this + 1));
      v8 = v7-- + 1;
    }

    while (v8 > 1);
  }
}

uint64_t *TraceNodeNet::seedEpsilonNodes(uint64_t *this, int a2)
{
  v2 = *(this + 46);
  if (v2 >= 1)
  {
    v4 = this;
    do
    {
      v5 = *(*(v4 + 176) + 8 * (v2 - 1));
      v6 = *(v5 + 40);
      if (v6 == 1)
      {
        v7 = *(v5 + 32);
      }

      else
      {
        v8 = *(v5 + 32);
        v9 = (v6 - 1);
        v7 = *(v8 + 8 * v9);
        v10 = *(v7 + 8);
        v11 = v8 - 8;
        do
        {
          if (v10 >= *(*(v11 + 8 * v9) + 8))
          {
            v7 = *(v11 + 8 * v9);
            v10 = *(v7 + 8);
          }

          --v9;
        }

        while (v9);
      }

      v12 = *(v7 + 8);
      if (v12 == 20000)
      {
        v13 = v5 + 8;
      }

      else
      {
        this = SeederStruct::updateSeederList((v5 + 64), a2, v7);
        if (*(v5 + 30) != -1 && *(v5 + 42))
        {
          v14 = *(v5 + 24);
          if (v14 < 0)
          {
            v15 = *(v5 + 29) + v14;
          }

          else
          {
            v15 = *(v5 + 29);
          }

          v12 += v15 + *(v4 + 116);
        }

        v13 = v5 + 8;
        if (v12 != 20000)
        {
          *(v5 + 8) = *v7;
          v16 = v12 + (*(v5 + 20) >> 8);
          *(v5 + 12) = *(v7 + 4) + *(v5 + 26);
          goto LABEL_20;
        }
      }

      LOWORD(v16) = 20000;
      *(v5 + 18) = 20000;
LABEL_20:
      *(v13 + 8) = v16;
    }

    while (v2-- > 1);
  }

  return this;
}

void NodeNet::newNode(NodeNet *this, char a2)
{
  v3 = MemChunkAlloc(0x30uLL, 0);

  NodeNetNode::NodeNetNode(v3, a2);
}

uint64_t NodeNet::estimateActivePelsThisFrame(NodeNet *this, BitArray *a2)
{
  result = AcousticNet::estimateActivePelsThisFrame(this, a2);
  v5 = *(this + 46);
  if (v5 >= 1)
  {
    v6 = *a2;
    v7 = v5 + 1;
    v8 = (*(this + 22) + 8 * v5 - 8);
    do
    {
      v9 = *v8--;
      *(v6 + ((*(v9 + 30) >> 3) & 0x1FFC)) |= 1 << *(v9 + 30);
      --v7;
    }

    while (v7 > 1);
  }

  v10 = *(this + 42);
  if (v10 >= 1)
  {
    v11 = *a2;
    v12 = v10 + 1;
    v13 = (*(this + 20) + 8 * v10 - 8);
    do
    {
      v14 = *v13--;
      *(v11 + ((*(v14 + 30) >> 3) & 0x1FFC)) |= 1 << *(v14 + 30);
      --v12;
    }

    while (v12 > 1);
  }

  return result;
}

void TraceNodeNet::~TraceNodeNet(TraceNodeNet *this)
{
  *this = &unk_287528898;
  TraceNodeNet::deleteOutPorts(this);

  NodeNet::~NodeNet(this);
}

{
  TraceNodeNet::~TraceNodeNet(this);

  JUMPOUT(0x26672B1B0);
}

void *TraceNodeNet::deleteOutPorts(TraceNodeNet *this)
{
  *(this + 13) = 2;
  v2 = *(this + 20);
  if (v2 >= 1)
  {
    v3 = v2 - 1;
    do
    {
      v4 = *(*(this + 9) + 8 * v3);
      BitArray::~BitArray((v4 + 48));
      DgnIArray<Utterance *>::~DgnIArray(v4 + 32);
      PredStruct::~PredStruct((v4 + 16));
      v5 = v3-- + 1;
    }

    while (v5 > 1);
  }

  result = **(this + 9);
  if (result)
  {
    result = MemChunkFree(result, 0);
  }

  v7 = *(this + 20);
  if (v7 >= 1)
  {
    v8 = v7 - 1;
    do
    {
      *(*(this + 9) + 8 * v8) = 0;
      v9 = v8-- + 1;
    }

    while (v9 > 1);
  }

  return result;
}

void TraceNodeNet::newNode(TraceNodeNet *this, char a2)
{
  v3 = MemChunkAlloc(0x60uLL, 0);

  TraceNode::TraceNode(v3, a2);
}

void TraceNodeNet::configureOutPorts(TraceNodeNet *this, unsigned int a2)
{
  HmmNet::initEndIndices(this);
  if (a2 && !*(this + 20))
  {
    *(this + 9) = MemChunkAlloc(8 * a2, 0);
    *(this + 20) = a2;
  }

  *(this + 13) = 0;
  v4 = MemChunkAlloc(a2 << 6, 0);
  if (a2 >= 1)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = a2 << 6;
    do
    {
      v9 = &v5[v7 / 8];
      *v9 = 0x100000001;
      *(v9 + 2) = 1310740000;
      v9[2] = 0;
      *(v9 + 12) = 0;
      SeederStruct::SeederStruct(&v5[v7 / 8 + 4]);
      DgnString::DgnString(&v5[v7 / 8 + 6]);
      *(*(this + 9) + v6) = &v5[v7 / 8];
      v7 += 64;
      v6 += 8;
    }

    while (v8 != v7);
  }
}

uint64_t TraceNodeNet::sizeofOutPorts(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v4 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v4 = 8;
    }

    else
    {
      v4 = 12;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v5 = 2;
      if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
      {
        v5 = 3;
      }

      v4 += *(a1 + 80) << v5;
    }
  }

  if (!*(a1 + 52) && *(a1 + 80))
  {
    v6 = 0;
    do
    {
      v4 += sizeObject(*(*(a1 + 72) + 8 * v6++), a2);
    }

    while (v6 < *(a1 + 80));
  }

  return v4;
}

uint64_t TraceExternalOutPort::wasEnding(TraceExternalOutPort *this, int a2)
{
  v2 = *(this + 10);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 4);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16 * (v2 - 1) + 12);
  if (v4 != a2 && v5 == v4)
  {
    return 0;
  }

  v7 = v5 >= v4 ? a2 - v4 : v4 - a2;
  if (v7 >= *(this + 14))
  {
    return 0;
  }

  else
  {
    return (*(*(this + 6) + 4 * (v7 >> 5)) >> v7) & 1;
  }
}

uint64_t TraceNodeNet::appendCalculatedSegments(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(*(a2 + 32) + 16 * SeederStruct::findSeederIndex((a2 + 32), a3));
  v7 = a3 + 1;
  do
  {
    if (*(v6 + 30) != -1)
    {
      if (*(v6 + 42))
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = -1;
        do
        {
          ++v8;
          SeederIndex = SeederStruct::findSeederIndex((v6 + 64), v7 + v9--);
        }

        while (*(*(v6 + 64) + 16 * SeederIndex) == v6);
        v7 -= v8;
      }

      v11 = MemChunkAlloc(0x28uLL, 0);
      v12 = v11;
      v13 = *(v6 + 80);
      *v11 = v7;
      *(v11 + 2) = *(v6 + 30);
      *(v11 + 2) = v8;
      *(v11 + 3) = v13;
      v14 = *(v6 + 44);
      *(v11 + 12) = *(v6 + 52);
      v11[2] = v14;
      *(v11 + 26) = *(v6 + 54);
      *(v11 + 27) = *(v6 + 55);
      *(v11 + 14) = *(v6 + 28);
      v15 = *(v6 + 24);
      if (v15 < 0)
      {
        v16 = *(v6 + 29) + v15;
      }

      else
      {
        v16 = *(v6 + 29);
      }

      *(v11 + 8) = v16;
      *(v11 + 18) = v15;
      v17 = *(a4 + 8);
      if (v17 == *(a4 + 12))
      {
        DgnPrimArray<unsigned long long>::reallocElts(a4, 1, 1);
        v17 = *(a4 + 8);
      }

      *(*a4 + 8 * v17) = v12;
      *(a4 + 8) = v17 + 1;
    }

    v18 = SeederStruct::findSeederIndex((v6 + 64), v7);
    if (*(v6 + 82))
    {
      v19 = *(*(v6 + 64) + 16 * v18) == v6;
    }

    else
    {
      v19 = 1;
    }

    v6 = *(*(v6 + 64) + 16 * v18);
  }

  while (v19);
  return (v7 - 1);
}

void TraceNode::TraceNode(TraceNode *this, char a2)
{
  NodeNetNode::NodeNetNode(this, a2);
  *v3 = &unk_287522C90;
  *(v3 + 44) = -1;
  *(v3 + 52) = -1;
  *(v3 + 54) = -65536;
  SeederStruct::SeederStruct((v3 + 64));
  *(this + 82) = 0;
}

void SeederStruct::SeederStruct(SeederStruct *this)
{
  *this = 0;
  *(this + 1) = 0;
  DgnArray<DgnPrimArray<double>>::reallocElts(this, 1, 0);
}

uint64_t SeederStruct::findSeederIndex(SeederStruct *this, int a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  for (i = (*this + 12); ; i += 4)
  {
    v6 = *(i - 1);
    if (v6 == a2)
    {
      break;
    }

    v7 = *i;
    if (*i == a2)
    {
      break;
    }

    if (v6 < a2 && v7 > a2)
    {
      break;
    }

    if (v6 > a2 && v7 < a2)
    {
      break;
    }

    if (v2 == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void *DgnIOwnArray<NodeNetNode *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<NodeNetNode>(*(*a1 + v3));
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

void (***DgnDelete<NodeNetNode>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void MrecInitLibrary_user(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_picmgr_user();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_user_user();

  MrecInitModule_sdpres_sdapi();
}

void MrecInitLibrarySet_throughUser(void)
{
  MrecInitLibrarySet_throughPel();
  MrecInitLibrarySet_throughPhoneme();

  MrecInitLibrary_user();
}

void MrecInitLibrary_sigproc(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_ltf_sigproc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_spdebug_sigproc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sputtdet_sigproc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_wavepac_sigproc();

  MrecInitModule_sdpres_sdapi();
}

void MrecInitLibrarySet_throughSigproc(void)
{
  MrecInitLibrarySet_throughFrame();

  MrecInitLibrary_sigproc();
}

void MrecInitModule_pelsc_pel(void)
{
  if (!gParDebugShowShortListBitVector)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowShortListBitVector", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowShortListBitVector = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowShortListBitVector);
  }

  if (!gParDiagnosticPackedIntPelScoring)
  {
    v2 = MemChunkAlloc(0x40uLL, 0);
    EnumParamRange::EnumParamRange(&v15, &sDiagnosticPackedIntPelScoringEnum);
    EnumGlobalParamBase::EnumGlobalParamBase(v2, "DiagnosticPackedIntPelScoring", &byte_262899963, &byte_262899963, 0, &v15, 0);
    v2->n128_u64[0] = &unk_287527B80;
    gParDiagnosticPackedIntPelScoring = v2;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticPackedIntPelScoring);
  }

  if (!gParDebugAcousticReferencePackedIntScoring)
  {
    v3 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v3, "DebugAcousticReferencePackedIntScoring", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v4 = &unk_287527EA0;
    gParDebugAcousticReferencePackedIntScoring = v4;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAcousticReferencePackedIntScoring);
  }

  if (!gParDebugAcousticFloatScoring)
  {
    v5 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v5, "DebugAcousticFloatScoring", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v6 = &unk_287527EA0;
    gParDebugAcousticFloatScoring = v6;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAcousticFloatScoring);
  }

  if (!gParDebugAcousticMicReferenceScoring)
  {
    v7 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v7, "DebugAcousticMicReferenceScoring", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v8 = &unk_287527EA0;
    gParDebugAcousticMicReferenceScoring = v8;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAcousticMicReferenceScoring);
  }

  if (!gParDebugQuantPerDimPelScoring)
  {
    v9 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v9, "DebugQuantPerDimPelScoring", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v10 = &unk_287527EA0;
    gParDebugQuantPerDimPelScoring = v10;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugQuantPerDimPelScoring);
  }

  if (!gParDebugShowTransformedFeatures)
  {
    v11 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v11, "DebugShowTransformedFeatures", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v12 = &unk_287527EA0;
    gParDebugShowTransformedFeatures = v12;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowTransformedFeatures);
  }

  if (!gParDiagnosticAttilaAcousticScoreScale)
  {
    v13 = MemChunkAlloc(0x48uLL, 0);
    v15 = xmmword_262891600;
    v14 = DoubleGlobalParamBase::DoubleGlobalParamBase(v13, "DiagnosticAttilaAcousticScoreScale", &byte_262899963, &byte_262899963, &v15, 0, 0.0);
    *v14 = &unk_2875271F0;
    gParDiagnosticAttilaAcousticScoreScale = v14;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticAttilaAcousticScoreScale);
  }
}

void PelScorer::PelScorer(PelScorer *this, const PelMgr *a2, const GenoneClassTree *a3, const VarClassMgr *a4, const FmpeMgr *a5, const NeuralNet *a6, const Imelda *a7, int a8, double a9, double a10, BOOL a11)
{
  *this = &unk_287522F00;
  if (MemChunkRegion::smTlsID != -1)
  {
    v20 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v20)
    {
      v21 = *v20;
      if (*v20)
      {
        goto LABEL_6;
      }

      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }
  }

  v21 = &gGlobalMemChunkRegion;
LABEL_6:
  *(this + 1) = v21;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a3;
  *(this + 6) = a4;
  *(this + 7) = a5;
  *(this + 8) = a6;
  *(this + 9) = a7;
  v22 = *a2;
  *(this + 12) = 0;
  *(this + 11) = 0;
  v23 = *(a2 + 62);
  v24 = *(a2 + 38);
  *(this + 15) = 0;
  *(this + 10) = v22;
  *(this + 13) = v23;
  *(this + 28) = 0;
  *(this + 29) = v24;
  *(this + 127) = 0;
  *(this + 131) = a11;
  *(this + 17) = a9;
  *(this + 18) = a10;
  *(this + 38) = -16;
  *(this + 10) = 0u;
  *(this + 34) = 0;
  *(this + 16) = 0u;
  *(this + 15) = 0u;
  *(this + 14) = 0u;
  *(this + 13) = 0u;
  *(this + 12) = 0u;
  *(this + 11) = 0u;
  if (a4)
  {
    v25 = *a4;
  }

  else
  {
    v25 = 0;
  }

  *(this + 70) = v25;
  *(this + 284) = 0;
  *(this + 296) = 0uLL;
  *(this + 312) = 0uLL;
  AlignedArray<short>::AlignedArray(this + 328, *(a2 + 56));
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 508) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 320) = 0;
  v26 = MemChunkAlloc(0x1F0uLL, 0);
  PelScoreCache::PelScoreCache(v26, this, *(this + 2) + 376, *(this + 2) + 288);
  *(this + 15) = v27;
  if (a5)
  {
    v28 = MemChunkAlloc(0x298uLL, 0);
    OnDemandPelScorer::OnDemandPelScorer(v28, *(*(this + 7) + 112), 0, 0, 0, a6, 0, 0, *(this + 17), a10, *(this + 131));
    *(this + 11) = v29;
  }

  if (a8)
  {
    v30 = MemChunkAlloc(0x298uLL, 0);
    OnDemandPelScorer::OnDemandPelScorer(v30, a2, 0, 0, 0, a6, a7, 0, *(this + 17), a10, *(this + 131));
    *(this + 12) = v31;
  }
}

void sub_2628326C8(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 176);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void OnDemandPelScorer::OnDemandPelScorer(OnDemandPelScorer *this, const PelMgr *a2, const GenoneClassTree *a3, const VarClassMgr *a4, const FmpeMgr *a5, const NeuralNet *a6, const Imelda *a7, int a8, double a9, double a10, BOOL a11)
{
  OnDemandPelScorer::OnDemandPelScorer(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

{
  PelScorer::PelScorer(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  *v13 = &unk_287527098;
  v14 = v13 + 81;
  *(v13 + 81) = 0u;
  if (*(a2 + 3) == 3)
  {
    v15 = *(a2 + 6);
    v16 = *(a2 + 10);
    v17 = *(a2 + 33);
    if (32 * v17)
    {
      v26 = 0;
      *(this + 165) = realloc_array(0, &v26, (32 * v17), 0, 0, 1);
      *(this + 81) = v26;
    }

    *(this + 164) = 32 * v17;
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = 16 * (v18 & 0xFFFFFFF);
        v21 = v16 + v20;
        v22 = (v15 + v20);
        v23 = 16;
        do
        {
          v24 = *v22++;
          *(*v14 + v19++) = v24;
          --v23;
        }

        while (v23);
        for (i = 0; i != 16; ++i)
        {
          *(*v14 + v19++) = *(v21 + i);
        }

        ++v18;
      }

      while (v18 != v17);
    }
  }
}

void PelScorer::~PelScorer(PelScoreCache **this)
{
  *this = &unk_287522F00;
  DgnDelete<PelScoreCache>(this[15]);
  this[15] = 0;
  DgnDelete<PelScorer>(this[11]);
  this[11] = 0;
  DgnDelete<PelScorer>(this[12]);
  this[12] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 78));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 73));
  DgnIArray<Utterance *>::~DgnIArray((this + 71));
  DgnIArray<Utterance *>::~DgnIArray((this + 69));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 67));
  DgnIArray<Utterance *>::~DgnIArray((this + 63));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 61));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 56));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 54));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 52));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 50));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 48));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 46));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 44));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 41));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 39));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 37));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 31));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 29));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 27));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 25));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 22));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 20));
}

PelScoreCache *DgnDelete<PelScoreCache>(PelScoreCache *result)
{
  if (result)
  {
    PelScoreCache::~PelScoreCache(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void PelScorer::printSize(PelScorer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 448);
  if (v288)
  {
    v13 = v287;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v287);
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

  v16 = (a3 + 1);
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 449);
  if (v288)
  {
    v19 = v287;
  }

  else
  {
    v19 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v19, v15, v15, 0);
  DgnString::~DgnString(&v287);
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

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 450);
  if (v288)
  {
    v22 = v287;
  }

  else
  {
    v22 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v22, v20, v20, 0);
  DgnString::~DgnString(&v287);
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

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 451);
  if (v288)
  {
    v25 = v287;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, v23, v23, 0);
  DgnString::~DgnString(&v287);
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

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 452);
  if (v288)
  {
    v28 = v287;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v28, v26, v26, 0);
  DgnString::~DgnString(&v287);
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

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 453);
  if (v288)
  {
    v31 = v287;
  }

  else
  {
    v31 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v31, v29, v29, 0);
  DgnString::~DgnString(&v287);
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

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 454);
  if (v288)
  {
    v34 = v287;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v34, v32, v32, 0);
  DgnString::~DgnString(&v287);
  *a4 += v32;
  *a5 += v32;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 4;
  }

  else
  {
    v35 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 455);
  if (v288)
  {
    v37 = v287;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v37, v35, v35, 0);
  DgnString::~DgnString(&v287);
  *a4 += v35;
  *a5 += v35;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 456);
  if (v288)
  {
    v40 = v287;
  }

  else
  {
    v40 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v40, v38, v38, 0);
  DgnString::~DgnString(&v287);
  *a4 += v38;
  *a5 += v38;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v41 = 4;
  }

  else
  {
    v41 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 457);
  if (v288)
  {
    v43 = v287;
  }

  else
  {
    v43 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v43, v41, v41, 0);
  DgnString::~DgnString(&v287);
  *a4 += v41;
  *a5 += v41;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v44 = 4;
  }

  else
  {
    v44 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 458);
  if (v288)
  {
    v46 = v287;
  }

  else
  {
    v46 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v46, v44, v44, 0);
  DgnString::~DgnString(&v287);
  *a4 += v44;
  *a5 += v44;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 4;
  }

  else
  {
    v47 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 459);
  if (v288)
  {
    v49 = v287;
  }

  else
  {
    v49 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v49, v47, v47, 0);
  DgnString::~DgnString(&v287);
  *a4 += v47;
  *a5 += v47;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v50 = 4;
  }

  else
  {
    v50 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 460);
  if (v288)
  {
    v52 = v287;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v52, v50, v50, 0);
  DgnString::~DgnString(&v287);
  *a4 += v50;
  *a5 += v50;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 461);
  if (v288)
  {
    v54 = v287;
  }

  else
  {
    v54 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v54, 8, 8, 0);
  DgnString::~DgnString(&v287);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 462);
  if (v288)
  {
    v56 = v287;
  }

  else
  {
    v56 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v56, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 464);
  if (v288)
  {
    v58 = v287;
  }

  else
  {
    v58 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v58, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  v59 = *(this + 15);
  if (v59)
  {
    v286 = 0;
    v287 = 0;
    v285 = 0;
    PelScoreCache::printSize(v59, 0xFFFFFFFFLL, (a3 + 1), &v287, &v286, &v285);
    *a4 += v287;
    *a5 += v286;
    *a6 += v285;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v60 = 4;
  }

  else
  {
    v60 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 466);
  if (v288)
  {
    v62 = v287;
  }

  else
  {
    v62 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v62, v60, v60, 0);
  DgnString::~DgnString(&v287);
  *a4 += v60;
  *a5 += v60;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 477);
  if (v288)
  {
    v64 = v287;
  }

  else
  {
    v64 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v64, 1, 1, 0);
  DgnString::~DgnString(&v287);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 479);
  if (v288)
  {
    v66 = v287;
  }

  else
  {
    v66 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v66, 1, 1, 0);
  DgnString::~DgnString(&v287);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 481);
  if (v288)
  {
    v68 = v287;
  }

  else
  {
    v68 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v68, 1, 1, 0);
  DgnString::~DgnString(&v287);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 483);
  if (v288)
  {
    v70 = v287;
  }

  else
  {
    v70 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v70, 1, 1, 0);
  DgnString::~DgnString(&v287);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 485);
  if (v288)
  {
    v72 = v287;
  }

  else
  {
    v72 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v72, 8, 8, 0);
  DgnString::~DgnString(&v287);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 487);
  if (v288)
  {
    v74 = v287;
  }

  else
  {
    v74 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v74, 8, 8, 0);
  DgnString::~DgnString(&v287);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 488);
  if (v288)
  {
    v76 = v287;
  }

  else
  {
    v76 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v76, 4, 4, 0);
  v284 = a3;
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v77 = 12;
  }

  else
  {
    v77 = 16;
  }

  v78 = *(this + 42);
  v79 = *(this + 43);
  v80 = v79 >= v78;
  v81 = v79 - v78;
  if (v80)
  {
    if (v78 > 0)
    {
      v82 = (v78 - 1) + v77 + 1;
    }

    else
    {
      v82 = v77;
    }

    v77 = v82 + v81;
    v78 = 0;
  }

  else
  {
    v82 = v77;
  }

  v83 = v78;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 489);
  if (v288)
  {
    v85 = v287;
  }

  else
  {
    v85 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v16, &byte_262899963, v17, v17, v85, v77, v82, v83);
  DgnString::~DgnString(&v287);
  *a4 += v77;
  *a5 += v82;
  *a6 += v83;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v86 = 12;
  }

  else
  {
    v86 = 16;
  }

  v87 = *(this + 46);
  v88 = *(this + 47);
  v80 = v88 >= v87;
  v89 = v88 - v87;
  if (v80)
  {
    if (v87 > 0)
    {
      v90 = (v87 - 1) + v86 + 1;
    }

    else
    {
      v90 = v86;
    }

    v86 = v90 + v89;
    v87 = 0;
  }

  else
  {
    v90 = v86;
  }

  v91 = v87;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 491);
  if (v288)
  {
    v93 = v287;
  }

  else
  {
    v93 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v16, &byte_262899963, v17, v17, v93, v86, v90, v91);
  DgnString::~DgnString(&v287);
  *a4 += v86;
  *a5 += v90;
  *a6 += v91;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v94 = 4;
  }

  else
  {
    v94 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 493);
  if (v288)
  {
    v96 = v287;
  }

  else
  {
    v96 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v16, &byte_262899963, v17, v17, v96, v94, v94, 0);
  DgnString::~DgnString(&v287);
  *a4 += v94;
  *a5 += v94;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v97 = 12;
  }

  else
  {
    v97 = 16;
  }

  v98 = *(this + 52);
  v99 = *(this + 53);
  v80 = v99 >= v98;
  v100 = v99 - v98;
  if (v80)
  {
    if (v98 > 0)
    {
      v101 = (v98 - 1) + v97 + 1;
    }

    else
    {
      v101 = v97;
    }

    v97 = v101 + v100;
    v98 = 0;
  }

  else
  {
    v101 = v97;
  }

  v102 = v98;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 495);
  if (v288)
  {
    v104 = v287;
  }

  else
  {
    v104 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v16, &byte_262899963, v17, v17, v104, v97, v101, v102);
  DgnString::~DgnString(&v287);
  *a4 += v97;
  *a5 += v101;
  *a6 += v102;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v105 = 12;
  }

  else
  {
    v105 = 16;
  }

  v106 = *(this + 56);
  v107 = *(this + 57);
  v80 = v107 >= v106;
  v108 = v107 - v106;
  if (v80)
  {
    if (v106 > 0)
    {
      v109 = (v106 - 1) + v105 + 1;
    }

    else
    {
      v109 = v105;
    }

    v105 = v109 + v108;
    v106 = 0;
  }

  else
  {
    v109 = v105;
  }

  v110 = v106;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 497);
  if (v288)
  {
    v112 = v287;
  }

  else
  {
    v112 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v16, &byte_262899963, v17, v17, v112, v105, v109, v110);
  DgnString::~DgnString(&v287);
  *a4 += v105;
  *a5 += v109;
  *a6 += v110;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v113 = 12;
  }

  else
  {
    v113 = 16;
  }

  v114 = *(this + 60);
  v115 = *(this + 61);
  if (v115 >= v114)
  {
    v116 = 0;
    if (v114 > 0)
    {
      v113 += 2 * (v114 - 1) + 2;
    }

    v117 = v113 + 2 * (v115 - v114);
  }

  else
  {
    v116 = 2 * v114;
    v117 = v113;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 498);
  if (v288)
  {
    v119 = v287;
  }

  else
  {
    v119 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v118, v16, &byte_262899963, v17, v17, v119, v117, v113, v116);
  DgnString::~DgnString(&v287);
  *a4 += v117;
  *a5 += v113;
  *a6 += v116;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v120 = 12;
  }

  else
  {
    v120 = 16;
  }

  v121 = *(this + 64);
  v122 = *(this + 65);
  if (v122 >= v121)
  {
    v123 = 0;
    if (v121 > 0)
    {
      v120 += 2 * (v121 - 1) + 2;
    }

    v124 = v120 + 2 * (v122 - v121);
  }

  else
  {
    v123 = 2 * v121;
    v124 = v120;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 500);
  if (v288)
  {
    v126 = v287;
  }

  else
  {
    v126 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v125, v16, &byte_262899963, v17, v17, v126, v124, v120, v123);
  DgnString::~DgnString(&v287);
  *a4 += v124;
  *a5 += v120;
  *a6 += v123;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 502);
  if (v288)
  {
    v128 = v287;
  }

  else
  {
    v128 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v16, &byte_262899963, v17, v17, v128, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 504);
  if (v288)
  {
    v130 = v287;
  }

  else
  {
    v130 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v129, v16, &byte_262899963, v17, v17, v130, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 505);
  if (v288)
  {
    v132 = v287;
  }

  else
  {
    v132 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v131, v16, &byte_262899963, v17, v17, v132, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 506);
  if (v288)
  {
    v134 = v287;
  }

  else
  {
    v134 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v133, v16, &byte_262899963, v17, v17, v134, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 507);
  if (v288)
  {
    v136 = v287;
  }

  else
  {
    v136 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v16, &byte_262899963, v17, v17, v136, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 509);
  if (v288)
  {
    v138 = v287;
  }

  else
  {
    v138 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v16, &byte_262899963, v17, v17, v138, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 511);
  if (v288)
  {
    v140 = v287;
  }

  else
  {
    v140 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v139, v16, &byte_262899963, v17, v17, v140, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v141 = 12;
  }

  else
  {
    v141 = 16;
  }

  v142 = *(this + 76);
  v143 = *(this + 77);
  if (v143 >= v142)
  {
    v144 = 0;
    if (v142 > 0)
    {
      v141 += 4 * (v142 - 1) + 4;
    }

    v145 = v141 + 4 * (v143 - v142);
  }

  else
  {
    v144 = 4 * v142;
    v145 = v141;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 513);
  if (v288)
  {
    v147 = v287;
  }

  else
  {
    v147 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v146, v16, &byte_262899963, v17, v17, v147, v145, v141, v144);
  DgnString::~DgnString(&v287);
  *a4 += v145;
  *a5 += v141;
  *a6 += v144;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v148 = 12;
  }

  else
  {
    v148 = 16;
  }

  v149 = *(this + 80);
  v150 = *(this + 81);
  if (v150 >= v149)
  {
    v151 = 0;
    if (v149 > 0)
    {
      v148 += 4 * (v149 - 1) + 4;
    }

    v152 = v148 + 4 * (v150 - v149);
  }

  else
  {
    v151 = 4 * v149;
    v152 = v148;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 515);
  if (v288)
  {
    v154 = v287;
  }

  else
  {
    v154 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v153, v16, &byte_262899963, v17, v17, v154, v152, v148, v151);
  DgnString::~DgnString(&v287);
  *a4 += v152;
  *a5 += v148;
  *a6 += v151;
  v155 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v155 = 12;
  }

  v156 = *(this + 84);
  v157 = *(this + 85);
  if (v157 >= v156)
  {
    v158 = 0;
    if (v156 > 0)
    {
      v155 += 2 * (v156 - 1) + 2;
    }

    v159 = v155 + 2 * (v157 - v156);
  }

  else
  {
    v158 = 2 * v156;
    v159 = v155;
  }

  v160 = v159 + 4;
  v161 = v155 + 4;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 517);
  if (v288)
  {
    v163 = v287;
  }

  else
  {
    v163 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v162, v16, &byte_262899963, v17, v17, v163, v160, v161, v158);
  DgnString::~DgnString(&v287);
  *a4 += v160;
  *a5 += v161;
  *a6 += v158;
  v164 = sizeObject<DgnPrimArray<unsigned char>>(this + 352, 0);
  v165 = sizeObject<DgnPrimArray<unsigned char>>(this + 352, 1);
  v287 = 0;
  v288 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v287);
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 519);
  if (v288)
  {
    v167 = v287;
  }

  else
  {
    v167 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v166, v16, &byte_262899963, v17, v17, v167, v164, v165, 0);
  DgnString::~DgnString(&v287);
  *a4 += v164;
  *a5 += v165;
  v168 = sizeObject<DgnPrimArray<unsigned char>>(this + 368, 0);
  v169 = sizeObject<DgnPrimArray<unsigned char>>(this + 368, 1);
  v287 = 0;
  v288 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v287);
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 521);
  if (v288)
  {
    v171 = v287;
  }

  else
  {
    v171 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v170, v16, &byte_262899963, v17, v17, v171, v168, v169, 0);
  DgnString::~DgnString(&v287);
  *a4 += v168;
  *a5 += v169;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v172 = 12;
  }

  else
  {
    v172 = 16;
  }

  v173 = *(this + 98);
  v174 = *(this + 99);
  if (v174 >= v173)
  {
    v175 = 0;
    if (v173 > 0)
    {
      v172 += 4 * (v173 - 1) + 4;
    }

    v176 = v172 + 4 * (v174 - v173);
  }

  else
  {
    v175 = 4 * v173;
    v176 = v172;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 523);
  if (v288)
  {
    v178 = v287;
  }

  else
  {
    v178 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v177, v16, &byte_262899963, v17, v17, v178, v176, v172, v175);
  DgnString::~DgnString(&v287);
  *a4 += v176;
  *a5 += v172;
  *a6 += v175;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v179 = 12;
  }

  else
  {
    v179 = 16;
  }

  v180 = *(this + 102);
  v181 = *(this + 103);
  v80 = v181 >= v180;
  v182 = v181 - v180;
  if (v80)
  {
    if (v180 > 0)
    {
      v183 = (v180 - 1) + v179 + 1;
    }

    else
    {
      v183 = v179;
    }

    v179 = v183 + v182;
    v180 = 0;
  }

  else
  {
    v183 = v179;
  }

  v184 = v180;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 525);
  if (v288)
  {
    v186 = v287;
  }

  else
  {
    v186 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v185, v16, &byte_262899963, v17, v17, v186, v179, v183, v184);
  DgnString::~DgnString(&v287);
  *a4 += v179;
  *a5 += v183;
  *a6 += v184;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v187 = 12;
  }

  else
  {
    v187 = 16;
  }

  v188 = *(this + 106);
  v189 = *(this + 107);
  if (v189 >= v188)
  {
    v190 = 0;
    if (v188 > 0)
    {
      v187 += 8 * (v188 - 1) + 8;
    }

    v191 = v187 + 8 * (v189 - v188);
  }

  else
  {
    v190 = 8 * v188;
    v191 = v187;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 527);
  if (v288)
  {
    v193 = v287;
  }

  else
  {
    v193 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v192, v16, &byte_262899963, v17, v17, v193, v191, v187, v190);
  DgnString::~DgnString(&v287);
  *a4 += v191;
  *a5 += v187;
  *a6 += v190;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v194 = 12;
  }

  else
  {
    v194 = 16;
  }

  v195 = *(this + 110);
  v196 = *(this + 111);
  if (v196 >= v195)
  {
    v197 = 0;
    if (v195 > 0)
    {
      v194 += 8 * (v195 - 1) + 8;
    }

    v198 = v194 + 8 * (v196 - v195);
  }

  else
  {
    v197 = 8 * v195;
    v198 = v194;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 529);
  if (v288)
  {
    v200 = v287;
  }

  else
  {
    v200 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v199, v16, &byte_262899963, v17, v17, v200, v198, v194, v197);
  DgnString::~DgnString(&v287);
  *a4 += v198;
  *a5 += v194;
  *a6 += v197;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v201 = 12;
  }

  else
  {
    v201 = 16;
  }

  v202 = *(this + 114);
  v203 = *(this + 115);
  if (v203 >= v202)
  {
    v204 = 0;
    if (v202 > 0)
    {
      v201 += 8 * (v202 - 1) + 8;
    }

    v205 = v201 + 8 * (v203 - v202);
  }

  else
  {
    v204 = 8 * v202;
    v205 = v201;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 531);
  if (v288)
  {
    v207 = v287;
  }

  else
  {
    v207 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v206, v16, &byte_262899963, v17, v17, v207, v205, v201, v204);
  DgnString::~DgnString(&v287);
  *a4 += v205;
  *a5 += v201;
  *a6 += v204;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 533);
  if (v288)
  {
    v209 = v287;
  }

  else
  {
    v209 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v16, &byte_262899963, v17, v17, v209, 8, 8, 0);
  DgnString::~DgnString(&v287);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 535);
  if (v288)
  {
    v211 = v287;
  }

  else
  {
    v211 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v210, v16, &byte_262899963, v17, v17, v211, 8, 8, 0);
  DgnString::~DgnString(&v287);
  *a4 += 8;
  *a5 += 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v212 = 4;
  }

  else
  {
    v212 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 536);
  if (v288)
  {
    v214 = v287;
  }

  else
  {
    v214 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v213, v16, &byte_262899963, v17, v17, v214, v212, v212, 0);
  DgnString::~DgnString(&v287);
  *a4 += v212;
  *a5 += v212;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v215 = 12;
  }

  else
  {
    v215 = 16;
  }

  v216 = *(this + 124);
  v217 = *(this + 125);
  if (v217 >= v216)
  {
    v218 = 0;
    if (v216 > 0)
    {
      v215 += 4 * (v216 - 1) + 4;
    }

    v219 = v215 + 4 * (v217 - v216);
  }

  else
  {
    v218 = 4 * v216;
    v219 = v215;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 538);
  if (v288)
  {
    v221 = v287;
  }

  else
  {
    v221 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v220, v16, &byte_262899963, v17, v17, v221, v219, v215, v218);
  DgnString::~DgnString(&v287);
  *a4 += v219;
  *a5 += v215;
  *a6 += v218;
  v222 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v222 = 12;
  }

  v223 = *(this + 128);
  v224 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v224 = 3;
  }

  v225 = (((*(this + 129) - v223) + v223) << v224) + v222;
  v226 = (v223 << v224) + v222;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 540);
  if (v288)
  {
    v228 = v287;
  }

  else
  {
    v228 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v227, v16, &byte_262899963, v17, v17, v228, v225, v226, 0);
  DgnString::~DgnString(&v287);
  *a4 += v225;
  *a5 += v226;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 542);
  if (v288)
  {
    v230 = v287;
  }

  else
  {
    v230 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v229, v16, &byte_262899963, v17, v17, v230, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v231 = 4;
  }

  else
  {
    v231 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 544);
  if (v288)
  {
    v233 = v287;
  }

  else
  {
    v233 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v232, v16, &byte_262899963, v17, v17, v233, v231, v231, 0);
  DgnString::~DgnString(&v287);
  *a4 += v231;
  *a5 += v231;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v234 = 12;
  }

  else
  {
    v234 = 16;
  }

  v235 = *(this + 136);
  v236 = *(this + 137);
  if (v236 >= v235)
  {
    v237 = 0;
    if (v235 > 0)
    {
      v234 += 4 * (v235 - 1) + 4;
    }

    v238 = v234 + 4 * (v236 - v235);
  }

  else
  {
    v237 = 4 * v235;
    v238 = v234;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 546);
  if (v288)
  {
    v240 = v287;
  }

  else
  {
    v240 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v239, v16, &byte_262899963, v17, v17, v240, v238, v234, v237);
  DgnString::~DgnString(&v287);
  *a4 += v238;
  *a5 += v234;
  *a6 += v237;
  v241 = sizeObject<BinaryIntScale>(this + 552, 0);
  v242 = sizeObject<BinaryIntScale>(this + 552, 1);
  LODWORD(v287) = 0;
  sizeObject(&v287, 2);
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 548);
  if (v288)
  {
    v244 = v287;
  }

  else
  {
    v244 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v243, v16, &byte_262899963, v17, v17, v244, v241, v242, 0);
  DgnString::~DgnString(&v287);
  *a4 += v241;
  *a5 += v242;
  v245 = sizeObject<BinaryIntScale>(this + 568, 0);
  v246 = sizeObject<BinaryIntScale>(this + 568, 1);
  LODWORD(v287) = 0;
  sizeObject(&v287, 2);
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 550);
  if (v288)
  {
    v248 = v287;
  }

  else
  {
    v248 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v247, v16, &byte_262899963, v17, v17, v248, v245, v246, 0);
  DgnString::~DgnString(&v287);
  *a4 += v245;
  *a5 += v246;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v249 = 12;
  }

  else
  {
    v249 = 16;
  }

  v250 = *(this + 148);
  v251 = *(this + 149);
  if (v251 >= v250)
  {
    v252 = 0;
    if (v250 > 0)
    {
      v249 += 2 * (v250 - 1) + 2;
    }

    v253 = v249 + 2 * (v251 - v250);
  }

  else
  {
    v252 = 2 * v250;
    v253 = v249;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 552);
  if (v288)
  {
    v255 = v287;
  }

  else
  {
    v255 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v254, v16, &byte_262899963, v17, v17, v255, v253, v249, v252);
  DgnString::~DgnString(&v287);
  *a4 += v253;
  *a5 += v249;
  *a6 += v252;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 554);
  if (v288)
  {
    v257 = v287;
  }

  else
  {
    v257 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v256, v16, &byte_262899963, v17, v17, v257, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 556);
  if (v288)
  {
    v259 = v287;
  }

  else
  {
    v259 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v258, v16, &byte_262899963, v17, v17, v259, 4, 4, 0);
  DgnString::~DgnString(&v287);
  *a4 += 4;
  *a5 += 4;
  v260 = sizeObject(this + 608, 0);
  v261 = sizeObject(this + 608, 1);
  v262 = sizeObject(this + 608, 3);
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 558);
  if (v288)
  {
    v264 = v287;
  }

  else
  {
    v264 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v263, v16, &byte_262899963, v17, v17, v264, v260, v261, v262);
  DgnString::~DgnString(&v287);
  *a4 += v260;
  *a5 += v261;
  *a6 += v262;
  v265 = sizeObject(this + 612, 0);
  v266 = sizeObject(this + 612, 1);
  v267 = sizeObject(this + 612, 3);
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 560);
  if (v288)
  {
    v269 = v287;
  }

  else
  {
    v269 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v268, v16, &byte_262899963, v17, v17, v269, v265, v266, v267);
  DgnString::~DgnString(&v287);
  *a4 += v265;
  *a5 += v266;
  *a6 += v267;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v270 = 4;
  }

  else
  {
    v270 = 8;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 562);
  if (v288)
  {
    v272 = v287;
  }

  else
  {
    v272 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v271, v16, &byte_262899963, v17, v17, v272, v270, v270, 0);
  DgnString::~DgnString(&v287);
  *a4 += v270;
  *a5 += v270;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v273 = 12;
  }

  else
  {
    v273 = 16;
  }

  v274 = *(this + 158);
  v275 = *(this + 159);
  if (v275 >= v274)
  {
    v276 = 0;
    if (v274 > 0)
    {
      v273 += 2 * (v274 - 1) + 2;
    }

    v277 = v273 + 2 * (v275 - v274);
  }

  else
  {
    v276 = 2 * v274;
    v277 = v273;
  }

  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 564);
  if (v288)
  {
    v279 = v287;
  }

  else
  {
    v279 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v278, v16, &byte_262899963, v17, v17, v279, v277, v273, v276);
  DgnString::~DgnString(&v287);
  *a4 += v277;
  *a5 += v273;
  *a6 += v276;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 566);
  if (v288)
  {
    v281 = v287;
  }

  else
  {
    v281 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v280, v16, &byte_262899963, v17, v17, v281, 2, 2, 0);
  DgnString::~DgnString(&v287);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 567);
  if (v288)
  {
    v283 = v287;
  }

  else
  {
    v283 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v282, v284, &byte_262899963, (35 - v284), (35 - v284), v283, *a4, *a5, *a6);
  DgnString::~DgnString(&v287);
}

void sub_262834D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void OnDemandPelScorer::beginPelSyncRecog(OnDemandPelScorer *this, int a2, const AdaptConfig *a3, const CTFTMgr *a4, _BOOL4 a5, char a6, char a7, double a8, double a9)
{
  v9 = a8;
  v12 = a5;
  if (*(this + 131) != 1 || ((v17 = *(this + 2), LODWORD(a9) = *(v17 + 140), LODWORD(a8) = *(v17 + 144), *&a8 / *&a9 >= *(this + 17)) ? (v18 = !a5) : (v18 = 1), v18))
  {
    *(this + 128) = 0;
  }

  else
  {
    v22 = *(gParDiagnosticScoreAllPels + 41);
    *(this + 128) = v22 ^ 1;
    if ((v22 & 1) == 0)
    {
      v20 = (*(*this + 104))(this);
      v21 = (**this)(this);
      v19 = 0;
      goto LABEL_9;
    }
  }

  v19 = (*(*this + 8))(this);
  v20 = 0;
  v21 = 0;
LABEL_9:
  PelScorer::beginPelSyncRecogBase(this, a2, a3, a4, v12, a6, a7, v9, v20, v21, v19);
}

void PelScorer::beginPelSyncRecogBase(PelScorer *this, int a2, const AdaptConfig *a3, const CTFTMgr *a4, char a5, char a6, char a7, double a8, void (*a9)(const PelScorer *, unsigned __int16, unsigned int, unsigned __int16 *, unsigned int *), int (*a10)(const PelScorer *, unsigned __int16, const unsigned __int16 *, unsigned int *), int (*a11)(const PelScorer *, unsigned __int16, unsigned int *))
{
  *(this + 130) = a7;
  if (*(this + 7))
  {
    v19 = *(this + 11);
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 112) = *(*(v19 + 16) + 132);
    *(v19 + 152) = -16;
    *(v19 + 272) = 0x100000001;
    *(v19 + 304) = 0;
    *(v19 + 320) = 0;
    *(v19 + 284) = 0x100000001;
    PelScorer::initFeatureCacheForSlots(v19);
    *(v19 + 129) = 0;
  }

  v20 = *(this + 12);
  if (v20)
  {
    PelScorer::beginOnlineCTPelSyncRecog(v20, a4, a8);
  }

  *(this + 3) = a3;
  *(this + 4) = a4;
  PelMgr::verifyFeatureDimension(*(this + 2), *(this + 6), a4, a2, 0, *(this + 8), *(this + 9), *(this + 7));
  *(this + 28) = *(*(this + 2) + 132);
  PelScorer::initFeatureCache(this);
  *(this + 129) = a5;
  v21 = *(this + 15);

  PelScoreCache::beginPelScoreCacheSyncRecog(v21, a6, a5, a9, a10, a11, a8);
}

void PelScorer::beginFmpePelSyncRecog(PelScorer *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 28) = *(*(this + 2) + 132);
  *(this + 38) = -16;
  *(this + 34) = 0x100000001;
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 284) = 0x100000001;
  PelScorer::initFeatureCacheForSlots(this);
  *(this + 129) = 0;
}

void PelScorer::beginOnlineCTPelSyncRecog(PelScorer *this, const CTFTMgr *a2, double a3)
{
  *(this + 3) = 0;
  *(this + 4) = a2;
  *(this + 28) = *(*(this + 2) + 132);
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 284) = 0x100000001;
  PelScorer::initFeatureCacheForSlots(this);
  *(this + 129) = 0;
  v5 = *(this + 15);

  PelScoreCache::beginPelScoreCacheSyncRecog(v5, 0, 0, 0, 0, 0, a3);
}

uint64_t PelScorer::initFeatureCache(PelScorer *this)
{
  *(this + 38) = -16;
  v2 = *(this + 4);
  *(this + 68) = *(v2 + 56);
  *(this + 69) = *(v2 + 136);
  v3 = *(*(this + 2) + 140);
  v4 = *(this + 77);
  if (v3 > v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 296, v3 - v4, 0);
  }

  *(this + 76) = v3;
  v5 = *(this + 81);
  if (v3 > v5)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 312, v3 - v5, 0);
  }

  *(this + 80) = v3;
  *(this + 72) = 0;
  *(this + 71) = 0;
  v6 = *(this + 68);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = *(this + 70);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = v7 * v6;
  v50 = 0;
  v51 = 0;
  if (v8)
  {
    v48 = 0;
    v9 = realloc_array(0, &v48, 4 * v7 * v6, 0, 0, 1);
    v50 = v48;
    LODWORD(v51) = v8;
    HIDWORD(v51) = v9 >> 2;
    v10 = (v8 + 3) & 0x1FFFFFFFCLL;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_26286BF80;
    v13 = xmmword_26286B680;
    v14 = v48 + 8;
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 2) = v8;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 1) = v8;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v8;
        v14[1] = v8;
      }

      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 4;
      v10 -= 4;
    }

    while (v10);
  }

  else
  {
    LODWORD(v51) = 0;
  }

  v17 = *(this + 69);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v17 * v8;
  v48 = 0;
  v49 = 0;
  if (v18)
  {
    v52 = 0;
    v19 = realloc_array(0, &v52, 4 * v17 * v8, 0, 0, 1);
    v20 = v52;
    v48 = v52;
    LODWORD(v49) = v18;
    HIDWORD(v49) = v19 >> 2;
    v21 = (v18 + 3) & 0x1FFFFFFFCLL;
    v22 = vdupq_n_s64(v18 - 1);
    v23 = xmmword_26286BF80;
    v24 = xmmword_26286B680;
    v25 = v52 + 8;
    v26 = vdupq_n_s64(4uLL);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v22, v24));
      if (vuzp1_s16(v27, *v22.i8).u8[0])
      {
        *(v25 - 2) = v18;
      }

      if (vuzp1_s16(v27, *&v22).i8[2])
      {
        *(v25 - 1) = v18;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v23))).i32[1])
      {
        *v25 = v18;
        v25[1] = v18;
      }

      v23 = vaddq_s64(v23, v26);
      v24 = vaddq_s64(v24, v26);
      v25 += 4;
      v21 -= 4;
    }

    while (v21);
  }

  else
  {
    v20 = 0;
    LODWORD(v49) = 0;
  }

  v28 = *(this + 70);
  if (v28 <= 1)
  {
    v28 = 1;
  }

  v29 = *(this + 69);
  if (v29 <= 1)
  {
    v29 = 1;
  }

  if (v3)
  {
    v30 = 0;
    v31 = (this + 284);
    v33 = *(this + 5);
    v32 = *(this + 6);
    v34 = *(this + 4);
    v35 = v50;
    v36 = *(this + 39);
    v37 = *(this + 37);
    do
    {
      if (v32)
      {
        v38 = *(*(v32 + 48) + 2 * v30);
      }

      else
      {
        v38 = -1;
      }

      if (*(v34 + 56))
      {
        v39 = *(*(v34 + 24) + 4 * *(*(v33 + 136) + 4 * v30));
      }

      else
      {
        v39 = -1;
      }

      if (*(v34 + 136))
      {
        v40 = *(*(v34 + 40) + 4 * *(*(v33 + 168) + 4 * v30));
      }

      else
      {
        v40 = -1;
      }

      v41 = (v38 & ~(v38 >> 31)) + (v39 & ~(v39 >> 31)) * v28;
      v42 = v35[v41];
      if (v42 == v8)
      {
        v43 = *(this + 72);
        v35[v41] = v43;
        *(this + 72) = v43 + 1;
        v42 = v35[v41];
      }

      *(v36 + 4 * v30) = v42;
      v44 = (v40 & ~(v40 >> 31)) + v41 * v29;
      v45 = v20[v44];
      if (v45 == v18)
      {
        v46 = *v31;
        v20[v44] = *v31;
        *v31 = v46 + 1;
        v45 = v20[v44];
      }

      *(v37 + 4 * v30++) = v45;
    }

    while (v3 > v30);
  }

  PelScorer::initFeatureCacheForSlots(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v48);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v50);
}

void sub_262835528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

void PelScorer::endPelSyncRecogBase(PelScorer *this)
{
  *(this + 130) = 0;
  PelScoreCache::endPelScoreCacheSyncRecog(*(this + 15));
  *(this + 129) = 0;
  PelScorer::deleteFeatureCache(this);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (*(this + 7))
  {
    v2 = *(this + 11);
    PelScorer::deleteFeatureCache(v2);
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
  }

  v3 = *(this + 12);
  if (v3)
  {
    v3[3] = 0;
    v3[4] = 0;
    v4 = v3[15];

    PelScoreCache::endPelScoreCacheSyncRecog(v4);
  }
}

double PelScorer::deleteFeatureCache(PelScorer *this)
{
  *(this + 38) = -16;
  *(this + 34) = 0;
  *(this + 284) = 0;
  v2 = *(this + 37);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 37) = 0;
  }

  *(this + 38) = 0;
  v3 = *(this + 39);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 39) = 0;
  }

  *(this + 40) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 352);
  v4 = *(this + 22);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 22) = 0;
  }

  *(this + 23) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 368);
  v5 = *(this + 48);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 48) = 0;
  }

  *(this + 49) = 0;
  v6 = *(this + 50);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 50) = 0;
  }

  *(this + 51) = 0;
  v7 = *(this + 56);
  if (v7)
  {
    MemChunkFree(v7, 0);
    *(this + 56) = 0;
  }

  *(this + 57) = 0;
  v8 = *(this + 52);
  if (v8)
  {
    MemChunkFree(v8, 0);
    *(this + 52) = 0;
  }

  *(this + 53) = 0;
  v9 = *(this + 54);
  if (v9)
  {
    MemChunkFree(v9, 0);
    *(this + 54) = 0;
  }

  *(this + 55) = 0;
  v10 = *(this + 73);
  if (v10)
  {
    MemChunkFree(v10, 0);
    *(this + 73) = 0;
  }

  *(this + 74) = 0;
  v11 = *(this + 67);
  if (v11)
  {
    MemChunkFree(v11, 0);
    *(this + 67) = 0;
  }

  *(this + 68) = 0;
  v12 = *(this + 69);
  if (v12)
  {
    MemChunkFree(v12, 0);
    *(this + 69) = 0;
  }

  *(this + 70) = 0;
  v13 = *(this + 71);
  if (v13)
  {
    MemChunkFree(v13, 0);
    *(this + 71) = 0;
  }

  *(this + 72) = 0;
  v14 = *(this + 78);
  if (v14)
  {
    MemChunkFree(v14, 0);
    *(this + 78) = 0;
  }

  result = 0.0;
  *(this + 79) = 0;
  return result;
}

void PelScorer::endFmpePelSyncRecog(PelScorer *this)
{
  PelScorer::deleteFeatureCache(this);
  *(this + 3) = 0;
  *(this + 4) = 0;
}

void PelScorer::initFeatureCacheForSlots(PelScorer *this)
{
  v2 = *(this + 71);
  v3 = *(this + 91);
  if (v2 > v3)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 352, v2 - v3, 0);
  }

  v4 = *(this + 90);
  if (v4 <= v2)
  {
    if (v4 < v2)
    {
      v7 = v2 - v4;
      v8 = 16 * v4;
      do
      {
        v9 = (*(this + 44) + v8);
        *v9 = 0;
        v9[1] = 0;
        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  else if (v4 > v2)
  {
    v5 = v4;
    v6 = 16 * v4 - 16;
    do
    {
      --v5;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 44) + v6);
      v6 -= 16;
    }

    while (v5 > v2);
  }

  *(this + 90) = v2;
  v10 = *(this + 72);
  v11 = *(this + 95);
  if (v10 > v11)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 368, v10 - v11, 0);
  }

  v12 = *(this + 94);
  if (v12 <= v10)
  {
    if (v12 < v10)
    {
      v15 = v10 - v12;
      v16 = 16 * v12;
      do
      {
        v17 = (*(this + 46) + v16);
        *v17 = 0;
        v17[1] = 0;
        v16 += 16;
        --v15;
      }

      while (v15);
    }
  }

  else if (v12 > v10)
  {
    v13 = v12;
    v14 = 16 * v12 - 16;
    do
    {
      --v13;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 46) + v14);
      v14 -= 16;
    }

    while (v13 > v10);
  }

  *(this + 94) = v10;
  v18 = *(this + 72);
  v19 = *(this + 99);
  if (v18 > v19)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 384, v18 - v19, 0);
  }

  *(this + 98) = v18;
  v20 = *(this + 71);
  if (*(this + 103) >= v20)
  {
    *(this + 102) = v20;
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v57 = 0;
    *(this + 103) = realloc_array(*(this + 50), &v57, v20, *(this + 102), *(this + 102), 1);
    *(this + 50) = v57;
    *(this + 102) = v20;
  }

  bzero(*(this + 50), v20);
LABEL_27:
  v21 = *(this + 71);
  v22 = *(this + 159);
  if (v21 > v22)
  {
    DgnPrimArray<short>::reallocElts(this + 624, v21 - v22, 0);
  }

  *(this + 158) = v21;
  v23 = *(this + 2);
  if (*(v23 + 16))
  {
    v24 = (*(this + 29) + 1) & 0xFFFFFFFE;
    v25 = *(v23 + 12);
    if (v25 == 1)
    {
      v33 = *(this + 71);
      v34 = ((((v24 + 7) | 7) + *(this + 28)) | 7) * v33;
      v35 = *(this + 149);
      if (v34 > v35)
      {
        DgnPrimArray<short>::reallocElts(this + 584, v34 - v35, 0);
        v33 = *(this + 71);
      }

      *(this + 148) = v34;
      *(this + 150) = (((*(this + 146) + 15) & 0xFFFFFFF0) - *(this + 146)) >> 1;
      v36 = *(this + 137);
      v37 = v33;
      if (v33 > v36)
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 536, v33 - v36, 0);
        v37 = *(this + 71);
      }

      *(this + 136) = v33;
      v38 = *(this + 141);
      if (v37 > v38)
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 552, v37 - v38, 0);
      }

      v39 = *(this + 140);
      if (v39 < v37)
      {
        bzero((*(this + 69) + 4 * v39), 4 * (v37 + ~v39) + 4);
      }

      *(this + 140) = v37;
      v40 = *(this + 71);
      v41 = *(this + 145);
      if (v40 > v41)
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 568, v40 - v41, 0);
      }

      v42 = *(this + 144);
      if (v42 < v40)
      {
        bzero((*(this + 71) + 4 * v42), 4 * (v40 + ~v42) + 4);
      }

      *(this + 144) = v40;
    }

    else if (v25 == 2)
    {
      v26 = *(this + 71);
      v27 = (*(this + 28) + v24) * v26;
      v28 = *(this + 115);
      if (v27 > v28)
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 448, v27 - v28, 0);
        v26 = *(this + 71);
      }

      *(this + 114) = v27;
      v29 = *(this + 107);
      v30 = v26;
      if (v26 > v29)
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 416, v26 - v29, 0);
        v30 = *(this + 71);
      }

      *(this + 106) = v26;
      v31 = *(this + 111);
      if (v30 > v31)
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 432, v30 - v31, 0);
      }

      *(this + 110) = v30;
    }

    return;
  }

  v32 = *(v23 + 12);
  if (v32 > 1)
  {
    if (v32 == 3)
    {
LABEL_63:
      v47 = ((*(this + 28) + 7) & 0xFFFFFFF8) * *(this + 71);
      v48 = *(this + 149);
      if ((v47 | 7) > v48)
      {
        DgnPrimArray<short>::reallocElts(this + 584, (v47 | 7) - v48, 0);
      }

      *(this + 148) = v47 | 7;
      v49 = *(this + 73);
      v50 = (((v49 + 15) & 0xFFFFFFF0) - v49) >> 1;
      *(this + 150) = v50;
      bzero(v49, v50);
      bzero((*(this + 73) + 2 * v47), (7 - *(this + 150)));
      v51 = *(this + 71);
      v52 = *(this + 137);
      if (v51 > v52)
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 536, v51 - v52, 0);
      }

      *(this + 136) = v51;
      return;
    }

    if (v32 == 2)
    {
      v43 = *(this + 71);
      v44 = *(this + 28) * v43;
      v45 = *(this + 115);
      if (v44 > v45)
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 448, v44 - v45, 0);
        v43 = *(this + 71);
      }

      *(this + 114) = v44;
      v46 = *(this + 107);
      if (v43 > v46)
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 416, v43 - v46, 0);
      }

      *(this + 106) = v43;
    }
  }

  else
  {
    if (v32)
    {
      if (v32 != 1)
      {
        return;
      }

      goto LABEL_63;
    }

    v53 = *(this + 71);
    v54 = *(this + 28) * v53;
    v55 = *(this + 129);
    if (v54 > v55)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 504, v54 - v55, 0);
      v53 = *(this + 71);
    }

    *(this + 128) = v54;
    v56 = *(this + 125);
    if (v53 > v56)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 488, v53 - v56, 0);
    }

    *(this + 124) = v53;
  }
}

uint64_t PelScorer::setupForUttAccumulate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(*(a1 + 16) + 16) == 1)
  {
    PelScorer::getMICFeatures(a1, a2, (a3 + 16));
    v5 = *(a1 + 264);

    return PelScorer::setFrameStaticsMic(a1, 0, a2, (a1 + 248), v5, 0, 1);
  }

  else
  {

    return PelScorer::setFrameStaticsNoMic(a1, 0, a2, 0, 1);
  }
}

uint64_t PelScorer::getMICFeatures(uint64_t result, uint64_t *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 112);
  v7 = *(result + 16);
  v8 = *(v7 + 152);
  v9 = (v8 + 1) & 0xFFFFFFFE;
  v10 = *(result + 260);
  if (v9 > v10)
  {
    result = DgnPrimArray<short>::reallocElts(result + 248, v9 - v10, 0);
    v7 = *(v5 + 16);
  }

  *(v5 + 256) = v9;
  v11 = *(v7 + 12);
  if (v11 == 1)
  {
    result = PelScorer::MICFeaturesFunction(v5, a2);
  }

  else if (v11 == 2)
  {
    v49 = 0;
    v50 = 0;
    if (v8)
    {
      v47 = 0;
      v12 = realloc_array(0, &v47, 8 * v8, 0, 0, 1);
      v48 = 0;
      v49 = v47;
      LODWORD(v50) = v8;
      HIDWORD(v50) = v12 >> 3;
      v47 = 0;
      v45 = 0;
      v13 = realloc_array(0, &v45, 4 * v8, 0, 0, 1);
      v46 = 0;
      v47 = v45;
      LODWORD(v48) = v8;
      HIDWORD(v48) = v13 >> 2;
      v44 = a3;
      v45 = 0;
      v51 = 0;
      v14 = realloc_array(0, &v51, 4 * v8, 0, 0, 1);
      v16 = 0;
      v17 = v6 + 3;
      v18 = (v6 + 3) & 0xFFFFFFFC;
      v45 = v51;
      LODWORD(v46) = v8;
      HIDWORD(v46) = v14 >> 2;
      v19 = *(v5 + 16);
      v20 = 32;
      do
      {
        v21 = 0;
        v22 = v49;
        v49[v16] = 0;
        if (v17 >= 4)
        {
          v23 = 0;
          v24 = 0;
          v25 = v19[25] + 24 * v16;
          v26 = 0.0;
          v27 = v17 & 0xFFFFFFFC;
          v28 = 4 * v18;
          do
          {
            v29 = 0;
            v30 = *a2;
            v31 = v23;
            do
            {
              v32 = 0.0;
              if (4 * v24 < v18)
              {
                v33 = v27;
                v34 = v31;
                do
                {
                  LOBYTE(v15) = *(v30 + *(v19[27] + v34));
                  v15 = *&v15;
                  v32 = v32 + v15 * *(*v25 + 2 * (*(v25 + 16) + v34));
                  v34 += 4;
                  --v33;
                }

                while (v33);
              }

              v26 = v26 + v32 * v32;
              *&v22[v16] = v26;
              ++v29;
              ++v31;
            }

            while (v29 != 4);
            ++v24;
            v23 += v28;
            v28 -= 16;
            v27 -= 4;
          }

          while (v24 != (v6 + 3) >> 2);
          v21 = (v26 + 0.5);
        }

        UnscaleBits = BinaryIntScale::getUnscaleBits(v21, 14);
        *(v47 + v16) = UnscaleBits;
        v19 = *(v5 + 16);
        v36 = 2 * *(v19[21] + 4 * v16) - UnscaleBits;
        *(v45 + v16) = v36;
        if (v20 >= v36)
        {
          v20 = v36;
        }

        ++v16;
      }

      while (v16 != v8);
      v37 = *(*(v5 + 16) + 168);
      v38 = v49;
      v39 = *(v5 + 248);
      v40 = v8;
      do
      {
        v41 = *v37++;
        v42 = 1.0 / (1 << (2 * v41 - v20));
        v43 = *v38++;
        *v39++ = (v42 * v43 + 0.5);
        --v40;
      }

      while (v40);
      a3 = v44;
    }

    else
    {
      v47 = 0;
      v48 = 0;
      v45 = 0;
      v20 = 32;
      v46 = 0;
    }

    *(v5 + 264) = v20;
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v45);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v47);
    result = DgnPrimArray<unsigned int>::~DgnPrimArray(&v49);
  }

  *a3 += *(*(v5 + 16) + 156) * v8;
  return result;
}

void sub_262836020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t PelScorer::setFrameStaticsMic(uint64_t result, unsigned int a2, unsigned __int8 **a3, unsigned __int16 **a4, uint64_t a5, int a6, int a7)
{
  v12 = result;
  if (a7)
  {
    v13 = *(result + 16);
    if (*(v13 + 536))
    {
      result = FrameDecisionTree::classifyFrame((v13 + 528), a3);
      *(*(v12 + 624) + 2 * a2) = result;
      *(v12 + 640) = result;
    }
  }

  v14 = *(v12 + 116) + 1;
  v15 = v14 & 0xFFFFFFFE;
  v16 = *(*(v12 + 16) + 12);
  if (v16 == 1)
  {
    v32 = *(v12 + 112);
    v33 = (v32 + 7) & 0xFFFFFFF8;
    v34 = (v15 + 7) & 0xFFFFFFF8;
    v35 = *(v12 + 600);
    v36 = (v33 + v34) * a2;
    if (v32)
    {
      v37 = *a3;
      v38 = *(v12 + 584);
      v39 = v35 + v36;
      result = *(v12 + 112);
      do
      {
        v40 = *v37++;
        *(v38 + 2 * v39++) = v40;
        --result;
      }

      while (result);
    }

    if (v32 < v33)
    {
      v41 = *(v12 + 584);
      v42 = v32 + v35 + v36;
      v43 = v32 - v33;
      do
      {
        *(v41 + 2 * v42++) = 0;
      }

      while (!__CFADD__(v43++, 1));
    }

    if (v15)
    {
      v45 = *a4;
      v46 = *(v12 + 584);
      v47 = v35 + v36 + v33;
      v48 = v14 & 0xFFFFFFFE;
      do
      {
        v49 = *v45++;
        result = v49;
        *(v46 + 2 * v47++) = v49;
        --v48;
      }

      while (v48);
    }

    if (v15 < v34)
    {
      v50 = *(v12 + 584);
      v51 = v35 + v36 + v33 + (v14 & 0xFFFFFFFE);
      v52 = v34 - v15;
      do
      {
        *(v50 + 2 * v51++) = 0;
        --v52;
      }

      while (v52);
    }

    v53 = v36 + v35;
    v54 = *(v12 + 536);
    v29 = a2;
    *(v54 + 4 * a2) = a6;
    v55 = *(v12 + 552);
    if ((a5 & 0x80000000) != 0)
    {
      *(v55 + 4 * a2) = 0;
      v56 = *(v12 + 568);
      *(v56 + 4 * a2) = -a5;
    }

    else
    {
      *(v55 + 4 * a2) = a5;
      v56 = *(v12 + 568);
      *(v56 + 4 * a2) = 0;
    }

    *(v12 + 616) = *(v12 + 584) + 2 * v53;
    *(v12 + 604) = *(v54 + 4 * a2);
    *(v12 + 608) = *(v55 + 4 * a2);
    *(v12 + 612) = *(v56 + 4 * a2);
  }

  else if (v16 == 2)
  {
    v17 = *(v12 + 112);
    v18 = (v17 + v15) * a2;
    if (v17)
    {
      v19 = *a3;
      v20 = *(v12 + 448);
      v21 = *(v12 + 112);
      v22 = (v17 + v15) * a2;
      do
      {
        v23 = *v19++;
        *(v20 + 8 * v22++) = v23;
        --v21;
      }

      while (v21);
    }

    if (v15)
    {
      v24 = *a4;
      v25 = *(v12 + 448);
      v26 = v17 + v18;
      do
      {
        v27 = *v24++;
        *(v25 + 8 * v26++) = v27;
        --v15;
      }

      while (v15);
    }

    v28 = *(v12 + 416);
    *(v28 + 8 * a2) = a6;
    v29 = a2;
    v30 = *(v12 + 432);
    *&v31 = 0x3FF0000000000000 - (a5 << 52);
    if (a5 < 0)
    {
      v31 = (1 << -a5);
    }

    *(v30 + 8 * a2) = v31;
    *(v12 + 480) = *(v12 + 448) + 8 * v18;
    *(v12 + 464) = *(v28 + 8 * a2);
    *(v12 + 472) = *(v30 + 8 * a2);
  }

  else
  {
    v29 = a2;
  }

  *(*(v12 + 400) + v29) = 1;
  return result;
}

uint64_t PelScorer::setFrameStaticsNoMic(uint64_t result, unsigned int a2, unsigned __int8 **a3, int a4, int a5)
{
  v8 = result;
  if (a5)
  {
    v9 = *(result + 16);
    if (*(v9 + 536))
    {
      result = FrameDecisionTree::classifyFrame((v9 + 528), a3);
      *(*(v8 + 624) + 2 * a2) = result;
      *(v8 + 640) = result;
    }
  }

  v10 = *(*(v8 + 16) + 12);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v30 = *(v8 + 112);
      v31 = v30 * a2;
      if (v30)
      {
        v32 = *a3;
        v33 = *(v8 + 448);
        v34 = v30 * a2;
        do
        {
          v35 = *v32++;
          *(v33 + 8 * v34++) = v35;
          --v30;
        }

        while (v30);
      }

      else
      {
        v33 = *(v8 + 448);
      }

      v11 = a2;
      *(*(v8 + 416) + 8 * a2) = a4;
      *(v8 + 480) = v33 + 8 * v31;
      *(v8 + 464) = a4;
      goto LABEL_28;
    }

    if (v10 != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    if (v10 != 1)
    {
LABEL_7:
      v11 = a2;
      goto LABEL_28;
    }

LABEL_10:
    v12 = *(v8 + 112);
    v13 = (v12 + 7) & 0xFFFFFFF8;
    v14 = *(v8 + 600);
    v15 = v13 * a2;
    if (v12)
    {
      v16 = *a3;
      v17 = *(v8 + 584);
      v18 = v14 + v15;
      v19 = *(v8 + 112);
      do
      {
        v20 = *v16++;
        *(v17 + 2 * v18++) = v20;
        --v19;
      }

      while (v19);
    }

    v21 = v15 + v14;
    v22 = *(v8 + 584);
    if (v12 < v13)
    {
      v23 = v12 + v14 + v15;
      v24 = v12 - v13;
      do
      {
        *(v22 + 2 * v23++) = 0;
      }

      while (!__CFADD__(v24++, 1));
    }

    v11 = a2;
    *(*(v8 + 536) + 4 * a2) = a4;
    *(v8 + 616) = v22 + 2 * v21;
    *(v8 + 604) = a4;
    goto LABEL_28;
  }

  v26 = *(v8 + 112);
  if (v26)
  {
    v27 = 0;
    v28 = *(*(v8 + 80) + 56);
    v29 = v26 * a2;
    do
    {
      *(*(v8 + 504) + 8 * v29++) = v28 + 2 * (*a3)[v27++];
    }

    while (v26 != v27);
  }

  v11 = a2;
  *(*(v8 + 488) + 4 * a2) = a4;
  *(v8 + 528) = *(v8 + 504) + 8 * v26 * a2;
  *(v8 + 520) = a4;
LABEL_28:
  *(*(v8 + 400) + v11) = 1;
  return result;
}

uint64_t *PelScorer::beginPelFrameBase(uint64_t a1, int a2, BOOL a3, uint64_t a4, PelStats *a5, char a6)
{
  PelScorer::resetFeatureCache(a1);
  *(a1 + 152) = a2;
  DgnPrimArray<unsigned char>::copyArraySlice((a1 + 160), a4, 0, *(a4 + 8));
  if (*(a1 + 284) <= 1u)
  {
    if (*(a1 + 24))
    {
      PelScorer::setFrameStaticsForGenoneAdapt(a1, 0, a3, a5);
    }

    else
    {
      (*(*a1 + 96))(a1, 0, a5);
    }
  }

  v12 = *(a1 + 120);
  v13 = *(a1 + 152);

  return PelScoreCache::beginPelScoreCacheFrame(v12, v13, a6);
}

uint64_t PelScorer::resetFeatureCache(uint64_t this)
{
  v1 = *(this + 284);
  if (v1)
  {
    v2 = *(this + 400);
    v3 = (*(this + 352) + 8);
    do
    {
      *v3 = 0;
      v3 += 4;
      *v2++ = 0;
      --v1;
    }

    while (v1);
  }

  *(this + 184) = 0;
  v4 = *(this + 288);
  if (v4)
  {
    v5 = (v4 + 3) & 0x1FFFFFFFCLL;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_26286BF80;
    v8 = xmmword_26286B680;
    v9 = (*(this + 368) + 40);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 8) = 0;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 4) = 0;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = 0;
        v9[4] = 0;
      }

      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 16;
      v5 -= 4;
    }

    while (v5);
  }

  return this;
}

uint64_t PelScorer::setFrameStaticsForGenoneAdapt(PelScorer *this, unsigned int a2, BOOL a3, PelStats *a4)
{
  v5 = *(*(this + 37) + 4 * a2);
  if (*(*(this + 50) + v5) != 1)
  {
    PelScorer::getTransformedFeatures_Adapt_Cache(this, a2, a3, *(this + 44) + 16 * v5, a4);
    if (*(*(this + 2) + 16) == 1)
    {
      PelScorer::getMICFeatures(this, (*(this + 44) + 16 * v5), a4 + 4);
      PelScorer::setFrameStaticsMic(this, v5, (*(this + 44) + 16 * v5), this + 31, *(this + 66), 0, 0);
    }

    else
    {
      PelScorer::setFrameStaticsNoMic(this, v5, (*(this + 44) + 16 * v5), 0, 0);
    }

    return *(this + 44) + 16 * v5;
  }

  v6 = *(*(this + 2) + 12);
  if (*(*(this + 2) + 16) == 1)
  {
    if (v6 == 1)
    {
      *(this + 77) = *(this + 73) + 2 * (*(this + 150) + (((*(this + 29) + 7) & 0xFFFFFFF8) + ((*(this + 28) + 7) & 0xFFFFFFF8)) * v5);
      v9 = *(*(this + 69) + 4 * v5);
      *(this + 151) = *(*(this + 67) + 4 * v5);
      *(this + 152) = v9;
      *(this + 153) = *(*(this + 71) + 4 * v5);
    }

    else if (v6 == 2)
    {
      v7 = *(*(this + 52) + 8 * v5);
      *(this + 60) = *(this + 56) + 8 * ((*(this + 29) + *(this + 28)) * v5);
      *(this + 58) = v7;
      *(this + 59) = *(*(this + 54) + 8 * v5);
    }

    return *(this + 44) + 16 * v5;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      *(this + 66) = *(this + 63) + 8 * (*(this + 28) * v5);
      *(this + 130) = *(*(this + 61) + 4 * v5);
      return *(this + 44) + 16 * v5;
    }

    if (v6 != 1)
    {
      return *(this + 44) + 16 * v5;
    }

    goto LABEL_16;
  }

  if (v6 == 3)
  {
LABEL_16:
    *(this + 77) = *(this + 73) + 2 * (*(this + 150) + ((*(this + 28) + 7) & 0xFFFFFFF8) * v5);
    *(this + 151) = *(*(this + 67) + 4 * v5);
    return *(this + 44) + 16 * v5;
  }

  if (v6 == 2)
  {
    *(this + 60) = *(this + 56) + 8 * (*(this + 28) * v5);
    *(this + 58) = *(*(this + 52) + 8 * v5);
  }

  return *(this + 44) + 16 * v5;
}

float *(*OnDemandPelScorer::getGenoneScoringFunction(OnDemandPelScorer *this))(float *result, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v1 = *(this + 2);
  v2 = *(v1 + 536);
  v5 = v1 + 12;
  v3 = *(v1 + 12);
  v4 = *(v5 + 4);
  result = FloatGenoneScoringFunction;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return result;
      }

      v7 = v2 == 0;
      if (v2)
      {
        v8 = PackedIntMICShortListGenoneScoringFunction;
      }

      else
      {
        v8 = PackedIntMICGenoneScoringFunction;
      }

      v9 = PackedIntShortListGenoneScoringFunction;
      v10 = PackedIntGenoneScoringFunction;
      goto LABEL_22;
    }

    v11 = MulTableShortListGenoneScoringFunction;
    if (!v2)
    {
      v11 = MulTableGenoneScoringFunction;
    }

LABEL_15:
    if (v4 == 1)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      return result;
    }

    if (v2)
    {
      v11 = 0;
    }

    else
    {
      v11 = QuantPerDimGenoneScoringFunction;
    }

    goto LABEL_15;
  }

  v7 = v2 == 0;
  if (v2)
  {
    v8 = FloatMICShortListGenoneScoringFunction;
  }

  else
  {
    v8 = FloatMICGenoneScoringFunction;
  }

  v9 = FloatShortListGenoneScoringFunction;
  v10 = FloatGenoneScoringFunction;
LABEL_22:
  if (v7)
  {
    v9 = v10;
  }

  if (v4 == 1)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t MulTableShortListGenoneScoringFunction(uint64_t result, unsigned int a2, int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v7 = result;
  v8 = *(result + 16);
  *a5 = 0;
  v9 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
  v10 = v9 + a3;
  if (v9 + a3 == -1)
  {
    v10 = *(v8 + 576);
  }

  if (v9 >= v10)
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    v12 = v10;
  }

  else
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (++v11 >= v10)
      {
        goto LABEL_33;
      }
    }

    v12 = v11;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (1)
    {
      v14 = v12 - v9;
      v15 = *(v7 + 16);
      v16 = v15[33];
      result = PelMgr::getModelData(v15, a2);
      v17 = result + 2 * v16 * v14;
      v18 = *(v7 + 528);
      if (v16)
      {
        if (v16 < 1)
        {
LABEL_21:
          v25 = 0;
          goto LABEL_22;
        }

        v25 = 0;
        v26 = v16 - 1;
        do
        {
          v25 += *(*(v18 + 8 * v26) + 2 * *(v17 + 2 * v26));
          v27 = v26-- + 1;
        }

        while (v27 > 1);
      }

      else
      {
        v19 = (v16 >> 1);
        if (v19 < 1)
        {
          goto LABEL_21;
        }

        v20 = 0;
        v21 = 0;
        v22 = v19 - 1;
        v23 = 2 * v19 - 1;
        do
        {
          v21 += *(*(v18 + 8 * v22) + 2 * *(v17 + 2 * v22));
          v20 += *(*(v18 + 8 * v23) + 2 * *(v17 + 2 * v23));
          v24 = v22-- + 1;
          --v23;
        }

        while (v24 > 1);
        v25 = v20 + v21;
      }

LABEL_22:
      ++v13;
      if (v25 >= 20000)
      {
        v28 = 20000;
      }

      else
      {
        v28 = v25;
      }

      a4[v14] = v28;
      if (++v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
        {
          if (v10 == ++v11)
          {
            goto LABEL_34;
          }
        }

        v12 = v11;
      }

      if (v11 >= v10)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v13 = 0;
LABEL_34:
  *a5 = v13;
  return result;
}

uint64_t MulTableGenoneScoringFunction(uint64_t result, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v9 = result;
    for (i = 0; i != a3; ++i)
    {
      v11 = *(v9 + 16);
      v12 = v11[33];
      result = PelMgr::getModelData(v11, a2);
      v13 = *(v9 + 528);
      if (v12)
      {
        if (v12 < 1)
        {
LABEL_12:
          v20 = 0;
          goto LABEL_13;
        }

        v20 = 0;
        v21 = v12 - 1;
        do
        {
          v20 += *(*(v13 + 8 * v21) + 2 * *(result + 2 * (v12 * i) + 2 * v21));
          v22 = v21-- + 1;
        }

        while (v22 > 1);
      }

      else
      {
        v14 = (v12 >> 1);
        if (v14 < 1)
        {
          goto LABEL_12;
        }

        v15 = 0;
        v16 = 0;
        v17 = v14 - 1;
        v18 = 2 * v14 - 1;
        do
        {
          v16 += *(*(v13 + 8 * v17) + 2 * *(result + 2 * (v12 * i) + 2 * v17));
          v15 += *(*(v13 + 8 * v18) + 2 * *(result + 2 * (v12 * i) + 2 * v18));
          v19 = v17-- + 1;
          --v18;
        }

        while (v19 > 1);
        v20 = v15 + v16;
      }

LABEL_13:
      if (v20 >= 20000)
      {
        v23 = 20000;
      }

      else
      {
        v23 = v20;
      }

      a4[i] = v23;
    }
  }

  *a5 = a3;
  return result;
}

double *FloatMICShortListGenoneScoringFunction(double *result, unsigned int a2, int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v5 = *(result + 2);
  *a5 = 0;
  v6 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 320) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
  v7 = v6 + a3;
  if (v6 + a3 == -1)
  {
    v7 = *(v5 + 576);
  }

  if (v6 >= v7)
  {
    v8 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 320) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
    v9 = v7;
  }

  else
  {
    v8 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 320) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
    while (((*(*(v5 + 568) + 4 * (v8 >> 5)) >> v8) & 1) == 0)
    {
      if (++v8 >= v7)
      {
        goto LABEL_31;
      }
    }

    v9 = v8;
  }

  if (v8 < v7)
  {
    v10 = 0;
    v11 = *(v5 + 132);
    v12 = *(v5 + 152);
    v13 = *(v5 + 232) + *(v5 + 248) + *(*(v5 + 256) + 4 * a2) + 4 * v11;
    v14 = *(result + 60);
    v15 = result[59];
    result = &v14[(v11 - 1) + 1];
    while (1)
    {
      v16 = v9 - v6;
      v17 = (v13 + 4 * (v12 + 2 * v11 + 3) * v16);
      v18 = 0.0;
      v19 = 0.0;
      if (v11)
      {
        break;
      }

      v25 = v14;
      if (v12)
      {
        goto LABEL_18;
      }

LABEL_21:
      ++v10;
      v31 = v19 + v15 * v18 + *v17 + 0.5;
      v32 = v31 & ~(v31 >> 31);
      if (v32 >= 20000)
      {
        LOWORD(v32) = 20000;
      }

      a4[v16] = v32;
      if (++v8 >= v7)
      {
        v9 = v7;
      }

      else
      {
        while (((*(*(v5 + 568) + 4 * (v8 >> 5)) >> v8) & 1) == 0)
        {
          if (v7 == ++v8)
          {
            goto LABEL_32;
          }
        }

        v9 = v8;
      }

      if (v8 >= v7)
      {
        goto LABEL_32;
      }
    }

    v20 = v11;
    v21 = v14;
    do
    {
      v22 = *v17++;
      v23 = v22;
      v24 = *v21++;
      v19 = v19 + v23 * v24;
      --v20;
    }

    while (v20);
    v25 = &v14[(v11 - 1) + 1];
    if (!v12)
    {
      goto LABEL_21;
    }

LABEL_18:
    v18 = 0.0;
    v26 = v12;
    v27 = v17;
    do
    {
      v28 = *v27++;
      v29 = v28;
      v30 = *v25++;
      v18 = v18 + v29 * v30;
      --v26;
    }

    while (v26);
    v17 += (v12 - 1) + 1;
    goto LABEL_21;
  }

LABEL_31:
  v10 = 0;
LABEL_32:
  *a5 = v10;
  return result;
}

uint64_t FloatMICGenoneScoringFunction(uint64_t result, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v5 = 0;
    v6 = *(result + 16);
    v7 = *(v6 + 132);
    v8 = *(v6 + 152);
    v9 = *(v6 + 232) + *(v6 + 248) + *(*(v6 + 256) + 4 * a2) + 4 * v7;
    v10 = *(result + 480);
    v11 = *(result + 472);
    while (1)
    {
      v12 = (v9 + 4 * ((v8 + 2 * v7 + 3) * v5));
      v13 = 0.0;
      v14 = 0.0;
      if (v7)
      {
        break;
      }

      v20 = v10;
      if (v8)
      {
        goto LABEL_9;
      }

LABEL_12:
      v26 = v14 + v11 * v13 + *v12 + 0.5;
      v27 = v26 & ~(v26 >> 31);
      if (v27 >= 20000)
      {
        LOWORD(v27) = 20000;
      }

      a4[v5] = v27;
      result = v5 + 1;
      v5 = result;
      if (result == a3)
      {
        goto LABEL_15;
      }
    }

    v15 = v7;
    v16 = v10;
    do
    {
      v17 = *v12++;
      v18 = v17;
      v19 = *v16++;
      v14 = v14 + v18 * v19;
      --v15;
    }

    while (v15);
    v20 = &v10[(v7 - 1) + 1];
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_9:
    v13 = 0.0;
    v21 = v8;
    v22 = v12;
    do
    {
      v23 = *v22++;
      v24 = v23;
      v25 = *v20++;
      v13 = v13 + v24 * v25;
      --v21;
    }

    while (v21);
    v12 += (v8 - 1) + 1;
    goto LABEL_12;
  }

LABEL_15:
  *a5 = a3;
  return result;
}

uint64_t FloatShortListGenoneScoringFunction(uint64_t result, unsigned int a2, int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v5 = *(result + 16);
  *a5 = 0;
  v6 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 640) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
  v7 = v6 + a3;
  if (v6 + a3 == -1)
  {
    v7 = *(v5 + 576);
  }

  if (v6 >= v7)
  {
    v8 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 640) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
    v9 = v7;
  }

  else
  {
    v8 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 640) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
    while (((*(*(v5 + 568) + 4 * (v8 >> 5)) >> v8) & 1) == 0)
    {
      if (++v8 >= v7)
      {
        goto LABEL_27;
      }
    }

    v9 = v8;
  }

  if (v8 >= v7)
  {
LABEL_27:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = *(v5 + 132);
    v12 = *(v5 + 232) + *(v5 + 248) + *(*(v5 + 256) + 4 * a2);
    v13 = *(result + 480);
    do
    {
      result = v9 - v6;
      v14 = (v12 + 4 * ((2 * v11) | 1) * result);
      v15 = 0.0;
      if (v11)
      {
        v16 = v13;
        v17 = v11;
        do
        {
          v18 = v14 + 2;
          v19 = *v16++;
          v15 = v15 + (v19 - *v14) * (v19 - *v14) * v14[1];
          v14 += 2;
          --v17;
        }

        while (v17);
        v14 = v18;
      }

      ++v10;
      v20 = (v15 + *v14 + 0.5);
      if (v20 >= 20000)
      {
        LOWORD(v20) = 20000;
      }

      a4[result] = v20;
      if (++v8 >= v7)
      {
        v9 = v7;
      }

      else
      {
        result = *(v5 + 568);
        while (((*(result + 4 * (v8 >> 5)) >> v8) & 1) == 0)
        {
          if (v7 == ++v8)
          {
            goto LABEL_28;
          }
        }

        v9 = v8;
      }
    }

    while (v8 < v7);
  }

LABEL_28:
  *a5 = v10;
  return result;
}

float *FloatGenoneScoringFunction(float *result, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v5 = 0;
    v6 = *(result + 2);
    v7 = *(v6 + 132);
    v8 = *(v6 + 232) + *(v6 + 248) + *(*(v6 + 256) + 4 * a2);
    v9 = *(result + 60);
    do
    {
      v10 = (v8 + 4 * ((2 * v7) | 1) * v5);
      v11 = 0.0;
      if (v7)
      {
        v12 = v9;
        v13 = v7;
        do
        {
          result = v10 + 2;
          v14 = *v12++;
          v11 = v11 + (v14 - *v10) * (v14 - *v10) * v10[1];
          v10 += 2;
          --v13;
        }

        while (v13);
        v10 = result;
      }

      v15 = (v11 + *v10 + 0.5);
      if (v15 >= 20000)
      {
        LOWORD(v15) = 20000;
      }

      a4[v5++] = v15;
    }

    while (v5 != a3);
  }

  *a5 = a3;
  return result;
}

uint64_t PackedIntMICShortListGenoneScoringFunction(uint64_t this, unsigned int a2, int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v7 = this;
  v8 = *(this + 16);
  v16 = *(*(v8 + 488) + 32);
  *a5 = 0;
  v9 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(this + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
  v10 = v9 + a3;
  if (v9 + a3 == -1)
  {
    v10 = *(v8 + 576);
  }

  if (v9 >= v10)
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(this + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    v12 = v10;
  }

  else
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(this + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (++v11 >= v10)
      {
        goto LABEL_22;
      }
    }

    v12 = v11;
  }

  if (v11 >= v10)
  {
LABEL_22:
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = v12 - v9;
      ++v13;
      this = PelScorer::getPackedIntMICComponentScore(v7, a2, v12 - v9);
      v15 = this >> v16;
      if (this >> v16 >= 20000)
      {
        LOWORD(v15) = 20000;
      }

      a4[v14] = v15;
      if (++v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
        {
          if (v10 == ++v11)
          {
            goto LABEL_23;
          }
        }

        v12 = v11;
      }
    }

    while (v11 < v10);
  }

LABEL_23:
  *a5 = v13;
  return this;
}

PelScorer *PackedIntMICGenoneScoringFunction(PelScorer *this, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v9 = this;
    v10 = 0;
    v11 = *(*(*(this + 2) + 488) + 32);
    do
    {
      v12 = v10 + 1;
      this = PelScorer::getPackedIntMICComponentScore(v9, a2, v10);
      v13 = this >> v11;
      if (this >> v11 >= 20000)
      {
        LOWORD(v13) = 20000;
      }

      a4[v10++] = v13;
    }

    while (a3 != v12);
  }

  *a5 = a3;
  return this;
}

uint64_t PackedIntShortListGenoneScoringFunction(uint64_t result, uint64_t a2, int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v7 = result;
  v8 = *(result + 16);
  v16 = *(*(v8 + 488) + 32);
  *a5 = 0;
  v9 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
  v10 = v9 + a3;
  if (v9 + a3 == -1)
  {
    v10 = *(v8 + 576);
  }

  if (v9 >= v10)
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    v12 = v10;
  }

  else
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (++v11 >= v10)
      {
        goto LABEL_22;
      }
    }

    v12 = v11;
  }

  if (v11 >= v10)
  {
LABEL_22:
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = v12 - v9;
      ++v13;
      result = (*(*v7 + 80))(v7, a2, v14);
      v15 = result >> v16;
      if (result >> v16 >= 20000)
      {
        LOWORD(v15) = 20000;
      }

      a4[v14] = v15;
      if (++v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
        {
          if (v10 == ++v11)
          {
            goto LABEL_23;
          }
        }

        v12 = v11;
      }
    }

    while (v11 < v10);
  }

LABEL_23:
  *a5 = v13;
  return result;
}

uint64_t PackedIntGenoneScoringFunction(uint64_t result, uint64_t a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v11 = *(*(*(result + 16) + 488) + 32);
    do
    {
      v12 = v10 + 1;
      result = (*(*v9 + 80))(v9, a2, v10);
      v13 = result >> v11;
      if (result >> v11 >= 20000)
      {
        LOWORD(v13) = 20000;
      }

      a4[v10++] = v13;
    }

    while (a3 != v12);
  }

  *a5 = a3;
  return result;
}

uint64_t QuantPerDimGenoneScoringFunction(uint64_t result, uint64_t a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v11 = *(*(*(result + 16) + 488) + 32);
    do
    {
      v12 = v10 + 1;
      result = (*(*v9 + 88))(v9, a2, v10);
      v13 = result >> v11;
      if (result >> v11 >= 20000)
      {
        LOWORD(v13) = 20000;
      }

      a4[v10++] = v13;
    }

    while (a3 != v12);
  }

  *a5 = a3;
  return result;
}

uint64_t (*OnDemandPelScorer::getCompScoresToPelScoreFunction(OnDemandPelScorer *this))(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v1 = *(this + 2);
  v2 = *(v1 + 536);
  v3 = *(v1 + 12);
  v4 = PackedIntCompScoresToPelScoreFunction;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v5 = v2 == 0;
      v6 = MulTableShortListCompScoresToPelScoreFunction;
      v4 = MulTableCompScoresToPelScoreFunction;
LABEL_14:
      if (!v5)
      {
        return v6;
      }

      return v4;
    }

    if (v3 == 1)
    {
      v5 = v2 == 0;
      v6 = PackedIntShortListCompScoresToPelScoreFunction;
      v4 = PackedIntCompScoresToPelScoreFunction;
      goto LABEL_14;
    }

    return FloatCompScoresToPelScoreFunction;
  }

  if (v3 == 3)
  {
    return v4;
  }

  if (v3 != 2)
  {
    return FloatCompScoresToPelScoreFunction;
  }

  v7 = FloatCompScoresToPelScoreFunction;
  if (*(gParDiagnosticAttilaAcousticScoreScale + 48) != 0.0)
  {
    v7 = FloatAttilaCompatibleCompScoresToPelScoreFunction;
  }

  v4 = FloatShortListCompScoresToPelScoreFunction;
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t FloatShortListCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *(v4 + 344);
  v7 = *v5;
  v8 = v5[1] - v7;
  v9 = *(*(v4 + 288) + 2 * a2);
  *a4 = 0;
  v10 = *(*(v4 + 584) + 4 * v9) + v8 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v9));
  v11 = v10 + v8;
  if (v11 == -1)
  {
    v11 = *(v4 + 576);
  }

  if (v10 >= v11)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = v10;
    while (((*(*(v4 + 568) + 4 * (v12 >> 5)) >> v12) & 1) == 0)
    {
      if (++v12 >= v11)
      {
        goto LABEL_31;
      }
    }

    v13 = v12;
  }

  if (v12 >= v11)
  {
LABEL_31:
    v14 = 0;
    v18 = 20000;
  }

  else
  {
    v14 = 0;
    v15 = v6 + v7;
    v16 = 1;
    v17 = 20000;
    do
    {
      v18 = a3[v13 - v10] + *(v15 + v13 - v10);
      if ((v16 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v17 < v18)
          {
            v18 = v17;
          }
        }

        else
        {
          v20 = v18 - v17;
          v19 = v18 - v17 < 0;
          if (v18 >= v17)
          {
            v18 = v17;
          }

          if (v19)
          {
            v20 = -v20;
          }

          if (v20 < *(v4 + 512))
          {
            v18 -= *(*(v4 + 504) + 4 * v20);
          }
        }
      }

      ++v14;
      if (++v12 >= v11)
      {
        v13 = v11;
      }

      else
      {
        while (((*(*(v4 + 568) + 4 * (v12 >> 5)) >> v12) & 1) == 0)
        {
          if (v11 == ++v12)
          {
            goto LABEL_32;
          }
        }

        v13 = v12;
      }

      v16 = 0;
      v17 = v18;
    }

    while (v12 < v11);
  }

LABEL_32:
  v21 = *(a1 + 58) + 0.5;
  *a4 = v14;
  v22 = v18 + v21;
  if (v22 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v22;
  }
}

uint64_t FloatAttilaCompatibleCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4, double a5, double a6, double a7)
{
  v8 = *(gParDiagnosticAttilaAcousticScoreScale + 48);
  v9 = *(a1 + 2);
  v10 = (*(v9 + 456) + 4 * a2);
  v11 = *v10;
  LODWORD(v10) = v10[1];
  v12 = 0.0;
  v13 = 0.0;
  v14 = (v10 - v11);
  if (v10 != v11)
  {
    v15 = a3;
    v16 = 0;
    v17 = (*(v9 + 344) + v11);
    do
    {
      LOBYTE(a6) = v17[v16];
      LOWORD(a7) = a3[v16];
      a7 = *&a7;
      a6 = (*&a6 + a7) / *(a1 + 13);
      if (a6 < v12 || v16 == 0)
      {
        v12 = a6;
      }

      ++v16;
    }

    while (v14 != v16);
    v13 = 0.0;
    do
    {
      v19 = *v17++;
      v20 = v19;
      v21 = *v15++;
      v22 = (v20 + v21) / *(a1 + 13);
      if (v22 - v12 <= 50.0)
      {
        v13 = v13 + DgnExp(v12 - v22);
      }

      --v14;
    }

    while (v14);
  }

  *&v23 = DgnLog(v13);
  v24 = v12 - *&v23;
  LODWORD(v23) = *(v9 + 132);
  v25 = (v8 * (v24 + v23 * DgnLog(12.5663706)) + 0.5) + (*(a1 + 58) + 0.5);
  if (v25 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v25;
  }
}

uint64_t FloatCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *v5;
  v7 = v5[1] - v6;
  if (v7)
  {
    v9 = (*(v4 + 344) + v6);
    v10 = 1;
    v8 = 20000;
    v11 = v7;
    do
    {
      v12 = v8;
      v14 = *v9++;
      v13 = v14;
      v15 = *a3++;
      v8 = v15 + v13;
      if ((v10 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v12 < v8)
          {
            v8 = v12;
          }
        }

        else
        {
          v17 = v8 - v12;
          v16 = v8 - v12 < 0;
          if (v8 >= v12)
          {
            v8 = v12;
          }

          if (v16)
          {
            v17 = -v17;
          }

          if (v17 < *(v4 + 512))
          {
            v8 -= *(*(v4 + 504) + 4 * v17);
          }
        }
      }

      v10 = 0;
      --v11;
    }

    while (v11);
  }

  else
  {
    v8 = 20000;
  }

  *a4 = v7;
  v18 = v8 + (*(a1 + 58) + 0.5);
  if (v18 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v18;
  }
}

uint64_t MulTableShortListCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *(v4 + 344);
  v7 = *v5;
  v8 = v5[1] - v7;
  v9 = *(*(v4 + 288) + 2 * a2);
  *a4 = 0;
  v10 = *(*(v4 + 584) + 4 * v9) + v8 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v9));
  v11 = v10 + v8;
  if (v11 == -1)
  {
    v11 = *(v4 + 576);
  }

  if (v10 >= v11)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = v10;
    while (((*(*(v4 + 568) + 4 * (v12 >> 5)) >> v12) & 1) == 0)
    {
      if (++v12 >= v11)
      {
        goto LABEL_31;
      }
    }

    v13 = v12;
  }

  if (v12 >= v11)
  {
LABEL_31:
    v14 = 0;
    v18 = 20000;
  }

  else
  {
    v14 = 0;
    v15 = v6 + v7;
    v16 = 1;
    v17 = 20000;
    do
    {
      v18 = a3[v13 - v10] + *(v15 + v13 - v10);
      if ((v16 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v17 < v18)
          {
            v18 = v17;
          }
        }

        else
        {
          v20 = v18 - v17;
          v19 = v18 - v17 < 0;
          if (v18 >= v17)
          {
            v18 = v17;
          }

          if (v19)
          {
            v20 = -v20;
          }

          if (v20 < *(v4 + 512))
          {
            v18 -= *(*(v4 + 504) + 4 * v20);
          }
        }
      }

      ++v14;
      if (++v12 >= v11)
      {
        v13 = v11;
      }

      else
      {
        while (((*(*(v4 + 568) + 4 * (v12 >> 5)) >> v12) & 1) == 0)
        {
          if (v11 == ++v12)
          {
            goto LABEL_32;
          }
        }

        v13 = v12;
      }

      v16 = 0;
      v17 = v18;
    }

    while (v12 < v11);
  }

LABEL_32:
  *a4 = v14;
  v21 = *(a1 + 130) + v18;
  if (v21 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v21;
  }
}

uint64_t MulTableCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *v5;
  v7 = v5[1] - v6;
  if (v7)
  {
    v9 = (*(v4 + 344) + v6);
    v10 = 1;
    v8 = 20000;
    v11 = v7;
    do
    {
      v12 = v8;
      v14 = *v9++;
      v13 = v14;
      v15 = *a3++;
      v8 = v15 + v13;
      if ((v10 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v12 < v8)
          {
            v8 = v12;
          }
        }

        else
        {
          v17 = v8 - v12;
          v16 = v8 - v12 < 0;
          if (v8 >= v12)
          {
            v8 = v12;
          }

          if (v16)
          {
            v17 = -v17;
          }

          if (v17 < *(v4 + 512))
          {
            v8 -= *(*(v4 + 504) + 4 * v17);
          }
        }
      }

      v10 = 0;
      --v11;
    }

    while (v11);
  }

  else
  {
    v8 = 20000;
  }

  *a4 = v7;
  v18 = *(a1 + 130) + v8;
  if (v18 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v18;
  }
}

uint64_t PackedIntShortListCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *(v4 + 360);
  v7 = *v5;
  v8 = v5[1] - v7;
  v9 = *(*(v4 + 488) + 32);
  v10 = *(*(v4 + 288) + 2 * a2);
  *a4 = 0;
  v11 = *(*(v4 + 584) + 4 * v10) + v8 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v10));
  v12 = v11 + v8;
  if (v12 == -1)
  {
    v12 = *(v4 + 576);
  }

  if (v11 >= v12)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = v11;
    while (((*(*(v4 + 568) + 4 * (v13 >> 5)) >> v13) & 1) == 0)
    {
      if (++v13 >= v12)
      {
        goto LABEL_31;
      }
    }

    v14 = v13;
  }

  if (v13 >= v12)
  {
LABEL_31:
    v15 = 0;
    v19 = 20000;
  }

  else
  {
    v15 = 0;
    v16 = 1;
    v17 = 20000;
    v18 = v6 + 4 * v7;
    do
    {
      v19 = (*(v18 + 4 * (v14 - v11)) >> v9) + a3[v14 - v11];
      if ((v16 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v17 < v19)
          {
            v19 = v17;
          }
        }

        else
        {
          v21 = v19 - v17;
          v20 = v19 - v17 < 0;
          if (v19 >= v17)
          {
            v19 = v17;
          }

          if (v20)
          {
            v21 = -v21;
          }

          if (v21 < *(v4 + 512))
          {
            v19 -= *(*(v4 + 504) + 4 * v21);
          }
        }
      }

      ++v15;
      if (++v13 >= v12)
      {
        v14 = v12;
      }

      else
      {
        while (((*(*(v4 + 568) + 4 * (v13 >> 5)) >> v13) & 1) == 0)
        {
          if (v12 == ++v13)
          {
            goto LABEL_32;
          }
        }

        v14 = v13;
      }

      v16 = 0;
      v17 = v19;
    }

    while (v13 < v12);
  }

LABEL_32:
  *a4 = v15;
  v22 = *(a1 + 151) + v19;
  if (v22 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v22;
  }
}

uint64_t PackedIntCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *v5;
  v7 = v5[1] - v6;
  if (v7)
  {
    v9 = (*(v4 + 360) + 4 * v6);
    v10 = 1;
    v8 = 20000;
    v11 = v7;
    do
    {
      v12 = v8;
      v13 = *v9++;
      v14 = v13 >> *(*(v4 + 488) + 32);
      v15 = *a3++;
      v8 = v14 + v15;
      if ((v10 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v12 < v8)
          {
            v8 = v12;
          }
        }

        else
        {
          v17 = v8 - v12;
          v16 = v8 - v12 < 0;
          if (v8 >= v12)
          {
            v8 = v12;
          }

          if (v16)
          {
            v17 = -v17;
          }

          if (v17 < *(v4 + 512))
          {
            v8 -= *(*(v4 + 504) + 4 * v17);
          }
        }
      }

      v10 = 0;
      --v11;
    }

    while (v11);
  }

  else
  {
    v8 = 20000;
  }

  *a4 = v7;
  v18 = *(a1 + 151) + v8;
  if (v18 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v18;
  }
}

uint64_t (*OnDemandPelScorer::getPelScoringFunction(OnDemandPelScorer *this))(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v1 = *(this + 2);
  v2 = *(v1 + 536);
  v5 = v1 + 12;
  v3 = *(v1 + 12);
  v4 = *(v5 + 4);
  v6 = QuantPerDimPelScoringFunction;
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      return v6;
    }

    if (v3 == 2)
    {
      v7 = v2 == 0;
      if (v2)
      {
        v8 = FloatMICShortListPelScoringFunction;
      }

      else
      {
        v8 = FloatMICPelScoringFunction;
      }

      v9 = FloatShortListPelScoringFunction;
      v10 = FloatPelScoringFunction;
LABEL_14:
      if (v7)
      {
        v9 = v10;
      }

      if (v4 == 1)
      {
        return v8;
      }

      else
      {
        return v9;
      }
    }

    return FloatPelScoringFunction;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v7 = v2 == 0;
      if (v2)
      {
        v8 = PackedIntMICShortListPelScoringFunction;
      }

      else
      {
        v8 = PackedIntMICPelScoringFunction;
      }

      v9 = PackedIntShortListPelScoringFunction;
      v10 = PackedIntPelScoringFunction;
      goto LABEL_14;
    }

    return FloatPelScoringFunction;
  }

  v6 = MulTablePelScoringFunction;
  if (v2)
  {
    return MulTableShortListPelScoringFunction;
  }

  return v6;
}

uint64_t FloatMICShortListPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  FloatMICShortListGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = FloatShortListCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

uint64_t FloatMICPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  FloatMICGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = FloatCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

uint64_t FloatShortListPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  FloatShortListGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = FloatShortListCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

uint64_t FloatPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  FloatGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = FloatCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

uint64_t MulTableShortListPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  MulTableShortListGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = MulTableShortListCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

void sub_262838548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MulTablePelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  MulTableGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = MulTableCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

void sub_262838634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t PackedIntMICShortListPelScoringFunction(const PelScorer *this, unsigned int a2, unsigned int *a3)
{
  v4 = *(this + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v6 = *(*(v4 + 272) + 4 * v5 + 4) - *(*(v4 + 272) + 4 * v5);
  v7 = *(*(v4 + 456) + 4 * a2);
  v8 = *(v4 + 360);
  v27 = *(this + 131);
  v26 = *(*(v4 + 488) + 32);
  *a3 = 0;
  v9 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(this + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
  v10 = v9 + v6;
  if (v9 + v6 == -1)
  {
    v10 = *(v4 + 576);
  }

  if (v9 >= v10)
  {
    v11 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(this + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
    v12 = v10;
  }

  else
  {
    v11 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(this + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
    while (((*(*(v4 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (++v11 >= v10)
      {
        goto LABEL_34;
      }
    }

    v12 = v11;
  }

  if (v11 < v10)
  {
    v13 = 0;
    v14 = 1;
    v15 = 20000;
    v24 = v8 + 4 * v7;
    while (1)
    {
      v16 = v12 - v9;
      PackedIntMICComponentScore = PelScorer::getPackedIntMICComponentScore(this, v5, v12 - v9);
      if (v27)
      {
        v18 = (*(v24 + 4 * v16) >> v26) + (PackedIntMICComponentScore >> v26);
        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v18 = (*(v24 + 4 * v16) + PackedIntMICComponentScore) >> v26;
        if ((v14 & 1) == 0)
        {
LABEL_16:
          if (*(this + 130) == 1)
          {
            if (v15 >= v18)
            {
              v15 = v18;
            }
          }

          else
          {
            v20 = v18 - v15;
            v19 = v18 - v15 < 0;
            if (v18 < v15)
            {
              v15 = v18;
            }

            if (v19)
            {
              v21 = -v20;
            }

            else
            {
              v21 = v20;
            }

            if (v21 < *(v4 + 512))
            {
              v15 -= *(*(v4 + 504) + 4 * v21);
            }
          }

          goto LABEL_26;
        }
      }

      v15 = v18;
LABEL_26:
      ++v13;
      if (++v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        while (((*(*(v4 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
        {
          if (v10 == ++v11)
          {
            goto LABEL_35;
          }
        }

        v12 = v11;
      }

      v14 = 0;
      if (v11 >= v10)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v13 = 0;
  v15 = 20000;
LABEL_35:
  *a3 = v13;
  v22 = *(this + 151) + v15;
  if (v22 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v22;
  }
}

uint64_t PackedIntMICPelScoringFunction(const PelScorer *this, unsigned int a2, unsigned int *a3)
{
  v4 = *(this + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v6 = *(*(v4 + 272) + 4 * v5);
  v7 = *(*(v4 + 272) + 4 * v5 + 4);
  v8 = (v7 - v6);
  if (v7 == v6)
  {
    v9 = 20000;
    goto LABEL_20;
  }

  v22 = a3;
  v10 = 0;
  v11 = *(v4 + 360) + 4 * *(*(v4 + 456) + 4 * a2);
  v12 = *(this + 131);
  v13 = *(*(v4 + 488) + 32);
  v14 = 1;
  v9 = 20000;
  do
  {
    PackedIntMICComponentScore = PelScorer::getPackedIntMICComponentScore(this, v5, v10);
    if (v12)
    {
      v16 = (*(v11 + 4 * v10) >> v13) + (PackedIntMICComponentScore >> v13);
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = (*(v11 + 4 * v10) + PackedIntMICComponentScore) >> v13;
      if (v14)
      {
LABEL_10:
        v9 = v16;
        goto LABEL_11;
      }
    }

    if (*(this + 130) == 1)
    {
      if (v9 >= v16)
      {
        v9 = v16;
      }
    }

    else
    {
      v18 = v16 - v9;
      v17 = v16 - v9 < 0;
      if (v16 < v9)
      {
        v9 = v16;
      }

      if (v17)
      {
        v19 = -v18;
      }

      else
      {
        v19 = v18;
      }

      if (v19 < *(v4 + 512))
      {
        v9 -= *(*(v4 + 504) + 4 * v19);
      }
    }

LABEL_11:
    v14 = 0;
    ++v10;
  }

  while (v8 != v10);
  a3 = v22;
LABEL_20:
  *a3 = v8;
  v20 = *(this + 151) + v9;
  if (v20 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v20;
  }
}

uint64_t PackedIntShortListPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v4 = *(a1 + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v6 = *(*(v4 + 272) + 4 * v5 + 4) - *(*(v4 + 272) + 4 * v5);
  v7 = *(*(v4 + 456) + 4 * a2);
  v8 = *(v4 + 360);
  v27 = *(a1 + 131);
  v26 = *(*(v4 + 488) + 32);
  *a3 = 0;
  v9 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
  v10 = v9 + v6;
  if (v9 + v6 == -1)
  {
    v10 = *(v4 + 576);
  }

  if (v9 >= v10)
  {
    v11 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
    v12 = v10;
  }

  else
  {
    v11 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
    while (((*(*(v4 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (++v11 >= v10)
      {
        goto LABEL_34;
      }
    }

    v12 = v11;
  }

  if (v11 < v10)
  {
    v13 = 0;
    v14 = 1;
    v15 = 20000;
    v24 = v8 + 4 * v7;
    while (1)
    {
      v16 = v12 - v9;
      v17 = (*(*a1 + 80))(a1, v5, v12 - v9);
      if (v27)
      {
        v18 = (*(v24 + 4 * v16) >> v26) + (v17 >> v26);
        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v18 = (*(v24 + 4 * v16) + v17) >> v26;
        if ((v14 & 1) == 0)
        {
LABEL_16:
          if (*(a1 + 130) == 1)
          {
            if (v15 >= v18)
            {
              v15 = v18;
            }
          }

          else
          {
            v20 = v18 - v15;
            v19 = v18 - v15 < 0;
            if (v18 < v15)
            {
              v15 = v18;
            }

            if (v19)
            {
              v21 = -v20;
            }

            else
            {
              v21 = v20;
            }

            if (v21 < *(v4 + 512))
            {
              v15 -= *(*(v4 + 504) + 4 * v21);
            }
          }

          goto LABEL_26;
        }
      }

      v15 = v18;
LABEL_26:
      ++v13;
      if (++v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        while (((*(*(v4 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
        {
          if (v10 == ++v11)
          {
            goto LABEL_35;
          }
        }

        v12 = v11;
      }

      v14 = 0;
      if (v11 >= v10)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v13 = 0;
  v15 = 20000;
LABEL_35:
  *a3 = v13;
  v22 = *(a1 + 151) + v15;
  if (v22 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v22;
  }
}

uint64_t PackedIntPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v4 = *(a1 + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v6 = *(*(v4 + 272) + 4 * v5);
  v7 = *(*(v4 + 272) + 4 * v5 + 4);
  v8 = (v7 - v6);
  if (v7 == v6)
  {
    v9 = 20000;
    goto LABEL_20;
  }

  v22 = a3;
  v10 = 0;
  v11 = *(v4 + 360) + 4 * *(*(v4 + 456) + 4 * a2);
  v12 = *(a1 + 131);
  v13 = *(*(v4 + 488) + 32);
  v14 = 1;
  v9 = 20000;
  do
  {
    v15 = (*(*a1 + 80))(a1, v5, v10);
    if (v12)
    {
      v16 = (*(v11 + 4 * v10) >> v13) + (v15 >> v13);
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = (*(v11 + 4 * v10) + v15) >> v13;
      if (v14)
      {
LABEL_10:
        v9 = v16;
        goto LABEL_11;
      }
    }

    if (*(a1 + 130) == 1)
    {
      if (v9 >= v16)
      {
        v9 = v16;
      }
    }

    else
    {
      v18 = v16 - v9;
      v17 = v16 - v9 < 0;
      if (v16 < v9)
      {
        v9 = v16;
      }

      if (v17)
      {
        v19 = -v18;
      }

      else
      {
        v19 = v18;
      }

      if (v19 < *(v4 + 512))
      {
        v9 -= *(*(v4 + 504) + 4 * v19);
      }
    }

LABEL_11:
    v14 = 0;
    ++v10;
  }

  while (v8 != v10);
  a3 = v22;
LABEL_20:
  *a3 = v8;
  v20 = *(a1 + 151) + v9;
  if (v20 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v20;
  }
}

uint64_t QuantPerDimPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v4 = *(a1 + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v6 = *(*(v4 + 272) + 4 * v5);
  v7 = *(*(v4 + 272) + 4 * v5 + 4);
  v8 = (v7 - v6);
  if (v7 == v6)
  {
    v9 = 20000;
    goto LABEL_20;
  }

  v22 = a3;
  v10 = 0;
  v11 = *(v4 + 360) + 4 * *(*(v4 + 456) + 4 * a2);
  v12 = *(a1 + 131);
  v13 = *(*(v4 + 488) + 32);
  v14 = 1;
  v9 = 20000;
  do
  {
    v15 = (*(*a1 + 88))(a1, v5, v10);
    if (v12)
    {
      v16 = (*(v11 + 4 * v10) >> v13) + (v15 >> v13);
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = (*(v11 + 4 * v10) + v15) >> v13;
      if (v14)
      {
LABEL_10:
        v9 = v16;
        goto LABEL_11;
      }
    }

    if (*(a1 + 130) == 1)
    {
      if (v9 >= v16)
      {
        v9 = v16;
      }
    }

    else
    {
      v18 = v16 - v9;
      v17 = v16 - v9 < 0;
      if (v16 < v9)
      {
        v9 = v16;
      }

      if (v17)
      {
        v19 = -v18;
      }

      else
      {
        v19 = v18;
      }

      if (v19 < *(v4 + 512))
      {
        v9 -= *(*(v4 + 504) + 4 * v19);
      }
    }

LABEL_11:
    v14 = 0;
    ++v10;
  }

  while (v8 != v10);
  a3 = v22;
LABEL_20:
  *a3 = v8;
  v20 = *(a1 + 151) + v9;
  if (v20 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v20;
  }
}

double PelScorer::getComponentProbs(PelScorer *this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v8 = *(this + 13);
  v9 = vcvtd_n_f64_s32(a4, 0x10uLL);
  v10 = *(this + 2);
  v11 = *(*(v10 + 288) + 2 * a2);
  v12 = (*(v10 + 456) + 4 * a2);
  v13 = *v12;
  v14 = v12[1];
  v15 = (v14 - *v12);
  if (v14 != *v12 && *(a3 + 8) == 0)
  {
    *a3 = MemChunkAlloc(8 * (v14 - *v12), 0);
    *(a3 + 8) = v15;
  }

  v17 = v8 * 20.0;
  v18 = v9 * v8;
  if (v14 != v13)
  {
    bzero(*a3, 8 * (v14 + ~v13) + 8);
  }

  v98 = v17;
  v19 = -1.0 / v18;
  v20 = *(this + 2);
  v21 = *(v20 + 12);
  v22 = 0.0;
  if (v21 <= 1)
  {
    if (!v21)
    {
      v96 = a3;
      v48 = 0;
      v99 = 0;
      v100 = 0;
      if (v14 != v13)
      {
        v101 = 0;
        HIDWORD(v100) = realloc_array(0, &v101, 2 * v15, 0, 0, 1) >> 1;
        v48 = v101;
        v99 = v101;
        v20 = *(this + 2);
      }

      LODWORD(v100) = v14 - v13;
      v49 = *(*(v20 + 456) + 4 * a2);
      v50 = *(v20 + 344);
      MulTableGenoneScoringFunction(this, v11, v14 - v13, v48, &v101);
      v51 = MulTableCompScoresToPelScoreFunction(this, a2, v48, &v101);
      if (v14 != v13)
      {
        v52 = 0;
        v53 = (v51 * a4) >> 16;
        do
        {
          v54 = *(v50 + v49 + v52) + *(v99 + v52);
          v55 = v54 >> 5;
          v56 = (v54 * a4) >> 16;
          if (v55 <= 0x270 && v56 != 20000)
          {
            v58 = v56 - v53;
            if (v58 < v98)
            {
              v59 = v19 * v58;
              if (v59 > -87.3)
              {
                v60 = DgnExp(v59);
                *(*v96 + 8 * v52) = v60;
                v22 = v22 + v60;
              }
            }
          }

          ++v52;
        }

        while (v15 != v52);
      }

      goto LABEL_75;
    }

    if (v21 != 1)
    {
      return v22;
    }

    v94 = a3;
    v99 = 0;
    v100 = 0;
    v23 = v20;
    if (v14 != v13)
    {
      v101 = 0;
      HIDWORD(v100) = realloc_array(0, &v101, 4 * v15, 0, 0, 1) >> 2;
      v99 = v101;
      v23 = *(this + 2);
    }

    LODWORD(v100) = v15;
    if (v14 == v13)
    {
      goto LABEL_75;
    }

    v24 = 0;
    v25 = *(v23 + 360) + 4 * *(*(v23 + 456) + 4 * a2);
    v26 = *(*(v20 + 488) + 32);
    v27 = *(v23 + 16);
    v28 = 20000;
    while (1)
    {
      if (v27 == 1)
      {
        PackedIntMICComponentScore = PelScorer::getPackedIntMICComponentScore(this, v11, v24);
      }

      else
      {
        PackedIntMICComponentScore = (*(*this + 80))(this, v11, v24);
      }

      v99[v24] = PackedIntMICComponentScore;
      if (*(this + 131) == 1)
      {
        v30 = PackedIntMICComponentScore >> v26;
        if (PackedIntMICComponentScore >> v26 >= 20000)
        {
          v30 = 20000;
        }

        v31 = (*(v25 + 4 * v24) >> v26) + v30;
        if (v24)
        {
LABEL_23:
          if (*(this + 130) == 1)
          {
            if (v28 >= v31)
            {
              v28 = v31;
            }
          }

          else
          {
            v33 = v31 - v28;
            v32 = v31 - v28 < 0;
            if (v31 < v28)
            {
              v28 = v31;
            }

            if (v32)
            {
              v34 = -v33;
            }

            else
            {
              v34 = v33;
            }

            if (v34 < *(v20 + 512))
            {
              v28 -= *(*(v20 + 504) + 4 * v34);
            }
          }

          goto LABEL_35;
        }
      }

      else
      {
        v31 = (*(v25 + 4 * v24) + PackedIntMICComponentScore) >> v26;
        if (v24)
        {
          goto LABEL_23;
        }
      }

      v28 = v31;
LABEL_35:
      if (v15 == ++v24)
      {
        v35 = 0;
        v36 = ((*(this + 151) + v28) * a4) >> 16;
        v22 = 0.0;
        do
        {
          v37 = v99[v35];
          if (*(this + 131) == 1)
          {
            v38 = (*(v25 + 4 * v35) >> v26) + (v37 >> v26);
          }

          else
          {
            v38 = (*(v25 + 4 * v35) + v37) >> v26;
          }

          v39 = v38 <= 19999;
          v40 = (v38 * a4) >> 16;
          if (v39 && v40 != 20000)
          {
            v42 = v40 - v36;
            if (v42 < v98)
            {
              v43 = v19 * v42;
              if (v43 > -87.3)
              {
                v44 = DgnExp(v43);
                *(*v94 + 8 * v35) = v44;
                v22 = v22 + v44;
              }
            }
          }

          ++v35;
        }

        while (v15 != v35);
        goto LABEL_75;
      }
    }
  }

  if (v21 != 3)
  {
    if (v21 == 2)
    {
      v95 = a3;
      v45 = 0;
      v99 = 0;
      v100 = 0;
      if (v14 != v13)
      {
        v101 = 0;
        HIDWORD(v100) = realloc_array(0, &v101, 2 * v15, 0, 0, 1) >> 1;
        v45 = v101;
        v99 = v101;
        v20 = *(this + 2);
      }

      LODWORD(v100) = v14 - v13;
      v93 = *(*(v20 + 456) + 4 * a2);
      v46 = *(v20 + 344);
      v47 = v14 - v13;
      if (*(v20 + 16) == 1)
      {
        FloatMICGenoneScoringFunction(this, v11, v47, v45, &v101);
      }

      else
      {
        FloatGenoneScoringFunction(this, v11, v47, v45, &v101);
      }

      v61 = FloatCompScoresToPelScoreFunction(this, a2, v45, &v101);
      if (v14 != v13)
      {
        v63 = 0;
        v64 = (v61 * a4) >> 16;
        do
        {
          v65 = *(v46 + v93 + v63) + *(v99 + v63);
          v66 = v65 >> 5;
          v67 = (v65 * a4) >> 16;
          if (v66 <= 0x270 && v67 != 20000)
          {
            v69 = v67 - v64;
            if (v69 < v98)
            {
              v70 = v19 * v69;
              if (v70 > -87.3)
              {
                v71 = DgnExp(v70);
                *(*v95 + 8 * v63) = v71;
                v22 = v22 + v71;
              }
            }
          }

          ++v63;
        }

        while (v15 != v63);
      }

      goto LABEL_75;
    }

    return v22;
  }

  v99 = 0;
  v100 = 0;
  if (v14 == v13)
  {
    LODWORD(v100) = v15;
    goto LABEL_75;
  }

  v97 = a3;
  v101 = 0;
  v72 = realloc_array(0, &v101, 4 * v15, 0, 0, 1);
  v73 = 0;
  v99 = v101;
  v74 = *(this + 2);
  LODWORD(v100) = v15;
  HIDWORD(v100) = v72 >> 2;
  v75 = *(v74 + 360) + 4 * *(*(v74 + 456) + 4 * a2);
  v76 = *(*(v20 + 488) + 32);
  v77 = 20000;
  do
  {
    v78 = (*(*this + 88))(this, v11, v73);
    v99[v73] = v78;
    if (*(this + 131) == 1)
    {
      v79 = v78 >> v76;
      if (v78 >> v76 >= 20000)
      {
        v79 = 20000;
      }

      v80 = (*(v75 + 4 * v73) >> v76) + v79;
      if (!v73)
      {
LABEL_101:
        v77 = v80;
        goto LABEL_102;
      }
    }

    else
    {
      v80 = (*(v75 + 4 * v73) + v78) >> v76;
      if (!v73)
      {
        goto LABEL_101;
      }
    }

    v82 = v80 - v77;
    v81 = v80 - v77 < 0;
    if (v80 < v77)
    {
      v77 = v80;
    }

    if (v81)
    {
      v83 = -v82;
    }

    else
    {
      v83 = v82;
    }

    if (v83 < *(v20 + 512))
    {
      v77 -= *(*(v20 + 504) + 4 * v83);
    }

LABEL_102:
    ++v73;
  }

  while (v15 != v73);
  v84 = 0;
  v85 = ((*(this + 151) + v77) * a4) >> 16;
  v22 = 0.0;
  do
  {
    v86 = v99[v84];
    if (*(this + 131) == 1)
    {
      v87 = (*(v75 + 4 * v84) >> v76) + (v86 >> v76);
    }

    else
    {
      v87 = (*(v75 + 4 * v84) + v86) >> v76;
    }

    v39 = v87 <= 19999;
    v88 = (v87 * a4) >> 16;
    if (v39 && v88 != 20000)
    {
      v90 = v88 - v85;
      if (v90 < v98)
      {
        v91 = v19 * v90;
        if (v91 > -87.3)
        {
          v92 = DgnExp(v91);
          *(*v97 + 8 * v84) = v92;
          v22 = v22 + v92;
        }
      }
    }

    ++v84;
  }

  while (v15 != v84);
LABEL_75:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v99);
  return v22;
}

void sub_262839630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t PelScorer::getPackedIntMICComponentScore(PelScorer *this, unsigned int a2, int a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = *(this + 2);
  v4 = *(v3 + 132);
  v5 = (v4 + 1) & 0xFFFFFFFE;
  v6 = *(v3 + 152);
  v7 = *(this + 77);
  v8 = (*(v3 + 232) + *(v3 + 248) + *(*(v3 + 256) + 4 * a2) + v5 + (*(v3 + 148) * a3));
  v9 = *v8;
  v53 = 0;
  v54 = 0;
  v10 = (v6 + 7) & 0xFFFFFFF8;
  v11 = (v8 + ((v5 + 17) & 0xFFFFFFF0) - v5);
  if (v4)
  {
    v12 = 0;
    v13 = v7;
    do
    {
      LODWORD(v14) = v4 - v12;
      if (v4 != v12)
      {
        if (v14 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v14;
        }

        v15 = &v53;
        v16 = v13;
        do
        {
          v18 = *v11++;
          v17 = v18;
          v19 = *v16++;
          *v15 += v19 * v17;
          v15 = (v15 + 4);
          --v14;
        }

        while (v14);
      }

      v12 += 4;
      v13 += 4;
    }

    while (v12 < v4);
    v20 = v53;
    v21 = HIDWORD(v53);
    v23 = v54;
    v22 = HIDWORD(v54);
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v23 = 0;
    v20 = 0;
  }

  v24 = **(v3 + 488);
  v25 = *v11;
  v26 = (((2 * v4 + 17) & 0xFFFFFFF0) - 2 * v4 - 2) >> 1;
  v27 = &v11[v26 + 1];
  v28 = v10 - 1;
  if (v10 - 1 < 0)
  {
    v41 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = (v4 + 7) & 0xFFFFFFF8;
    v32 = &v11[v26 + 1];
    do
    {
      v51 = 0;
      v52 = 0;
      v33 = v28 & 0x7FFFFFFC;
      v34 = v28;
      v35 = 8 * v28;
      v36 = v31 + 8 * v28;
      do
      {
        v37 = 0;
        v38 = v35;
        v39 = v32 + 2 * v35;
        do
        {
          if (v38 + v37 >= v6)
          {
            break;
          }

          *(&v51 + (v37 & 3)) += v7[v36 + v37] * *(v39 + 2 * v37);
          ++v37;
        }

        while (v37 != 8);
        v36 -= 8;
        v35 = v38 - 8;
      }

      while (v33 < v34--);
      v28 = v33 - 1;
      v30 += v52 + v51;
      v29 += SHIDWORD(v52) + SHIDWORD(v51);
    }

    while (v33);
    v41 = v29 + v30;
  }

  v42 = 1 << (v9 - 1);
  if (!v9)
  {
    v42 = 0;
  }

  v43 = (v42 + (v24 * (v23 + v20 + v21 + v22) + 0.5)) >> v9;
  v44 = *(this + 152);
  v45 = 1 << (v44 - 1);
  if (!v44)
  {
    v45 = 0;
  }

  v46 = v24 * ((v41 + v45) >> v44 << *(this + 153) >> 1) + 0.5;
  v47 = 1 << (v25 - 1);
  if (!v25)
  {
    v47 = 0;
  }

  v48 = v24 * *(v27 + 2 * v6 + ((2 * v6 + 27) & 0xFFFFFFF0) - 2 * v6 - 12) + 0.5;
  v49 = (v48 + v43 + ((v47 + v46) >> v25)) & ~((v48 + v43 + ((v47 + v46) >> v25)) >> 31);
  if (v49 >= 0xFFFF)
  {
    return 0xFFFFLL;
  }

  else
  {
    return v49;
  }
}

uint64_t OnDemandPelScorer::setFrameStaticsForGenone(uint64_t this, unsigned int a2, PelStats *a3)
{
  v3 = this;
  v4 = *(*(this + 296) + 4 * a2);
  if (*(*(this + 400) + v4) != 1)
  {
    PelScorer::getTransformedFeatures_NoAdapt_Cache(this, a2, 0, this + 200, a3);
    if (*(*(v3 + 16) + 16) == 1)
    {
      PelScorer::getMICFeatures(v3, (v3 + 200), a3 + 4);
      v9 = *(v3 + 264);
      v10 = *(v3 + 268);

      return PelScorer::setFrameStaticsMic(v3, v4, (v3 + 200), (v3 + 248), v9, v10, 1);
    }

    else
    {
      v12 = *(v3 + 268);

      return PelScorer::setFrameStaticsNoMic(v3, v4, (v3 + 200), v12, 1);
    }
  }

  v5 = *(this + 16);
  if (*(v5 + 16) == 1)
  {
    if (*(v5 + 536))
    {
      *(this + 640) = *(*(this + 624) + 2 * v4);
    }

    v6 = *(v5 + 12);
    if (v6 == 1)
    {
      *(this + 616) = *(this + 584) + 2 * (*(this + 600) + (((*(this + 116) + 7) & 0xFFFFFFF8) + ((*(this + 112) + 7) & 0xFFFFFFF8)) * v4);
      v13 = *(*(this + 552) + 4 * v4);
      *(this + 604) = *(*(this + 536) + 4 * v4);
      *(this + 608) = v13;
      *(this + 612) = *(*(this + 568) + 4 * v4);
    }

    else if (v6 == 2)
    {
      v7 = *(*(this + 416) + 8 * v4);
      *(this + 480) = *(this + 448) + 8 * ((*(this + 116) + *(this + 112)) * v4);
      *(this + 464) = v7;
      *(this + 472) = *(*(this + 432) + 8 * v4);
    }

    return this;
  }

  if (*(v5 + 536))
  {
    *(this + 640) = *(*(this + 624) + 2 * v4);
  }

  v11 = *(v5 + 12);
  if (v11 > 1)
  {
    if (v11 != 3)
    {
      if (v11 == 2)
      {
        *(this + 480) = *(this + 448) + 8 * (*(this + 112) * v4);
        *(this + 464) = *(*(this + 416) + 8 * v4);
      }

      return this;
    }

LABEL_24:
    *(this + 616) = *(this + 584) + 2 * (*(this + 600) + ((*(this + 112) + 7) & 0xFFFFFFF8) * v4);
    *(this + 604) = *(*(this + 536) + 4 * v4);
    return this;
  }

  if (!v11)
  {
    *(this + 528) = *(this + 504) + 8 * (*(this + 112) * v4);
    *(this + 520) = *(*(this + 488) + 4 * v4);
    return this;
  }

  if (v11 == 1)
  {
    goto LABEL_24;
  }

  return this;
}

double PelScorer::getTransformedFeatures_NoAdapt_Cache(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(a1 + 268) = 0;
  v9 = *(*(a1 + 312) + 4 * a2);
  v10 = *(a1 + 368) + 16 * v9;
  if (*(v10 + 8))
  {
    *(a1 + 268) = *(*(a1 + 384) + 4 * v9);
    v11 = a1 + 216;
    v12 = a4;
  }

  else
  {
    v10 = a1 + 160;
    v13 = a1 + 216;
    v14 = *(a1 + 112);
    if (*(a1 + 168) != v14)
    {
      DgnPrimArray<unsigned char>::copyArraySlice(a4, (a1 + 160), 0, v14);
      v10 = 0;
    }

    v15 = *(a1 + 96);
    if (v15 && *(*(v15 + 32) + 16) == **(v15 + 32))
    {
      if (v10)
      {
        v16 = v10;
      }

      else
      {
        v16 = a4;
      }

      LinearTransform::doTransform(*(*(a1 + 32) + 224), v16, a1 + 216);
      v10 = 0;
      v17 = *(a1 + 32);
      v18 = *(v17 + 4);
      v19 = 1 << (v18 - 1);
      v20 = **(v17 + 240);
      if (!v18)
      {
        LODWORD(v19) = 0;
      }

      *(a1 + 268) += (v19 + v20) >> v18;
      v21 = a4;
    }

    else
    {
      v21 = a1 + 216;
      v13 = a4;
    }

    v22 = *(a1 + 48);
    if (v22)
    {
      if (a5)
      {
        ++a5[7];
      }

      v23 = *(*(v22 + 48) + 2 * a2);
      if (v10)
      {
        v24 = v10;
      }

      else
      {
        v24 = v13;
      }

      LinearTransform::doTransform(*(v22 + 16) + 72 * *(*(v22 + 48) + 2 * a2), v24, v21);
      v10 = 0;
      v25 = *(a1 + 48);
      v26 = *(*(v25 + 32) + 4 * v23);
      v27 = *(v25 + 12);
      v28 = 1 << (v27 - 1);
      if (!v27)
      {
        LODWORD(v28) = 0;
      }

      *(a1 + 268) += (v28 + v26) >> v27;
      v12 = v13;
    }

    else
    {
      v12 = v21;
      v21 = v13;
    }

    v29 = *(a1 + 32);
    if (*(v29 + 8) == *v29)
    {
      if (a5)
      {
        ++a5[8];
      }

      if (*(v29 + 56))
      {
        v30 = *(*(v29 + 24) + 4 * *(*(*(a1 + 40) + 136) + 4 * a2));
      }

      else
      {
        v30 = 0xFFFFFFFFLL;
      }

      if (v10)
      {
        v31 = v10;
      }

      else
      {
        v31 = v21;
      }

      LinearTransform::doTransform(*(v29 + 64) + 72 * v30, v31, v12);
      v10 = 0;
      v32 = *(a1 + 32);
      v33 = *(*(v32 + 80) + 4 * v30);
      v34 = *(v32 + 4);
      v35 = 1 << (v34 - 1);
      if (!v34)
      {
        LODWORD(v35) = 0;
      }

      *(a1 + 268) += (v35 + v33) >> v34;
      v11 = v21;
    }

    else
    {
      v11 = v12;
      v12 = v21;
    }

    if (v10)
    {
      v36 = v10;
    }

    else
    {
      v36 = v12;
    }

    DgnPrimArray<unsigned char>::copyArraySlice((*(a1 + 368) + 16 * v9), v36, 0, *(v36 + 8));
    *(*(a1 + 384) + 4 * v9) = *(a1 + 268);
  }

  v38 = *(a1 + 32);
  if (*(v38 + 12) == *v38)
  {
    if (a5)
    {
      ++a5[9];
    }

    if (*(v38 + 136))
    {
      v39 = *(*(v38 + 40) + 4 * *(*(*(a1 + 40) + 168) + 4 * a2));
    }

    else
    {
      v39 = 0xFFFFFFFFLL;
    }

    if (v10)
    {
      v41 = v10;
    }

    else
    {
      v41 = v12;
    }

    LinearTransform::doTransform(*(v38 + 144) + 72 * v39, v41, v11);
    v42 = *(a1 + 32);
    v43 = *(*(v42 + 160) + 4 * v39);
    v44 = *(v42 + 4);
    v45 = 1 << (v44 - 1);
    if (!v44)
    {
      LODWORD(v45) = 0;
    }

    *(a1 + 268) += (v45 + v43) >> v44;
    goto LABEL_57;
  }

  v11 = v12;
  if (!v10)
  {
LABEL_57:
    if (v11 != a4)
    {
      *(a4 + 8) = 0;
      v46 = *a4;
      *a4 = *v11;
      *v11 = v46;
      LODWORD(v46) = *(a4 + 12);
      result = *(v11 + 8);
      *(a4 + 8) = result;
      *(v11 + 8) = 0;
      *(v11 + 12) = v46;
    }

    return result;
  }

  v40 = *(v10 + 8);

  DgnPrimArray<unsigned char>::copyArraySlice(a4, v10, 0, v40);
  return result;
}

double PelScorer::getTransformedFeatures_Adapt_Cache(uint64_t a1, unsigned int a2, int a3, uint64_t a4, _DWORD *a5)
{
  v10 = *(*(a1 + 312) + 4 * a2);
  v11 = *(a1 + 368) + 16 * v10;
  if (*(v11 + 8))
  {
    v12 = a1 + 216;
    v13 = a4;
  }

  else
  {
    v11 = a1 + 160;
    v14 = a1 + 216;
    v15 = *(a1 + 112);
    if (*(a1 + 168) != v15)
    {
      DgnPrimArray<unsigned char>::copyArraySlice(a4, (a1 + 160), 0, v15);
      v11 = 0;
    }

    v16 = *(a1 + 96);
    if (v16 && *(*(v16 + 32) + 16) == **(v16 + 32))
    {
      if (v11)
      {
        v17 = v11;
      }

      else
      {
        v17 = a4;
      }

      LinearTransform::doTransform(*(*(a1 + 32) + 224), v17, a1 + 216);
      v11 = 0;
      v18 = a4;
    }

    else
    {
      v18 = a1 + 216;
      v14 = a4;
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      if (a5)
      {
        ++a5[7];
      }

      if (v11)
      {
        v20 = v11;
      }

      else
      {
        v20 = v14;
      }

      LinearTransform::doTransform(*(v19 + 16) + 72 * *(*(v19 + 48) + 2 * a2), v20, v18);
      v11 = 0;
      v13 = v14;
    }

    else
    {
      v13 = v18;
      v18 = v14;
    }

    if ((*(*(a1 + 24) + 12) & 1) != 0 || (v21 = *(a1 + 32), *(v21 + 8) != *v21))
    {
      v12 = v13;
      v13 = v18;
    }

    else
    {
      if (a5)
      {
        ++a5[8];
      }

      if (*(v21 + 56))
      {
        v22 = *(*(v21 + 24) + 4 * *(*(*(a1 + 40) + 136) + 4 * a2));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v11;
      }

      else
      {
        v23 = v18;
      }

      LinearTransform::doTransform(*(v21 + 64) + 72 * v22, v23, v13);
      v11 = 0;
      v12 = v18;
    }

    if (v11)
    {
      v24 = v11;
    }

    else
    {
      v24 = v13;
    }

    DgnPrimArray<unsigned char>::copyArraySlice((*(a1 + 368) + 16 * v10), v24, 0, *(v24 + 8));
  }

  v26 = *(a1 + 24);
  if ((*(v26 + 12) & 1) == 0 && ((*(v26 + 13) ^ 1) & 1) != 0 || a3)
  {
    v27 = *(a1 + 32);
    if (*(v27 + 12) == *v27)
    {
      if (a5)
      {
        ++a5[9];
      }

      if (*(v27 + 136))
      {
        v28 = *(*(v27 + 40) + 4 * *(*(*(a1 + 40) + 168) + 4 * a2));
      }

      else
      {
        v28 = -1;
      }

      if (v11)
      {
        v30 = v11;
      }

      else
      {
        v30 = v13;
      }

      LinearTransform::doTransform(*(v27 + 144) + 72 * v28, v30, v12);
      v13 = v12;
      goto LABEL_53;
    }
  }

  if (!v11)
  {
LABEL_53:
    if (v13 != a4)
    {
      *(a4 + 8) = 0;
      v31 = *a4;
      *a4 = *v13;
      *v13 = v31;
      LODWORD(v31) = *(a4 + 12);
      result = *(v13 + 8);
      *(a4 + 8) = result;
      *(v13 + 8) = 0;
      *(v13 + 12) = v31;
    }

    return result;
  }

  v29 = *(v11 + 8);

  DgnPrimArray<unsigned char>::copyArraySlice(a4, v11, 0, v29);
  return result;
}