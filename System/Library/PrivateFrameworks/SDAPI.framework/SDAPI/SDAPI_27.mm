uint64_t NodeNetNode::addAcousticsToScores(NodeNetNode *this, int a2, PelScoreCache **a3)
{
  result = PelScoreCache::getScoreNoBackoff(a3[3], *(this + 15));
  v6 = result;
  v7 = result + *(this + 9);
  *(this + 9) += result;
  if (*(a3 + 56) >= v7)
  {
    result = BestData::newOrTiedBestNode((a3 + 24), v7, (this + 8), 0);
  }

  v8 = *(this + 8);
  if (v8 != 20000)
  {
    *(this + 8) = v8 + v6;
  }

  return result;
}

uint64_t *PredStruct::getBestPredWithTrace(unsigned __int16 *a1, _DWORD *a2, uint64_t a3, int a4)
{
  v4 = a1[4];
  v5 = *a1;
  v6 = v4 - 1;
  if (v4 == 1)
  {
    *a2 = *(v5 + 1);
    return *a1;
  }

  else
  {
    v12 = *v5;
    v11 = v5 + 1;
    v10 = v12;
    v13 = *(v12 + 8);
    v14 = *(v12 + 4);
    do
    {
      v15 = *(*v11 + 8) - v13;
      if (v15 < 0)
      {
        v15 = v13 - *(*v11 + 8);
        v7 = *v11;
        v13 = *(*v11 + 8);
        v16 = *(*v11 + 4);
      }

      else
      {
        v7 = v10;
        v16 = v14;
        v10 = *v11;
        LODWORD(v14) = *(*v11 + 4);
      }

      if (v15 + v13 <= a4)
      {
        v17 = *v10;
        v22 = 0;
        v18 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a3, &v22);
        v19 = v22;
        *(v22 + 4) = v16;
        *(v19 + 8) = v14;
        *v19 = v17;
        *(v19 + 12) = v15;
        v14 = v18;
      }

      else
      {
        v14 = v16;
      }

      ++v11;
      v10 = v7;
      --v6;
    }

    while (v6);
    *a2 = v14;
  }

  return v7;
}

void TraceNode::~TraceNode(TraceNode *this)
{
  *this = &unk_287522C90;
  v1 = (this + 32);
  DgnIArray<Utterance *>::~DgnIArray(this + 64);
  PredStruct::~PredStruct(v1);
}

{
  *this = &unk_287522C90;
  v1 = (this + 32);
  DgnIArray<Utterance *>::~DgnIArray(this + 64);
  PredStruct::~PredStruct(v1);

  JUMPOUT(0x26672B1B0);
}

unint64_t TraceNode::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = NodeNetNode::sizeObject(a1, a2);
  v5 = sizeObject<SeederBlock>(a1 + 64, v2);
  v6 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v6 = 4;
  }

  if (*(a1 + 88))
  {
    v7 = (v2 & 0xFFFFFFFE) == 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = 12;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = 12;
  }

  if (v2 == 3)
  {
    v8 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  if (v2 == 3)
  {
    v6 = 0;
  }

  else
  {
    ++v8;
  }

  return v8 + 4 * v10 + v4 + v5 + v9 + v6;
}

uint64_t TraceNode::fillTraceNode(uint64_t result, __int16 a2, uint64_t *a3, __int16 a4)
{
  v4 = *a3;
  *(result + 52) = *(a3 + 2);
  *(result + 44) = v4;
  *(result + 80) = a4;
  *(result + 56) = a2;
  return result;
}

uint64_t TraceNode::fill(uint64_t this, const NodeNetNode *a2)
{
  v2 = a2 + 8;
  if (!a2)
  {
    v2 = 0;
  }

  *(this + 16) = *(v2 + 2);
  *(this + 8) = *v2;
  *(this + 12) = *(v2 + 1);
  v3 = *(v2 + 12);
  *(this + 28) = *(v2 + 5);
  *(this + 20) = v3;
  *(this + 56) = *(a2 + 28);
  v4 = *(a2 + 44);
  *(this + 52) = *(a2 + 13);
  *(this + 44) = v4;
  *(this + 80) = *(a2 + 40);
  return this;
}

uint64_t *SeederStruct::updateSeederList(uint64_t *result, int a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 - 8;
  v6 = *(result + 2);
  if (!v6)
  {
    v14 = *result;
    *v14 = v5;
    *(v14 + 8) = a2;
    *(v14 + 12) = a2;
    v13 = 1;
LABEL_13:
    *(v4 + 2) = v13;
    return result;
  }

  v7 = v6 - 1;
  v8 = *result;
  v9 = *(*result + 16 * v7 + 12);
  if (v9 < a2)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9 - 1;
  }

  if (v10 != a2 || (v11 = v8 + 16 * v7, *v11 != v5))
  {
    if (*(result + 3) == v6 && v6 >> 1 != -1 && v6 + (v6 >> 1) + 1 >= v6)
    {
      result = DgnArray<DgnPrimArray<double>>::reallocElts(result, (v6 >> 1) + 1, 0);
      v8 = *v4;
      v6 = *(v4 + 2);
    }

    v12 = v8 + 16 * v6;
    *v12 = v5;
    *(v12 + 8) = a2;
    *(v12 + 12) = a2;
    v13 = v6 + 1;
    goto LABEL_13;
  }

  *(v11 + 12) = a2;
  return result;
}

uint64_t TraceNode::scoreNode(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, _BYTE *a7, PelScoreCache **a8, int a9, int a10, _DWORD *a11, HmmNet *a12)
{
  *a7 = 0;
  v14 = a1 + 8;
  v15 = *(a1 + 18);
  if (*(a2 + 8) == 20000)
  {
    *(a1 + 88) = v14;
    if (v15 == 20000)
    {
      return 20000;
    }

    else
    {
      ++*a11;
      v19 = *(a1 + 20) + v15;
      v20 = (a1 + 8);

      return Node::updateNodeOneBest1(v20, v19, a4, a5, a8, a12);
    }
  }

  else
  {
    ++*a11;
    if (v15 == 20000)
    {
      *a7 = 1;
      *(a1 + 88) = a2;
      v18 = a1 + 8;

      return Node::scoreNodeInactiveCurrActiveSeed(v18, a2, a4, a5, a8, a9, a10, a12);
    }

    else
    {
      result = Node::scoreNodeActiveCurrActiveSeed(a1 + 8, a2, a4, a5, a7, a8, a9, a10, a12);
      if (*a7)
      {
        v21 = a2;
      }

      else
      {
        v21 = v14;
      }

      *(a1 + 88) = v21;
    }
  }

  return result;
}

uint64_t Node::scoreNodeInactiveCurrActiveSeed(uint64_t a1, uint64_t a2, int a3, int a4, PelScoreCache **a5, int a6, int a7, HmmNet *a8)
{
  v8 = *(a1 + 21);
  v9 = a7 + a6 + *(a2 + 8);
  v10 = *(a1 + 16);
  if (v10 >= 0)
  {
    v11 = v10 << 8;
  }

  else
  {
    v11 = 255 * v10;
  }

  *(a1 + 12) = v11;
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4) + *(a1 + 18);
  return Node::updateNodeOneBest1(a1, v9 + v8, a3, a4, a5, a8);
}

uint64_t *TraceNode::maybeSeedNode(uint64_t *this, int a2, int a3)
{
  if (*(this + 9) <= a2)
  {
    return SeederStruct::updateSeederList(this + 8, a3, this[11]);
  }

  return this;
}

void TraceExternalOutPort::seedOutPortForTraceBack2(_DWORD *this, int a2, int a3, NetMgr *a4)
{
  v4 = *(this + 4);
  if (v4 <= a2)
  {
    v8 = *(this + 12);
    if (v8 == 1)
    {
      v9 = *(this + 2);
    }

    else
    {
      v10 = *(this + 2);
      v11 = (v8 - 1);
      v9 = *(v10 + 8 * v11);
      v12 = *(v9 + 8);
      v13 = v10 - 8;
      do
      {
        if (v12 >= *(*(v13 + 8 * v11) + 8))
        {
          v9 = *(v13 + 8 * v11);
          v12 = *(v9 + 8);
        }

        --v11;
      }

      while (v11);
    }

    SeederStruct::updateSeederList(this + 4, a3, v9);
    v14 = this[10];
    if (!v14 || ((v15 = *(this + 4), v16 = *(v15 + 8), v17 = *(v15 + 16 * (v14 - 1) + 12), v16 != a3) ? (v18 = v17 == v16) : (v18 = 0), v18))
    {
      v19 = -1;
    }

    else if (v17 >= v16)
    {
      v19 = a3 - v16;
    }

    else
    {
      v19 = v16 - a3;
    }

    v20 = *(a4 + 124);
    while (this[14] < v19)
    {
      BitArray::add((this + 12), 0);
    }

    BitArray::add((this + 12), v4 <= v20);
  }
}

__n128 NodeData::maskedCwidac@<Q0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  if (v2 >> 25 == 126)
  {
    result.n128_u64[0] = *(a1 + 3);
    *(a2 + 12) = result.n128_u64[0];
    *(a2 + 20) = a1[5];
    *(a2 + 4) = 0x3FFFLL;
  }

  else
  {
    *(a2 + 4) = a1[1];
    result = *(a1 + 2);
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t NodeData::NodeData(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, __int16 a5, __int16 a6)
{
  v10 = *a4;
  *(a1 + 8) = *(a4 + 4);
  *a1 = v10;
  *(a1 + 10) = *(a4 + 10);
  *(a1 + 11) = *(a4 + 11);
  NodeData::maskedCwidac(a3, a1 + 12);
  *(a1 + 36) = *(a2 + 22);
  *(a1 + 38) = *(a2 + 10);
  *(a1 + 40) = a5;
  *(a1 + 42) = a6;
  v11 = *(a2 + 20);
  if ((v11 + (*(a2 + 12) >> 8) < 0) ^ __OFADD__(v11, *(a2 + 12) >> 8) | (v11 + (*(a2 + 12) >> 8) == 0))
  {
    v12 = -v11;
  }

  else
  {
    LOWORD(v12) = *(a2 + 12) >> 8;
  }

  *(a1 + 44) = v12;
  return a1;
}

unint64_t sizeObject<SeederBlock>(uint64_t a1, int a2)
{
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 12;
  }

  else
  {
    result = 16;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v4 = *(a1 + 8);
    if (v4 >= 1)
    {
      v5 = (v4 + 1);
    }

    else
    {
      v5 = 1;
    }

    if (a2)
    {
      return result * v5;
    }

    else
    {
      result *= (*(a1 + 12) - v4) + v5;
    }
  }

  return result;
}

unint64_t sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4 <= 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 8 * v4;
    }

    if (gShadowDiagnosticShowIdealizedObjectSizes == 1)
    {
      v3 = v5 + 8;
    }

    else
    {
      v3 = v5 + 16;
    }

    v2 = 12;
  }

  return v3 + v2 + sizeObject<SeederBlock>(a1 + 32, a2);
}

uint64_t DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v5 = *(a1 + 32);
    do
    {
      if (v5 == *(a1 + 8))
      {
        DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::addChunk(a1);
        v5 = *(a1 + 32);
      }

      v4 = *(*a1 + 8 * v5++);
      *(a1 + 32) = v5;
      *(a1 + 16) = v4;
    }

    while (!v4);
  }

  result = *(v4 + 8);
  *a2 = v4;
  *(a1 + 16) = **(a1 + 16);
  return result;
}

uint64_t *DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::addChunk(uint64_t a1)
{
  result = MemChunkAlloc(*(a1 + 24), 0);
  v3 = result;
  v4 = *(a1 + 8);
  v5 = v4 << 16;
  if (v4 == *(a1 + 12))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
    v4 = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = v3;
  *(a1 + 8) = v4 + 1;
  v6 = *(a1 + 28);
  if (v6 < 2)
  {
    v8 = v5;
    v9 = v3;
  }

  else
  {
    v7 = v6 + 1;
    do
    {
      v8 = v5 + 1;
      *(v3 + 8) = v5;
      v9 = v3 + 16;
      *v3 = v3 + 16;
      --v7;
      v3 += 16;
      ++v5;
    }

    while (v7 > 2);
  }

  *(v9 + 8) = v8;
  *v9 = 0;
  return result;
}

uint64_t TLattice::TLattice(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  *a1 = &unk_2875233A8;
  *(a1 + 8) = -1;
  TFsa::TFsa((a1 + 24));
  TAllocator::TAllocator((a1 + 264), 2048);
  *(a1 + 256) = a9;
  *(a1 + 16) = a8;
  *(a1 + 248) = a7;
  std::vector<TState *>::vector[abi:ne200100](v79, a4);
  if (a3)
  {
    v17 = 0;
    while (1)
    {
      v18 = TAllocator::allocate((a1 + 264), 144);
      v19 = *(*a2 + 8 * v17);
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 40);
      v24 = *(v19 + 48);
      v25 = *(v19 + 56);
      v26 = *(v19 + 112);
      v75 = *(v19 + 96);
      v76 = v26;
      v27 = *(v19 + 144);
      v77 = *(v19 + 128);
      v78 = v27;
      v28 = *(v19 + 80);
      *__p = *(v19 + 64);
      *&__p[16] = v28;
      TLatticeTransData::TLatticeTransData(v18, (a1 + 264), v20, v21, v22, v23, v24, v25, __p);
      v30 = *(*a2 + 8 * v17);
      v31 = *(v30 + 24);
      if (v31 >= a4)
      {
        tknPrintf("Error: The source index (%llu) is larger than the given state count (%llu)\n", v29, *(v30 + 24), a4);
        std::string::basic_string[abi:ne200100]<0>(v72, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v73) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v72[0], v72[1]);
        }

        else
        {
          *&__p[8] = *v72;
          *&__p[24] = v73;
        }

        *__p = &unk_287528000;
        if (__p[31] >= 0)
        {
          v49 = &__p[8];
        }

        else
        {
          v49 = *&__p[8];
        }

        conditionalAssert(v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 58);
        *__p = byte_287529580;
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *exception = byte_287529580;
        v51 = (exception + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v51, *__p, *&__p[8]);
        }

        else
        {
          v54 = *__p;
          exception[3] = *&__p[16];
          *&v51->__r_.__value_.__l.__data_ = v54;
        }

        *exception = &unk_287528000;
      }

      v32 = *(v30 + 32);
      if (v32 >= a4)
      {
        tknPrintf("Error: The target index (%llu) is larger than the given state count (%llu)\n", v29, v32, a4);
        std::string::basic_string[abi:ne200100]<0>(v72, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v73) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v72[0], v72[1]);
        }

        else
        {
          *&__p[8] = *v72;
          *&__p[24] = v73;
        }

        *__p = &unk_287528000;
        if (__p[31] >= 0)
        {
          v46 = &__p[8];
        }

        else
        {
          v46 = *&__p[8];
        }

        conditionalAssert(v46, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 65);
        *__p = byte_287529580;
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72[0]);
        }

        v47 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v47 = byte_287529580;
        v48 = (v47 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v48, *__p, *&__p[8]);
        }

        else
        {
          v53 = *__p;
          v47[3] = *&__p[16];
          *&v48->__r_.__value_.__l.__data_ = v53;
        }

        *v47 = &unk_287528000;
      }

      v33 = *(v79[0] + v31);
      v34 = *(v79[0] + v32);
      if (v33)
      {
        if (!v34)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v33 = TFsa::newState((a1 + 24), 0);
        *(v79[0] + *(*(*a2 + 8 * v17) + 24)) = v33;
        if (!v34)
        {
LABEL_9:
          v34 = TFsa::newState((a1 + 24), 0);
          *(v79[0] + *(*(*a2 + 8 * v17) + 32)) = v34;
        }
      }

      TFsa::newTrans((a1 + 24), v33, v34, v18);
      if (a3 == ++v17)
      {
        goto LABEL_14;
      }
    }
  }

  if (!a4)
  {
    tknPrintf("Error: Lattice needs at least one state\n", v16);
    std::string::basic_string[abi:ne200100]<0>(v72, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v73) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v72[0], v72[1]);
    }

    else
    {
      *&__p[8] = *v72;
      *&__p[24] = v73;
    }

    *__p = &unk_287528000;
    if (__p[31] >= 0)
    {
      v64 = &__p[8];
    }

    else
    {
      v64 = *&__p[8];
    }

    conditionalAssert(v64, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 92);
    *__p = byte_287529580;
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72[0]);
    }

    v65 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v65 = byte_287529580;
    v66 = (v65 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v66, *__p, *&__p[8]);
    }

    else
    {
      v70 = *__p;
      v65[3] = *&__p[16];
      *&v66->__r_.__value_.__l.__data_ = v70;
    }

    *v65 = &unk_287528000;
  }

  v36 = TFsa::newState((a1 + 24), 0);
  *v79[0] = v36;
LABEL_14:
  v37 = 0;
  do
  {
    v38 = *(v79[0] + v37);
    if (!v38)
    {
      tknPrintf("Error: State was not set properly while creating lattice\n", v35);
      std::string::basic_string[abi:ne200100]<0>(v72, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v73) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v72[0], v72[1]);
      }

      else
      {
        *&__p[8] = *v72;
        *&__p[24] = v73;
      }

      *__p = &unk_287528000;
      if (__p[31] >= 0)
      {
        v43 = &__p[8];
      }

      else
      {
        v43 = *&__p[8];
      }

      conditionalAssert(v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 109);
      *__p = byte_287529580;
      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72[0]);
      }

      v44 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v44 = byte_287529580;
      v45 = (v44 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v45, *__p, *&__p[8]);
      }

      else
      {
        v52 = *__p;
        v44[3] = *&__p[16];
        *&v45->__r_.__value_.__l.__data_ = v52;
      }

      *v44 = &unk_287528000;
    }

    if (!*(v38 + 16))
    {
      TFsa::addExtremity(a1 + 24, v38, 0);
    }

    if (!*(v38 + 24))
    {
      TFsa::addExtremity(a1 + 24, v38, 1u);
    }

    ++v37;
  }

  while (a4 != v37);
  if (*(a1 + 64) != a4)
  {
    tknPrintf("Error: Expected state count to be %llu not %llu\n", v35, *(a1 + 64), a4);
    std::string::basic_string[abi:ne200100]<0>(v72, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v73) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v72[0], v72[1]);
    }

    else
    {
      *&__p[8] = *v72;
      *&__p[24] = v73;
    }

    *__p = &unk_287528000;
    if (__p[31] >= 0)
    {
      v55 = &__p[8];
    }

    else
    {
      v55 = *&__p[8];
    }

    conditionalAssert(v55, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 117);
    *__p = byte_287529580;
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72[0]);
    }

    v56 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v56 = byte_287529580;
    v57 = (v56 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v57, *__p, *&__p[8]);
    }

    else
    {
      v67 = *__p;
      v56[3] = *&__p[16];
      *&v57->__r_.__value_.__l.__data_ = v67;
    }

    *v56 = &unk_287528000;
  }

  v39 = *(a1 + 224);
  if (v39 != a5)
  {
    tknPrintf("Error: Expected starting state count to be %llu not %llu\n", v35, a5, v39);
    std::string::basic_string[abi:ne200100]<0>(v72, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v73) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v72[0], v72[1]);
    }

    else
    {
      *&__p[8] = *v72;
      *&__p[24] = v73;
    }

    *__p = &unk_287528000;
    if (__p[31] >= 0)
    {
      v58 = &__p[8];
    }

    else
    {
      v58 = *&__p[8];
    }

    conditionalAssert(v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 124);
    *__p = byte_287529580;
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72[0]);
    }

    v59 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v59 = byte_287529580;
    v60 = (v59 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v60, *__p, *&__p[8]);
    }

    else
    {
      v68 = *__p;
      v59[3] = *&__p[16];
      *&v60->__r_.__value_.__l.__data_ = v68;
    }

    *v59 = &unk_287528000;
  }

  v40 = *(a1 + 232);
  if (v40 != a6)
  {
    tknPrintf("Error: Expected accepting state count to be %llu not %llu\n", v35, a6, v40);
    std::string::basic_string[abi:ne200100]<0>(v72, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v73) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v72[0], v72[1]);
    }

    else
    {
      *&__p[8] = *v72;
      *&__p[24] = v73;
    }

    *__p = &unk_287528000;
    if (__p[31] >= 0)
    {
      v61 = &__p[8];
    }

    else
    {
      v61 = *&__p[8];
    }

    conditionalAssert(v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 131);
    *__p = byte_287529580;
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72[0]);
    }

    v62 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v62 = byte_287529580;
    v63 = (v62 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v63, *__p, *&__p[8]);
    }

    else
    {
      v69 = *__p;
      v62[3] = *&__p[16];
      *&v63->__r_.__value_.__l.__data_ = v69;
    }

    *v62 = &unk_287528000;
  }

  Registry = TRegisterable<TLattice>::getRegistry();
  *(a1 + 8) = TBaseRegistry<TLatticeProcessor *>::registerInstance(Registry, a1);
  if (v79[0])
  {
    v79[1] = v79[0];
    operator delete(v79[0]);
  }

  return a1;
}

{
  return TLattice::TLattice(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_2626E7C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      v32 = *(v30 - 112);
      if (v32)
      {
        *(v30 - 104) = v32;
        operator delete(v32);
      }

      TAllocator::clear((v27 + 33));
      TFsa::~TFsa((v27 + 3));
      TRegisterable<TLattice>::~TRegisterable(v27);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

void *TRegisterable<TLattice>::~TRegisterable(void *a1)
{
  *a1 = &unk_287528210;
  if (a1[1] != -1)
  {
    Registry = TRegisterable<TLattice>::getRegistry();
    v3 = *Registry;
    *(Registry[1] + 8 * a1[1] - 8) = 0;
    *Registry = v3 - 1;
  }

  return a1;
}

void TLattice::~TLattice(TLattice *this)
{
  *this = &unk_2875233A8;
  TAllocator::clear((this + 264));
  TAllocator::clear((this + 264));
  TFsa::~TFsa((this + 24));

  TRegisterable<TLattice>::~TRegisterable(this);
}

{
  TLattice::~TLattice(this);

  JUMPOUT(0x26672B1B0);
}

void TLatticeTransData::TLatticeTransData(uint64_t a1, TLatticeTransData *this, uint64_t a3, __int32 *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  *a1 = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  v11 = a9[1];
  *(a1 + 48) = *a9;
  *(a1 + 64) = v11;
  v12 = a9[2];
  v13 = a9[3];
  v14 = a9[5];
  *(a1 + 112) = a9[4];
  *(a1 + 128) = v14;
  *(a1 + 80) = v12;
  *(a1 + 96) = v13;
  if (a3 == 3)
  {
    *(a1 + 8) = a4;
  }

  else if (a3 == 2)
  {
    v16 = wcslen(a4);
    if ((v16 + 1) >> 62)
    {
      v17 = -1;
    }

    else
    {
      v17 = 4 * (v16 + 1);
    }

    v18 = TAllocator::allocate(this, v17);
    wcscpy(v18, a4);
    *(a1 + 8) = v18;
  }

  else
  {
    *(a1 + 8) = 0;
    v19 = TAllocator::allocate(this, 8);
    strcpy(v19, "?");
    *(a1 + 8) = v19;
  }
}

void TRegisterable<TLattice>::~TRegisterable(void *a1)
{
  TRegisterable<TLattice>::~TRegisterable(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t TRegisterable<TLattice>::getRegistry()
{
  {
    operator new();
  }

  return TRegisterable<TLattice>::getRegistry(void)::s_registry;
}

uint64_t *std::vector<TState *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<TState *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2626E80A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TState *>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void WaveDecoder::saveWaveDecoder(WaveDecoder *this, DFile *a2, DFileChecksums *a3, int a4, _BOOL8 a5)
{
  if (a4)
  {

    WaveDecoder::saveWaveDecoderText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x6Cu, a5, "MRWDB!?", 18, 1);
    v10 = 0;
    writeObject<short>(v8, this, &v10);
    writeObject<short>(v8, this + 16, &v10);
    writeObject<short>(v8, this + 32, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 108, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void WaveDecoder::saveWaveDecoderText(WaveDecoder *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v21);
  DgnTextFileWriter::openDgnTextFileWriter(v21, a2, 110, a3);
  v19 = 0;
  v20 = 0;
  DgnTextFile::legalDgnTextFileVersions(v21, sWDT_Versions, &v19);
  DgnTextFileWriter::setFileType(v21, "WaveDataDecodeTableText", (v19 + 8 * (v20 - 1)));
  v17 = 0;
  v18 = 0;
  *v15 = 0;
  v6 = realloc_array(0, v15, 0xCuLL, 0, 0, 1);
  v16 = 0;
  v17 = *v15;
  LODWORD(v18) = 3;
  HIDWORD(v18) = v6 >> 2;
  v22 = 0;
  HIDWORD(v16) = realloc_array(0, &v22, 0x30uLL, 0, 0, 1) >> 4;
  *v15 = v22;
  v7 = v16;
  if (v16 <= 3)
  {
    if (v16 != 3)
    {
      v9 = v16 + 1;
      v10 = 16 * v16;
      do
      {
        DgnString::DgnString((*v15 + v10));
        v10 += 16;
      }

      while (v9++ != 3);
    }
  }

  else if (v16 >= 4)
  {
    v8 = 16 * v16 - 16;
    do
    {
      --v7;
      DgnString::~DgnString(*v15 + v8);
      v8 -= 16;
    }

    while (v7 > 3);
  }

  LODWORD(v16) = 3;
  DgnString::operator=(*v15, "Type");
  *v17 = 0;
  DgnString::operator=((*v15 + 16), "OneByteFeature");
  *(v17 + 1) = 3;
  DgnString::operator=((*v15 + 32), "TwoByteFeature");
  *(v17 + 2) = 1;
  DgnTextFileWriter::setLineFieldFormat(v21, &v17, v15);
  if (*(this + 2))
  {
    v12 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v21, 0, "Linear");
      DgnTextFileWriter::setLineFieldUnsignedValue(v21, 1u, v12);
      DgnTextFileWriter::setLineFieldIntegerValue(v21, 2u, *(*this + 2 * v12));
      DgnTextFileWriter::writeNextLine(v21);
      ++v12;
    }

    while (v12 < *(this + 2));
  }

  if (*(this + 6))
  {
    v13 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v21, 0, "Mu_Law");
      DgnTextFileWriter::setLineFieldUnsignedValue(v21, 1u, v13);
      DgnTextFileWriter::setLineFieldIntegerValue(v21, 2u, *(*(this + 2) + 2 * v13));
      DgnTextFileWriter::writeNextLine(v21);
      ++v13;
    }

    while (v13 < *(this + 6));
  }

  if (*(this + 10))
  {
    v14 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v21, 0, "A_Law");
      DgnTextFileWriter::setLineFieldUnsignedValue(v21, 1u, v14);
      DgnTextFileWriter::setLineFieldIntegerValue(v21, 2u, *(*(this + 4) + 2 * v14));
      DgnTextFileWriter::writeNextLine(v21);
      ++v14;
    }

    while (v14 < *(this + 10));
  }

  DgnArray<DgnString>::releaseAll(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  DgnIArray<Utterance *>::~DgnIArray(&v19);
  DgnTextFileWriter::~DgnTextFileWriter(v21);
}

void sub_2626E8504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileWriter::~DgnTextFileWriter(va2);
  _Unwind_Resume(a1);
}

uint64_t WaveDecoder::sizeObject(_DWORD *a1, int a2)
{
  if (a2 == 3)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 12;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v3 = 8;
    }

    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = 24;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v2 = 16;
      }
    }

    else
    {
      v4 = a1[2];
      if (v4 <= 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = (2 * v4);
      }

      v6 = v3 + v5;
      v7 = a1[6];
      if (v7 <= 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = (2 * v7);
      }

      v2 = v6 + v3 + v8;
      v9 = a1[10];
      if (v9 >= 1)
      {
        v3 += 2 * v9;
      }
    }
  }

  return v3 + v2;
}

void TFormatter::TFormatter(TFormatter *this, const TDataManager *a2, TDataManager *a3, TLexicon *a4, TTokenizer *a5)
{
  *(this + 1) = -1;
  *(this + 2) = a5;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *this = &unk_2875293F0;
  *(this + 5) = &unk_2875294E0;
  TAllocator::TAllocator((this + 64), 2048);
  *(this + 104) = 0u;
  *(this + 17) = 0;
  *(this + 120) = 0u;
  operator new();
}

void sub_2626E9A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, void *a42, int a43, __int16 a44, char a45, char a46, int a47, __int16 a48, char a49, char a50)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((v53 & 1) == 0)
    {
LABEL_6:
      if (a2 == 1)
      {
        __cxa_begin_catch(a1);
        TFormatter::freeMemory(v50);
        __cxa_rethrow();
      }

      *(v51 + 136) = a14;
      if (*(v54 - 89) < 0)
      {
        operator delete(*(v54 - 112));
      }

      TAllocator::clear((v50 + 64));
      TRegisterable<TIFormatter>::~TRegisterable(v50);
      _Unwind_Resume(a1);
    }
  }

  else if (!v53)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v52);
  goto LABEL_6;
}

uint64_t TFormatter::freeMemory(TFormatter *this)
{
  --*(*(this + 4) + 360);
  v2 = *(this + 2);
  if (v2)
  {
    --*(v2 + 120);
  }

  v3 = *(this + 19);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 13);
  if (v7)
  {
    TGrammarManager2::~TGrammarManager2(v7);
    MEMORY[0x26672B1B0]();
  }

  v8 = *(this + 14);
  if (v8)
  {
    TGrammarManager2::~TGrammarManager2(v8);
    MEMORY[0x26672B1B0]();
  }

  v9 = *(this + 17);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 16);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    TDataSaver::~TDataSaver(v11);
    MEMORY[0x26672B1B0]();
  }

  v12 = *(this + 6);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  result = *(this + 3);
  if (result)
  {
    v14 = *(*result + 8);

    return v14();
  }

  return result;
}

void TFormatter::~TFormatter(TFormatter *this)
{
  *this = &unk_2875293F0;
  *(this + 5) = &unk_2875294E0;
  TFormatter::freeMemory(this);
  TAllocator::clear((this + 64));

  TRegisterable<TIFormatter>::~TRegisterable(this);
}

{
  TFormatter::~TFormatter(this);

  JUMPOUT(0x26672B1B0);
}

void non-virtual thunk toTFormatter::~TFormatter(TFormatter *this)
{
  TFormatter::~TFormatter((this - 40));
}

{
  TFormatter::~TFormatter((this - 40));

  JUMPOUT(0x26672B1B0);
}

uint64_t TFormatter::save(TFormatter *this, TDataManager *a2, TDataManager *a3)
{
  v44[19] = *MEMORY[0x277D85DE8];
  v6 = *(this + 4);
  v7 = (v6 + 72);
  if (*(v6 + 95) < 0)
  {
    v7 = *v7;
  }

  TOutputModel::TOutputModel(v37, a2, a3, v7, *(this + 3));
  if (a2)
  {
    TDataManager::setIntVar(a2, "ItnVersion", 4);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
    TOutputStream::TOutputStream(v36, &v39, "ItnParam", *(this + 4) + 240);
    TParamManager::save(*(this + 6), v36, 0);
    std::stringbuf::str();
    if (SHIBYTE(v32[0].__locale_) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (SHIBYTE(v32[0].__locale_) >= 0)
    {
      locale_high = HIBYTE(v32[0].__locale_);
    }

    else
    {
      locale_high = v31;
    }

    (*(*a2 + 48))(a2, "ItnParam", p_p, locale_high);
    if (SHIBYTE(v32[0].__locale_) < 0)
    {
      operator delete(__p);
    }

    v10 = MEMORY[0x277D82828];
    if (v38 == 1 || TItnRuleManager::isCustomized(*(this + 15)))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      TOutputStream::TOutputStream(v29, &__p, "ItnRule", *(this + 4) + 240);
      TItnRuleManager::save(*(this + 15), v29, 0);
      std::stringbuf::str();
      if ((v28 & 0x80u) == 0)
      {
        v11 = &v26;
      }

      else
      {
        v11 = v26;
      }

      if ((v28 & 0x80u) == 0)
      {
        v12 = v28;
      }

      else
      {
        v12 = v27;
      }

      (*(*a2 + 48))(a2, "ItnRule", v11, v12);
      if (v28 < 0)
      {
        operator delete(v26);
      }

      __p = *v10;
      *(&__p + *(__p - 3)) = *(v10 + 24);
      v31 = MEMORY[0x277D82878] + 16;
      if (v34 < 0)
      {
        operator delete(v33);
      }

      v31 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v32);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v35);
    }

    if (v38 == 1)
    {
      v13 = *(this + 7);
      if (v13)
      {
        TDataSaver::save(v13, a2);
      }
    }

    v39 = *v10;
    *(&v39 + *(v39 - 3)) = *(v10 + 24);
    v40 = (MEMORY[0x277D82878] + 16);
    if (v43 < 0)
    {
      operator delete(v42);
    }

    v40 = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(v41);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v44);
  }

  if (a3)
  {
    TDataManager::setIntVar(a3, "ItnVersion", 4);
    if (v38 >= 2)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
      TOutputStream::TOutputStream(v36, &v39, "ItnParam", *(this + 4) + 240);
      TParamManager::save(*(this + 6), v36, 1);
      std::stringbuf::str();
      if (SHIBYTE(v32[0].__locale_) >= 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if (SHIBYTE(v32[0].__locale_) >= 0)
      {
        v15 = HIBYTE(v32[0].__locale_);
      }

      else
      {
        v15 = v31;
      }

      (*(*a3 + 48))(a3, "ItnParam", v14, v15);
      if (SHIBYTE(v32[0].__locale_) < 0)
      {
        operator delete(__p);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      TOutputStream::TOutputStream(v29, &__p, "ItnRule", *(this + 4) + 240);
      TItnRuleManager::save(*(this + 15), v29, 1);
      std::stringbuf::str();
      if ((v28 & 0x80u) == 0)
      {
        v16 = &v26;
      }

      else
      {
        v16 = v26;
      }

      if ((v28 & 0x80u) == 0)
      {
        v17 = v28;
      }

      else
      {
        v17 = v27;
      }

      (*(*a3 + 48))(a3, "ItnRule", v16, v17);
      if (v28 < 0)
      {
        operator delete(v26);
      }

      v18 = *(this + 7);
      if (v18)
      {
        TDataSaver::save(v18, a3);
      }

      __p = *MEMORY[0x277D82828];
      v19 = __p;
      v20 = *(MEMORY[0x277D82828] + 24);
      *(&__p + *(__p - 3)) = v20;
      v31 = MEMORY[0x277D82878] + 16;
      if (v34 < 0)
      {
        operator delete(v33);
      }

      v31 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v32);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v35);
      v39 = v19;
      *(&v39 + *(v19 - 3)) = v20;
      v40 = (MEMORY[0x277D82878] + 16);
      if (v43 < 0)
      {
        operator delete(v42);
      }

      v40 = (MEMORY[0x277D82868] + 16);
      std::locale::~locale(v41);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v44);
    }

    if (!*(this + 7))
    {
      v21 = 0;
      __p = 0;
      v31 = 0;
      v39 = "ItnTag";
      v40 = "ItnGrammar";
      v41[0].__locale_ = "ItnGrammar2";
      v41[1].__locale_ = "ItnCompounderFeatureConfig";
      v41[2].__locale_ = "ItnCompounderWordFlag";
      v41[3].__locale_ = "ItnCompounderRules";
      v32[0].__locale_ = 0;
      do
      {
        v22 = (&v39)[v21];
        if ((*(**(this + 3) + 40))(*(this + 3), v22, 0, 0))
        {
          TDataManager::getStringVar(*(this + 3), v22, &__p);
          if (SHIBYTE(v32[0].__locale_) >= 0)
          {
            v23 = &__p;
          }

          else
          {
            v23 = __p;
          }

          if (SHIBYTE(v32[0].__locale_) >= 0)
          {
            v24 = HIBYTE(v32[0].__locale_);
          }

          else
          {
            v24 = v31;
          }

          (*(*a3 + 48))(a3, v22, v23, v24);
        }

        ++v21;
      }

      while (v21 != 6);
      if (SHIBYTE(v32[0].__locale_) < 0)
      {
        operator delete(__p);
      }
    }
  }

  result = *(this + 3);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void sub_2626EA86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  std::ostringstream::~ostringstream(&a61);
  _Unwind_Resume(a1);
}

void TFormatter::importChanges(TFormatter *this, const TDataManager *a2, TLexicon *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2);
  v6 = v5;
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v19 = 0;
  v21 = 0;
  if (!v5)
  {
    v6 = *(v3 + 32);
  }

  v7 = (v6 + 72);
  if (*(v6 + 95) < 0)
  {
    v7 = *v7;
  }

  TInputModel::TInputModel(&v14, v4, 0, 1, v7);
  IntVar = TInputModel::getIntVar(&v14, "ItnVersion", 1);
  if ((IntVar - 5) > 0xFFFFFFFB)
  {
    operator new();
  }

  tknPrintf("Error: %llu : Expected %s in range [%llu,%llu]\n", v9, IntVar, "ItnVersion", 1, 4);
  std::string::basic_string[abi:ne200100]<0>(&__s, &byte_262899963);
  *v17 = byte_287529580;
  if (SHIBYTE(v16) < 0)
  {
    std::string::__init_copy_ctor_external(&v17[8], __s, *(&__s + 1));
  }

  else
  {
    *&v17[8] = __s;
    v18 = v16;
  }

  *v17 = &unk_287528000;
  if (SHIBYTE(v18) >= 0)
  {
    v10 = &v17[8];
  }

  else
  {
    v10 = *&v17[8];
  }

  conditionalAssert(v10, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/formatter.cpp", 742);
  *v17 = byte_287529580;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(*&v17[8]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__s);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v17, &byte_262899963);
  *exception = byte_287529580;
  v12 = (exception + 1);
  if ((v17[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v12, *v17, *&v17[8]);
  }

  else
  {
    v13 = *v17;
    exception[3] = *&v17[16];
    *&v12->__r_.__value_.__l.__data_ = v13;
  }

  *exception = &unk_287528000;
}

void sub_2626EB744(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x2626EB800);
}

void sub_2626EB75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  if (LOBYTE(STACK[0x470]) == 1)
  {
    TSegmenter::findSegmentEnd(va, v19);
  }

  JUMPOUT(0x2626EB788);
}

void sub_2626EB784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (LOBYTE(STACK[0x890]) == 1 && STACK[0x478] != a13 && STACK[0x478] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0xCB0]) == 1)
  {
    v16 = STACK[0x898];
    if (STACK[0x898] != a14)
    {
      if (v16)
      {
        MEMORY[0x26672B1B0](v16, 0x1000C4052888210);
      }
    }
  }

  if (SLOBYTE(STACK[0xCDF]) < 0)
  {
    operator delete(STACK[0xCC8]);
  }

  _Unwind_Resume(a1);
}

void TFormatter::makeBlockForWord(TFormatter *this, const TWord *a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v5 = v2;
  v16 = v18;
  v17 = xmmword_26286B6F0;
  v18[1024] = 1;
  TWord::getWrittenForm(v3, &v16);
  v13 = v15;
  v14 = xmmword_26286B6F0;
  v15[1024] = 1;
  TWord::getSpokenForm(v4, &v13);
  v6 = *(v5 + 48);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v6 + 3792));
  if (*(v6 + TParam::getValidConfig((v6 + 3792), ActiveConfigHandle) + 3944) != 1 || *(&v17 + 1) == 0)
  {
    v9 = v11;
    v10 = xmmword_26286B6F0;
    v12 = 1;
    (*(**(v5 + 120) + 48))(*(v5 + 120), *v4, 0, &v9);
    if (v12 == 1 && v9 != v11)
    {
      if (v9)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  operator new();
}

void sub_2626EBB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (LOBYTE(STACK[0x828]) == 1)
  {
    TFormatter::makeBlockForWord(va, v5);
  }

  if (LOBYTE(STACK[0xC48]) == 1)
  {
    v10 = STACK[0x830];
    if (STACK[0x830] != v8)
    {
      if (v10)
      {
        MEMORY[0x26672B1B0](v10, 0x1000C4052888210);
      }
    }
  }

  if (*(v7 + 1048) == 1 && STACK[0xC50] != v6 && STACK[0xC50] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void TFormatter::splitPattern(TFormatter *a1, __int32 *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    operator new();
  }

  *a3 = 0;
  *a4 = 0;
  if (wcsncmp(a2, &unk_262888E90, 1uLL))
  {
    v6 = wcsstr(a2, &unk_262888E90);
    if (!v6)
    {
      v6 = &a2[wcslen(a2)];
    }

    std::wstring::basic_string[abi:ne200100]<0>(&__str, a2);
    std::wstring::basic_string(&v21, &__str, 0, v6 - a2, &v19);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  v7 = a2 + 1;
  v8 = wcsstr(v7, &unk_262888E98);
  std::wstring::basic_string[abi:ne200100]<0>(&__str, v7);
  std::wstring::basic_string(&v21, &__str, 0, v8 - v7, &v19);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v9 = v8 + 1;
  v10 = v9;
  v11 = 1;
  do
  {
    if (!*v10)
    {
      break;
    }

    v12 = wcsncmp(v10, &unk_262888E90, 1uLL);
    v13 = 1;
    if (v12)
    {
      if (!wcsncmp(v10, &unk_262888EA0, 1uLL))
      {
        v13 = -1;
      }

      else
      {
        v13 = 0;
      }
    }

    ++v10;
    v11 += v13;
  }

  while (v11);
  std::wstring::basic_string[abi:ne200100]<0>(&v19, v9);
  std::wstring::basic_string(&__str, &v19, 0, (v10 - v9 - 4) >> 2, &v18);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = v21.__r_.__value_.__r.__words[0];
    if (wcscmp(v21.__r_.__value_.__l.__data_, dword_262888EA8))
    {
LABEL_23:
      v18 = (*(**(a1 + 17) + 16))(*(a1 + 17), v14);
      v19.__r_.__value_.__r.__words[0] = &v19.__r_.__value_.__l.__size_;
      for (*&v19.__r_.__value_.__r.__words[1] = 0uLL; v18 != -1; v18 = *(TTagManager::getTag(*(a1 + 17), v18) + 32))
      {
        std::__tree<SDhVoc_fake **>::__emplace_unique_key_args<SDhVoc_fake **,SDhVoc_fake ** const&>(&v19, &v18, &v18);
      }

      operator new();
    }
  }

  else if (wcscmp(&v21, dword_262888EA8))
  {
    v14 = &v21;
    goto LABEL_23;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  HeadClone = TLexicon::findHeadClone(*(a1 + 4), p_str);
  if (!HeadClone)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__str;
    }

    else
    {
      v17 = __str.__r_.__value_.__r.__words[0];
    }

    HeadClone = TLexicon::addTempWord(*(a1 + 4), v17, 0, 0, 0);
  }

  TFormatter::makeBlockForWord(a1, HeadClone);
}

void sub_2626EC8C4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 112);
  if (v4)
  {
    *(v1 - 104) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t TFormatter::stateToParamConfig(TFormatter *this, const TItnControlState *a2)
{
  v2 = *(a2 + 1);
  if (*(a2 + 5) != -1)
  {
    v2 = *(a2 + 5);
  }

  v3 = v2 - 7;
  if (v3 > 2)
  {
    v4 = 136;
  }

  else
  {
    v4 = qword_262888F78[v3];
  }

  return *(*(this + 6) + v4);
}

double TFormatter::makeUttState@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _OWORD *a7@<X8>)
{
  v7 = a4;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  v71 = v11;
  v72 = v11;
  v69 = v11;
  v70 = v11;
  if ((a6 & 4) == 0)
  {
    if (!a4)
    {
LABEL_17:
      a7[2] = v11;
      a7[3] = v11;
      *a7 = v11;
      a7[1] = v11;
      return *&v11;
    }

    v12 = TResultManager::getResult(*(a1 + 128), *(a2 + 8 * a4 - 8));
    if (0xAAAAAAAAAAAAAAABLL * ((v12[5] - v12[4]) >> 3) < (v12[8] - v12[7]) >> 6)
    {
      v13 = v12[8];
      v14 = *(v13 - 48);
      *a7 = *(v13 - 64);
      a7[1] = v14;
      v11 = *(v13 - 32);
      v15 = *(v13 - 16);
      a7[2] = v11;
      a7[3] = v15;
      return *&v11;
    }

LABEL_16:
    *&v11 = -1;
    *(&v11 + 1) = -1;
    goto LABEL_17;
  }

  if (a5)
  {
    a3 = a5 + a4;
  }

  if (a3 <= a4)
  {
    goto LABEL_16;
  }

  v17 = a4;
  while (1)
  {
    v18 = TResultManager::getResult(*(a1 + 128), *(a2 + 8 * v17));
    v20 = v18[13];
    v19 = v18[14];
    v21 = v19 - v20;
    if (v19 != v20)
    {
      break;
    }

LABEL_15:
    if (++v17 >= a3)
    {
      goto LABEL_16;
    }
  }

  v22 = 0;
  v23 = 0;
  v24 = v21 >> 3;
  v25 = (v20 + 8);
  while (!*(v25 - 1) || !*v25)
  {
    v26 = *v25;
    v25 += 2;
    v23 += v26;
    v22 += 2;
    if (v22 >= v24)
    {
      goto LABEL_15;
    }
  }

  v59 = a7;
  v27 = (v18[7] + (v23 << 6));
  v28 = v27[1];
  v68[0] = *v27;
  v68[1] = v28;
  v29 = v27[3];
  v68[2] = v27[2];
  v68[3] = v29;
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v66 = v30;
  v67 = v30;
  v64 = v30;
  v65 = v30;
  if (!v7)
  {
    goto LABEL_60;
  }

  v31 = 0;
  v60 = v7;
  v61 = a2 + 8 * v7;
  do
  {
    while (1)
    {
      v32 = TResultManager::getResult(*(a1 + 128), *(v61 + 8 * ~v31));
      v33 = *(v32 + 104);
      v34 = *(v32 + 112) - v33;
      if (v34)
      {
        break;
      }

      if (++v31 >= v7)
      {
        goto LABEL_60;
      }
    }

    v35 = v32;
    v62 = v31;
    v36 = v34 >> 3;
    v37 = 0;
    v38 = *(v32 + 16) + strlen(*(v32 + 16));
    v39 = 0xAAAAAAAAAAAAAAABLL * ((v35[5] - v35[4]) >> 3);
    do
    {
      v40 = *(v33 + 8 * (v36 - v37) - 16);
      v41 = v38 - v40;
      if (-v40 < 0)
      {
        v43 = 1;
        v44 = (v38 - v40);
        while (1)
        {
          v63 = 0;
          v45 = TLocaleInfo::multiByteToUnicode(*(a1 + 32) + 240, v44, &v63);
          if (v45 == -1)
          {
LABEL_44:
            v49 = v35[7] + (v39 << 6);
            v50 = *(v49 - 48);
            v64 = *(v49 - 64);
            v65 = v50;
            v51 = *(v49 - 16);
            v66 = *(v49 - 32);
            v67 = v51;
            v42 = 1;
            goto LABEL_45;
          }

          v46 = v45;
          if ((v43 & 1) == 0)
          {
            goto LABEL_38;
          }

          v47 = v63;
          {
            operator new();
          }

          v43 = 1;
          if (v47 <= 159)
          {
            if (v47 <= 0x20 && ((1 << v47) & 0x100002600) != 0)
            {
              goto LABEL_39;
            }

LABEL_38:
            v43 = 0;
            goto LABEL_39;
          }

          if (v47 >= 12288)
          {
            if (v47 == 12288)
            {
              goto LABEL_39;
            }

            v48 = 65279;
          }

          else
          {
            if (v47 == 160)
            {
              goto LABEL_39;
            }

            v48 = 8203;
          }

          if (v47 != v48)
          {
            goto LABEL_38;
          }

LABEL_39:
          v44 += v46;
          if (v44 >= v38)
          {
            if (v43)
            {
              break;
            }

            goto LABEL_44;
          }
        }
      }

      v42 = 0;
LABEL_45:
      v33 = v35[13];
      v52 = v35[14];
      if (v37 + 2 >= ((v52 - v33) >> 3))
      {
        break;
      }

      v39 -= *(v52 + 8 * ~v37);
      v36 = (v52 - v33) >> 3;
      v37 += 2;
      v38 = v41;
    }

    while ((v42 & 1) == 0);
    v31 = v62 + 1;
    v7 = v60;
    if (v62 + 1 >= v60)
    {
      v53 = 1;
    }

    else
    {
      v53 = v42;
    }
  }

  while ((v53 & 1) == 0);
  if (v42)
  {
    for (i = 0; i != 32; i += 8)
    {
      v55 = *(&v64 + i);
      if (v55 != -1 && v55 == *(v68 + i))
      {
        *(&v71 + getItnControlCategory(*(&v64 + i))) = -1;
        *(&v69 + getItnControlCategory(v55)) = v55;
      }
    }
  }

LABEL_60:
  v56 = v70;
  *v59 = v69;
  v59[1] = v56;
  *&v11 = v71;
  v57 = v72;
  v59[2] = v71;
  v59[3] = v57;
  return *&v11;
}

void sub_2626ECD78(_Unwind_Exception *a1)
{
  v2 = v1;
  MEMORY[0x26672B1B0](v2, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TFormatter::addWords(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  std::vector<TItnWordData>::reserve(a4, 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4) + ((a2[1] - *a2) >> 3));
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    while (1)
    {
      Word = TLexicon::findWord(*(a1 + 32), *(v8 + 8 * v9));
      if (Word)
      {
        if (!a3)
        {
          goto LABEL_8;
        }
      }

      else
      {
        Word = TLexicon::addTempWord(*(a1 + 32), *(*a2 + 8 * v9), 0, 0, 0);
        if (!a3)
        {
          goto LABEL_8;
        }
      }

      if (v9 != ((a2[1] - *a2) >> 3) - 1)
      {
        v11 = *(a3 + 4 * v9);
        goto LABEL_10;
      }

LABEL_8:
      v11 = 0;
LABEL_10:
      *&v12 = -1;
      *(&v12 + 1) = -1;
      v21 = v12;
      v20 = v12;
      v19 = v12;
      v18 = v12;
      v14 = 0uLL;
      v15 = Word;
      v16 = v11;
      v17 = 0;
      v22 = 256;
      std::vector<TItnWordData>::push_back[abi:ne200100](a4, &v14);
      ++v9;
      v8 = *a2;
      v13 = a2[1];
      if (v9 >= (v13 - *a2) >> 3)
      {
        if (v8 != v13)
        {
          *(a4[1] - 88) = 1000;
        }

        return;
      }
    }
  }
}

void std::vector<TItnWordData>::reserve(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(a1, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<TItnWordData>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v13 = v12 + 1;
    if ((v12 + 1) > 0x249249249249249)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(a1, v15);
    }

    v16 = 112 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[6];
    *(v16 + 80) = a2[5];
    *(v16 + 96) = v21;
    *(v16 + 48) = v19;
    *(v16 + 64) = v20;
    v11 = 112 * v12 + 112;
    v22 = *(a1 + 8) - *a1;
    v23 = v16 - v22;
    memcpy((v16 - v22), *a1, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[6];
    v4[5] = a2[5];
    v4[6] = v10;
    v4[3] = v8;
    v4[4] = v9;
    v11 = (v4 + 7);
  }

  *(a1 + 8) = v11;
}

uint64_t TFormatter::addWords(uint64_t a1, uint64_t *a2, unint64_t a3, int a4, void *a5)
{
  if (a2 >= a3)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0;
    v28 = a4 ^ 1;
    do
    {
      v31 = a2;
      v6 = TResultManager::getResult(*(a1 + 128), *a2);
      v7 = v6;
      v8 = v6[1];
      if (((v28 | v8) & 1) == 0)
      {
        v8 = *v6;
      }

      v29 = v5 | v8;
      std::vector<TItnWordData>::reserve(a5, 0x6DB6DB6DB6DB6DB7 * ((a5[1] - *a5) >> 4) - 0x5555555555555555 * ((*(v6 + 5) - *(v6 + 4)) >> 3));
      v9 = *(v7 + 13);
      v10 = *(v7 + 14);
      if (v10 != v9)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if (*(v9 + 8 * (v11 | 1)))
          {
            v13 = 0;
            v14 = *(v9 + 8 * v11) == 0;
            v15 = 24 * v12;
            v16 = v12 << 6;
            do
            {
              v17 = *(v7 + 4) + v15;
              if (*(v17 + 23) < 0)
              {
                v17 = *v17;
              }

              Word = TLexicon::findWord(*(a1 + 32), v17);
              if (!Word)
              {
                v19 = *(v7 + 4) + v15;
                if (*(v19 + 23) < 0)
                {
                  v19 = *v19;
                }

                Word = TLexicon::addTempWord(*(a1 + 32), v19, 0, 0, 0);
              }

              v20 = *(*(v7 + 10) + 8 * v12 + 8 * v13);
              *&v21 = -1;
              *(&v21 + 1) = -1;
              v41 = v21;
              v40 = v21;
              v39 = v21;
              v38 = v21;
              *&v33 = v31;
              *(&v33 + 1) = v11;
              v34 = Word;
              v35 = v20;
              v36 = 0;
              v37 = v14;
              v42 = 0;
              v43 = v13 == 0;
              v22 = (*(v7 + 7) + v16);
              v23 = *v22;
              v24 = v22[1];
              v25 = v22[2];
              v41 = v22[3];
              v40 = v25;
              v39 = v24;
              v38 = v23;
              v42 = 1;
              if (!(v12 + v13))
              {
                v36 = v29 & 1;
                v29 = v7[1];
                if (((v28 | v29) & 1) == 0)
                {
                  v29 = *v7;
                }
              }

              std::vector<TItnWordData>::push_back[abi:ne200100](a5, &v33);
              ++v13;
              v9 = *(v7 + 13);
              v15 += 24;
              v16 += 64;
            }

            while (v13 < *(v9 + 8 * (v11 | 1)));
            v10 = *(v7 + 14);
            v12 += v13;
          }

          v11 += 2;
        }

        while (v11 < (v10 - v9) >> 3);
      }

      a2 = v31 + 1;
      v5 = v29;
    }

    while ((v31 + 1) < a3);
  }

  return v5 & 1;
}

uint64_t TFormatter::addLeftContext(uint64_t a1, uint64_t *a2, uint64_t *a3, void **a4, BOOL *a5)
{
  v10 = *(a1 + 48);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v10 + 1520));
  v12 = 0;
  v13 = *(v10 + 4 * TParam::getValidConfig((v10 + 1520), ActiveConfigHandle) + 1680);
  v14 = a3;
  do
  {
    if (v14 <= a2)
    {
      break;
    }

    v15 = *--v14;
    v16 = TResultManager::getResult(*(a1 + 128), v15);
    v12 -= 0x5555555555555555 * ((*(v16 + 40) - *(v16 + 32)) >> 3);
  }

  while (v12 < v13);
  v17 = *(a1 + 48);
  v18 = TParam::getActiveConfigHandle((v17 + 2472));
  ValidConfig = TParam::getValidConfig((v17 + 2472), v18);
  result = TFormatter::addWords(a1, v14, a3, (*(v17 + ValidConfig + 2624) & 1) == 0, a4);
  a5[1] = result;
  *a5 = v14 == a2;
  if (v12 > v13)
  {
    v21 = 0;
    v23 = *a4;
    v22 = a4[1];
    v24 = v22 - *a4;
    v25 = v24 - 7;
    v26 = 1;
    while (1)
    {
      if (v23[v25] == 1)
      {
        v21 = v26;
        if (v26 >= v13)
        {
          break;
        }
      }

      ++v26;
      v25 -= 112;
      if (!--v12)
      {
        goto LABEL_11;
      }
    }

    v21 = v26;
LABEL_11:
    if (v21 != 0x6DB6DB6DB6DB6DB7 * (v24 >> 4))
    {
      *a5 = 0;
      v27 = -112 * v21;
      v28 = &v22[v27];
      if (&v22[v27] != v23)
      {
        v29 = -v27;
        if (v22 != v28)
        {
          result = memmove(v23, v28, -6 - v27);
        }

        a4[1] = &v23[v29];
      }
    }
  }

  return result;
}

void TFormatter::addRightContext(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, BOOL *a5)
{
  if (a2 >= a3)
  {
    v10 = 0;
    v11 = a2;
  }

  else
  {
    v10 = 0;
    v11 = a2;
    do
    {
      Result = TResultManager::getResult(*(a1 + 128), *v11);
      v13 = *(Result + 104);
      v14 = *(Result + 112) - v13;
      if (v14)
      {
        v15 = v14 >> 3;
        v16 = (v13 + 8);
        v17 = 2;
        do
        {
          v18 = *(v16 - 1);
          if (v18)
          {
            LOBYTE(v18) = *v16 != 0;
          }

          v19 = *v16;
          v16 += 2;
          v10 += v19;
          if (v17 >= v15)
          {
            break;
          }

          v17 += 2;
        }

        while ((v18 & 1) == 0);
      }

      else
      {
        LOBYTE(v18) = 0;
      }

      ++v11;
    }

    while (v11 < a3 && (v18 & 1) == 0);
  }

  v20 = (a4[1] - *a4) >> 4;
  v21 = *(a1 + 48);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v21 + 2472));
  ValidConfig = TParam::getValidConfig((v21 + 2472), ActiveConfigHandle);
  a5[1] = TFormatter::addWords(a1, a2, v11, (*(v21 + ValidConfig + 2624) & 1) == 0, a4);
  v24 = v10 + 0x6DB6DB6DB6DB6DB7 * v20;
  v25 = v11 == a3 && v24 == 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4);
  *a5 = v25;

  std::vector<TItnWordData>::resize(a4, v24);
}

void std::vector<TItnWordData>::resize(void *result, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<TItnWordData>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 112 * a2;
  }
}

void *TFormatter::segment(TFormatter *a1, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  std::vector<TItnStateData>::vector[abi:ne200100](v214, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4) + 1);
  *v214[0] = 0;
  v8 = *(a1 + 6);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v8 + 18008));
  v10 = *(v8 + TParam::getValidConfig((v8 + 18008), ActiveConfigHandle) + 18160);
  v11 = *(a1 + 13);
  v11[8] = v10;
  (*(*v11 + 16))(v11);
  v12 = *(a1 + 6);
  v13 = TParam::getActiveConfigHandle((v12 + 17760));
  v14 = *(v12 + TParam::getValidConfig((v12 + 17760), v13) + 17912);
  v15 = *(a1 + 13);
  v16 = *(v15 + 16);
  *(v15 + 24) = v14;
  (*(v16 + 16))();
  v17 = *(a1 + 6);
  v18 = TParam::getActiveConfigHandle((v17 + 2720));
  v19 = *(v17 + 8 * TParam::getValidConfig((v17 + 2720), v18) + 2872);
  v20 = *(a1 + 6);
  v21 = TParam::getActiveConfigHandle((v20 + 3256));
  v22 = *(v20 + 8 * TParam::getValidConfig((v20 + 3256), v21) + 3408);
  if (*(a1 + 18) && (v23 = *(a1 + 6), v24 = TParam::getActiveConfigHandle((v23 + 9264)), *(v23 + TParam::getValidConfig((v23 + 9264), v24) + 9416) == 1))
  {
    v25 = *(a1 + 6);
    v26 = TParam::getActiveConfigHandle((v25 + 3792));
    v186 = *(v25 + TParam::getValidConfig((v25 + 3792), v26) + 3944) ^ 1;
  }

  else
  {
    v186 = 0;
  }

  if (*(a1 + 19) && (v27 = *(a1 + 6), v28 = TParam::getActiveConfigHandle((v27 + 9512)), *(v27 + TParam::getValidConfig((v27 + 9512), v28) + 9664) == 1))
  {
    v29 = *(a1 + 6);
    v30 = TParam::getActiveConfigHandle((v29 + 3792));
    v31 = *(v29 + TParam::getValidConfig((v29 + 3792), v30) + 3944) ^ 1;
  }

  else
  {
    v31 = 0;
  }

  if (*(a1 + 20) && (v32 = *(a1 + 6), v33 = TParam::getActiveConfigHandle((v32 + 7640)), *(v32 + TParam::getValidConfig((v32 + 7640), v33) + 7792) == 1))
  {
    v34 = *(a1 + 6);
    v35 = TParam::getActiveConfigHandle((v34 + 3792));
    v189 = *(v34 + TParam::getValidConfig((v34 + 3792), v35) + 3944) ^ 1;
  }

  else
  {
    v189 = 0;
  }

  v211 = 0;
  v212 = 0;
  v213 = 0;
  v208 = 0;
  v209 = 0;
  v210 = 0;
  if (v186)
  {
    __p[0] = 0;
    __p[1] = 0;
    *v203 = 0;
    v36 = *a2;
    if (a2[1] != *a2)
    {
      v37 = 0;
      v38 = 16;
      do
      {
        v207[0] = *(v36 + v38);
        std::vector<TWord const*>::push_back[abi:ne200100](__p, v207);
        ++v37;
        v36 = *a2;
        v38 += 112;
      }

      while (v37 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
    }

    TCompounder::apply(*(a1 + 18), __p, a3, a4, 1, &v211);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else if (v31)
  {
    __p[0] = 0;
    __p[1] = 0;
    *v203 = 0;
    v39 = *a2;
    if (a2[1] != *a2)
    {
      v40 = 0;
      v41 = 16;
      do
      {
        v207[0] = *(v39 + v41);
        std::vector<TWord const*>::push_back[abi:ne200100](__p, v207);
        ++v40;
        v39 = *a2;
        v41 += 112;
      }

      while (v40 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
    }

    TRne::apply(*(a1 + 19), __p, a3, a4, 1, &v211);
  }

  if (v189)
  {
    __p[0] = 0;
    __p[1] = 0;
    *v203 = 0;
    v42 = *a2;
    if (a2[1] != *a2)
    {
      v43 = 0;
      v44 = 16;
      do
      {
        v207[0] = *(v42 + v44);
        std::vector<TWord const*>::push_back[abi:ne200100](__p, v207);
        ++v43;
        v42 = *a2;
        v44 += 112;
      }

      while (v43 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
    }

    TCliticsProc::apply(*(a1 + 20), __p, a3, a4, 1, &v208);
  }

  v192 = a1;
  v193 = a2;
  v45 = *(a1 + 6);
  v46 = TParam::getActiveConfigHandle((v45 + 19000));
  v194 = *(v45 + TParam::getValidConfig((v45 + 19000), v46) + 19152);
  v47 = a3;
  if (v194 == 1)
  {
    v48 = *a2;
    if (a2[1] != *a2)
    {
      v49 = 0;
      v50 = 0;
      do
      {
        loggableUnicode(**(v48 + v49 + 16), __p);
        if (v50 >= a4)
        {
          v52 = "RC";
        }

        else
        {
          v52 = "Utt";
        }

        if (v50 < a3)
        {
          v52 = "LC";
        }

        if (v203[7] >= 0)
        {
          v53 = __p;
        }

        else
        {
          v53 = __p[0];
        }

        tknPrintf("DebugSegmentation: Word %llu: Position=%s, Name=%s PauseDurationAfter=%llu CrossUttBreakBefore=%d\n FirstWordInBlock=%d\n", v51, v50, v52, v53, *(*v193 + v49 + 24), *(*v193 + v49 + 32), *(*v193 + v49 + 105));
        if ((v203[7] & 0x80000000) != 0)
        {
          operator delete(__p[0]);
        }

        ++v50;
        v48 = *v193;
        v49 += 112;
      }

      while (v50 < 0x6DB6DB6DB6DB6DB7 * ((v193[1] - *v193) >> 4));
    }
  }

  TAllocator::TAllocator(v207, 2048);
  v54 = v193;
  std::vector<std::vector<TItnGrammarStateData const*>>::vector[abi:ne200100](v206, 0x6DB6DB6DB6DB6DB7 * ((v193[1] - *v193) >> 4));
  v56 = v192;
  v57 = 0;
  v187 = 0;
  v190 = 0;
  v191 = v47;
  v58 = v19 + v22;
  while (v57 < 0x6DB6DB6DB6DB6DB7 * ((v54[1] - *v54) >> 4))
  {
    v59 = *v54 + 112 * v57;
    if (*(v59 + 33) == 1)
    {
      v60 = v57 + 1;
      v61 = v214[0];
      v62 = v214[0] + 72 * v57;
      v63 = *v62;
      v64 = (*(v59 + 24) + *(v62 + 8));
      if (v194)
      {
        tknPrintf("DebugSegmentation: EdgeType=Epsilon WordRange=[%llu,%llu) Penalty=0 CumulatedPenalty=%f CumulatedPauseAtTarget=%llu\n", v55, v57, v57 + 1, *&v63, v64);
        v61 = v214[0];
      }

      v65 = v61 + 72 * v60;
      if (v63 < *v65 || v63 == *v65 && v64 > *(v65 + 8))
      {
        __p[0] = *&v63;
        __p[1] = v64;
        *v203 = v57;
        *&v203[16] = 0uLL;
        std::wstring::basic_string[abi:ne200100]<0>(&v204, &dword_262888EC0);
        v66 = v214[0] + 72 * v60;
        v67 = *&v203[16];
        v68 = *__p;
        *(v66 + 16) = *v203;
        *(v66 + 32) = v67;
        *v66 = v68;
        if (*(v66 + 71) < 0)
        {
          operator delete(*(v66 + 48));
        }

        v69 = v204;
        *(v66 + 64) = v205;
        *(v66 + 48) = v69;
      }
    }

    if (((v186 | v31) & (v191 == v57)) == 1)
    {
      if (v190 >= (v212 - v211) >> 4)
      {
        v191 = v57;
      }

      else
      {
        v70 = &v211[16 * v190];
        v71 = *(v70 + 1);
        if (v71 != 1)
        {
          v72 = v71 + v57;
          v73 = v214[0] + 72 * v57;
          v74 = v19 + *v73;
          v75 = *(*v54 + 112 * v72 - 88) + *(v73 + 8);
          if (v194)
          {
            if (v186)
            {
              loggableUnicode(**v70, __p);
              v77 = v203[7] >= 0 ? __p : __p[0];
              tknPrintf("DebugSegmentation: EdgeType=Compounder WordRange=[%llu,%llu) Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu Replacement=%s\n", v76, v57, v72, *&v19, *&v74, v75, v77);
            }

            else
            {
              loggableUnicode(**v70, __p);
              v79 = v203[7] >= 0 ? __p : __p[0];
              tknPrintf("DebugSegmentation: EdgeType=RNE WordRange=[%llu,%llu) Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu Replacement=%s\n", v78, v57, v72, *&v19, *&v74, v75, v79);
            }

            if ((v203[7] & 0x80000000) != 0)
            {
              operator delete(__p[0]);
            }
          }

          v80 = v214[0] + 72 * v72;
          if (v74 < *v80 || v74 == *v80 && v75 > *(v80 + 8))
          {
            v81 = *&v211[16 * v190];
            *v80 = v74;
            *(v80 + 8) = v75;
            *(v80 + 16) = v57;
            *(v80 + 24) = 0;
            *(v80 + 32) = 0;
            *(v80 + 40) = v81;
            if (*(v80 + 71) < 0)
            {
              operator delete(*(v80 + 48));
            }

            *(v80 + 48) = 0;
            *(v80 + 56) = 0;
            *(v80 + 64) = 0;
          }
        }

        v82 = *&v211[16 * v190++ + 8] + v57;
        v191 = v82;
      }
    }

    if ((v189 & (v47 == v57)) == 1)
    {
      if (v187 >= (v209 - v208) >> 4)
      {
        v47 = v57;
      }

      else
      {
        v83 = &v208[16 * v187];
        v84 = *(v83 + 1);
        if (v84)
        {
          v85 = *v83;
          v86 = v84 + v57;
          v87 = v214[0] + 72 * v57;
          v88 = v19 + *v87;
          v89 = *(*v54 + 112 * v86 - 88) + *(v87 + 8);
          if (v194)
          {
            if (v85)
            {
              loggableUnicode(*v85, v200);
              v90 = v200;
              if (v201 < 0)
              {
                v90 = v200[0];
              }
            }

            else
            {
              v90 = &byte_262899963;
            }

            tknPrintf("DebugSegmentation: EdgeType=Clitic WordRange=[%llu,%llu) Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu\n Replacement=%s", v55, v57, v86, *&v19, *&v88, v89, v90);
            if (v85 && v201 < 0)
            {
              operator delete(v200[0]);
            }
          }

          v91 = v214[0] + 72 * v86;
          if (v88 < *v91 || v88 == *v91 && v89 > *(v91 + 8))
          {
            *v91 = v88;
            *(v91 + 8) = v89;
            *(v91 + 16) = v57;
            *(v91 + 24) = 0;
            *(v91 + 32) = 0;
            *(v91 + 40) = v85;
            if (*(v91 + 71) < 0)
            {
              operator delete(*(v91 + 48));
            }

            *(v91 + 48) = 0;
            *(v91 + 56) = 0;
            *(v91 + 64) = 0;
          }
        }

        v47 = *&v208[16 * v187++ + 8] + v57;
        v56 = v192;
      }
    }

    v92 = *(v56 + 6);
    v93 = TParam::getActiveConfigHandle((v92 + 3792));
    if ((*(v92 + TParam::getValidConfig((v92 + 3792), v93) + 3944) & 1) == 0)
    {
      v95 = *(v206[0] + 24 * v57);
      if (*(v206[0] + 24 * v57 + 8) != v95)
      {
        v96 = 0;
        do
        {
          v97 = *(v95 + 8 * v96);
          v98 = *(v97 + 8);
          v99 = v214[0];
          v100 = v214[0] + 72 * v57;
          v101 = *v97;
          v102 = *v100 + *v97;
          v103 = (*(*v54 + 112 * v98 - 88) + *(v100 + 8));
          if (v194)
          {
            v104 = *(v97 + 16);
            loggableUnicode(*(v97 + 32), __p);
            if (v203[7] >= 0)
            {
              v106 = __p;
            }

            else
            {
              v106 = __p[0];
            }

            tknPrintf("DebugSegmentation: EdgeType=Grammar WordRange=[%llu,%llu) LC=%llu Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu Replacement=%s\n", v105, v57, v98, v104, *&v101, *&v102, v103, v106);
            if ((v203[7] & 0x80000000) != 0)
            {
              operator delete(__p[0]);
            }

            v99 = v214[0];
          }

          v107 = v99 + 72 * v98;
          if (v102 < *v107 || v102 == *v107 && ((v108 = *(v107 + 8), v103 > v108) || v103 == v108 && *(*(*(v206[0] + 24 * v57) + 8 * v96) + 16) > *(v107 + 24)))
          {
            v109 = *(*(v206[0] + 24 * v57) + 8 * v96);
            v110 = *(v109 + 32);
            __p[0] = *&v102;
            __p[1] = v103;
            *v203 = v57;
            *&v203[8] = *(v109 + 16);
            *&v203[24] = 0;
            std::wstring::basic_string[abi:ne200100]<0>(&v204, v110);
            v111 = v214[0] + 72 * v98;
            v112 = *&v203[16];
            v113 = *__p;
            *(v111 + 16) = *v203;
            *(v111 + 32) = v112;
            *v111 = v113;
            if (*(v111 + 71) < 0)
            {
              operator delete(*(v111 + 48));
            }

            v114 = v204;
            *(v111 + 64) = v205;
            *(v111 + 48) = v114;
          }

          ++v96;
          v95 = *(v206[0] + 24 * v57);
        }

        while (v96 < (*(v206[0] + 24 * v57 + 8) - v95) >> 3);
      }

      v188 = v47;
      v115 = *(v192 + 6);
      v116 = TParam::getActiveConfigHandle((v115 + 1872));
      ValidConfig = TParam::getValidConfig((v115 + 1872), v116);
      v118 = *v54;
      if (0x6DB6DB6DB6DB6DB7 * ((v54[1] - *v54) >> 4) >= v57 + *(v115 + 4 * ValidConfig + 2032))
      {
        v119 = v57 + *(v115 + 4 * ValidConfig + 2032);
      }

      else
      {
        v119 = 0x6DB6DB6DB6DB6DB7 * ((v54[1] - *v54) >> 4);
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      v120 = v118 + 112 * v57;
      v121 = *(v120 + 80);
      v122 = *(v120 + 48);
      if (v121 != -1)
      {
        v122 = v121;
      }

      v123 = v122 - 7;
      if (v123 > 2)
      {
        v124 = 136;
      }

      else
      {
        v124 = qword_262888F78[v123];
      }

      v125 = *(*(v192 + 6) + v124);
      TGrammarManager::search(*(v192 + 13), v54, v57, v119, v125, &v197);
      if (*(v192 + 14))
      {
        v126 = *(v192 + 6);
        v127 = TParam::getActiveConfigHandle((v126 + 19248));
        if (*(v126 + TParam::getValidConfig((v126 + 19248), v127) + 19400) == 1)
        {
          __p[0] = 0;
          __p[1] = 0;
          *v203 = 0;
          TGrammarManager2::search(*(v192 + 14), v54, v57, v119, v125, __p);
          v128 = __p[0];
          if (__p[1] != __p[0])
          {
            v129 = 0;
            v130 = 8;
            do
            {
              loggableUnicode(*&v128[v130], v195);
              if (v196 >= 0)
              {
                v132 = v195;
              }

              else
              {
                v132 = v195[0];
              }

              tknPrintf("Adaptation Result[%llx]: %s\n", v131, v129, v132);
              if (v196 < 0)
              {
                operator delete(v195[0]);
              }

              ++v129;
              v128 = __p[0];
              v130 += 56;
            }

            while (v129 < 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 3));
          }

          TGrammarManager2::clearResult(*(v192 + 14));
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }
      }

      v133 = v197;
      if (v198 != v197)
      {
        v134 = 0;
        v135 = 40;
        do
        {
          v136 = &v133[v135];
          if (*&v133[v135 - 16])
          {
            v137 = wcslen(*(v136 - 4));
            if ((v137 + 1) >> 62)
            {
              v138 = -1;
            }

            else
            {
              v138 = 4 * (v137 + 1);
            }

            v139 = TAllocator::allocate(v207, v138);
            wcscpy(v139, *(v197 + v135 - 32));
            v140 = *(v197 + v135 - 16);
            v141 = v206[0];
            v142 = TAllocator::allocate(v207, 40);
            v143 = v141 + 24 * v57 + 24 * v140;
            v144 = *(v197 + v135 - 16);
            v145 = *(v197 + v135 - 8);
            v146 = *(v197 + v135 - 24) + v57 - v145;
            *v142 = v19 + *(v197 + v135);
            *(v142 + 1) = v146;
            *(v142 + 2) = v144;
            *(v142 + 3) = v145;
            *(v142 + 4) = v139;
            v148 = *(v143 + 8);
            v147 = *(v143 + 16);
            if (v148 >= v147)
            {
              v165 = (v148 - *v143) >> 3;
              if ((v165 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v166 = v147 - *v143;
              v167 = v166 >> 2;
              if (v166 >> 2 <= (v165 + 1))
              {
                v167 = v165 + 1;
              }

              if (v166 >= 0x7FFFFFFFFFFFFFF8)
              {
                v168 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v168 = v167;
              }

              if (v168)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(v143, v168);
              }

              v169 = (8 * v165);
              *v169 = v142;
              v149 = 8 * v165 + 8;
              v170 = *(v143 + 8) - *v143;
              v171 = v169 - v170;
              memcpy(v169 - v170, *v143, v170);
              v172 = *v143;
              *v143 = v171;
              *(v143 + 8) = v149;
              *(v143 + 16) = 0;
              if (v172)
              {
                operator delete(v172);
              }
            }

            else
            {
              *v148 = v142;
              v149 = (v148 + 1);
            }

            *(v143 + 8) = v149;
            v54 = v193;
          }

          else
          {
            v150 = *(v136 - 3) + v57 - *(v136 - 1);
            v151 = v214[0];
            v152 = v214[0] + 72 * v57;
            v153 = *v136;
            v154 = v19 + *v152 + *v136;
            v155 = (*(*v54 + 112 * v150 - 88) + *(v152 + 8));
            if (v194)
            {
              loggableUnicode(*&v133[v135 - 32], __p);
              if (v203[7] >= 0)
              {
                v157 = __p;
              }

              else
              {
                v157 = __p[0];
              }

              tknPrintf("DebugSegmentation: EdgeType=Grammar WordRange=[%llu,%llu) Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu Replacement=%s\n", v156, v57, v150, v19 + v153, *&v154, v155, v157);
              if ((v203[7] & 0x80000000) != 0)
              {
                operator delete(__p[0]);
              }

              v151 = v214[0];
            }

            v158 = v151 + 72 * v150;
            if (v154 < *v158 || v154 == *v158 && v155 > *(v158 + 8))
            {
              v159 = *(v197 + v135 - 32);
              v160 = *(v197 + v135 - 8);
              __p[0] = *&v154;
              __p[1] = v155;
              *v203 = v57;
              *&v203[16] = v160;
              std::wstring::basic_string[abi:ne200100]<0>(&v204, v159);
              v161 = v214[0] + 72 * v150;
              v162 = *&v203[16];
              v163 = *__p;
              *(v161 + 16) = *v203;
              *(v161 + 32) = v162;
              *v161 = v163;
              if (*(v161 + 71) < 0)
              {
                operator delete(*(v161 + 48));
              }

              v164 = v204;
              *(v161 + 64) = v205;
              *(v161 + 48) = v164;
            }
          }

          ++v134;
          v133 = v197;
          v135 += 56;
        }

        while (v134 < 0x6DB6DB6DB6DB6DB7 * ((v198 - v197) >> 3));
      }

      TGrammarManager2::clearResult(*(v192 + 13));
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      v47 = v188;
    }

    v173 = v214[0];
    v174 = v214[0] + 72 * v57;
    v175 = v58 + *v174;
    v176 = *(*v54 + 112 * v57 + 24) + *(v174 + 8);
    if (v194)
    {
      tknPrintf("DebugSegmentation: EdgeType=Default WordRange=[%llu,%llu) Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu\n", v94, v57, v57 + 1, *&v58, *&v175, v176);
      v173 = v214[0];
    }

    v177 = v173 + 72 * (v57 + 1);
    if (v175 < *v177 || v175 == *v177 && v176 > *(v177 + 8))
    {
      v178 = *(*v54 + 112 * v57 + 16);
      *v177 = v175;
      *(v177 + 8) = v176;
      *(v177 + 16) = v57;
      *(v177 + 24) = 0;
      *(v177 + 32) = 0;
      *(v177 + 40) = v178;
      if (*(v177 + 71) < 0)
      {
        operator delete(*(v177 + 48));
      }

      *(v177 + 48) = 0;
      *(v177 + 56) = 0;
      *(v177 + 64) = 0;
    }

    v56 = v192;
    v179 = *(v192 + 13);
    v180 = *(v179 + 16);
    *(v179 + 24) = 0;
    (*(v180 + 16))();
    v181 = *(v192 + 13);
    v181[8] = 0;
    (*(*v181 + 16))(v181);
    ++v57;
  }

  v182 = v214[0] + 72 * (0x8E38E38E38E38E39 * ((v214[1] - v214[0]) >> 3) - 1);
  if (*(v182 + 16) != -1)
  {
    __p[0] = 0;
    v197 = 0;
    v183 = *(v182 + 40);
    if (v183)
    {
      TFormatter::makeBlockForWord(v56, v183);
    }

    v184 = (v182 + 48);
    if (*(v182 + 71) < 0)
    {
      v184 = *v184;
    }

    TFormatter::splitPattern(v56, v184, __p, &v197);
  }

  __p[0] = v206;
  std::vector<std::vector<TItnGrammarStateData const*>>::__destroy_vector::operator()[abi:ne200100](__p);
  TAllocator::clear(v207);
  if (v208)
  {
    v209 = v208;
    operator delete(v208);
  }

  if (v211)
  {
    v212 = v211;
    operator delete(v211);
  }

  __p[0] = v214;
  std::vector<TItnStateData>::__destroy_vector::operator()[abi:ne200100](__p);
  return 0;
}

void sub_2626EE8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  v47 = *(v45 - 192);
  if (v47)
  {
    *(v45 - 184) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 168);
  if (v48)
  {
    *(v45 - 160) = v48;
    operator delete(v48);
  }

  __p = (v45 - 144);
  std::vector<TItnStateData>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

std::wstring *TFormatter::applyControls(uint64_t a1, TBlock *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7)
{
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<TItnControl>::__init_with_size[abi:ne200100]<TItnControl*,TItnControl*>(&v133, *a6, *(a6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3));
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<TItnControl>::__init_with_size[abi:ne200100]<TItnControl*,TItnControl*>(&v130, v133, v134, 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 3));
  v127 = 0;
  v128 = 0;
  v129 = 0;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  v126[2] = v10;
  v126[3] = v10;
  v126[0] = v10;
  v126[1] = v10;
  if (!a2)
  {
    v99 = 0;
    goto LABEL_190;
  }

  v11 = 0;
  v12 = a2;
  v13 = -1;
  v102 = a2;
  v104 = a3;
  do
  {
    if (v11)
    {
      goto LABEL_6;
    }

    if (*(v12 + 1) == a5)
    {
      std::vector<TItnControl>::__assign_with_size[abi:ne200100]<TItnControl*,TItnControl*>(&v127, v133, v134, 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 3));
LABEL_6:
      v14 = 1;
      goto LABEL_8;
    }

    v14 = 0;
LABEL_8:
    v15 = *(v12 + 71);
    if (v15 < 0)
    {
      v15 = *(v12 + 7);
    }

    v106 = v14;
    if (v15 && (*v12 & 1) == 0)
    {
      std::vector<TItnControl>::__assign_with_size[abi:ne200100]<TItnControl*,TItnControl*>(&v130, v133, v134, 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 3));
    }

    v16 = *(v12 + 1);
    v123 = 0;
    __dst = 0;
    v125 = 0;
    std::vector<TItnControl>::__init_with_size[abi:ne200100]<TItnControl*,TItnControl*>(&v123, v133, v134, 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 3));
    if (v16 == -1)
    {
      goto LABEL_38;
    }

    v17 = *a3;
    if (*(*a3 + 112 * v16 + 32) == 1)
    {
      v18 = v123;
      if (__dst == v123)
      {
        v21 = 0;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        do
        {
          if (getItnControlCategory(*&v18[v19]) != 1)
          {
            v22 = v123 + 24 * v21++;
            v23 = *(v123 + v19);
            *(v22 + 2) = *(v123 + v19 + 16);
            *v22 = v23;
          }

          ++v20;
          v18 = v123;
          v19 += 24;
        }

        while (v20 < 0xAAAAAAAAAAAAAAABLL * ((__dst - v123) >> 3));
      }

      std::vector<TItnControl>::resize(&v123, v21);
      a3 = v104;
      v17 = *v104;
    }

    v24 = v17 + 112 * v16;
    if (*(v24 + 104) != 1)
    {
LABEL_38:
      v16 = v13;
    }

    else
    {
      v25 = 0;
      v26 = v17 + 112 * v13 + 40;
      if (v13 == -1)
      {
        v27 = v126;
      }

      else
      {
        v27 = v26;
      }

      *&v116 = -1;
      *(&v116 + 1) = -1;
      *&v117 = 2;
      do
      {
        v28 = *(v27 + v25);
        v29 = *(v24 + 40 + v25);
        if (v28 != v29)
        {
          *&v116 = *(v24 + 40 + v25);
          *(&v116 + 1) = 1;
          if (v29 == -1)
          {
            *&v116 = v28;
            *(&v116 + 1) = 2;
          }

          std::vector<TItnControl>::push_back[abi:ne200100](&v123, &v116);
        }

        v25 += 8;
      }

      while (v25 != 32);
      v30 = 0;
      *(&v116 + 1) = 3;
      v31 = v24 + 72;
      a3 = v104;
      do
      {
        if (*(v31 + v30) != -1)
        {
          *&v116 = *(v31 + v30);
          std::vector<TItnControl>::push_back[abi:ne200100](&v123, &v116);
        }

        v30 += 8;
      }

      while (v30 != 32);
    }

    collectControls(&v123, v12, 2, 0);
    collectControls(&v123, v12, 1, 0);
    collectControls(&v123, v12, 3, -1);
    collectControls(&v123, v12, 6, 1);
    collectControls(&v123, v12, 5, 0);
    v32 = *(v12 + 18);
    if (v32)
    {
      LOBYTE(v33) = 0;
      while (1)
      {
        v34 = *(v32 + 8);
        if (v34 == -1)
        {
          v35 = 0;
        }

        else
        {
          v35 = *(*a3 + 112 * v34 + 32);
        }

        collectControls(&v123, v32, 6, -1);
        collectControls(&v123, v32, 4, -1);
        v33 = v35 | v33 & 1;
        if (!v33)
        {
          collectControls(&v123, v32, 4, 1);
        }

        v36 = *(v32 + 71);
        if (v36 < 0)
        {
          v36 = *(v32 + 56);
        }

        if (v36)
        {
          break;
        }

        collectControls(&v123, v32, 2, -1);
        v32 = *(v32 + 144);
        if (!v32)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_50:
      std::vector<TItnControl>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TItnControl const*>,std::__wrap_iter<TItnControl const*>>(&v123, __dst, *a7, a7[1], 0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3));
    }

    v120 = 0;
    v121 = 0;
    v122 = 0;
    v37 = (v12 + 48);
    if (*(v12 + 71) < 0)
    {
      v37 = *(v12 + 6);
    }

    v38 = *v37;
    v107 = v16;
    if (*v37)
    {
      v39 = v37 + 1;
      v40 = 1;
      while (1)
      {
        {
          operator new();
        }

        if (v38 > 159)
        {
          if (v38 >= 12288)
          {
            if (v38 == 12288)
            {
              goto LABEL_68;
            }

            v41 = 65279;
          }

          else
          {
            if (v38 == 160)
            {
              goto LABEL_68;
            }

            v41 = 8203;
          }

          if (v38 != v41)
          {
            goto LABEL_66;
          }
        }

        else if (v38 > 0x20 || ((1 << v38) & 0x100002600) == 0)
        {
LABEL_66:
          v42 = *(v39 - 1);
          {
            operator new();
          }

          v40 = 0;
          v43 = 0;
          v38 = 0;
          if (!TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v42))
          {
            goto LABEL_75;
          }
        }

LABEL_68:
        v44 = *v39++;
        v38 = v44;
        if (!v44)
        {
          v38 = 1;
          v43 = v40;
          goto LABEL_75;
        }
      }
    }

    v43 = 0;
LABEL_75:
    std::vector<TItnControl>::resize(&v120, 0);
    std::vector<TItnControl>::resize(&v133, 0);
    v45 = v123;
    v46 = __dst;
    if (__dst != v123)
    {
      v47 = 0;
      v48 = 0;
      while (1)
      {
        v49 = &v45[24 * v48];
        v50 = *(v49 + 1);
        v51 = &v120;
        if (v50 <= 2)
        {
          if (v50 == 1)
          {
            if (v46 == v45)
            {
LABEL_99:
              std::vector<TItnControl>::push_back[abi:ne200100](&v133, &v45[24 * v48]);
              v45 = v123;
            }

            else
            {
              v56 = 0;
              v57 = 0;
              while (1)
              {
                if ((*&v45[v56 + 8] - 1) <= 1)
                {
                  ItnControlCategory = getItnControlCategory(*&v45[v56]);
                  v59 = getItnControlCategory(*(v123 + 3 * v48));
                  v45 = v123;
                  if (ItnControlCategory == v59)
                  {
                    v60 = *(v123 + v56 + 16);
                    v61 = *(v123 + 3 * v48 + 2);
                    if (v60 > v61 || v57 > v48 && v60 == v61)
                    {
                      break;
                    }
                  }
                }

                ++v57;
                v56 += 24;
                if (v57 >= 0xAAAAAAAAAAAAAAABLL * ((__dst - v45) >> 3))
                {
                  goto LABEL_99;
                }
              }
            }

            v16 = v107;
            if (__dst != v45)
            {
              v62 = 0xAAAAAAAAAAAAAAABLL * ((__dst - v45) >> 3);
              if (v62 <= 1)
              {
                v62 = 1;
              }

              v63 = v45 + 8;
              while (*v63 != 5 || *(v63 - 1) != *&v45[24 * v48])
              {
                v63 += 3;
                if (!--v62)
                {
                  goto LABEL_107;
                }
              }

              goto LABEL_116;
            }

LABEL_107:
            v49 = &v45[24 * v48];
            v51 = &v120;
          }

          else if (v50 != 2)
          {
            goto LABEL_116;
          }

          goto LABEL_115;
        }

        if (v50 == 4)
        {
          goto LABEL_115;
        }

        if (v50 == 3)
        {
          break;
        }

LABEL_116:
        ++v48;
        v45 = v123;
        v46 = __dst;
        v47 += 24;
        if (v48 >= 0xAAAAAAAAAAAAAAABLL * ((__dst - v123) >> 3))
        {
          goto LABEL_135;
        }
      }

      v52 = v47;
      v53 = v48;
      if (v48 < 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3))
      {
        while (1)
        {
          if (*&v45[v52 + 8] == 2)
          {
            v54 = getItnControlCategory(*&v45[v52]);
            v55 = getItnControlCategory(*(v123 + 3 * v48));
            v45 = v123;
            if (v54 == v55 && *(v123 + v52 + 16) == *(v123 + 3 * v48 + 2))
            {
              break;
            }
          }

          ++v53;
          v52 += 24;
          if (v53 >= 0xAAAAAAAAAAAAAAABLL * ((__dst - v45) >> 3))
          {
            goto LABEL_88;
          }
        }

LABEL_118:
        if (__dst == v45)
        {
LABEL_125:
          std::vector<TItnControl>::push_back[abi:ne200100](&v120, &v45[24 * v48]);
          v45 = v123;
        }

        else
        {
          v66 = 0;
          v67 = 0;
          while (1)
          {
            if (*&v45[v66 + 8] == 1)
            {
              v68 = getItnControlCategory(*&v45[v66]);
              v69 = getItnControlCategory(*(v123 + 3 * v48));
              v45 = v123;
              if (v68 == v69 && *(v123 + v66 + 16) == 3 && *(v123 + 3 * v48 + 2) == 2)
              {
                break;
              }
            }

            ++v67;
            v66 += 24;
            if (v67 >= 0xAAAAAAAAAAAAAAABLL * ((__dst - v45) >> 3))
            {
              goto LABEL_125;
            }
          }
        }

        v16 = v107;
        if (__dst == v45)
        {
          goto LABEL_116;
        }

        v70 = 0xAAAAAAAAAAAAAAABLL * ((__dst - v45) >> 3);
        v49 = &v45[24 * v48];
        if (v70 <= 1)
        {
          v70 = 1;
        }

        v71 = v45 + 8;
        while (*v71 != 6 || *(v71 - 1) != *v49)
        {
          v71 += 3;
          if (!--v70)
          {
            goto LABEL_116;
          }
        }

        v51 = &v133;
LABEL_115:
        std::vector<TItnControl>::push_back[abi:ne200100](v51, v49);
        goto LABEL_116;
      }

LABEL_88:
      if ((*(v12 + 71) & 0x8000000000000000) != 0)
      {
        if (!*(v12 + 7))
        {
LABEL_114:
          v49 = &v45[24 * v48];
          v51 = &v133;
          v16 = v107;
          goto LABEL_115;
        }
      }

      else if (!*(v12 + 71))
      {
        goto LABEL_114;
      }

      if ((v43 & 1) == 0 || (v64 = getItnControlCategory(*&v45[24 * v48]), v45 = v123, v64 == 2))
      {
        if (!v38)
        {
          goto LABEL_118;
        }

        v65 = getItnControlCategory(*&v45[24 * v48]);
        v45 = v123;
        if (v65 || *(v123 + 3 * v48 + 2) != 1)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_114;
    }

LABEL_135:
    if (*v12 == 1)
    {
      if (*(v12 + 2) == -1)
      {
        v72 = a1;
      }

      else
      {
        v72 = a1;
        if (*(v12 + 1) != -1)
        {
          *&v73 = -1;
          *(&v73 + 1) = -1;
          v118 = v73;
          v119 = v73;
          v116 = v73;
          v117 = v73;
          TItnControlState::set(&v116, &v120, 1, 1, 1, 1uLL);
          v74 = *(&v118 + 1);
          if (*(&v118 + 1) == -1)
          {
            v74 = *(&v116 + 1);
          }

          v75 = v74 - 7;
          if (v75 > 2)
          {
            v76 = 136;
          }

          else
          {
            v76 = qword_262888F78[v75];
          }

          v81 = *v104 + 112 * *(v12 + 1);
          v82 = *(v81 + 80);
          v83 = *(v81 + 48);
          if (v82 != -1)
          {
            v83 = v82;
          }

          v84 = v83 - 7;
          if (v84 > 2)
          {
            v85 = 136;
          }

          else
          {
            v85 = qword_262888F78[v84];
          }

          v86 = *(a1 + 48);
          v87 = *(v86 + v76);
          if (*(v86 + v85) != v87)
          {
            v114 = 0;
            v115 = 0;
            v113 = 0;
            TGrammarManager::search(*(a1 + 104), v104, *(v12 + 1) - *(v12 + 3), *(v12 + 4) + *(v12 + 2), v87, &v113);
            if (*(a1 + 112))
            {
              v88 = *(a1 + 48);
              ActiveConfigHandle = TParam::getActiveConfigHandle((v88 + 19248));
              if (*(v88 + TParam::getValidConfig((v88 + 19248), ActiveConfigHandle) + 19400) == 1)
              {
                v111 = 0;
                v112 = 0;
                v110 = 0;
                TGrammarManager2::search(*(a1 + 112), v104, *(v12 + 1) - *(v12 + 3), *(v12 + 4) + *(v12 + 2), v87, &v110);
                if (v110 != v111)
                {
                  v90 = *(v110 + 3);
                  if (v90 == *(v12 + 3))
                  {
                    v91 = *(v110 + 4);
                    if (v91 == *(v12 + 4) && *(v110 + 2) - (v91 + v90) == *(v12 + 2) - *(v12 + 1))
                    {
                      loggableUnicode(*(v110 + 1), __p);
                      v93 = __p;
                      if (v109 < 0)
                      {
                        v93 = __p[0];
                      }

                      tknPrintf("Adaptation Result: %s\n", v92, v93);
                      if (v109 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }
                  }
                }

                TGrammarManager2::clearResult(*(a1 + 112));
                if (v110)
                {
                  v111 = v110;
                  operator delete(v110);
                }
              }
            }

            if (v114 != v113)
            {
              v94 = 0;
              v95 = 0;
              do
              {
                v96 = *(v113 + v94 + 24);
                v97 = *(v113 + v94 + 32);
                if (*(v113 + v94 + 16) - (v96 + v97) == *(v12 + 2) - *(v12 + 1) && v96 == *(v12 + 3) && v97 == *(v12 + 4))
                {
                  v110 = 0;
                  __p[0] = 0;
                  TFormatter::splitPattern(a1, *(v113 + v94 + 8), &v110, __p);
                }

                ++v95;
                v94 += 56;
              }

              while (v95 < 0x6DB6DB6DB6DB6DB7 * ((v114 - v113) >> 3));
              v72 = a1;
            }

            TGrammarManager2::clearResult(v72[13]);
            if (v113)
            {
              v114 = v113;
              operator delete(v113);
            }
          }
        }
      }

      *&v116 = 0;
      v113 = 0;
      v98 = (v12 + 48);
      if (*(v12 + 71) < 0)
      {
        v98 = *(v12 + 6);
      }

      TFormatter::splitPattern(v72, v98, &v116, &v113);
    }

    v77 = *(v12 + 71);
    if (v77 < 0)
    {
      v77 = *(v12 + 7);
    }

    if (v77)
    {
      TBlock::applyControls(v12, &v120, *(a1 + 48), *(*(a1 + 32) + 336));
      *&v78 = -1;
      *(&v78 + 1) = -1;
      v118 = v78;
      v119 = v78;
      v116 = v78;
      v117 = v78;
      TItnControlState::set(&v116, &v123, 0, 1, 1, 2uLL);
      v79 = v117;
      *(v12 + 10) = v116;
      *(v12 + 11) = v79;
      v80 = v119;
      *(v12 + 12) = v118;
      *(v12 + 13) = v80;
    }

    collectControls(&v133, v12, 3, 1);
    v12 = *(v12 + 18);
    v13 = v16;
    a3 = v104;
    if (v120)
    {
      v121 = v120;
      operator delete(v120);
    }

    if (v123)
    {
      __dst = v123;
      operator delete(v123);
    }

    v11 = v106;
  }

  while (v12);
  if (v106)
  {
    v99 = v102;
    if (&v127 != a7)
    {
      std::vector<TItnControl>::__assign_with_size[abi:ne200100]<TItnControl*,TItnControl*>(a7, v127, v128, 0xAAAAAAAAAAAAAAABLL * ((v128 - v127) >> 3));
    }

    goto LABEL_192;
  }

  v99 = v102;
LABEL_190:
  if (&v133 != a7)
  {
    std::vector<TItnControl>::__assign_with_size[abi:ne200100]<TItnControl*,TItnControl*>(a7, v133, v134, 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 3));
  }

LABEL_192:
  if (v99)
  {
    data = v99;
    do
    {
      TBlock::adjustResult(data);
      data = data[6].__r_.__value_.__l.__data_;
    }

    while (data);
  }

  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  return v99;
}

void sub_2626EF9B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  MEMORY[0x26672B1B0](v44, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  v47 = *(v45 - 168);
  if (v47)
  {
    *(v45 - 160) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 144);
  if (v48)
  {
    *(v45 - 136) = v48;
    operator delete(v48);
  }

  v49 = *(v45 - 120);
  if (v49)
  {
    *(v45 - 112) = v49;
    operator delete(v49);
  }

  _Unwind_Resume(a1);
}

void collectControls(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (a2 + 48);
  if (*(a2 + 71) < 0)
  {
    v7 = *v7;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = (v7 + 1);
    while (1)
    {
      {
        operator new();
      }

      v10 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
      if (v8 >= 48 && (v8 < 0x3A || v8 >= 0x660 && TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v8) != -1))
      {
        break;
      }

      if (TLocaleInfo::isAlpha(v10, v8))
      {
        break;
      }

      v11 = *v9++;
      v8 = v11;
      if (!v11)
      {
        v12 = 1;
        goto LABEL_16;
      }
    }
  }

  v12 = 0;
LABEL_16:
  if (a4 != 1 && *v7)
  {
    *(&v29 + 1) = a3;
    v30 = 1;
    *&v29 = 1;
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_47;
      }

      v13 = *v7;
      {
        operator new();
      }

      if (v13 <= 159)
      {
        if (v13 > 0x20 || ((1 << v13) & 0x100002600) == 0)
        {
          goto LABEL_47;
        }

LABEL_46:
        std::vector<TItnControl>::push_back[abi:ne200100](a1, &v29);
        goto LABEL_47;
      }

      if (v13 >= 12288)
      {
        if (v13 == 12288)
        {
          goto LABEL_46;
        }

        v14 = 65279;
      }

      else
      {
        if (v13 == 160)
        {
          goto LABEL_46;
        }

        v14 = 8203;
      }

      if (v13 != v14)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v15 = v7[wcslen(v7) - 1];
    {
      operator new();
    }

    if (v15 > 159)
    {
      if (v15 >= 12288)
      {
        if (v15 == 65279 || v15 == 12288)
        {
          goto LABEL_46;
        }
      }

      else if (v15 == 160 || v15 == 8203)
      {
        goto LABEL_46;
      }
    }

    else if (v15 <= 0x20 && ((1 << v15) & 0x100002600) != 0)
    {
      goto LABEL_46;
    }
  }

LABEL_47:
  v17 = *(a2 + 40);
  if (v17)
  {
    v18 = *(v17 + 152);
    if (*(v17 + 160) != v18)
    {
      v19 = 0;
      v20 = 0;
      if (a3 != 6 || a4 != -1)
      {
        v12 = 0;
      }

      while (1)
      {
        v22 = (v18 + v19);
        v23 = *(v18 + v19 + 8);
        if (v23 != a3)
        {
          break;
        }

        if (a4 != -1)
        {
          if (a4 && (a4 != 1 || getItnControlCategory(*v22) == 2))
          {
            goto LABEL_71;
          }

LABEL_69:
          v27 = a1;
          v26 = v22;
LABEL_70:
          std::vector<TItnControl>::push_back[abi:ne200100](v27, v26);
          goto LABEL_71;
        }

        if (getItnControlCategory(*v22) == 2)
        {
          goto LABEL_69;
        }

LABEL_71:
        ++v20;
        v18 = *(v17 + 152);
        v19 += 24;
        if (v20 >= 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 160) - v18) >> 3))
        {
          return;
        }
      }

      if (*v22 == 1)
      {
        v24 = v12;
      }

      else
      {
        v24 = 0;
      }

      if (v23 != 4 || v24 == 0)
      {
        goto LABEL_71;
      }

      *(&v29 + 1) = 6;
      v30 = 1;
      *&v29 = 3;
      v26 = &v29;
      v27 = a1;
      goto LABEL_70;
    }
  }
}

void sub_2626EFEB8(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TFormatter::countRightContextSpaces(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = a2;
  v6 = 0;
  while (1)
  {
    v7 = TResultManager::getResult(*(a1 + 128), *v4);
    v8 = *(v7 + 104);
    v9 = *(v7 + 112);
    v10 = v9 - v8;
    if (v9 != v8)
    {
      break;
    }

LABEL_8:
    if (++v4 == a3)
    {
      return v6;
    }
  }

  v11 = 0;
  v12 = v10 >> 3;
  while (1)
  {
    v13 = *(v8 + 8 * v11);
    if (v13)
    {
      if (*(v8 + 8 * v11 + 8))
      {
        return v6;
      }
    }

    v6 += v13;
    v11 += 2;
    if (v11 >= v12)
    {
      goto LABEL_8;
    }
  }
}

uint64_t TFormatter::countLeftContextSpaces(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = 0;
  *a5 = 0;
  if (!a3)
  {
    return result;
  }

  v6 = a3;
  v7 = a2;
  if (a3 < a2)
  {
LABEL_3:
    v8 = 0;
    goto LABEL_20;
  }

  v9 = a4;
  v10 = result;
  while (1)
  {
    while (1)
    {
      while (!v9)
      {
        --v6;
        v9 = -1;
        if (v6 < v7)
        {
          goto LABEL_3;
        }
      }

      result = TResultManager::getResult(*(v10 + 128), *v6);
      if (v9 != -1)
      {
        break;
      }

      v11 = *(result + 104);
      v12 = *(result + 112) - v11;
      if (v12)
      {
        v9 = v12 >> 3;
        goto LABEL_10;
      }

      v9 = 0;
    }

    v11 = *(result + 104);
LABEL_10:
    v13 = v11 + 8 * v9;
    if (*(v13 - 8))
    {
      if (*(v13 - 16))
      {
        break;
      }
    }

    v9 -= 2;
    *a5 += *(v11 + 8 * v9);
    *(a5 + 24) |= *result;
  }

  result = TResultManager::getResult(*(v10 + 128), *v6);
  v14 = *(result + 112) - *(result + 104);
  v15 = v9 == v14 >> 3;
  if (v9 == v14 >> 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v9;
  }

  v7 = &v6[v15];
LABEL_20:
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  return result;
}

void TFormatter::formatInternal(TFormatter *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, char **a6, char a7, int a8, uint64_t *a9, uint64_t **a10)
{
  v34 = *MEMORY[0x277D85DE8];
  *a10 = a3;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  TFormatter::addLeftContext(a1, a2, a3, &v31, v30);
  v13 = v31;
  v14 = v32;
  std::vector<TItnWordData>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TItnWordData const*>,std::__wrap_iter<TItnWordData const*>>(&v31, v32, *a6, a6[1], 0x6DB6DB6DB6DB6DB7 * ((a6[1] - *a6) >> 4));
  v16 = v31;
  v15 = v32;
  TFormatter::addRightContext(a1, a4, a5, &v31, &v29);
  v17 = v14 - v13;
  v18 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 4);
  v19 = (v15 - v16);
  v20 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 4);
  v21 = v31;
  if (v20 != v18)
  {
    if (a8 && !v30[1])
    {
      v24 = *(a1 + 6);
      ActiveConfigHandle = TParam::getActiveConfigHandle((v24 + 3792));
      v22 = *(v24 + TParam::getValidConfig((v24 + 3792), ActiveConfigHandle) + 3944);
      v23 = v31;
    }

    else
    {
      v22 = 1;
      v23 = v31;
    }

    *(v21 + v17 + 32) = v22 & 1;
    v21 = v23;
  }

  if ((v32 - v21) != v19)
  {
    v19[v21 + 32] = 1;
  }

  v26 = TFormatter::segment(a1, &v31, v18, v20);
  TFormatter::assignWordRules(a1, v26, &v31);
}

void sub_2626F08C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  v34 = *(v32 - 144);
  if (v34)
  {
    *(v32 - 136) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TItnControl>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControl>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t freeBlocks(uint64_t result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *(v1 + 144);
      v3 = *(v1 + 120);
      if (v3)
      {
        *(v1 + 128) = v3;
        operator delete(v3);
      }

      if (*(v1 + 119) < 0)
      {
        operator delete(*(v1 + 96));
      }

      if (*(v1 + 95) < 0)
      {
        operator delete(*(v1 + 72));
      }

      if (*(v1 + 71) < 0)
      {
        operator delete(*(v1 + 48));
      }

      result = MEMORY[0x26672B1B0](v1, 0x10F2C405D5B575ELL);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

void TFormatter::wordSequenceToResult(TFormatter *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, char a8, uint64_t **a9, uint64_t **a10)
{
  memset(__p, 0, sizeof(__p));
  if (*a6 != a6[1])
  {
    TFormatter::addWords(a1, a6, a7, __p);
    TFormatter::makeUttState(a1, a2, a5 - a2, a3 - a2, a4 - a3, a8, v22);
    v16 = __p[0];
    v17 = v22[1];
    *(__p[0] + 40) = v22[0];
    *(v16 + 56) = v17;
    v18 = v22[3];
    *(v16 + 72) = v22[2];
    *(v16 + 88) = v18;
    v16[104] = 1;
  }

  *&v22[0] = -1;
  *a10 = a4;
  v19 = *(a1 + 6);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v19 + 2224));
  ValidConfig = TParam::getValidConfig((v19 + 2224), ActiveConfigHandle);
  TFormatter::formatInternal(a1, a2, a3, a4, a5, __p, a8, *(v19 + ValidConfig + 2376), v22, a9);
}

void sub_2626F0C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TFormatter::generateResultAlternatives(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v2;
  TBuffer<TPItnResultHandle_fake **>::resize(v3, 0);
  if (v10)
  {
    v16 = *v10;
    if (v16 == v10[1])
    {
      return;
    }
  }

  else
  {
    v16 = 0;
  }

  TResultRelativePosition::TResultRelativePosition(&v239, *(v15 + 128), v14, v12, v16);
  if (v240)
  {
    return;
  }

  v17 = v10 ? v10[1] : -1;
  TResultRelativePosition::TResultRelativePosition(&v236, *(v15 + 128), v14, v12, v17);
  if (v238)
  {
    return;
  }

  v190 = v8;
  v18 = *(v15 + 48);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v18 + 9760));
  v20 = *(v18 + 4 * TParam::getValidConfig((v18 + 9760), ActiveConfigHandle) + 9920);
  v233 = 0;
  v234 = 0;
  v235 = 0;
  if (!v20)
  {
    return;
  }

  v197 = v6;
  v21 = 0;
  v22 = 1;
  do
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v22 > 127)
    {
      if (v22 <= 1023)
      {
        switch(v22)
        {
          case 128:
            v47 = *(v15 + 48);
            v48 = TParam::getActiveConfigHandle((v47 + 12576));
            v25 = v47 + 4 * TParam::getValidConfig((v47 + 12576), v48);
            v26 = 12736;
            break;
          case 256:
            v51 = *(v15 + 48);
            v52 = TParam::getActiveConfigHandle((v51 + 12928));
            v25 = v51 + 4 * TParam::getValidConfig((v51 + 12928), v52);
            v26 = 13088;
            break;
          case 512:
            v31 = *(v15 + 48);
            v32 = TParam::getActiveConfigHandle((v31 + 13280));
            v25 = v31 + 4 * TParam::getValidConfig((v31 + 13280), v32);
            v26 = 13440;
            break;
          default:
            goto LABEL_60;
        }
      }

      else if (v22 > 4095)
      {
        if (v22 == 4096)
        {
          v43 = *(v15 + 48);
          v44 = TParam::getActiveConfigHandle((v43 + 14336));
          v25 = v43 + 4 * TParam::getValidConfig((v43 + 14336), v44);
          v26 = 14496;
        }

        else
        {
          if (v22 != 0x10000)
          {
            goto LABEL_60;
          }

          v35 = *(v15 + 48);
          v36 = TParam::getActiveConfigHandle((v35 + 14688));
          v25 = v35 + 4 * TParam::getValidConfig((v35 + 14688), v36);
          v26 = 14848;
        }
      }

      else if (v22 == 1024)
      {
        v39 = *(v15 + 48);
        v40 = TParam::getActiveConfigHandle((v39 + 13632));
        v25 = v39 + 4 * TParam::getValidConfig((v39 + 13632), v40);
        v26 = 13792;
      }

      else
      {
        if (v22 != 2048)
        {
          goto LABEL_60;
        }

        v27 = *(v15 + 48);
        v28 = TParam::getActiveConfigHandle((v27 + 13984));
        v25 = v27 + 4 * TParam::getValidConfig((v27 + 13984), v28);
        v26 = 14144;
      }
    }

    else if (v22 <= 7)
    {
      switch(v22)
      {
        case 1:
          v45 = *(v15 + 48);
          v46 = TParam::getActiveConfigHandle((v45 + 10112));
          v25 = v45 + 4 * TParam::getValidConfig((v45 + 10112), v46);
          v26 = 10272;
          break;
        case 2:
          v49 = *(v15 + 48);
          v50 = TParam::getActiveConfigHandle((v49 + 10464));
          v25 = v49 + 4 * TParam::getValidConfig((v49 + 10464), v50);
          v26 = 10624;
          break;
        case 4:
          v29 = *(v15 + 48);
          v30 = TParam::getActiveConfigHandle((v29 + 10816));
          v25 = v29 + 4 * TParam::getValidConfig((v29 + 10816), v30);
          v26 = 10976;
          break;
        default:
          goto LABEL_60;
      }
    }

    else if (v22 > 31)
    {
      if (v22 == 32)
      {
        v41 = *(v15 + 48);
        v42 = TParam::getActiveConfigHandle((v41 + 11872));
        v25 = v41 + 4 * TParam::getValidConfig((v41 + 11872), v42);
        v26 = 12032;
      }

      else
      {
        if (v22 != 64)
        {
          goto LABEL_60;
        }

        v33 = *(v15 + 48);
        v34 = TParam::getActiveConfigHandle((v33 + 12224));
        v25 = v33 + 4 * TParam::getValidConfig((v33 + 12224), v34);
        v26 = 12384;
      }
    }

    else if (v22 == 8)
    {
      v37 = *(v15 + 48);
      v38 = TParam::getActiveConfigHandle((v37 + 11168));
      v25 = v37 + 4 * TParam::getValidConfig((v37 + 11168), v38);
      v26 = 11328;
    }

    else
    {
      if (v22 != 16)
      {
        goto LABEL_60;
      }

      v23 = *(v15 + 48);
      v24 = TParam::getActiveConfigHandle((v23 + 11520));
      v25 = v23 + 4 * TParam::getValidConfig((v23 + 11520), v24);
      v26 = 11680;
    }

    v53 = *(v25 + v26);
    v54 = v234;
    if (v234 >= v235)
    {
      v55 = (v234 - v233) >> 3;
      if ((v55 + 1) >> 61)
      {
        std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
      }

      v56 = (v235 - v233) >> 2;
      if (v56 <= v55 + 1)
      {
        v56 = v55 + 1;
      }

      if (v235 - v233 >= 0x7FFFFFFFFFFFFFF8)
      {
        v57 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v57 = v56;
      }

      if (v57)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v233, v57);
      }

      v58 = (8 * v55);
      *v58 = v22 | (v53 << 32);
      v21 = (8 * v55 + 8);
      v59 = (v58 - (v234 - v233));
      memcpy(v59, v233, v234 - v233);
      v60 = v233;
      v233 = v59;
      v234 = v21;
      v235 = 0;
      if (v60)
      {
        operator delete(v60);
      }
    }

    else
    {
      *v234 = v22 | (v53 << 32);
      v21 = (v54 + 1);
    }

    v234 = v21;
LABEL_60:
    v22 *= 2;
    v138 = v20 >= 2;
    v20 >>= 1;
  }

  while (v138);
  v61 = v233;
  if (v233 != v21)
  {
    v219 = priorityCompare;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,false>(v233, v21, &v219, 126 - 2 * __clz((v21 - v233) >> 3), 1);
    v230 = 0;
    v231 = 0;
    v232 = 0;
    v227 = 0;
    v228 = 0;
    v229 = 0;
    std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ** const*,TPItnTagHandle_fake ** const*>(&v230, v14, &v14[8 * v239], v239);
    if (*(&v239 + 1))
    {
      TResultManager::copyAlignRange(*(v15 + 128), *&v14[8 * v239], 0, *(&v239 + 1));
    }

    v63 = v230;
    v62 = v231;
    if (v239 == v236)
    {
      TResultManager::copyAlignRange(*(v15 + 128), *&v14[8 * v239], *(&v239 + 1), v237);
    }

    std::vector<TPItnResultHandle_fake **>::__insert_with_size[abi:ne200100]<TPItnResultHandle_fake ** const*,TPItnResultHandle_fake ** const*>(&v230, v231, &v14[8 * v239], &v14[8 * v236], (8 * v236 - 8 * v239) >> 3);
    if (v237)
    {
      TResultManager::copyAlignRange(*(v15 + 128), *&v14[8 * v236], 0, v237);
    }

    v65 = v230;
    v64 = v231;
    std::vector<TPItnResultHandle_fake **>::__insert_with_size[abi:ne200100]<TPItnResultHandle_fake ** const*,TPItnResultHandle_fake ** const*>(&v230, v231, &v14[8 * v236], v12, (v12 - &v14[8 * v236]) >> 3);
    v194 = v62 - v63;
    v193 = v64 - v65;
    v192 = v239 == 0;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    memset(&__s1, 0, sizeof(__s1));
    v187 = (v64 - v65) >> 3;
    v195 = (v62 - v63) >> 3;
    if (v195 < v187)
    {
      v66 = (v62 - v63) >> 3;
      do
      {
        Result = TResultManager::getResult(*(v15 + 128), *&v230[8 * v66]);
        std::string::append(&__s1, *(Result + 16));
        v68 = *(Result + 32);
        if (*(Result + 40) != v68)
        {
          v69 = 0;
          v70 = 0;
          do
          {
            v71 = (v68 + v69);
            if (*(v68 + v69 + 23) < 0)
            {
              v71 = *v71;
            }

            v72 = v225;
            if (v225 >= v226)
            {
              v74 = v225 - v224;
              if ((v74 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v75 = (v226 - v224) >> 2;
              if (v75 <= v74 + 1)
              {
                v75 = v74 + 1;
              }

              if (v226 - v224 >= 0x7FFFFFFFFFFFFFF8)
              {
                v76 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v76 = v75;
              }

              if (v76)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&v224, v76);
              }

              v77 = (8 * v74);
              *v77 = v71;
              v73 = (8 * v74 + 8);
              v78 = v77 - (v225 - v224);
              memcpy(v78, v224, v225 - v224);
              v79 = v224;
              v224 = v78;
              v225 = v73;
              v226 = 0;
              if (v79)
              {
                operator delete(v79);
              }
            }

            else
            {
              *v225 = v71;
              v73 = v72 + 1;
            }

            v225 = v73;
            ++v70;
            v68 = *(Result + 32);
            v69 += 24;
          }

          while (v70 < 0xAAAAAAAAAAAAAAABLL * ((*(Result + 40) - v68) >> 3));
        }

        ++v66;
      }

      while (v66 != v187);
    }

    v219 = v221;
    v220 = xmmword_26286B6F0;
    v222 = 1;
    v80 = v233;
    v81 = v190;
    if (v234 != v233)
    {
      v188 = 0;
      v186 = v195 + 1;
      do
      {
        if (*(v4 + 16) >= v197)
        {
          break;
        }

        v82 = v80->i32[2 * v188];
        if (v82 == 0x10000)
        {
          if (v224 != v225)
          {
            TParamSetter::TParamSetter(&v217, *(v15 + 48) + 2224, &unk_262888EC4, *(*(v15 + 48) + 136));
            TParamSetter::TParamSetter(&v210, *(v15 + 48) + 2472, &unk_262888EC4, *(*(v15 + 48) + 136));
            v206 = v208;
            v207 = xmmword_26286B6F0;
            v209 = 1;
            v201 = 0;
            __p = v204;
            v203 = xmmword_26286B6F0;
            v205 = 1;
            v215 = 0;
            v214 = 0;
            v216 = 0;
            v199 = 0;
            v200 = 0;
            std::vector<wchar_t const*>::__init_with_size[abi:ne200100]<wchar_t const**,wchar_t const**>(&v199, v224, v225, v225 - v224);
            v103 = v224;
            if (v225 == v224 || *(v4 + 16) >= v197)
            {
LABEL_219:
              if (v199)
              {
                v200 = v199;
                operator delete(v199);
              }

              if (v214)
              {
                v215 = v214;
                operator delete(v214);
              }

              if (v205 == 1 && __p != v204 && __p)
              {
                MEMORY[0x26672B1B0]();
              }

              if (v209 == 1 && v206 != v208 && v206)
              {
                MEMORY[0x26672B1B0]();
              }

              TParamSetter::~TParamSetter(&v210);
              TParamSetter::~TParamSetter(&v217);
              goto LABEL_328;
            }

            v104 = 0;
            while (2)
            {
              (*(**(v15 + 120) + 48))(*(v15 + 120), v103[v104], 0, &v206);
              if (*(&v207 + 1))
              {
                TLexicon::getWrittenForm(*(v15 + 32), v224[v104], &__p);
                if (*(&v203 + 1))
                {
                  TBuffer<wchar_t>::insert(&__p, *(&v203 + 1), dword_262888EDC, 0xBuLL);
                  v105 = *(v15 + 32);
                  if (*(&v203 + 1) >= v203)
                  {
                    if (v205)
                    {
                      LODWORD(v241[0]) = 0;
                      TBuffer<wchar_t>::insert(&__p, *(&v203 + 1), v241, 1uLL);
                      v106 = __p;
                      --*(&v203 + 1);
                    }

                    else
                    {
                      v106 = __p;
                      if (v203)
                      {
                        *(__p + v203 - 1) = 0;
                      }
                    }
                  }

                  else
                  {
                    v106 = __p;
                    *(__p + *(&v203 + 1)) = 0;
                  }

                  TLexicon::addTempWord(v105, v106, 0, 0, 0);
                  if (*(&v203 + 1) >= v203)
                  {
                    if (v205)
                    {
                      LODWORD(v241[0]) = 0;
                      TBuffer<wchar_t>::insert(&__p, *(&v203 + 1), v241, 1uLL);
                      v107 = __p;
                      --*(&v203 + 1);
                    }

                    else
                    {
                      v107 = __p;
                      if (v203)
                      {
                        *(__p + v203 - 1) = 0;
                      }
                    }
                  }

                  else
                  {
                    v107 = __p;
                    *(__p + *(&v203 + 1)) = 0;
                  }

                  *(v199 + v104) = v107;
                  v213 = 0;
                  v198 = 0;
                  v108 = *(v4 + 16);
                  if (*(&v207 + 1) && v108 < v197)
                  {
                    v109 = 0;
                    v191 = 0;
                    v196 = v104;
                    while (1)
                    {
                      v189 = v109;
                      v110 = *&v206[8 * v109];
                      if (v110 && (v111 = *(*(v15 + 120) + 32), v110 <= (*(*(v15 + 120) + 40) - v111) >> 3))
                      {
                        v112 = *(v111 + 8 * v110 - 8);
                      }

                      else
                      {
                        v112 = 0;
                      }

                      if ((*(v112 + 145) & 1) == 0)
                      {
                        std::vector<TPItnRuleControl>::resize(&v214, 0xAAAAAAAAAAAAAAABLL * ((*(v112 + 160) - *(v112 + 152)) >> 3));
                        v114 = *(v112 + 152);
                        v113 = *(v112 + 160);
                        if (v113 != v114)
                        {
                          v115 = 0xAAAAAAAAAAAAAAABLL * ((v113 - v114) >> 3);
                          v116 = v214;
                          if (v115 <= 1)
                          {
                            v115 = 1;
                          }

                          v117 = *(v112 + 152);
                          do
                          {
                            v118 = *v117;
                            v117 = (v117 + 24);
                            *v116++ = v118;
                            --v115;
                          }

                          while (v115);
                        }

                        v119 = (v112 + 120);
                        if (*(v112 + 143) < 0)
                        {
                          v119 = *v119;
                        }

                        v120 = v113 == v114 ? 0 : v214;
                        v108 = *(v4 + 16);
                        if (v108 < v197)
                        {
                          break;
                        }
                      }

LABEL_184:
                      v109 = v189 + 1;
                      v104 = v196;
                      v138 = (v189 + 1) >= *(&v207 + 1) || v108 >= v197;
                      if (v138)
                      {
                        goto LABEL_191;
                      }
                    }

                    v121 = 0;
                    v122 = 1;
                    while (2)
                    {
                      if ((v122 & 1) == 0)
                      {
                        if (!*v119)
                        {
                          goto LABEL_184;
                        }

                        goto LABEL_157;
                      }

                      if ((*(v112 + 144) & 1) == 0)
                      {
                        if (v191)
                        {
                          v123 = 1;
                          goto LABEL_155;
                        }

                        if (*(v112 + 32) == *(v112 + 24) && *(v112 + 56) == *(v112 + 48))
                        {
                          v123 = *(v112 + 192) == -1;
LABEL_155:
                          v191 = v123;
                        }

                        else
                        {
                          v191 = 0;
                        }

LABEL_157:
                        LOBYTE(v185) = 0;
                        v124 = (*(**(v15 + 120) + 16))(*(v15 + 120), *(v199 + v196), v119, v121 & 1, 0, 0, 0, 0, v120, v120 - 0x5555555555555550 * ((*(v112 + 160) - *(v112 + 152)) >> 3), -1, v185);
                        v125 = (*(*v15 + 96))(v15, v230, &v230[v194], &v230[v193], v231, &v199, 0, v81 & v192, &v213, &v198);
                        v126 = *(TResultManager::getResult(*(v15 + 128), v125) + 16);
                        v127 = strlen(v126);
                        v128 = v127;
                        if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                        {
                          if (v127 != __s1.__r_.__value_.__l.__size_)
                          {
                            goto LABEL_164;
                          }

                          if (v127 == -1)
                          {
                            std::wstring::__throw_out_of_range[abi:ne200100]();
                          }

                          p_s1 = __s1.__r_.__value_.__r.__words[0];
LABEL_163:
                          v130 = memcmp(p_s1, v126, v128) == 0;
                        }

                        else
                        {
                          if (v127 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
                          {
                            p_s1 = &__s1;
                            goto LABEL_163;
                          }

LABEL_164:
                          v130 = 0;
                        }

                        if (*(v4 + 16) && !v130)
                        {
                          v131 = 0;
                          do
                          {
                            v132 = TResultManager::getResult(*(v15 + 128), *(*v4 + 8 * v131));
                            v133 = strcmp(*(v132 + 16), v126);
                            v130 = v133 == 0;
                          }

                          while (++v131 < *(v4 + 16) && v133 != 0);
                          v81 = v190;
                        }

                        v135 = *(v15 + 128);
                        if (v130)
                        {
                          TResultManager::destroy(v135, v125);
                        }

                        else
                        {
                          v136 = TResultManager::getResult(v135, v125);
                          MEMORY[0x26672AF30](*(v136 + 32) + 24 * v196, v224[v196]);
                          v241[0] = v125;
                          TBuffer<TPItnRuleHandle_fake **>::insert(v4, *(v4 + 16), v241, 1uLL);
                        }

                        (*(**(v15 + 120) + 24))(*(v15 + 120), v124);
                        v108 = *(v4 + 16);
                      }

                      v137 = v122 & (v108 < v197);
                      v121 = 1;
                      v122 = 0;
                      if ((v137 & 1) == 0)
                      {
                        goto LABEL_184;
                      }

                      continue;
                    }
                  }

                  v191 = 0;
LABEL_191:
                  if (!v191 && v108 < v197)
                  {
                    v139 = (*(*v15 + 96))(v15, v230, &v230[v194], &v230[v193], v231, &v199, 0, v81 & v192, &v213, &v198);
                    v140 = *(TResultManager::getResult(*(v15 + 128), v139) + 16);
                    v141 = strlen(v140);
                    v142 = v141;
                    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                    {
                      if (v141 != __s1.__r_.__value_.__l.__size_)
                      {
                        goto LABEL_200;
                      }

                      if (v141 == -1)
                      {
                        std::wstring::__throw_out_of_range[abi:ne200100]();
                      }

                      v143 = __s1.__r_.__value_.__r.__words[0];
LABEL_199:
                      v144 = memcmp(v143, v140, v142) == 0;
                    }

                    else
                    {
                      if (v141 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
                      {
                        v143 = &__s1;
                        goto LABEL_199;
                      }

LABEL_200:
                      v144 = 0;
                    }

                    if (*(v4 + 16) && !v144)
                    {
                      v145 = 0;
                      do
                      {
                        v146 = TResultManager::getResult(*(v15 + 128), *(*v4 + 8 * v145));
                        v147 = strcmp(*(v146 + 16), v140);
                        v144 = v147 == 0;
                      }

                      while (++v145 < *(v4 + 16) && v147 != 0);
                      v81 = v190;
                    }

                    v149 = *(v15 + 128);
                    if (v144)
                    {
                      TResultManager::destroy(v149, v139);
                    }

                    else
                    {
                      v150 = TResultManager::getResult(v149, v139);
                      MEMORY[0x26672AF30](*(v150 + 32) + 24 * v104, v224[v104]);
                      v241[0] = v139;
                      TBuffer<TPItnRuleHandle_fake **>::insert(v4, *(v4 + 16), v241, 1uLL);
                    }
                  }

                  *(v199 + v104) = v224[v104];
                }
              }

              ++v104;
              v103 = v224;
              if (v104 >= v225 - v224 || *(v4 + 16) >= v197)
              {
                goto LABEL_219;
              }

              continue;
            }
          }
        }

        else if (v82 == 1)
        {
          if (v225 - v224 == 8)
          {
            v83 = *(v15 + 48);
            v84 = TParam::getActiveConfigHandle((v83 + 16416));
            v85 = *(v83 + TParam::getValidConfig((v83 + 16416), v84) + 16568);
            v81 = v190;
            if (v85 != 1 || (v81 = v190, TLexicon::getPronCount(*(v15 + 32), *v224) == 1))
            {
              v211 = 0;
              v210 = 0;
              v212 = 0;
              v86 = *(v15 + 32);
              v87 = *v224;
              v88 = TStringParam::get((*(v15 + 48) + 15040));
              TLexicon::getHomophones(v86, v87, v88, &v210);
              v89 = v210;
              if (v210 != v211)
              {
                __p = 0;
                v203 = 0uLL;
                std::vector<std::pair<int,TWord const*>>::reserve(&__p, (v211 - v210) >> 3);
                v90 = v210;
                if (v211 == v210)
                {
                  v95 = v203;
                }

                else
                {
                  v91 = 0;
                  do
                  {
                    UnigramScore = TWord::getUnigramScore(v90[v91]);
                    v93 = *(v210 + v91);
                    v94 = v203;
                    if (v203 >= *(&v203 + 1))
                    {
                      v96 = (v203 - __p) >> 4;
                      v97 = v96 + 1;
                      if ((v96 + 1) >> 60)
                      {
                        std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
                      }

                      v98 = *(&v203 + 1) - __p;
                      if ((*(&v203 + 1) - __p) >> 3 > v97)
                      {
                        v97 = v98 >> 3;
                      }

                      if (v98 >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v99 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v99 = v97;
                      }

                      if (v99)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,TWord const*>>>(&__p, v99);
                      }

                      v100 = (16 * v96);
                      *v100 = UnigramScore;
                      v100[1] = v93;
                      v95 = (16 * v96 + 16);
                      v101 = (16 * v96 - (v203 - __p));
                      memcpy(v101, __p, v203 - __p);
                      v102 = __p;
                      __p = v101;
                      v203 = v95;
                      if (v102)
                      {
                        operator delete(v102);
                      }
                    }

                    else
                    {
                      *v203 = UnigramScore;
                      *(v94 + 8) = v93;
                      v95 = (v94 + 16);
                    }

                    *&v203 = v95;
                    ++v91;
                    v90 = v210;
                  }

                  while (v91 < (v211 - v210) >> 3);
                }

                v153 = 126 - 2 * __clz((v95 - __p) >> 4);
                if (v95 == __p)
                {
                  v154 = 0;
                }

                else
                {
                  v154 = v153;
                }

                std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,false>(__p, v95, &v206, v154, 1);
                TParamSetter::TParamSetter(&v206, *(v15 + 48) + 2224, &unk_262888EC4, *(*(v15 + 48) + 136));
                TParamSetter::TParamSetter(&v217, *(v15 + 48) + 2472, &unk_262888EC4, *(*(v15 + 48) + 136));
                std::vector<wchar_t const*>::vector[abi:ne200100](&v214, 1uLL);
                v155 = __p;
                if (v203 != __p && *(v4 + 16) < v197)
                {
                  for (i = 0; i < (v203 - __p) >> 4 && *(v4 + 16) < v197; ++i)
                  {
                    v241[0] = 0;
                    v213 = 0;
                    *v214 = *v155[2 * i + 1];
                    v157 = (*(*v15 + 96))(v15, v230, &v230[v194], &v230[v193], v231, &v214, 0, v190 & v192, v241, &v213);
                    v158 = *(TResultManager::getResult(*(v15 + 128), v157) + 16);
                    v159 = strlen(v158);
                    v160 = v159;
                    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                    {
                      if (v159 == __s1.__r_.__value_.__l.__size_)
                      {
                        if (v159 == -1)
                        {
                          std::wstring::__throw_out_of_range[abi:ne200100]();
                        }

                        v161 = __s1.__r_.__value_.__r.__words[0];
                        goto LABEL_265;
                      }
                    }

                    else if (v159 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
                    {
                      v161 = &__s1;
LABEL_265:
                      v162 = memcmp(v161, v158, v160) == 0;
                      goto LABEL_267;
                    }

                    v162 = 0;
LABEL_267:
                    v163 = *(v4 + 16);
                    if (v163 && !v162)
                    {
                      v164 = 0;
                      do
                      {
                        v165 = TResultManager::getResult(*(v15 + 128), *(*v4 + 8 * v164));
                        v166 = strcmp(*(v165 + 16), v158);
                        v162 = v166 == 0;
                        ++v164;
                        v163 = *(v4 + 16);
                      }

                      while (v164 < v163 && v166 != 0);
                    }

                    if (v162)
                    {
                      TResultManager::destroy(*(v15 + 128), v157);
                    }

                    else
                    {
                      v199 = v157;
                      TBuffer<TPItnRuleHandle_fake **>::insert(v4, v163, &v199, 1uLL);
                    }

                    v155 = __p;
                  }
                }

                if (v214)
                {
                  v215 = v214;
                  operator delete(v214);
                }

                TParamSetter::~TParamSetter(&v217);
                TParamSetter::~TParamSetter(&v206);
                v81 = v190;
                if (__p)
                {
                  *&v203 = __p;
                  operator delete(__p);
                }

                v89 = v210;
              }

              if (v89)
              {
                v211 = v89;
                operator delete(v89);
              }
            }
          }
        }

        else if (v82 <= 0x1000)
        {
          if (v82 > 127)
          {
            if (v82 > 1023)
            {
              switch(v82)
              {
                case 1024:
                  v152 = 10;
                  break;
                case 2048:
                  v152 = 11;
                  break;
                case 4096:
                  v152 = 12;
                  break;
                default:
                  goto LABEL_328;
              }
            }

            else
            {
              switch(v82)
              {
                case 128:
                  v152 = 7;
                  break;
                case 256:
                  v152 = 8;
                  break;
                case 512:
                  v152 = 9;
                  break;
                default:
                  goto LABEL_328;
              }
            }
          }

          else if (v82 > 15)
          {
            switch(v82)
            {
              case 16:
                v152 = 4;
                break;
              case 32:
                v152 = 5;
                break;
              case 64:
                v152 = 6;
                break;
              default:
                goto LABEL_328;
            }
          }

          else
          {
            switch(v82)
            {
              case 2:
                v152 = 1;
                break;
              case 4:
                v152 = 2;
                break;
              case 8:
                v152 = 3;
                break;
              default:
                goto LABEL_328;
            }
          }

          v217 = v152;
          TBuffer<TPItnResultHandle_fake **>::resize(&v219, 0);
          (*(*v15 + 120))(v15, v230, &v230[v194], &v230[v193], v231, &v217, &v218, v81 & v192, &v219);
          v168 = *(&v220 + 1);
          if (*(&v220 + 1))
          {
            if (v187 <= v186)
            {
              v170 = *v219;
            }

            else
            {
              v169 = *(v15 + 128);
              if (*(&v220 + 1) >= v220)
              {
                if (v222)
                {
                  v206 = 0;
                  TBuffer<TPItnRuleHandle_fake **>::insert(&v219, *(&v220 + 1), &v206, 1uLL);
                  v168 = --*(&v220 + 1);
                }

                else if (v220)
                {
                  *(v219 + v220 - 1) = 0;
                }
              }

              else
              {
                *(v219 + *(&v220 + 1)) = 0;
              }

              v170 = TResultManager::merge(v169, v219, v168);
              if (*(&v220 + 1))
              {
                v171 = 0;
                do
                {
                  TResultManager::destroy(*(v15 + 128), *(v219 + v171++));
                }

                while (v171 < *(&v220 + 1));
                v81 = v190;
              }
            }

            v172 = *(TResultManager::getResult(*(v15 + 128), v170) + 16);
            v173 = strlen(v172);
            v174 = v173;
            if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              if (v173 != __s1.__r_.__value_.__l.__size_)
              {
                goto LABEL_315;
              }

              if (v173 == -1)
              {
                std::wstring::__throw_out_of_range[abi:ne200100]();
              }

              v175 = __s1.__r_.__value_.__r.__words[0];
LABEL_314:
              v176 = memcmp(v175, v172, v174) == 0;
            }

            else
            {
              if (v173 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
              {
                v175 = &__s1;
                goto LABEL_314;
              }

LABEL_315:
              v176 = 0;
            }

            v177 = *(v4 + 16);
            if (v177 && !v176)
            {
              v178 = 0;
              do
              {
                v179 = TResultManager::getResult(*(v15 + 128), *(*v4 + 8 * v178));
                v180 = strcmp(*(v179 + 16), v172);
                v176 = v180 == 0;
                ++v178;
                v177 = *(v4 + 16);
              }

              while (v178 < v177 && v180 != 0);
              v81 = v190;
            }

            if (v176)
            {
              TResultManager::destroy(*(v15 + 128), v170);
            }

            else
            {
              v206 = v170;
              TBuffer<TPItnRuleHandle_fake **>::insert(v4, v177, &v206, 1uLL);
            }
          }
        }

LABEL_328:
        v80 = v233;
        ++v188;
      }

      while (v188 < (v234 - v233) >> 3);
    }

    v182 = v227;
    if (v228 != v227)
    {
      v183 = 0;
      do
      {
        TResultManager::destroy(*(v15 + 128), v182[v183++]);
        v182 = v227;
      }

      while (v183 < (v228 - v227) >> 3);
    }

    if (v222 == 1 && v219 != v221 && v219 != 0)
    {
      MEMORY[0x26672B1B0]();
    }

    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }

    if (v224)
    {
      v225 = v224;
      operator delete(v224);
    }

    if (v227)
    {
      v228 = v227;
      operator delete(v227);
    }

    if (v230)
    {
      v231 = v230;
      operator delete(v230);
    }

    v61 = v233;
  }

  if (v61)
  {
    v234 = v61;
    operator delete(v61);
  }
}

void sub_2626F2628(_Unwind_Exception *a1)
{
  v3 = *(v1 - 216);
  if (v3)
  {
    *(v1 - 208) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 192);
  if (v4)
  {
    *(v1 - 184) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 168);
  if (v5)
  {
    *(v1 - 160) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void TBuffer<TPItnResultHandle_fake **>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 2072) == 1 && *(a1 + 8) < a2)
  {
    *(a1 + 8) = a2 + 1;
    operator new[]();
  }

  v4 = *(a1 + 16);
  if (v4 < a2)
  {
    v5 = a2;
    if (*(a1 + 2072))
    {
LABEL_9:
      bzero((*a1 + 8 * v4), 8 * (v5 - v4));
      goto LABEL_10;
    }

    v5 = *(a1 + 8);
    if (v4 < v5)
    {
      if (v5 >= a2)
      {
        v5 = a2;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  *(a1 + 16) = a2;
}

void std::vector<std::pair<int,TWord const*>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,TWord const*>>>(a1, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

void TFormatter::reformatResults(TFormatter *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7, char a8, uint64_t a9)
{
  if (a4 != a3)
  {
    v9 = a6;
    v37 = a3 - a2;
    v36 = (a5 - a2) >> 3;
    v11 = a7 - a6;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v45 = v11;
    v43 = a4 - a3;
    v47 = *(TResultManager::getResult(*(a1 + 16), *a3) + 1);
    v12 = -8;
    v13 = 1;
    do
    {
      v14 = v12;
      v15 = v13;
      if (v13 >= v43)
      {
        break;
      }

      Result = TResultManager::getResult(*(a1 + 16), a3[v13]);
      v12 = v14 - 8;
      v13 = v15 + 1;
    }

    while (*(Result + 1) == v47);
    v55 = 0;
    v56 = 0;
    v42 = v14;
    v57 = 0;
    TFormatter::addWords(a1, a3, a3 - v14, 0, &v55);
    v17 = v55;
    v18 = v56;
    if (v56 == v55)
    {
LABEL_21:
      if (v47)
      {
        v34 = &unk_262888F0C;
      }

      else
      {
        v34 = &unk_262888F14;
      }

      TParamSetter::TParamSetter(&v51, *(a1 + 6) + 3792, v34, *(*(a1 + 6) + 136));
      v35 = v37 + v15;
      if (v43 == v15)
      {
        v35 = v36;
      }

      v49 = -1;
      v50 = 0;
      TFormatter::formatInternal(a1, a2, a3, (a3 - v42), &a2[v35], &v55, a8, 0, &v49, &v50);
    }

    v19 = 0;
    v46 = v15;
    while (a7 == v9)
    {
      v20 = v19 + 1;
LABEL_20:
      v19 = v20;
      if (v20 >= 0x6DB6DB6DB6DB6DB7 * ((v18 - v17) >> 4))
      {
        goto LABEL_21;
      }
    }

    v20 = v19 + 1;
    v21 = v9;
    v22 = v45;
    while (1)
    {
      v23 = &v17[112 * v19];
      v24 = *(v23 + 40);
      v25 = *(v23 + 56);
      v26 = *(v23 + 88);
      v53 = *(v23 + 72);
      v54 = v26;
      v51 = v24;
      v52 = v25;
      if (getItnControlCategory(*v21) == 2)
      {
        if (v20 != 0x6DB6DB6DB6DB6DB7 * ((v56 - v55) >> 4))
        {
          v27 = *v21;
          *(&v53 + getItnControlCategory(*v21)) = -1;
          ItnControlCategory = getItnControlCategory(v27);
          v29 = &v51;
LABEL_16:
          *(v29 + ItnControlCategory) = v27;
        }
      }

      else
      {
        v30 = *v21;
        *(&v53 + getItnControlCategory(*v21)) = -1;
        v31 = getItnControlCategory(v30);
        v32 = *(a9 + 16);
        *(&v51 + v31) = v30;
        if (!(v19 | v32))
        {
          v27 = *v21;
          ItnControlCategory = getItnControlCategory(*v21);
          v29 = &v53;
          goto LABEL_16;
        }
      }

      v17 = v55;
      v33 = &v55[112 * v19];
      *(v33 + 40) = v51;
      *(v33 + 56) = v52;
      *(v33 + 72) = v53;
      *(v33 + 88) = v54;
      v33[104] = 1;
      ++v21;
      if (!--v22)
      {
        v18 = v56;
        v9 = a6;
        v15 = v46;
        goto LABEL_20;
      }
    }
  }
}

void sub_2626F2DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v31 = *(v29 - 120);
  if (v31)
  {
    *(v29 - 112) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFormatter::copyResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  v4 = a2;
  return TResultManager::merge(v2, &v4, 1);
}

uint64_t non-virtual thunk toTFormatter::copyResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v4 = a2;
  return TResultManager::merge(v2, &v4, 1);
}

const void **TFormatter::getResultText(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = *(TResultManager::getResult(*(a1 + 128), a2) + 16);

  return TBuffer<char>::assign(a3, v4);
}

const void **non-virtual thunk toTFormatter::getResultText(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = *(TResultManager::getResult(*(a1 + 88), a2) + 16);

  return TBuffer<char>::assign(a3, v4);
}

const void **TFormatter::serializeResultTokenSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TBuffer<char>::resize(a3, 0);
  v6 = TResultManager::getResult(*(a1 + 128), a2);
  v7 = *(v6 + 32);
  if (*(v6 + 40) != v7)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (v7 + v9);
      if (*(v7 + v9 + 23) < 0)
      {
        v11 = *v11;
      }

      TLocaleInfo::unicodeToMultiByte(*(a1 + 32) + 240, v11, a3);
      v14 = 0;
      TBuffer<char>::insert(a3, *(a3 + 16), &v14, 1uLL);
      ++v10;
      v7 = *(v8 + 32);
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 40) - v7) >> 3));
  }

  v13 = 0;
  return TBuffer<char>::insert(a3, *(a3 + 16), &v13, 1uLL);
}

unint64_t TFormatter::serializeResult(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v7 = TResultManager::getResult(*(a1 + 128), a2);
  v8 = *(a1 + 32);

  return TResult::serialize(v7, a3, a4, v8);
}

unint64_t non-virtual thunk toTFormatter::serializeResult(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v7 = TResultManager::getResult(*(a1 + 88), a2);
  v8 = *(a1 - 8);

  return TResult::serialize(v7, a3, a4, v8);
}

void TFormatter::getResultAlignment(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Result = TResultManager::getResult(*(a1 + 128), a2);
  v6 = *(Result + 104);
  v5 = *(Result + 112);
  v7 = (v5 - v6) >> 3;
  if (*(a3 + 2072) == 1 && a3[1] < v7)
  {
    a3[1] = v7 + 1;
    operator new[]();
  }

  v8 = a3[2];
  if (v8 < v7)
  {
    if (*(a3 + 2072) == 1)
    {
      v9 = (*a3 + 8 * v8);
      v10 = v5 - v6 - 8 * v8;
    }

    else
    {
      v11 = a3[1];
      if (v8 >= v11)
      {
        goto LABEL_12;
      }

      if (v11 >= v7)
      {
        v11 = (v5 - v6) >> 3;
      }

      v9 = (*a3 + 8 * v8);
      v10 = 8 * (v11 - v8);
    }

    bzero(v9, v10);
  }

LABEL_12:
  a3[2] = v7;
  if (v5 != v6)
  {
    v12 = 0;
    v13 = *(Result + 104);
    v14 = *a3;
    do
    {
      *(v14 + 8 * v12) = *(v13 + 8 * v12);
      ++v12;
    }

    while (v12 < a3[2]);
  }
}

TItnRuleManager *TFormatter::isCustomized(TFormatter *this)
{
  result = *(this + 15);
  if (result)
  {
    return TItnRuleManager::isCustomized(result);
  }

  return result;
}

uint64_t TFormatter::isModified(TFormatter *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 80);
  }

  return v1 & 1;
}

void TRegisterable<TIFormatter>::~TRegisterable(void *a1)
{
  TRegisterable<TIFormatter>::~TRegisterable(a1);

  JUMPOUT(0x26672B1B0);
}

void *TRegisterable<TIFormatter>::~TRegisterable(void *a1)
{
  *a1 = &unk_287528270;
  if (a1[1] != -1)
  {
    Registry = TRegisterable<TIFormatter>::getRegistry();
    v3 = *Registry;
    *(Registry[1] + 8 * a1[1] - 8) = 0;
    *Registry = v3 - 1;
  }

  return a1;
}

uint64_t TRegisterable<TIFormatter>::getRegistry()
{
  {
    operator new();
  }

  return TRegisterable<TIFormatter>::getRegistry(void)::s_registry;
}

char *std::vector<TItnControl>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TItnControl const*>,std::__wrap_iter<TItnControl const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - __dst) >> 3)) >= a5)
      {
        v20 = 3 * a5;
        v21 = &__dst[24 * a5];
        v22 = &v8[-24 * a5];
        v23 = a1[1];
        while (v22 < v8)
        {
          v24 = *v22;
          *(v23 + 16) = *(v22 + 2);
          *v23 = v24;
          v23 += 24;
          v22 += 24;
        }

        a1[1] = v23;
        if (v8 != v21)
        {
          memmove(&__dst[24 * a5], __dst, v8 - v21);
        }

        v29 = 8 * v20;
        v30 = v5;
        v31 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          v19 = *v16;
          *(v18 + 16) = *(v16 + 2);
          *v18 = v19;
          v18 += 24;
          v16 += 24;
          v17 += 24;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v25 = &__dst[24 * a5];
        v26 = v17 - 24 * a5;
        v27 = v17;
        while (v26 < v8)
        {
          v28 = *v26;
          *(v27 + 16) = *(v26 + 16);
          *v27 = v28;
          v27 += 24;
          v26 += 24;
        }

        a1[1] = v27;
        if (v18 != v25)
        {
          memmove(&__dst[24 * a5], __dst, v17 - v25);
        }

        v30 = v5;
        v31 = v6;
        v29 = v15;
      }

      memmove(v30, v31, v29);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * (&v8[-*a1] >> 3);
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControl>>(a1, v14);
    }

    v32 = 8 * (v12 >> 3);
    v33 = (v32 + 24 * a5);
    v34 = 24 * a5;
    v35 = v32;
    do
    {
      v36 = *v6;
      *(v35 + 16) = *(v6 + 2);
      *v35 = v36;
      v35 += 24;
      v6 += 24;
      v34 -= 24;
    }

    while (v34);
    memcpy(v33, v5, a1[1] - v5);
    v37 = *a1;
    v38 = &v33[a1[1] - v5];
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v32 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v32;
  }

  return v5;
}

void *TParamSetter::TParamSetter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a1 + 4;
  *(a1 + 1) = xmmword_26286B6F0;
  *(a1 + 1056) = 1;
  a1[133] = a4;
  (*(*a2 + 16))(a2, a4, a1 + 1);
  (*(**a1 + 32))(*a1, a4, a3);
  return a1;
}

void sub_2626F37AC(_Unwind_Exception *exception_object)
{
  if (*(v3 + 1056) == 1)
  {
    TParamSetter::TParamSetter(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

void TParamSetter::~TParamSetter(TParamSetter *this)
{
  v2 = *this;
  v3 = *(this + 133);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4 >= v5)
  {
    if (*(this + 1056))
    {
      v9 = 0;
      TBuffer<wchar_t>::insert(this + 1, v4, &v9, 1uLL);
      --*(this + 3);
      v6 = *(this + 1);
    }

    else
    {
      v6 = *(this + 1);
      if (v5)
      {
        *(v6 + 4 * v5 - 4) = 0;
      }
    }
  }

  else
  {
    v6 = *(this + 1);
    *(v6 + 4 * v4) = 0;
  }

  (*(*v2 + 32))(v2, v3, v6);
  if (*(this + 1056) == 1)
  {
    v7 = *(this + 1);
    if (v7 != (this + 32) && v7 != 0)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TItnWordData>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 112 * a2;
      v11 = 112 * a2;
      v12 = v5 + 105;
      *&v13 = -1;
      *(&v13 + 1) = -1;
      do
      {
        *(v12 - 17) = v13;
        *(v12 - 33) = v13;
        *(v12 - 49) = v13;
        *(v12 - 65) = v13;
        *(v12 - 105) = 0uLL;
        *(v12 - 89) = 0uLL;
        *(v12 - 73) = 256;
        *(v12 - 1) = 256;
        v12 += 112;
        v11 -= 112;
      }

      while (v11);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    *(a1 + 8) = v10;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (v6 + a2 > 0x249249249249249)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x124924924924924)
    {
      v9 = 0x249249249249249;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(a1, v9);
    }

    v14 = 16 * ((v5 - *a1) >> 4);
    v15 = 112 * a2;
    v16 = v14 + 112 * a2;
    v17 = v14 + 105;
    *&v18 = -1;
    *(&v18 + 1) = -1;
    do
    {
      *(v17 - 17) = v18;
      *(v17 - 33) = v18;
      *(v17 - 49) = v18;
      *(v17 - 65) = v18;
      *(v17 - 105) = 0uLL;
      *(v17 - 89) = 0uLL;
      *(v17 - 73) = 256;
      *(v17 - 1) = 256;
      v17 += 112;
      v15 -= 112;
    }

    while (v15);
    v19 = *(a1 + 8) - *a1;
    v20 = v14 - v19;
    memcpy((v14 - v19), *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v21)
    {

      operator delete(v21);
    }
  }
}

uint64_t *std::vector<TItnStateData>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<TItnStateData>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<TItnStateData>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TItnStateData>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TItnStateData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TItnStateData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TItnStateData>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TItnStateData>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t *std::vector<std::vector<TItnGrammarStateData const*>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<TItnGrammarStateData const*>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::vector<TItnGrammarStateData const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<TItnGrammarStateData const*>>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<TItnGrammarStateData const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<TItnGrammarStateData const*>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<TItnGrammarStateData const*>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<TItnGrammarStateData const*>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t *std::vector<TItnControl>::__init_with_size[abi:ne200100]<TItnControl*,TItnControl*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TItnControl>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2626F3F28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TItnControl>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControl>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<TItnControl>::__assign_with_size[abi:ne200100]<TItnControl*,TItnControl*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<TItnControl>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

char *std::vector<TItnWordData>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TItnWordData const*>,std::__wrap_iter<TItnWordData const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v7 = __src;
    v9 = a1[1];
    v10 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v10 - v9) >> 4) >= a5)
    {
      v16 = v9 - __dst;
      if (0x6DB6DB6DB6DB6DB7 * ((v9 - __dst) >> 4) >= a5)
      {
        v25 = &__dst[112 * a5];
        v26 = &v9[-112 * a5];
        v27 = a1[1];
        while (v26 < v9)
        {
          v28 = *v26;
          v29 = *(v26 + 2);
          v27[1] = *(v26 + 1);
          v27[2] = v29;
          *v27 = v28;
          v30 = *(v26 + 3);
          v31 = *(v26 + 4);
          v32 = *(v26 + 6);
          v27[5] = *(v26 + 5);
          v27[6] = v32;
          v27[3] = v30;
          v27[4] = v31;
          v26 += 112;
          v27 += 7;
        }

        a1[1] = v27;
        if (v9 != v25)
        {
          memmove(v25, __dst, v9 - v25 - 6);
        }

        v41 = 112 * a5 - 6;
      }

      else
      {
        v17 = &__src[v16];
        v18 = a1[1];
        v19 = v18;
        while (v17 != a4)
        {
          v20 = *v17;
          v21 = *(v17 + 2);
          *(v19 + 1) = *(v17 + 1);
          *(v19 + 2) = v21;
          *v19 = v20;
          v22 = *(v17 + 3);
          v23 = *(v17 + 4);
          v24 = *(v17 + 6);
          *(v19 + 5) = *(v17 + 5);
          *(v19 + 6) = v24;
          *(v19 + 3) = v22;
          *(v19 + 4) = v23;
          v17 += 112;
          v19 += 112;
          v18 += 112;
        }

        a1[1] = v18;
        if (v16 < 1)
        {
          return v5;
        }

        v33 = &__dst[112 * a5];
        v34 = &v18[-112 * a5];
        v35 = v18;
        while (v34 < v9)
        {
          v36 = *v34;
          v37 = *(v34 + 2);
          *(v35 + 1) = *(v34 + 1);
          *(v35 + 2) = v37;
          *v35 = v36;
          v38 = *(v34 + 3);
          v39 = *(v34 + 4);
          v40 = *(v34 + 6);
          *(v35 + 5) = *(v34 + 5);
          *(v35 + 6) = v40;
          *(v35 + 3) = v38;
          *(v35 + 4) = v39;
          v34 += 112;
          v35 += 112;
        }

        a1[1] = v35;
        if (v19 != v33)
        {
          memmove(&__dst[112 * a5], __dst, v18 - v33 - 6);
        }

        v41 = v16 - 6;
      }

      memmove(v5, v7, v41);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * (&v9[-*a1] >> 4);
    if (v12 > 0x249249249249249)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(a1, v15);
    }

    v42 = 16 * (v13 >> 4);
    v43 = 112 * a5;
    v44 = (v42 + 112 * a5);
    v45 = v42;
    do
    {
      v46 = *v7;
      v47 = *(v7 + 2);
      v45[1] = *(v7 + 1);
      v45[2] = v47;
      *v45 = v46;
      v48 = *(v7 + 3);
      v49 = *(v7 + 4);
      v50 = *(v7 + 6);
      v45[5] = *(v7 + 5);
      v45[6] = v50;
      v45[3] = v48;
      v45[4] = v49;
      v45 += 7;
      v7 += 112;
      v43 -= 112;
    }

    while (v43);
    memcpy(v44, v5, a1[1] - v5);
    v51 = *a1;
    v52 = &v44[a1[1] - v5];
    a1[1] = v5;
    v53 = v5 - v51;
    v54 = (v42 - (v5 - v51));
    memcpy(v54, v51, v53);
    v55 = *a1;
    *a1 = v54;
    a1[1] = v52;
    a1[2] = 0;
    if (v55)
    {
      operator delete(v55);
    }

    return v42;
  }

  return v5;
}

uint64_t *std::vector<TItnWordData>::__init_with_size[abi:ne200100]<std::__wrap_iter<TItnWordData*>,std::__wrap_iter<TItnWordData*>>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TItnWordData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2626F442C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TItnWordData>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,false>(uint64_t result, int8x16_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, int a5)
{
  v8 = result;
LABEL_2:
  v85 = &a2[-1].i32[3];
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  v86 = a5;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2->i64 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        result = (*a3)(a2[-1].i64[1], *v9);
        if (result)
        {
          v77 = *v9;
          *v9 = a2[-1].i32[2];
          a2[-1].i32[2] = v77;
          v78 = *(v9 + 4);
          *(v9 + 4) = a2[-1].i32[3];
          a2[-1].i32[3] = v78;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      v72 = (*a3)(*(v9 + 8), *v9);
      result = (*a3)(a2[-1].i64[1], *(v9 + 8));
      if (v72)
      {
        v74 = (v9 + 4);
        v73 = *v9;
        if (result)
        {
          *v9 = a2[-1].i32[2];
        }

        else
        {
          v82 = *(v9 + 8);
          *(v9 + 12) = *(v9 + 4);
          v74 = (v9 + 12);
          *(v9 + 8) = v73;
          *v9 = v82;
          result = (*a3)(a2[-1].i64[1], *(v9 + 8));
          if (!result)
          {
            return result;
          }

          v73 = *(v9 + 8);
          *(v9 + 8) = a2[-1].i32[2];
        }

        a2[-1].i32[2] = v73;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v79 = *(v9 + 8);
        *(v9 + 8) = a2[-1].i32[2];
        a2[-1].i32[2] = v79;
        v80 = *(v9 + 12);
        v85 = (v9 + 12);
        *(v9 + 12) = a2[-1].i32[3];
        a2[-1].i32[3] = v80;
        result = (*a3)(*(v9 + 8), *v9);
        if (!result)
        {
          return result;
        }

        v81 = *v9;
        *v9 = *(v9 + 8);
        *(v9 + 8) = v81;
        v74 = (v9 + 4);
      }

      v83 = *v74;
      *v74 = *v85;
      *v85 = v83;
      return result;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,0>(v9, (v9 + 8), (v9 + 16), v9 + 24, a3);
      result = (*a3)(a2[-1].i64[1], *(v9 + 24));
      if (result)
      {
        v75 = *(v9 + 24);
        *(v9 + 24) = a2[-1].i32[2];
        a2[-1].i32[2] = v75;
        v76 = *(v9 + 28);
        *(v9 + 28) = a2[-1].i32[3];
        a2[-1].i32[3] = v76;
        result = (*a3)(*(v9 + 24), *(v9 + 16));
        if (result)
        {
          *(v9 + 16) = vextq_s8(*(v9 + 16), *(v9 + 16), 8uLL);
          result = (*a3)(*(v9 + 16), *(v9 + 8));
          if (result)
          {
            *(v9 + 8) = vextq_s8(*(v9 + 8), *(v9 + 8), 8uLL);
            result = (*a3)(*(v9 + 8), *v9);
            if (result)
            {
              *v9 = vextq_s8(*v9, *v9, 8uLL);
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(v9, a2->i64, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(v9, a2->i64, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(v9, a2->i8, a2->i32, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = (v9 + 8 * (v12 >> 1));
    v15 = *a3;
    if (v12 >= 0x81)
    {
      v16 = v15(v14->i64[0], *v8);
      v17 = (*a3)(a2[-1].i64[1], v14->i64[0]);
      if (v16)
      {
        v19 = v8 + 1;
        v18 = *v8;
        if (v17)
        {
          *v8 = a2[-1].i32[2];
          goto LABEL_28;
        }

        v32 = *(v8 + 1);
        *v8 = v14->i64[0];
        v14->i32[1] = v32;
        v19 = &v14->i32[1];
        v14->i32[0] = v18;
        if ((*a3)(a2[-1].i64[1], v14->i64[0]))
        {
          v18 = v14->i32[0];
          v14->i32[0] = a2[-1].i32[2];
LABEL_28:
          a2[-1].i32[2] = v18;
          v26 = &a2[-1].i32[3];
LABEL_29:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = v14->i32[0];
        v14->i32[0] = a2[-1].i32[2];
        a2[-1].i32[2] = v24;
        v26 = &v14->i32[1];
        v25 = v14->i32[1];
        v14->i32[1] = a2[-1].i32[3];
        a2[-1].i32[3] = v25;
        if ((*a3)(v14->i64[0], *v8))
        {
          v27 = *v8;
          *v8 = v14->i32[0];
          v19 = v8 + 1;
          v14->i32[0] = v27;
          goto LABEL_29;
        }
      }

      v34 = &v14[-1].i64[1];
      v35 = (*a3)(v14[-1].i64[1], v8[1]);
      v36 = (*a3)(a2[-1].i64[0], v14[-1].i64[1]);
      if (v35)
      {
        v37 = *(v8 + 2);
        if (v36)
        {
          v38 = v8 + 3;
          *(v8 + 2) = a2[-1].i32[0];
          goto LABEL_41;
        }

        v44 = *(v8 + 3);
        v8[1] = *v34;
        v14[-1].i32[3] = v44;
        v38 = &v14[-1].i32[3];
        *v34 = v37;
        if ((*a3)(a2[-1].i64[0], *v34))
        {
          v37 = *v34;
          *v34 = a2[-1].i32[0];
LABEL_41:
          a2[-1].i32[0] = v37;
          v41 = &a2[-1].i32[1];
LABEL_42:
          v45 = *v38;
          *v38 = *v41;
          *v41 = v45;
        }
      }

      else if (v36)
      {
        v39 = *v34;
        *v34 = a2[-1].i32[0];
        a2[-1].i32[0] = v39;
        v41 = &v14[-1].i32[3];
        v40 = v14[-1].i32[3];
        v14[-1].i32[3] = a2[-1].i32[1];
        a2[-1].i32[1] = v40;
        if ((*a3)(*v34, v8[1]))
        {
          v42 = *(v8 + 2);
          *(v8 + 2) = *v34;
          *v34 = v42;
          v38 = v8 + 3;
          goto LABEL_42;
        }
      }

      v84 = v13;
      v46 = v13 + 1;
      v47 = &v8[v46];
      v48 = (*a3)(*v47, v8[2]);
      v49 = (*a3)(a2[-2].i64[1], *v47);
      if (v48)
      {
        v50 = *(v8 + 4);
        if (v49)
        {
          v51 = v8 + 5;
          *(v8 + 4) = a2[-2].i32[2];
          goto LABEL_51;
        }

        v56 = *(v8 + 5);
        v8[2] = *v47;
        *(v47 + 1) = v56;
        v51 = v47 + 1;
        *v47 = v50;
        if ((*a3)(a2[-2].i64[1], *v47))
        {
          v50 = *v47;
          *v47 = a2[-2].i32[2];
LABEL_51:
          a2[-2].i32[2] = v50;
          v54 = &a2[-2].i32[3];
LABEL_52:
          v57 = *v51;
          *v51 = *v54;
          *v54 = v57;
        }
      }

      else if (v49)
      {
        v52 = *v47;
        *v47 = a2[-2].i32[2];
        a2[-2].i32[2] = v52;
        v54 = v47 + 1;
        v53 = *(v47 + 1);
        *(v47 + 1) = a2[-2].i32[3];
        a2[-2].i32[3] = v53;
        if ((*a3)(*v47, v8[2]))
        {
          v55 = *(v8 + 4);
          *(v8 + 4) = *v47;
          *v47 = v55;
          v51 = v8 + 5;
          goto LABEL_52;
        }
      }

      v58 = (*a3)(v14->i64[0], *v34);
      v59 = (*a3)(*v47, v14->i64[0]);
      if (v58)
      {
        v60 = *v34;
        if (v59)
        {
          *v34 = *v47;
          *v47 = v60;
          v61 = &v14[-1].i32[3];
          goto LABEL_61;
        }

        v63 = v14->i64[0];
        v14->i32[1] = v14[-1].i32[3];
        v14->i32[0] = v60;
        *v34 = v63;
        if ((*a3)(*v47, v14->i64[0]))
        {
          v64 = v14->i32[0];
          v14->i32[0] = *v47;
          *v47 = v64;
          v61 = &v14->i32[1];
LABEL_61:
          v65 = &v8[v46];
          v66 = *v61;
          *v61 = *(v65 + 1);
          *(v65 + 1) = v66;
        }
      }

      else if (v59)
      {
        *v14 = vextq_s8(*v14, *v14, 8uLL);
        if ((*a3)(v14->i64[0], *v34))
        {
          v62 = *v34;
          *v34 = v14->i32[0];
          v61 = &v14[-1].i32[3];
          v14->i32[0] = v62;
          v46 = v84;
          goto LABEL_61;
        }
      }

      v67 = *v8;
      *v8 = v14->i32[0];
      v23 = v8 + 1;
      v14->i32[0] = v67;
      v31 = &v14->i32[1];
      a5 = v86;
LABEL_63:
      v68 = *v23;
      *v23 = *v31;
      *v31 = v68;
      goto LABEL_64;
    }

    v20 = v15(*v8, v14->i64[0]);
    v21 = (*a3)(a2[-1].i64[1], *v8);
    if (v20)
    {
      v23 = &v14->i32[1];
      v22 = v14->i32[0];
      if (v21)
      {
        v14->i32[0] = a2[-1].i32[2];
LABEL_38:
        a2[-1].i32[2] = v22;
        v31 = &a2[-1].i32[3];
        goto LABEL_63;
      }

      v43 = v14->i32[1];
      v14->i64[0] = *v8;
      *(v8 + 1) = v43;
      v23 = v8 + 1;
      *v8 = v22;
      if ((*a3)(a2[-1].i64[1], *v8))
      {
        v22 = *v8;
        *v8 = a2[-1].i32[2];
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v28 = *v8;
      *v8 = a2[-1].i32[2];
      a2[-1].i32[2] = v28;
      v29 = *(v8 + 1);
      *(v8 + 1) = a2[-1].i32[3];
      a2[-1].i32[3] = v29;
      if ((*a3)(*v8, v14->i64[0]))
      {
        v30 = v14->i32[0];
        v14->i32[0] = *v8;
        *v8 = v30;
        v23 = &v14->i32[1];
        v31 = v8 + 1;
        goto LABEL_63;
      }
    }

LABEL_64:
    if ((a5 & 1) == 0 && ((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>)>(v8, a2, a3);
      v9 = result;
      goto LABEL_71;
    }

    v69 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>)>(v8, a2->i64, a3);
    if ((v70 & 1) == 0)
    {
      goto LABEL_69;
    }

    v71 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(v8, v69->i64, a3);
    v9 = &v69->i64[1];
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(&v69->i64[1], a2->i64, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v69;
      if (v71)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v71)
    {
LABEL_69:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,false>(v8, v69, a3, -v11, a5 & 1);
      v9 = &v69->i64[1];
LABEL_71:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,0>(v9, (v9 + 8), (v9 + 16), &a2[-1].i64[1], a3);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,0>(void *a1, void *a2, void *a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v13 = a1 + 4;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = a3 + 4;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = a2 + 4;
    v18 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v18;
    if ((*a5)(*a3, *a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = a2 + 4;
    v15 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v15;
    if ((*a5)(*a2, *a1))
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = a1 + 4;
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 4);
    *(a4 + 4) = v22;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v24;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = *(a1 + 1);
        *(a1 + 1) = *(a2 + 1);
        *(a2 + 1) = v26;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = HIDWORD(*v8);
          v13 = v7;
          while (1)
          {
            v14 = v4 + v13;
            v15 = *(v4 + v13 + 4);
            *(v14 + 8) = *(v4 + v13);
            *(v14 + 12) = v15;
            if (!v13)
            {
              break;
            }

            result = (*a3)(v11, *(v14 - 8));
            v13 -= 8;
            if ((result & 1) == 0)
            {
              v16 = (v4 + v13 + 8);
              goto LABEL_10;
            }
          }

          v16 = v4;
LABEL_10:
          *v16 = v11;
          v16[1] = v12;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = (result + 12);
      do
      {
        v9 = *v4;
        v8 = v4[1];
        v4 = v5;
        result = (*a3)(v8, v9);
        if (result)
        {
          v10 = *v4;
          v11 = v7;
          do
          {
            v12 = v11;
            v13 = *(v11 - 3);
            v14 = *(v11 - 2);
            v11 -= 2;
            *(v12 - 1) = v13;
            *v12 = v14;
            result = (*a3)(v10, *(v12 - 5));
          }

          while ((result & 1) != 0);
          *(v11 - 1) = v10;
        }

        v5 = v4 + 1;
        v7 += 2;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>)>(unint64_t a1, _DWORD *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = *(v7 + 8);
      v7 += 8;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 8;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      v9 += 8;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *(v4 - 1);
      v4 -= 2;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    v12 = *(v7 + 4);
    *(v7 + 4) = v4[1];
    v4[1] = v12;
    do
    {
      v13 = *(v7 + 8);
      v7 += 8;
    }

    while (!(*a3)(v6, v13));
    do
    {
      v14 = *(v4 - 1);
      v4 -= 2;
    }

    while (((*a3)(v6, v14) & 1) != 0);
  }

  if (v7 - 8 != a1)
  {
    *a1 = *(v7 - 8);
    *(a1 + 4) = *(v7 - 4);
  }

  *(v7 - 8) = v6;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (((*a3)(v11, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (!(*a3)(v10, v7));
  }

  v12 = &a1[v6];
  if (v9 < a2)
  {
    v13 = a2;
    do
    {
      v14 = *v12;
      *v12 = *v13;
      *v13 = v14;
      v15 = *(v12 + 1);
      *(v12 + 1) = *(v13 + 1);
      *(v13 + 1) = v15;
      do
      {
        v16 = v12[1];
        ++v12;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v13;
      }

      while (!(*a3)(v17, v7));
    }

    while (v12 < v13);
  }

  result = v12 - 1;
  if (v12 - 1 != a1)
  {
    *a1 = *(v12 - 2);
    *(a1 + 1) = *(v12 - 1);
  }

  *(v12 - 1) = v7;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(void *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (*a3)(a1[1], *a1);
      v12 = (*a3)(*(a2 - 1), a1[1]);
      if (v11)
      {
        v14 = a1 + 4;
        v13 = *a1;
        if (v12)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v26 = a1[1];
          *(a1 + 3) = *(a1 + 1);
          v14 = a1 + 12;
          *(a1 + 2) = v13;
          *a1 = v26;
          if (!(*a3)(*(a2 - 1), a1[1]))
          {
            return 1;
          }

          v13 = *(a1 + 2);
          *(a1 + 2) = *(a2 - 2);
        }

        *(a2 - 2) = v13;
        v22 = a2 - 4;
      }

      else
      {
        if (!v12)
        {
          return 1;
        }

        v20 = *(a1 + 2);
        *(a1 + 2) = *(a2 - 2);
        *(a2 - 2) = v20;
        v22 = a1 + 12;
        v21 = *(a1 + 3);
        *(a1 + 3) = *(a2 - 1);
        *(a2 - 1) = v21;
        if (!(*a3)(a1[1], *a1))
        {
          return 1;
        }

        v23 = *a1;
        *a1 = *(a1 + 2);
        *(a1 + 2) = v23;
        v14 = a1 + 4;
      }

      v27 = *v14;
      *v14 = *v22;
      *v22 = v27;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,0>(a1, a1 + 1, a1 + 2, (a1 + 3), a3);
        if ((*a3)(*(a2 - 1), a1[3]))
        {
          v9 = *(a1 + 6);
          *(a1 + 6) = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = *(a1 + 7);
          *(a1 + 7) = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)(a1[3], a1[2]))
          {
            *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            if ((*a3)(a1[2], a1[1]))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
              if ((*a3)(a1[1], *a1))
              {
                *a1 = vextq_s8(*a1, *a1, 8uLL);
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,0>(a1, a1 + 1, a1 + 2, (a2 - 1), a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = *(a1 + 1);
      *(a1 + 1) = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v15 = (*a3)(a1[1], *a1);
  v16 = a1 + 2;
  v17 = (*a3)(a1[2], a1[1]);
  if (v15)
  {
    v19 = a1 + 4;
    v18 = *a1;
    if (v17)
    {
      *a1 = *(a1 + 4);
    }

    else
    {
      v28 = a1[1];
      *(a1 + 3) = *(a1 + 1);
      v19 = a1 + 12;
      *(a1 + 2) = v18;
      *a1 = v28;
      if (!(*a3)(a1[2], a1[1]))
      {
        goto LABEL_35;
      }

      v18 = *(a1 + 2);
      *(a1 + 2) = *(a1 + 4);
    }

    *(a1 + 4) = v18;
    v24 = a1 + 20;
    goto LABEL_34;
  }

  if (v17)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1[1], *a1))
    {
      v24 = a1 + 12;
      v25 = *a1;
      *a1 = *(a1 + 2);
      *(a1 + 2) = v25;
      v19 = a1 + 4;
LABEL_34:
      v29 = *v19;
      *v19 = *v24;
      *v24 = v29;
    }
  }

LABEL_35:
  v30 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    if ((*a3)(*v30, *v16))
    {
      v33 = *v30;
      v34 = HIDWORD(*v30);
      v35 = v31;
      while (1)
      {
        v36 = a1 + v35;
        v37 = *(a1 + v35 + 20);
        *(v36 + 6) = *(a1 + v35 + 16);
        *(v36 + 7) = v37;
        if (v35 == -16)
        {
          break;
        }

        v35 -= 8;
        if (((*a3)(v33, *(v36 + 1)) & 1) == 0)
        {
          v38 = (a1 + v35 + 24);
          goto LABEL_43;
        }
      }

      v38 = a1;
LABEL_43:
      *v38 = v33;
      v38[1] = v34;
      if (++v32 == 8)
      {
        return v30 + 1 == a2;
      }
    }

    v16 = v30;
    v31 += 8;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(char *a1, char *a2, int *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[8 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = v12[1];
          v12[1] = *(a1 + 1);
          *(a1 + 1) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 8;
      do
      {
        v17 = *a1;
        v16 = *(a1 + 1);
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v17;
          *(v18 + 1) = v16;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 1) = *(v15 + 1);
          *v15 = v17;
          *(v15 + 1) = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(a1, (v18 + 8), a4, (v18 + 8 - a1) >> 3);
        }

        v15 -= 8;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        v18 = HIDWORD(*v5);
        do
        {
          v15 = v5;
          v5 = v12;
          *v15 = *v12;
          v15[1] = *(v12 + 1);
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          v17 = 2 * v11 + 2;
          if (v17 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = v17;
            }
          }

          result = (*a2)(*v12, v14);
          v11 = v16;
        }

        while (!result);
        *v5 = v14;
        *(v5 + 1) = v18;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(_DWORD *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = *(v8 + 2);
      v12 = v8 + 4;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1[1] = v9[1];
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      v11 = HIDWORD(*v9);
      do
      {
        v12 = v9;
        v9 = v8;
        *v12 = *v8;
        *(v12 + 1) = *(v8 + 1);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
      }

      while ((result & 1) != 0);
      *v9 = v10;
      *(v9 + 1) = v11;
    }
  }

  return result;
}

char *std::vector<TPItnResultHandle_fake **>::__insert_with_size[abi:ne200100]<TPItnResultHandle_fake ** const*,TPItnResultHandle_fake ** const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7;
      v7 += 8;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,TWord const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,false>(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(v9, (v9 + 16), a2 - 4);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(v9, (v9 + 16), (v9 + 32));
        v25 = *(a2 - 4);
        v26 = *(v9 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return result;
          }

          v28 = *(a2 - 1);
          v27 = *(v9 + 40);
          if (v28 >= v27)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v9 + 40);
          v28 = *(a2 - 1);
        }

        *(v9 + 32) = v25;
        *(a2 - 4) = v26;
        *(v9 + 40) = v28;
        *(a2 - 1) = v27;
        v29 = *(v9 + 32);
        v30 = *(v9 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return result;
          }

          v32 = *(v9 + 40);
          v31 = *(v9 + 24);
          if (v32 >= v31)
          {
            return result;
          }
        }

        else
        {
          v31 = *(v9 + 24);
          v32 = *(v9 + 40);
        }

        *(v9 + 16) = v29;
        *(v9 + 32) = v30;
        *(v9 + 24) = v32;
        *(v9 + 40) = v31;
        v33 = *v9;
        if (v29 >= *v9)
        {
          if (v33 < v29)
          {
            return result;
          }

          v34 = *(v9 + 8);
          if (v32 >= v34)
          {
            return result;
          }
        }

        else
        {
          v34 = *(v9 + 8);
        }

        *v9 = v29;
        *(v9 + 16) = v33;
        *(v9 + 8) = v32;
        *(v9 + 24) = v34;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 4);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,std::pair<int,TWord const*> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>((v9 + 16 * (v12 >> 1)), v9, a2 - 4);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(v9, (v9 + 16 * (v12 >> 1)), a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>((v9 + 16), (v14 - 16), a2 - 8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>((v9 + 32), (v9 + 16 + 16 * v13), a2 - 12);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>((v14 - 16), v14, (v9 + 16 + 16 * v13));
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v16 = *(v9 + 8);
      *(v9 + 8) = *(v14 + 8);
      *(v14 + 8) = v16;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = *(v9 - 16);
    if (v17 >= *v9 && (*v9 < v17 || *(v9 - 8) >= *(v9 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,TWord const*> *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,TWord const*> *,std::__less<void,void> &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(v9, v18);
    v9 = (v18 + 4);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>((v18 + 4), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = (v18 + 4);
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v21 = *(a2 - 4);
  v22 = *v9;
  if (v21 < *v9)
  {
    v23 = *(v9 + 8);
    v24 = *(a2 - 1);
LABEL_30:
    *v9 = v21;
    *(a2 - 4) = v22;
    *(v9 + 8) = v24;
    *(a2 - 1) = v23;
    return result;
  }

  if (v22 >= v21)
  {
    v24 = *(a2 - 1);
    v23 = *(v9 + 8);
    if (v24 < v23)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(int *a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 1) < *(a1 + 1))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 1);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 1);
      *(a1 + 1) = v6;
      *(a3 + 1) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 1);
      v16 = *(a2 + 1);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 1);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 1);
    *(a1 + 1) = v16;
    *(a2 + 1) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 1);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 1);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 1) = v19;
    result = 1;
    *(a3 + 1) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 1);
    v11 = *(a3 + 1);
LABEL_10:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 1) = v11;
    *(a3 + 1) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 1);
      v15 = *(a2 + 1);
LABEL_12:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 1) = v15;
      result = 1;
      *(a2 + 1) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 1);
      v14 = *(a1 + 1);
      if (v15 < v14)
      {
        goto LABEL_12;
      }
    }

    return 1;
  }

  if (v3 >= v9)
  {
    v11 = *(a3 + 1);
    v10 = *(a2 + 1);
    if (v11 < v10)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 1);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 1);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 1) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(int *result, int *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 4;
  if (result + 4 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = v5[4];
    v7 = *v5;
    if (v6 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_19;
      }

      v8 = *(v5 + 3);
      v9 = *(v5 + 1);
      if (v8 >= v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(v5 + 3);
      v9 = *(v5 + 1);
    }

    v5[4] = v7;
    *(v4 + 1) = v9;
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_18;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 16);
      if (v6 >= v12)
      {
        break;
      }

      v13 = *(result + v11 - 8);
LABEL_12:
      v5 -= 4;
      v14 = result + v11;
      *v14 = v12;
      *(v14 + 1) = v13;
      v11 -= 16;
      if (!v11)
      {
        v10 = result;
        goto LABEL_18;
      }
    }

    if (v12 >= v6)
    {
      v10 = (result + v11);
      v13 = *(result + v11 - 8);
      if (v8 >= v13)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v10 = v5;
LABEL_18:
    *v10 = v6;
    *(v10 + 1) = v8;
LABEL_19:
    v2 = v4 + 4;
    v3 += 16;
  }

  while (v4 + 4 != a2);
  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      for (i = result + 2; ; i += 4)
      {
        v4 = result;
        result = v2;
        v5 = v4[4];
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v6 >= v5)
        {
          v7 = *(v4 + 3);
          if (v7 < *(v4 + 1))
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 4;
        if (result + 4 == a2)
        {
          return result;
        }
      }

      v7 = *(v4 + 3);
LABEL_6:
      for (j = i; ; j -= 4)
      {
        j[2] = v6;
        *(j + 2) = *j;
        v6 = *(j - 6);
        if (v5 >= v6 && (v6 < v5 || v7 >= *(j - 2)))
        {
          break;
        }
      }

      *(j - 2) = v5;
      *j = v7;
      goto LABEL_14;
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,TWord const*> *,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a2 - 4);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 1))
  {
    i = a1;
    do
    {
      v7 = i[4];
      i += 4;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= *(i + 1)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 4; v2 < v4 || v4 >= v2 && v3 < *(a2 + 1); a2 -= 4)
    {
      v8 = *(a2 - 4);
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
      v11 = i[4];
      i += 4;
      v9 = v11;
      v12 = *(i - 1);
      *(i - 1) = *(a2 + 1);
      *(a2 + 1) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 1)))
      {
        v13 = i[4];
        i += 4;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 4);
          a2 -= 4;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 1));
    }

    while (i < a2);
  }

  if (i - 4 != a1)
  {
    *a1 = *(i - 4);
    *(a1 + 1) = *(i - 1);
  }

  *(i - 4) = v2;
  *(i - 1) = v3;
  return i;
}