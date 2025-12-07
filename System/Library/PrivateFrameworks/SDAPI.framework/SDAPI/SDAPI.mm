void MrecInitModule_latutil_kernel(void)
{
  if (!gParDebugLatticeProcessing)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugLatticeProcessing", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugLatticeProcessing = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugLatticeProcessing);
  }
}

void BoolGlobalParam::~BoolGlobalParam(BoolGlobalParam *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

void MrecInitModule_dmatrix_mrecutil(void)
{
  if (!gParDebugMatrixDecomposition)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugMatrixDecomposition", &unk_26286B638, &unk_26286B638, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugMatrixDecomposition = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugMatrixDecomposition);
  }

  if (!gParDebugMatrixDecompositionAccuracy)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugMatrixDecompositionAccuracy", &unk_26286B638, &unk_26286B638, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugMatrixDecompositionAccuracy = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugMatrixDecompositionAccuracy);
  }

  if (!gParDiagnosticMatrixComputation)
  {
    v4 = MemChunkAlloc(0x40uLL, 0);
    EnumParamRange::EnumParamRange(&v5, &sDiagnosticMatrixComputationEnum);
    EnumGlobalParamBase::EnumGlobalParamBase(v4, "DiagnosticMatrixComputation", &unk_26286B638, &unk_26286B638, 0, &v5, 0);
    v4->n128_u64[0] = &unk_287527B80;
    gParDiagnosticMatrixComputation = v4;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticMatrixComputation);
  }
}

uint64_t *DgnVector::operator*@<X0>(uint64_t *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 2);
  v4 = a2[1];
  *(a3 + 8) = 0;
  *a3 = 0;
  if (v4)
  {
    v6 = result;
    result = MemChunkAlloc(8 * v4, 0);
    v8 = 0;
    v9 = 0;
    *a3 = result;
    *(a3 + 8) = v4;
    v10 = *a2;
    v11 = *(a2 + 1);
    do
    {
      result[v9] = 0;
      if (v3)
      {
        v12 = *v6;
        v13 = 0.0;
        v14 = v3;
        v15 = v8;
        do
        {
          v16 = *v12++;
          v13 = v13 + v16 * *(v11 + 8 * v15);
          *&result[v9] = v13;
          ++v15;
          --v14;
        }

        while (v14);
      }

      ++v9;
      v8 += v10;
    }

    while (v9 != v4);
  }

  return result;
}

uint64_t sizeObject(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    return 16;
  }

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
    v4 = *(a1 + 8);
    if (v4 >= 1)
    {
      result += 8 * v4;
    }
  }

  return result;
}

{
  if (a2 == 2)
  {
    return 24;
  }

  if (a2 == 3)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 12;
    v2 = 8;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v3 = 8;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v5 = *(a1 + 16);
      if (v5 >= 1)
      {
        v3 += 8 * v5;
      }

      v2 = 8;
    }
  }

  return v3 + v2;
}

{
  return 8 * (a2 != 3);
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 24;
  }
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 48;
  }
}

{
  v3 = sizeObject(a1, a2);
  v4 = 18;
  if (a2 == 3)
  {
    v4 = 0;
  }

  return v4 + v3;
}

{
  return 4 * (a2 != 3);
}

{
  v2 = 6;
  if (a2 == 3)
  {
    v2 = 0;
  }

  if (a2 == 2)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 14;
  }
}

{
  v3 = sizeObject<unsigned long long>(a1, a2);
  v4 = 28;
  if (a2 == 3)
  {
    v4 = 0;
  }

  return v3 + v4;
}

{
  return LinearTransform::sizeObject(a1 + 8, a2) + 8 * (a2 != 3);
}

{
  v2 = (8 * (a2 != 3)) | (2 * (a2 != 3));
  if (a2 != 3)
  {
    ++v2;
  }

  return v2 + 2 * (a2 != 3) + ((50 * (a2 != 3)) | (8 * (a2 != 3)));
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 28;
  }
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

{
  return ((a2 != 3) | (8 * (a2 != 3)) | (4 * (a2 != 3))) + 24 * (a2 != 3);
}

{
  return sizeObject<DgnString *>(a1, a2) + 8 * (a2 != 3);
}

{
  v2 = gShadowDiagnosticShowIdealizedObjectSizes;
  v3 = 64;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 4;
  }

  if (a2 == 3)
  {
    v3 = 0;
    v2 = 1;
  }

  v4 = (v2 & 1) == 0;
  v5 = 12;
  if (!v4)
  {
    v5 = 0;
  }

  return v3 + v5;
}

{
  if ((a2 == 3) | gShadowDiagnosticShowIdealizedObjectSizes & 1)
  {
    return 0;
  }

  else
  {
    return 200;
  }
}

{
  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 8;
  }

  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

{
  v4 = 8;
  if ((a2 == 3) | gShadowDiagnosticShowIdealizedObjectSizes & 1)
  {
    v4 = 0;
  }

  v5 = v4 | (2 * (a2 != 3));
  v6 = sizeObject<unsigned char>(a1 + 16, a2);
  v7 = v6 + sizeObject<unsigned long long>(a1 + 32, a2);
  v8 = v7 + sizeObject<unsigned int>(a1 + 48, a2);
  v9 = v8 + sizeObject<unsigned long long>(a1 + 64, a2);
  v10 = v9 + sizeObject<unsigned long long>(a1 + 80, a2);
  return v5 + v10 + sizeObject<unsigned long long>(a1 + 96, a2);
}

{
  if (gShadowDiagnosticShowIdealizedObjectSizes == 1)
  {
    if (a2 == 3)
    {
      v2 = 0;
    }

    else
    {
      v2 = 12;
    }

    return sizeObject(a1 + 12, a2) + v2;
  }

  else if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 24;
  }
}

{
  if (a2 == 3)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 8 * v3;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes == 1)
  {
    return v4 + 8;
  }

  else
  {
    return v4 + 16;
  }
}

{
  v4 = sizeObject(a1 + 64, a2);
  v5 = sizeObject<PhnIndexSet>(a1 + 48, a2);
  v6 = BitArray::sizeObject(a1 + 32, a2);
  v7 = sizeObject<unsigned short>(a1 + 16, a2);
  v8 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v8 = 4;
  }

  if (a2 == 3)
  {
    v8 = 0;
  }

  return v4 + 4 * (a2 != 3) + v5 + v6 + v7 + v8;
}

{
  active = sizeObject<ActiveWord *>(a1 + 8, a2);
  v5 = sizeObject(a1 + 32, a2);
  v6 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v6 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  v7 = 6;
  if (a2 == 3)
  {
    v7 = 0;
  }

  return v7 + active + v5 + v6;
}

{
  v4 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 4;
  }

  v5 = 24;
  if (a2 == 3)
  {
    v5 = 0;
  }

  v6 = v5 + ((a2 != 3) | (8 * (a2 != 3)));
  if (a2 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  if (a2 != 2)
  {
    v8 = *(a1 + 40);
    if (!v8)
    {
      return v7 + v6;
    }

    v7 += sizeObject<EnergyInfo>(v8, a2);
  }

  v9 = *(a1 + 40);
  v10 = v7 + v6;
  if (v9)
  {
    v10 += sizeObject<EnergyInfo>(v9, a2);
  }

  return v10;
}

{
  result = 8 * (a2 != 3);
  if (**(a1 + 24))
  {
    v4 = a1 + 16;
    v5 = 16;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 8;
    }

    v6 = a2 - 4;
    v7 = (a2 - 4) < 0xFFFFFFFE;
    v8 = *(a1 + 40);
    v9 = v8 != 0;
    if (v8)
    {
      v10 = (a2 - 4) < 0xFFFFFFFE;
    }

    else
    {
      v10 = 0;
    }

    if (v9 < v7)
    {
      v7 = v9;
    }

    if (a2 == 3)
    {
      v5 = 0;
    }

    v11 = v5 + result + 4 * (a2 != 3);
    if (a2 != 3)
    {
      ++v11;
    }

    v12 = v5 | (4 * (a2 != 3)) | v7;
    if (a2 != 3)
    {
      ++v12;
    }

    if (v6 >= 0xFFFFFFFE)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v6 < 0xFFFFFFFE)
    {
      ++v12;
    }

    v14 = 1;
    do
    {
      v15 = v13;
      v16 = **(v4 + 32 * v14++ + 8);
      v13 += v12;
    }

    while (v16);
    return v15 + v10;
  }

  return result;
}

{
  v4 = a2 != 3;
  v5 = sizeObject(a1 + 88, a2);
  return v5 + 4 * v4 + sizeObject(a1 + 28, a2) + 32 * v4;
}

{
  if (gShadowDiagnosticShowIdealizedObjectSizes != 1)
  {
    return 24 * *(a1 + 10) + 16;
  }

  v4 = sizeObject(a1, a2);
  if (*(a1 + 10))
  {
    v5 = *(a1 + 10);
    v4 += sizeObject(a1 + 16, a2) * v5;
  }

  return v4;
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 36;
  }
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 68;
  }
}

{
  v3 = sizeObject<unsigned int>(a1 + 16, a2);
  v4 = 20;
  if (a2 == 3)
  {
    v4 = 0;
  }

  return v3 + v4;
}

{
  return BitArray::sizeObject(a1 + 8, a2) + 8 * (a2 != 3);
}

{
  return sizeObject(a1, a2) + 8 * (a2 != 3);
}

{
  v4 = sizeObject<HistoryAndBigScore>(a1, a2);
  v5 = sizeObject<unsigned char>(a1 + 16, a2);
  v6 = sizeObject(a1 + 32, a2);
  v7 = 14;
  if (a2 == 3)
  {
    v7 = 0;
  }

  return v7 + v4 + v5 + v6;
}

BOOL LUDecomposeData::decompose(double **this, uint64_t a2, __n128 a3, __n128 a4)
{
  v4 = *(this + 4);
  v46 = 0;
  v45 = 0;
  if (v4 && (v6 = MemChunkAlloc(8 * v4, 0), v45 = v6, v46 = v4, v7 = *(this + 4), v7 >= 1))
  {
    v8 = 0;
    v9 = *this;
    do
    {
      v10 = 0.0;
      v11 = v7;
      v12 = v9;
      do
      {
        v13 = fabs(*v12);
        if (v13 > v10)
        {
          v10 = v13;
        }

        v12 += v7;
        --v11;
      }

      while (v11);
      if (v10 < 1.17549435e-38)
      {
        v40 = 0;
        goto LABEL_40;
      }

      *&v6[v8++] = 1.0 / v10;
      ++v9;
    }

    while (v8 != v7);
    v14 = 0;
    v15 = 0;
    v16 = this[3];
    v17 = *this;
    v18 = 1;
    v19 = -1;
    do
    {
      if (v14)
      {
        v20 = 0;
        v21 = v7 * v14;
        v22 = v7;
        do
        {
          v23 = v17[(v21 + v20)];
          if (v20)
          {
            v24 = v20;
            v25 = v20;
            v26 = v7 * v14;
            do
            {
              v23 = v23 - v17[v25] * v17[v26++];
              v25 += v7;
              --v24;
            }

            while (v24);
          }

          v17[(v21 + v20++)] = v23;
        }

        while (v20 != v14);
      }

      else
      {
        v22 = v7;
      }

      if (v14 < v22)
      {
        v27 = v7 * v14;
        v28 = 0.0;
        v29 = v14;
        do
        {
          v30 = v17[(v27 + v29)];
          if (v14)
          {
            v31 = v14;
            v32 = v29;
            v33 = v7 * v14;
            do
            {
              v30 = v30 - v17[v32] * v17[v33++];
              v32 += v22;
              --v31;
            }

            while (v31);
          }

          v17[(v27 + v29)] = v30;
          v34 = fabs(v30) * *&v6[v29];
          if (v34 >= v28)
          {
            v28 = v34;
            v15 = v29;
          }

          ++v29;
        }

        while (v29 != v7);
      }

      if (v14 != v15)
      {
        if (v7 >= 1)
        {
          v35 = 0;
          v36 = v7;
          do
          {
            v37 = v17[v15 + v35];
            v17[v15 + v35] = v17[(v14 + v35)];
            v17[(v14 + v35)] = v37;
            v35 += v7;
            --v36;
          }

          while (v36);
        }

        *(this + 10) = -*(this + 10);
        v6[v15] = v6[v14];
      }

      *(v16 + v14) = v15;
      v7 = *(this + 4);
      v38 = v17[(v14 + v14 * v7)];
      v39 = fabs(v38);
      v40 = v39 >= 1.17549435e-38;
      if (v39 < 1.17549435e-38)
      {
        break;
      }

      if (v14 < v7 - 1)
      {
        v41 = v18 + v7 * v14;
        v42 = v19 + v7;
        v43 = 1.0 / v38;
        do
        {
          v17[v41] = v43 * v17[v41];
          ++v41;
          --v42;
        }

        while (v42);
      }

      ++v14;
      ++v18;
      --v19;
    }

    while (v14 < v7);
  }

  else
  {
    v40 = 1;
  }

LABEL_40:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v45);
  return v40;
}

uint64_t LUDecomposeData::forwardSubst(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 24);
    v5 = *a2;
    v6 = *(result + 16);
    do
    {
      v7 = *(v4 + 4 * v3);
      v8 = *(v5 + 8 * v7);
      *(v5 + 8 * v7) = *(v5 + 8 * v3);
      if (v6 >= v2)
      {
        if (v8 != 0.0)
        {
          v6 = v3;
        }
      }

      else if (v3 > v6)
      {
        v9 = v3 + v2 * v6;
        LODWORD(v10) = v6;
        do
        {
          v8 = v8 - *(*result + 8 * v9) * *(v5 + 8 * v10);
          v10 = (v10 + 1);
          v9 += v2;
        }

        while (v3 != v10);
      }

      *(v5 + 8 * v3++) = v8;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t LUDecomposeData::backSubst(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = *result;
    v5 = (v2 * v2);
    v6 = *(result + 16);
    do
    {
      v7 = *(v3 + 8 * (v6 - 1));
      if (v6 < v2)
      {
        v8 = v5;
        result = v2;
        do
        {
          v7 = v7 - *(v4 + 8 * (v8 - 1)) * *(v3 + 8 * --result);
          v8 += -v2;
        }

        while (v6 < result);
      }

      *(v3 + 8 * (v6 - 1)) = v7 * (1.0 / *(v4 + 8 * ((v2 + 1) * (v6 - 1))));
      --v5;
    }

    while (v6-- > 1);
  }

  return result;
}

DgnMatrix *DgnMatrix::operator*@<X0>(DgnMatrix *result@<X0>, double **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  *(a3 + 8) = 0;
  *a3 = 0;
  if (v3)
  {
    v5 = result;
    result = MemChunkAlloc(8 * v3, 0);
    *a3 = result;
    *(a3 + 8) = v3;
    if (*v5)
    {
      v7 = result;
      v8 = 0;
      do
      {
        DgnMatrix::getRow(&v16, v5, v8);
        v9 = v17;
        if (v17)
        {
          v10 = v16;
          v11 = *a2;
          v12 = 0.0;
          do
          {
            v13 = *v10++;
            v14 = v13;
            v15 = *v11++;
            v12 = v12 + v14 * v15;
            --v9;
          }

          while (v9);
        }

        else
        {
          v12 = 0.0;
        }

        *(v7 + v8) = v12;
        result = DgnPrimFixArray<double>::~DgnPrimFixArray(&v16);
        ++v8;
      }

      while (v8 < *v5);
    }
  }

  return result;
}

uint64_t *DgnMatrix::getRow@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, unsigned int a3@<W1>)
{
  v3 = *(this + 1);
  *(a1 + 2) = 0;
  *a1 = 0;
  if (v3)
  {
    v5 = this;
    this = MemChunkAlloc(8 * v3, 0);
    *a1 = this;
    *(a1 + 2) = v3;
    v7 = *(v5 + 1);
    if (v7)
    {
      v8 = *v5;
      v9 = v5[1];
      do
      {
        *this++ = *(v9 + 8 * a3);
        a3 += v8;
        --v7;
      }

      while (v7);
    }
  }

  return this;
}

uint64_t DgnMatrix::operator*@<X0>(uint64_t *a1@<X0>, DgnMatrix *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 1);
  *a3 = *a1;
  *(a3 + 4) = v7;
  *(a3 + 8) = 0;
  v8 = v7 * v6;
  *(a3 + 16) = 0;
  if (v7 * v6)
  {
    v9 = MemChunkAlloc(8 * (v7 * v6), 0);
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
  }

  else
  {
    v9 = 0;
  }

  DgnMatrix::transpose(&v25, a2);
  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = *(a2 + 1);
    do
    {
      if (v12)
      {
        for (i = 0; i < v12; ++i)
        {
          DgnMatrix::getRow(&v23, a1, v11);
          DgnMatrix::getRow(v22, &v25, i);
          v14 = v24;
          if (v24)
          {
            v15 = v23;
            v16 = 0.0;
            v17 = v22[0];
            do
            {
              v18 = *v15++;
              v19 = v18;
              v20 = *v17++;
              v16 = v16 + v19 * v20;
              --v14;
            }

            while (v14);
          }

          else
          {
            v16 = 0.0;
          }

          *&v9[v11 + v6 * i] = v16;
          DgnPrimFixArray<double>::~DgnPrimFixArray(v22);
          DgnPrimFixArray<double>::~DgnPrimFixArray(&v23);
          v12 = *(a2 + 1);
        }

        v10 = *a1;
      }

      ++v11;
    }

    while (v11 < v10);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v26);
}

uint64_t *DgnMatrix::transpose@<X0>(uint64_t *__return_ptr a1@<X8>, DgnMatrix *this@<X0>)
{
  v4 = *this;
  v5 = *(this + 1);
  *a1 = v5;
  *(a1 + 1) = v4;
  v6 = v4 * v5;
  *(a1 + 4) = 0;
  a1[1] = 0;
  if (v4 * v5)
  {
    result = MemChunkAlloc(8 * (v4 * v5), 0);
    a1[1] = result;
    *(a1 + 4) = v6;
    v8 = *(this + 1);
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v8 = v5;
    if (!v5)
    {
      return result;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *this;
  do
  {
    if (v11)
    {
      v12 = *(this + 1);
      v13 = v11;
      v14 = v9;
      v15 = v10;
      do
      {
        result[v15] = *(v12 + 8 * v14);
        v15 += v5;
        ++v14;
        --v13;
      }

      while (v13);
    }

    ++v10;
    v9 += v11;
  }

  while (v10 != v8);
  return result;
}

uint64_t *DgnMatrix::makeDiagonal@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  *a2 = v3;
  *(a2 + 4) = v3;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (v3 * v3)
  {
    result = MemChunkAlloc(8 * (v3 * v3), 0);
    *(a2 + 8) = result;
    *(a2 + 16) = v3 * v3;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!v3)
    {
      return result;
    }
  }

  for (i = 0; i != v3; ++i)
  {
    v7 = *a1;
    v8 = v3;
    v9 = i;
    v10 = i;
    do
    {
      v11 = 0;
      if (!v10)
      {
        v11 = *(v7 + 8 * i);
      }

      result[v9] = v11;
      --v10;
      v9 += v3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t DgnMatrix::makeIdentity@<X0>(DgnMatrix *this@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v6 = 0;
  if (this)
  {
    v3 = this;
    v4 = 8 * this;
    v6 = MemChunkAlloc(v4, 0);
    v7 = v3;
    memset_pattern16(v6, &unk_26286B650, v4);
  }

  DgnMatrix::makeDiagonal(&v6, a2);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v6);
}

uint64_t DgnMatrix::ludInvert@<X0>(double **this@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *this;
  DgnMatrix::makeIdentity(v6, &v28);
  LUDecomposeData::LUDecomposeData(v25, (this + 1), *this);
  v10 = LUDecomposeData::decompose(v25, v7, v8, v9);
  v11 = v10;
  if (a2)
  {
    if (v10)
    {
      v12 = v26;
      v13 = v27[4];
      if (v26 >= 1)
      {
        v14 = 0;
        do
        {
          v13 = v13 * v25[0][v14];
          v14 += v26 + 1;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v13 = DgnMatrix::naiveDeterminant(this);
    }

    *a2 = v13;
  }

  if (v11)
  {
    if (v6)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        v24 = 0;
        v23 = 0;
        v16 = MemChunkAlloc(8 * v6, 0);
        v23 = v16;
        v24 = v6;
        bzero(v16, 8 * v6);
        v16[i] = 0x3FF0000000000000;
        LUDecomposeData::forwardSubst(v25, &v23);
        LUDecomposeData::backSubst(v25, &v23);
        v17 = v23;
        v18 = v29;
        v19 = v28 * i;
        v20 = v6;
        do
        {
          v21 = *v17++;
          *(v18 + 8 * v19++) = v21;
          v20 = (v20 - 1);
        }

        while (v20);
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v23);
      }
    }

    *a3 = v28;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    DgnPrimFixArray<double>::copyArraySlice(a3 + 8, &v29, 0, v30);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v27);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v25);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_262570124(_Unwind_Exception *a1, uint64_t a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

double DgnMatrix::naiveDeterminant(double **this)
{
  v1 = 0.0;
  if (*this)
  {
    if (*this == 1)
    {
      return *this[1];
    }

    else
    {
      v3 = *(this + 1);
      if (v3)
      {
        for (i = 0; i < v3; ++i)
        {
          LODWORD(v10) = *this - 1;
          HIDWORD(v10) = v3 - 1;
          v5 = v10 * (v3 - 1);
          v12 = 0;
          v11 = 0;
          if (v5)
          {
            v11 = MemChunkAlloc(8 * v10 * (v3 - 1), 0);
            v12 = v5;
          }

          DgnMatrix::getMinorMatrix(this, 0, i, &v10);
          v6 = this[1][*this * i];
          v7 = DgnMatrix::naiveDeterminant(&v10);
          if (i)
          {
            v8 = -1;
          }

          else
          {
            v8 = 1;
          }

          v1 = v1 + v6 * v8 * v7;
          DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
          v3 = *(this + 1);
        }
      }
    }
  }

  return v1;
}

double DgnMatrix::determinant(double **this)
{
  LUDecomposeData::LUDecomposeData(v9, (this + 1), *this);
  if (LUDecomposeData::decompose(v9, v2, v3, v4))
  {
    v5 = v10;
    v6 = v11[4];
    if (v10 >= 1)
    {
      v7 = 0;
      do
      {
        v6 = v6 * v9[0][v7];
        v7 += v10 + 1;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v6 = DgnMatrix::naiveDeterminant(this);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v9);
  return v6;
}

void sub_262570320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v9 + 24);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a9);
  _Unwind_Resume(a1);
}

uint64_t DgnMatrix::cofactorMatrix@<X0>(double **this@<X0>, uint64_t a2@<X8>)
{
  v15 = 0.0;
  DgnMatrix::ludInvert(this, &v15, &v13);
  if (v13)
  {
    DgnMatrix::transpose(&v11, &v13);
    DgnMatrix::operator*(&v11, a2, v15);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v12);
  }

  else
  {
    v4 = *this;
    v5 = *(this + 1);
    *a2 = *this;
    *(a2 + 4) = v5;
    *(a2 + 8) = 0;
    v6 = v5 * v4;
    *(a2 + 16) = 0;
    if (v5 * v4)
    {
      *(a2 + 8) = MemChunkAlloc(8 * v5 * v4, 0);
      *(a2 + 16) = v6;
      v4 = *this;
    }

    if (v4)
    {
      v7 = 0;
      v8 = *(this + 1);
      do
      {
        if (v8)
        {
          v9 = 0;
          do
          {
            *(*(a2 + 8) + 8 * (v7 + *a2 * v9)) = DgnMatrix::cofactorElement(this, v7, v9);
            v9 = (v9 + 1);
            v8 = *(this + 1);
          }

          while (v9 < v8);
          v4 = *this;
        }

        v7 = (v7 + 1);
      }

      while (v7 < v4);
    }
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v14);
}

void sub_262570450(_Unwind_Exception *a1, uint64_t a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

double DgnMatrix::cofactorElement(DgnMatrix *this, uint64_t a2, uint64_t a3)
{
  v3 = *this;
  v4 = 0.0;
  if (*this >= 2u)
  {
    v5 = a3;
    v6 = a2;
    v8 = *(this + 1) - 1;
    LODWORD(v11) = v3 - 1;
    HIDWORD(v11) = v8;
    v9 = v8 * (v3 - 1);
    v13 = 0;
    v12 = 0;
    if (v9)
    {
      v12 = MemChunkAlloc(8 * (v8 * (v3 - 1)), 0);
      v13 = v9;
    }

    DgnMatrix::getMinorMatrix(this, v6, v5, &v11);
    if ((v5 + v6))
    {
      v4 = -DgnMatrix::determinant(&v11);
    }

    else
    {
      v4 = DgnMatrix::determinant(&v11);
    }

    DgnPrimFixArray<double>::~DgnPrimFixArray(&v12);
  }

  return v4;
}

void DgnMatrix::operator*(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;
  v5 = (a2 + 8);
  *(a2 + 16) = 0;
  DgnPrimFixArray<double>::copyArraySlice(a2 + 8, (a1 + 8), 0, *(a1 + 16));
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *v5;
    do
    {
      *v7 = *v7 * a3;
      ++v7;
      --v6;
    }

    while (v6);
  }
}

int *DgnMatrix::getMinorMatrix(int *result, unsigned int a2, unsigned int a3, int *a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = *a4;
    v6 = *(a4 + 1);
    v7 = result[1];
    v8 = a3 + 1;
    v9 = *a4 * a3;
    do
    {
      if (a3)
      {
        v10 = *result;
        v11 = *(result + 1);
        v12 = a3;
        v13 = v4;
        v14 = v4;
        do
        {
          *(v6 + 8 * v14) = *(v11 + 8 * v13);
          v14 += v5;
          v13 += v10;
          --v12;
        }

        while (v12);
      }

      if (v8 < v7)
      {
        v15 = *result;
        v16 = *(result + 1);
        v17 = v4 + v8 * *result;
        v18 = ~a3 + v7;
        v19 = v9;
        do
        {
          *(v6 + 8 * v19) = *(v16 + 8 * v17);
          v19 += v5;
          v17 += v15;
          --v18;
        }

        while (v18);
      }

      ++v4;
      ++v9;
    }

    while (v4 != a2);
  }

  v20 = *result;
  v21 = a2 + 1;
  if (a2 + 1 < *result)
  {
    v22 = *a4;
    v23 = *(a4 + 1);
    v24 = result[1];
    v25 = a2 + *a4 * a3;
    v26 = a2 + v20 * (a3 + 1) + 1;
    do
    {
      if (a3)
      {
        v27 = *(result + 1);
        v28 = a3;
        v29 = v21;
        v30 = a2;
        do
        {
          *(v23 + 8 * v30) = *(v27 + 8 * v29);
          v30 += v22;
          v29 += v20;
          --v28;
        }

        while (v28);
      }

      if (a3 + 1 < v24)
      {
        v31 = *(result + 1);
        v32 = ~a3 + v24;
        v33 = v26;
        v34 = v25;
        do
        {
          *(v23 + 8 * v34) = *(v31 + 8 * v33);
          v34 += v22;
          v33 += v20;
          --v32;
        }

        while (v32);
      }

      ++v21;
      ++a2;
      ++v25;
      ++v26;
    }

    while (v21 != v20);
  }

  return result;
}

uint64_t DgnMatrix::singularValueDecompose(unsigned int *a1, uint64_t a2, unsigned int *a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a2 + 8);
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v11 = 8 * v6;
    v10 = MemChunkAlloc(8 * v6, 0);
    *a2 = v10;
    *(a2 + 8) = v6;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v10 = *a2;
    v11 = 8 * v8;
  }

  bzero(v10, v11);
LABEL_9:
  DgnMatrix::setNumRowsAndCols(a3, v6, v6);
  v12 = a3[4];
  if (v12)
  {
    bzero(*(a3 + 1), 8 * v12);
  }

  v250 = 0;
  v249 = 0;
  v13 = 0.0;
  v14 = &loc_26286B000;
  v15 = 0.0;
  if (v6)
  {
    v16 = v6;
    v17 = MemChunkAlloc(8 * v6, 0);
    v18 = 0;
    v249 = v17;
    v250 = v6;
    v19 = v6 - 1;
    v20 = 1;
    v21 = 0.0;
    v22 = 0.0;
    do
    {
      *&v17[v18] = -(v22 * v21);
      v23 = v7 - v18;
      if (v7 <= v18)
      {
        *(*a2 + 8 * v18) = *(*a2 + 8 * v18) + v21 * -0.0;
        v36 = v18 + 1;
        v22 = 0.0;
      }

      else
      {
        v244 = v20;
        v24 = *a1;
        v25 = *(a1 + 1);
        v26 = v18 + v18 * *a1;
        v27 = 0.0;
        v28 = v7 - v18;
        v29 = v26;
        do
        {
          v30 = *(v25 + 8 * v29);
          if (v30 < 0.0)
          {
            v30 = 0.0 - v30;
          }

          v27 = v27 + v30;
          ++v29;
          --v28;
        }

        while (v28);
        if (v27 <= 0.0)
        {
          v36 = v18 + 1;
        }

        else
        {
          v31 = 0.0;
          v32 = v7 - v18;
          do
          {
            v33 = 1.0 / v27 * *(v25 + 8 * v26);
            *(v25 + 8 * v26) = v33;
            v31 = v31 + v33 * v33;
            ++v26;
            --v32;
          }

          while (v32);
          v21 = DgnSqrt(v31);
          v24 = *a1;
          v34 = v18 + *a1 * v18;
          v25 = *(a1 + 1);
          v35 = *(v25 + 8 * v34);
          if (v35 <= 0.0)
          {
            v21 = -v21;
          }

          *(v25 + 8 * v34) = v35 + v21;
          v36 = v18 + 1;
          v37 = v18 + v18 * v24;
          if (v18 + 1 < v6)
          {
            v38 = v31 + v35 * v21;
            v39 = v18 + v24 * v36;
            v40 = v18 + 1;
            do
            {
              v41 = 0.0;
              v42 = v7 - v18;
              v43 = v18 + v18 * v24;
              v44 = v39;
              do
              {
                v41 = v41 + *(v25 + 8 * v43++) * *(v25 + 8 * v44++);
                --v42;
              }

              while (v42);
              v45 = v7 - v18;
              v46 = v39;
              v47 = v18 + v18 * v24;
              v48 = -v41 / v38;
              do
              {
                *(v25 + 8 * v46) = *(v25 + 8 * v46) + v48 * *(v25 + 8 * v47++);
                ++v46;
                --v45;
              }

              while (v45);
              ++v40;
              v39 += v24;
            }

            while (v40 != v6);
          }

          do
          {
            *(v25 + 8 * v37) = v27 * *(v25 + 8 * v37);
            ++v37;
            --v23;
          }

          while (v23);
        }

        *(*a2 + 8 * v18) = *(*a2 + 8 * v18) - v27 * v21;
        v22 = 0.0;
        if (v36 < v6)
        {
          v49 = v18 + v24 * v244;
          v50 = v19;
          v51 = v49;
          do
          {
            v52 = *(v25 + 8 * v51);
            if (v52 < 0.0)
            {
              v52 = 0.0 - v52;
            }

            v22 = v22 + v52;
            v51 += v24;
            --v50;
          }

          while (v50);
          if (v22 > 0.0)
          {
            v53 = 0.0;
            if (v36 < v6)
            {
              v54 = v19;
              do
              {
                v55 = 1.0 / v22 * *(v25 + 8 * v49);
                *(v25 + 8 * v49) = v55;
                v53 = v53 + v55 * v55;
                v49 += v24;
                --v54;
              }

              while (v54);
            }

            v21 = DgnSqrt(v53);
            v56 = *a1;
            v57 = v18 + *a1 * v36;
            v58 = *(a1 + 1);
            v59 = *(v58 + 8 * v57);
            if (v59 <= 0.0)
            {
              v21 = -v21;
            }

            *(v58 + 8 * v57) = v59 + v21;
            if (v36 < v7)
            {
              v60 = v53 + v59 * v21;
              v61 = v36;
              do
              {
                if (v36 < v6)
                {
                  v62 = 0.0;
                  v63 = v19;
                  v64 = v56 * v244;
                  do
                  {
                    v62 = v62 + *(v58 + 8 * (v18 + v64)) * *(v58 + 8 * (v61 + v64));
                    v64 += v56;
                    --v63;
                  }

                  while (v63);
                  if (v36 < v6)
                  {
                    v65 = v19;
                    v66 = v56 * v244;
                    v67 = -v62 / v60;
                    do
                    {
                      *(v58 + 8 * (v61 + v66)) = *(v58 + 8 * (v61 + v66)) + v67 * *(v58 + 8 * (v18 + v66));
                      v66 += v56;
                      --v65;
                    }

                    while (v65);
                  }
                }

                ++v61;
              }

              while (v61 != v7);
            }

            if (v36 < v6)
            {
              v68 = v18 + v56 * v244;
              v69 = v19;
              do
              {
                *(v58 + 8 * v68) = v22 * *(v58 + 8 * v68);
                v68 += v56;
                --v69;
              }

              while (v69);
            }
          }
        }

        v20 = v244;
      }

      v70 = *(*a2 + 8 * v18);
      if (v70 < 0.0)
      {
        v70 = 0.0 - v70;
      }

      v17 = v249;
      v71 = *&v249[v18];
      if (v71 < 0.0)
      {
        v71 = 0.0 - v71;
      }

      v72 = v70 + v71;
      if (v72 > v15)
      {
        v15 = v72;
      }

      ++v20;
      --v19;
      v18 = v36;
    }

    while (v36 != v6);
    v73 = v250;
    v74 = 0.0;
    v14 = &loc_26286B000;
    v75 = v6 - 1;
    if (v250)
    {
      v76 = v249;
      v77 = 0.0;
      do
      {
        v78 = *v76++;
        v79 = v78;
        v80 = 0.0 - v78;
        if (v78 < 0.0)
        {
          v79 = v80;
        }

        if (v79 > v77)
        {
          v77 = v79;
        }

        --v73;
      }

      while (v73);
      v74 = v77 * 0.0001;
    }

    v81 = 0;
    v82 = *a3;
    v83 = *a3 + 1;
    v84 = *(a3 + 1);
    v85 = v6 + *a3 * (v6 - 1);
    v86 = ~*a3;
    v87 = v6 * v83;
    v88 = v6 * v83 - 1;
    do
    {
      v89 = v16 - 1;
      if (v16 < v6)
      {
        v90 = 0.0 - v21;
        if (v21 >= 0.0)
        {
          v90 = v21;
        }

        if (v90 > v74)
        {
          v91 = *a1;
          v92 = *(a1 + 1);
          v93 = v89 + *a1 * v16;
          v94 = v75 + *a1 * v16;
          v95 = v81;
          v96 = v85;
          do
          {
            *(v84 + 8 * v96++) = *(v92 + 8 * v94) / *(v92 + 8 * v93) / v21;
            v94 += v91;
            --v95;
          }

          while (v95);
          v97 = *a1;
          v98 = *(a1 + 1);
          v99 = v75 + *a1 * v16;
          v100 = v87;
          do
          {
            v101 = 0.0;
            v102 = v81;
            v103 = v99;
            v104 = v100;
            do
            {
              v101 = v101 + *(v98 + 8 * v103) * *(v84 + 8 * v104++);
              v103 += v97;
              --v102;
            }

            while (v102);
            do
            {
              *(v84 + 8 * (v100 + v102)) = *(v84 + 8 * (v100 + v102)) + v101 * *(v84 + 8 * (v85 + v102));
              ++v102;
            }

            while (v81 != v102);
            LODWORD(v16) = v16 + 1;
            v100 += v82;
          }

          while (v16 != v6);
        }

        v105 = 0;
        v106 = v88;
        do
        {
          *(v84 + 8 * v106) = 0;
          *(v84 + 8 * (v85 + v105++)) = 0;
          v106 += v82;
        }

        while (v81 != v105);
      }

      *(v84 + 8 * v83 * v89) = 0x3FF0000000000000;
      v21 = *&v17[v89];
      v85 += v86;
      --v75;
      ++v81;
      v87 += v86;
      v88 += v86;
      v16 = v89;
    }

    while (v89);
  }

  v107 = *(a2 + 8);
  if (v107)
  {
    v108 = *a2;
    v109 = 0.0;
    do
    {
      v110 = *v108++;
      v111 = v110;
      v112 = 0.0 - v110;
      if (v110 < 0.0)
      {
        v111 = v112;
      }

      if (v111 > v109)
      {
        v109 = v111;
      }

      --v107;
    }

    while (v107);
    v13 = v109 * v14[198];
  }

  if (v7 >= v6)
  {
    v113 = v6;
  }

  else
  {
    v113 = v7;
  }

  if (v113)
  {
    v114 = *a2;
    v115 = *a1;
    v116 = *a1 + 1;
    v117 = *(a1 + 1);
    if (v6 >= v7)
    {
      v118 = v7;
    }

    else
    {
      v118 = v6;
    }

    v119 = v116 * v118;
    v120 = v116 * v118 - 1;
    v121 = ~v115;
    v122 = v115 * (v118 - 1);
    v123 = v113 + v122 - 1;
    v124 = v7 - v113 + 1;
    v125 = v122 + v118;
    v126 = v113 + v115 * v118 - 1;
    do
    {
      v127 = v118 - 1;
      v128 = *&v114[(v118 - 1)];
      v129 = v120;
      v130 = v118;
      if (v118 >= v6)
      {
        v142 = 0.0 - v128;
        if (v128 >= 0.0)
        {
          v142 = *&v114[v127];
        }

        if (v142 <= v13)
        {
LABEL_127:
          v144 = v124;
          v145 = v123;
          if (v127 < v7)
          {
            do
            {
              *(v117 + 8 * v145++) = 0;
              --v144;
            }

            while (v144);
          }

          goto LABEL_129;
        }

        v132 = 1.0 / v128;
      }

      else
      {
        do
        {
          *(v117 + 8 * v129) = 0;
          ++v130;
          v129 += v115;
        }

        while (v130 < v6);
        v131 = 0.0 - v128;
        if (v128 >= 0.0)
        {
          v131 = v128;
        }

        if (v131 <= v13)
        {
          goto LABEL_127;
        }

        v132 = 1.0 / v128;
        if (v118 < v6)
        {
          v133 = v126;
          v134 = v119;
          v135 = v118;
          do
          {
            v136 = 0.0;
            if (v118 < v7)
            {
              v137 = v125;
              v138 = v134;
              v139 = v118;
              do
              {
                v136 = v136 + *(v117 + 8 * v137) * *(v117 + 8 * v138);
                ++v139;
                ++v138;
                ++v137;
              }

              while (v139 < v7);
            }

            if (v127 < v7)
            {
              v140 = 0;
              v141 = v132 * v136 / *(v117 + 8 * (v127 + v115 * v127));
              do
              {
                *(v117 + 8 * (v133 + v140)) = *(v117 + 8 * (v133 + v140)) + v141 * *(v117 + 8 * (v123 + v140));
                ++v140;
              }

              while (v124 != v140);
            }

            ++v135;
            v134 += v115;
            v133 += v115;
          }

          while (v135 < v6);
        }
      }

      if (v127 < v7)
      {
        v143 = 0;
        do
        {
          *(v117 + 8 * (v123 + v143)) = v132 * *(v117 + 8 * (v123 + v143));
          ++v143;
        }

        while (v124 != v143);
      }

LABEL_129:
      *(v117 + 8 * v116 * v127) = *(v117 + 8 * v116 * v127) + 1.0;
      --v118;
      v120 += v121;
      v123 += v121;
      ++v124;
      v119 += v121;
      v125 += v121;
      v126 += v121;
    }

    while (v127);
  }

  if (v6)
  {
    v146 = v6 - 1;
    v241 = 0;
    v147 = v6 - 1;
    v148 = v6;
    do
    {
      v240 = v147;
      v149 = v148 - 1;
      v245 = v148;
      v150 = (v148 - 2);
      v242 = v148 - 1;
      v243 = 0;
      if (((v148 - 1) & 0x80000000) == 0)
      {
LABEL_133:
        v151 = v245;
        v152 = v241;
        while (1)
        {
          v153 = *&v249[(v6 - 1) + v152];
          if (v153 < 0.0)
          {
            v153 = 0.0 - v153;
          }

          if (v15 + v153 == v15)
          {
            break;
          }

          v154 = *(*a2 + 8 * (v146 + v152 - 1));
          if (v154 < 0.0)
          {
            v154 = 0.0 - v154;
          }

          if (v15 + v154 == v15)
          {
            v155 = v146 + v152;
            v156 = v6 - 2 + v152;
            goto LABEL_145;
          }

          --v152;
          if (--v151 < 1)
          {
            v155 = -1;
            v156 = -1;
            goto LABEL_145;
          }
        }

        v155 = v146 + v152;
        goto LABEL_155;
      }

      while (1)
      {
        v156 = 0;
        v155 = v149;
LABEL_145:
        v157 = v155 - 1;
        if (v245 > v157)
        {
          v158 = 0.0;
          v159 = 1.0;
          do
          {
            v160 = *&v249[v157];
            *&v249[v157] = v158 * v160;
            v161 = v159 * v160;
            v162 = 0.0 - v159 * v160;
            if (v161 >= 0.0)
            {
              v162 = v161;
            }

            if (v15 + v162 == v15)
            {
              break;
            }

            v163 = *(*a2 + 8 * v157);
            v164 = DgnSqrt(v163 * v163 + v161 * v161);
            *(*a2 + 8 * v157) = v164;
            v165 = 1.0 / v164;
            v158 = v163 * v165;
            v159 = -(v161 * v165);
            if (v7)
            {
              v166 = *a1 * v156;
              v167 = *(a1 + 1);
              v168 = *a1 * v157;
              v169 = v7;
              do
              {
                v170 = *(v167 + 8 * v166);
                v171 = *(v167 + 8 * v168);
                *(v167 + 8 * v166) = v159 * v171 + v170 * v158;
                *(v167 + 8 * v168++) = v171 * v158 - v170 * v159;
                ++v166;
                --v169;
              }

              while (v169);
            }

            ++v157;
          }

          while (v157 < v245);
        }

        v149 = v242;
LABEL_155:
        v172 = *a2;
        v173 = *(*a2 + 8 * v149);
        if (v155 == v149)
        {
          break;
        }

        if (v243 == 59)
        {
          errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dmatrix.cpp", 1641, "mrecutil/dmatrix", 1, "%s", &unk_26286B638);
          v213 = 0;
          goto LABEL_178;
        }

        v174 = *&v172[v155];
        v175 = *&v172[v150];
        v176 = *&v249[v149];
        v177 = ((*&v249[v150] - v176) * (*&v249[v150] + v176) + (v175 - v173) * (v173 + v175)) / (v175 * (v176 + v176));
        v178 = DgnSqrt(v177 * v177 + 1.0);
        if (v177 <= 0.0)
        {
          v178 = -v178;
        }

        v179 = (v176 * (v175 / (v177 + v178) - v176) + (v174 - v173) * (v173 + v174)) / v174;
        v180 = *a2;
        if (v155 <= v150)
        {
          v181 = v155 + 1;
          v182 = 1.0;
          v183 = v155;
          v184 = 1.0;
          do
          {
            v185 = v183++;
            v186 = *&v249[v183];
            v187 = *&v180[v183];
            v188 = v182 * v186;
            v189 = DgnSqrt(v188 * v188 + v179 * v179);
            v190 = v184 * v186;
            *&v249[v185] = v189;
            v184 = v179 / v189;
            v182 = v182 * v186 / v189;
            v191 = v190 * (v188 / v189) + v174 * (v179 / v189);
            v192 = v190 * v184 - v174 * (v188 / v189);
            v193 = v187 * (v188 / v189);
            v194 = v187 * v184;
            v195 = *a3 * v185;
            v196 = *(a3 + 1);
            v197 = *a3 * v181;
            v198 = v6;
            do
            {
              v199 = *(v196 + 8 * v195);
              v200 = *(v196 + 8 * v197);
              *(v196 + 8 * v195) = v182 * v200 + v199 * v184;
              *(v196 + 8 * v197++) = v200 * v184 - v199 * v182;
              ++v195;
              --v198;
            }

            while (v198);
            v201 = DgnSqrt(v193 * v193 + v191 * v191);
            v180 = *a2;
            *(*a2 + 8 * v185) = v201;
            if (v201 != 0.0)
            {
              v202 = 1.0 / v201;
              v184 = v191 * v202;
              v182 = v193 * v202;
            }

            if (v7)
            {
              v203 = *a1 * v185;
              v204 = *(a1 + 1);
              v205 = *a1 * v181;
              v206 = v7;
              do
              {
                v207 = *(v204 + 8 * v203);
                v208 = *(v204 + 8 * v205);
                *(v204 + 8 * v203) = v182 * v208 + v207 * v184;
                *(v204 + 8 * v205++) = v208 * v184 - v207 * v182;
                ++v203;
                --v206;
              }

              while (v206);
            }

            v179 = v194 * v182 + v184 * v192;
            v174 = v184 * v194 - v182 * v192;
            ++v181;
          }

          while (v183 <= v150);
        }

        v209 = v249;
        v249[v155] = 0;
        v149 = v242;
        *&v209[v242] = v179;
        *&v180[v242] = v174;
        ++v243;
        v146 = v6 - 1;
        if ((v242 & 0x80000000) == 0)
        {
          goto LABEL_133;
        }
      }

      if (v173 < 0.0)
      {
        *&v172[v149] = -v173;
        v210 = *(a3 + 1);
        v211 = *a3 * v240;
        v212 = v6;
        do
        {
          *(v210 + 8 * v211) = -*(v210 + 8 * v211);
          ++v211;
          --v212;
        }

        while (v212);
      }

      v148 = v245 - 1;
      --v241;
      v147 = v240 - 1;
    }

    while (v149);
    if (v6 == 1)
    {
      goto LABEL_176;
    }

    for (i = 1; i != v6; ++i)
    {
      v216 = *(*a2 + 8 * i);
      DgnMatrix::getCol(v248, a1, i);
      DgnMatrix::getCol(v247, a3, i);
      v217 = i;
      do
      {
        v218 = v217 - 1;
        v219 = *(*a2 + 8 * (v217 - 1));
        if (v216 <= v219)
        {
          break;
        }

        *(*a2 + 8 * v217) = v219;
        DgnMatrix::getCol(v246, a1, v217 - 1);
        v220 = *a1;
        if (v220)
        {
          v221 = v246[0];
          v222 = *(a1 + 1);
          v223 = v220 * v217;
          do
          {
            v224 = *v221++;
            *(v222 + 8 * v223++) = v224;
            --v220;
          }

          while (v220);
        }

        DgnPrimFixArray<double>::~DgnPrimFixArray(v246);
        DgnMatrix::getCol(v246, a3, v217 - 1);
        v225 = *a3;
        if (v225)
        {
          v226 = v246[0];
          v227 = *(a3 + 1);
          v228 = v225 * v217;
          do
          {
            v229 = *v226++;
            *(v227 + 8 * v228++) = v229;
            --v225;
          }

          while (v225);
        }

        DgnPrimFixArray<double>::~DgnPrimFixArray(v246);
        --v217;
      }

      while (v218);
      if (i != v217)
      {
        *(*a2 + 8 * v217) = v216;
        v230 = *a1;
        if (v230)
        {
          v231 = v248[0];
          v232 = v230 * v217;
          v233 = *(a1 + 1);
          do
          {
            v234 = *v231++;
            *(v233 + 8 * v232++) = v234;
            --v230;
          }

          while (v230);
        }

        v235 = *a3;
        if (v235)
        {
          v236 = v247[0];
          v237 = v235 * v217;
          v238 = *(a3 + 1);
          do
          {
            v239 = *v236++;
            *(v238 + 8 * v237++) = v239;
            --v235;
          }

          while (v235);
        }
      }

      DgnPrimFixArray<double>::~DgnPrimFixArray(v247);
      DgnPrimFixArray<double>::~DgnPrimFixArray(v248);
      v213 = 1;
    }
  }

  else
  {
LABEL_176:
    v213 = 1;
  }

LABEL_178:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v249);
  return v213;
}

void sub_2625714BC(_Unwind_Exception *a1, uint64_t a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va1, a23);
  va_start(va, a23);
  v24 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va1);
  _Unwind_Resume(a1);
}

uint64_t *DgnMatrix::setNumRowsAndCols(uint64_t *this, int a2, int a3)
{
  *this = a2;
  *(this + 1) = a3;
  v3 = a3 * a2;
  if (a3 * a2)
  {
    v4 = *(this + 4) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = this;
    this = MemChunkAlloc(8 * (a3 * a2), 0);
    v5[1] = this;
    *(v5 + 4) = v3;
  }

  return this;
}

uint64_t *DgnMatrix::getCol@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, int a3@<W1>)
{
  v3 = *this;
  *(a1 + 2) = 0;
  *a1 = 0;
  if (v3)
  {
    v5 = this;
    this = MemChunkAlloc(8 * v3, 0);
    *a1 = this;
    *(a1 + 2) = v3;
    v7 = *v5;
    if (v7)
    {
      v8 = v7 * a3;
      v9 = v5[1];
      do
      {
        *this++ = *(v9 + 8 * v8++);
        --v7;
      }

      while (v7);
    }
  }

  return this;
}

uint64_t EnumParamRange::EnumParamRange(uint64_t result, uint64_t a2)
{
  *result = a2;
  if (**(a2 + 8))
  {
    v2 = 0;
    v3 = 1;
    v4 = a2;
    do
    {
      v5 = a2 + 32 * v2;
      if (v3 == 1)
      {
        v6 = *(v5 + 16);
        *(result + 8) = v6;
      }

      else
      {
        v6 = *(v5 + 16);
        if (*(result + 8) > *(v4 + 16))
        {
          *(result + 8) = v6;
        }

        if (*(result + 12) >= v6)
        {
          goto LABEL_9;
        }
      }

      *(result + 12) = v6;
LABEL_9:
      v2 = v3;
      v4 = a2 + 32 * v3++;
    }

    while (**(v4 + 8));
  }

  return result;
}

void EnumGlobalParam::~EnumGlobalParam(EnumGlobalParam *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

uint64_t DgnPrimFixArray<double>::~DgnPrimFixArray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    MemChunkFree(v2, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t LUDecomposeData::LUDecomposeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  DgnPrimFixArray<double>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  *(a1 + 24) = 0;
  *(a1 + 16) = a3;
  *(a1 + 32) = 0;
  if (a3)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 24, a3, 0);
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = 1;
  return a1;
}

double DgnPrimFixArray<double>::copyArraySlice(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (!a4 || *(a1 + 8))
  {
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    *a1 = MemChunkAlloc(8 * a4, 0);
    *(a1 + 8) = a4;
  }

  v8 = *a2;
  v9 = *a1;
  v10 = a4;
  do
  {
    result = *(v8 + 8 * a3);
    *v9++ = result;
    ++a3;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t *DgnPrimArray<unsigned int>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 4 * v6, 4 * v5, 4 * v5, 1);
  *(a1 + 12) = result >> 2;
  *a1 = v8;
  return result;
}

uint64_t DgnPrimArray<unsigned int>::~DgnPrimArray(uint64_t a1)
{
  if (*(a1 + 8) <= *(a1 + 12))
  {
    v2 = *a1;
    if (*a1)
    {
      MemChunkFree(v2, 0);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
  }

  return a1;
}

void (***DgnDelete<DgnStream>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t *DgnPrimArray<short>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 2 * v6, 2 * v5, 2 * v5, 1);
  *(a1 + 12) = result >> 1;
  *a1 = v8;
  return result;
}

void WarpChooser::~WarpChooser(WarpChooser *this)
{
  if (*(this + 20) == 1)
  {
    v2 = ChannelMgr::smpChannelMgr;
    ChannelMgr::closeChannel(ChannelMgr::smpChannelMgr, *(this + 16));
    if (*(this + 8))
    {
      v3 = 0;
      do
      {
        ChannelMgr::closeChannel(v2, *(*(this + 3) + 4 * v3++));
      }

      while (v3 < *(this + 8));
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 24);

  DgnPrimArray<unsigned int>::~DgnPrimArray(this);
}

void WarpChooser::printSize(WarpChooser *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 112);
  if (v53)
  {
    v13 = v52;
  }

  else
  {
    v13 = byte_26286B670;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26286B670, a3, byte_26286B670, v13);
  DgnString::~DgnString(&v52);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26286B670);
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

  if (v17 >= v16)
  {
    v21 = 0;
  }

  else
  {
    v21 = 4 * v16;
  }

  v22 = (a3 + 1);
  v51 = a3;
  v23 = (34 - a3);
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 113);
  if (v53)
  {
    v25 = v52;
  }

  else
  {
    v25 = byte_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v22, byte_26286B670, v23, v23, v25, v20, v19, v21);
  DgnString::~DgnString(&v52);
  *a4 += v20;
  *a5 += v19;
  *a6 += v21;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 114);
  if (v53)
  {
    v27 = v52;
  }

  else
  {
    v27 = byte_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v22, byte_26286B670, v23, v23, v27, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 116);
  if (v53)
  {
    v29 = v52;
  }

  else
  {
    v29 = byte_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v22, byte_26286B670, v23, v23, v29, 1, 1, 0);
  DgnString::~DgnString(&v52);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 118);
  if (v53)
  {
    v31 = v52;
  }

  else
  {
    v31 = byte_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v22, byte_26286B670, v23, v23, v31, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  else
  {
    v32 = 16;
  }

  v33 = *(this + 8);
  v34 = *(this + 9);
  if (v34 >= v33)
  {
    v35 = 0;
    if (v33 > 0)
    {
      v32 += 4 * (v33 - 1) + 4;
    }

    v36 = v32 + 4 * (v34 - v33);
  }

  else
  {
    v35 = 4 * v33;
    v36 = v32;
  }

  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 119);
  if (v53)
  {
    v38 = v52;
  }

  else
  {
    v38 = byte_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v22, byte_26286B670, v23, v23, v38, v36, v32, v35);
  DgnString::~DgnString(&v52);
  *a4 += v36;
  *a5 += v32;
  *a6 += v35;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 4;
  }

  else
  {
    v39 = 8;
  }

  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 120);
  if (v53)
  {
    v41 = v52;
  }

  else
  {
    v41 = byte_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v22, byte_26286B670, v23, v23, v41, v39, v39, 0);
  DgnString::~DgnString(&v52);
  *a4 += v39;
  *a5 += v39;
  v42 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 12;
  }

  v43 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v43 = 3;
  }

  v44 = *(this + 14);
  v45 = (((*(this + 15) - v44) + v44) << v43) + v42;
  v46 = (v44 << v43) + v42;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 121);
  if (v53)
  {
    v48 = v52;
  }

  else
  {
    v48 = byte_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v22, byte_26286B670, v23, v23, v48, v45, v46, 0);
  DgnString::~DgnString(&v52);
  *a4 += v45;
  *a5 += v46;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 122);
  if (v53)
  {
    v50 = v52;
  }

  else
  {
    v50 = byte_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v51, byte_26286B670, (35 - v51), (35 - v51), v50, *a4, *a5, *a6);
  DgnString::~DgnString(&v52);
}

void sub_262571F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *DgnDelete<UttFeatureArraySynchronizedArray>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnArray<DgnPrimArray<unsigned char>>::releaseAll((result + 1));

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnArray<DgnPrimArray<unsigned char>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v3);
      v3 -= 16;
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

uint64_t DgnIArray<Utterance *>::~DgnIArray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    MemChunkFree(v2, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t *DgnPrimArray<unsigned char>::copyArraySlice(uint64_t *result, void *a2, int a3, unsigned int a4)
{
  v7 = result;
  v8 = a4;
  if (*(result + 3) >= a4)
  {
    *(result + 2) = a4;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    v10 = 0;
    result = realloc_array(*result, &v10, a4, *(result + 2), *(result + 2), 1);
    *v7 = v10;
    *(v7 + 8) = a4;
    *(v7 + 12) = result;
  }

  v9 = 0;
  do
  {
    *(*v7 + v9) = *(*a2 + (a3 + v9));
    ++v9;
  }

  while (v8 != v9);
  return result;
}

uint64_t TParam::TParam(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_287523BC8;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  v12 = a1 + 64;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 8) = a2;
  MEMORY[0x26672AF30](a1 + 16, a3);
  MEMORY[0x26672AF30](a1 + 40, a4);
  *(a1 + 112) = a5;
  MEMORY[0x26672AF30](v12, a6);
  MEMORY[0x26672AF30](a1 + 88, a7);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return a1;
}

void sub_262572220(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  TParam::TParam();
  _Unwind_Resume(a1);
}

uint64_t TParam::TParam(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_287523BC8;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 8) = a2;
  MEMORY[0x26672AF30](a1 + 16, a3);
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_2625722D4(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  TParam::TParam();
  _Unwind_Resume(a1);
}

void TParam::~TParam(void **this)
{
  *this = &unk_287523BC8;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t TParam::getValidConfig(TParam *this, uint64_t a2)
{
  v2 = *(this + 14);
  while (((v2 >> (a2 + 33)) & 1) == 0)
  {
    if ((v2 >> (a2 + 9)))
    {
      return a2;
    }

    a2 = *(*(*(this + 17) + 72) + 32 * a2);
  }

  a2 += 24;
  return a2;
}

uint64_t TParam::getValidOriginalConfig(TParam *this, uint64_t a2)
{
    ;
  }

  return a2;
}

uint64_t TParam::notifyChange(uint64_t this, uint64_t a2)
{
  v2 = *(this + 136);
  if (v2)
  {
    v3 = v2[17];
    v2[17] = a2;
    this = (*(*v2 + 16))(v2, this);
    v2[17] = v3;
  }

  return this;
}

uint64_t TParam::needSave(TParam *this)
{
  if ((*(this + 111) & 0x8000000000000000) != 0)
  {
    if (*(this + 12))
    {
      return 0;
    }
  }

  else if (*(this + 111))
  {
    return 0;
  }

  if (TParam::flagsSet(this, 8))
  {
    return 1;
  }

  if ((*(*(this + 17) + 80) - *(*(this + 17) + 72)) >> 5 != 1)
  {
    v3 = *(this + 14);
    for (i = 34; ((v3 >> (i - 24)) & 1) == 0 && ((v3 >> i) & 1) == 0; ++i)
    {
      v5 = i - 32;
      if (v5 > ((*(*(this + 17) + 80) - *(*(this + 17) + 72)) >> 5) - 1)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t TParam::flagsSet(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112) & a2;
  v4 = a2;
  return std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,64ul>,true,true>(&v3, 0, &v4, 0, &v4);
}

BOOL TBoolParam::setValue(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v21 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v21);
  v7 = v21;
  if (v21)
  {
    v8 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v8 = *v8;
    }

    loggableUnicode(v8, v19);
    v9 = v20;
    v10 = v19[0];
    loggableUnicode(a3, __p);
    if (v9 >= 0)
    {
      v12 = v19;
    }

    else
    {
      v12 = v10;
    }

    if (v18 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    tknPrintf("Error: %s : parameter value is out of range, was '%s', expected a BOOLean.\n", v11, v12, v13);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    *(a2 + a1 + 176) = v6;
    *(a1 + 112) |= 1 << (a2 + 33);
    v14 = *(a1 + 136);
    if (v14)
    {
      v15 = v14[17];
      v14[17] = a2;
      (*(*v14 + 16))(v14, a1);
      v14[17] = v15;
    }
  }

  return v7;
}

void sub_2625726F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26672B1B0](v23, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

BOOL TBoolParam::setValueOriginal(char *a1, uint64_t a2, unsigned int *a3)
{
  v19 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v19);
  v7 = v19;
  if (v19)
  {
    v8 = (a1 + 16);
    if (a1[39] < 0)
    {
      v8 = *v8;
    }

    loggableUnicode(v8, v17);
    v9 = v18;
    v10 = v17[0];
    loggableUnicode(a3, __p);
    if (v9 >= 0)
    {
      v12 = v17;
    }

    else
    {
      v12 = v10;
    }

    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    tknPrintf("Error: %s : parameter value is out of range, was '%s', expected a BOOLean.\n", v11, v12, v13);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    TBoolParam::setOriginal(a1, a2, v6);
  }

  return v7;
}

void sub_2625728B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26672B1B0](v23, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t TBoolParam::setOriginal(uint64_t this, uint64_t a2, char a3)
{
  *(this + a2 + 152) = a3;
  *(this + 112) |= 1 << (a2 + 9);
  v3 = *(this + 136);
  if (v3)
  {
    v4 = v3[17];
    v3[17] = a2;
    this = (*(*v3 + 16))(v3, this);
    v3[17] = v4;
  }

  return this;
}

TIntParam *TIntParam::TIntParam(TIntParam *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  *TParam::TParam(a1, 2, a2, a3, a4, a8, a9) = &unk_287522CC8;
  if (a5 > a6 || (*(a1 + 38) = a5, *(a1 + 39) = a6, TIntParam::setOriginal(a1, 0, a7)))
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "Failed to create Int param");
    *__p = byte_287529580;
    if (SHIBYTE(v19) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v18[0], v18[1]);
    }

    else
    {
      *&__p[8] = *v18;
      v21 = v19;
    }

    *__p = &unk_287527740;
    if (v21 >= 0)
    {
      v14 = &__p[8];
    }

    else
    {
      v14 = *&__p[8];
    }

    conditionalAssert(v14, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 205);
    *__p = byte_287529580;
    if (SHIBYTE(v21) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "Failed to create Int param");
    *exception = byte_287529580;
    v16 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v16, *__p, *&__p[8]);
    }

    else
    {
      v17 = *__p;
      exception[3] = *&__p[16];
      *&v16->__r_.__value_.__l.__data_ = v17;
    }

    *exception = &unk_287527740;
  }

  return a1;
}

{
  return TIntParam::TIntParam(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_262572BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      TParam::~TParam(v25);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t TIntParam::setOriginal(TIntParam *this, uint64_t a2, int a3)
{
  if (*(this + 38) > a3 || *(this + 39) < a3)
  {
    return 1;
  }

  *(this + a2 + 40) = a3;
  *(this + 14) |= 1 << (a2 + 9);
  v4 = *(this + 17);
  if (!v4)
  {
    return 0;
  }

  v5 = v4[17];
  v4[17] = a2;
  (*(*v4 + 16))(v4, this);
  result = 0;
  v4[17] = v5;
  return result;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void TLogicException::~TLogicException(void **this)
{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

uint64_t TIntParam::TIntParam(uint64_t a1, uint64_t a2)
{
  v3 = TParam::TParam(a1, 2, a2);
  *v3 = &unk_287522CC8;
  *(v3 + 19) = 0;
  if (TIntParam::setOriginal(v3, 0, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "Failed to create Int param");
    *__p = byte_287529580;
    if (SHIBYTE(v10) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v9[0], v9[1]);
    }

    else
    {
      *&__p[8] = *v9;
      v12 = v10;
    }

    *__p = &unk_287527740;
    if (v12 >= 0)
    {
      v5 = &__p[8];
    }

    else
    {
      v5 = *&__p[8];
    }

    conditionalAssert(v5, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 215);
    *__p = byte_287529580;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "Failed to create Int param");
    *exception = byte_287529580;
    v7 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v7, *__p, *&__p[8]);
    }

    else
    {
      v8 = *__p;
      exception[3] = *&__p[16];
      *&v7->__r_.__value_.__l.__data_ = v8;
    }

    *exception = &unk_287527740;
  }

  return a1;
}

void sub_262572FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      TParam::~TParam(v25);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t TIntParam::setValue(uint64_t a1, uint64_t a2, int *a3)
{
  v18 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v18);
  if (!v18 && v6 >= *(a1 + 152) && v6 <= *(a1 + 156))
  {
    return TIntParam::set(a1, a2, v6);
  }

  v7 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v7 = *v7;
  }

  loggableUnicode(v7, v16);
  v8 = v17;
  v9 = v16[0];
  loggableUnicode(a3, __p);
  if (v8 >= 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = v9;
  }

  if (v15 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  tknPrintf("Error: %s : parameter value is out of range, was '%s', expected an int in the range [%d,%d].\n", v10, v11, v12, *(a1 + 152), *(a1 + 156));
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  return 1;
}

void sub_2625731B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x26672B1B0](v25, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t TIntParam::set(TIntParam *this, uint64_t a2, int a3)
{
  if (*(this + 38) > a3 || *(this + 39) < a3)
  {
    return 1;
  }

  *(this + a2 + 64) = a3;
  *(this + 14) |= 1 << (a2 + 33);
  v4 = *(this + 17);
  if (!v4)
  {
    return 0;
  }

  v5 = v4[17];
  v4[17] = a2;
  (*(*v4 + 16))(v4, this);
  result = 0;
  v4[17] = v5;
  return result;
}

uint64_t TIntParam::setValueOriginal(uint64_t a1, uint64_t a2, int *a3)
{
  v18 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v18);
  if (!v18 && v6 >= *(a1 + 152) && v6 <= *(a1 + 156))
  {
    return TIntParam::setOriginal(a1, a2, v6);
  }

  v7 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v7 = *v7;
  }

  loggableUnicode(v7, v16);
  v8 = v17;
  v9 = v16[0];
  loggableUnicode(a3, __p);
  if (v8 >= 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = v9;
  }

  if (v15 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  tknPrintf("Error: %s : parameter value is out of range, was '%s', expected an int in the range [%d,%d].\n", v10, v11, v12, *(a1 + 152), *(a1 + 156));
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  return 1;
}

void sub_262573434(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x26672B1B0](v25, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t TIntParam::getValue(TParam *a1, uint64_t a2, const void **a3)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v14);
  v6 = *(v14 - 3);
  v7 = std::locale::classic();
  std::ios_base::getloc((&v14 + v6));
  std::ios_base::imbue((&v14 + v6), v7);
  std::locale::~locale(&__p);
  v8 = *(&v15.__einp_ + v6);
  if (v8)
  {
    (*(v8->__locale_ + 2))(v8, v7);
    std::locale::locale(&v17, v8 + 1);
    std::locale::operator=(v8 + 1, v7);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v13);
  ValidConfig = TParam::getValidConfig(a1, a2);
  MEMORY[0x26672B0B0](&v14, *(a1 + ValidConfig + 40));
  std::wstringbuf::str(&__p, &v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  TBuffer<wchar_t>::assign(a3, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__str_.__r_.__value_.__l.__data_);
  }

  v15.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v15.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x26672B170](&v16);
}

void sub_262573698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::wostringstream::~wostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::wostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  *a1 = &unk_28752AFF0;
  *(a1 + 112) = &unk_28752B018;
  std::ios_base::init((a1 + 112), (a1 + 8));
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  std::wstringbuf::basic_stringbuf[abi:ne200100](a1 + 8, 16);
  return a1;
}

void sub_2625737A4(_Unwind_Exception *a1)
{
  std::wostream::~wostream();
  MEMORY[0x26672B170](v1);
  _Unwind_Resume(a1);
}

uint64_t std::wostringstream::~wostringstream(uint64_t a1)
{
  v2 = a1 + 112;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 16));
  std::wostream::~wostream();
  MEMORY[0x26672B170](v2);
  return a1;
}

uint64_t TIntParam::getValueOriginal(uint64_t a1, uint64_t a2, const void **a3)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v14);
  v6 = *(v14 - 3);
  v7 = std::locale::classic();
  std::ios_base::getloc((&v14 + v6));
  std::ios_base::imbue((&v14 + v6), v7);
  std::locale::~locale(&__p);
  v8 = *(&v15.__einp_ + v6);
  if (v8)
  {
    (*(v8->__locale_ + 2))(v8, v7);
    std::locale::locale(&v17, v8 + 1);
    std::locale::operator=(v8 + 1, v7);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v13);
    ;
  }

  MEMORY[0x26672B0B0](&v14, *(a1 + 4 * a2 + 160));
  std::wstringbuf::str(&__p, &v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  TBuffer<wchar_t>::assign(a3, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__str_.__r_.__value_.__l.__data_);
  }

  v15.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v15.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x26672B170](&v16);
}

void sub_262573AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::wostringstream::~wostringstream(&a16);
  _Unwind_Resume(a1);
}

BOOL TFloatParam::setValue(char *a1, uint64_t a2, __int32 *a3)
{
  v19 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToFloat(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v19);
  v7 = v19;
  if (v19)
  {
    v8 = (a1 + 16);
    if (a1[39] < 0)
    {
      v8 = *v8;
    }

    loggableUnicode(v8, v17);
    v9 = v18;
    v10 = v17[0];
    loggableUnicode(a3, __p);
    if (v9 >= 0)
    {
      v12 = v17;
    }

    else
    {
      v12 = v10;
    }

    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    tknPrintf("Error: %s : parameter value is not a float, was '%s'.\n", v11, v12, v13);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    TFloatParam::set(a1, a2, v6);
  }

  return v7;
}

void sub_262573C50(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26672B1B0](v23, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t TFloatParam::set(uint64_t this, uint64_t a2, double a3)
{
  *(this + 8 * a2 + 344) = a3;
  *(this + 112) |= 1 << (a2 + 33);
  v3 = *(this + 136);
  if (v3)
  {
    v4 = v3[17];
    v3[17] = a2;
    this = (*(*v3 + 16))(v3, this);
    v3[17] = v4;
  }

  return this;
}

BOOL TFloatParam::setValueOriginal(char *a1, uint64_t a2, __int32 *a3)
{
  v19 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToFloat(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v19);
  v7 = v19;
  if (v19)
  {
    v8 = (a1 + 16);
    if (a1[39] < 0)
    {
      v8 = *v8;
    }

    loggableUnicode(v8, v17);
    v9 = v18;
    v10 = v17[0];
    loggableUnicode(a3, __p);
    if (v9 >= 0)
    {
      v12 = v17;
    }

    else
    {
      v12 = v10;
    }

    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    tknPrintf("Error: %s : parameter value is not a float, was '%s'.\n", v11, v12, v13);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    TFloatParam::setOriginal(a1, a2, v6);
  }

  return v7;
}

void sub_262573E88(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26672B1B0](v23, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t TFloatParam::setOriginal(uint64_t this, uint64_t a2, double a3)
{
  *(this + 8 * a2 + 152) = a3;
  *(this + 112) |= 1 << (a2 + 9);
  v3 = *(this + 136);
  if (v3)
  {
    v4 = v3[17];
    v3[17] = a2;
    this = (*(*v3 + 16))(v3, this);
    v3[17] = v4;
  }

  return this;
}

uint64_t TFloatParam::getValue(TParam *a1, uint64_t a2, const void **a3)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v14);
  v6 = *(v14 - 3);
  v7 = std::locale::classic();
  std::ios_base::getloc((&v14 + v6));
  std::ios_base::imbue((&v14 + v6), v7);
  std::locale::~locale(&__p);
  v8 = *(&v15.__einp_ + v6);
  if (v8)
  {
    (*(v8->__locale_ + 2))(v8, v7);
    std::locale::locale(&v17, v8 + 1);
    std::locale::operator=(v8 + 1, v7);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v13);
  ValidConfig = TParam::getValidConfig(a1, a2);
  MEMORY[0x26672B0A0](&v14, *(a1 + ValidConfig + 19));
  std::wstringbuf::str(&__p, &v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  TBuffer<wchar_t>::assign(a3, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__str_.__r_.__value_.__l.__data_);
  }

  v15.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v15.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x26672B170](&v16);
}

void sub_262574174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::wostringstream::~wostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t TFloatParam::getValueOriginal(uint64_t a1, uint64_t a2, const void **a3)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v14);
  v6 = *(v14 - 3);
  v7 = std::locale::classic();
  std::ios_base::getloc((&v14 + v6));
  std::ios_base::imbue((&v14 + v6), v7);
  std::locale::~locale(&__p);
  v8 = *(&v15.__einp_ + v6);
  if (v8)
  {
    (*(v8->__locale_ + 2))(v8, v7);
    std::locale::locale(&v17, v8 + 1);
    std::locale::operator=(v8 + 1, v7);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v13);
    ;
  }

  MEMORY[0x26672B0A0](&v14, *(a1 + 8 * a2 + 152));
  std::wstringbuf::str(&__p, &v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  TBuffer<wchar_t>::assign(a3, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__str_.__r_.__value_.__l.__data_);
  }

  v15.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v15.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x26672B170](&v16);
}

void sub_2625743D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::wostringstream::~wostringstream(&a16);
  _Unwind_Resume(a1);
}

void *TStringParam::TStringParam(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int32 *a5, uint64_t a6, uint64_t a7)
{
  v9 = TParam::TParam(a1, 4, a2, a3, a4, a6, a7);
  *v9 = &unk_287528A10;
  bzero(v9 + 19, 0x4C8uLL);
  if (TStringParam::setOriginal(a1, 0, a5))
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "Failed to create String param");
    *__p = &unk_287529580;
    if (SHIBYTE(v16) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v15[0], v15[1]);
    }

    else
    {
      *&__p[8] = *v15;
      v18 = v16;
    }

    *__p = &unk_287527740;
    if (v18 >= 0)
    {
      v11 = &__p[8];
    }

    else
    {
      v11 = *&__p[8];
    }

    conditionalAssert(v11, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 338);
    *__p = &unk_287529580;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "Failed to create String param");
    *exception = &unk_287529580;
    v13 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v13, *__p, *&__p[8]);
    }

    else
    {
      v14 = *__p;
      exception[3] = *&__p[16];
      *&v13->__r_.__value_.__l.__data_ = v14;
    }

    *exception = &unk_287527740;
  }

  return a1;
}

void sub_262574600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v27)
  {
LABEL_6:
    __p = v25 + 169;
    std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p = v25 + 166;
    std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p = v25 + 163;
    std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&__p);
    v29 = v25 + 160;
    v30 = -1152;
    while (1)
    {
      if (*(v29 + 23) < 0)
      {
        operator delete(*v29);
      }

      v29 -= 3;
      v30 += 24;
      if (!v30)
      {
        TParam::~TParam(v25);
        _Unwind_Resume(a1);
      }
    }
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t TStringParam::setOriginal(void *a1, uint64_t a2, __int32 *a3)
{
  v6 = a1[163];
  v7 = a1[164] - v6;
  if (v7)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = v6;
      if (*(v6 + 23) < 0)
      {
        v10 = *v6;
      }

      if (!wcscmp(a3, v10))
      {
        break;
      }

      v6 += 24;
      if (!--v9)
      {
        return 1;
      }
    }
  }

  MEMORY[0x26672AF30](&a1[3 * a2 + 19], a3);
  a1[14] |= 1 << (a2 + 9);
  v12 = a1[17];
  if (!v12)
  {
    return 0;
  }

  v13 = v12[17];
  v12[17] = a2;
  (*(*v12 + 16))(v12, a1);
  result = 0;
  v12[17] = v13;
  return result;
}

void *TStringParam::TStringParam(void *a1, uint64_t a2)
{
  v3 = TParam::TParam(a1, 4, a2);
  *v3 = &unk_287528A10;
  bzero(v3 + 19, 0x4C8uLL);
  TStringParam::setOriginal(a1, 0, &dword_26286B714);
  return a1;
}

void sub_262574860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v10 + 169;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 + 166;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 + 163;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  TStringParam::TStringParam(v10);
  TParam::~TParam(v10);
  _Unwind_Resume(a1);
}

uint64_t TStringParam::setAllowables(uint64_t a1, std::wstring **a2, std::wstring **a3, std::wstring **a4)
{
  if (a3)
  {
    v8 = a3[1];
    v9 = v8 - *a3;
    if (v9 != a2[1] - *a2)
    {
      v14 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v14 = *v14;
      }

      loggableUnicode(v14, __p);
      if (v21 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      tknPrintf("Error: %s : Mismatch in the number of (allowable, grammar) entries", v15, v16);
      goto LABEL_24;
    }

    v10 = (a1 + 1328);
    if ((a1 + 1328) != a3)
    {
      std::vector<std::wstring>::__assign_with_size[abi:ne200100]<std::wstring*,std::wstring*>(v10, *a3, v8, 0xAAAAAAAAAAAAAAABLL * (v9 >> 3));
    }
  }

  if (!a4)
  {
LABEL_9:
    if ((a1 + 1304) != a2)
    {
      std::vector<std::wstring>::__assign_with_size[abi:ne200100]<std::wstring*,std::wstring*>((a1 + 1304), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    }

    return 0;
  }

  v11 = a4[1];
  v12 = v11 - *a4;
  if (v12 == a2[1] - *a2)
  {
    if ((a1 + 1352) != a4)
    {
      std::vector<std::wstring>::__assign_with_size[abi:ne200100]<std::wstring*,std::wstring*>((a1 + 1352), *a4, v11, 0xAAAAAAAAAAAAAAABLL * (v12 >> 3));
    }

    goto LABEL_9;
  }

  v17 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v17 = *v17;
  }

  loggableUnicode(v17, __p);
  if (v21 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  tknPrintf("Error: %s : Mismatch in the number of (allowable, description) entries", v18, v19);
LABEL_24:
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_262574A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TStringParam::set(void *a1, uint64_t a2, __int32 *a3)
{
  v6 = a1[163];
  v7 = a1[164] - v6;
  if (v7)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = v6;
      if (*(v6 + 23) < 0)
      {
        v10 = *v6;
      }

      if (!wcscmp(a3, v10))
      {
        break;
      }

      v6 += 24;
      if (!--v9)
      {
        return 1;
      }
    }
  }

  MEMORY[0x26672AF30](&a1[3 * a2 + 91], a3);
  a1[14] |= 1 << (a2 + 33);
  v12 = a1[17];
  if (!v12)
  {
    return 0;
  }

  v13 = v12[17];
  v12[17] = a2;
  (*(*v12 + 16))(v12, a1);
  result = 0;
  v12[17] = v13;
  return result;
}

const void **TStringParam::getGrammarValue(TParam *a1, uint64_t a2, const void **a3)
{
  v5 = a1 + 24 * TParam::getValidConfig(a1, a2);
  v6 = (v5 + 152);
  if (v5[175] < 0)
  {
    v6 = *v6;
  }

  v7 = *(a1 + 163);
  v8 = *(a1 + 164) - v7;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  while (1)
  {
    v13 = (v7 + v9);
    if (*(v7 + v9 + 23) < 0)
    {
      v13 = *v13;
    }

    if (!wcscmp(v6, v13))
    {
      break;
    }

    ++v10;
    v9 += 24;
    if (v12 == v10)
    {
      goto LABEL_11;
    }
  }

  v17 = *(a1 + 166);
  if (v17 != *(a1 + 167))
  {
    v15 = (v17 + v9);
    if ((*(v17 + v9 + 23) & 0x80000000) == 0 || (v15 = *v15) != 0)
    {
      v14 = a3;
      goto LABEL_12;
    }
  }

  if (*(*(a1 + 17) + 120) > 4uLL)
  {
LABEL_11:
    v14 = a3;
    v15 = v6;
LABEL_12:

    return TBuffer<wchar_t>::assign(v14, v15);
  }

  std::wostringstream::basic_ostringstream[abi:ne200100](&v20);
  MEMORY[0x26672B0C0](&v20, v10);
  std::wstringbuf::str(&__p, &v21);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  TBuffer<wchar_t>::assign(a3, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__str_.__r_.__value_.__l.__data_);
  }

  v21.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v21.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x26672B170](&v22);
}

void sub_262574D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::wostringstream::~wostringstream(&a15);
  _Unwind_Resume(a1);
}

void TParamManager::~TParamManager(TParamManager *this)
{
  *this = &unk_2875282B0;
  v2 = this + 48;
  v3 = *(this + 6);
  v4 = this + 56;
  if (v3 != this + 56)
  {
    do
    {
      v5 = *(v3 + 5);
      if (v5 && (v6 = v5 - 1, v7 = *(this + 3), v6 < (*(this + 4) - v7) >> 3))
      {
        v8 = *(v7 + 8 * v6);
        v9 = TParam::flagsSet(v8, 8);
        if (v8)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          (*(*v8 + 8))(v8);
        }
      }

      else
      {
        TParam::flagsSet(0, 8);
      }

      v11 = *(v3 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v3 + 2);
          v10 = *v12 == v3;
          v3 = v12;
        }

        while (!v10);
      }

      v3 = v12;
    }

    while (v12 != v4);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 96, *(this + 13));
  v14 = (this + 72);
  std::vector<std::pair<unsigned long,std::wstring>>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v2, *(this + 7));
  v13 = *(this + 3);
  if (v13)
  {
    *(this + 4) = v13;
    operator delete(v13);
  }

  TRegisterable<TParamManager>::~TRegisterable(this);
}

{
  TParamManager::~TParamManager(this);

  JUMPOUT(0x26672B1B0);
}

void *TRegisterable<TParamManager>::~TRegisterable(void *a1)
{
  *a1 = &unk_287528250;
  if (a1[1] != -1)
  {
    Registry = TRegisterable<TParamManager>::getRegistry();
    v3 = *Registry;
    *(Registry[1] + 8 * a1[1] - 8) = 0;
    *Registry = v3 - 1;
  }

  return a1;
}

uint64_t TParamManager::find@<X0>(uint64_t a1@<X0>, const __int32 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  result = std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(a1 + 48, &v5);
  *a3 = result;
  return result;
}

uint64_t TParamManager::add(TParamManager *this, TParam *a2)
{
  v5 = *(this + 4);
  v4 = *(this + 5);
  if (v5 >= v4)
  {
    v7 = *(this + 3);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(this + 24, v11);
    }

    *(8 * v8) = a2;
    v6 = 8 * v8 + 8;
    v12 = *(this + 3);
    v13 = *(this + 4) - v12;
    v14 = (8 * v8 - v13);
    memcpy(v14, v12, v13);
    v15 = *(this + 3);
    *(this + 3) = v14;
    *(this + 4) = v6;
    *(this + 5) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(this + 4) = v6;
  v16 = (a2 + 16);
  if (*(a2 + 39) < 0)
  {
    v16 = *v16;
  }

  v17 = (v6 - *(this + 3)) >> 3;
  v19 = v16;
  v20 = &v19;
  *(std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::__emplace_unique_key_args<wchar_t const*,std::piecewise_construct_t const&,std::tuple<wchar_t const*&&>,std::tuple<>>(this + 48, &v19, &std::piecewise_construct, &v20) + 40) = v17;
  *(a2 + 17) = this;
  return (*(this + 4) - *(this + 3)) >> 3;
}

unint64_t TParamManager::newConfig(uint64_t **a1, __int32 *a2, uint64_t a3)
{
  v5 = a1 + 9;
  *__p = a3;
  std::wstring::basic_string[abi:ne200100]<0>(&__p[8], a2);
  v7 = a1[10];
  v8 = a1[11];
  if (v7 >= v8)
  {
    v11 = (v7 - *v5) >> 5;
    v12 = v11 + 1;
    if ((v11 + 1) >> 59)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v13 = v8 - *v5;
    if (v13 >> 4 > v12)
    {
      v12 = v13 >> 4;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v33 = v5;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,std::wstring>>>(v5, v14);
    }

    v15 = 32 * v11;
    *v15 = *__p;
    v16 = *&__p[8];
    *(v15 + 24) = v30;
    *(v15 + 8) = v16;
    *&__p[16] = 0;
    v30 = 0;
    *&__p[8] = 0;
    v10 = 32 * v11 + 32;
    v17 = a1[9];
    v18 = a1[10] - v17;
    v19 = (v15 - v18);
    memcpy((v15 - v18), v17, v18);
    v20 = a1[9];
    a1[9] = v19;
    a1[10] = v10;
    v21 = a1[11];
    a1[11] = 0;
    *&v31[16] = v20;
    v32 = v21;
    *v31 = v20;
    *&v31[8] = v20;
    std::__split_buffer<std::pair<unsigned long,std::wstring>>::~__split_buffer(v31);
    v22 = SHIBYTE(v30);
    a1[10] = v10;
    if (v22 < 0)
    {
      operator delete(*&__p[8]);
      v10 = a1[10];
    }
  }

  else
  {
    *v7 = *__p;
    v9 = *&__p[8];
    v7[3] = v30;
    *(v7 + 1) = v9;
    v10 = (v7 + 4);
    a1[10] = v7 + 4;
  }

  v23 = ((v10 - *v5) >> 5) - 1;
  if (v23 >= 0x18)
  {
    tknPrintf("Error: Too many parameter configurations were defined; max number of configurations is %lld\n", v6, 22);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v31 = byte_287529580;
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v31[8], *__p, *&__p[8]);
    }

    else
    {
      *&v31[8] = *__p;
      v32 = *&__p[16];
    }

    *v31 = &unk_287528000;
    if (SHIBYTE(v32) >= 0)
    {
      v25 = &v31[8];
    }

    else
    {
      v25 = *&v31[8];
    }

    conditionalAssert(v25, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 556);
    *v31 = byte_287529580;
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*&v31[8]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v31, &byte_262899963);
    *exception = byte_287529580;
    v27 = (exception + 1);
    if ((v31[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v27, *v31, *&v31[8]);
    }

    else
    {
      v28 = *v31;
      exception[3] = *&v31[16];
      *&v27->__r_.__value_.__l.__data_ = v28;
    }

    *exception = &unk_287528000;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v31, a2);
  *__p = v31;
  *(std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring&&>,std::tuple<>>(a1 + 12, v31, &std::piecewise_construct, __p) + 56) = v23;
  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

  return v23;
}

void sub_262575464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, void *a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((v32 & 1) == 0)
    {
LABEL_6:
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

void TDataException::~TDataException(void **this)
{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

void *std::wstring::basic_string[abi:ne200100]<0>(void *a1, __int32 *a2)
{
  v4 = wcslen(a2);
  if (v4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 5)
  {
    if ((v4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (v4 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a1, v6);
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, a2, 4 * v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void TParamManager::initParam(uint64_t a1, const TFileObject *a2, int a3, int a4, char a5, uint64_t **a6)
{
  v385 = *MEMORY[0x277D85DE8];
  v339 = xmmword_26286B680;
  v338 = "N";
  if (a4)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v340 = -1;
  v341 = "D";
  v342 = v12;
  v343 = xmmword_26286B690;
  v345 = xmmword_26286B6A0;
  v344 = "V";
  v348 = xmmword_26286B6A0;
  v346 = 4;
  v347 = "O";
  v349 = 4;
  v350 = "F";
  v351 = xmmword_26286B6A0;
  v354 = xmmword_26286B6A0;
  v352 = 4;
  v353 = "S";
  v357 = xmmword_26286B6A0;
  v355 = 4;
  v356 = "F";
  v358 = -1;
  v360 = xmmword_26286B6A0;
  v359 = "M";
  v361 = -1;
  v362 = "M";
  v363 = 2;
  v364 = xmmword_26286B690;
  v365 = "A";
  v366 = 2;
  v367 = xmmword_26286B690;
  v368 = "D";
  v369 = v12;
  v370 = xmmword_26286B6B0;
  v371 = "V";
  v372 = 2;
  v373 = xmmword_26286B6B0;
  v374 = "R";
  v375 = 2;
  v376 = xmmword_26286B6C0;
  v13 = TFileObject::verify(a2, &v338, 13, 1);
  v335 = v13;
  if (v13)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
    *v377 = byte_287529580;
    if (SHIBYTE(v337) < 0)
    {
      std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
    }

    else
    {
      *&v377[8] = __p;
      v378 = v337;
    }

    *v377 = &unk_287526298;
    if (v378 >= 0)
    {
      v166 = &v377[8];
    }

    else
    {
      v166 = *&v377[8];
    }

    conditionalAssert(v166, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 768);
    *v377 = byte_287529580;
    if (SHIBYTE(v378) < 0)
    {
      operator delete(*&v377[8]);
    }

    if (SHIBYTE(v337) < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
    *exception = byte_287529580;
    v168 = (exception + 1);
    if ((v377[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v168, *v377, *&v377[8]);
    }

    else
    {
      v200 = *v377;
      exception[3] = *&v377[16];
      *&v168->__r_.__value_.__l.__data_ = v200;
    }

    *exception = &unk_287526298;
  }

  v334 = 0;
  v14 = (*(a1 + 80) - *(a1 + 72)) >> 5;
  *v377 = 0;
  std::vector<wchar_t const*>::vector[abi:ne200100](v333, v14, v377);
  v15 = (*(a1 + 80) - *(a1 + 72)) >> 5;
  *v377 = 0;
  std::vector<wchar_t const*>::vector[abi:ne200100](v332, v15, v377);
  v329 = 0;
  v330 = 0;
  v331 = 0;
  v326 = 0;
  v327 = 0;
  v328 = 0;
  v323 = 0;
  v324 = 0;
  v325 = 0;
  Config = TParamManager::getConfig(a1, "F");
  v314 = TParamManager::getConfig(a1, "S");
  v312 = a5;
  v309 = a6;
  v319 = a4;
  v318 = a2;
  v16 = *(a2 + 3);
  if (v16)
  {
    v17 = 0;
    v321 = 0;
    v322 = 0;
    v320 = 0;
    v317 = 0;
    v313 = 0;
    v311 = 0;
    v18 = 0;
    v310 = 0;
    while (1)
    {
      v19 = *(v16 + 8);
      if (!wcscmp(v19, "N"))
      {
        v28 = TFileObject::verify(v16, 0, 0);
        v335 |= v28;
        v334 = *(v16 + 24);
        goto LABEL_134;
      }

      if (!wcscmp(v19, "D"))
      {
        v30 = TFileObject::verify(v16, 0, 1);
        v335 |= v30;
        v17 = *(v16 + 24);
        goto LABEL_134;
      }

      v20 = v17;
      if (!wcscmp(v19, "O") || !wcscmp(v19, "V"))
      {
        v29 = TFileObject::verify(v16, 0, a3 == 4);
        v335 |= v29;
        v322 = *(v16 + 24);
        goto LABEL_134;
      }

      v21 = v18;
      if (!wcscmp(v19, "D"))
      {
        break;
      }

      if (!wcscmp(v19, "V"))
      {
        if (*(v16 + 40))
        {
          loggableFileObject(v16);
          v32 = v377;
          if (v377[23] < 0)
          {
            v32 = *v377;
          }

LABEL_36:
          tknPrintf("Error: %sBad attribute declaration, expected an object\n", v31, v32);
LABEL_37:
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          v335 = 1;
          goto LABEL_134;
        }

        v49 = *(v16 + 24);
        if (!v49)
        {
          goto LABEL_134;
        }

        while (2)
        {
          v50 = TParamManager::getConfig(a1, v49[1]);
          if ((v50 + 1) <= 1)
          {
            loggableFileObject(v16);
            v51 = v377[23];
            v52 = *v377;
            loggableUnicode(v49[1], &__p);
            v54 = v377;
            if (v51 < 0)
            {
              v54 = v52;
            }

            p_p = &__p;
            if (v337 < 0)
            {
              p_p = __p;
            }

            tknPrintf("Error: %sInvalid configuration name: '%s'\n", v53, v54, p_p);
            goto LABEL_79;
          }

          v56 = TFileObject::verify(v49, 0, a3 == 4);
          v335 |= v56;
          if (*(v332[0] + v50))
          {
            loggableFileObject(v16);
            v57 = v377[23];
            v58 = *v377;
            loggableUnicode(v49[1], &__p);
            v60 = v377;
            if (v57 < 0)
            {
              v60 = v58;
            }

            v61 = &__p;
            if (v337 < 0)
            {
              v61 = __p;
            }

            tknPrintf("Error: %sDuplicate parameter setting for '%s' configuration\n", v59, v60, v61);
LABEL_79:
            v18 = v21;
            if (SHIBYTE(v337) < 0)
            {
              operator delete(__p);
            }

            if ((v377[23] & 0x80000000) != 0)
            {
              operator delete(*v377);
            }

            v335 = 1;
          }

          else
          {
            *(v332[0] + v50) = v49[3];
          }

          v49 = v49[2];
          if (!v49)
          {
            goto LABEL_134;
          }

          continue;
        }
      }

      if (!wcscmp(v19, "F"))
      {
        v33 = *(a1 + 120);
        *&v377[8] = xmmword_26286B6D0;
        *v377 = &dword_26286B714;
        v378 = -1;
        if (TFileObject::verify(v16, v377, 1, 1))
        {
          v321 = 0;
          v34 = 1;
          v17 = v20;
          goto LABEL_133;
        }

        v62 = *(v16 + 24);
        if (!v62)
        {
          v34 = 0;
          v321 = 0;
          v17 = v20;
          goto LABEL_132;
        }

        v321 = 0;
        v34 = 0;
        while (2)
        {
          if (TFileObject::verify(v62, 0, 0))
          {
LABEL_90:
            v34 = 1;
            goto LABEL_113;
          }

          v63 = *(v62 + 3);
          if (!wcscmp(v63, "e"))
          {
            v66 = v321 | 1;
          }

          else
          {
            if (v33 <= 2 && !wcscmp(v63, "d"))
            {
              loggableFileObject(v16);
              v68 = &__p;
              if (v337 < 0)
              {
                v68 = __p;
              }

              tknPrintf("Warning: %s'deprecated' attribute is not functional\n", v67, v68);
              goto LABEL_109;
            }

            if (!wcscmp(v63, "h"))
            {
              v66 = v321 | 0x20;
            }

            else if (!wcscmp(v63, "r"))
            {
              v66 = v321 | 0x100;
            }

            else
            {
              if (wcscmp(v63, "u"))
              {
                if (v33 > 2 || wcscmp(v63, "p"))
                {
                  loggableFileObject(v16);
                  v65 = &__p;
                  if (v337 < 0)
                  {
                    v65 = __p;
                  }

                  tknPrintf("Error: %sUnknown flag\n", v64, v65);
                  if (SHIBYTE(v337) < 0)
                  {
                    operator delete(__p);
                  }

                  goto LABEL_90;
                }

                loggableFileObject(v16);
                v70 = &__p;
                if (v337 < 0)
                {
                  v70 = __p;
                }

                tknPrintf("Warning: %s'persistent' attribute is not functional\n", v69, v70);
LABEL_109:
                if (SHIBYTE(v337) < 0)
                {
                  operator delete(__p);
                }

LABEL_113:
                v62 = *(v62 + 2);
                if (!v62)
                {
                  v17 = v20;
                  if ((~v321 & 0x21) == 0)
                  {
                    loggableFileObject(v16);
                    v73 = &__p;
                    if (v337 < 0)
                    {
                      v73 = __p;
                    }

                    tknPrintf("Error: %sParam cannot be exposed and hidden at the same time\n", v72, v73);
                    if (SHIBYTE(v337) < 0)
                    {
                      operator delete(__p);
                    }

                    v34 = 1;
                    v17 = v20;
                  }

                  if ((v321 & 2) != 0)
                  {
LABEL_133:
                    v335 |= v34 & 1;
                    v18 = v21;
                    goto LABEL_134;
                  }

LABEL_132:
                  v321 |= 4uLL;
                  goto LABEL_133;
                }

                continue;
              }

              v66 = v321 | 2;
            }
          }

          break;
        }

        v321 = v66;
        goto LABEL_113;
      }

      if (!wcscmp(v19, "F"))
      {
        if (Config == -1)
        {
          tknPrintf("Error: Format detected but no format config exists\n", v22);
          v335 = 1;
        }

        v48 = TFileObject::verify(v16, 0, a3 == 4);
        v335 |= v48;
        v320 = *(v16 + 24);
        goto LABEL_134;
      }

      if (!wcscmp(v19, "S"))
      {
        if (v314 == -1)
        {
          tknPrintf("Error: SpellOut detected but no spellout config exists\n", v23);
          v335 = 1;
        }

        v71 = TFileObject::verify(v16, 0, a3 == 4);
        v335 |= v71;
        v317 = *(v16 + 24);
        goto LABEL_134;
      }

      if (!wcscmp(v19, "M"))
      {
        v74 = TFileObject::verify(v16, 0, 0);
        v335 |= v74;
        if (a3 != 2)
        {
          loggableFileObject(v16);
          if (v377[23] >= 0)
          {
            v195 = v377;
          }

          else
          {
            v195 = *v377;
          }

          tknPrintf("Error: %sInvalid attribute for given parameter type\n", v194, v195);
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v255 = &v377[8];
          }

          else
          {
            v255 = *&v377[8];
          }

          conditionalAssert(v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 905);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v256 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v256 = byte_287529580;
          v257 = (v256 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v257, *v377, *&v377[8]);
          }

          else
          {
            v289 = *v377;
            v256[3] = *&v377[16];
            *&v257->__r_.__value_.__l.__data_ = v289;
          }

          *v256 = &unk_287526298;
        }

        v313 = *(v16 + 24);
        goto LABEL_134;
      }

      if (!wcscmp(v19, "M"))
      {
        v75 = TFileObject::verify(v16, 0, 0);
        v335 |= v75;
        if (a3 != 2)
        {
          loggableFileObject(v16);
          if (v377[23] >= 0)
          {
            v197 = v377;
          }

          else
          {
            v197 = *v377;
          }

          tknPrintf("Error: %sInvalid attribute for given parameter type\n", v196, v197);
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v264 = &v377[8];
          }

          else
          {
            v264 = *&v377[8];
          }

          conditionalAssert(v264, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 915);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v265 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v265 = byte_287529580;
          v266 = (v265 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v266, *v377, *&v377[8]);
          }

          else
          {
            v301 = *v377;
            v265[3] = *&v377[16];
            *&v266->__r_.__value_.__l.__data_ = v301;
          }

          *v265 = &unk_287526298;
        }

        v311 = *(v16 + 24);
        goto LABEL_134;
      }

      if (!wcscmp(v19, "A"))
      {
        v76 = *(a1 + 120);
        *&v377[8] = vdupq_n_s64(1uLL);
        *v377 = &dword_26286B714;
        v380 = xmmword_26286B6D0;
        v378 = -1;
        v379 = "G";
        v383 = xmmword_26286B6D0;
        v381 = -1;
        v382 = "D";
        v384 = -1;
        if (TFileObject::verify(v16, v377, 3, 1))
        {
          v77 = 1;
          goto LABEL_194;
        }

        v78 = *(v16 + 24);
        if (!v78)
        {
          v79 = 0;
LABEL_179:
          if (v327 != v326 && v330 - v329 != v327 - v326)
          {
            loggableFileObject(v16);
            v92 = &__p;
            if (v337 < 0)
            {
              v92 = __p;
            }

            tknPrintf("Error: %sMismatch in the counts of allowables and Grammar associations\n", v91, v92);
            if (SHIBYTE(v337) < 0)
            {
              operator delete(__p);
            }

            v79 = 1;
          }

          if (v324 != v323 && v330 - v329 != v324 - v323)
          {
            loggableFileObject(v16);
            v94 = &__p;
            if (v337 < 0)
            {
              v94 = __p;
            }

            tknPrintf("Error: %sMismatch in the counts of allowables and associated descriptions\n", v93, v94);
            if (SHIBYTE(v337) < 0)
            {
              operator delete(__p);
            }

            v79 = 1;
          }

          v77 = v79;
          if (a3)
          {
LABEL_194:
            v17 = v20;
            v335 |= v77 & 1;
            v310 = 1;
            if (a3 == 4 || a3 == 1)
            {
              goto LABEL_134;
            }

            if (a3)
            {
              goto LABEL_605;
            }
          }

          else
          {
            v17 = v20;
            if (((0xAAAAAAAAAAAAAAABLL * ((v330 - v329) >> 3)) | 2) != 2)
            {
              loggableFileObject(v16);
              v96 = &__p;
              if (v337 < 0)
              {
                v96 = __p;
              }

              tknPrintf("Error: %sBoth 'true' and 'false' must be defined for BOOLean allowables\n", v95, v96);
              if (SHIBYTE(v337) < 0)
              {
                operator delete(__p);
              }

              v77 = 1;
              v17 = v20;
            }

            v335 |= v77 & 1;
          }

          if (*(a1 + 120) <= 5uLL)
          {
LABEL_605:
            loggableFileObject(v16);
            if (v377[23] >= 0)
            {
              v224 = v377;
            }

            else
            {
              v224 = *v377;
            }

            tknPrintf("Error: %sInvalid attribute for given parameter type\n", v223, v224);
            if ((v377[23] & 0x80000000) != 0)
            {
              operator delete(*v377);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
            *v377 = byte_287529580;
            if (SHIBYTE(v337) < 0)
            {
              std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
            }

            else
            {
              *&v377[8] = __p;
              v378 = v337;
            }

            *v377 = &unk_287526298;
            if (v378 >= 0)
            {
              v282 = &v377[8];
            }

            else
            {
              v282 = *&v377[8];
            }

            conditionalAssert(v282, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 927);
            *v377 = byte_287529580;
            if (SHIBYTE(v378) < 0)
            {
              operator delete(*&v377[8]);
            }

            if (SHIBYTE(v337) < 0)
            {
              operator delete(__p);
            }

            v283 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
            *v283 = byte_287529580;
            v284 = (v283 + 1);
            if ((v377[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v284, *v377, *&v377[8]);
            }

            else
            {
              v305 = *v377;
              v283[3] = *&v377[16];
              *&v284->__r_.__value_.__l.__data_ = v305;
            }

            *v283 = &unk_287526298;
          }

          v310 = 1;
          goto LABEL_134;
        }

        v79 = 0;
        while (2)
        {
          if (TFileObject::verify(v78, 0, 1))
          {
LABEL_143:
            v79 = 1;
            goto LABEL_144;
          }

          v80 = *(v78 + 8);
          if (!wcscmp(v80, &dword_26286B714))
          {
            std::wstring::basic_string[abi:ne200100]<0>(&__p, *(v78 + 24));
            std::vector<std::wstring>::push_back[abi:ne200100](&v329, &__p);
            if (SHIBYTE(v337) < 0)
            {
              operator delete(__p);
            }

            if (!a3)
            {
              v83 = *(v78 + 24);
              if (wcscmp(v83, "t") && wcscmp(v83, "f"))
              {
                loggableFileObject(v16);
                v85 = &__p;
                if (v337 < 0)
                {
                  v85 = __p;
                }

                tknPrintf("Error: %sBoolean allowables must be 'true' and 'false'\n", v84, v85);
                goto LABEL_169;
              }

              v88 = v329;
              if (v330 - v329 == 48)
              {
                if (SHIBYTE(v329->__r_.__value_.__r.__words[2]) < 0)
                {
                  v88 = v329->__r_.__value_.__r.__words[0];
                }

                if (!wcscmp(v83, v88))
                {
                  loggableFileObject(v16);
                  v90 = &__p;
                  if (v337 < 0)
                  {
                    v90 = __p;
                  }

                  tknPrintf("Error: %sDuplicate BOOLean allowable\n", v89, v90);
                  goto LABEL_169;
                }
              }
            }
          }

          else if (!wcscmp(v80, "G"))
          {
            std::wstring::basic_string[abi:ne200100]<0>(&__p, *(v78 + 24));
            std::vector<std::wstring>::push_back[abi:ne200100](&v326, &__p);
            if (SHIBYTE(v337) < 0)
            {
              operator delete(__p);
            }

            if (!a3)
            {
              loggableFileObject(v16);
              v87 = &__p;
              if (v337 < 0)
              {
                v87 = __p;
              }

              tknPrintf("Error: %sGrammar attribute not supported in Boolean allowables\n", v86, v87);
              goto LABEL_169;
            }
          }

          else if (!wcscmp(v80, "D"))
          {
            std::wstring::basic_string[abi:ne200100]<0>(&__p, *(v78 + 24));
            std::vector<std::wstring>::push_back[abi:ne200100](&v323, &__p);
            if (SHIBYTE(v337) < 0)
            {
              operator delete(__p);
            }

            if (v76 <= 5)
            {
              loggableFileObject(v16);
              v82 = &__p;
              if (v337 < 0)
              {
                v82 = __p;
              }

              tknPrintf("Error: %sDescription attribute not supported in allowables if version < 6\n", v81, v82);
LABEL_169:
              if (SHIBYTE(v337) < 0)
              {
                operator delete(__p);
              }

              goto LABEL_143;
            }
          }

LABEL_144:
          v78 = *(v78 + 16);
          if (!v78)
          {
            goto LABEL_179;
          }

          continue;
        }
      }

      if (!wcscmp(v19, "R"))
      {
        v24 = TFileObject::verify(v16, 0, 0);
        v335 |= v24;
        v25 = TParamManager::nameToParam(a1, *(v16 + 24));
        v18 = v25;
        if (!v25 || *(v25 + 8))
        {
          loggableFileObject(v16);
          v27 = v377;
          if (v377[23] < 0)
          {
            v27 = *v377;
          }

          tknPrintf("Error: %sAttribute must reference a previously-defined BOOLean parameter name\n", v26, v27);
          goto LABEL_37;
        }
      }

LABEL_134:
      v16 = *(v16 + 16);
      if (!v16)
      {
        goto LABEL_208;
      }
    }

    if (*(v16 + 40))
    {
      loggableFileObject(v16);
      v32 = v377;
      if (v377[23] < 0)
      {
        v32 = *v377;
      }

      goto LABEL_36;
    }

    v35 = *(v16 + 24);
    if (!v35)
    {
      goto LABEL_134;
    }

    while (1)
    {
      v36 = TParamManager::getConfig(a1, *(v35 + 8));
      if ((v36 + 1) <= 1)
      {
        break;
      }

      v42 = TFileObject::verify(v35, 0, a3 == 4);
      v335 |= v42;
      if (*(v333[0] + v36))
      {
        loggableFileObject(v16);
        v43 = v377[23];
        v44 = *v377;
        loggableUnicode(*(v35 + 8), &__p);
        v46 = v377;
        if (v43 < 0)
        {
          v46 = v44;
        }

        v47 = &__p;
        if (v337 < 0)
        {
          v47 = __p;
        }

        tknPrintf("Error: %sDuplicate default setting for '%s' configuration\n", v45, v46, v47);
        goto LABEL_55;
      }

      *(v333[0] + v36) = *(v35 + 24);
LABEL_60:
      v35 = *(v35 + 16);
      if (!v35)
      {
        goto LABEL_134;
      }
    }

    loggableFileObject(v16);
    v37 = v377[23];
    v38 = *v377;
    loggableUnicode(*(v35 + 8), &__p);
    v40 = v377;
    if (v37 < 0)
    {
      v40 = v38;
    }

    v41 = &__p;
    if (v337 < 0)
    {
      v41 = __p;
    }

    tknPrintf("Error: %sInvalid configuration name: '%s'\n", v39, v40, v41);
LABEL_55:
    v18 = v21;
    if (SHIBYTE(v337) < 0)
    {
      operator delete(__p);
    }

    if ((v377[23] & 0x80000000) != 0)
    {
      operator delete(*v377);
    }

    v335 = 1;
    goto LABEL_60;
  }

  v320 = 0;
  v321 = 0;
  v310 = 0;
  v18 = 0;
  v311 = 0;
  v313 = 0;
  v317 = 0;
  v322 = 0;
  v17 = 0;
LABEL_208:
  v315 = v17;
  if (v335 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
    *v377 = byte_287529580;
    if (SHIBYTE(v337) < 0)
    {
      std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
    }

    else
    {
      *&v377[8] = __p;
      v378 = v337;
    }

    *v377 = &unk_287526298;
    if (v378 >= 0)
    {
      v169 = &v377[8];
    }

    else
    {
      v169 = *&v377[8];
    }

    conditionalAssert(v169, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 942);
    *v377 = byte_287529580;
    if (SHIBYTE(v378) < 0)
    {
      operator delete(*&v377[8]);
    }

    if (SHIBYTE(v337) < 0)
    {
      operator delete(__p);
    }

    v170 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
    *v170 = byte_287529580;
    v171 = (v170 + 1);
    if ((v377[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v171, *v377, *&v377[8]);
    }

    else
    {
      v201 = *v377;
      v170[3] = *&v377[16];
      *&v171->__r_.__value_.__l.__data_ = v201;
    }

    *v170 = &unk_287526298;
  }

  *v377 = v334;
  v97 = std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(a1 + 48, v377);
  v98 = v320;
  v99 = v97;
  if (v319)
  {
    if (a1 + 56 != v97)
    {
      if (std::__tree<wchar_t const*,TWideCharCompare,std::allocator<wchar_t const*>>::__count_unique<wchar_t const*>(v309, &v334))
      {
        if (*(a1 + 120) >= 7uLL)
        {
          loggableFileObject(v318);
          v177 = v377[23];
          v178 = *v377;
          loggableUnicode(v334, &__p);
          v180 = v377;
          if (v177 < 0)
          {
            v180 = v178;
          }

          if (v337 >= 0)
          {
            v181 = &__p;
          }

          else
          {
            v181 = __p;
          }

          tknPrintf("Error: %sParameter '%s' has been overridden multiple times\n", v179, v180, v181);
          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v258 = &v377[8];
          }

          else
          {
            v258 = *&v377[8];
          }

          conditionalAssert(v258, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 970);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v259 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v259 = byte_287529580;
          v260 = (v259 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v260, *v377, *&v377[8]);
          }

          else
          {
            v299 = *v377;
            v259[3] = *&v377[16];
            *&v260->__r_.__value_.__l.__data_ = v299;
          }

          *v259 = &unk_287526298;
        }

        v100 = v18;
        loggableFileObject(v318);
        v101 = v377[23];
        v102 = *v377;
        loggableUnicode(v334, &__p);
        v104 = v377;
        if (v101 < 0)
        {
          v104 = v102;
        }

        if (v337 >= 0)
        {
          v105 = &__p;
        }

        else
        {
          v105 = __p;
        }

        tknPrintf("Warning: %sParameter '%s' has been overridden multiple times\n", v103, v104, v105);
        v18 = v100;
        if (SHIBYTE(v337) < 0)
        {
          operator delete(__p);
        }

        if ((v377[23] & 0x80000000) != 0)
        {
          operator delete(*v377);
        }
      }

      else
      {
        std::__tree<wchar_t const*,TWideCharCompare,std::allocator<wchar_t const*>>::__emplace_unique_key_args<wchar_t const*,wchar_t const* const&>(v309, &v334, &v334);
      }

      v116 = *(v99 + 40);
      if (v116 && (v117 = v116 - 1, v118 = *(a1 + 24), v117 < (*(a1 + 32) - v118) >> 3))
      {
        v115 = *(v118 + 8 * v117);
        if (!a3)
        {
LABEL_265:
          if (v310)
          {
            v119 = v18;
            v120 = v323;
            if (v324 - v323 == 48)
            {
              if (v115)
              {
              }

              else
              {
                v121 = 0;
              }

              v138 = v329;
              if (SHIBYTE(v329->__r_.__value_.__r.__words[2]) < 0)
              {
                v138 = v329->__r_.__value_.__r.__words[0];
              }

              v139 = wcscmp(v138, "t");
              v140 = (v120 + 24 * (v139 == 0));
              if (*(v140 + 23) < 0)
              {
                v140 = *v140;
              }

              v141 = (v120 + 24 * (v139 != 0));
              if (*(v141 + 23) < 0)
              {
                v141 = *v141;
              }

              v18 = v119;
              MEMORY[0x26672AF30](v121 + 200, v140);
              MEMORY[0x26672AF30](v121 + 224, v141);
            }

            else
            {
              v18 = v119;
            }
          }

          goto LABEL_343;
        }
      }

      else
      {
        v115 = 0;
        if (!a3)
        {
          goto LABEL_265;
        }
      }

LABEL_280:
      if (a3 == 2)
      {
        if (v115)
        {
        }

        else
        {
          v122 = 0;
        }

        if (v313)
        {
          {
            operator new();
          }

          v124 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v313, &v335);
        }

        else
        {
          v124 = v122[38];
        }

        if (v335 == 1)
        {
          loggableFileObject(v318);
          if (v377[23] >= 0)
          {
            v183 = v377;
          }

          else
          {
            v183 = *v377;
          }

          tknPrintf("Error: %sParameter min value is not an integer\n", v182, v183);
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v237 = &v377[8];
          }

          else
          {
            v237 = *&v377[8];
          }

          conditionalAssert(v237, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1058);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v238 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v238 = byte_287529580;
          v239 = (v238 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v239, *v377, *&v377[8]);
          }

          else
          {
            v280 = *v377;
            v238[3] = *&v377[16];
            *&v239->__r_.__value_.__l.__data_ = v280;
          }

          *v238 = &unk_287526298;
        }

        if (v311)
        {
          {
            operator new();
          }

          v125 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v311, &v335);
          if (v335)
          {
            loggableFileObject(v318);
            if (v377[23] >= 0)
            {
              v127 = v377;
            }

            else
            {
              v127 = *v377;
            }

            tknPrintf("Error: %sParameter max value is not an integer\n", v126, v127);
            if ((v377[23] & 0x80000000) != 0)
            {
              operator delete(*v377);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
            *v377 = byte_287529580;
            if (SHIBYTE(v337) < 0)
            {
              std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
            }

            else
            {
              *&v377[8] = __p;
              v378 = v337;
            }

            *v377 = &unk_287526298;
            if (v378 >= 0)
            {
              v252 = &v377[8];
            }

            else
            {
              v252 = *&v377[8];
            }

            conditionalAssert(v252, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1065);
            *v377 = byte_287529580;
            if (SHIBYTE(v378) < 0)
            {
              operator delete(*&v377[8]);
            }

            if (SHIBYTE(v337) < 0)
            {
              operator delete(__p);
            }

            v253 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
            *v253 = byte_287529580;
            v254 = (v253 + 1);
            if ((v377[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v254, *v377, *&v377[8]);
            }

            else
            {
              v288 = *v377;
              v253[3] = *&v377[16];
              *&v254->__r_.__value_.__l.__data_ = v288;
            }

            *v253 = &unk_287526298;
          }
        }

        else
        {
          v125 = v122[39];
        }

        if (v124 > v125)
        {
          loggableFileObject(v318);
          if (v377[23] >= 0)
          {
            v185 = v377;
          }

          else
          {
            v185 = *v377;
          }

          tknPrintf("Error: %sInvalid range\n", v184, v185);
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v240 = &v377[8];
          }

          else
          {
            v240 = *&v377[8];
          }

          conditionalAssert(v240, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1071);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v241 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v241 = byte_287529580;
          v242 = (v241 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v242, *v377, *&v377[8]);
          }

          else
          {
            v281 = *v377;
            v241[3] = *&v377[16];
            *&v242->__r_.__value_.__l.__data_ = v281;
          }

          *v241 = &unk_287526298;
        }

        v122[38] = v124;
        v122[39] = v125;
        goto LABEL_343;
      }

      if (a3 != 4 && a3 != 1)
      {
        goto LABEL_343;
      }

      if (v115)
      {
      }

      else
      {
        v123 = 0;
      }

      if (v310)
      {
        v128 = v326 == v327 ? 0 : &v326;
        v129 = v323 == v324 ? 0 : &v323;
        if (TStringParam::setAllowables(v123, &v329, v128, v129))
        {
          loggableFileObject(v318);
          if (v377[23] >= 0)
          {
            v199 = v377;
          }

          else
          {
            v199 = *v377;
          }

          tknPrintf("Error: %sParameter allowable list is invalid\n", v198, v199);
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v270 = &v377[8];
          }

          else
          {
            v270 = *&v377[8];
          }

          conditionalAssert(v270, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1092);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v271 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v271 = byte_287529580;
          v272 = (v271 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v272, *v377, *&v377[8]);
          }

          else
          {
            v302 = *v377;
            v271[3] = *&v377[16];
            *&v272->__r_.__value_.__l.__data_ = v302;
          }

          *v271 = &unk_287526298;
        }
      }

      if (a3 != 1)
      {
LABEL_343:
        if ((*(v115 + 111) & 0x8000000000000000) != 0)
        {
          if (!*(v115 + 96))
          {
            goto LABEL_356;
          }
        }

        else if (!*(v115 + 111))
        {
          goto LABEL_356;
        }

        v142 = v18;
        loggableFileObject(v318);
        v143 = v377[23];
        v144 = *v377;
        loggableUnicode(v334, &__p);
        v146 = v377;
        if (v143 < 0)
        {
          v146 = v144;
        }

        if (v337 >= 0)
        {
          v147 = &__p;
        }

        else
        {
          v147 = __p;
        }

        tknPrintf("Warning: %sParameter '%s' is deprecated\n", v145, v146, v147);
        v18 = v142;
        if (SHIBYTE(v337) < 0)
        {
          operator delete(__p);
        }

        if ((v377[23] & 0x80000000) != 0)
        {
          operator delete(*v377);
        }

LABEL_356:
        if (v315)
        {
          MEMORY[0x26672AF30](v115 + 40);
        }

        *(v115 + 112) |= v321;
        if (v18)
        {
          *(v115 + 144) = v18;
        }

        if (*(a1 + 80) - *(a1 + 72) >= 0x21uLL)
        {
          v148 = 0;
          v149 = 1;
          do
          {
            if (*(v333[0] + v149) && (*(*v115 + 40))(v115, v149))
            {
              v150 = v377;
              loggableFileObject(v318);
              if (v377[23] < 0)
              {
                v150 = *v377;
              }

              v151 = *(a1 + 72) + v148;
              v152 = (v151 + 40);
              if (*(v151 + 63) < 0)
              {
                v152 = *v152;
              }

              loggableUnicode(v152, &__p);
              if (v337 >= 0)
              {
                v154 = &__p;
              }

              else
              {
                v154 = __p;
              }

              tknPrintf("Error: %sIncorrect default setting for '%s' configuration\n", v153, v150, v154);
              if (SHIBYTE(v337) < 0)
              {
                operator delete(__p);
              }

              if ((v377[23] & 0x80000000) != 0)
              {
                operator delete(*v377);
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
              *v377 = byte_287529580;
              if (SHIBYTE(v337) < 0)
              {
                std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
              }

              else
              {
                *&v377[8] = __p;
                v378 = v337;
              }

              *v377 = &unk_287526298;
              if (v378 >= 0)
              {
                v186 = &v377[8];
              }

              else
              {
                v186 = *&v377[8];
              }

              conditionalAssert(v186, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1148);
              *v377 = byte_287529580;
              if (SHIBYTE(v378) < 0)
              {
                operator delete(*&v377[8]);
              }

              if (SHIBYTE(v337) < 0)
              {
                operator delete(__p);
              }

              v187 = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
              *v187 = byte_287529580;
              v188 = (v187 + 1);
              if ((v377[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v188, *v377, *&v377[8]);
              }

              else
              {
                v221 = *v377;
                v187[3] = *&v377[16];
                *&v188->__r_.__value_.__l.__data_ = v221;
              }

              *v187 = &unk_287526298;
            }

            if (*(v332[0] + v149) && (*(*v115 + 32))(v115, v149))
            {
              v155 = v377;
              loggableFileObject(v318);
              if (v377[23] < 0)
              {
                v155 = *v377;
              }

              v156 = *(a1 + 72) + v148;
              v157 = (v156 + 40);
              if (*(v156 + 63) < 0)
              {
                v157 = *v157;
              }

              loggableUnicode(v157, &__p);
              if (v337 >= 0)
              {
                v159 = &__p;
              }

              else
              {
                v159 = __p;
              }

              tknPrintf("Error: %sIncorrect value setting for '%s' configuration\n", v158, v155, v159);
              if (SHIBYTE(v337) < 0)
              {
                operator delete(__p);
              }

              if ((v377[23] & 0x80000000) != 0)
              {
                operator delete(*v377);
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
              *v377 = byte_287529580;
              if (SHIBYTE(v337) < 0)
              {
                std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
              }

              else
              {
                *&v377[8] = __p;
                v378 = v337;
              }

              *v377 = &unk_287526298;
              if (v378 >= 0)
              {
                v189 = &v377[8];
              }

              else
              {
                v189 = *&v377[8];
              }

              conditionalAssert(v189, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1154);
              *v377 = byte_287529580;
              if (SHIBYTE(v378) < 0)
              {
                operator delete(*&v377[8]);
              }

              if (SHIBYTE(v337) < 0)
              {
                operator delete(__p);
              }

              v190 = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
              *v190 = byte_287529580;
              v191 = (v190 + 1);
              if ((v377[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v191, *v377, *&v377[8]);
              }

              else
              {
                v222 = *v377;
                v190[3] = *&v377[16];
                *&v191->__r_.__value_.__l.__data_ = v222;
              }

              *v190 = &unk_287526298;
            }

            ++v149;
            v148 += 32;
          }

          while (v149 < (*(a1 + 80) - *(a1 + 72)) >> 5);
        }

        if (v322 && (*(*v115 + 40))(v115, 1))
        {
          loggableFileObject(v318);
          if (v377[23] >= 0)
          {
            v161 = v377;
          }

          else
          {
            v161 = *v377;
          }

          tknPrintf("Error: %sIncorrect setting of Original attribute\n", v160, v161);
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v225 = &v377[8];
          }

          else
          {
            v225 = *&v377[8];
          }

          conditionalAssert(v225, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1162);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v226 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v226 = byte_287529580;
          v227 = (v226 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v227, *v377, *&v377[8]);
          }

          else
          {
            v267 = *v377;
            v226[3] = *&v377[16];
            *&v227->__r_.__value_.__l.__data_ = v267;
          }

          *v226 = &unk_287526298;
        }

        if (v98 && (*(*v115 + 40))(v115, Config, v98))
        {
          loggableFileObject(v318);
          if (v377[23] >= 0)
          {
            v163 = v377;
          }

          else
          {
            v163 = *v377;
          }

          tknPrintf("Error: %sIncorrect setting of Format attribute\n", v162, v163);
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v228 = &v377[8];
          }

          else
          {
            v228 = *&v377[8];
          }

          conditionalAssert(v228, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1168);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v229 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v229 = byte_287529580;
          v230 = (v229 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v230, *v377, *&v377[8]);
          }

          else
          {
            v268 = *v377;
            v229[3] = *&v377[16];
            *&v230->__r_.__value_.__l.__data_ = v268;
          }

          *v229 = &unk_287526298;
        }

        if (v317 && (*(*v115 + 40))(v115, v314))
        {
          loggableFileObject(v318);
          if (v377[23] >= 0)
          {
            v165 = v377;
          }

          else
          {
            v165 = *v377;
          }

          tknPrintf("Error: %sIncorrect setting of SpellOut attribute\n", v164, v165);
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v231 = &v377[8];
          }

          else
          {
            v231 = *&v377[8];
          }

          conditionalAssert(v231, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1174);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v232 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v232 = byte_287529580;
          v233 = (v232 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v233, *v377, *&v377[8]);
          }

          else
          {
            v269 = *v377;
            v232[3] = *&v377[16];
            *&v233->__r_.__value_.__l.__data_ = v269;
          }

          *v232 = &unk_287526298;
        }

        if (!v319)
        {
          TParamManager::add(a1, v115);
          goto LABEL_380;
        }

        if ((*(v115 + 111) & 0x8000000000000000) != 0)
        {
          if (!*(v115 + 96))
          {
            goto LABEL_380;
          }
        }

        else if (!*(v115 + 111))
        {
          goto LABEL_380;
        }

        (*(*a1 + 24))(a1, v115);
        goto LABEL_380;
      }

      if (v322)
      {
        {
          operator new();
        }

        v130 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v322, &v335);
        v131 = v123[163];
        if (0xAAAAAAAAAAAAAAABLL * ((v123[164] - v131) >> 3) < v130)
        {
          loggableFileObject(v318);
          v206 = v377[23];
          v207 = *v377;
          loggableUnicode(v322, &__p);
          v209 = v377;
          if (v206 < 0)
          {
            v209 = v207;
          }

          if (v337 >= 0)
          {
            v210 = &__p;
          }

          else
          {
            v210 = __p;
          }

          tknPrintf("Error: %sParameter Original value is out of range, was '%s', expected an int in the range [0,%llu].\n", v208, v209, v210, 0xAAAAAAAAAAAAAAABLL * ((v123[164] - v123[163]) >> 3));
          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v290 = &v377[8];
          }

          else
          {
            v290 = *&v377[8];
          }

          conditionalAssert(v290, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1104);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v291 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v291 = byte_287529580;
          v292 = (v291 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v292, *v377, *&v377[8]);
          }

          else
          {
            v306 = *v377;
            v291[3] = *&v377[16];
            *&v292->__r_.__value_.__l.__data_ = v306;
          }

          *v291 = &unk_287526298;
        }

        v132 = (v131 + 24 * v130);
        if (*(v132 + 23) < 0)
        {
          v132 = *v132;
        }

        v322 = v132;
        if (!v320)
        {
          goto LABEL_328;
        }
      }

      else
      {
        v322 = 0;
        if (!v320)
        {
LABEL_328:
          if (v317)
          {
            {
              operator new();
            }

            v135 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v317, &v335);
            v136 = v123[163];
            if (0xAAAAAAAAAAAAAAABLL * ((v123[164] - v136) >> 3) < v135)
            {
              loggableFileObject(v318);
              v216 = v377[23];
              v217 = *v377;
              loggableUnicode(v317, &__p);
              v219 = v377;
              if (v216 < 0)
              {
                v219 = v217;
              }

              if (v337 >= 0)
              {
                v220 = &__p;
              }

              else
              {
                v220 = __p;
              }

              tknPrintf("Error: %sParameter SpellOut value is out of range, was '%s', expected an int in the range [0,%llu].\n", v218, v219, v220, 0xAAAAAAAAAAAAAAABLL * ((v123[164] - v123[163]) >> 3));
              if (SHIBYTE(v337) < 0)
              {
                operator delete(__p);
              }

              if ((v377[23] & 0x80000000) != 0)
              {
                operator delete(*v377);
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
              *v377 = byte_287529580;
              if (SHIBYTE(v337) < 0)
              {
                std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
              }

              else
              {
                *&v377[8] = __p;
                v378 = v337;
              }

              *v377 = &unk_287526298;
              if (v378 >= 0)
              {
                v296 = &v377[8];
              }

              else
              {
                v296 = *&v377[8];
              }

              conditionalAssert(v296, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1126);
              *v377 = byte_287529580;
              if (SHIBYTE(v378) < 0)
              {
                operator delete(*&v377[8]);
              }

              if (SHIBYTE(v337) < 0)
              {
                operator delete(__p);
              }

              v297 = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
              *v297 = byte_287529580;
              v298 = (v297 + 1);
              if ((v377[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v298, *v377, *&v377[8]);
              }

              else
              {
                v308 = *v377;
                v297[3] = *&v377[16];
                *&v298->__r_.__value_.__l.__data_ = v308;
              }

              *v297 = &unk_287526298;
            }

            v137 = (v136 + 24 * v135);
            if (*(v137 + 23) < 0)
            {
              v137 = *v137;
            }

            v317 = v137;
          }

          else
          {
            v317 = 0;
          }

          goto LABEL_343;
        }
      }

      {
        operator new();
      }

      v133 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v320, &v335);
      v134 = v123[163];
      if (0xAAAAAAAAAAAAAAABLL * ((v123[164] - v134) >> 3) < v133)
      {
        loggableFileObject(v318);
        v211 = v377[23];
        v212 = *v377;
        loggableUnicode(v320, &__p);
        v214 = v377;
        if (v211 < 0)
        {
          v214 = v212;
        }

        if (v337 >= 0)
        {
          v215 = &__p;
        }

        else
        {
          v215 = __p;
        }

        tknPrintf("Error: %sParameter Format value is out of range, was '%s', expected an int in the range [0,%llu].\n", v213, v214, v215, 0xAAAAAAAAAAAAAAABLL * ((v123[164] - v123[163]) >> 3));
        if (SHIBYTE(v337) < 0)
        {
          operator delete(__p);
        }

        if ((v377[23] & 0x80000000) != 0)
        {
          operator delete(*v377);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
        *v377 = byte_287529580;
        if (SHIBYTE(v337) < 0)
        {
          std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
        }

        else
        {
          *&v377[8] = __p;
          v378 = v337;
        }

        *v377 = &unk_287526298;
        if (v378 >= 0)
        {
          v293 = &v377[8];
        }

        else
        {
          v293 = *&v377[8];
        }

        conditionalAssert(v293, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1115);
        *v377 = byte_287529580;
        if (SHIBYTE(v378) < 0)
        {
          operator delete(*&v377[8]);
        }

        if (SHIBYTE(v337) < 0)
        {
          operator delete(__p);
        }

        v294 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
        *v294 = byte_287529580;
        v295 = (v294 + 1);
        if ((v377[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v295, *v377, *&v377[8]);
        }

        else
        {
          v307 = *v377;
          v294[3] = *&v377[16];
          *&v295->__r_.__value_.__l.__data_ = v307;
        }

        *v294 = &unk_287526298;
      }

      v98 = (v134 + 24 * v133);
      if (*(v98 + 23) < 0)
      {
        v98 = *v98;
      }

      goto LABEL_328;
    }

    if ((v312 & 1) == 0)
    {
      loggableFileObject(v318);
      v110 = v377[23];
      v111 = *v377;
      loggableUnicode(v334, &__p);
      v113 = v377;
      if (v110 < 0)
      {
        v113 = v111;
      }

      if (v337 >= 0)
      {
        v114 = &__p;
      }

      else
      {
        v114 = __p;
      }

      tknPrintf("Error: %sParameter '%s' does not exist\n", v112, v113, v114);
      if (SHIBYTE(v337) < 0)
      {
        operator delete(__p);
      }

      if ((v377[23] & 0x80000000) != 0)
      {
        operator delete(*v377);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
      *v377 = byte_287529580;
      if (SHIBYTE(v337) < 0)
      {
        std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
      }

      else
      {
        *&v377[8] = __p;
        v378 = v337;
      }

      *v377 = &unk_287526298;
      if (v378 >= 0)
      {
        v261 = &v377[8];
      }

      else
      {
        v261 = *&v377[8];
      }

      conditionalAssert(v261, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 955);
      *v377 = byte_287529580;
      if (SHIBYTE(v378) < 0)
      {
        operator delete(*&v377[8]);
      }

      if (SHIBYTE(v337) < 0)
      {
        operator delete(__p);
      }

      v262 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
      *v262 = byte_287529580;
      v263 = (v262 + 1);
      if ((v377[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v263, *v377, *&v377[8]);
      }

      else
      {
        v300 = *v377;
        v262[3] = *&v377[16];
        *&v263->__r_.__value_.__l.__data_ = v300;
      }

      *v262 = &unk_287526298;
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      if (a1 + 56 != v97)
      {
        loggableFileObject(v318);
        v172 = v377[23];
        v173 = *v377;
        loggableUnicode(v334, &__p);
        v175 = v377;
        if (v172 < 0)
        {
          v175 = v173;
        }

        if (v337 >= 0)
        {
          v176 = &__p;
        }

        else
        {
          v176 = __p;
        }

        tknPrintf("Error: %sParameter '%s' already exists\n", v174, v175, v176);
        if (SHIBYTE(v337) < 0)
        {
          operator delete(__p);
        }

        if ((v377[23] & 0x80000000) != 0)
        {
          operator delete(*v377);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
        *v377 = byte_287529580;
        if (SHIBYTE(v337) < 0)
        {
          std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
        }

        else
        {
          *&v377[8] = __p;
          v378 = v337;
        }

        *v377 = &unk_287526298;
        if (v378 >= 0)
        {
          v243 = &v377[8];
        }

        else
        {
          v243 = *&v377[8];
        }

        conditionalAssert(v243, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 995);
        *v377 = byte_287529580;
        if (SHIBYTE(v378) < 0)
        {
          operator delete(*&v377[8]);
        }

        if (SHIBYTE(v337) < 0)
        {
          operator delete(__p);
        }

        v244 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
        *v244 = byte_287529580;
        v245 = (v244 + 1);
        if ((v377[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v245, *v377, *&v377[8]);
        }

        else
        {
          v285 = *v377;
          v244[3] = *&v377[16];
          *&v245->__r_.__value_.__l.__data_ = v285;
        }

        *v244 = &unk_287526298;
      }

      if (*(a1 + 120) > 4uLL)
      {
        if (!*(v333[0] + 1))
        {
          loggableFileObject(v318);
          if (v377[23] >= 0)
          {
            v193 = v377;
          }

          else
          {
            v193 = *v377;
          }

          tknPrintf("Error: %s'Root' default setting is mandatory\n", v192, v193);
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v249 = &v377[8];
          }

          else
          {
            v249 = *&v377[8];
          }

          conditionalAssert(v249, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1009);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v250 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v250 = byte_287529580;
          v251 = (v250 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v251, *v377, *&v377[8]);
          }

          else
          {
            v287 = *v377;
            v250[3] = *&v377[16];
            *&v251->__r_.__value_.__l.__data_ = v287;
          }

          *v250 = &unk_287526298;
        }
      }

      else if (!v322)
      {
        loggableFileObject(v318);
        if (v377[23] >= 0)
        {
          v107 = v377;
        }

        else
        {
          v107 = *v377;
        }

        tknPrintf("Error: %s'Original' attribute is mandatory\n", v106, v107);
        if ((v377[23] & 0x80000000) != 0)
        {
          operator delete(*v377);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
        *v377 = byte_287529580;
        if (SHIBYTE(v337) < 0)
        {
          std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
        }

        else
        {
          *&v377[8] = __p;
          v378 = v337;
        }

        *v377 = &unk_287526298;
        if (v378 >= 0)
        {
          v246 = &v377[8];
        }

        else
        {
          v246 = *&v377[8];
        }

        conditionalAssert(v246, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1003);
        *v377 = byte_287529580;
        if (SHIBYTE(v378) < 0)
        {
          operator delete(*&v377[8]);
        }

        if (SHIBYTE(v337) < 0)
        {
          operator delete(__p);
        }

        v247 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
        *v247 = byte_287529580;
        v248 = (v247 + 1);
        if ((v377[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v248, *v377, *&v377[8]);
        }

        else
        {
          v286 = *v377;
          v247[3] = *&v377[16];
          *&v248->__r_.__value_.__l.__data_ = v286;
        }

        *v247 = &unk_287526298;
      }

      v115 = 0;
      if (a3 <= 1)
      {
        if (!a3)
        {
          operator new();
        }

        if (a3 == 1)
        {
          if (v310)
          {
            operator new();
          }

          loggableFileObject(v318);
          if (v377[23] >= 0)
          {
            v203 = v377;
          }

          else
          {
            v203 = *v377;
          }

          tknPrintf("Error: %s'Allowables' attribute is mandatory\n", v202, v203);
          if ((v377[23] & 0x80000000) != 0)
          {
            operator delete(*v377);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v377 = byte_287529580;
          if (SHIBYTE(v337) < 0)
          {
            std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
          }

          else
          {
            *&v377[8] = __p;
            v378 = v337;
          }

          *v377 = &unk_287526298;
          if (v378 >= 0)
          {
            v274 = &v377[8];
          }

          else
          {
            v274 = *&v377[8];
          }

          conditionalAssert(v274, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1039);
          *v377 = byte_287529580;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*&v377[8]);
          }

          if (SHIBYTE(v337) < 0)
          {
            operator delete(__p);
          }

          v275 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
          *v275 = byte_287529580;
          v276 = (v275 + 1);
          if ((v377[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v276, *v377, *&v377[8]);
          }

          else
          {
            v303 = *v377;
            v275[3] = *&v377[16];
            *&v276->__r_.__value_.__l.__data_ = v303;
          }

          *v275 = &unk_287526298;
        }
      }

      else
      {
        switch(a3)
        {
          case 2:
            if (v313 && v311)
            {
              operator new();
            }

            loggableFileObject(v318);
            if (v377[23] >= 0)
            {
              v205 = v377;
            }

            else
            {
              v205 = *v377;
            }

            tknPrintf("Error: %s'Min' and 'Max' attributes are mandatory\n", v204, v205);
            if ((v377[23] & 0x80000000) != 0)
            {
              operator delete(*v377);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
            *v377 = byte_287529580;
            if (SHIBYTE(v337) < 0)
            {
              std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
            }

            else
            {
              *&v377[8] = __p;
              v378 = v337;
            }

            *v377 = &unk_287526298;
            if (v378 >= 0)
            {
              v277 = &v377[8];
            }

            else
            {
              v277 = *&v377[8];
            }

            conditionalAssert(v277, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1025);
            *v377 = byte_287529580;
            if (SHIBYTE(v378) < 0)
            {
              operator delete(*&v377[8]);
            }

            if (SHIBYTE(v337) < 0)
            {
              operator delete(__p);
            }

            v278 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
            *v278 = byte_287529580;
            v279 = (v278 + 1);
            if ((v377[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v279, *v377, *&v377[8]);
            }

            else
            {
              v304 = *v377;
              v278[3] = *&v377[16];
              *&v279->__r_.__value_.__l.__data_ = v304;
            }

            *v278 = &unk_287526298;
          case 3:
            operator new();
          case 4:
            operator new();
        }
      }

      v321 |= 8uLL;
      goto LABEL_280;
    }

    if ((v312 & 1) == 0)
    {
      loggableFileObject(v318);
      if (v377[23] >= 0)
      {
        v109 = v377;
      }

      else
      {
        v109 = *v377;
      }

      tknPrintf("Error: %sThis param manager does not support param creation\n", v108, v109);
      if ((v377[23] & 0x80000000) != 0)
      {
        operator delete(*v377);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
      *v377 = byte_287529580;
      if (SHIBYTE(v337) < 0)
      {
        std::string::__init_copy_ctor_external(&v377[8], __p, *(&__p + 1));
      }

      else
      {
        *&v377[8] = __p;
        v378 = v337;
      }

      *v377 = &unk_287526298;
      if (v378 >= 0)
      {
        v234 = &v377[8];
      }

      else
      {
        v234 = *&v377[8];
      }

      conditionalAssert(v234, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 988);
      *v377 = byte_287529580;
      if (SHIBYTE(v378) < 0)
      {
        operator delete(*&v377[8]);
      }

      if (SHIBYTE(v337) < 0)
      {
        operator delete(__p);
      }

      v235 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v377, &byte_262899963);
      *v235 = byte_287529580;
      v236 = (v235 + 1);
      if ((v377[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v236, *v377, *&v377[8]);
      }

      else
      {
        v273 = *v377;
        v235[3] = *&v377[16];
        *&v236->__r_.__value_.__l.__data_ = v273;
      }

      *v235 = &unk_287526298;
    }
  }

LABEL_380:
  *v377 = &v323;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v377);
  *v377 = &v326;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v377);
  *v377 = &v329;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v377);
  if (v332[0])
  {
    v332[1] = v332[0];
    operator delete(v332[0]);
  }

  if (v333[0])
  {
    v333[1] = v333[0];
    operator delete(v333[0]);
  }
}

void sub_262579C08(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52)
{
  MEMORY[0x26672B1B0](v53, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if ((a25 & 1) == 0)
    {
      if (v52)
      {
        (*(*v52 + 8))(v52);
      }
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x26257A270);
}

void sub_26257A25C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x26257A260);
  }

  __clang_call_terminate(a1);
}

void sub_26257A26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char **a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char ***a48)
{
  a48 = &a28;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a48);
  a28 = &a31;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a28);
  a31 = &a34;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

void TSemanticException::~TSemanticException(void **this)
{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

uint64_t TParamManager::getConfig(uint64_t a1, __int32 *a2)
{
  std::wstring::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::find<std::wstring>(a1 + 96, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 104 == v3)
  {
    return -1;
  }

  else
  {
    return *(v3 + 56);
  }
}

void sub_26257A380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TParamManager::nameToParam(uint64_t a1, const __int32 *a2)
{
  v8 = a2;
  v3 = std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(a1 + 48, &v8);
  if (a1 + 56 == v3)
  {
    return 0;
  }

  v4 = *(v3 + 40);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 1;
  v6 = *(a1 + 24);
  if (v5 >= (*(a1 + 32) - v6) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v6 + 8 * v5);
  }
}

void TParamManager::init(TParamManager *this, const TFileObject **a2, char a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v19 = "O";
  v20 = xmmword_26286B6D0;
  v21 = -1;
  v22 = "O";
  v23 = xmmword_26286B6D0;
  v24 = -1;
  v25 = "O";
  v26 = xmmword_26286B6D0;
  v27 = -1;
  v28 = "O";
  v29 = xmmword_26286B6D0;
  v30 = 3;
  v31 = "O";
  v32 = xmmword_26286B6D0;
  v33 = -1;
  v34 = "C";
  v35 = xmmword_26286B6D0;
  v36 = -1;
  v37 = "C";
  v38 = xmmword_26286B6D0;
  v39 = -1;
  v40 = "C";
  v41 = xmmword_26286B6D0;
  v42 = -1;
  v43 = "C";
  v44 = 3;
  v45 = xmmword_26286B6E0;
  v46 = "C";
  v47 = 3;
  v48 = xmmword_26286B690;
  if (TFileObject::verify(a2, &v19, 10, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v15, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v16) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v15[0], v15[1]);
    }

    else
    {
      *&__p[8] = *v15;
      v18 = v16;
    }

    *__p = &unk_287526298;
    if (v18 >= 0)
    {
      v11 = &__p[8];
    }

    else
    {
      v11 = *&__p[8];
    }

    conditionalAssert(v11, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1218);
    *__p = byte_287529580;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v13 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v13, *__p, *&__p[8]);
    }

    else
    {
      v14 = *__p;
      exception[3] = *&__p[16];
      *&v13->__r_.__value_.__l.__data_ = v14;
    }

    *exception = &unk_287526298;
  }

  v15[1] = 0;
  v16 = 0;
  v15[0] = &v15[1];
  v6 = a2[3];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_31;
  }

  do
  {
    v7 = *(v6 + 1);
    if (!wcscmp(v7, "O"))
    {
      v9 = 0;
LABEL_15:
      v8 = 1;
      goto LABEL_23;
    }

    if (!wcscmp(v7, "C"))
    {
      v9 = 0;
      v8 = 0;
      goto LABEL_23;
    }

    if (!wcscmp(v7, "O"))
    {
      v8 = 1;
LABEL_19:
      v9 = 4;
      goto LABEL_23;
    }

    if (!wcscmp(v7, "C"))
    {
      v8 = 0;
      goto LABEL_19;
    }

    if (!wcscmp(v7, "O"))
    {
      v8 = 1;
LABEL_22:
      v9 = 2;
      goto LABEL_23;
    }

    if (!wcscmp(v7, "C"))
    {
      v8 = 0;
      goto LABEL_22;
    }

    if (!wcscmp(v7, "O"))
    {
      v9 = 1;
      goto LABEL_15;
    }

    if (!wcscmp(v7, "C"))
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      if (!wcscmp(v7, "O"))
      {
        v8 = 1;
      }

      else
      {
        if (wcscmp(v7, "C"))
        {
          goto LABEL_24;
        }

        v8 = 0;
      }

      v9 = 3;
    }

LABEL_23:
    TParamManager::initParam(this, v6, v9, v8, a3, v15);
LABEL_24:
    v6 = *(v6 + 2);
  }

  while (v6);
  v10 = v15[1];
LABEL_31:
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v15, v10);
}

void TParamManager::initialize(TParamManager *this, TInputStream *a2, char a3)
{
  if (*(a2 + 8) == 1)
  {
    if (TInputStream::verifyHeader(a2, "Parameter", pParameterVersion, 7))
    {
      std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
      *v37 = byte_287529580;
      if ((__s[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v37[8], *__s, *&__s[8]);
      }

      else
      {
        *&v37[8] = *__s;
        v38[0] = *&__s[16];
      }

      *v37 = &unk_287528000;
      if (v38[0] >= 0)
      {
        v24 = &v37[8];
      }

      else
      {
        v24 = *&v37[8];
      }

      conditionalAssert(v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1282);
      *v37 = byte_287529580;
      if (SHIBYTE(v38[0]) < 0)
      {
        operator delete(*&v37[8]);
      }

      if ((__s[23] & 0x80000000) != 0)
      {
        operator delete(*__s);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v37, &byte_262899963);
      *exception = byte_287529580;
      v26 = (exception + 1);
      if ((v37[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v26, *v37, *&v37[8]);
      }

      else
      {
        v27 = *v37;
        exception[3] = *&v37[16];
        *&v26->__r_.__value_.__l.__data_ = v27;
      }

      *exception = &unk_287528000;
    }

    *(this + 15) = *(a2 + 12);
    TFileObjectParser::TFileObjectParser(v40, a2);
    v5 = v40[0];
    if (*(this + 15) >= 5uLL)
    {
      v28 = v40[0];
      *v37 = v38;
      *&v37[8] = xmmword_26286B6F0;
      v39 = 1;
      TInputStream::getStringParameter(a2, "ConfigurationNames", v37, &dword_26286B714);
      if (*&v37[16])
      {
        *__s = v35;
        *&__s[8] = xmmword_26286B6F0;
        v36 = 1;
        if (*&v37[16] >= *&v37[8])
        {
          if (v39)
          {
            *__p = 0;
            TBuffer<wchar_t>::insert(v37, *&v37[16], __p, 1uLL);
            NextToken = *v37;
            --*&v37[16];
          }

          else
          {
            NextToken = *v37;
            if (*&v37[8])
            {
              *(*v37 + 4 * *&v37[8] - 4) = 0;
            }
          }
        }

        else
        {
          NextToken = *v37;
          *(*v37 + 4 * *&v37[16]) = 0;
        }

        if (*NextToken)
        {
          v7 = 0;
          while (1)
          {
            NextToken = getNextToken(NextToken, __s, ",");
            v8 = *&__s[16];
            if (*&__s[16] >= *&__s[8])
            {
              if (v36)
              {
                *__p = 0;
                TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
                v9 = *__s;
                v8 = --*&__s[16];
              }

              else
              {
                v9 = *__s;
                if (*&__s[8])
                {
                  *(*__s + 4 * *&__s[8] - 4) = 0;
                }
              }
            }

            else
            {
              v9 = *__s;
              *(*__s + 4 * *&__s[16]) = 0;
            }

            v10 = wcschr(v9, 58);
            if (v10)
            {
              v11 = v10;
              Config = TParamManager::getConfig(this, v10 + 1);
              if (Config == -1)
              {
                if (*&__s[16] >= *&__s[8])
                {
                  if (v36)
                  {
                    LODWORD(v30[0]) = 0;
                    TBuffer<wchar_t>::insert(__s, *&__s[16], v30, 1uLL);
                    v13 = *__s;
                    --*&__s[16];
                  }

                  else
                  {
                    v13 = *__s;
                    if (*&__s[8])
                    {
                      *(*__s + 4 * *&__s[8] - 4) = 0;
                    }
                  }
                }

                else
                {
                  v13 = *__s;
                  *(*__s + 4 * *&__s[16]) = 0;
                }

                loggableUnicode(v13, __p);
                if (__p[23] >= 0)
                {
                  v15 = __p;
                }

                else
                {
                  v15 = *__p;
                }

                tknPrintf("Error: Parent configuration not defined: '%s'\n", v14, v15);
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }

                v7 = 1;
              }

              v8 = *&__s[16];
              if (*&__s[16] >= *&__s[8])
              {
                if (v36)
                {
                  *__p = 0;
                  TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
                  v9 = *__s;
                  v8 = --*&__s[16];
                }

                else
                {
                  v9 = *__s;
                  if (*&__s[8])
                  {
                    *(*__s + 4 * *&__s[8] - 4) = 0;
                  }
                }
              }

              else
              {
                v9 = *__s;
                *(*__s + 4 * *&__s[16]) = 0;
              }

              *v11 = 0;
            }

            else
            {
              Config = 1;
            }

            if (v8 >= *&__s[8])
            {
              if (v36)
              {
                *__p = 0;
                TBuffer<wchar_t>::insert(__s, v8, __p, 1uLL);
                v9 = *__s;
                --*&__s[16];
              }

              else if (*&__s[8])
              {
                v9[*&__s[8] - 1] = 0;
              }
            }

            else
            {
              v9[v8] = 0;
            }

            if (TParamManager::getConfig(this, v9) == -1)
            {
              if (v7)
              {
                goto LABEL_62;
              }

              if (*&__s[16] >= *&__s[8])
              {
                if (v36)
                {
                  *__p = 0;
                  TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
                  v17 = *__s;
                  --*&__s[16];
                }

                else
                {
                  v17 = *__s;
                  if (*&__s[8])
                  {
                    *(*__s + 4 * *&__s[8] - 4) = 0;
                  }
                }
              }

              else
              {
                v17 = *__s;
                *(*__s + 4 * *&__s[16]) = 0;
              }

              TParamManager::newConfig(this, v17, Config);
              v7 = 0;
              if (!*NextToken)
              {
                break;
              }
            }

            else
            {
              if (*&__s[16] >= *&__s[8])
              {
                if (v36)
                {
                  LODWORD(v30[0]) = 0;
                  TBuffer<wchar_t>::insert(__s, *&__s[16], v30, 1uLL);
                  v16 = *__s;
                  --*&__s[16];
                }

                else
                {
                  v16 = *__s;
                  if (*&__s[8])
                  {
                    *(*__s + 4 * *&__s[8] - 4) = 0;
                  }
                }
              }

              else
              {
                v16 = *__s;
                *(*__s + 4 * *&__s[16]) = 0;
              }

              loggableUnicode(v16, __p);
              if (__p[23] >= 0)
              {
                v19 = __p;
              }

              else
              {
                v19 = *__p;
              }

              tknPrintf("Error: Duplicate configuration name: '%s'\n", v18, v19);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

LABEL_62:
              v7 = 1;
              if (!*NextToken)
              {
                std::string::basic_string[abi:ne200100]<0>(v30, &byte_262899963);
                *__p = byte_287529580;
                if (SHIBYTE(v31) < 0)
                {
                  std::string::__init_copy_ctor_external(&__p[8], v30[0], v30[1]);
                }

                else
                {
                  *&__p[8] = *v30;
                  v33 = v31;
                }

                *__p = &unk_287526298;
                if (v33 >= 0)
                {
                  v20 = &__p[8];
                }

                else
                {
                  v20 = *&__p[8];
                }

                conditionalAssert(v20, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1327);
                *__p = byte_287529580;
                if (SHIBYTE(v33) < 0)
                {
                  operator delete(*&__p[8]);
                }

                if (SHIBYTE(v31) < 0)
                {
                  operator delete(v30[0]);
                }

                v21 = __cxa_allocate_exception(0x20uLL);
                std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
                *v21 = byte_287529580;
                v22 = (v21 + 1);
                if ((__p[23] & 0x80000000) != 0)
                {
                  std::string::__init_copy_ctor_external(v22, *__p, *&__p[8]);
                }

                else
                {
                  v23 = *__p;
                  v21[3] = *&__p[16];
                  *&v22->__r_.__value_.__l.__data_ = v23;
                }

                *v21 = &unk_287526298;
              }
            }
          }
        }

        if (v36 == 1 && *__s != v35 && *__s)
        {
          MEMORY[0x26672B1B0]();
        }
      }

      if (v39 == 1 && *v37 != v38 && *v37)
      {
        MEMORY[0x26672B1B0]();
      }

      v5 = v28;
    }

    TParamManager::init(this, v5, a3);
    TFileObjectParser::~TFileObjectParser(v40);
  }
}

void sub_26257B2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (LOBYTE(STACK[0x490]) == 1 && a24 != a11 && a24 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x8B0]) == 1)
  {
    v27 = STACK[0x498];
    if (STACK[0x498] != a12)
    {
      if (v27)
      {
        MEMORY[0x26672B1B0](v27, 0x1000C4052888210);
      }
    }
  }

  TFileObjectParser::~TFileObjectParser((v24 - 168));
  _Unwind_Resume(a1);
}

void TParamManager::save(void *a1, void *a2, char a3)
{
  v5 = 0;
  v103[0] = 0;
  v103[1] = 0;
  v102 = v103;
  v98 = v100;
  v99 = xmmword_26286B6F0;
  v101 = 1;
  v6 = a1[9];
  if ((a1[10] - v6) < 0x41)
  {
    goto LABEL_17;
  }

  v7 = 2;
  do
  {
    if (*(&v99 + 1))
    {
      LODWORD(__p) = 44;
      TBuffer<wchar_t>::insert(&v98, *(&v99 + 1), &__p, 1uLL);
      v6 = a1[9];
    }

    v8 = v6 + 32 * v7;
    v9 = (v8 + 8);
    if (*(v8 + 31) < 0)
    {
      v9 = *v9;
    }

    v10 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v98, *(&v99 + 1), v9, v10 - 1);
    v6 = a1[9];
    v12 = *(v6 + 32 * v7);
    if (v12 != 1)
    {
      LODWORD(__p) = 58;
      TBuffer<wchar_t>::insert(&v98, *(&v99 + 1), &__p, 1uLL);
      v13 = a1[9] + 32 * v12;
      v14 = (v13 + 8);
      if (*(v13 + 31) < 0)
      {
        v14 = *v14;
      }

      v15 = 0;
        ;
      }

      TBuffer<wchar_t>::insert(&v98, *(&v99 + 1), v14, v15 - 1);
      v6 = a1[9];
    }

    ++v7;
  }

  while (v7 < (a1[10] - v6) >> 5);
  v5 = *(&v99 + 1);
  if (*(&v99 + 1) >= v99)
  {
    if (v101)
    {
      LODWORD(__p) = 0;
      TBuffer<wchar_t>::insert(&v98, *(&v99 + 1), &__p, 1uLL);
      v17 = v98;
      --*(&v99 + 1);
    }

    else
    {
      v17 = v98;
      if (v99)
      {
        v98[v99 - 1] = 0;
      }
    }
  }

  else
  {
LABEL_17:
    v17 = v98;
    v98[v5] = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ConfigurationNames");
  p_p = &__p;
  v18 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v102, &__p, &std::piecewise_construct, &p_p);
  MEMORY[0x26672AF30](v18 + 56, v17);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(__p);
  }

  if (*(&v99 + 1))
  {
    v19 = &v102;
  }

  else
  {
    v19 = 0;
  }

  TOutputStream::writeHeader(a2, "Parameter", pParameterVersion, 7, v19);
  __p = v96;
  v95 = xmmword_26286B6F0;
  v97 = 1;
  p_p = v92;
  v91 = xmmword_26286B6F0;
  v93 = 1;
  v20 = a1[6];
  if (v20 == a1 + 7)
  {
LABEL_205:
    v88 = p_p == v92 || p_p == 0;
    if (!v88)
    {
      MEMORY[0x26672B1B0]();
    }

    goto LABEL_210;
  }

  do
  {
    v21 = v20[5];
    if (v21 && (v22 = v21 - 1, v23 = a1[3], v22 < (a1[4] - v23) >> 3))
    {
      v24 = *(v23 + 8 * v22);
    }

    else
    {
      v24 = 0;
    }

    if (!TParam::needSave(v24))
    {
      goto LABEL_198;
    }

    v25 = TParam::flagsSet(v24, 8);
    if (v25)
    {
      v26 = "Create";
    }

    else
    {
      v26 = "Override";
    }

    v27 = *(v24 + 8);
    if (v27 <= 2)
    {
      if (v27)
      {
        if (v27 == 2)
        {
          if (v25)
          {
            v28 = 6;
          }

          else
          {
            v28 = 8;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, v26, v28);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "IntParam = {\n", 13);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Min = '", 11);
          MEMORY[0x26672B060](*a2, v29[38]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "'\n", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Max = '", 11);
          MEMORY[0x26672B060](*a2, v29[39]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "'\n", 2);
        }

        goto LABEL_106;
      }

      if (v25)
      {
        v45 = 6;
      }

      else
      {
        v45 = 8;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, v26, v45);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "BoolParam = {\n", 14);
      v47 = v46;
      v48 = (v46 + 25);
      if (*(v46 + 223) < 0)
      {
        if (!v46[26] || !*v48)
        {
          goto LABEL_106;
        }
      }

      else if (!*(v46 + 223))
      {
        goto LABEL_106;
      }

      TBuffer<wchar_t>::resize(&__p, 0);
      TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "", 0x17uLL);
      if (*(v47 + 223) < 0)
      {
        if (v47[26])
        {
          v50 = *v48;
        }

        else
        {
          v50 = 0;
        }
      }

      else if (*(v47 + 223))
      {
        v50 = v48;
      }

      else
      {
        v50 = 0;
      }

      slashEscape(v50, &__p);
      TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "", 2uLL);
      TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "", 0x16uLL);
      if (*(v47 + 247) < 0)
      {
        if (v47[29])
        {
          v51 = v47[28];
        }

        else
        {
          v51 = 0;
        }
      }

      else if (*(v47 + 247))
      {
        v51 = (v47 + 28);
      }

      else
      {
        v51 = 0;
      }

      slashEscape(v51, &__p);
      TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "", 2uLL);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Allowables = {", 18);
      if (*(&v95 + 1) < v95)
      {
        v44 = __p;
        *(__p + *(&v95 + 1)) = 0;
        goto LABEL_105;
      }

      if ((v97 & 1) == 0)
      {
        v44 = __p;
        if (v95)
        {
          *(__p + v95 - 1) = 0;
        }

        goto LABEL_105;
      }

      goto LABEL_102;
    }

    if (v27 == 3)
    {
      if (v25)
      {
        v49 = 6;
      }

      else
      {
        v49 = 8;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, v26, v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "FloatParam = {\n", 15);
      goto LABEL_106;
    }

    if (v27 == 4)
    {
      v30 = v25 ? 6 : 8;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, v26, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "StringParam = {\n", 16);
      if (v31[164] != v31[163])
      {
        v32 = v31;
        TBuffer<wchar_t>::resize(&__p, 0);
        if (v32[164] != v32[163])
        {
          v33 = 0;
          v34 = 0;
          do
          {
            v104[0] = 34;
            TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), v104, 1uLL);
            v35 = (v32[163] + v33);
            if (*(v35 + 23) < 0)
            {
              v35 = *v35;
            }

            slashEscape(v35, &__p);
            TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "", 2uLL);
            v36 = v32[166];
            if (v36 != v32[167])
            {
              v37 = v36 + v33;
              if ((*(v37 + 23) & 0x80000000) == 0 || *v37)
              {
                TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "G", 0xBuLL);
                v38 = v32[166];
                if (v38 == v32[167])
                {
                  v39 = 0;
                }

                else
                {
                  v39 = (v38 + v33);
                  if (*(v38 + v33 + 23) < 0)
                  {
                    v39 = *v39;
                  }
                }

                slashEscape(v39, &__p);
                TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "", 2uLL);
              }
            }

            v40 = v32[169];
            if (v40 != v32[170])
            {
              v41 = v40 + v33;
              if ((*(v41 + 23) & 0x80000000) == 0 || *v41)
              {
                TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "D", 0xFuLL);
                v42 = v32[169];
                if (v42 == v32[170])
                {
                  v43 = 0;
                }

                else
                {
                  v43 = (v42 + v33);
                  if (*(v42 + v33 + 23) < 0)
                  {
                    v43 = *v43;
                  }
                }

                slashEscape(v43, &__p);
                TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "", 2uLL);
              }
            }

            ++v34;
            v33 += 24;
          }

          while (v34 < 0xAAAAAAAAAAAAAAABLL * ((v32[164] - v32[163]) >> 3));
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Allowables = {", 18);
        if (*(&v95 + 1) < v95)
        {
          v44 = __p;
          *(__p + *(&v95 + 1)) = 0;
LABEL_105:
          v52 = TOutputStream::operator<<(a2, v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v52, "}\n", 2);
          goto LABEL_106;
        }

        if ((v97 & 1) == 0)
        {
          v44 = __p;
          if (v95)
          {
            *(__p + v95 - 1) = 0;
          }

          goto LABEL_105;
        }

LABEL_102:
        v104[0] = 0;
        TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), v104, 1uLL);
        v44 = __p;
        --*(&v95 + 1);
        goto LABEL_105;
      }
    }

LABEL_106:
    TBuffer<wchar_t>::resize(&__p, 0);
    v53 = (v24 + 16);
    if (*(v24 + 39) < 0)
    {
      v53 = *v53;
    }

    slashEscape(v53, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Name = ", 12);
    if (*(&v95 + 1) >= v95)
    {
      if (v97)
      {
        v104[0] = 0;
        TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), v104, 1uLL);
        v54 = __p;
        --*(&v95 + 1);
      }

      else
      {
        v54 = __p;
        if (v95)
        {
          *(__p + v95 - 1) = 0;
        }
      }
    }

    else
    {
      v54 = __p;
      *(__p + *(&v95 + 1)) = 0;
    }

    v55 = TOutputStream::operator<<(a2, v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v55, "\n", 2);
    TBuffer<wchar_t>::resize(&__p, 0);
    v56 = (v24 + 40);
    if (*(v24 + 63) < 0)
    {
      v56 = *v56;
    }

    slashEscape(v56, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Description = ", 19);
    if (*(&v95 + 1) >= v95)
    {
      if (v97)
      {
        v104[0] = 0;
        TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), v104, 1uLL);
        v57 = __p;
        --*(&v95 + 1);
      }

      else
      {
        v57 = __p;
        if (v95)
        {
          *(__p + v95 - 1) = 0;
        }
      }
    }

    else
    {
      v57 = __p;
      *(__p + *(&v95 + 1)) = 0;
    }

    v58 = TOutputStream::operator<<(a2, v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v58, "\n", 2);
    if (*(v24 + 144))
    {
      TBuffer<wchar_t>::resize(&__p, 0);
      v59 = *(v24 + 144);
      v60 = (v59 + 16);
      if (*(v59 + 39) < 0)
      {
        v60 = *v60;
      }

      slashEscape(v60, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Require = ", 15);
      if (*(&v95 + 1) >= v95)
      {
        if (v97)
        {
          v104[0] = 0;
          TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), v104, 1uLL);
          v61 = __p;
          --*(&v95 + 1);
        }

        else
        {
          v61 = __p;
          if (v95)
          {
            *(__p + v95 - 1) = 0;
          }
        }
      }

      else
      {
        v61 = __p;
        *(__p + *(&v95 + 1)) = 0;
      }

      v62 = TOutputStream::operator<<(a2, v61);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v62, "\n", 2);
    }

    TBuffer<wchar_t>::resize(&__p, 0);
    if (TParam::flagsSet(v24, 1))
    {
      TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "'", 0xAuLL);
    }

    if (TParam::flagsSet(v24, 32))
    {
      TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "'", 9uLL);
    }

    if (TParam::flagsSet(v24, 2))
    {
      TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "'", 7uLL);
    }

    if (TParam::flagsSet(v24, 256))
    {
      TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), "'", 0xCuLL);
    }

    if (*(&v95 + 1))
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Flags = {", 13);
      if (*(&v95 + 1) >= v95)
      {
        if (v97)
        {
          v104[0] = 0;
          TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), v104, 1uLL);
          v63 = __p;
          --*(&v95 + 1);
        }

        else
        {
          v63 = __p;
          if (v95)
          {
            *(__p + v95 - 1) = 0;
          }
        }
      }

      else
      {
        v63 = __p;
        *(__p + *(&v95 + 1)) = 0;
      }

      v64 = TOutputStream::operator<<(a2, v63);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v64, "}\n", 2);
    }

    (*(*v24 + 24))(v24, 1, &p_p);
    TBuffer<wchar_t>::resize(&__p, 0);
    if (*(&v91 + 1) >= v91)
    {
      if (v93)
      {
        v104[0] = 0;
        TBuffer<wchar_t>::insert(&p_p, *(&v91 + 1), v104, 1uLL);
        v65 = p_p;
        --*(&v91 + 1);
      }

      else
      {
        v65 = p_p;
        if (v91)
        {
          *(p_p + v91 - 1) = 0;
        }
      }
    }

    else
    {
      v65 = p_p;
      *(p_p + *(&v91 + 1)) = 0;
    }

    slashEscape(v65, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Defaults = { ", 17);
    if (a1[10] - a1[9] >= 0x21uLL)
    {
      v66 = 0;
      v67 = 10;
      do
      {
        if (((*(v24 + 112) >> v67) & 1) != 0 || v67 == 10 && TParam::flagsSet(v24, 8))
        {
          (*(*v24 + 24))(v24, v67 - 9, &p_p);
          TBuffer<wchar_t>::resize(&__p, 0);
          if (*(&v91 + 1) >= v91)
          {
            if (v93)
            {
              v104[0] = 0;
              TBuffer<wchar_t>::insert(&p_p, *(&v91 + 1), v104, 1uLL);
              v68 = p_p;
              --*(&v91 + 1);
            }

            else
            {
              v68 = p_p;
              if (v91)
              {
                *(p_p + v91 - 1) = 0;
              }
            }
          }

          else
          {
            v68 = p_p;
            *(p_p + *(&v91 + 1)) = 0;
          }

          slashEscape(v68, &__p);
          v69 = a1[9] + v66;
          v70 = (v69 + 40);
          if (*(v69 + 63) < 0)
          {
            v70 = *v70;
          }

          v71 = TOutputStream::operator<<(a2, v70);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v71, " = ", 4);
          if (*(&v95 + 1) >= v95)
          {
            if (v97)
            {
              v104[0] = 0;
              TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), v104, 1uLL);
              v72 = __p;
              --*(&v95 + 1);
            }

            else
            {
              v72 = __p;
              if (v95)
              {
                *(__p + v95 - 1) = 0;
              }
            }
          }

          else
          {
            v72 = __p;
            *(__p + *(&v95 + 1)) = 0;
          }

          v73 = TOutputStream::operator<<(v71, v72);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v73, " ", 2);
        }

        v74 = v67 - 8;
        ++v67;
        v66 += 32;
      }

      while (v74 < (a1[10] - a1[9]) >> 5);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "}\n", 2);
    if ((a3 & 1) == 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Values = { ", 15);
      v76 = a1[9];
      v75 = a1[10];
      if ((v75 - v76) >= 0x21)
      {
        v77 = 0;
        v78 = 34;
        do
        {
          if ((*(v24 + 112) >> v78))
          {
            (*(*v24 + 16))(v24, v78 - 33, &p_p);
            TBuffer<wchar_t>::resize(&__p, 0);
            if (*(&v91 + 1) >= v91)
            {
              if (v93)
              {
                v104[0] = 0;
                TBuffer<wchar_t>::insert(&p_p, *(&v91 + 1), v104, 1uLL);
                v79 = p_p;
                --*(&v91 + 1);
              }

              else
              {
                v79 = p_p;
                if (v91)
                {
                  *(p_p + v91 - 1) = 0;
                }
              }
            }

            else
            {
              v79 = p_p;
              *(p_p + *(&v91 + 1)) = 0;
            }

            slashEscape(v79, &__p);
            v80 = a1[9] + v77;
            v81 = (v80 + 40);
            if (*(v80 + 63) < 0)
            {
              v81 = *v81;
            }

            v82 = TOutputStream::operator<<(a2, v81);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v82, " = ", 4);
            if (*(&v95 + 1) >= v95)
            {
              if (v97)
              {
                v104[0] = 0;
                TBuffer<wchar_t>::insert(&__p, *(&v95 + 1), v104, 1uLL);
                v83 = __p;
                --*(&v95 + 1);
              }

              else
              {
                v83 = __p;
                if (v95)
                {
                  *(__p + v95 - 1) = 0;
                }
              }
            }

            else
            {
              v83 = __p;
              *(__p + *(&v95 + 1)) = 0;
            }

            v84 = TOutputStream::operator<<(v82, v83);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v84, " ", 2);
            v76 = a1[9];
            v75 = a1[10];
          }

          v85 = v78 - 32;
          ++v78;
          v77 += 32;
        }

        while (v85 < (v75 - v76) >> 5);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "}\n", 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "}\n", 2);
LABEL_198:
    v86 = v20[1];
    if (v86)
    {
      do
      {
        v87 = v86;
        v86 = *v86;
      }

      while (v86);
    }

    else
    {
      do
      {
        v87 = v20[2];
        v88 = *v87 == v20;
        v20 = v87;
      }

      while (!v88);
    }

    v20 = v87;
  }

  while (v87 != a1 + 7);
  if (v93)
  {
    goto LABEL_205;
  }

LABEL_210:
  if (v97 == 1 && __p != v96 && __p)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v101 == 1 && v98 != v100 && v98)
  {
    MEMORY[0x26672B1B0]();
  }

  std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(&v102, v103[0]);
}