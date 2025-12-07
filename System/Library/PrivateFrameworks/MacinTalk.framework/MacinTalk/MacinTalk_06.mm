void MTFEPlaceBoundaries::InsertBreak(MTFEPlaceBoundaries *this, float a2)
{
  if (*(this + 12))
  {
    if (kMTFEDebugBoundaries)
    {
      MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, byte_27F8F2B48);
      kMTFEDebugBoundaries = 0;
    }

    if (byte_27F8F2B48 == 1)
    {
    }

    if (a2 != 0.0 && *(this + 90) == 1)
    {
      *(*(this + 13) + 81) = 3;
    }

    operator new();
  }

  if (kMTFEDebugBoundaries)
  {
    MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, byte_27F8F2B48);
    kMTFEDebugBoundaries = 0;
  }

  if (byte_27F8F2B48 == 1)
  {
    fwrite("\nNo suitable location found for break.\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  *(this + 89) = 0;
}

void MTFEPlaceBoundaries::~MTFEPlaceBoundaries(MTFEPlaceBoundaries *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MEOWPPReader::MEOWPPReader(MEOWPPReader *this, MEOWReader *a2, int a3, unsigned int a4)
{
  v4 = *(*(a2 + 3808) + 12 * a3 + 4);
  v5 = *(a2 + 3809) + bswap32(*(*(a2 + 3808) + 12 * a3 + 8)) + 8 * a4;
  *this = &unk_2868F89B8;
  *(this + 1) = v5;
  *(this + 3) = *(a2 + 3810) + bswap32(v4);
  *(this + 4) = bswap32(*(v5 + 4));
  LOWORD(v4) = *v5 != 0;
  *(this + 20) = *v5 == 0;
  *(this + 11) = v4 << 15;
}

uint64_t MEOWPPReader::SegmentEnd(MEOWPPReader *this)
{
  v1 = *(this + 1);
  v2 = bswap32(*(v1 + 10)) >> 16;
  v3 = v2 > bswap32(*(v1 + 2)) >> 16;
  v4 = 1000000;
  if (v3)
  {
    v4 = v2;
  }

  return *(this + 3) + v4;
}

uint64_t MEOWPPReader::FindSegment(MEOWPPReader *this, unint64_t a2)
{
  v2 = 1000000;
  v3 = *(this + 1);
  v4 = bswap32(v3[5]) >> 16;
  v5 = *(this + 3);
  if (v4 > bswap32(v3[1]) >> 16)
  {
    while (v5 + v4 <= a2)
    {
      v6 = v3 + 4;
      *(this + 1) = v3 + 4;
      v4 = bswap32(v3[9]) >> 16;
      v7 = v4 > bswap32(v3[5]) >> 16;
      v3 += 4;
      if (!v7)
      {
        v3 = v6;
        goto LABEL_6;
      }
    }

    v2 = v4;
  }

LABEL_6:
  v8 = *v3;
  v9 = v8 == 0;
  v10 = v8 != 0;
  v11 = v9;
  *(this + 20) = v11;
  *(this + 11) = v10 << 15;
  return v5 + v2;
}

void MEOWFlatPPReader::MEOWFlatPPReader(MEOWFlatPPReader *this, MEOWReader *a2, int a3, unsigned int a4)
{
  v4 = *(*(a2 + 3808) + 12 * a3 + 4);
  v5 = *(a2 + 3809) + bswap32(*(*(a2 + 3808) + 12 * a3 + 8)) + 8 * a4;
  *(this + 1) = v5;
  v6 = *(a2 + 3810) + bswap32(v4);
  *(this + 3) = v6;
  *(this + 4) = bswap32(*(v5 + 4));
  v7 = *v5 != 0;
  *(this + 20) = *v5 == 0;
  *(this + 11) = v7 << 15;
  *this = &unk_2868F8A10;
  v8 = bswap32(*(v5 + 2));
  v9 = bswap32(*(v5 + 10)) >> 16;
  if (v9 <= HIWORD(v8))
  {
    v9 = 1000000;
  }

  *(this + 4) = v6 + HIWORD(v8);
  *(this + 5) = v6 + v9;
}

MEOWPPReader *MEOWFlatPPReader::Skip(MEOWPPReader *this, int a2)
{
  v2 = *(this + 5);
  v3 = *(this + 4) + 2 * a2;
  *(this + 4) = v3;
  if (v3 >= v2)
  {
    v4 = this;
    this = MEOWPPReader::FindSegment(this, v3);
    *(v4 + 5) = this;
  }

  return this;
}

uint64_t MEOWFlatPPReader::Advance(uint64_t this, int a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (a2 >= 1)
  {
    v5 = *(this + 16);
    v6 = 2 * (a2 - 1);
    v7 = a2 + 1;
    v8 = *(this + 32);
    do
    {
      v9 = *v8++;
      v5 += bswap32(v9) >> 16;
      --v7;
    }

    while (v7 > 1);
    v4 += v6 + 2;
    *(this + 16) = v5;
  }

  *(this + 32) = v4;
  if (v4 >= *(this + 40))
  {
    this = MEOWPPReader::FindSegment(this, v4);
    *(v3 + 40) = this;
  }

  return this;
}

uint64_t MEOWFlatPPReader::Copy(uint64_t result, int a2, MEOWVectorBase *this)
{
  if (a2 >= 1)
  {
    v4 = result;
    v5 = a2 + 1;
    do
    {
      v6 = *(v4 + 32);
      v7 = *v6;
      *(v4 + 32) = v6 + 1;
      LODWORD(v6) = bswap32(v7);
      *(v4 + 16) += v6 >> 16;
      v8 = *(v4 + 22) | (v6 >> 16);
      result = MEOWVectorBase::Append(this);
      *(*this + 2 * *(this + 2) - 2) = v8;
      v9 = *(v4 + 32);
      if (v9 >= *(v4 + 40))
      {
        result = MEOWPPReader::FindSegment(v4, v9);
        *(v4 + 40) = result;
      }

      --v5;
    }

    while (v5 > 1);
  }

  return result;
}

uint64_t MEOWFlatPPReader::CopyTill(uint64_t result, unint64_t a2, MEOWVectorBase *this)
{
  v4 = *(result + 32);
  if (v4 < a2)
  {
    v6 = result;
    do
    {
      v8 = *v4;
      v7 = v8;
      *(v6 + 32) = v4 + 1;
      if (!v8)
      {
        break;
      }

      v9 = bswap32(v7);
      *(v6 + 16) += HIWORD(v9);
      v10 = *(v6 + 22) | HIWORD(v9);
      result = MEOWVectorBase::Append(this);
      *(*this + 2 * *(this + 2) - 2) = v10;
      v4 = *(v6 + 32);
      if (v4 >= *(v6 + 40))
      {
        result = MEOWPPReader::FindSegment(v6, v4);
        *(v6 + 40) = result;
        v4 = *(v6 + 32);
      }
    }

    while (v4 < a2);
  }

  return result;
}

uint64_t MEOWFlatPPReader::CopyLeftContext(uint64_t a1, MEOWVectorBase *this)
{
  if (*(a1 + 20) == 1 && (v4 = *(a1 + 32), v4 - *(a1 + 24) - (bswap32(*(*(a1 + 8) + 2)) >> 16) >= 5))
  {
    v5 = bswap32(*(v4 - 6)) >> 16;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v5;
    v6 = bswap32(*(*(a1 + 32) - 4)) >> 16;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v6;
    v7 = bswap32(*(*(a1 + 32) - 2)) >> 16;
    MEOWVectorBase::Append(this);
    result = 1;
  }

  else
  {
    MEOWVectorBase::Append(this);
    result = 0;
    LOWORD(v7) = -32438;
  }

  *(*this + 2 * *(this + 2) - 2) = v7;
  return result;
}

uint64_t MEOWFlatPPReader::CopyRightContext(uint64_t a1, MEOWVectorBase *this)
{
  if (*(a1 + 20) != 1)
  {
    goto LABEL_9;
  }

  v3 = *(this + 2);
  if (v3 < 3)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 32);
  if ((*(a1 + 40) - v5) < 5)
  {
    goto LABEL_9;
  }

  v6 = *this + 2 * v3;
  v7 = (v6 - 6);
  if (v6 < 6)
  {
    goto LABEL_8;
  }

  LOWORD(v8) = 0;
  do
  {
    v9 = *v7++;
    v8 = (v9 | v8);
  }

  while (v7 < v6);
  if (v8 < 0)
  {
LABEL_9:
    MEOWVectorBase::Append(this);
    result = 0;
    LOWORD(v12) = -32438;
  }

  else
  {
LABEL_8:
    v10 = bswap32(*v5) >> 16;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v10;
    v11 = bswap32(*(*(a1 + 32) + 2)) >> 16;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v11;
    v12 = bswap32(*(*(a1 + 32) + 4)) >> 16;
    MEOWVectorBase::Append(this);
    result = 1;
  }

  *(*this + 2 * *(this + 2) - 2) = v12;
  return result;
}

void MEOWEncodedPPReader::MEOWEncodedPPReader(MEOWEncodedPPReader *this, MEOWReader *a2, int a3, unsigned int a4)
{
  v4 = *(*(a2 + 3808) + 12 * a3 + 4);
  v5 = *(a2 + 3809) + bswap32(*(*(a2 + 3808) + 12 * a3 + 8)) + 8 * a4;
  *(this + 1) = v5;
  v6 = *(a2 + 3810) + bswap32(v4);
  *(this + 3) = v6;
  *(this + 4) = bswap32(*(v5 + 4));
  v7 = *v5 != 0;
  *(this + 20) = *v5 == 0;
  *(this + 11) = v7 << 15;
  *this = &unk_2868F8A68;
  v8 = bswap32(*(v5 + 2));
  v9 = bswap32(*(v5 + 10)) >> 16;
  if (v9 <= HIWORD(v8))
  {
    v9 = 1000000;
  }

  *(this + 4) = v6 + HIWORD(v8);
  *(this + 5) = v6 + v9;
}

MEOWPPReader *MEOWEncodedPPReader::Skip(MEOWPPReader *this, int a2)
{
  v3 = this;
  v4 = *(this + 4);
  if (a2 >= 1)
  {
    do
    {
      v5 = (v4 + 1);
      do
      {
        *(this + 4) = v5;
        v6 = *v5++;
      }

      while (v6 < 0);
      v4 = (v5 - 1);
      v7 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v7 | (a2 == 0)));
  }

  if (v4 >= *(this + 5))
  {
    this = MEOWPPReader::FindSegment(this, v4);
    *(v3 + 5) = this;
  }

  return this;
}

uint64_t MEOWEncodedPPReader::Advance(uint64_t this, int a2)
{
  v2 = this;
  if (a2 <= 0)
  {
    v3 = *(this + 32);
  }

  else
  {
    v3 = *(this + 32);
    v4 = *(this + 16);
    do
    {
      v5 = 0;
      v6 = (v3 + 1);
      do
      {
        *(this + 32) = v6;
        v7 = *(v6 - 1) & 0x7F | (v5 << 7);
        v8 = *v6++;
        v5 = v7;
      }

      while (v8 < 0);
      v3 = (v6 - 1);
      v4 += v7;
      *(this + 16) = v4;
      v9 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v9 | (a2 == 0)));
  }

  if (v3 >= *(this + 40))
  {
    this = MEOWPPReader::FindSegment(this, v3);
    *(v2 + 40) = this;
  }

  return this;
}

uint64_t MEOWEncodedPPReader::Copy(uint64_t result, int a2, MEOWVectorBase *this)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = 0;
      v7 = (*(v5 + 32) + 1);
      do
      {
        *(v5 + 32) = v7;
        v8 = *(v7 - 1) & 0x7F | (v6 << 7);
        v9 = *v7++;
        v6 = v8;
      }

      while (v9 < 0);
      *(v5 + 16) += v8;
      v10 = *(v5 + 22) | v8;
      result = MEOWVectorBase::Append(this);
      *(*this + 2 * *(this + 2) - 2) = v10;
      v11 = *(v5 + 32);
      if (v11 >= *(v5 + 40))
      {
        result = MEOWPPReader::FindSegment(v5, v11);
        *(v5 + 40) = result;
      }
    }

    while (v4-- > 1);
  }

  return result;
}

uint64_t MEOWEncodedPPReader::CopyTill(uint64_t result, unint64_t a2, MEOWVectorBase *this)
{
  v4 = *(result + 32);
  if (v4 < a2)
  {
    v6 = result;
    v7 = 0;
    do
    {
      do
      {
        *(v6 + 32) = v4 + 1;
        v8 = *v4 & 0x7F | (v7 << 7);
        v9 = *++v4;
        v7 = v8;
      }

      while (v9 < 0);
      if (!v8)
      {
        break;
      }

      *(v6 + 16) += v8;
      v10 = *(v6 + 22) | v8;
      result = MEOWVectorBase::Append(this);
      *(*this + 2 * *(this + 2) - 2) = v10;
      v4 = *(v6 + 32);
      if (v4 >= *(v6 + 40))
      {
        result = MEOWPPReader::FindSegment(v6, v4);
        *(v6 + 40) = result;
        v4 = *(v6 + 32);
      }

      v7 = 0;
    }

    while (v4 < a2);
  }

  return result;
}

uint64_t MEOWEncodedPPReader::CopyLeftContext(uint64_t a1, MEOWVectorBase *this)
{
  if (*(a1 + 20) != 1)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 24) + (bswap32(*(*(a1 + 8) + 2)) >> 16);
  if ((v3 - v4) < 3)
  {
    goto LABEL_10;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *--v3;
    v5 |= (v7 & 0x7F) << v6;
    v6 += 7;
  }

  while (v7 < 0);
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *--v3;
    v8 |= (v10 & 0x7F) << v9;
    v9 += 7;
  }

  while (v10 < 0);
  v11 = 0;
  v12 = 0;
  do
  {
    v13 = *--v3;
    v11 |= (v13 & 0x7F) << v12;
    v12 += 7;
  }

  while (v13 < 0);
  if (v3 >= v4)
  {
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v11;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v8;
    MEOWVectorBase::Append(this);
    result = 1;
  }

  else
  {
LABEL_10:
    MEOWVectorBase::Append(this);
    result = 0;
    LOWORD(v5) = -32438;
  }

  *(*this + 2 * *(this + 2) - 2) = v5;
  return result;
}

uint64_t MEOWEncodedPPReader::CopyRightContext(uint64_t a1, MEOWVectorBase *this)
{
  if (*(a1 + 20) != 1)
  {
    goto LABEL_17;
  }

  v3 = *(this + 2);
  if (v3 < 3)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  v5 = bswap32(*(v4 + 10)) >> 16;
  if (v5 <= bswap32(*(v4 + 2)) >> 16)
  {
    v5 = 1000000;
  }

  v6 = *(a1 + 32);
  if (*(a1 + 24) + v5 - v6 < 3)
  {
    goto LABEL_17;
  }

  v7 = *this + 2 * v3;
  v8 = (v7 - 6);
  if (v7 >= 6)
  {
    LOWORD(v9) = 0;
    do
    {
      v10 = *v8++;
      v9 = (v10 | v9);
    }

    while (v8 < v7);
    if (v9 < 0)
    {
      goto LABEL_17;
    }
  }

  v11 = 0;
  v12 = *v6;
  do
  {
    v13 = *++v6;
    v11 = v12 & 0x7F | (v11 << 7);
    v12 = v13;
  }

  while (v13 < 0);
  v14 = 0;
  do
  {
    v15 = *++v6;
    v14 = v12 & 0x7F | (v14 << 7);
    v12 = v15;
  }

  while (v15 < 0);
  v16 = 0;
  do
  {
    v17 = *++v6;
    v16 = v12 & 0x7F | (v16 << 7);
    v12 = v17;
  }

  while (v17 < 0);
  if (v6 <= *(a1 + 40))
  {
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v11;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v14;
    MEOWVectorBase::Append(this);
    result = 1;
  }

  else
  {
LABEL_17:
    MEOWVectorBase::Append(this);
    result = 0;
    v16 = -32438;
  }

  *(*this + 2 * *(this + 2) - 2) = v16;
  return result;
}

void MTMBUnitInstructions::MTMBUnitInstructions(MTMBUnitInstructions *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void MTMBUnitInstructions::~MTMBUnitInstructions(MTMBUnitInstructions *this)
{
  v2 = *this;
  if (v2)
  {
    do
    {
      v3 = *v2;
      MEMORY[0x259C6DA90]();
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    do
    {
      v5 = *v4;
      MEMORY[0x259C6DA90]();
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    do
    {
      v7 = *v6;
      MEMORY[0x259C6DA90]();
      v6 = v7;
    }

    while (v7);
  }
}

void MTMBUnitInstructions::DeleteQueue(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      MEMORY[0x259C6DA90]();
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *MTMBUnitInstructions::AddCommand(uint64_t *this, MTFECommand *a2)
{
  var8 = a2->var8;
  switch(var8)
  {
    case 0x6D666F72uLL:
LABEL_6:
      MTMBUnitInstructions::AddToQueue(this, this, HIWORD(LODWORD(a2->var9)) & 0x7FFF, a2->var9);
    case 0x6D766574uLL:
      ++this;
      goto LABEL_6;
    case 0x6D6F7672uLL:
      this += 2;
      goto LABEL_6;
  }

  return this;
}

void MTMBUnitInstructions::AddToQueue(uint64_t a1, uint64_t *a2, unsigned __int16 a3, __int16 a4)
{
  for (i = *a2; i; *a2 = i)
  {
    v6 = *(i + 8);
    if (v6 > a3)
    {
      break;
    }

    a3 -= v6;
    i = *i;
  }

  operator new();
}

uint64_t *MTMBUnitInstructions::NextSlice(uint64_t **this)
{
  v2 = MTMBUnitInstructions::AdvanceQueue(this, this);
  v3 = MTMBUnitInstructions::AdvanceQueue(v2, this + 2);

  return MTMBUnitInstructions::AdvanceQueue(v3, this + 1);
}

uint64_t *MTMBUnitInstructions::AdvanceQueue(uint64_t a1, uint64_t **a2)
{
  result = *a2;
  if (*a2)
  {
    while (!*(result + 4))
    {
      v4 = *result;
      MEMORY[0x259C6DA90]();
      *a2 = v4;
      result = v4;
      if (!v4)
      {
        return result;
      }
    }

    --*(result + 4);
  }

  return result;
}

uint64_t MTMBUnitInstructions::ReadyInQueue(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  result = *a2;
  if (*a2)
  {
    if (*(result + 8))
    {
      return 0;
    }

    else
    {
      v5 = *result;
      *a3 = *(result + 10);
      MEMORY[0x259C6DA90]();
      *a2 = v5;
      return 1;
    }
  }

  return result;
}

MTFESpeechElement *MTFEQuestionPhrasing::VisitSentence(MTFEQuestionPhrasing *this, MTFESpeechElement *a2)
{
  *(this + 1) = a2;
  *(this + 17) = 1;
  return MTFESpeechElement::VisitChildren(a2, this);
}

MTFESpeechElement *MTFEQuestionPhrasing::VisitIntonationalPhrase(MTFEQuestionPhrasing *this, MTFESpeechElement *a2)
{
  *(this + 19) = BYTE4(a2[2].var6) != 0;
  if (*(this + 17) == 1)
  {
    *(this + 16) = 1;
    *(this + 20) = 0;
  }

  *(this + 18) = 0;
  result = MTFESpeechElement::VisitChildren(a2, this);
  *(this + 17) = *(this + 18);
  return result;
}

unsigned __int8 *MTFEQuestionPhrasing::VisitWord(MTFEQuestionPhrasing *this, MTFEWord *a2)
{
  var15 = a2->var15;
  result = a2->var6;
  if (result)
  {
    if (result)
    {
      v6 = 1 << var15;
      if (var15 == 255)
      {
        LOWORD(v6) = 0;
      }

      v7 = var15 == 31 || result[86] == 31;
      if (!v7 && *(this + 17) == 1)
      {
        var7 = a2->var7;
        if (var7)
        {
          if (var7->var7 || *(this + 20) != 1 || (v6 & 0x1400) == 0)
          {
            return result;
          }

LABEL_27:
          *(this + 16) = 0;
          return result;
        }

        if (var15 == 12)
        {
          goto LABEL_27;
        }

        if ((v6 & 0x480) != 0)
        {
          *(this + 20) = 1;
        }
      }
    }
  }

  else if (var15 == 31)
  {
    result = a2->var3;
    {
      v9 = result[58];
    }

    else
    {
      v9 = 70;
    }

    if ((*(this + 16) & 1) == 0 && (*(this + 19) & 1) == 0 && v9 == 71)
    {
      result[58] = 70;
      a2->var11 = 6;
      *(*(this + 1) + 56) |= 0x20u;
    }

    *(this + 18) = v9 == 69;
  }

  return result;
}

void MTFEQuestionPhrasing::~MTFEQuestionPhrasing(MTFEQuestionPhrasing *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFEMelodize::VisitIntonationalPhrase(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  var6 = a2[3].var6;
  *&this->var1 = var6;
  if (var6)
  {
    LOWORD(this->var3) = 0;
    HIDWORD(this->var3) = 0;
    LODWORD(this->var4) = 0;
    return MTFESpeechElement::VisitChildren(a2, this);
  }

  return this;
}

MTFESpeechElement *MTFEMelodize::VisitWord(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  if ((a2[1].var0 & 0x40) == 0)
  {
    v3 = this;
    *(&this->var4 + 1) = *(&a2[3].var2 + 1);
    var3_low = SLOWORD(this->var3);
    if (SWORD2(a2[1].var0) > var3_low && var3_low != 0)
    {
      if (var3_low >= 1)
      {
        do
        {
          v6 = MTFEMelody::Pitch(*&v3->var1, var3_low - 1);
          LOWORD(var3_low) = v3->var3;
          if (v6 != 0.0)
          {
            break;
          }

          v7 = var3_low - 1;
          var3_low = (var3_low - 1);
          LOWORD(v3->var3) = v7;
        }

        while (var3_low > 0);
      }

      v8 = LODWORD(v3->var4) + var3_low;
      v9 = HIDWORD(v3->var3) - v8;
      MTFEMelody::SplitNote(*&v3->var1, v8 - 1, v9 + 1);
      LODWORD(v3->var4) += v9;
    }

    var3_high = SHIDWORD(v3->var3);
    v11 = *&v3->var1;
    if (*(v11 + 16) > var3_high && MTFEMelody::Pitch(v11, var3_high) == 0.0)
    {
      MTFEMelody::DurationFrames(*&v3->var1, SHIDWORD(v3->var3), *(&v3->var4 + 1));
      operator new();
    }

    v12 = WORD2(a2[1].var0);
    LOWORD(v3->var3) = v12;
    WORD2(a2[1].var0) = v12 + LOWORD(v3->var4);

    return MTFESpeechElement::VisitChildren(a2, v3);
  }

  return this;
}

void MTFEMelodize::VisitSyllable(MTFEMelodize *this, unint64_t a2)
{
  v3 = *(this + 5);
  v4 = *(this + 1);
  v5 = v3;
  if (*(v4 + 16) > v3)
  {
    v6 = MTFEMelody::Pitch(v4, v3);
    v5 = *(this + 5);
    if (v6 == 0.0)
    {
      MTFEMelody::DurationFrames(*(this + 1), v5, *(this + 7));
      operator new();
    }
  }

  *(this + 5) = v5 + 1;
}

void MTFEMelodize::~MTFEMelodize(MTFEMelodize *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEMelody::MTFEMelody(MTFEMelody *this)
{
  MEOWVectorBase::MEOWVectorBase(this, 4);
  *(v1 + 32) = xmmword_257B96290;
  *(v1 + 48) = 0x100000000;
  *(v1 + 56) = 0;
}

{
  MEOWVectorBase::MEOWVectorBase(this, 4);
  *(v1 + 32) = xmmword_257B96290;
  *(v1 + 48) = 0x100000000;
  *(v1 + 56) = 0;
}

MTFEMelody *MTFEMelody::SetSwing(MTFEMelody *this, unsigned int a2)
{
  if (a2 == -65536)
  {
    v4 = -65536;
  }

  else
  {
    v2 = a2;
    v3 = a2 + 0x10000;
    do
    {
      v4 = v3;
      v3 = v2 % v3;
      v2 = v4;
    }

    while (v3);
  }

  v5 = 2 * (a2 / v4);
  v6 = (a2 + 0x10000) / v4;
  v7 = v5 - v6;
  v8 = 2 * v6;
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10;
      v10 = v9 % v10;
      v9 = v11;
    }

    while (v10);
  }

  else
  {
    v11 = v7;
  }

  *(this + 8) = v7 / v11;
  *(this + 9) = v8 / v11;
  return this;
}

unsigned __int8 *MTFEMelody::AddNotes(MTFEMelody *this, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  result = CFDataGetBytePtr(theData);
  if ((Length + 2) >= 5)
  {
    v6 = result;
    v7 = 0;
    if ((Length / 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = Length / 3;
    }

    do
    {
      if (*v6)
      {
        v9 = (*v6 + *(this + 56)) << 24;
      }

      else
      {
        v9 = 0;
      }

      v10 = v6[1];
      v11 = (4 * v10);
      v12 = v6[2];
      v13 = *(this + 10);
      if (v13)
      {
        v14 = 8 * v10;
        if (v13 < 1 || v14 >= v12)
        {
          v16 = *(this + 11);
          v17 = v16 * v11 - v13 * v12;
          v18 = v16 * v12;
          if (v18)
          {
            v19 = v17;
            v20 = v18;
            do
            {
              v21 = v20;
              v20 = v19 % v20;
              v19 = v21;
            }

            while (v20);
          }

          else
          {
            v21 = v17;
          }

          v11 = v17 / v21;
          v12 = v18 / v21;
        }

        else
        {
          v22 = *this + 4 * *(this + 2);
          v23 = *(this + 11);
          v24 = ((*(v22 - 4) >> 12) & 0xFFF) * v23 - (*(v22 - 4) & 0xFFF) * v13;
          v25 = (*(v22 - 4) & 0xFFF) * v23;
          if (v25)
          {
            v26 = v24;
            v27 = v25;
            do
            {
              v28 = v27;
              v27 = v26 % v27;
              v26 = v28;
            }

            while (v27);
          }

          else
          {
            v28 = v24;
          }

          *(v22 - 4) = *(v22 - 4) & 0xFF000000 | ((v24 / v28) << 12) | (v25 / v28);
        }
      }

      add(v11, v12, this + 12, this + 13);
      v29 = *(this + 8);
      if (v29 && *(this + 13) == 2)
      {
        v30 = *(this + 9);
        if (v30 * v12)
        {
          v31 = v29 * v12 + v30 * v11;
          v32 = v30 * v12;
          do
          {
            v33 = v32;
            v32 = v31 % v32;
            v31 = v33;
          }

          while (v32);
        }

        else
        {
          v33 = v29 * v12 + v30 * v11;
        }

        v37 = (v29 * v12 + v30 * v11) / v33;
        v38 = v30 * v12 / v33;
        add(v29, v30, this + 12, this + 13);
        *(this + 5) = *(this + 4);
      }

      else
      {
        *(this + 10) = 0;
        v34 = v11;
        if (v12)
        {
          v35 = v11;
          v36 = v12;
          do
          {
            v34 = v36;
            v36 = v35 % v36;
            v35 = v34;
          }

          while (v36);
        }

        v37 = v11 / v34;
        v38 = v12 / v34;
      }

      v6 += 3;
      result = MEOWVectorBase::Append(this);
      *(*this + 4 * *(this + 2) - 4) = v9 | (v37 << 12) | v38;
      ++v7;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t add(uint64_t result, int a2, unsigned int *a3, unsigned int *a4)
{
  *a3 = *a3 * a2 + *a4 * result;
  v4 = *a4 * a2;
  *a4 = v4;
  if (v4)
  {
    v5 = *a3;
    do
    {
      v6 = v4;
      v4 = v5 % v4;
      v5 = v6;
    }

    while (v4);
  }

  else
  {
    v6 = *a3;
  }

  *a3 /= v6;
  *a4 /= v6;
  return result;
}

float MTFEMelody::Pitch(MTFEMelody *this, uint64_t a2)
{
  result = 0.0;
  v3 = HIBYTE(*(*this + 4 * a2));
  if (v3)
  {
    return expf(((v3 - 69) / 12.0) * 0.69315) * 440.0;
  }

  return result;
}

uint64_t MTFEMelody::SilenceSamples(MTFEMelody *this, uint64_t a2, float a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v5 = 0;
  v6 = *this - 4;
  do
  {
    v7 = *(v6 + 4 * v4);
    if (HIBYTE(v7) && (expf(((HIBYTE(v7) - 69) / 12.0) * 0.69315) * 440.0) >= 0.00000001)
    {
      break;
    }

    v5 = (v5 + ((((((v7 >> 12) & 0xFFF) / (v7 & 0xFFF)) * 1323000.0) / a3) + 0.5));
    --v4;
  }

  while (v4);
  return v5;
}

MTFEMelody *MTFEMelody::SplitNote(MTFEMelody *this, unint64_t a2, unsigned int a3)
{
  v5 = this;
  if (a3 < 2)
  {
    if (a3 != 1)
    {
      v15 = *(this + 2);
      v16 = 1 - a3;
      v17 = (*this + 4 * a2);
      v18 = (*v17 >> 12) & 0xFFF;
      v19 = *v17 & 0xFFF;
      if (a3)
      {
        v20 = 2;
        if (v16 > 2)
        {
          v20 = 1 - a3;
        }

        v21 = 1;
        do
        {
          v22 = v17[v21] & 0xFFF;
          v23 = v22 * v18 + ((v17[v21] >> 12) & 0xFFF) * v19;
          v24 = v22 * v19;
          if (v24)
          {
            v25 = v23;
            v26 = v24;
            do
            {
              v27 = v26;
              v26 = v25 % v26;
              v25 = v27;
            }

            while (v26);
          }

          else
          {
            v27 = v23;
          }

          v18 = v23 / v27;
          ++v21;
          v19 = v24 / v27;
        }

        while (v21 != v20);
      }

      *v17 = *v17 & 0xFF000000 | (v18 << 12) | v19;
      v28 = (v17 + 1);

      return memmove(v28, &v28[4 * v16], 4 * (v15 - (v16 + a2)));
    }
  }

  else
  {
    v6 = a3 - 1;
    v7 = *(this + 2);
    v8 = v7 + v6;
    if (*(this + 3) < (v7 + v6))
    {
      MEOWVectorBase::Allocate(this, v7 + v6, 1);
    }

    *(v5 + 2) = v8;
    v9 = a2 + a3;
    this = memmove((*v5 + 4 * v9), (*v5 + 4 * (a2 + 1)), 4 * (v7 - (a2 + 1)));
    v10 = *(*v5 + 4 * a2);
    v11 = (v10 & 0xFFF) * a3;
    if (v11)
    {
      v12 = (v10 >> 12) & 0xFFF;
      v13 = (*(*v5 + 4 * a2) & 0xFFF) * a3;
      do
      {
        v14 = v13;
        v13 = v12 % v13;
        v12 = v14;
      }

      while (v13);
    }

    else
    {
      v14 = (v10 >> 12) & 0xFFF;
    }

    if (v9 > a2)
    {
      v29 = 0;
      v30 = v10 & 0xFF000000 | ((((v10 >> 12) & 0xFFF) / v14) << 12) | (v11 / v14);
      v31 = vdupq_n_s64(a3 - 1);
      v32 = (*v5 + 4 * a2 + 8);
      do
      {
        v33 = vdupq_n_s64(v29);
        v34 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_257B895F0)));
        if (vuzp1_s16(v34, *v31.i8).u8[0])
        {
          *(v32 - 2) = v30;
        }

        if (vuzp1_s16(v34, *&v31).i8[2])
        {
          *(v32 - 1) = v30;
        }

        if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_257B895E0)))).i32[1])
        {
          *v32 = v30;
          v32[1] = v30;
        }

        v29 += 4;
        v32 += 4;
      }

      while (((a3 + 3) & 0xFFFFFFFC) != v29);
    }
  }

  return this;
}

void MTFEPitchCoeffs::MTFEPitchCoeffs(MTFEPitchCoeffs *this, const __CFDictionary *a2)
{
  MTFEPitchCoeffs::Initialize(this);
  SetFloatCoeff(a2, @"BackupHighPhraseProm", this);
  SetFloatCoeff(a2, @"BackupLowPhraseProm", this + 1);
  SetIntCoeff(a2, @"ClosestPhraseAccentHigh", this + 2);
  SetIntCoeff(a2, @"ClosestPhraseAccentLow", this + 3);
  SetFloatCoeff(a2, @"CommaBoundary", this + 4);
  SetFloatCoeff(a2, @"DownsteppedHighStarLegIntercept", this + 5);
  SetFloatCoeff(a2, @"DownsteppedHighStarLegSlope", this + 6);
  SetFloatCoeff(a2, @"ExclamBoundary", this + 7);
  SetFloatCoeff(a2, @"ExclamLastAccentProm", this + 8);
  SetFloatCoeff(a2, @"ExplicitAccentProm", this + 9);
  SetIntCoeff(a2, @"FinalLoweringDuration", this + 10);
  SetFloatCoeff(a2, @"FinalLoweringRatio", this + 11);
  SetFloatCoeff(a2, @"FirstAccentProm", this + 12);
  SetFloatCoeff(a2, @"FirstAccentPromForTwoAccentsPhrase", this + 13);
  SetFloatCoeff(a2, @"HighAlternatingProm", this + 14);
  SetFloatCoeff(a2, @"HighFinalBoundaryProm", this + 15);
  SetIntCoeff(a2, @"HighFinalBoundaryWidth", this + 16);
  SetFloatCoeff(a2, @"HighPlusDownstepIntercept", this + 17);
  SetFloatCoeff(a2, @"HighPlusDownstepSlope", this + 18);
  SetIntCoeff(a2, @"HighPlusDownsteppedHighStarWidth", this + 19);
  SetFloatCoeff(a2, @"HighPlusIntercept", this + 20);
  SetIntCoeff(a2, @"HighPlusLowStarWidth", this + 21);
  SetFloatCoeff(a2, @"HighPlusSlope", this + 22);
  SetFloatCoeff(a2, @"HighStarLegIntercept", this + 23);
  SetFloatCoeff(a2, @"HighStarLegSlope", this + 24);
  SetIntCoeff(a2, @"HighStarWidth", this + 25);
  SetIntCoeff(a2, @"IntermediateNuclearTail", this + 26);
  SetIntCoeff(a2, @"IntonationalNuclearTail", this + 27);
  SetFloatCoeff(a2, @"LastAccentProm", this + 28);
  SetFloatCoeff(a2, @"LongURLBoost", this + 29);
  SetFloatCoeff(a2, @"LowAlternatingProm", this + 30);
  SetIntCoeff(a2, @"LowPhraseAccentRecoverSlopeWidth", this + 31);
  SetIntCoeff(a2, @"LowPlusHighStarWidth", this + 32);
  SetFloatCoeff(a2, @"LowPlusIntercept", this + 33);
  SetFloatCoeff(a2, @"LowPlusSlope", this + 34);
  SetIntCoeff(a2, @"LowPlusWidth", this + 35);
  SetFloatCoeff(a2, @"LowStarLegIntercept", this + 36);
  SetFloatCoeff(a2, @"LowStarLegSlope", this + 37);
  SetIntCoeff(a2, @"LowStarPlusHighWidth", this + 38);
  SetIntCoeff(a2, @"LowStarPlusLegDelay", this + 39);
  SetFloatCoeff(a2, @"LowStarPlusLegIntercept", this + 40);
  SetFloatCoeff(a2, @"LowStarPlusLegSlope", this + 41);
  SetIntCoeff(a2, @"LowStarWidth", this + 42);
  SetFloatCoeff(a2, @"NonQuestPhraseProm", this + 43);
  SetFloatCoeff(a2, @"ParagraphInitialBoost", this + 44);
  SetFloatCoeff(a2, @"ParagraphRangePhrasalDownStep", this + 45);
  SetFloatCoeff(a2, @"ParenBoost", this + 46);
  SetFloatCoeff(a2, @"PeriodBoundary", this + 47);
  SetFloatCoeff(a2, @"PerturbConsNoStress", this + 48);
  SetFloatCoeff(a2, @"PerturbConsPrimaryStress", this + 49);
  SetFloatCoeff(a2, @"PerturbConsSecondaryStress", this + 50);
  SetFloatCoeff(a2, @"PerturbHClosureIntercept", this + 51);
  SetFloatCoeff(a2, @"PerturbHClosureSlope", this + 52);
  SetFloatCoeff(a2, @"PerturbHReleaseIntercept", this + 53);
  SetFloatCoeff(a2, @"PerturbHReleaseSlope", this + 54);
  SetIntCoeff(a2, @"PerturbPostConsFrames", this + 55);
  SetIntCoeff(a2, @"PerturbPreConsFrames", this + 56);
  SetFloatCoeff(a2, @"PerturbSonorClosureIntercept", this + 57);
  SetFloatCoeff(a2, @"PerturbSonorClosureSlope", this + 58);
  SetFloatCoeff(a2, @"PerturbSonorReleaseIntercept", this + 59);
  SetFloatCoeff(a2, @"PerturbSonorReleaseSlope", this + 60);
  SetFloatCoeff(a2, @"PerturbUObstClosureIntercept", this + 61);
  SetFloatCoeff(a2, @"PerturbUObstClosureSlope", this + 62);
  SetFloatCoeff(a2, @"PerturbUObstReleaseIntercept", this + 63);
  SetFloatCoeff(a2, @"PerturbUObstReleaseSlope", this + 64);
  SetFloatCoeff(a2, @"PerturbVObstClosureIntercept", this + 65);
  SetFloatCoeff(a2, @"PerturbVObstClosureSlope", this + 66);
  SetFloatCoeff(a2, @"PerturbVObstReleaseIntercept", this + 67);
  SetFloatCoeff(a2, @"PerturbVObstReleaseSlope", this + 68);
  SetFloatCoeff(a2, @"PerturbVowelNoStress", this + 69);
  SetFloatCoeff(a2, @"PerturbVowelPrimaryStress", this + 70);
  SetFloatCoeff(a2, @"PerturbVowelSecondaryStress", this + 71);
  SetFloatCoeff(a2, @"Perturb_AA", this + 72);
  SetFloatCoeff(a2, @"Perturb_AE", this + 73);
  SetFloatCoeff(a2, @"Perturb_AH", this + 74);
  SetFloatCoeff(a2, @"Perturb_AO", this + 75);
  SetFloatCoeff(a2, @"Perturb_AR", this + 76);
  SetFloatCoeff(a2, @"Perturb_AW", this + 77);
  SetFloatCoeff(a2, @"Perturb_AX", this + 78);
  SetFloatCoeff(a2, @"Perturb_AY", this + 79);
  SetFloatCoeff(a2, @"Perturb_EH", this + 80);
  SetFloatCoeff(a2, @"Perturb_EL", this + 81);
  SetFloatCoeff(a2, @"Perturb_EN", this + 82);
  SetFloatCoeff(a2, @"Perturb_ER", this + 83);
  SetFloatCoeff(a2, @"Perturb_EY", this + 84);
  SetFloatCoeff(a2, @"Perturb_IH", this + 85);
  SetFloatCoeff(a2, @"Perturb_IR", this + 86);
  SetFloatCoeff(a2, @"Perturb_IX", this + 87);
  SetFloatCoeff(a2, @"Perturb_IY", this + 88);
  SetFloatCoeff(a2, @"Perturb_LX", this + 89);
  SetFloatCoeff(a2, @"Perturb_OR", this + 90);
  SetFloatCoeff(a2, @"Perturb_OW", this + 91);
  SetFloatCoeff(a2, @"Perturb_OY", this + 92);
  SetFloatCoeff(a2, @"Perturb_RX", this + 93);
  SetFloatCoeff(a2, @"Perturb_UH", this + 94);
  SetFloatCoeff(a2, @"Perturb_UR", this + 95);
  SetFloatCoeff(a2, @"Perturb_UW", this + 96);
  SetFloatCoeff(a2, @"Perturb_XR", this + 97);
  SetFloatCoeff(a2, @"Perturb_YU", this + 98);
  SetIntCoeff(a2, @"PhraseAccentRangeHigh", this + 99);
  SetIntCoeff(a2, @"PhraseAccentRangeLow", this + 100);
  SetIntCoeff(a2, @"PitchSmoothWindow", this + 101);
  SetIntCoeff(a2, @"PlusDownsteppedHighStarLegDelay", this + 102);
  SetFloatCoeff(a2, @"PlusHighIntercept", this + 103);
  SetFloatCoeff(a2, @"PlusHighSlope", this + 104);
  SetFloatCoeff(a2, @"PlusHighStarIntercept", this + 105);
  SetFloatCoeff(a2, @"PlusHighStarSlope", this + 106);
  SetIntCoeff(a2, @"PlusHighStarWidth", this + 107);
  SetIntCoeff(a2, @"PlusLowStarLegDelay", this + 108);
  SetFloatCoeff(a2, @"PlusLowStarLegIntercept", this + 109);
  SetFloatCoeff(a2, @"PlusLowStarLegSlope", this + 110);
  SetFloatCoeff(a2, @"QuestBoundary", this + 111);
  SetFloatCoeff(a2, @"QuestPhraseProm", this + 112);
  SetFloatCoeff(a2, @"QuoteBoost", this + 113);
  SetFloatCoeff(a2, @"RefProportion", this + 114);
  SetFloatCoeff(a2, @"Sep1Prom", this + 115);
  SetFloatCoeff(a2, @"Sep2Prom", this + 116);
  SetFloatCoeff(a2, @"Sep3Prom", this + 117);
  SetFloatCoeff(a2, @"Sep4Prom", this + 118);
  SetFloatCoeff(a2, @"Sep5Prom", this + 119);
  SetFloatCoeff(a2, @"Sep6Prom", this + 120);
  SetFloatCoeff(a2, @"Sep7Prom", this + 121);
  SetFloatCoeff(a2, @"ShortURLBoost", this + 122);
  SetIntCoeff(a2, @"SlopeDelayRange", this + 123);
  SetFloatCoeff(a2, @"SlopeEarly", this + 124);
  SetIntCoeff(a2, @"SlopeEarlyDelay", this + 125);
  SetFloatCoeff(a2, @"SlopeInterAccentDistance", this + 126);
  SetFloatCoeff(a2, @"SlopeNonIntonationalPhraseFinal", this + 127);
  SetFloatCoeff(a2, @"SlopeNonNuclear", this + 128);
  SetFloatCoeff(a2, @"SlopeRange", this + 129);
  SetFloatCoeff(a2, @"SlopeWordEnd", this + 130);
  SetFloatCoeff(a2, @"URLDownStep", this + 131);
  SetFloatCoeff(a2, @"VoicePitchFloor", this + 132);
  SetFloatCoeff(a2, @"VoicePitchRange", this + 133);
  SetFloatCoeff(a2, @"WHQuestBoundary", this + 134);
}

double MTFEPitchCoeffs::Initialize(MTFEPitchCoeffs *this)
{
  *this = 0x3F7FFF3A3F7FAE38;
  *(this + 1) = 0x1900000019;
  *(this + 1) = xmmword_257B96320;
  *(this + 4) = 0x3EFF48703F733333;
  *(this + 10) = 400;
  *(this + 44) = xmmword_257B96330;
  *(this + 60) = 0x1C3E4CCCCDLL;
  *(this + 68) = 0x3ED88C4FBE996A75;
  *(this + 76) = 24;
  *(this + 21) = 36;
  *(this + 11) = 0x3E42DDDB3F666666;
  *(this + 24) = 1054594115;
  *(this + 100) = 0x3A00000019;
  *(this + 27) = 67;
  *(this + 14) = 0x3FC000003F666666;
  *(this + 30) = 1061997773;
  *(this + 124) = 0x2400000017;
  *(this + 132) = 0x3EB853663D40DF1ALL;
  *(this + 35) = 12;
  *(this + 18) = 0x3F7B003C00000000;
  *(this + 19) = 0x1400000028;
  *(this + 20) = 0x3E99999A00000000;
  *(this + 42) = 33;
  *(this + 172) = xmmword_257B96340;
  *(this + 188) = xmmword_257B96350;
  *(this + 204) = xmmword_257B96360;
  *(this + 220) = 0xC00000014;
  *(this + 228) = xmmword_257B96370;
  *(this + 244) = xmmword_257B96380;
  *(this + 260) = xmmword_257B96390;
  *(this + 276) = xmmword_257B963A0;
  *(this + 292) = xmmword_257B963B0;
  *(this + 308) = xmmword_257B963C0;
  *(this + 324) = xmmword_257B963D0;
  *(this + 340) = xmmword_257B963E0;
  *(this + 356) = xmmword_257B963F0;
  *(this + 372) = xmmword_257B96400;
  *(this + 388) = 0x3D4CCCCD3B5A740ELL;
  *(this + 396) = xmmword_257B96410;
  *(this + 412) = xmmword_257B96420;
  *(this + 428) = 0x1400000011;
  *(this + 436) = xmmword_257B96430;
  *(this + 452) = xmmword_257B96440;
  *(this + 468) = xmmword_257B96450;
  *(this + 484) = 0x3F80000000000000;
  *(this + 492) = 0x3D4CCCCD00000010;
  *(this + 125) = -12;
  *(this + 504) = xmmword_257B96460;
  result = 0.0000305175852;
  *(this + 520) = xmmword_257B96470;
  *(this + 134) = 1065353216;
  return result;
}

uint64_t sub_257B751C8(uint64_t a1, uint64_t a2)
{
  sub_257B8474C();
  sub_257B752E0();
  type metadata accessor for MTMacinTalkAUSPAudioUnit(0);
  v3 = sub_257B753B8();
  sub_257B8474C();
  sub_257B75410();
  v4 = sub_257B843CC();

  MEMORY[0x277D82BD8](v3);

  return v4;
}

unint64_t sub_257B752E0()
{
  v2 = qword_2811811E8;
  if (!qword_2811811E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2811811E8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for MTMacinTalkAUSPAudioUnit(uint64_t a1)
{
  v2 = qword_281181690;
  if (!qword_281181690)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

id sub_257B753B8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t sub_257B7543C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

uint64_t sub_257B754D8(char a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  return 2;
}

unint64_t sub_257B75588()
{
  v2 = qword_27F8F2B70;
  if (!qword_27F8F2B70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2B70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_257B756D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257B7543C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_257B75704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257B754D8(*v1);
  *a1 = result;
  return result;
}

uint64_t static MTMacinTalkAUSPAudioUnit.registerAudioUnit()()
{
  v11 = 0;
  sub_257B8474C();
  v1 = String.mtOSType()();

  v8 = __PAIR64__(v1, 1635087216);
  v9 = 1634758764;
  v10 = 0;
  v2 = objc_opt_self();
  type metadata accessor for MTMacinTalkAUSPAudioUnit(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_257B8474C();
  v4 = sub_257B846DC();

  v5[0] = 1635087216;
  v5[1] = v1;
  v6 = 1634758764;
  v7 = 0;
  [v2 registerSubclass:ObjCClassFromMetadata asComponentDescription:v5 name:v4 version:0];
  return MEMORY[0x277D82BD8](v4);
}

Swift::UInt32 __swiftcall String.mtOSType()()
{
  v23 = v1;
  v22 = v0;
  v21 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v19 = 0;
  v26 = sub_257B8471C();
  v20 = *(v26 - 8);
  v24 = v20;
  v2 = MEMORY[0x28223BE20](v22, v23);
  v25 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2;
  v34 = v4;
  v32 = 0;
  sub_257B8470C();
  sub_257B801FC();
  v5 = sub_257B846FC();
  v29 = v6;
  v27 = v5;
  v28 = v6;
  (*(v24 + 8))(v25, v26);
  if (v29 >> 60 == 15)
  {
    v16 = v19;
  }

  else
  {
    v17 = v27;
    v18 = v28;
    v14 = v28;
    v15 = v27;
    v30 = v27;
    v31 = v28;
    if (MEMORY[0x259C6CBE0]() == 4)
    {
      v7 = v19;
      sub_257B80458(v15, v14);
      v12 = &v10;
      MEMORY[0x28223BE20](&v10, v8);
      sub_257B8442C();
      v13 = v7;
      if (v7)
      {
        goto LABEL_11;
      }

      sub_257B80208(v15, v14);
      sub_257B80208(v15, v14);
      v16 = v13;
    }

    else
    {
      sub_257B80208(v15, v14);
      v16 = v19;
    }
  }

  v11 = v32;
  if (!HIDWORD(v32))
  {
    return v11;
  }

  sub_257B8495C();
  __break(1u);
LABEL_11:
  result = sub_257B80208(v15, v14);
  __break(1u);
  return result;
}

uint64_t sub_257B75B80(uint64_t a1)
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return static MTMacinTalkAUSPAudioUnit.registerAudioUnit()();
}

uint64_t sub_257B75BBC()
{
  v2 = (v0 + qword_2811812C0);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B75C2C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811812C0);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B75D7C()
{
  v2 = (v0 + qword_2811812D8);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B75DEC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811812D8);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B75F24()
{
  v2 = (v0 + qword_2811812C8);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_257B75F8C(uint64_t a1)
{

  v3 = (v1 + qword_2811812C8);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_257B7607C()
{
  v2 = (v0 + qword_2811812D0);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B760EC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811812D0);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

id sub_257B761F0()
{
  sub_257B80568();
  v0 = sub_257B8474C();
  return sub_257B76240(v0, v1);
}

uint64_t sub_257B76288()
{
  v2 = (v0 + qword_2811812E0);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B762F8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811812E0);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B76460@<X0>(void *a1@<X8>)
{
  v3 = (v1 + qword_281181680);
  swift_beginAccess();
  sub_257B805CC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_257B764C4(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v4 - v4;
  v11 = MEMORY[0x28223BE20](v8, v2);
  v10 = v1;
  sub_257B805CC(v11, &v4 - v4);
  v6 = (v1 + qword_281181680);
  v7 = &v9;
  swift_beginAccess();
  sub_257B80760(v5, v6);
  swift_endAccess();
  return sub_257B80988(v8);
}

uint64_t sub_257B76614()
{
  v2 = (v0 + qword_2811816E8);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B76684(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811816E8);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B76788()
{
  v2 = (v0 + qword_2811816B0);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_257B767EC(uint64_t a1)
{
  v3 = (v1 + qword_2811816B0);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_257B768C4()
{
  v2 = (v0 + qword_2811816A8);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B76934(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811816A8);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B76A38()
{
  v2 = (v0 + qword_2811816A0);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B76AA8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811816A0);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B76C08()
{
  v2 = (v0 + qword_2811816D8);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B76C78(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811816D8);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

float sub_257B76D80()
{
  v15 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v0);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v15 = v2;
  v6 = v2 + qword_2811816C0;
  v7 = &v14;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v11);
  swift_endAccess();
  sub_257B8447C();
  v12 = v13;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_257B76ECC(float a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  sub_257B8448C();
  return swift_endAccess();
}

void (*sub_257B76F5C(uint64_t *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL, 24055);
  *a1 = v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v2[7] = sub_257B8446C();
  return sub_257B77020;
}

void sub_257B77020(void **a1)
{
  v1 = *a1;
  v1[7](v1, 0);
  swift_endAccess();
  free(v1);
}

uint64_t sub_257B770B4()
{
  v4 = objc_opt_self();
  sub_257B8474C();
  v7 = sub_257B846DC();

  v0 = sub_257B8474C();
  sub_257B751C8(v0, v1);

  v6 = sub_257B846DC();

  v5 = sub_257B754D8(2);
  type metadata accessor for AudioUnitParameterOptions(0);
  sub_257B8499C();
  sub_257B80B2C();
  sub_257B848CC();
  LODWORD(v2) = 1128792064;
  [v4 createParameterWithIdentifier:v7 name:v6 address:v5 min:3 max:0 unit:v8 unitName:0.0 flags:v2 valueStrings:0 dependentParameters:0];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  sub_257B7729C();
  return sub_257B844AC();
}

uint64_t sub_257B772B4()
{
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v0);
  v1 = &v4 - v5;
  v11 = &v4 - v5;
  v14 = v2;
  v6 = v2 + qword_2811816C0;
  v7 = &v13;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v10);
  swift_endAccess();
  v12 = sub_257B8449C();
  (*(v8 + 8))(v11, v10);
  return v12;
}

uint64_t sub_257B773FC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + qword_2811816C0;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_257B7749C(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v11);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + qword_2811816C0;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

float sub_257B775FC()
{
  v15 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v0);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v15 = v2;
  v6 = v2 + qword_2811816C8;
  v7 = &v14;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v11);
  swift_endAccess();
  sub_257B8447C();
  v12 = v13;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_257B77748(float a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  sub_257B8448C();
  return swift_endAccess();
}

void (*sub_257B777D8(uint64_t *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL, 53635);
  *a1 = v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v2[7] = sub_257B8446C();
  return sub_257B77020;
}

uint64_t sub_257B7789C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v19 = 0;
  v16 = sub_257B845BC();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v9[0] = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v1);
  v2 = v9 - v9[0];
  v17 = v9 - v9[0];
  v21 = objc_opt_self();
  v9[2] = 7;
  v10 = 1;
  sub_257B8474C();
  v9[1] = v3;
  v25 = sub_257B846DC();

  v4 = sub_257B8474C();
  v11 = v5;
  v12 = sub_257B751C8(v4, v5);
  v13 = v6;

  v24 = sub_257B846DC();

  v22 = sub_257B754D8(0);
  (*(v14 + 104))(v2, *MEMORY[0x277D70370], v16);
  sub_257B845AC();
  v18 = v7;
  v23 = sub_257B846DC();
  (*(v14 + 8))(v17, v16);

  type metadata accessor for AudioUnitParameterOptions(v19);
  v20 = sub_257B8499C();
  sub_257B80B2C();
  sub_257B848CC();
  v26 = 1112014848;
  v32 = [v21 createParameterWithIdentifier:v25 name:v24 address:v22 min:26 max:v23 unit:v34[1] unitName:0 flags:0 valueStrings:? dependentParameters:?];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  v28 = v34;
  v34[0] = v26;
  v29 = v33;
  memset(v33, 0, sizeof(v33));
  v30 = MEMORY[0x277D83A90];
  v31 = MEMORY[0x277D703B0];
  sub_257B7729C();
  return sub_257B844AC();
}

uint64_t sub_257B77B98()
{
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v0);
  v1 = &v4 - v5;
  v11 = &v4 - v5;
  v14 = v2;
  v6 = v2 + qword_2811816C8;
  v7 = &v13;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v10);
  swift_endAccess();
  v12 = sub_257B8449C();
  (*(v8 + 8))(v11, v10);
  return v12;
}

uint64_t sub_257B77CE0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + qword_2811816C8;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_257B77D80(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v11);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + qword_2811816C8;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

float sub_257B77EE0()
{
  v15 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v0);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v15 = v2;
  v6 = v2 + qword_2811816D0;
  v7 = &v14;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v11);
  swift_endAccess();
  sub_257B8447C();
  v12 = v13;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_257B7802C(float a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  sub_257B8448C();
  return swift_endAccess();
}

void (*sub_257B780BC(uint64_t *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL, 61974);
  *a1 = v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v2[7] = sub_257B8446C();
  return sub_257B77020;
}

uint64_t sub_257B78180@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v24 = 0;
  v21 = sub_257B845BC();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v12 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v1);
  v2 = &v11 - v12;
  v22 = &v11 - v12;
  v26 = objc_opt_self();
  v14 = 7;
  v18 = 1;
  sub_257B8474C();
  v13 = v3;
  v30 = sub_257B846DC();

  v4 = sub_257B8474C();
  v15 = v5;
  v16 = sub_257B751C8(v4, v5);
  v17 = v6;

  v29 = sub_257B846DC();

  v27 = sub_257B754D8(v18);
  (*(v19 + 104))(v2, *MEMORY[0x277D70370], v21);
  sub_257B845AC();
  v23 = v7;
  v28 = sub_257B846DC();
  (*(v19 + 8))(v22, v21);

  type metadata accessor for AudioUnitParameterOptions(v24);
  v25 = sub_257B8499C();
  sub_257B80B2C();
  sub_257B848CC();
  LODWORD(v8) = 1127219200;
  LODWORD(v9) = 1147207680;
  v36 = [v26 createParameterWithIdentifier:v30 name:v29 address:v27 min:26 max:v28 unit:v38[1] unitName:v8 flags:v9 valueStrings:0 dependentParameters:0];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v32 = v38;
  v38[0] = 1140457472;
  v33 = v37;
  memset(v37, 0, sizeof(v37));
  v34 = MEMORY[0x277D83A90];
  v35 = MEMORY[0x277D703B0];
  sub_257B7729C();
  return sub_257B844AC();
}

uint64_t sub_257B78474()
{
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v0);
  v1 = &v4 - v5;
  v11 = &v4 - v5;
  v14 = v2;
  v6 = v2 + qword_2811816D0;
  v7 = &v13;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v10);
  swift_endAccess();
  v12 = sub_257B8449C();
  (*(v8 + 8))(v11, v10);
  return v12;
}

uint64_t sub_257B785BC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + qword_2811816D0;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_257B7865C(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v11);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + qword_2811816D0;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

id sub_257B787BC(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  v11[0] = a1;
  v11[1] = a2;
  v12 = a3;
  v10 = [objc_allocWithZone(v4) initWithComponentDescription:v11 options:a4 error:&v13];
  v9 = v13;
  MEMORY[0x277D82BE0](v13);
  v5 = v14;
  v14 = v9;
  MEMORY[0x277D82BD8](v5);
  if (v10)
  {
    return v10;
  }

  v8 = v14;
  sub_257B843EC();
  MEMORY[0x277D82BD8](v8);
  swift_willThrow();
  return v7;
}

char *sub_257B78960(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v97 = a4;
  v205[5] = *MEMORY[0x277D85DE8];
  v198 = 0;
  v195 = 0;
  v196 = 0;
  v126 = 0;
  v197 = 0;
  v194 = 0;
  v188 = 0;
  v187 = 0;
  v179 = a1;
  v180 = a2;
  v181 = a3;
  v98 = HIDWORD(a1);
  v95 = a1;
  v99 = a2;
  v96 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B88, &qword_257B964B8);
  v93 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6);
  v175 = &v55 - v93;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B90, &qword_257B964C0);
  v94 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8);
  v173 = &v55 - v94;
  v174 = 0;
  v151 = sub_257B845BC();
  v127 = *(v151 - 8);
  v128 = v151 - 8;
  v10 = MEMORY[0x28223BE20](v174, v9);
  v154 = &v55 - v11;
  v195 = __PAIR64__(v98, v12);
  v196 = v99;
  v197 = v13;
  v194 = v14;
  v198 = v4;
  *(v4 + qword_2811812D8) = v10;
  v101 = v198;
  v100 = qword_2811812C8;
  sub_257B80504();
  v15 = sub_257B8499C();
  v16 = v174;
  *(v101 + v100) = v15;
  *(v198 + qword_2811812D0) = v16;
  v103 = v198;
  v102 = qword_2811812E0;
  sub_257B80568();
  v171 = 1;
  v17 = sub_257B8474C();
  v19 = sub_257B76240(v17, v18);
  *(v103 + v102) = v19;
  v105 = v198;
  v104 = qword_281181680;
  v20 = sub_257B845EC();
  (*(*(v20 - 8) + 56))(v105 + v104, v171);
  v21 = v174;
  *(v198 + qword_2811816E8) = v174;
  *(v198 + qword_2811816B0) = v21;
  *(v198 + qword_2811816A8) = v21;
  *(v198 + qword_2811816A0) = v21;
  v107 = v198;
  v106 = qword_2811816D8;
  sub_257B80A30();
  *(v107 + v106) = sub_257B76BD8();
  v118 = v198;
  v117 = qword_2811816C0;
  v141 = 0x277CEF000uLL;
  v113 = objc_opt_self();
  sub_257B8474C();
  v108 = v22;
  v116 = sub_257B846DC();

  v23 = sub_257B8474C();
  v109 = v24;
  v110 = sub_257B751C8(v23, v24);
  v111 = v25;

  v115 = sub_257B846DC();

  v114 = sub_257B754D8(2);
  v150 = type metadata accessor for AudioUnitParameterOptions(v174);
  v112 = sub_257B8499C();
  v156 = sub_257B80B2C();
  sub_257B848CC();
  v26 = v154;
  v157 = 0x1FB60E000uLL;
  LODWORD(v27) = 1128792064;
  v121 = [v113 0x1FB60EFF8];
  MEMORY[0x277D82BD8](v115);
  MEMORY[0x277D82BD8](v116);
  v119 = &v192 + 4;
  HIDWORD(v192) = 1120403456;
  v120 = v205;
  memset(v205, 0, 40);
  v168 = MEMORY[0x277D83A90];
  v169 = MEMORY[0x277D703B0];
  sub_257B7729C();
  sub_257B844AC();
  v137 = v198;
  v136 = qword_2811816C8;
  v130 = objc_opt_self();
  v143 = 7;
  sub_257B8474C();
  v122 = v28;
  v134 = sub_257B846DC();

  v29 = sub_257B8474C();
  v123 = v30;
  v124 = sub_257B751C8(v29, v30);
  v125 = v31;

  v133 = sub_257B846DC();

  v131 = sub_257B754D8(v126);
  v147 = MEMORY[0x277D70370];
  v32 = *MEMORY[0x277D70370];
  v149 = *(v127 + 104);
  v148 = v127 + 104;
  v149(v26, v32, v151);
  sub_257B845AC();
  v129 = v33;
  v132 = sub_257B846DC();
  v153 = *(v127 + 8);
  v152 = v127 + 8;
  v153(v154, v151);

  sub_257B8499C();
  sub_257B848CC();
  v34 = v154;
  v135 = 1112014848;
  v160 = 26;
  v140 = [v130 (v157 + 4088)];
  MEMORY[0x277D82BD8](v132);
  MEMORY[0x277D82BD8](v133);
  MEMORY[0x277D82BD8](v134);
  v138 = &v191;
  v191 = v135;
  v139 = v204;
  memset(v204, 0, sizeof(v204));
  sub_257B7729C();
  sub_257B844AC();
  v165 = v198;
  v164 = qword_2811816D0;
  v158 = objc_opt_self();
  sub_257B8474C();
  v142 = v35;
  v163 = sub_257B846DC();

  v36 = sub_257B8474C();
  v144 = v37;
  v145 = sub_257B751C8(v36, v37);
  v146 = v38;

  v162 = sub_257B846DC();

  v159 = sub_257B754D8(v171);
  v149(v34, *v147, v151);
  sub_257B845AC();
  v155 = v39;
  v161 = sub_257B846DC();
  v153(v154, v151);

  sub_257B8499C();
  sub_257B848CC();
  LODWORD(v40) = 1127219200;
  LODWORD(v41) = 1147207680;
  v170 = [v158 (v157 + 4088)];
  MEMORY[0x277D82BD8](v161);
  MEMORY[0x277D82BD8](v162);
  MEMORY[0x277D82BD8](v163);
  v166 = v190;
  v190[0] = 1140457472;
  v167 = v203;
  memset(v203, 0, sizeof(v203));
  sub_257B7729C();
  sub_257B844AC();
  v42 = v174;
  *(v198 + qword_281181678) = v174;
  type metadata accessor for CMFormatDescription(v42);
  v172 = __dst;
  memcpy(__dst, &macinTalkOutputFormat, sizeof(__dst));
  v43 = sub_257B8468C();
  (*(*(v43 - 8) + 56))(v173, v171);
  v44 = sub_257B8488C();
  (*(*(v44 - 8) + 56))(v175, v171);
  v45 = v176;
  sub_257B8469C();
  v177 = v45;
  v178 = v45;
  if (v45)
  {
    swift_unexpectedError();
    __break(1u);
    goto LABEL_6;
  }

  v85 = v189;
  v188 = v189;
  v86 = 0;
  sub_257B80C44();
  MEMORY[0x277D82BE0](v85);
  v89 = sub_257B79A6C(v85);
  v187 = v89;
  v87 = v198;
  v88 = sub_257B80CA8();
  MEMORY[0x277D82BE0](v89);
  v46 = v177;
  v47 = sub_257B79AAC(v89);
  v90 = v46;
  v91 = v47;
  v92 = v46;
  if (v46)
  {
LABEL_6:
    v66 = v92;
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v85);
    v67 = v66;
    v68 = 32638;
    goto LABEL_8;
  }

  *(v87 + qword_2811812C0) = v91;
  v81 = v198;
  v202 = 0;
  v186 = 0;
  v82 = &v186;
  v48 = type metadata accessor for MTMacinTalkAUSPAudioUnit(0);
  v185.receiver = v81;
  v185.super_class = v48;
  v182[0] = v95;
  v182[1] = v98;
  v183 = v99;
  v184 = v96;
  v84 = objc_msgSendSuper2(&v185, sel_initWithComponentDescription_options_error_, v182, v97, v82);
  v83 = v186;
  MEMORY[0x277D82BE0](v186);
  v49 = v202;
  v202 = v83;
  MEMORY[0x277D82BD8](v49);
  if (v84)
  {
    v80 = v84;
    v74 = v84;
    MEMORY[0x277D82BE0](v84);
    v198 = v74;
    v75 = v74;
    sub_257B80D98();
    MEMORY[0x277D82BE0](v74);
    v73 = sub_257B8499C();
    v70 = v50;
    v69 = (v198 + qword_2811812C0);
    v72 = &v201;
    v76 = 0;
    swift_beginAccess();
    v71 = *v69;
    MEMORY[0x277D82BE0](v71);
    *v70 = v71;
    swift_endAccess();
    sub_257B79B2C();
    v78 = sub_257B79B70(v74, 2, v51);
    v77 = (v75 + qword_2811812D8);
    v79 = &v200;
    swift_beginAccess();
    v52 = *v77;
    *v77 = v78;
    MEMORY[0x277D82BD8](v52);
    swift_endAccess();
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v198);
    return v74;
  }

  v64 = v202;
  v65 = sub_257B843EC();
  MEMORY[0x277D82BD8](v64);
  swift_willThrow();
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v85);
  v67 = v65;
  v68 = 0xFFFF;
LABEL_8:
  v61 = v68;
  v62 = v67;
  if ((v68 & 0x8000) == 0)
  {
    if (v61)
    {
      MEMORY[0x277D82BD8](*(v198 + qword_2811812C0));
    }

    sub_257B80D0C((v198 + qword_2811812D8));
    sub_257B80D40((v198 + qword_2811812C8));
    sub_257B80D0C((v198 + qword_2811812D0));
    MEMORY[0x277D82BD8](*(v198 + qword_2811812E0));
    sub_257B80988(v198 + qword_281181680);
    sub_257B80D0C((v198 + qword_2811816E8));
    sub_257B80D0C((v198 + qword_2811816A8));
    sub_257B80D0C((v198 + qword_2811816A0));
    MEMORY[0x277D82BD8](*(v198 + qword_2811816D8));
    v56 = v198 + qword_2811816C0;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
    v54 = *(v57 - 8);
    v59 = *(v54 + 8);
    v58 = v54 + 8;
    v59(v56);
    (v59)(v198 + qword_2811816C8, v57);
    (v59)(v198 + qword_2811816D0, v57);
    sub_257B80D6C((v198 + qword_281181678));
    v60 = v198;
    type metadata accessor for MTMacinTalkAUSPAudioUnit(0);
    swift_deallocPartialClassInstance();
  }

  return v63;
}

id sub_257B79AAC(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_257B81484(a1);
  if (v4)
  {
    return v3;
  }

  else
  {
    return v6;
  }
}

id sub_257B79CD8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = sub_257B79D44();
  MEMORY[0x277D82BD8](a1);

  return v3;
}

uint64_t sub_257B79D44()
{
  v2 = sub_257B75D7C();
  if (v2)
  {
    return v2;
  }

  sub_257B8495C();
  __break(1u);
  return v1;
}

uint64_t sub_257B79DFC()
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = v0;
  MEMORY[0x277D82BE0](v0);
  v9 = 0;
  v7 = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MTMacinTalkAUSPAudioUnit(0);
  v5 = objc_msgSendSuper2(&v6, sel_allocateRenderResourcesAndReturnError_, &v7);
  v4 = v7;
  MEMORY[0x277D82BE0](v7);
  v1 = v9;
  v9 = v4;
  MEMORY[0x277D82BD8](v1);
  if ((v5 & 1) == 0)
  {
    v3 = v9;
    sub_257B843EC();
    MEMORY[0x277D82BD8](v3);
    swift_willThrow();
  }

  return (MEMORY[0x277D82BD8])();
}

uint64_t sub_257B79F70(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B79DFC();
  MEMORY[0x277D82BD8](a1);
  return 1;
}

id sub_257B7A080(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = sub_257B7A15C();
  v5 = v1;
  MEMORY[0x277D82BD8](a1);
  v12 = v4;
  v13 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = 0;
  v10 = sub_257B7A208;
  v11 = &block_descriptor;
  v6 = _Block_copy(&aBlock);

  return v6;
}

uint64_t (*sub_257B7A15C())()
{
  swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  return sub_257B80E60;
}

uint64_t sub_257B7A208(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v19 = *(a1 + 32);

  v21 = _Block_copy(a8);
  if (v21)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v21;
    v11 = sub_257B833AC;
    v12 = v8;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v10 = v19(a2, a3, a4, a5, a6, a7);
  sub_257B83378(v11, v12);

  return v10;
}

uint64_t sub_257B7A3A4(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v241 = a1;
  v240 = a2;
  v233 = a3;
  v246 = a4;
  v234 = a5;
  v235 = a6;
  v236 = a7;
  v237 = a8;
  v238 = a9;
  v239 = 0;
  v199 = sub_257B831E0;
  v200 = "Fatal error";
  v201 = "Unexpectedly found nil while unwrapping an Optional value";
  v202 = "MacinTalk/MacinTalkAUSPAudioUnit.swift";
  v203 = "Negative value is not representable";
  v204 = "Swift/Integers.swift";
  v205 = "Not enough bits to represent the passed value";
  v206 = "MacinTalkAUSP failed to start speaking with error %@";
  v207 = &dword_257B07000;
  v208 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v327 = 0;
  v326 = 0;
  v325 = 0;
  v324 = 0;
  v323 = 0;
  v322 = 0;
  v321 = 0;
  v320 = 0;
  v319 = 0;
  v317 = 0;
  v318 = 0;
  v316 = 0;
  v314 = 0;
  v312 = 0;
  v313 = 0;
  v308 = 0;
  v306 = 0;
  v307 = 0;
  v299 = 0;
  v297 = 0;
  v295 = 0;
  v293 = 0;
  v294 = 0;
  v288 = 0;
  v284 = 0;
  v266 = 0;
  v267 = 0;
  v209 = 0;
  v265 = 0;
  v262 = 0;
  v263 = 0;
  v254 = 0;
  v251 = 0;
  v227 = 0;
  v210 = sub_257B844EC();
  v211 = *(v210 - 8);
  v212 = v210 - 8;
  v213 = (*(v211 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v210, v9);
  v214 = (&v56 - v213);
  v215 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v227, v10);
  v216 = &v56 - v215;
  v217 = sub_257B845EC();
  v218 = *(v217 - 8);
  v219 = v217 - 8;
  v220 = (*(v218 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v227, v11);
  v221 = &v56 - v220;
  v327 = &v56 - v220;
  v222 = sub_257B8460C();
  v223 = *(v222 - 8);
  v224 = v222 - 8;
  v225 = (*(v223 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v227, v12);
  v226 = &v56 - v225;
  v326 = &v56 - v225;
  v228 = sub_257B8462C();
  v229 = *(v228 - 8);
  v230 = v228 - 8;
  v231 = (*(v229 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v227, v13);
  v232 = &v56 - v231;
  v325 = &v56 - v231;
  v242 = sub_257B8465C();
  v243 = *(v242 - 8);
  v244 = v242 - 8;
  v245 = (*(v243 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v241, v240);
  v247 = &v56 - v245;
  v324 = v14;
  v323 = v15;
  v322 = v16;
  v321 = v246;
  v320 = v17;
  v319 = v18;
  v317 = v19;
  v318 = v20;
  v248 = v21 + 16;
  v316 = v21 + 16;
  v249 = &v315;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return -1;
  }

  v198 = Strong;
  v194 = Strong;
  v314 = Strong;
  sub_257B8466C();
  v195 = &v311;
  v22 = sub_257B8467C();
  v309 = v23;
  v310 = v24;
  v196 = v24;
  v312 = v23;
  v313 = v24;
  v22();
  (*(v243 + 8))(v247, v242);
  if (v196)
  {
    v193 = v196;
  }

  else
  {
    sub_257B8495C();
    __break(1u);
  }

  v189 = v193;
  v308 = v193;
  v304 = 0;
  v305 = v233;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2CF0, &qword_257B968D0);
  v191 = sub_257B82FA4();
  sub_257B8485C();
  for (i = v209; ; i = v25)
  {
    v185 = i;
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2D00, &qword_257B968D8);
    sub_257B8494C();
    v187 = v302;
    v188 = v186;
    if (v303)
    {
      break;
    }

    v184 = v187;
    v25 = v185;
    v251 = v187;
    *(v189 + 4 * v187) = 0;
  }

  v180 = v188;
  v182 = sub_257B75F24();
  v181 = sub_257B80504();
  v183 = sub_257B8480C();

  if (!v183)
  {
    MEMORY[0x277D82BD8](v194);
    return -10863;
  }

  v178 = sub_257B75F24();
  v301 = v178;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BE0, &qword_257B964F8);
  v177 = sub_257B81F0C();
  sub_257B8483C();
  v179 = v300;

  if (v179)
  {
    v175 = v179;
  }

  else
  {
    sub_257B8495C();
    __break(1u);
  }

  v174 = v175;
  v299 = v175;
  v298 = sub_257B7607C();
  v173 = v298 == 0;
  v172 = v173;
  sub_257B80D0C(&v298);
  if (v172)
  {
    v26 = v185;
    v167 = [v174 ssmlRepresentation];
    v168 = sub_257B846EC();
    v169 = v27;
    v266 = v168;
    v267 = v27;
    MEMORY[0x277D82BD8](v167);

    sub_257B8461C();
    v170 = v26;
    v171 = v26;
    if (v26)
    {
      v66 = v171;
      MEMORY[0x259C6E4E0]();
      v265 = v66;
      v67 = AXTTSLogCommon();
      if (v67)
      {
        v65 = v67;
      }

      else
      {
        sub_257B8495C();
        __break(1u);
      }

      v63 = v65;
      v61 = sub_257B8487C();
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BC0, &qword_257B964E8);
      v60 = sub_257B8499C();
      v58 = v49;
      swift_getErrorValue();
      v56 = sub_257B849CC();
      v57 = v50;
      v58[3] = MEMORY[0x277D837D0];
      v51 = sub_257B83048();
      v52 = v56;
      v53 = v57;
      v54 = v58;
      v58[4] = v51;
      *v54 = v52;
      v54[1] = v53;
      sub_257B79B2C();
      v62 = v55;
      sub_257B8463C();

      MEMORY[0x277D82BD8](v63);
      [v194 cancelSpeechRequest];
      v64 = sub_257B8464C();

      MEMORY[0x277D82BD8](v174);
      MEMORY[0x277D82BD8](v194);
      return v64;
    }

    v142 = sub_257B775FC();
    sub_257B77EE0();
    sub_257B8450C();
    v143 = v264;
    v264[3] = v228;
    v264[4] = MEMORY[0x277D70390];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v264);
    (*(v229 + 16))(boxed_opaque_existential_1, v232, v228);
    sub_257B845FC();
    __swift_destroy_boxed_opaque_existential_1(v143);
    v153 = sub_257B845CC();
    v154 = v29;
    v262 = v153;
    v263 = v29;
    (*(v218 + 16))(v216, v221, v217);
    (*(v218 + 56))(v216, 0, 1, v217);
    sub_257B764C4(v216);
    v164 = 0;
    sub_257B8457C();
    v150 = sub_257B8456C();
    v149 = [v174 ssmlRepresentation];
    v144 = sub_257B846EC();
    v145 = v30;

    v31 = v214;
    v32 = v145;
    v33 = v211;
    v34 = v153;
    v35 = v154;
    *v214 = v144;
    v31[1] = v32;
    v31[2] = v34;
    v31[3] = v35;
    (*(v33 + 104))();
    v148 = [v174 jobIdentifier];
    v146 = sub_257B846EC();
    v147 = v36;
    sub_257B8455C();

    MEMORY[0x277D82BD8](v148);
    (*(v211 + 8))(v214, v210);
    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](v150);
    v152 = sub_257B76C08();
    MEMORY[0x277D82BE0](v174);
    v37 = swift_allocObject();
    v38 = v199;
    *(v37 + 16) = v174;
    v260 = v38;
    v261 = v37;
    v255 = MEMORY[0x277D85DD0];
    v256 = 1107296256;
    v257 = 0;
    v258 = sub_257B7C234;
    v259 = &block_descriptor_20;
    v151 = _Block_copy(&v255);

    [v152 setMatchLogger_];
    _Block_release(v151);
    MEMORY[0x277D82BD8](v152);
    v156 = sub_257B76C08();

    v155 = sub_257B846DC();

    v157 = [v156 processText_];
    MEMORY[0x277D82BD8](v155);
    MEMORY[0x277D82BD8](v156);
    sub_257B762F8(v157);
    v158 = sub_257B8324C();
    v159 = sub_257B76288();
    v162 = [v159 transformedString];
    v160 = sub_257B846EC();
    v161 = v39;
    MEMORY[0x277D82BD8](v159);
    v163 = sub_257B7C35C(v160, v161);
    MEMORY[0x277D82BD8](v162);
    v254 = v163;
    v165 = sub_257B832B0();
    v166 = sub_257B768C4();
    if (v166)
    {
      v141 = v166;
    }

    else
    {
      sub_257B8495C();
      __break(1u);
    }

    v140 = v141;
    MEMORY[0x277D82BE0](v163);
    v40 = sub_257B7C3A4(v140, v163);
    sub_257B760EC(v40);
    v253 = sub_257B7607C();
    if (v253)
    {
      v136 = &v253;
      v139 = v253;
      MEMORY[0x277D82BE0](v253);
      sub_257B80D0C(v136);
      v137 = sub_257B83314();
      sub_257B76D80();
      v138 = sub_257B7C3EC();
      [v139 setPitchModulation_];
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](v139);
    }

    else
    {
      sub_257B80D0C(&v253);
    }

    v252 = sub_257B7607C();
    if (v252)
    {
      v134 = &v252;
      v135 = v252;
      MEMORY[0x277D82BE0](v252);
      sub_257B80D0C(v134);
      MEMORY[0x277D82BE0](v194);
      [v135 setDelegate_];
      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v135);
    }

    else
    {
      sub_257B80D0C(&v252);
    }

    MEMORY[0x277D82BD8](v163);

    (*(v218 + 8))(v221, v217);
    (*(v223 + 8))(v226, v222);
    (*(v229 + 8))(v232, v228);

    v133 = v170;
  }

  else
  {
    v133 = v185;
  }

  v131 = v133;
  v132 = sub_257B7607C();
  if (!v132)
  {
    v129 = sub_257B8464C();
    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](v194);
    return v129;
  }

  v130 = v132;
  v128 = v132;
  v297 = v132;
  v296 = sub_257B76614();
  v127 = v296 == 0;
  v126 = v127;
  sub_257B80D0C(&v296);
  if (v126)
  {
    sub_257B76684([v128 nextBuffer]);
    v275 = sub_257B76614();
    v125 = v275 == 0;
    v124 = v125;
    sub_257B80D0C(&v275);
    MEMORY[0x277D82BE0](v194);
    if (v124)
    {
      v123 = 1;
    }

    else
    {
      v274 = sub_257B76614();
      if (v274)
      {
        v119 = &v274;
        v120 = v274;
        MEMORY[0x277D82BE0](v274);
        sub_257B80D0C(v119);
        v121 = [v120 frameLength];
        MEMORY[0x277D82BD8](v120);
        v122 = v121;
      }

      else
      {
        sub_257B80D0C(&v274);
        v122 = 0x100000000;
      }

      v117 = HIDWORD(v122);
      v118 = v122;
      v270 = v122;
      v271 = BYTE4(v122) & 1;
      v272 = 0;
      v273 = 0;
      if ((v122 & 0x100000000) != 0)
      {
        v116 = 0;
      }

      else
      {
        v268 = v118;
        v269 = v117 & 1;
        v116 = v118 == v272;
      }

      v123 = v116;
    }

    v115 = v123;
    MEMORY[0x277D82BD8](v194);
    if (v115)
    {
      v113 = 0;
      sub_257B76684(0);
      sub_257B760EC(v113);
      sub_257B767EC(v113);
      *v241 = 128;
      v41 = sub_257B8499C();
      sub_257B75F8C(v41);
      v114 = sub_257B8464C();
      MEMORY[0x277D82BD8](v128);
      MEMORY[0x277D82BD8](v174);
      MEMORY[0x277D82BD8](v194);
      return v114;
    }

    sub_257B767EC(0);
  }

  v110 = 0;
  v295 = 0;
  v291 = 0;
  v292 = v233;
  sub_257B8485C();
  v111 = v110;
  for (j = v131; ; j = v106)
  {
    v106 = j;
    v107 = v111;
    result = sub_257B8494C();
    v108 = v289;
    v109 = v107;
    if (v290)
    {
      v104 = v109;
      goto LABEL_87;
    }

    v105 = v108;
    v100 = v108;
    v288 = v108;
    v101 = sub_257B75F24();
    v287[1] = v101;
    v102 = sub_257B8484C();

    result = v102;
    v103 = v107;
    if (v102)
    {
      v104 = v103;
      goto LABEL_87;
    }

    v99 = sub_257B76788();
    v287[0] = sub_257B76614();
    if (v287[0])
    {
      v95 = v287;
      v96 = v287[0];
      MEMORY[0x277D82BE0](v287[0]);
      sub_257B80D0C(v95);
      v97 = [v96 frameLength];
      MEMORY[0x277D82BD8](v96);
      v98 = v97;
    }

    else
    {
      sub_257B80D0C(v287);
      v98 = 0x100000000;
    }

    v285 = v98;
    v286 = BYTE4(v98) & 1;
    v94 = (v98 & 0x100000000) != 0 ? 0 : v285;
    if (v99 >= v94)
    {
      break;
    }

LABEL_72:
    v80 = sub_257B76614();
    if (v80)
    {
      v79 = v80;
    }

    else
    {
      sub_257B8495C();
      __break(1u);
    }

    v76 = v79;
    v77 = [v79 mutableAudioBufferList];
    MEMORY[0x277D82BD8](v76);
    v78 = v77[2];
    if (v78)
    {
      v75 = v78;
    }

    else
    {
      sub_257B8495C();
      __break(1u);
    }

    v73 = v75;
    v284 = v75;
    result = sub_257B76788();
    v43 = v107;
    *(v189 + 4 * v100) = *(v73 + 4 * result);
    v74 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_99;
    }

    v295 = v74;
    result = sub_257B76858();
    v70 = result;
    v71 = v45;
    v46 = __OFADD__(*v45, 1);
    v72 = *v45 + 1;
    v47 = v46;
    if (v47)
    {
      goto LABEL_100;
    }

    v48 = v70;
    *v71 = v72;
    v48();
    v111 = v74;
  }

  sub_257B76684([v128 nextBuffer]);
  v283[0] = sub_257B76614();
  v93 = v283[0] == 0;
  v92 = v93;
  sub_257B80D0C(v283);
  MEMORY[0x277D82BE0](v194);
  if (v92)
  {
    v91 = 1;
  }

  else
  {
    v282 = sub_257B76614();
    if (v282)
    {
      v87 = &v282;
      v88 = v282;
      MEMORY[0x277D82BE0](v282);
      sub_257B80D0C(v87);
      v89 = [v88 frameLength];
      MEMORY[0x277D82BD8](v88);
      v90 = v89;
    }

    else
    {
      sub_257B80D0C(&v282);
      v90 = 0x100000000;
    }

    v85 = HIDWORD(v90);
    v86 = v90;
    v278 = v90;
    v279 = BYTE4(v90) & 1;
    v280 = 0;
    v281 = 0;
    if ((v90 & 0x100000000) != 0)
    {
      v84 = 0;
    }

    else
    {
      v276 = v86;
      v277 = v85 & 1;
      v84 = v86 == v280;
    }

    v91 = v84;
  }

  v82 = v91;
  MEMORY[0x277D82BD8](v194);
  v83 = v107;
  if ((v82 & 1) == 0)
  {
    sub_257B767EC(0);
    goto LABEL_72;
  }

  v81 = v83;
  result = sub_257B76684(0);
  v104 = v81;
LABEL_87:
  v69 = 4 * v104;
  if ((4 * v104) >> 64 != (4 * v104) >> 63)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    return result;
  }

  if (v69 < 0)
  {
    sub_257B8495C();
    __break(1u);
  }

  if (v69 > 0xFFFFFFFFLL)
  {
    sub_257B8495C();
    __break(1u);
  }

  else
  {
    HIDWORD(v312) = v69;
    LODWORD(v312) = 1;
    v68 = sub_257B8464C();
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](v194);
    return v68;
  }

  return v197;
}

uint64_t sub_257B7BF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v23 = a1;
  v24 = a2;
  v27 = a3;
  v28 = a4;
  v25 = a5;
  v26 = a6;
  v22 = a7;
  v29 = a8;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v20[1] = 0;
  v36 = sub_257B844EC();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v21 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v24);
  v35 = v20 - v21;
  v45 = v8;
  v46 = v9;
  v43 = v10;
  v44 = v11;
  v41 = v12;
  v42 = v13;
  v40 = v14;
  v39 = v15;
  sub_257B8457C();
  v38 = sub_257B8456C();

  v37 = [v22 identifier];
  v16 = sub_257B846EC();
  __src[0] = v23;
  __src[1] = v24;
  __src[2] = v25;
  __src[3] = v26;
  __src[4] = v27;
  __src[5] = v28;
  __src[6] = v16;
  __src[7] = v17;
  memcpy(v35, __src, 0x40uLL);
  (*(v33 + 104))(v35, *MEMORY[0x277D70170], v36);
  v32 = [v29 jobIdentifier];
  v30 = sub_257B846EC();
  v31 = v18;
  sub_257B8455C();

  MEMORY[0x277D82BD8](v32);
  (*(v33 + 8))(v35, v36);
  MEMORY[0x277D82BD8](v37);
  return MEMORY[0x277D82BD8](v38);
}

uint64_t sub_257B7C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  v13 = sub_257B846EC();
  v17 = v6;
  MEMORY[0x277D82BE0](a5);
  v11 = sub_257B846EC();
  v15 = v7;
  MEMORY[0x277D82BE0](a6);
  v12(v13, v17, a3, a4, v11, v15, a6);
  MEMORY[0x277D82BD8](a6);

  MEMORY[0x277D82BD8](a5);

  MEMORY[0x277D82BD8](a2);
}

void sub_257B7C42C(void *a1)
{
  v136 = a1;
  v133 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v148 = 0;
  v115 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BA0, &qword_257B964D0);
  v116 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2 - 8, v3);
  v117 = v44 - v116;
  v118 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BA8, &qword_257B964D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v133, v4);
  v119 = v44 - v118;
  v120 = sub_257B844FC();
  v121 = *(v120 - 8);
  v122 = v121;
  MEMORY[0x28223BE20](v120 - 8, v120);
  v123 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v123;
  v124 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BB0, &qword_257B964E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v133, v6);
  v125 = v44 - v124;
  v126 = sub_257B8441C();
  v127 = *(v126 - 8);
  v128 = v127;
  v129 = *(v127 + 64);
  v7 = MEMORY[0x28223BE20](v133, v126);
  v131 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = v44 - v131;
  MEMORY[0x28223BE20](v7, v44 - v131);
  v132 = v44 - v131;
  v159 = v44 - v131;
  v143 = sub_257B844EC();
  v134 = *(v143 - 8);
  v141 = v134;
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133, v8);
  v142 = v44 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v9;
  v157 = v1;
  sub_257B8457C();
  v144 = sub_257B8456C();
  (*(v141 + 104))(v142, *MEMORY[0x277D70180], v143);
  v140 = [v136 jobIdentifier];
  v137 = sub_257B846EC();
  v139 = v10;
  sub_257B8455C();

  (*(v141 + 8))(v142, v143);
  v156 = sub_257B76A38();
  if (v156)
  {
    v108 = v156;
    v11 = v156;
    sub_257B80D0C(&v156);
    v110 = [v108 identifier];
    v12 = sub_257B846EC();
    v109 = v13;
    v111 = v12;

    v112 = v109;
    v113 = v111;
    v114 = v112;
  }

  else
  {
    sub_257B80D0C(&v156);
    v113 = 0;
    v114 = 0;
  }

  v104 = v114;
  v103 = v113;

  v100 = [v136 voice];
  v99 = [v100 identifier];
  v102 = sub_257B846EC();
  v105 = v14;

  v101 = v105;

  v106 = v154;
  v107 = v155;
  v154[0] = v103;
  v154[1] = v104;
  v155[0] = v102;
  v155[1] = v105;
  if (v104)
  {
    sub_257B8136C(v106, v146);
    if (v107[1])
    {
      v145 = *v107;
      v97 = MEMORY[0x259C6CF00](v146[0], v146[1], v145, *(&v145 + 1));
      sub_257B8104C(&v145);
      sub_257B8104C(v146);
      sub_257B8104C(v106);
      v98 = v97;
      goto LABEL_9;
    }

    sub_257B8104C(v146);
    goto LABEL_11;
  }

  if (v107[1])
  {
LABEL_11:
    sub_257B80E88(v154);
    v98 = 0;
    goto LABEL_9;
  }

  sub_257B8104C(v106);
  v98 = 1;
LABEL_9:
  v96 = v98;

  if (v96)
  {
    v73 = v115;
LABEL_23:
    v47 = v73;
    sub_257B76AA8([v136 voice]);
    v46 = 0;
    v44[1] = sub_257B80504();
    v45 = 1;
    v44[2] = sub_257B8499C();
    v44[0] = v38;
    v39 = v136;
    *v44[0] = v136;
    sub_257B79B2C();
    sub_257B75F8C(v40);
    sub_257B80568();
    v41 = sub_257B8474C();
    v43 = sub_257B76240(v41, v42);
    sub_257B762F8(v43);
    sub_257B760EC(v46);
    v71 = v47;
    return;
  }

  v15 = v138;
  v95 = [v136 voice];
  (*(class metadata base offset for MTMacinTalkAUSPAudioUnit + (*v15 & *MEMORY[0x277D85000]) + 512))();

  if ((*(v128 + 48))(v125, 1, v126) == 1)
  {
    sub_257B80EC0(v125);
    v48 = 25;
    v51 = 1;
    v152 = sub_257B8498C();
    v153 = v32;
    v33 = sub_257B8474C();
    v49 = v34;
    v53 = &v152;
    MEMORY[0x259C6D120](v33);

    v151 = [v136 voice];
    v56 = 0;
    v50 = sub_257B80F68();
    sub_257B80FCC();
    sub_257B8496C();

    v35 = sub_257B8474C();
    v52 = v36;
    MEMORY[0x259C6D120](v35);

    v55 = v152;
    v54 = v153;

    sub_257B8104C(v53);
    v57 = sub_257B8473C();
    v59 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BC0, &qword_257B964E8);
    v58 = sub_257B8499C();
    sub_257B8444C();

    v71 = v115;
    return;
  }

  v16 = v130;
  (*(v128 + 32))(v132, v125, v126);
  v93 = *MEMORY[0x277CBECE8];
  v17 = v93;
  (*(v128 + 16))(v16, v132, v126);
  v89 = sub_257B8440C();
  v94 = CFBundleCreate(v93, v89);
  v90 = v94;

  v91 = *(v128 + 8);
  v92 = (v128 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v91(v130, v126);

  if (!v94)
  {
    v60 = 26;
    v62 = 1;
    v149 = sub_257B8498C();
    v150 = v26;
    v27 = sub_257B8474C();
    v61 = v28;
    v64 = &v149;
    MEMORY[0x259C6D120](v27);

    sub_257B81078();
    sub_257B8496C();
    v67 = 0;
    v29 = sub_257B8474C();
    v63 = v30;
    MEMORY[0x259C6D120](v29);

    v66 = v149;
    v65 = v150;

    sub_257B8104C(v64);
    v68 = sub_257B8473C();
    v70 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BC0, &qword_257B964E8);
    v69 = sub_257B8499C();
    sub_257B8444C();

    v91(v132, v126);
    v71 = v115;
    return;
  }

  v88 = v90;
  v81 = v90;
  v148 = v90;
  v18 = [objc_opt_self() loadVoiceBundle_];
  sub_257B76934(v18);
  v82 = sub_257B76C08();
  [v82 reset];

  sub_257B8454C();
  v87 = sub_257B8453C();
  v83 = [v136 voice];
  v86 = [v83 identifier];
  v84 = sub_257B846EC();
  v85 = v19;

  sub_257B8452C();

  if ((*(v122 + 48))(v119, 1, v120) == 1)
  {
    v20 = v115;
    sub_257B810F8(v119);
    v80 = v20;
LABEL_19:
    v72 = v80;

    v91(v132, v126);
    v73 = v72;
    goto LABEL_23;
  }

  v21 = v115;
  (*(v122 + 32))(v123, v119, v120);
  v74 = 0;
  sub_257B8459C();
  v22 = sub_257B8445C();
  (*(*(v22 - 8) + 56))(v117, 1);
  v75 = sub_257B8458C();
  sub_257B811A0(v117);
  v147 = v75;
  v23 = v138;
  v76 = v44;
  MEMORY[0x28223BE20](v44, v24);
  v77 = &v44[-4];
  v44[-2] = v25;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BD0, &qword_257B964F0);
  sub_257B81270();
  sub_257B8479C();
  v79 = v21;
  if (!v21)
  {

    sub_257B80D40(&v147);
    (*(v122 + 8))(v123, v120);
    v80 = v79;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_257B7D634(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_257B76C08();
  [v3 loadRuleSet_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_257B7D6A8(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a1);
  sub_257B7C42C(a3);
  MEMORY[0x277D82BD8](a1);
  return MEMORY[0x277D82BD8](a3);
}

uint64_t sub_257B7D720(uint64_t a1)
{
  type metadata accessor for TTSSpeechGender(0);
  sub_257B81E8C();
  if (sub_257B846CC())
  {
    return 2;
  }

  else
  {
    return (sub_257B846CC() & 1) != 0;
  }
}

id sub_257B7D800(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7D890();
  MEMORY[0x277D82BD8](a1);
  sub_257B80F68();
  v3 = sub_257B847DC();

  return v3;
}

uint64_t sub_257B7D8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a1);
  sub_257B80F68();
  v4 = sub_257B847EC();
  sub_257B7D954(v4);
  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B7D988()
{
  v35 = 0;
  v19 = 0;
  v23 = sub_257B844EC();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v20 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v24 = &v9 - v20;
  v35 = v0;
  sub_257B8457C();
  v25 = sub_257B8456C();
  (*(v21 + 104))(v24, *MEMORY[0x277D70178], v23);
  v27 = sub_257B75F24();
  v32 = v27;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BE0, &qword_257B964F8);
  sub_257B81F0C();
  sub_257B8483C();
  v28 = v31;

  if (v28)
  {
    v18 = v28;
    v12 = v28;
    v13 = [v28 jobIdentifier];
    v14 = sub_257B846EC();
    v15 = v2;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v29 = v16;
  v30 = v17;
  if (v17)
  {
    v33 = v29;
    v34 = v30;
  }

  else
  {
    v33 = sub_257B8474C();
    v34 = v3;
    if (v30)
    {
      sub_257B8104C(&v29);
    }
  }

  v9 = v34;
  sub_257B8455C();

  (*(v21 + 8))(v24, v23);
  MEMORY[0x277D82BD8](v25);
  v10 = sub_257B76C08();
  [v10 cancelProcessing];
  MEMORY[0x277D82BD8](v10);
  v11 = 0;
  sub_257B80504();
  v4 = sub_257B8499C();
  sub_257B75F8C(v4);
  sub_257B80568();
  v5 = sub_257B8474C();
  v7 = sub_257B76240(v5, v6);
  sub_257B762F8(v7);
  sub_257B76684(v11);
  return sub_257B767EC(v11);
}

uint64_t sub_257B7DCB0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7D988();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B7DD00()
{
  v6 = (v0 + qword_281181678);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  sub_257B844DC();
  sub_257B7DE08();
  v3 = sub_257B844CC();

  v2 = (v5 + qword_281181678);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_257B7DE24(uint64_t a1)
{

  v3 = (v1 + qword_281181678);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*sub_257B7DEA4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_257B7DD00();
  return sub_257B7DF00;
}

uint64_t sub_257B7DF00(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_257B7DE24(*a1);
  }

  v3 = *a1;

  sub_257B7DE24(v3);
}

uint64_t sub_257B7DF70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v21 = a1;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BA8, &qword_257B964D8);
  v16 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4);
  v27 = v12 - v16;
  v17 = 0;
  v28 = sub_257B844FC();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v5);
  v19 = v12 - v18;
  v33 = v12 - v18;
  v32 = v6;
  v31 = v2;
  v20 = sub_257B8454C();
  v24 = sub_257B8453C();
  v23 = [v21 identifier];
  sub_257B846EC();
  v22 = v7;
  sub_257B8452C();

  MEMORY[0x277D82BD8](v23);

  if ((*(v25 + 48))(v27, 1, v28) == 1)
  {
    sub_257B810F8(v27);
  }

  else
  {
    (*(v25 + 32))(v19, v27, v28);
    v12[4] = sub_257B8453C();
    v13 = sub_257B8451C();
    v14 = v8;

    if (v14)
    {
      v12[2] = v13;
      v12[3] = v14;
      v12[1] = v14;
      v29 = v13;
      v30 = v14;
      sub_257B843FC();
      v9 = sub_257B8441C();
      (*(*(v9 - 8) + 56))(v15, 0, 1);

      return (*(v25 + 8))(v19, v28);
    }

    (*(v25 + 8))(v19, v28);
  }

  v11 = sub_257B8441C();
  return (*(*(v11 - 8) + 56))(v15, 1);
}

uint64_t sub_257B7E2CC(uint64_t a1, unsigned int a2)
{
  v20 = 0;
  v25 = a1;
  v24 = a2;
  v23 = v2;
  v22 = sub_257B75F24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BE0, &qword_257B964F8);
  sub_257B81F0C();
  sub_257B8483C();
  v18 = v21;
  if (!v21)
  {
  }

  v20 = v21;

  sub_257B81FE8();
  v19[0] = sub_257B8498C();
  v19[1] = v3;
  v4 = sub_257B8474C();
  MEMORY[0x259C6D120](v4);

  sub_257B8496C();
  v5 = sub_257B8474C();
  MEMORY[0x259C6D120](v5);

  sub_257B8104C(v19);
  result = sub_257B8473C();
  if ((4 * a1) >> 64 == (4 * a1) >> 63)
  {
    v14 = sub_257B7E6C0(result, v7, 4 * a1);
    (MEMORY[0x277D82BE0])();
    v15 = [v17 speechSynthesisOutputMetadataBlock];
    if (v15)
    {
      *(swift_allocObject() + 16) = v15;
      v13 = sub_257B8204C;
    }

    else
    {
      v13 = 0;
    }

    (MEMORY[0x277D82BD8])();
    if (v13)
    {
      v12 = v13;
    }

    else
    {
      sub_257B8495C();
      __break(1u);
    }

    sub_257B8499C();
    v11 = v8;
    MEMORY[0x277D82BE0](v14);
    *v11 = v14;
    sub_257B79B2C();
    (v12)(v9, v18, v10);

    MEMORY[0x277D82BD8](v14);
    return MEMORY[0x277D82BD8](v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257B7E710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_257B81FE8();
  v5 = sub_257B847DC();
  (*(a3 + 16))();
  return MEMORY[0x277D82BD8](v5);
}

uint64_t sub_257B7E778(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7E2CC(a3, a4);
  return MEMORY[0x277D82BD8](a1);
}

unint64_t sub_257B7E7D8(uint64_t a1, unint64_t a2, int a3)
{
  v91 = a1;
  v90 = a2;
  v89 = a3;
  v81 = "Fatal error";
  v82 = "Unexpectedly found nil while unwrapping an Optional value";
  v83 = "MacinTalk/MacinTalkAUSPAudioUnit.swift";
  v84 = "Not enough bits to represent the passed value";
  v85 = "Swift/Integers.swift";
  v86 = sub_257B8204C;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v125 = 0;
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8);
  v87 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5);
  v88 = &v26 - v87;
  v92 = sub_257B845EC();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v91, v90);
  v96 = &v26 - v95;
  v132 = &v26 - v95;
  v131 = v6;
  v130 = v7;
  v129 = v8;
  v128 = v3;
  v97 = sub_257B75F24();
  v127 = v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BE0, &qword_257B964F8);
  sub_257B81F0C();
  sub_257B8483C();
  v99 = v126;
  if (!v126)
  {
  }

  v79 = v99;
  v78 = v99;
  v125 = v99;

  sub_257B76460(v88);
  if ((*(v93 + 48))(v88, 1, v92) == 1)
  {
    sub_257B80988(v88);
    return MEMORY[0x277D82BD8](v78);
  }

  (*(v93 + 32))(v96, v88, v92);
  v77 = sub_257B76288();
  if (v90 > 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_257B8495C();
    __break(1u);
  }

  v138 = v90;
  v137 = v89;
  v139 = v90;
  v140 = v89;
  v123 = v90;
  v124 = v89;
  v121 = v90;
  v122 = v89;
  v119 = [v77 translateRangeInTransformedString_];
  v120 = v10;
  v75 = v119;
  v74 = v10;
  result = MEMORY[0x277D82BD8](v77);
  v117 = v75;
  v118 = v74;
  v76 = &v75[v74];
  if (__OFADD__(v75, v74))
  {
    __break(1u);
    goto LABEL_28;
  }

  if (!v76)
  {
    (*(v93 + 8))(v96, v92);
    return MEMORY[0x277D82BD8](v78);
  }

  v67 = sub_257B76288();
  v72 = [v67 originalString];
  v68 = sub_257B846EC();
  v69 = v12;
  MEMORY[0x277D82BD8](v67);
  v70 = sub_257B8486C();
  v71 = v13;
  v73 = v14;

  MEMORY[0x277D82BD8](v72);
  if (v73)
  {
    (*(v93 + 8))(v96, v92);
    return MEMORY[0x277D82BD8](v78);
  }

  v65 = v70;
  v66 = v71;
  v60 = v71;
  v59 = v70;
  v115 = v70;
  v116 = v71;
  v58 = [v78 ssmlRepresentation];
  v61 = sub_257B846EC();
  v62 = v15;
  v113 = v61;
  v114 = v15;
  MEMORY[0x277D82BD8](v58);
  v63 = sub_257B845DC();
  v64 = v16;
  if (v17)
  {

    (*(v93 + 8))(v96, v92);
    return MEMORY[0x277D82BD8](v78);
  }

  v56 = v63;
  v57 = v64;
  v43 = v64;
  v44 = v63;
  v111 = v63;
  v112 = v64;
  v42 = v110;
  v110[0] = v61;
  v110[1] = v62;
  sub_257B82054();
  v50 = sub_257B8476C();
  v109 = v50;
  sub_257B8478C();
  v45 = v18;
  v46 = sub_257B848AC();
  v47 = v19;
  v48 = v20;
  v49 = v21;

  v105 = v46;
  v106 = v47;
  v107 = v48;
  v108 = v49;
  sub_257B820CC();
  v51 = sub_257B8482C();

  v134 = v50;
  v133 = v51;
  v135 = v50;
  v136 = v51;
  v103 = v50;
  v104 = v51;
  v52 = v50;
  v53 = v51;
  v101 = v50;
  v102 = v51;
  result = sub_257B81FE8();
  v54 = result;
  v55 = 4 * v91;
  if ((4 * v91) >> 64 != (4 * v91) >> 63)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v40 = sub_257B7F188(1, v52, v53, v55);
  v100 = v40;
  MEMORY[0x277D82BE0](v80);
  v41 = [v80 speechSynthesisOutputMetadataBlock];
  if (v41)
  {
    v39 = v41;
    v36 = v41;
    v22 = swift_allocObject();
    v23 = v86;
    *(v22 + 16) = v36;
    v37 = v23;
    v38 = v22;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v34 = v38;
  v35 = v37;
  MEMORY[0x277D82BD8](v80);
  if (v35)
  {
    v32 = v35;
    v33 = v34;
  }

  else
  {
    sub_257B8495C();
    __break(1u);
  }

  v31 = v33;
  v29 = v32;
  v28 = sub_257B8499C();
  v27 = v24;
  MEMORY[0x277D82BE0](v40);
  *v27 = v40;
  sub_257B79B2C();
  v30 = v25;
  v29();

  MEMORY[0x277D82BD8](v40);

  (*(v93 + 8))(v96, v92);
  return MEMORY[0x277D82BD8](v78);
}

uint64_t sub_257B7F1E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7E7D8(a3, a4, a5);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B7F26C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7F248();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B7F2E0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7F2CC();
  return MEMORY[0x277D82BD8](a1);
}

void sub_257B7F330()
{
  MEMORY[0x277D82BD8](*(v0 + qword_2811812C0));
  sub_257B80D0C((v0 + qword_2811812D8));
  sub_257B80D40((v0 + qword_2811812C8));
  sub_257B80D0C((v0 + qword_2811812D0));
  MEMORY[0x277D82BD8](*(v0 + qword_2811812E0));
  sub_257B80988(v0 + qword_281181680);
  sub_257B80D0C((v0 + qword_2811816E8));
  sub_257B80D0C((v0 + qword_2811816A8));
  sub_257B80D0C((v0 + qword_2811816A0));
  MEMORY[0x277D82BD8](*(v0 + qword_2811816D8));
  v1 = qword_2811816C0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1);
  (v3)(v0 + qword_2811816C8, v2);
  (v3)(v0 + qword_2811816D0, v2);
  sub_257B80D6C((v0 + qword_281181678));
}

id MTMacinTalkAUSPAudioUnit.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTMacinTalkAUSPAudioUnit(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_257B7F53C(uint64_t a1)
{
  MEMORY[0x277D82BD8](*(a1 + qword_2811812C0));
  sub_257B80D0C((a1 + qword_2811812D8));
  sub_257B80D40((a1 + qword_2811812C8));
  sub_257B80D0C((a1 + qword_2811812D0));
  MEMORY[0x277D82BD8](*(a1 + qword_2811812E0));
  sub_257B80988(a1 + qword_281181680);
  sub_257B80D0C((a1 + qword_2811816E8));
  sub_257B80D0C((a1 + qword_2811816A8));
  sub_257B80D0C((a1 + qword_2811816A0));
  MEMORY[0x277D82BD8](*(a1 + qword_2811816D8));
  v1 = qword_2811816C0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1 + v1);
  (v3)(a1 + qword_2811816C8, v2);
  (v3)(a1 + qword_2811816D0, v2);
  sub_257B80D6C((a1 + qword_281181678));
}

uint64_t sub_257B7F70C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v58 = a1;
  v53 = a2;
  v54 = a3;
  v57 = a4;
  v55 = a5;
  v56 = a6;
  v50 = "Fatal error";
  v51 = "Range requires lowerBound <= upperBound";
  v52 = "Swift/Range.swift";
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v59 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BA0, &qword_257B964D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v19 - v59;
  v81 = MEMORY[0x28223BE20](v58, v53);
  v82 = v6;
  v79 = v7;
  v80 = v8 & 1;
  v77 = v9;
  v78 = v10;
  if (v8)
  {
    v76[2] = v55;
    v76[3] = v56;
    v25 = v76;
    v76[0] = v58;
    v76[1] = v53;
    v23 = 0;
    v16 = *(*(sub_257B8445C() - 8) + 56);
    v24 = 1;
    v16(v60, 1);
    sub_257B82054();
    v26 = sub_257B848BC();
    v27 = v17;
    sub_257B811A0(v60);
    if (v27)
    {
      v20 = 0;
      v21 = 1;
    }

    else
    {
      v22 = v26;
      v20 = v26;
      v21 = 0;
    }

    v45 = v20;
    v46 = v21;
  }

  else
  {
    v49 = v54;
    v47 = v54;
    v75 = v54;
    v48 = &v74;
    v74 = v54;
    v73 = MEMORY[0x259C6CF20](v55, v56);
    if (sub_257B846BC())
    {
      v45 = 0;
      v46 = 1;
    }

    else
    {
      v69 = v55;
      v70 = v56;
      v67 = v58;
      v68 = v53;
      v44 = MEMORY[0x259C6CF20]();
      if (v44 >> 14 < v47 >> 14)
      {
        sub_257B8495C();
        __break(1u);
      }

      v37 = sub_257B8445C();
      v11 = *(v37 - 8);
      v38 = *(v11 + 56);
      v39 = v11 + 56;
      v43 = 1;
      v38(v60, 1);
      v40 = sub_257B82054();
      *&v41 = sub_257B848BC();
      *(&v41 + 1) = v12;
      v42 = v13;
      sub_257B811A0(v60);
      v65 = v41;
      v66 = v42 & 1 & v43;

      if (v66)
      {
        v63 = v55;
        v64 = v56;
        v61 = v58;
        v62 = v53;
        v36 = sub_257B8472C();
        if (v47 >> 14 < v36 >> 14)
        {
          sub_257B8495C();
          __break(1u);
        }

        v34 = 1;
        (v38)(v60, 1, 1, v37);
        v35 = sub_257B848BC();
        v32 = v14;
        v33 = v15;
        sub_257B811A0(v60);
        *&v71 = v35;
        *(&v71 + 1) = v32;
        v72 = v33 & 1 & v34;
      }

      else
      {
        v71 = v65;
        v72 = 0;
      }

      v31 = v71;
      if (v72)
      {
        v28 = 0;
        v29 = 1;
      }

      else
      {
        v30 = v31;
        v28 = v31;
        v29 = 0;
      }

      v45 = v28;
      v46 = v29;
    }
  }

  return v45;
}

Swift::UInt32 __swiftcall String.osType()()
{
  v23 = v1;
  v22 = v0;
  v21 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v19 = 0;
  v26 = sub_257B8471C();
  v20 = *(v26 - 8);
  v24 = v20;
  v2 = MEMORY[0x28223BE20](v22, v23);
  v25 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2;
  v34 = v4;
  v32 = 0;
  sub_257B8470C();
  sub_257B801FC();
  v5 = sub_257B846FC();
  v29 = v6;
  v27 = v5;
  v28 = v6;
  (*(v24 + 8))(v25, v26);
  if (v29 >> 60 == 15)
  {
    v16 = v19;
  }

  else
  {
    v17 = v27;
    v18 = v28;
    v14 = v28;
    v15 = v27;
    v30 = v27;
    v31 = v28;
    if (MEMORY[0x259C6CBE0]() == 4)
    {
      v7 = v19;
      sub_257B80458(v15, v14);
      v12 = &v10;
      MEMORY[0x28223BE20](&v10, v8);
      sub_257B8442C();
      v13 = v7;
      if (v7)
      {
        goto LABEL_11;
      }

      sub_257B80208(v15, v14);
      sub_257B80208(v15, v14);
      v16 = v13;
    }

    else
    {
      sub_257B80208(v15, v14);
      v16 = v19;
    }
  }

  v11 = v32;
  if (!HIDWORD(v32))
  {
    return v11;
  }

  sub_257B8495C();
  __break(1u);
LABEL_11:
  result = sub_257B80208(v15, v14);
  __break(1u);
  return result;
}

uint64_t sub_257B80208(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

void *sub_257B80284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (MEMORY[0x259C6CBE0]() < 0)
  {
    sub_257B8495C();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2CC8, &qword_257B968B8);
  sub_257B82DC4();
  sub_257B8485C();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2CE0, &qword_257B968C0);
    result = sub_257B8494C();
    if (v12)
    {
      break;
    }

    v5 = *a4 << 8;
    v6 = *(a1 + v11);
    v8 = v5 + v6;
    if (__CFADD__(v5, v6))
    {
      __break(1u);
      return result;
    }

    *a4 = v8;
  }

  return result;
}

uint64_t sub_257B80458(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

unint64_t sub_257B80504()
{
  v2 = qword_2811811F0;
  if (!qword_2811811F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2811811F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B80568()
{
  v2 = qword_281181248;
  if (!qword_281181248)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281181248);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_257B805CC(const void *a1, void *a2)
{
  v6 = sub_257B845EC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

void *sub_257B80760(const void *a1, void *a2)
{
  v7 = sub_257B845EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_257B80988(uint64_t a1)
{
  v3 = sub_257B845EC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_257B80A30()
{
  v2 = qword_281181240;
  if (!qword_281181240)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281181240);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for AudioUnitParameterOptions(uint64_t a1)
{
  v5 = qword_281181200;
  if (!qword_281181200)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_281181200);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_257B80B2C()
{
  v2 = qword_281181218;
  if (!qword_281181218)
  {
    type metadata accessor for AudioUnitParameterOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181218);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CMFormatDescription(uint64_t a1)
{
  v5 = qword_281181230;
  if (!qword_281181230)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_281181230);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_257B80C44()
{
  v2 = qword_281181270;
  if (!qword_281181270)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281181270);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B80CA8()
{
  v2 = qword_281181268;
  if (!qword_281181268)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281181268);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B80D98()
{
  v2 = qword_281181238;
  if (!qword_281181238)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281181238);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_257B80EC0(uint64_t a1)
{
  v3 = sub_257B8441C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_257B80F68()
{
  v2 = qword_2811811F8;
  if (!qword_2811811F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2811811F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B80FCC()
{
  v2 = qword_27F8F2BB8;
  if (!qword_27F8F2BB8)
  {
    sub_257B80F68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2BB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B81078()
{
  v2 = qword_27F8F2BC8;
  if (!qword_27F8F2BC8)
  {
    sub_257B8441C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2BC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_257B810F8(uint64_t a1)
{
  v3 = sub_257B844FC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_257B811A0(uint64_t a1)
{
  v3 = sub_257B8445C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_257B81270()
{
  v2 = qword_27F8F2BD8;
  if (!qword_27F8F2BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F2BD0, &qword_257B964F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2BD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

void *sub_257B8136C(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

id sub_257B813AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_257B846DC();
  v5 = [v3 initWithOriginalString_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

id sub_257B81434(uint64_t a1)
{
  v4 = [v1 initWithCMAudioFormatDescription_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_257B81484(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2D28, &qword_257B968E0);
  sub_257B833B4();
  sub_257B849BC();
  v5 = [v3 initWithFormat:a1 error:v6];
  MEMORY[0x277D82BE0](0);
  MEMORY[0x277D82BD8](0);
  if (v5)
  {
    MEMORY[0x277D82BD8](a1);
    return v5;
  }

  else
  {
    sub_257B843EC();
    MEMORY[0x277D82BD8](0);
    swift_willThrow();
    MEMORY[0x277D82BD8](a1);
    return v2;
  }
}

id sub_257B8161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_257B80CA8();
  v6 = sub_257B847DC();
  v8 = [v5 initWithAudioUnit:a1 busType:a2 busses:?];
  MEMORY[0x277D82BD8](v6);

  MEMORY[0x277D82BD8](a1);
  return v8;
}

id sub_257B816B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_257B846DC();
  v5 = [v3 initWithString_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

id sub_257B81714(uint64_t a1, uint64_t a2)
{
  v6 = [v2 initWithVoice_frontend_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

id sub_257B817A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_257B846DC();
  v5 = [v3 initWithBookmarkName_atByteSampleOffset_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

uint64_t sub_257B81860(uint64_t a1)
{
  sub_257B82C4C();
  sub_257B82CCC();
  return sub_257B84A7C();
}

uint64_t sub_257B81A64(uint64_t a1, uint64_t a2)
{
  sub_257B82C4C();
  sub_257B82CCC();
  return sub_257B84A6C();
}

uint64_t sub_257B81AA8(uint64_t a1, uint64_t a2)
{
  sub_257B82C4C();
  sub_257B82CCC();
  return sub_257B84A4C();
}

uint64_t sub_257B81AEC(uint64_t a1, uint64_t a2)
{
  sub_257B82C4C();
  sub_257B82CCC();
  return sub_257B84A5C();
}

void sub_257B81D14(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

void sub_257B81D84(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 4) = 0;
}

unint64_t type metadata accessor for TTSSpeechGender(uint64_t a1)
{
  v5 = qword_281181250;
  if (!qword_281181250)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_281181250);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_257B81E8C()
{
  v2 = qword_281181260;
  if (!qword_281181260)
  {
    type metadata accessor for TTSSpeechGender(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B81F0C()
{
  v2 = qword_27F8F2BE8;
  if (!qword_27F8F2BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F2BE0, &qword_257B964F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2BE8);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_257B81FE8()
{
  v2 = qword_27F8F2BF0;
  if (!qword_27F8F2BF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27F8F2BF0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B82054()
{
  v2 = qword_281181288;
  if (!qword_281181288)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B820CC()
{
  v2 = qword_27F8F2BF8;
  if (!qword_27F8F2BF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2BF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B8215C()
{
  v2 = qword_27F8F2C00;
  if (!qword_27F8F2C00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2C00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_257B821E8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_257B82350(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_257B82570(uint64_t a1)
{
  inited = sub_257B82918(319);
  if (v1 <= 0x3F)
  {
    inited = sub_257B829B4(319);
    if (v2 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (!inited)
      {
        return 0;
      }
    }
  }

  return inited;
}

unint64_t sub_257B82918(uint64_t a1)
{
  v5 = qword_281181280;
  if (!qword_281181280)
  {
    sub_257B845EC();
    v4 = sub_257B8489C();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_281181280);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_257B829B4(uint64_t a1)
{
  v5 = qword_2811812E8;
  if (!qword_2811812E8)
  {
    v4 = sub_257B844BC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2811812E8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_257B82A84()
{
  v2 = qword_281181220;
  if (!qword_281181220)
  {
    type metadata accessor for AudioUnitParameterOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82B34()
{
  v2 = qword_281181228;
  if (!qword_281181228)
  {
    type metadata accessor for AudioUnitParameterOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82BCC()
{
  v2 = qword_281181210;
  if (!qword_281181210)
  {
    type metadata accessor for AudioUnitParameterOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82C4C()
{
  v2 = qword_281181208;
  if (!qword_281181208)
  {
    type metadata accessor for AudioUnitParameterOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82CCC()
{
  v2 = qword_2811812B8;
  if (!qword_2811812B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2811812B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82D44()
{
  v2 = qword_281181258;
  if (!qword_281181258)
  {
    type metadata accessor for TTSSpeechGender(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181258);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82DC4()
{
  v2 = qword_27F8F2CD0;
  if (!qword_27F8F2CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F2CC8, &qword_257B968B8);
    sub_257B82E68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2CD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82E68()
{
  v2 = qword_27F8F2CD8;
  if (!qword_27F8F2CD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2CD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_257B82EEC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2CE8, &qword_257B968C8);
    v1 = sub_257B847FC();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_257B82FA4()
{
  v2 = qword_27F8F2CF8;
  if (!qword_27F8F2CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F2CF0, &qword_257B968D0);
    sub_257B82E68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2CF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B83048()
{
  v2 = qword_27F8F2D08;
  if (!qword_27F8F2D08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2D08);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_257B8324C()
{
  v2 = qword_27F8F2D10;
  if (!qword_27F8F2D10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27F8F2D10);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B832B0()
{
  v2 = qword_27F8F2D18;
  if (!qword_27F8F2D18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27F8F2D18);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B83314()
{
  v2 = qword_27F8F2D20;
  if (!qword_27F8F2D20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27F8F2D20);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_257B83378(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_257B833B4()
{
  v2 = qword_281181278;
  if (!qword_281181278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F2D28, &qword_257B968E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181278);
    return WitnessTable;
  }

  return v2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_257B83450(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_257B83530(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

unint64_t type metadata accessor for AudioBufferList(uint64_t a1)
{
  v5 = qword_27F8F2D30;
  if (!qword_27F8F2D30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D30);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_257B837A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 64))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_257B838AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3)
    {
      *(result + 64) = 1;
    }
  }

  else if (a3)
  {
    *(result + 64) = 0;
  }

  return result;
}

unint64_t type metadata accessor for AudioTimeStamp(uint64_t a1)
{
  v5 = qword_27F8F2D38;
  if (!qword_27F8F2D38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D38);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AudioUnitRenderActionFlags(uint64_t a1)
{
  v5 = qword_27F8F2D40;
  if (!qword_27F8F2D40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D40);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AudioTimeStampFlags(uint64_t a1)
{
  v5 = qword_27F8F2D48;
  if (!qword_27F8F2D48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D48);
      return v2;
    }
  }

  return v5;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

unint64_t type metadata accessor for SMPTETime(uint64_t a1)
{
  v5 = qword_27F8F2D50;
  if (!qword_27F8F2D50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D50);
      return v2;
    }
  }

  return v5;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_257B83CEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_257B83DF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t type metadata accessor for AudioBuffer(uint64_t a1)
{
  v5 = qword_27F8F2D58;
  if (!qword_27F8F2D58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D58);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for SMPTETimeFlags(uint64_t a1)
{
  v5 = qword_27F8F2D60;
  if (!qword_27F8F2D60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D60);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for SMPTETimeType(uint64_t a1)
{
  v5 = qword_27F8F2D68;
  if (!qword_27F8F2D68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D68);
      return v2;
    }
  }

  return v5;
}

void MTBERemoteIOSoundOutput::WaitForOutputToStop(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 134217984;
  *a3 = a2;
  _os_log_error_impl(&dword_257B07000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MTX WaitForOutputToStop AvailableCapacity not increasing %lu", buf, 0xCu);
}

void SLML::Fatal(SLML *this, const char *a2, ...)
{
  va_start(va, a2);
  v3 = MEMORY[0x277D85DF8];
  fwrite("SpeechMatrix: ", 0xEuLL, 1uLL, *MEMORY[0x277D85DF8]);
  vfprintf(*v3, this, va);
  fputc(10, *v3);
  abort();
}

void MTBEAbort(FILE *a1, MTFESpeechVisitor *a2, uint64_t a3)
{
  fclose(a1);
  MTFESpeechVisitor::~MTFESpeechVisitor(a2);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

void SLCFArrayBuilder::~SLCFArrayBuilder(SLCFArrayBuilder *this)
{
  MEMORY[0x2821CC848](this);
}

{
  MEMORY[0x2821CC850](this);
}

void SLCFStringTextSource::SLCFStringTextSource(SLCFStringTextSource *this, const __CFString *a2)
{
  MEMORY[0x2821CC858](this, a2);
}

{
  MEMORY[0x2821CC860](this, a2);
}

void SLCFStringTextSource::~SLCFStringTextSource(SLCFStringTextSource *this)
{
  MEMORY[0x2821CC868](this);
}

{
  MEMORY[0x2821CC870](this);
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}