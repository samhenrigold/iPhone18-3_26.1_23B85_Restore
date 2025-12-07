void *OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(void *result, int a2, _WORD *a3, unsigned int a4)
{
  v4 = (2 * a2) | 1;
  v5 = result[3];
  v6 = (result[6] + 4 * *(v5 + 4 * v4));
  v7 = *(v5 + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    if (v7 >= 1)
    {
      do
      {
        v19 = *v6++;
        *a3++ = *(result[54] + 2 * v19);
        --v7;
      }

      while (v7);
    }
  }

  else if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result[57] + 8 * a4);
    v10 = v9[3] + 4 * *(*(*v9 + 24) + 4 * v4);
    do
    {
      v11 = v6[v8];
      v12 = *(v10 + 4 * v8);
      if (*(*v9 + 12) <= 0)
      {
        v13 = *(v9[12] + 4 * v11);
        v12 = v13 - 1;
        v14 = (v9[18] + 4 * v13);
        do
        {
          v15 = *v14++;
          ++v12;
        }

        while (v15 != *(v10 + 4 * v8));
      }

      v16 = *(v9[21] + v12);
      LOWORD(v11) = *(result[54] + 2 * v11);
      if (v16)
      {
        v17 = v11 & 0x8860;
        if (v16 >= 0x40)
        {
          v18 = 1040;
        }

        else
        {
          v18 = 1048;
        }

        if ((v16 & 8) != 0)
        {
          v18 = 8704;
        }

        LODWORD(v11) = (v18 | v17) & 0xFFFFBFFC | (((v16 >> 7) & 1) << 14) | v16 & 2 | (v16 >> 2) & 1 | 0x1004;
      }

      a3[v8++] = v11;
    }

    while (v8 != v7);
  }

  return result;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceETags(void *result, int a2, _BYTE *a3, unsigned int a4)
{
  v4 = result[3];
  v5 = (result[9] + 4 * *(v4 + 8 * a2 + 4));
  v6 = *(v4 + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    if (v6 >= 1)
    {
      do
      {
        v10 = *v5++;
        *a3++ = *(result[30] + v10);
        --v6;
      }

      while (v6);
    }
  }

  else if (v6 >= 1)
  {
    v7 = *(result[57] + 8 * a4);
    do
    {
      v8 = *v5++;
      v9 = *(result[30] + v8);
      if (*(*(v7 + 48) + v8))
      {
        v9 |= 6u;
      }

      *a3++ = v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, unsigned int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(this + 3);
  v6 = *(v5 + 8 * a2 + 4);
  v7 = *(this + 6);
  v8 = *(v5 + 8 * a2);
  if ((a3 & 0x80000000) != 0)
  {
    v24 = *(this + 54);
    v12 = *(v24 + 2 * *(v7 + 4 * v6));
    if (v8 >= 2)
    {
      v25 = v8 - 1;
      v26 = (v7 + 4 * v6 + 4);
      do
      {
        v27 = *v26++;
        v12 = *(v24 + 2 * v27) | v12;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    v9 = *(*(this + 57) + 8 * a3);
    v10 = v30;
    v29 = v30;
    __p = 0;
    if (v8 >= 0x41)
    {
      v10 = operator new(v8);
      __p = v10;
      v29 = v10;
    }

    OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(v9, a2, v10);
    v11 = *(this + 54);
    v12 = *(v11 + 2 * *(v7 + 4 * v6));
    v13 = *v29;
    if (v13)
    {
      v14 = v12 & 0xD867 | (8 * (v13 < 0x40)) | 0x410;
      if ((v13 & 8) != 0)
      {
        v14 = v12 & 0xD867 | 0x2200;
      }

      v12 = v14 & 0xAFF8 | (((v13 >> 7) & 1) << 14) | v13 & 2 | (v13 >> 2) & 1 | 0x1004;
    }

    if (v8 >= 2)
    {
      v15 = v8 - 1;
      v16 = (v7 + 4 * v6 + 4);
      v17 = v29 + 1;
      do
      {
        v18 = *v16++;
        v19 = *(v11 + 2 * v18);
        LODWORD(v18) = *v17++;
        v20 = v18;
        if (v18)
        {
          v21 = v19 & 0xD867;
          v22 = v21 | 0x2200;
          v23 = v21 | (8 * (v20 < 0x40)) | 0x410;
          if ((v20 & 8) != 0)
          {
            v23 = v22;
          }

          v19 = v23 & 0xAFF8 | (((v20 >> 7) & 1) << 14) | v20 & 2 | (v20 >> 2) & 1 | 0x1004;
        }

        v12 = v19 | v12;
        --v15;
      }

      while (v15);
    }

    operator delete(__p);
  }

  return v12;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::getVertexCompositeFVarVTag(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int a3)
{
  v3 = *(*(this + 57) + 8 * a3);
  v4 = *(v3[12] + 4 * a2);
  v5 = v3[21];
  v6 = *(*(this + 54) + 2 * a2);
  v7 = *(v5 + v4);
  if ((v7 & 1) == 0)
  {
    return *(*(this + 54) + 2 * a2);
  }

  v9 = *(v3[9] + 2 * a2);
  v10 = v6 & 0xD867 | (8 * (v7 < 0x40)) | 0x410;
  if ((v7 & 8) != 0)
  {
    v10 = v6 & 0xD867 | 0x2200;
  }

  result = v10 & 0xAFF8 | (((v7 >> 7) & 1) << 14) | v7 & 2 | (v7 >> 2) & 1 | 0x1004;
  if (v9 >= 2)
  {
    v11 = v9 - 1;
    v12 = (v4 + v5 + 1);
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v6;
      if (v14)
      {
        v16 = v6 & 0xD867 | (8 * (v13 < 0x40)) | 0x410;
        if ((v13 & 8) != 0)
        {
          v16 = v6 & 0xD867 | 0x2200;
        }

        v15 = v16 & 0xAE78 | (((v13 >> 7) & 1) << 14) | v13 & 2 | (v13 >> 2) & 1 | 0x1004;
      }

      result = v15 | result;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, unsigned int a4)
{
  v4 = *(this + 33);
  v5 = *(v4 + 8 * a2);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(v4 + 8 * a2 + 4);
  v8 = (*(this + 36) + 4 * v7);
  v9 = (*(this + 39) + 2 * v7);
  v10 = *(*(this + 42) + 8 * a2);
  v11 = (v5 - 1);
  v12 = v5;
  do
  {
    v13 = *v8++;
    v14 = (2 * v13) | 1;
    if ((a4 & 0x80000000) != 0)
    {
      v18 = (*(this + 3) + 4 * v14);
      v16 = (this + 48);
    }

    else
    {
      v15 = *(*(this + 57) + 8 * a4);
      v17 = *v15;
      v16 = v15 + 3;
      v18 = (*(v17 + 24) + 4 * v14);
    }

    v19 = *v16 + 4 * *v18;
    v20 = *v9;
    v21 = &a3[v6];
    *v21 = *(v19 + 4 * ((*v9 + 1) & 3));
    v22 = v6 + 2;
    v21[1] = *(v19 + 4 * (v20 & 3 ^ 2));
    if (v10 > v5 && !v11)
    {
      a3[v22] = *(v19 + 4 * ((v20 - 1) & 3));
      v22 = (v6 + 3);
    }

    --v11;
    ++v9;
    v6 = v22;
    --v12;
  }

  while (v12);
  return v22;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularPartialRingAroundVertex(void *a1, int a2, unsigned __int16 *a3, uint64_t a4, unsigned int a5)
{
  v5 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1[33];
  v8 = *(v7 + 8 * a2 + 4);
  v9 = *(v7 + 8 * a2);
  v10 = a1[36] + 4 * v8;
  v11 = a1[39] + 2 * v8;
  v12 = a3[1];
  do
  {
    v13 = (2 * *(v10 + 4 * (v12 % v9))) | 1;
    if ((a5 & 0x80000000) != 0)
    {
      v17 = (a1[3] + 4 * v13);
      v15 = a1 + 6;
    }

    else
    {
      v14 = *(a1[57] + 8 * a5);
      v16 = *v14;
      v15 = v14 + 3;
      v17 = (*(v16 + 24) + 4 * v13);
    }

    v18 = *v15 + 4 * *v17;
    v19 = *(v11 + 2 * (v12 % v9));
    v20 = (a4 + 4 * v6);
    *v20 = *(v18 + 4 * ((v19 + 1) & 3));
    v21 = v6 + 2;
    v20[1] = *(v18 + 4 * (v19 & 3 ^ 2));
    if (v5 == 1 && (a3[2] & 1) == 0)
    {
      *(a4 + 4 * v21) = *(v18 + 4 * ((v19 - 1) & 3));
      v21 = (v6 + 3);
    }

    ++v12;
    v6 = v21;
    --v5;
  }

  while (v5);
  return v21;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int a4, unsigned int a5)
{
  v5 = (&OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints(int,int *,int,int)const::rotationSequence + 4 * a4);
  v6 = (2 * a2) | 1;
  v7 = *(this + 3);
  v8 = *(this + 6);
  v9 = v8 + 4 * *(v7 + 4 * v6);
  if ((a5 & 0x80000000) != 0)
  {
    v11 = v8 + 4 * *(v7 + 4 * v6);
  }

  else
  {
    v10 = *(*(this + 57) + 8 * a5);
    v11 = v10[3] + 4 * *(*(*v10 + 24) + 4 * v6);
  }

  v12 = 0;
  *a3 = *(v11 + 4 * *v5);
  a3[1] = *(v11 + 4 * v5[1]);
  a3[2] = *(v11 + 4 * v5[2]);
  a3[3] = *(v11 + 4 * v5[3]);
  v13 = *(this + 36);
  v14 = *(this + 33);
  v15 = *(this + 39);
  v16 = a3 + 6;
  do
  {
    v17 = *(v14 + 8 * *(v9 + 4 * v5[v12]) + 4);
    v18 = (v13 + 4 * v17);
    if (*v18 == a2)
    {
      v19 = 2;
    }

    else if (v18[1] == a2)
    {
      v19 = 3;
    }

    else
    {
      v19 = v18[2] != a2;
    }

    v20 = (2 * v18[v19]) | 1;
    if ((a5 & 0x80000000) != 0)
    {
      v22 = v8 + 4 * *(v7 + 4 * v20);
    }

    else
    {
      v21 = *(*(this + 57) + 8 * a5);
      v22 = v21[3] + 4 * *(*(*v21 + 24) + 4 * v20);
    }

    v23 = *(v15 + 2 * v17 + 2 * v19);
    *(v16 - 2) = *(v22 + 4 * ((v23 + 1) & 3));
    *(v16 - 1) = *(v22 + 4 * (v23 & 3 ^ 2));
    *v16 = *(v22 + 4 * ((v23 - 1) & 3));
    v16 += 3;
    ++v12;
  }

  while (v12 != 4);
  return 16;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularBoundaryPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int a4, unsigned int a5)
{
  v5 = 0;
  v6 = a4 & 3 ^ 2;
  v7 = (2 * a2) | 1;
  v8 = *(this + 3);
  v9 = *(this + 6);
  v10 = v9 + 4 * *(v8 + 4 * v7);
  v11 = *(this + 36);
  v12 = *(this + 33);
  v13 = *(v12 + 8 * *(v10 + 4 * v6) + 4);
  v14 = v11 + 4 * v13;
  v15 = *(v12 + 8 * *(v10 + 4 * (((a4 & 3 ^ 2) + 1) & 3)) + 4);
  v16 = v11 + 4 * v15;
  v17 = *(this + 39);
  v18 = -1;
  v19 = -1;
  do
  {
    if (*(v14 + 4 * v5) == a2)
    {
      v18 = v5;
    }

    if (*(v16 + 4 * v5) == a2)
    {
      v19 = v5;
    }

    ++v5;
  }

  while (v5 != 4);
  v20 = (v18 + 1) & 3;
  v21 = v18 & 3 ^ 2;
  v22 = v19 & 3 ^ 2;
  v23 = v17 + 2 * v13;
  v24 = (v19 - 1) & 3;
  v25 = *(v14 + 4 * ((v18 + 1) & 3));
  v26 = *(v14 + 4 * v21);
  v27 = v17 + 2 * v15;
  v28 = *(v16 + 4 * v22);
  v29 = *(v16 + 4 * v24);
  v30 = *(v23 + 2 * v20);
  v31 = *(v23 + 2 * v21);
  v32 = *(v27 + 2 * v22);
  v33 = *(v27 + 2 * v24);
  if ((a5 & 0x80000000) == 0)
  {
    v34 = *(*(this + 57) + 8 * a5);
    v8 = *(*v34 + 24);
    v9 = v34[3];
    v10 = v9 + 4 * *(v8 + 4 * v7);
  }

  v35 = *(v8 + 8 * v25 + 4);
  v36 = *(v8 + 8 * v26 + 4);
  v37 = *(v8 + 8 * v28 + 4);
  v38 = *(v8 + 8 * v29 + 4);
  *a3 = *(v10 + 4 * ((a4 + 1) & 3));
  a3[1] = *(v10 + 4 * v6);
  a3[2] = *(v10 + 4 * ((a4 - 1) & 3));
  a3[3] = *(v10 + 4 * a4);
  v39 = v9 + 4 * v36;
  a3[4] = *(v9 + 4 * v35 + 4 * (v30 & 3 ^ 2));
  a3[5] = *(v39 + 4 * ((v31 + 1) & 3));
  a3[6] = *(v39 + 4 * (v31 & 3 ^ 2));
  v40 = *(v39 + 4 * ((v31 - 1) & 3));
  v41 = v9 + 4 * v37;
  a3[7] = v40;
  a3[8] = *(v41 + 4 * ((v32 + 1) & 3));
  a3[9] = *(v41 + 4 * (v32 & 3 ^ 2));
  a3[10] = *(v41 + 4 * ((v32 - 1) & 3));
  a3[11] = *(v9 + 4 * v38 + 4 * (v33 & 3 ^ 2));
  return 12;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularCornerPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int a4, unsigned int a5)
{
  v5 = a4 & 3 ^ 2;
  v6 = (2 * a2) | 1;
  v7 = *(this + 3);
  v8 = *(this + 6);
  v9 = v8 + 4 * *(v7 + 4 * v6);
  v10 = *(v9 + 4 * v5);
  v11 = 2 * v10;
  v12 = *(this + 33);
  v13 = *(v12 + 8 * v10 + 4);
  v14 = *(this + 36) + 4 * v13;
  v15 = *(v12 + 4 * v11);
  v16 = *(this + 39) + 2 * v13;
  if (v15 < 1)
  {
LABEL_5:
    LOBYTE(v17) = -1;
  }

  else
  {
    v17 = 0;
    while (*(v14 + 4 * v17) != a2)
    {
      if (v15 == ++v17)
      {
        goto LABEL_5;
      }
    }
  }

  v18 = v17 & 3 ^ 2;
  v19 = (v17 - 1) & 3;
  v20 = *(v14 + 4 * ((v17 + 1) & 3));
  v21 = *(v14 + 4 * v18);
  v22 = *(v14 + 4 * ((v17 - 1) & 3));
  v23 = *(v16 + 2 * ((v17 + 1) & 3));
  v24 = *(v16 + 2 * v18);
  v25 = *(v16 + 2 * v19);
  if ((a5 & 0x80000000) == 0)
  {
    v26 = *(*(this + 57) + 8 * a5);
    v7 = *(*v26 + 24);
    v8 = v26[3];
    v9 = v8 + 4 * *(v7 + 4 * v6);
  }

  v27 = *(v7 + 8 * v20 + 4);
  v28 = *(v7 + 8 * v21 + 4);
  v29 = *(v7 + 8 * v22 + 4);
  *a3 = *(v9 + 4 * a4);
  a3[1] = *(v9 + 4 * ((a4 + 1) & 3));
  a3[2] = *(v9 + 4 * v5);
  a3[3] = *(v9 + 4 * ((a4 - 1) & 3));
  v30 = v8 + 4 * v28;
  a3[4] = *(v8 + 4 * v27 + 4 * (v23 & 3 ^ 2));
  a3[5] = *(v30 + 4 * ((v24 + 1) & 3));
  a3[6] = *(v30 + 4 * (v24 & 3 ^ 2));
  a3[7] = *(v30 + 4 * ((v24 - 1) & 3));
  a3[8] = *(v8 + 4 * v29 + 4 * (v25 & 3 ^ 2));
  return 9;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, float *a3, int *a4)
{
  v4 = *(this + 3);
  v5 = *(v4 + 8 * a2 + 4);
  v6 = *(v4 + 8 * a2);
  v7 = (*(this + 6) + 4 * v5);
  v8 = *(this + 54);
  if (v6 < 2)
  {
    v11 = *(v8 + 2 * *v7);
  }

  else
  {
    v9 = v6 - 1;
    v10 = v7 + 1;
    v11 = *(v8 + 2 * *v7);
    do
    {
      v12 = *v10++;
      v11 |= *(v8 + 2 * v12);
      --v9;
    }

    while (v9);
  }

  if ((v11 & 0x707) != 0x200)
  {
    return 0;
  }

  v13 = ((*(v8 + 2 * *v7) & 0x780) == 512) | (2 * ((*(v8 + 2 * v7[1]) & 0x780) == 512)) | (4 * ((*(v8 + 2 * v7[2]) & 0x780) == 512)) | (8 * ((*(v8 + 2 * v7[3]) & 0x780) == 512));
  if ((0xEDB7uLL >> v13))
  {
    return 0;
  }

  v14 = OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(int,float *,int *)const::sharpEdgeFromCreaseMask[v13];
  v15 = *(this + 45);
  v16 = *(this + 42);
  v17 = (v15 + 4 * *(v16 + 8 * v7[v14] + 4));
  v18 = *(this + 27);
  if (*(v18 + 4 * *v17) != *(v18 + 4 * v17[2]))
  {
    return 0;
  }

  if (*(v18 + 4 * v17[1]) != *(v18 + 4 * v17[3]))
  {
    return 0;
  }

  v19 = (v15 + 4 * *(v16 + 8 * v7[(v14 + 1) & 3] + 4));
  if (*(v18 + 4 * *v19) != *(v18 + 4 * v19[2]) || *(v18 + 4 * v19[1]) != *(v18 + 4 * v19[3]))
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *(v18 + 4 * *(*(this + 9) + 4 * v5 + 4 * v14));
  }

  if (a4)
  {
    *a4 = v14;
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::findEdge(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int a3)
{
  v3 = *(this + 42);
  v4 = (*(this + 45) + 4 * *(v3 + 8 * a2 + 4));
  v5 = *(v3 + 8 * a2);
  if (a2 == a3)
  {
    if (v5 >= 1)
    {
      v6 = *(this + 15);
      while (1)
      {
        v8 = *v4++;
        result = v8;
        if (*(v6 + 8 * v8) == *(v6 + 8 * v8 + 4))
        {
          break;
        }

        if (!--v5)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(this + 15);
  while (1)
  {
    v10 = *v4++;
    result = v10;
    v11 = (v9 + 8 * v10);
    if (*v11 == a3 || v11[1] == a3)
    {
      break;
    }

    if (!--v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

BOOL OpenSubdiv::v3_1_1::Vtr::internal::Level::completeTopologyFromFaceVertices(OpenSubdiv::v3_1_1::Vtr::internal::Level *this)
{
  v1 = this;
  v193 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  v3 = *this;
  v155 = (this + 264);
  std::vector<unsigned int>::resize(this + 11, 2 * v2);
  v153 = (v1 + 336);
  std::vector<unsigned int>::resize(v1 + 14, 2 * v2);
  std::vector<unsigned int>::resize(v1 + 17, v2);
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize(v1 + 54, v2);
  bzero(*(v1 + 54), 2 * *(v1 + 2));
  *v1 = v3;
  std::vector<unsigned int>::resize(v1 + 1, 2 * v3);
  v4 = *(v1 + 12);
  v5 = *(v1 + 13) - v4;
  v156 = v3;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      *(v1 + 13) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(v1 + 12, v3 - v5);
    v4 = *(v1 + 12);
  }

  bzero(v4, *v1);
  *(v1 + 1) = 0;
  std::vector<unsigned int>::resize(v1 + 6, 0);
  std::vector<unsigned int>::resize(v1 + 9, 0);
  v6 = *(v1 + 30);
  v150 = (v1 + 240);
  if (*(v1 + 31) != v6)
  {
    *(v1 + 31) = v6;
  }

  std::vector<unsigned int>::resize(v1 + 3, ((*(v1 + 7) - *(v1 + 6)) >> 2));
  v7 = 4 * v2;
  std::vector<int>::reserve(v1 + 5, v7);
  std::vector<int>::reserve(v1 + 7, v7);
  std::vector<int>::reserve(v1 + 6, v7);
  v8 = 2;
  v182 = (v1 + 144);
  v183 = (v1 + 168);
  v185[0] = 0;
  v185[1] = 0;
  v184 = v185;
  v9 = *(v1 + 18);
  v10 = (*(v1 + 19) - v9) >> 2;
  v11 = v10 / 2;
  v180 = v10 / 2;
  v181 = 2;
  if (v10 >= 2)
  {
    v12 = 0;
    v13 = (v9 + 4);
    do
    {
      *(v13 - 1) = 0;
      *v13 = v181 * v12;
      v13 += 2;
      ++v12;
      v11 = v180;
    }

    while (v12 < v180);
    v8 = v181;
  }

  v148 = (v1 + 168);
  std::vector<unsigned int>::resize(v1 + 7, v11 * v8);
  v14 = 6;
  v176 = v155;
  v177 = (v1 + 288);
  v154 = (v1 + 288);
  v179[0] = 0;
  v179[1] = 0;
  v178 = v179;
  v15 = *(v1 + 33);
  v16 = (*(v1 + 34) - v15) >> 2;
  v17 = v16 / 2;
  v174 = v16 / 2;
  v175 = 6;
  if (v16 < 2)
  {
    v20 = 6;
  }

  else
  {
    v18 = 0;
    v19 = (v15 + 4);
    do
    {
      *(v19 - 1) = 0;
      *v19 = v175 * v18;
      v19 += 2;
      ++v18;
      v17 = v174;
    }

    while (v18 < v174);
    v20 = v175;
  }

  v160 = (v1 + 4);
  std::vector<unsigned int>::resize(v154, v17 * v20);
  v170 = (v1 + 336);
  v171 = (v1 + 360);
  v152 = (v1 + 360);
  v173[0] = 0;
  v173[1] = 0;
  v172 = v173;
  v21 = *(v1 + 42);
  v22 = (*(v1 + 43) - v21) >> 2;
  v23 = v22 / 2;
  v168 = v22 / 2;
  v169 = 6;
  if (v22 > 1)
  {
    v24 = 0;
    v25 = (v21 + 4);
    do
    {
      *(v25 - 1) = 0;
      *v25 = v169 * v24;
      v25 += 2;
      ++v24;
      v23 = v168;
    }

    while (v24 < v168);
    v14 = v169;
  }

  v149 = (v1 + 144);
  std::vector<unsigned int>::resize(v152, v23 * v14);
  __p = 0;
  v166 = 0;
  v167 = 0;
  v157 = v1;
  if (v3 >= 1)
  {
    v26 = 0;
    while (1)
    {
      v27 = (*(v1 + 3) + 8 * v26);
      v28 = *v27;
      if (v28 >= 1)
      {
        break;
      }

LABEL_71:
      if (++v26 == v156)
      {
        goto LABEL_72;
      }
    }

    v29 = 0;
    v30 = v27[1];
    v31 = *(v1 + 6) + 4 * v30;
    v158 = *(v1 + 9) + 4 * v30;
    while (1)
    {
      v32 = *(v31 + 4 * v29);
      v164 = v32;
      v33 = v29 + 1;
      if (v29 + 1 == v28)
      {
        v34 = 0;
      }

      else
      {
        v34 = v29 + 1;
      }

      v35 = *(v31 + 4 * v34);
      v162 = 0;
      v163 = v35;
      if (v32 == v35)
      {
        v162 = -1;
        std::vector<int>::push_back[abi:nn200100](&__p, v160);
        v36 = v162;
      }

      else
      {
        v187 = v32;
        v37 = *(*v170 + 8 * v32);
        if (v37 <= v169)
        {
          v39 = (*v171 + 4 * *(*v170 + 4 * ((2 * v32) | 1)));
        }

        else
        {
          v188 = &v187;
          v38 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v172, v32, &v188);
          v39 = v38[5];
          v37 = ((v38[6] - v39) >> 2);
        }

        if (v37 < 1)
        {
LABEL_36:
          v36 = -1;
        }

        else
        {
          while (1)
          {
            v40 = *v39++;
            v36 = v40;
            v41 = (*(v1 + 15) + 8 * v40);
            if (*v41 == v35 || v41[1] == v35)
            {
              break;
            }

            if (!--v37)
            {
              goto LABEL_36;
            }
          }
        }

        v162 = v36;
      }

      if (v36 != -1)
      {
        v187 = v36;
        LODWORD(v42) = *(*v182 + 2 * v36);
        if (v42 <= v181)
        {
          v44 = &v183->__begin_[*(*v182 + 2 * v36 + 1)];
        }

        else
        {
          v188 = &v187;
          v43 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v184, v36, &v188);
          v44 = v43[5];
          v42 = (v43[6] - v44) >> 2;
        }

        if (v26 == v44[v42 - 1])
        {
          std::vector<int>::push_back[abi:nn200100](&__p, &v162);
          std::vector<int>::push_back[abi:nn200100](&__p, v160);
        }

        else
        {
          if (v42 > 1 || (v45 = v162, v164 == *(*(v1 + 15) + 8 * v162)))
          {
            std::vector<int>::push_back[abi:nn200100](&__p, &v162);
            v45 = v162;
          }

          if (v45 != -1)
          {
            goto LABEL_60;
          }
        }
      }

      v162 = *v160;
      *v160 = v162 + 1;
      std::vector<int>::push_back[abi:nn200100](v1 + 15, &v164);
      std::vector<int>::push_back[abi:nn200100](v1 + 15, &v163);
      LODWORD(v188) = 0;
      std::vector<int>::push_back[abi:nn200100](v182, &v188);
      LODWORD(v188) = v181 * v180;
      std::vector<int>::push_back[abi:nn200100](v182, &v188);
      v46 = ++v180;
      std::vector<unsigned int>::resize(v183, v181 * v46);
      v47 = v162;
      v186 = v162;
      v187 = v164;
      v48 = *(*v170 + 8 * v164);
      v49 = *(*v170 + 4 * ((2 * v164) | 1));
      if (v48 >= v169)
      {
        v188 = &v187;
        v50 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v172, v164, &v188);
        v51 = v50;
        if (v48 <= v169)
        {
          std::vector<unsigned int>::resize((v50 + 5), v169 + 1);
          memcpy(v51[5], (*v171 + 4 * v49), 4 * v169);
          *(v51[5] + 4 * v169) = v47;
        }

        else
        {
          std::vector<int>::push_back[abi:nn200100](v50 + 5, &v186);
        }
      }

      else
      {
        *(*v171 + 4 * (v49 + v48)) = v162;
      }

      v52 = *v170;
      *(v52 + 8 * v187) = *(*v170 + 8 * v187) + 1;
      v53 = v162;
      v186 = v162;
      v187 = v163;
      v54 = *(v52 + 8 * v163);
      v55 = *(v52 + 4 * ((2 * v163) | 1));
      if (v54 >= v169)
      {
        v188 = &v187;
        v56 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v172, v163, &v188);
        v57 = v56;
        if (v54 <= v169)
        {
          std::vector<unsigned int>::resize((v56 + 5), v169 + 1);
          memcpy(v57[5], (*v171 + 4 * v55), 4 * v169);
          *(v57[5] + 4 * v169) = v53;
        }

        else
        {
          std::vector<int>::push_back[abi:nn200100](v56 + 5, &v186);
        }

        v1 = v157;
      }

      else
      {
        *(*v171 + 4 * (v55 + v54)) = v162;
        v1 = v157;
      }

      ++*(*v170 + 8 * v187);
      v45 = v162;
LABEL_60:
      v186 = v26;
      v187 = v45;
      v58 = *(*v182 + 2 * v45);
      v59 = *(*v182 + 2 * v45 + 1);
      if (v58 >= v181)
      {
        v188 = &v187;
        v60 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v184, v45, &v188);
        v61 = v60;
        if (v58 <= v181)
        {
          std::vector<unsigned int>::resize((v60 + 5), v181 + 1);
          memcpy(v61[5], &v183->__begin_[v59], 4 * v181);
          *(v61[5] + 4 * v181) = v26;
        }

        else
        {
          std::vector<int>::push_back[abi:nn200100](v60 + 5, &v186);
        }
      }

      else
      {
        v183->__begin_[v59 + v58] = v26;
      }

      ++*(*v182 + 2 * v187);
      v186 = v26;
      v187 = v164;
      v62 = *(*v176 + 8 * v164);
      v63 = *(*v176 + 4 * ((2 * v164) | 1));
      if (v62 >= v175)
      {
        v188 = &v187;
        v64 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v178, v164, &v188);
        v65 = v64;
        if (v62 <= v175)
        {
          std::vector<unsigned int>::resize((v64 + 5), v175 + 1);
          memcpy(v65[5], (*v177 + 4 * v63), 4 * v175);
          *(v65[5] + 4 * v175) = v26;
        }

        else
        {
          std::vector<int>::push_back[abi:nn200100](v64 + 5, &v186);
        }
      }

      else
      {
        *(*v177 + 4 * (v63 + v62)) = v26;
      }

      ++*(*v176 + 8 * v187);
      *(v158 + 4 * v29++) = v162;
      if (v33 == v28)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_72:
  v69 = *(v1 + 5);
  if (v67 > v69)
  {
    v69 = v67;
  }

  if (v68 <= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = v68;
  }

  *(v1 + 4) = v66;
  *(v1 + 5) = v70;
  if (v70 < 0x10000)
  {
    v71 = *(v1 + 1);
    std::vector<unsigned int>::resize(v149, 2 * v71);
    std::vector<unsigned int>::resize(v1 + 9, v71);
    v72 = *(v1 + 30);
    v73 = *(v1 + 31) - v72;
    if (v71 <= v73)
    {
      v74 = v150;
      if (v71 < v73)
      {
        *(v1 + 31) = v72 + v71;
      }
    }

    else
    {
      v74 = v150;
      std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::ETag>::__append(v150, v71 - v73);
    }

    if (v71 >= 1)
    {
      bzero(*v74, *v160);
    }

    v147 = v70;
    v75 = __p;
    if (((v166 - __p) >> 2) >= 1)
    {
      v76 = 0;
      do
      {
        v77 = v75[v76];
        *(*v74 + v77) |= 1u;
        v78 = (*(v1 + 15) + 8 * v77);
        *(*(v1 + 54) + 2 * *v78) |= 1u;
        *(*(v1 + 54) + 2 * v78[1]) |= 1u;
        ++v76;
        v75 = __p;
      }

      while (v76 < ((v166 - __p) >> 2));
    }

    v79 = *(v1 + 2);
    if (v79 >= 1)
    {
      v80 = 0;
      v81 = 0;
      v82 = 2 * v79;
      v151 = 2 * v79;
      do
      {
        v83 = *(v1 + 54);
        if ((*(v83 + v80) & 1) == 0)
        {
          v84 = *(*v155 + 4 * (v80 + 1));
          v85 = *(*v155 + 4 * v80);
          begin = v152->__begin_;
          v161 = v154->__begin_;
          v86 = *(*v153 + 4 * (v80 + 1));
          v87 = *(*v153 + 4 * v80);
          v88 = v191;
          v188 = v191;
          v189 = v87 + v85;
          v190 = 32;
          v192 = 0;
          if ((v87 + v85) >= 0x21)
          {
            v88 = operator new(4 * (v87 + v85));
            v192 = v88;
            v188 = v88;
            v190 = v87 + v85;
          }

          if (OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(v157, v81, v88, &v88[4 * v85]))
          {
            memcpy(&v161[v84], v88, 4 * v85);
            memcpy(&begin[v86], &v88[4 * v85], 4 * v87);
            operator delete(v192);
          }

          else
          {
            operator delete(v192);
            *(v83 + v80) |= 1u;
          }

          v1 = v157;
          v82 = v151;
        }

        ++v81;
        v80 += 2;
      }

      while (v82 != v80);
      LODWORD(v79) = *(v1 + 2);
    }

    v89 = *(v1 + 1);
    std::vector<unsigned short>::resize(v1 + 39, (*(v1 + 37) - *(v1 + 36)) >> 2);
    std::vector<unsigned short>::resize(v1 + 48, (*(v1 + 46) - *(v1 + 45)) >> 2);
    std::vector<unsigned short>::resize(v1 + 24, (*(v1 + 22) - *(v1 + 21)) >> 2);
    if (v79 >= 1)
    {
      v90 = 0;
      v91 = v154->__begin_;
      v92 = *v155;
      v93 = *(v1 + 39);
      do
      {
        v94 = (v92 + 8 * v90);
        v95 = *v94;
        if (v95 >= 1)
        {
          v96 = 0;
          v97 = v94[1];
          v98 = &v91[v97];
          v99 = v93 + 2 * v97;
          v100 = *(v1 + 3);
          v101 = *(v1 + 6);
          LODWORD(v102) = -1;
          do
          {
            v103 = v102;
            v102 = v98[v96];
            if (v102 == v103)
            {
              v104 = *(v99 - 2 + 2 * v96) + 1;
            }

            else
            {
              v104 = 0;
            }

            v105 = v101 + 4 * *(v100 + 4 * ((2 * v102) | 1));
            v106 = *(v100 + 8 * v102);
            v107 = (v105 + 4 * v104);
            if (v104 != v106)
            {
              v108 = 4 * v106 - 4 * v104;
              do
              {
                if (v90 == *v107)
                {
                  goto LABEL_110;
                }

                ++v107;
                v108 -= 4;
              }

              while (v108);
              LODWORD(v107) = v105 + 4 * v106;
            }

LABEL_110:
            *(v99 + 2 * v96++) = (v107 - v105) >> 2;
          }

          while (v96 != v95);
        }

        ++v90;
      }

      while (v90 != v79);
      v109 = 0;
      v110 = *(v1 + 45);
      v111 = *(v1 + 42);
      v112 = *(v1 + 48);
      v113 = *(v1 + 5);
      while (1)
      {
        v114 = (v111 + 8 * v109);
        v115 = *v114;
        if (v115 >= 1)
        {
          break;
        }

LABEL_125:
        if (v113 <= v115)
        {
          v113 = v115;
        }

        *(v1 + 5) = v113;
        if (++v109 == v79)
        {
          goto LABEL_128;
        }
      }

      v116 = 0;
      v117 = v114[1];
      v118 = (v110 + 4 * v117);
      v119 = v112 + 2 * v117;
      v120 = *(v1 + 15);
      while (1)
      {
        v121 = *v118;
        v122 = (v120 + 8 * v121);
        v124 = *v122;
        v123 = v122[1];
        if (v124 != v123)
        {
          break;
        }

        if (v116)
        {
          v125 = v121 == *(v118 - 1);
          goto LABEL_119;
        }

        v126 = 0;
LABEL_122:
        *(v119 + v116) = v126;
        ++v118;
        v116 += 2;
        if (2 * v115 == v116)
        {
          goto LABEL_125;
        }
      }

      v125 = v109 == v123;
LABEL_119:
      v126 = v125;
      goto LABEL_122;
    }

LABEL_128:
    v70 = v147;
    if (v89 >= 1)
    {
      v127 = 0;
      v128 = *v148;
      v129 = v149->__begin_;
      v130 = *(v1 + 24);
      do
      {
        v131 = &v129[2 * v127];
        v132 = *v131;
        if (v132 >= 1)
        {
          v133 = 0;
          v134 = v131[1];
          v135 = v128 + 4 * v134;
          v136 = v130 + 2 * v134;
          v137 = *(v1 + 3);
          v138 = *(v1 + 9);
          LODWORD(v139) = -1;
          do
          {
            v140 = v139;
            v139 = *(v135 + 4 * v133);
            if (v139 == v140)
            {
              v141 = *(v136 - 2 + 2 * v133) + 1;
            }

            else
            {
              v141 = 0;
            }

            v142 = v138 + 4 * *(v137 + 4 * ((2 * v139) | 1));
            v143 = *(v137 + 8 * v139);
            v144 = (v142 + 4 * v141);
            if (v141 != v143)
            {
              v145 = 4 * v143 - 4 * v141;
              while (v127 != *v144)
              {
                ++v144;
                v145 -= 4;
                if (!v145)
                {
                  LODWORD(v144) = v142 + 4 * v143;
                  break;
                }
              }
            }

            *(v136 + 2 * v133++) = (v144 - v142) >> 2;
          }

          while (v133 != v132);
        }

        ++v127;
      }

      while (v127 != v89);
    }
  }

  if (__p)
  {
    v166 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(v173[0]);
  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(v179[0]);
  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(v185[0]);
  return v70 < 0x10000;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::anonymous namespace::DynamicRelation::compressMemberIndices(OpenSubdiv::v3_1_1::Vtr::internal::_anonymous_namespace_::DynamicRelation *this)
{
  v2 = **(this + 1);
  v3 = *v2;
  LODWORD(v4) = *this;
  if (*(this + 5))
  {
    if (v4 < 2)
    {
      v5 = 0;
      v8 = *(this + 1);
    }

    else
    {
      v5 = 0;
      v6 = v2 + 3;
      v7 = 1;
      do
      {
        *v6 = v3;
        v8 = *(this + 1);
        v4 = *this;
        v5 |= v3 > v8 * v7;
        v3 += *(v6 - 1);
        ++v7;
        v6 += 2;
      }

      while (v7 < v4);
    }

    v12 = v5 | (v3 > v4 * v8);
    memset(&v26, 0, sizeof(v26));
    if (v5 & 1 | (v3 > v4 * v8))
    {
      v13 = &v26;
      std::vector<unsigned int>::resize(&v26, v3);
      LODWORD(v4) = *this;
      v8 = *(this + 1);
    }

    else
    {
      v13 = *(this + 2);
    }

    v25 = 0;
    if (v4 >= 1)
    {
      v14 = 0;
      do
      {
        v15 = **(this + 1);
        v16 = *(v15 + 8 * v14);
        v17 = *(v15 + 8 * v14 + 4);
        begin = v13->__begin_;
        v19 = *(this + 1);
        if (v16 <= v19)
        {
          v20 = (**(this + 2) + 4 * v19 * v14);
        }

        else
        {
          v27 = &v25;
          v20 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 3, v14, &v27)[5];
          if (v8 <= v16)
          {
            v8 = v16;
          }

          else
          {
            v8 = v8;
          }
        }

        memmove(&begin[v17], v20, 4 * v16);
        v14 = v25 + 1;
        v25 = v14;
      }

      while (v14 < *this);
    }

    v21 = *(this + 2);
    if (v12)
    {
      v22 = *v21;
      *v21 = v26.__begin_;
      *(v21 + 8) = v26.__end_;
      v23 = *(v21 + 16);
      *(v21 + 16) = v26.__end_cap_.__value_;
      v26.__begin_ = v22;
      v26.__end_cap_.__value_ = v23;
      if (!v22)
      {
        return v8;
      }

      goto LABEL_29;
    }

    std::vector<unsigned int>::resize(*(this + 2), v3);
    v22 = v26.__begin_;
    if (v26.__begin_)
    {
LABEL_29:
      v26.__end_ = v22;
      operator delete(v22);
    }
  }

  else
  {
    if (v4 < 2)
    {
      v8 = *v2;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      LODWORD(v8) = *v2;
      do
      {
        v11 = v2[v9 + 2];
        memmove((**(this + 2) + 4 * v3), (**(this + 2) + 4 * v2[v9 + 3]), 4 * v11);
        v2 = **(this + 1);
        v2[v9 + 3] = v3;
        v3 += v11;
        if (v8 <= v11)
        {
          v8 = v11;
        }

        else
        {
          v8 = v8;
        }

        ++v10;
        v9 += 2;
      }

      while (v10 < *this);
    }

    std::vector<unsigned int>::resize(*(this + 2), v3);
  }

  return v8;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize(const void **result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::__append(result, a2 - v2);
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 1)
  {
    a1[1] = &v5[2 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 1;
    v10 = v4 - v6;
    if (v10 > v8)
    {
      v8 = v10;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>>(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (2 * v9 + 2 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 - v3 >= a2)
  {
    a1[1] = &v3[a2];
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = (v6 + a2);
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    a1[1] = v10;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::ETag>::__append(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 - v3 >= a2)
  {
    a1[1] = &v3[a2];
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = (v6 + a2);
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    a1[1] = v10;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(*a1);
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void OpenSubdiv::v3_1_1::Far::StencilTableFactory::Create(int *a1, uint64_t a2)
{
  if (((*(a1 + 8) >> 2) & 0xFu) >= ((a2 >> 6) & 0xFu))
  {
    v2 = (a2 >> 6) & 0xF;
  }

  else
  {
    v2 = (*(a1 + 8) >> 2) & 0xF;
  }

  if (!(a2 & 8 | v2))
  {
    operator new();
  }

  operator new();
}

uint64_t OpenSubdiv::v3_1_1::Far::StencilTableFactory::appendLocalPointStencilTable(OpenSubdiv::v3_1_1::Far::StencilTableFactory *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, const OpenSubdiv::v3_1_1::Far::StencilTable *a3, const OpenSubdiv::v3_1_1::Far::StencilTable *a4, int a5)
{
  if (a2 && a3 && ((*(a3 + 3) - *(a3 + 2)) & 0x3FFFFFFFCLL) != 0)
  {
    v5 = **(this + 11);
    if ((a4 & 0x80000000) != 0)
    {
      v6 = (v5 + 8);
    }

    else
    {
      v6 = (*(*(v5 + 456) + 8 * a4) + 16);
    }

    v7 = *v6;
    v8 = (*(a2 + 3) - *(a2 + 2)) >> 2;
    if ((a4 & 0x80000000) != 0)
    {
      v11 = *(this + 5);
    }

    else
    {
      v9 = *(this + 5);
      v10 = *(this + 6) - v9;
      if ((v10 >> 3) < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = (v10 >> 3);
        if (v12 <= 1)
        {
          v12 = 1;
        }

        do
        {
          v13 = *v9++;
          v11 += *(*(*(v13 + 456) + 8 * a4) + 16);
          --v12;
        }

        while (v12);
      }
    }

    if (v11 == v8 || v11 - v7 == v8)
    {
      operator new();
    }
  }

  return 0;
}

_WORD *OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(_WORD *result, void *a2, int a3, uint64_t a4, int a5, int a6)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a5 != 1)
  {
    if (a6)
    {
      if (a6 != 4)
      {
        goto LABEL_14;
      }
    }

    else if (a5 != 4)
    {
      v30 = *(a2[27] + 4 * a3);
      if (v30 < 1.0 && ((*result & 0x60) == 0 || (v30 + -1.0) <= 0.0))
      {
LABEL_14:
        v17 = a2[18];
        v18 = *(v17 + 8 * a3);
        *(a4 + 24) = 2;
        *(a4 + 32) = v18;
        *(a4 + 36) = 1;
        if ((*result & 0x180) == 0x80)
        {
          if (v18 == 2)
          {
            v19 = *(v17 + 8 * a3);
            if (v19 <= 0)
            {
              goto LABEL_65;
            }

            v20 = 0;
            v21 = a2[21] + 4 * *(v17 + 4 * ((2 * a3) | 1));
            v22 = a2[3];
            v23 = 4 * v19;
            do
            {
              *(&v54 + v20) = *(v22 + 8 * *(v21 + v20));
              v20 += 4;
            }

            while (v23 != v20);
            LOBYTE(v17) = v55 == 3;
            LOBYTE(v18) = v54 == 3;
            v24 = 0.25;
            v25 = v54 == 3 || v55 == 3;
            _D0.i32[0] = 0.25;
            if (v25)
            {
LABEL_65:
              v50 = 0.47;
              if (v17)
              {
                v51 = 0.47;
              }

              else
              {
                v51 = 0.25;
              }

              if ((v18 & 1) == 0)
              {
                v50 = 0.25;
              }

              *_D0.i32 = (v50 + v51) * 0.5;
              v24 = ((*_D0.i32 * -2.0) + 1.0) * 0.5;
            }

            v38 = *a4;
            v38->f32[0] = v24;
            v38->f32[1] = v24;
            goto LABEL_72;
          }

          v38 = *a4;
          __asm { FMOV            V0.2S, #0.25 }

          **a4 = _D0;
        }

        else
        {
          v38 = *a4;
          __asm { FMOV            V0.2S, #0.25 }

          **a4 = _D0;
          _D0.i32[0] = 0.25;
          if (v18 == 2)
          {
LABEL_72:
            v18 = *(a4 + 16);
            *v18 = _D0.i32[0];
            *(v18 + 4) = _D0.i32[0];
            LODWORD(v18) = 2;
LABEL_73:
            v52 = *(a2[27] + 4 * a3);
            *v38 = vmla_n_f32(vmul_n_f32(*v38, 1.0 - v52), 0x3F0000003F000000, v52);
            if (v18 >= 1)
            {
              v53 = *(a4 + 16);
              v18 = v18;
              do
              {
                *v53 = (1.0 - v52) * *v53;
                ++v53;
                --v18;
              }

              while (v18);
            }

            return result;
          }
        }

        if (v18 >= 1)
        {
          *_D0.i32 = 0.5 / v18;
          v43 = (v18 + 3) & 0xFFFFFFFC;
          v44 = vdupq_n_s64(v18 - 1);
          v45 = xmmword_1E3049640;
          v46 = xmmword_1E3049620;
          v47 = (*(a4 + 16) + 8);
          v48 = vdupq_n_s64(4uLL);
          do
          {
            v49 = vmovn_s64(vcgeq_u64(v44, v46));
            if (vuzp1_s16(v49, _D0).u8[0])
            {
              *(v47 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v49, _D0).i8[2])
            {
              *(v47 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v44, *&v45))).i32[1])
            {
              *v47 = _D0.i32[0];
              v47[1] = _D0.i32[0];
            }

            v45 = vaddq_s64(v45, v48);
            v46 = vaddq_s64(v46, v48);
            v47 += 4;
            v43 -= 4;
          }

          while (v43);
        }

        goto LABEL_73;
      }
    }

    *(a4 + 24) = 2;
    *(a4 + 28) = 0;
    *(a4 + 36) = 0;
    _D0.i32[0] = 0.5;
LABEL_52:
    v42 = *a4;
    v42->i32[0] = _D0.i32[0];
    v42->i32[1] = _D0.i32[0];
    return result;
  }

  v6 = 2 * a3;
  v7 = a2[18];
  v8 = *(v7 + 8 * a3);
  *(a4 + 24) = 2;
  *(a4 + 32) = v8;
  *(a4 + 36) = 1;
  if ((*result & 0x180) == 0x80)
  {
    if (v8 == 2)
    {
      v9 = *(v7 + 4 * v6);
      if (v9 <= 0)
      {
        goto LABEL_44;
      }

      v10 = 0;
      v11 = a2[21] + 4 * *(v7 + 8 * a3 + 4);
      v12 = a2[3];
      v13 = 4 * v9;
      do
      {
        *(&v54 + v10) = *(v12 + 8 * *(v11 + v10));
        v10 += 4;
      }

      while (v13 != v10);
      LOBYTE(v8) = v55 == 3;
      LOBYTE(v6) = v54 == 3;
      v14 = 0.25;
      _ZF = v54 == 3 || v55 == 3;
      _D0.i32[0] = 0.25;
      if (_ZF)
      {
LABEL_44:
        v39 = 0.47;
        if (v8)
        {
          v40 = 0.47;
        }

        else
        {
          v40 = 0.25;
        }

        if ((v6 & 1) == 0)
        {
          v39 = 0.25;
        }

        *_D0.i32 = (v39 + v40) * 0.5;
        v14 = ((*_D0.i32 * -2.0) + 1.0) * 0.5;
      }

      v41 = *a4;
      *v41 = v14;
      v41[1] = v14;
      goto LABEL_51;
    }

    __asm { FMOV            V0.2S, #0.25 }

    **a4 = _D0;
  }

  else
  {
    __asm { FMOV            V0.2S, #0.25 }

    **a4 = _D0;
    _D0.i32[0] = 0.25;
    if (v8 == 2)
    {
LABEL_51:
      a4 += 16;
      goto LABEL_52;
    }
  }

  if (v8 >= 1)
  {
    *_D0.i32 = 0.5 / v8;
    v31 = (v8 + 3) & 0xFFFFFFFC;
    v32 = vdupq_n_s64(v8 - 1);
    v33 = xmmword_1E3049640;
    v34 = xmmword_1E3049620;
    v35 = (*(a4 + 16) + 8);
    v36 = vdupq_n_s64(4uLL);
    do
    {
      v37 = vmovn_s64(vcgeq_u64(v32, v34));
      if (vuzp1_s16(v37, _D0).u8[0])
      {
        *(v35 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v37, _D0).i8[2])
      {
        *(v35 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v32, *&v33))).i32[1])
      {
        *v35 = _D0.i32[0];
        v35[1] = _D0.i32[0];
      }

      v33 = vaddq_s64(v33, v36);
      v34 = vaddq_s64(v34, v36);
      v35 += 4;
      v31 -= 4;
    }

    while (v31);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(int *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v91 = *MEMORY[0x1E69E9840];
  v7 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v8 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v8;
    *(a3 + 32) = v8;
    *(a3 + 36) = 1;
    **a3 = (v8 - 2) / v8;
    if (v8 >= 1)
    {
      v9 = 1.0 / (v8 * v8);
      v10 = *(a3 + 8);
      v11 = *(a3 + 16);
      do
      {
        *v10++ = v9;
        *v11++ = v9;
        --v8;
      }

      while (v8);
    }

    return;
  }

  v12 = a4;
  if (a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4 == 0;
  }

  if (v14)
  {
    v15 = a5;
  }

  else
  {
    v15 = a4;
  }

  v16 = *(a2 + 24);
  v17 = 4 * v16;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v87[-v18];
  bzero(&v87[-v18], v17);
  if ((v12 | 4) != 4 && v15 == v12)
  {
    v19 = 0;
    v29 = 0.0;
LABEL_37:
    v38 = v16;
    if (v12 == 4)
    {
      v88 = v15;
      v39 = 0xFFFFFFFF00000000;
      v40 = v19;
      do
      {
        v41 = *v40++;
        v39 += 0x100000000;
      }

      while (v41 <= 0.0);
      v42 = v16 << 32;
      v89 = v16;
      v43 = &v19[v16 - 1];
      do
      {
        v44 = *v43--;
        v42 -= 0x100000000;
      }

      while (v44 <= 0.0);
      *(a3 + 24) = 1;
      *(a3 + 28) = v16;
      *(a3 + 32) = 0;
      *(a3 + 36) = 0;
      v45 = *(a3 + 8);
      **a3 = 1061158912;
      if (v16 >= 1)
      {
        bzero(v45, 4 * v16);
      }

      *&v45[v39 >> 30] = 1040187392;
      *&v45[v42 >> 30] = 1040187392;
      v38 = v89;
      v15 = v88;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v15 != v12)
    {
      v90 = *a1;
      MEMORY[0x1EEE9AC00](v20);
      v46 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
      bzero(v46, 4 * v16);
      ChildSharpnessPerEdge = OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface::GetChildSharpnessPerEdge(a2, &v90, v46);
      v48 = *(*(*(a2 + 8) + 408) + 4 * *(a2 + 20));
      if (v15)
      {
        goto LABEL_60;
      }

      if (v48 <= 0.0)
      {
        if (v16 < 1)
        {
          v15 = 1;
        }

        else
        {
          v49 = 0;
          v50 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v51 = v16;
          do
          {
            v52 = *v50++;
            if (v52 > 0.0)
            {
              ++v49;
            }

            --v51;
          }

          while (v51);
          v15 = v49 <= 2 ? 1 << v49 : 8;
        }
      }

      else
      {
        v15 = 8;
      }

      if (v15 != v12)
      {
LABEL_60:
        MEMORY[0x1EEE9AC00](ChildSharpnessPerEdge);
        v54 = &v87[-v53];
        bzero(&v87[-v53], v55);
        v56 = v54 + 1;
        if ((v15 - 1) > 1)
        {
          if (v15 == 4)
          {
            v89 = v38;
            v63 = 0xFFFFFFFF00000000;
            v64 = v46;
            do
            {
              v65 = *v64++;
              v63 += 0x100000000;
            }

            while (v65 <= 0.0);
            v66 = v89 << 32;
            v67 = &v46[4 * v89 - 4];
            do
            {
              v68 = *v67--;
              v66 -= 0x100000000;
            }

            while (v68 <= 0.0);
            v62 = *(a2 + 24);
            *v54 = 0.75;
            if (v62 >= 1)
            {
              bzero(v54 + 1, 4 * v62);
            }

            LODWORD(v57) = 0;
            *(v56 + (v63 >> 30)) = 1040187392;
            v69 = v66 >> 30;
            v61 = 0;
            *(v56 + v69) = 1040187392;
            v38 = v89;
          }

          else
          {
            v61 = 0;
            LODWORD(v57) = 0;
            LODWORD(v62) = 0;
            *v54 = 1.0;
          }
        }

        else
        {
          v57 = *(a2 + 28);
          *v54 = (v57 - 2) / v57;
          if (v57 >= 1)
          {
            v58 = 1.0 / (v57 * v57);
            v59 = v54 + 1;
            v60 = v57;
            do
            {
              *v59 = v58;
              v59[v38] = v58;
              ++v59;
              --v60;
            }

            while (v60);
          }

          v61 = 1;
          LODWORD(v62) = v57;
        }

        v70 = OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(&v90, v29, v48, v16, v19, v46);
        v71 = 1.0 - *&v70;
        **a3 = ((1.0 - *&v70) * *v54) + (*&v70 * **a3);
        if (v62)
        {
          if (*(a3 + 28))
          {
            if (v62 >= 1)
            {
              v72 = *(a3 + 8);
              v73 = v62;
              v74 = v54 + 1;
              do
              {
                v75 = *v74++;
                *v72 = (v71 * v75) + (*&v70 * *v72);
                ++v72;
                --v73;
              }

              while (v73);
            }
          }

          else
          {
            *(a3 + 28) = v62;
            if (v62 >= 1)
            {
              v76 = *(a3 + 8);
              v77 = v62;
              v78 = v54 + 1;
              do
              {
                v79 = *v78++;
                *v76++ = v71 * v79;
                --v77;
              }

              while (v77);
            }
          }
        }

        if (v57)
        {
          v80 = &v56[v38];
          if (*(a3 + 32))
          {
            if (v57 >= 1)
            {
              v81 = *(a3 + 16);
              v82 = v57;
              do
              {
                v83 = *v80++;
                *v81 = (v71 * v83) + (*&v70 * *v81);
                ++v81;
                --v82;
              }

              while (v82);
            }
          }

          else
          {
            *(a3 + 32) = v57;
            *(a3 + 36) = v61;
            if (v57 >= 1)
            {
              v84 = *(a3 + 16);
              v85 = v57;
              do
              {
                v86 = *v80++;
                *v84++ = v71 * v86;
                --v85;
              }

              while (v85);
            }
          }
        }
      }
    }

    return;
  }

  v21 = *a2;
  v22 = *(a2 + 16);
  v23 = *(*a2 + 408);
  if (v16 >= 1)
  {
    v24 = (v21[45] + 4 * *(v21[42] + 8 * v22 + 4));
    v25 = v21[27];
    v26 = v19;
    v27 = v16;
    do
    {
      v28 = *v24++;
      *v26++ = *(v25 + 4 * v28);
      --v27;
    }

    while (v27);
  }

  v29 = *(v23 + 4 * v22);
  if (!v12)
  {
    if (v29 <= 0.0)
    {
      v12 = 1;
    }

    else
    {
      v12 = 8;
    }

    if (v16 >= 1 && v29 <= 0.0)
    {
      v30 = 0;
      v31 = v19;
      v32 = v16;
      do
      {
        v33 = *v31++;
        if (v33 > 0.0)
        {
          ++v30;
        }

        --v32;
      }

      while (v32);
      if (v30 <= 2)
      {
        v12 = 1 << v30;
      }

      else
      {
        v12 = 8;
      }
    }

    v7 = v12 - 1;
  }

  if (v7 > 1)
  {
    goto LABEL_37;
  }

  v34 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v34;
  *(a3 + 32) = v34;
  *(a3 + 36) = 1;
  **a3 = (v34 - 2) / v34;
  if (v34 >= 1)
  {
    v35 = 1.0 / (v34 * v34);
    v36 = *(a3 + 8);
    v37 = *(a3 + 16);
    do
    {
      *v36++ = v35;
      *v37++ = v35;
      --v34;
    }

    while (v34);
  }
}

float *OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface::GetChildSharpnessPerEdge(OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface *this, const OpenSubdiv::v3_1_1::Sdc::Crease *a2, float *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *(this + 6);
  v7 = &v15;
  v16 = 0;
  if (v6 < 0x11)
  {
    v8 = 0;
  }

  else
  {
    v8 = operator new(4 * v6);
    v16 = v8;
    LODWORD(v6) = *(this + 6);
    v7 = v8;
  }

  if (v6 >= 1)
  {
    v9 = (*(*this + 360) + 4 * *(*(*this + 336) + 8 * *(this + 4) + 4));
    v10 = *(*this + 216);
    v11 = v6;
    v12 = v7;
    do
    {
      v13 = *v9++;
      *v12++ = *(v10 + 4 * v13);
      --v11;
    }

    while (v11);
  }

  OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessesAroundVertex(a2, v6, v7, a3);
  operator delete(v8);
  return a3;
}

uint64_t OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, int a6)
{
  if (a5 != 1)
  {
    if (a6)
    {
      if (a6 != 4)
      {
LABEL_6:
        v13 = *(*(a2 + 144) + 8 * a3);
        *(a4 + 24) = 2;
        *(a4 + 32) = v13;
        *(a4 + 36) = 0;
        v14 = *a4;
        __asm { FMOV            V0.2S, #0.375 }

        **a4 = _D0;
        if (v13 == 2)
        {
          **(a4 + 16) = 0x3E0000003E000000;
        }

        else if (v13 >= 1)
        {
          *_D0.i32 = (2.0 / v13) * 0.125;
          v25 = (v13 + 3) & 0xFFFFFFFC;
          v26 = vdupq_n_s64(v13 - 1);
          v27 = xmmword_1E3049640;
          v28 = xmmword_1E3049620;
          v29 = (*(a4 + 16) + 8);
          v30 = vdupq_n_s64(4uLL);
          do
          {
            v31 = vmovn_s64(vcgeq_u64(v26, v28));
            if (vuzp1_s16(v31, _D0).u8[0])
            {
              *(v29 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v31, _D0).i8[2])
            {
              *(v29 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
            {
              *v29 = _D0.i32[0];
              v29[1] = _D0.i32[0];
            }

            v27 = vaddq_s64(v27, v30);
            v28 = vaddq_s64(v28, v30);
            v29 += 4;
            v25 -= 4;
          }

          while (v25);
        }

        v32 = *(*(a2 + 216) + 4 * a3);
        *v14 = vmla_n_f32(vmul_n_f32(*v14, 1.0 - v32), 0x3F0000003F000000, v32);
        if (v13 >= 1)
        {
          v33 = *(a4 + 16);
          do
          {
            *v33 = (1.0 - v32) * *v33;
            ++v33;
            --v13;
          }

          while (v13);
        }

        return result;
      }
    }

    else if (a5 != 4)
    {
      v23 = *(*(a2 + 216) + 4 * a3);
      if (v23 < 1.0 && ((result & 0x60) == 0 || (v23 + -1.0) <= 0.0))
      {
        goto LABEL_6;
      }
    }

    *(a4 + 24) = 2;
    *(a4 + 28) = 0;
    *(a4 + 36) = 0;
    v12 = 0.5;
    goto LABEL_23;
  }

  v6 = *(*(a2 + 144) + 8 * a3);
  *(a4 + 24) = 2;
  *(a4 + 32) = v6;
  *(a4 + 36) = 0;
  __asm { FMOV            V0.2S, #0.375 }

  **a4 = _D0;
  if (v6 == 2)
  {
    a4 += 16;
    v12 = 0.125;
LABEL_23:
    v24 = *a4;
    v24->f32[0] = v12;
    v24->f32[1] = v12;
    return result;
  }

  if (v6 >= 1)
  {
    *_D0.i32 = (2.0 / v6) * 0.125;
    v16 = (v6 + 3) & 0xFFFFFFFC;
    v17 = vdupq_n_s64(v6 - 1);
    v18 = xmmword_1E3049640;
    v19 = xmmword_1E3049620;
    v20 = (*(a4 + 16) + 8);
    v21 = vdupq_n_s64(4uLL);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v17, v19));
      if (vuzp1_s16(v22, _D0).u8[0])
      {
        *(v20 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v22, _D0).i8[2])
      {
        *(v20 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v17, *&v18))).i32[1])
      {
        *v20 = _D0.i32[0];
        v20[1] = _D0.i32[0];
      }

      v18 = vaddq_s64(v18, v21);
      v19 = vaddq_s64(v19, v21);
      v20 += 4;
      v16 -= 4;
    }

    while (v16);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(int *a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6)
{
  v99 = *MEMORY[0x1E69E9840];
  v8 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v9 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v9;
    *(a3 + 36) = 0;
    if (v9 == 6)
    {
      **a3 = 1059061760;
      LODWORD(a6) = 1031798784;
    }

    else
    {
      v34 = 1.0 / v9;
      *&a6 = cosf(v34 * 6.2832);
      *&a6 = v34 * (0.625 - (((*&a6 * 0.25) + 0.375) * ((*&a6 * 0.25) + 0.375)));
      **a3 = 1.0 - (*&a6 * v9);
      if (v9 < 1)
      {
        return;
      }
    }

    v35 = (v9 + 3) & 0xFFFFFFFC;
    v36 = vdupq_n_s64(v9 - 1);
    v37 = xmmword_1E3049640;
    v38 = xmmword_1E3049620;
    v39 = (*(a3 + 8) + 8);
    v40 = vdupq_n_s64(4uLL);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v36, v38));
      if (vuzp1_s16(v41, *&a6).u8[0])
      {
        *(v39 - 2) = LODWORD(a6);
      }

      if (vuzp1_s16(v41, *&a6).i8[2])
      {
        *(v39 - 1) = LODWORD(a6);
      }

      if (vuzp1_s16(*&a6, vmovn_s64(vcgeq_u64(v36, *&v37))).i32[1])
      {
        *v39 = LODWORD(a6);
        v39[1] = LODWORD(a6);
      }

      v37 = vaddq_s64(v37, v40);
      v38 = vaddq_s64(v38, v40);
      v39 += 4;
      v35 -= 4;
    }

    while (v35);
    return;
  }

  v10 = a4;
  if (a5)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4 == 0;
  }

  if (v12)
  {
    v13 = a5;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a2 + 24);
  v15 = 4 * v14;
  MEMORY[0x1EEE9AC00](a1);
  v17 = (&v95 - v16);
  bzero(&v95 - v16, v15);
  if ((v10 | 4) != 4 && v13 == v10)
  {
    v17 = 0;
    v28 = 0.0;
    goto LABEL_43;
  }

  v20 = *a2;
  v21 = *(a2 + 16);
  v22 = *(*a2 + 408);
  if (v14 >= 1)
  {
    v23 = (v20[45] + 4 * *(v20[42] + 8 * v21 + 4));
    v24 = v20[27];
    v25 = v17;
    v26 = v14;
    do
    {
      v27 = *v23++;
      *v25++ = *(v24 + 4 * v27);
      --v26;
    }

    while (v26);
  }

  v28 = *(v22 + 4 * v21);
  if (!v10)
  {
    if (v28 <= 0.0)
    {
      v10 = 1;
    }

    else
    {
      v10 = 8;
    }

    if (v14 >= 1 && v28 <= 0.0)
    {
      v29 = 0;
      v30 = v17;
      v31 = v14;
      do
      {
        v32 = *v30++;
        if (v32 > 0.0)
        {
          ++v29;
        }

        --v31;
      }

      while (v31);
      if (v29 <= 2)
      {
        v10 = 1 << v29;
      }

      else
      {
        v10 = 8;
      }
    }

    v8 = v10 - 1;
  }

  if (v8 > 1)
  {
LABEL_43:
    v42 = v14;
    if (v10 == 4)
    {
      v97 = v13;
      v43 = 0xFFFFFFFF00000000;
      v44 = v17;
      do
      {
        v45 = *v44++;
        v43 += 0x100000000;
      }

      while (v45 <= 0.0);
      v46 = v14 << 32;
      v96 = v14;
      v47 = &v17[v14 - 1];
      do
      {
        v48 = *v47--;
        v46 -= 0x100000000;
      }

      while (v48 <= 0.0);
      *(a3 + 24) = 1;
      *(a3 + 28) = v14;
      *(a3 + 32) = 0;
      *(a3 + 36) = 0;
      v49 = *(a3 + 8);
      **a3 = 1061158912;
      if (v14 >= 1)
      {
        bzero(v49, 4 * v14);
      }

      *&v49[v43 >> 30] = 1040187392;
      *&v49[v46 >> 30] = 1040187392;
      v13 = v97;
      v42 = v96;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v13 == v10)
    {
      return;
    }

    v98 = *a1;
    MEMORY[0x1EEE9AC00](v18);
    v50 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v50, 4 * v14);
    ChildSharpnessPerEdge = OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface::GetChildSharpnessPerEdge(a2, &v98, v50);
    v52 = *(*(*(a2 + 8) + 408) + 4 * *(a2 + 20));
    if (!v13)
    {
      if (v52 <= 0.0)
      {
        if (v14 < 1)
        {
          v13 = 1;
        }

        else
        {
          v61 = 0;
          v62 = (&v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
          v63 = v14;
          do
          {
            v64 = *v62++;
            if (v64 > 0.0)
            {
              ++v61;
            }

            --v63;
          }

          while (v63);
          v13 = v61 <= 2 ? 1 << v61 : 8;
        }
      }

      else
      {
        v13 = 8;
      }

      if (v13 == v10)
      {
        return;
      }
    }

    MEMORY[0x1EEE9AC00](ChildSharpnessPerEdge);
    v66 = (&v95 - v65);
    bzero(&v95 - v65, v67);
    v69 = (v66 + 1);
    if ((v13 - 1) > 1)
    {
      if (v13 == 4)
      {
        v72 = v42;
        v73 = 0xFFFFFFFF00000000;
        v74 = v50;
        do
        {
          v75 = *v74++;
          v73 += 0x100000000;
        }

        while (v75 <= 0.0);
        v76 = v72 << 32;
        v77 = &v50[4 * v72 - 4];
        do
        {
          v78 = *v77--;
          v76 -= 0x100000000;
        }

        while (v78 <= 0.0);
        v70 = *(a2 + 24);
        *v66 = 1061158912;
        if (v70 >= 1)
        {
          bzero(v66 + 1, 4 * v70);
        }

        *(v69 + (v73 >> 30)) = 0.125;
        *(v69 + (v76 >> 30)) = 0.125;
        v71 = *v66;
      }

      else
      {
        LODWORD(v70) = 0;
        v71 = 1.0;
      }

      goto LABEL_98;
    }

    v70 = *(a2 + 28);
    if (v70 == 6)
    {
      v71 = 0.625;
      v68.i32[0] = 1031798784;
    }

    else
    {
      v79 = 1.0 / v70;
      *v68.i32 = cosf(v79 * 6.2832);
      *v68.i32 = v79 * (0.625 - (((*v68.i32 * 0.25) + 0.375) * ((*v68.i32 * 0.25) + 0.375)));
      v71 = 1.0 - (*v68.i32 * v70);
      if (v70 < 1)
      {
LABEL_98:
        v87 = OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(&v98, v28, v52, v14, v17, v50);
        v88 = 1.0 - *&v87;
        **a3 = ((1.0 - *&v87) * v71) + (*&v87 * **a3);
        if (v70)
        {
          if (*(a3 + 28))
          {
            if (v70 >= 1)
            {
              v89 = *(a3 + 8);
              v90 = v70;
              do
              {
                v91 = *v69++;
                *v89 = (v88 * v91) + (*&v87 * *v89);
                ++v89;
                --v90;
              }

              while (v90);
            }
          }

          else
          {
            *(a3 + 28) = v70;
            if (v70 >= 1)
            {
              v92 = *(a3 + 8);
              v93 = v70;
              do
              {
                v94 = *v69++;
                *v92++ = v88 * v94;
                --v93;
              }

              while (v93);
            }
          }
        }

        return;
      }
    }

    v80 = (v70 + 3) & 0xFFFFFFFC;
    v81 = vdupq_n_s64(v70 - 1);
    v82 = xmmword_1E3049640;
    v83 = xmmword_1E3049620;
    v84 = v66 + 4;
    v85 = vdupq_n_s64(4uLL);
    do
    {
      v86 = vmovn_s64(vcgeq_u64(v81, v83));
      if (vuzp1_s16(v86, v68).u8[0])
      {
        *(v84 - 3) = v68.i32[0];
      }

      if (vuzp1_s16(v86, v68).i8[2])
      {
        *(v84 - 2) = v68.i32[0];
      }

      if (vuzp1_s16(v68, vmovn_s64(vcgeq_u64(v81, *&v82))).i32[1])
      {
        *(v84 - 1) = v68.i32[0];
        *v84 = v68.i32[0];
      }

      v82 = vaddq_s64(v82, v85);
      v83 = vaddq_s64(v83, v85);
      v84 += 4;
      v80 -= 4;
    }

    while (v80);
    goto LABEL_98;
  }

  v33 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v33;
  *(a3 + 36) = 0;
  if (v33 == 6)
  {
    **a3 = 1059061760;
    v19.i32[0] = 1031798784;
  }

  else
  {
    v53 = 1.0 / v33;
    *v19.i32 = cosf(v53 * 6.2832);
    *v19.i32 = v53 * (0.625 - (((*v19.i32 * 0.25) + 0.375) * ((*v19.i32 * 0.25) + 0.375)));
    **a3 = 1.0 - (*v19.i32 * v33);
    if (v33 < 1)
    {
      return;
    }
  }

  v54 = (v33 + 3) & 0xFFFFFFFC;
  v55 = vdupq_n_s64(v33 - 1);
  v56 = xmmword_1E3049640;
  v57 = xmmword_1E3049620;
  v58 = (*(a3 + 8) + 8);
  v59 = vdupq_n_s64(4uLL);
  do
  {
    v60 = vmovn_s64(vcgeq_u64(v55, v57));
    if (vuzp1_s16(v60, v19).u8[0])
    {
      *(v58 - 2) = v19.i32[0];
    }

    if (vuzp1_s16(v60, v19).i8[2])
    {
      *(v58 - 1) = v19.i32[0];
    }

    if (vuzp1_s16(v19, vmovn_s64(vcgeq_u64(v55, *&v56))).i32[1])
    {
      *v58 = v19.i32[0];
      v58[1] = v19.i32[0];
    }

    v56 = vaddq_s64(v56, v59);
    v57 = vaddq_s64(v57, v59);
    v58 += 4;
    v54 -= 4;
  }

  while (v54);
}

uint64_t OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v175 = v6;
  v7 = v1;
  v8 = 0;
  v219 = *MEMORY[0x1E69E9840];
  do
  {
    v9 = v1 + v8;
    *v9 = 0;
    *(v9 + 8) = v1 + v8 + 24;
    *(v9 + 344) = 0;
    *(v9 + 16) = 0x2800000028;
    v8 += 352;
  }

  while (v8 != 1408);
  for (i = 0; i != 1408; i += 352)
  {
    v11 = v1 + i;
    *(v11 + 1408) = 0;
    *(v11 + 1416) = v1 + i + 1432;
    *(v11 + 1752) = 0;
    *(v11 + 1424) = 0x2800000028;
  }

  for (j = 0; j != 1408; j += 352)
  {
    v13 = v1 + j;
    *(v13 + 2816) = 0;
    *(v13 + 2824) = v1 + j + 2840;
    *(v13 + 3160) = 0;
    *(v13 + 2832) = 0x2800000028;
  }

  v14 = v1 + 4224;
  v15 = 1408;
  do
  {
    *v14 = 0;
    *(v14 + 8) = v14 + 24;
    *(v14 + 344) = 0;
    *(v14 + 16) = 0x2800000028;
    v14 += 352;
    v15 -= 352;
  }

  while (v15);
  v16 = v1 + 5632;
  v17 = 1408;
  do
  {
    *v16 = 0;
    *(v16 + 8) = v16 + 24;
    *(v16 + 344) = 0;
    *(v16 + 16) = 0x2800000028;
    v16 += 352;
    v17 -= 352;
  }

  while (v17);
  v18 = (2 * v3) | 1;
  v19 = *(v2 + 48) + 4 * *(*(v2 + 24) + 4 * v18);
  v179 = v19;
  if ((v5 & 0x80000000) == 0)
  {
    v20 = *(*(v2 + 456) + 8 * v5);
    v179 = v20[3] + 4 * *(*(*v20 + 24) + 4 * v18);
  }

  v172 = v1 + 1408;
  v173 = (v1 + 2816);
  v174 = v4;
  v21 = 0;
  v170 = v1 + 4224;
  v169 = v1 + 5632;
  v185 = v2;
  v22 = *(v2 + 20);
  do
  {
    v23 = &(&v199)[v21];
    *v23 = &v202[v21 * 8];
    v23[1] = 0x2800000000;
    v23[22] = 0;
    v21 += 23;
  }

  while (v21 != 92);
  v24 = v5;
  v25 = v22 + ((v5 & 0x80000000) == 0);
  v26 = 2 * v25;
  v171 = v25;
  if (v25)
  {
    if (v201 < v26)
    {
      operator delete(v203);
      v199 = v202;
      v201 = 40;
      v203 = operator new(4 * v26);
      v199 = v203;
      v201 = v26;
    }

    v200 = v26;
    if (v206 < v26)
    {
      operator delete(v208);
      v204 = v207;
      v206 = 40;
      v208 = operator new(4 * v26);
      v204 = v208;
      v206 = v26;
    }

    v205 = v26;
    if (v211 < v26)
    {
      operator delete(v213);
      v209 = v212;
      v211 = 40;
      v213 = operator new(4 * v26);
      v209 = v213;
      v211 = v26;
    }

    v210 = v26;
    if (v216 < v26)
    {
      operator delete(v218);
      v214 = v217;
      v216 = 40;
      v218 = operator new(4 * v26);
      v214 = v218;
      v216 = v26;
    }
  }

  else
  {
    operator delete(v203);
    v199 = v202;
    v200 = v26;
    v201 = 40;
    operator delete(v208);
    v204 = v207;
    v205 = v26;
    v206 = 40;
    operator delete(v213);
    v209 = v212;
    v211 = 40;
    v210 = v26;
    operator delete(v218);
    v214 = v217;
    v216 = 40;
  }

  v27 = 0;
  v215 = v26;
  v176 = v7;
  v28 = 4;
  do
  {
    *(v7 + 7040 + 4 * v27) = *(v19 + 4 * v27) + v174;
    v29 = (v175 + 6 * v27);
    v30 = *(v19 + 4 * v27);
    v31 = &(&v199)[23 * v27];
    if (*v29)
    {
      v32 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularPartialRingAroundVertex(v185, v30, v29, *v31, v24);
      if ((v32 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v32 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(v185, v30, *v31, v24);
      if ((v32 & 1) == 0)
      {
LABEL_28:
        v33 = 0;
        v34 = v32 >> 1;
        v35 = 6.2832 / (v32 >> 1);
        LODWORD(v36) = v32 >> 1;
        goto LABEL_31;
      }
    }

    v37 = v32 - 1;
    v34 = v37 >> 1;
    LODWORD(v36) = (v37 >> 1) + 1;
    v35 = 3.1416 / (v37 >> 1);
    *(*v31 + 4 * v32) = *(*v31 + 4 * v37);
    v33 = 1;
LABEL_31:
    v188[v27] = v33;
    *(&v198[357] + v27) = v34;
    *(&v198[359] + v27) = v36;
    *(&v198[353] + v27) = v35;
    v38 = v27 + 1;
    v39 = *(v179 + 4 * ((v27 + 1) & 3));
    v40 = *(v179 + 4 * ((v27 - 1) & 3));
    *(&v198[355] + v27) = -1;
    if (v36 >= 1)
    {
      v41 = 0;
      v36 = v36;
      v42 = 2;
      v43 = *v31;
      while (1)
      {
        v44 = *v43;
        v43 += 2;
        if (v44 == v39)
        {
          v45 = v36 == 1 ? 0 : v42;
          if (*(*v31 + 4 * v45) == v40)
          {
            break;
          }
        }

        ++v41;
        v42 += 2;
        if (!--v36)
        {
          goto LABEL_41;
        }
      }

      *(&v198[355] + v27) = v41;
    }

LABEL_41:
    v28 = v28 + v32 - 3;
    ++v27;
  }

  while (v38 != 4);
  for (k = 0; k != 176; k += 44)
  {
    v47 = &v198[k + 177];
    *v47 = 0;
    v47[1] = &v198[k + 180];
    v47[43] = 0;
    v47[2] = 0x2800000028;
  }

  v177 = v28;
  for (m = 0; m != 176; m += 44)
  {
    v49 = &v198[m + 1];
    *v49 = 0;
    v49[1] = &v198[m + 4];
    v49[43] = 0;
    v49[2] = 0x2800000028;
  }

  v50 = v197;
  v194 = v197;
  v195 = v171;
  v196 = 10;
  v198[0] = 0;
  LODWORD(v51) = v171;
  if (v171 >= 0xB)
  {
    v50 = operator new(352 * v171);
    v198[0] = v50;
    v194 = v50;
    v196 = v171;
    LODWORD(v51) = v195;
  }

  if (v51)
  {
    v51 = v51;
    do
    {
      *v50 = 0;
      v50[1] = v50 + 3;
      v50[43] = 0;
      v50[2] = 0x2800000028;
      v50 += 44;
      --v51;
    }

    while (v51);
  }

  v52 = 4 * v171;
  v53 = v192;
  v189 = v192;
  v190 = 4 * v171;
  v191 = 40;
  v193 = 0;
  if ((4 * v171) >= 0x29)
  {
    v53 = operator new(352 * v52);
    v193 = v53;
    v189 = v53;
    v191 = 4 * v171;
    v52 = v190;
  }

  if (v52)
  {
    v54 = v52;
    do
    {
      *v53 = 0;
      v53[1] = v53 + 3;
      v53[43] = 0;
      v53[2] = 0x2800000028;
      v53 += 44;
      --v54;
    }

    while (v54);
  }

  v55 = 0;
  v56 = 0;
  do
  {
    v182 = v55;
    v183 = *(v179 + 4 * v56);
    v178 = v56;
    v57 = *(&v198[359] + v56);
    v58 = v57;
    v184 = v57;
    if (v57 >= 1)
    {
      v59 = 0;
      v181 = &(&v199)[23 * v56];
      v60 = 1.0 / (v57 + 5.0);
      v61 = v60 * v57;
      v180 = 352 * v57;
      v62 = -1;
      v63 = 2;
      v64 = 4;
      do
      {
        v65 = (v57 + v62) % v58;
        v66 = *v181;
        v67 = (*v181 + v64);
        v69 = *(v67 - 1);
        v68 = *v67;
        if (v180 - 352 == v59)
        {
          v70 = 0;
        }

        else
        {
          v70 = v63;
        }

        v71 = *(v66 + 4 * v70);
        v72 = *(v66 + 8 * v65);
        v186 = *(v66 + 8 * v65 + 4);
        v73 = v58;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v194[v59], 4);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v194[v59], v183, v61);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v194[v59], v71, v60 + v60);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v194[v59], v69, v60 + v60);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v194[v59], v68, v60);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v182 + v59 + v189), 4);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v182 + v59 + v189), v71, 0.33333);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v182 + v59 + v189), v72, -0.33333);
        v74 = v68;
        v57 = v184;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v182 + v59 + v189), v74, 0.16667);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v182 + v59 + v189), v186, -0.16667);
        v58 = v73;
        v59 += 352;
        v64 += 8;
        v63 += 2;
        ++v62;
      }

      while (v180 != v59);
    }

    v75 = v178;
    if ((*(v175 + 6 * v178 + 4) & 2) != 0)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v176 + 352 * v178), v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + 352 * v178), v183, 1.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v198[44 * v178 + 177], v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 177], *(v179 + 4 * v178), 0.66667);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 177], *(v179 + 4 * ((v178 + 1) & 3)), 0.33333);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v198[44 * v178 + 1], v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 1], *(v179 + 4 * v178), 0.66667);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 1], *(v179 + 4 * ((v178 - 1) & 3)), 0.33333);
    }

    else if (v188[v178])
    {
      v76 = &(&v199)[23 * v178];
      v77 = **v76;
      v78 = (*v76)[2 * v58 - 1];
      v187 = v58;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v176 + 352 * v178), v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + 352 * v178), v77, 0.16667);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + 352 * v178), v78, 0.16667);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + 352 * v178), v183, 0.66667);
      v79 = *(&v198[357] + v178);
      v80 = *(&v198[353] + v178);
      v81 = __sincosf_stret(v80);
      v82 = 1.0 / (v81.__cosval + (v79 * 3.0));
      v83 = (*v76)[1];
      v84 = (v82 * -(((v81.__cosval * 2.0) + 1.0) * sqrtf(v81.__cosval + 1.0))) / sqrtf(1.0 - v81.__cosval);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v198[44 * v178 + 177], v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 177], v77, 0.16667);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 177], v78, -0.16667);
      v85 = v57;
      v86 = &v198[44 * v178 + 1];
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v86, v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v183, (v81.__sinval * -4.0) * v82);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v77, v84);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v83, v81.__sinval * v82);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v78, v84);
      if (v85 >= 3)
      {
        v87 = 0;
        v88 = 2;
        do
        {
          v89 = sinf(v80 * (v88 - 1));
          v90 = v82 * (v89 * 4.0);
          v91 = v82 * (v89 + sinf(v80 * v88));
          v92 = &(*v76)[v87 / 4];
          v93 = v92[3];
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v92[2], v90);
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v93, v91);
          v87 += 8;
          ++v88;
        }

        while (8 * (v187 - 1) - 8 != v87);
      }

      v94 = *v86;
      v75 = v178;
      if (v94 >= 1)
      {
        v95 = (v86[1] + 4);
        do
        {
          *v95 = *v95 * 0.33333;
          v95 += 2;
          --v94;
        }

        while (v94);
      }
    }

    else
    {
      v96 = *(&v198[353] + v178);
      if (v58 > 29)
      {
        v98 = cosf(6.2832 / v57);
        v97 = 1.0 / ((((v98 + 5.0) + sqrtf((v98 + 9.0) * (v98 + 1.0))) * v57) * 0.0625);
      }

      else
      {
        v97 = OpenSubdiv::v3_1_1::Far::computeCoefficient(int)::efTable[v58];
      }

      v99 = 44 * v178;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v176 + 352 * v178), v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v198[44 * v178 + 177], v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v198[44 * v178 + 1], v177);
      if (v57 >= 1)
      {
        v100 = 0;
        v101 = 0;
        v102 = 1.0 / v57;
        v103 = v97 * 0.5;
        v104 = v57 - 1;
        do
        {
          v105 = (v104 + v101) % v57;
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v99 * 8), &v194[v100], v102);
          v106 = __sincosf_stret(v96 * v101);
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[v99 + 177], &v194[v100], v103 * v106.__cosval);
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[v99 + 177], &v194[352 * v105], v103 * v106.__cosval);
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[v99 + 1], &v194[v100], v103 * v106.__sinval);
          v57 = v184;
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[v99 + 1], &v194[352 * v105], v103 * v106.__sinval);
          ++v101;
          v100 += 352;
        }

        while (v184 != v101);
      }
    }

    v56 = v75 + 1;
    v55 = (v182 + 352 * v171);
  }

  while (v56 != 4);
  v107 = 0;
  v108 = 0;
  v109 = (v175 + 4);
  do
  {
    v110 = *v109;
    v109 += 6;
    if ((v110 & 2) != 0)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v176 + v107 + 1408), &v198[v107 / 8 + 177]);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v176 + v107 + 2816), &v198[v107 / 8 + 1]);
    }

    else
    {
      v111 = *(&v198[355] + v108);
      v112 = *(&v198[353] + v108);
      v113 = v112 * v111;
      v114 = v112 * ((v111 + 1) % *(&v198[359] + v108));
      if ((v188[v108] & 1) != 0 && *(&v198[357] + v108) < 2)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v176 + v107 + 1408), v177);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 1408), *(v179 + 4 * v108), 0.66667);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 1408), *(v179 + 4 * ((v108 + 1) & 3)), 0.33333);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v176 + v107 + 2816), v177);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 2816), *(v179 + 4 * v108), 0.66667);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 2816), *(v179 + 4 * ((v108 - 1) & 3)), 0.33333);
      }

      else
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v176 + v107 + 1408), (v176 + v107));
        v115 = __sincosf_stret(v113);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 1408), &v198[v107 / 8 + 177], v115.__cosval);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 1408), &v198[v107 / 8 + 1], v115.__sinval);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v176 + v107 + 2816), (v176 + v107));
        v116 = __sincosf_stret(v114);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 2816), &v198[v107 / 8 + 177], v116.__cosval);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 2816), &v198[v107 / 8 + 1], v116.__sinval);
      }
    }

    ++v108;
    v107 += 352;
  }

  while (v108 != 4);
  v117 = 0;
  v118 = 0;
  v119 = -2.0;
  v120 = v173;
  while (2)
  {
    v121 = (v118 + 1) & 3;
    v122 = (v118 - 1) & 3;
    v123 = *(&v198[355] + v118);
    v124 = &v189[352 * v123];
    v125 = &v189[352 * ((v123 + 1) % *(&v198[359] + v118))];
    v126 = cosf(*(&v198[353] + v118));
    v127 = cosf(*(&v198[353] + v122));
    v128 = cosf(*(&v198[353] + v121));
    v129 = (v126 * v119) + 3.0;
    v130 = v129 - v128;
    v131 = v126 + v126;
    v132 = v129 - v127;
    if ((v188[v118] & 1) == 0)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 176, v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 352), v128 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 176), v130 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v173[44 * v121], v131 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v124[v117], 0.33333);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 352, v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v120 - 352), v127 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), v120, v132 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v172 + 352 * ((v118 - 1) & 3)), v131 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), &v125[v117], -0.33333);
LABEL_95:
      v139 = v118 + 1;
      goto LABEL_96;
    }

    v133 = *(&v198[357] + v118);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 176, v177);
    if (v133 < 2)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), *(v179 + 4 * v118), 0.44444);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), *(v179 + 4 * (v118 ^ 2)), 0.11111);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), *(v179 + 4 * v121), 0.22222);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), *(v179 + 4 * v122), 0.22222);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v120 + 704, v120 + 352);
      goto LABEL_95;
    }

    v134 = v128 / 3.0;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 352), v128 / 3.0);
    v135 = v130 / 3.0;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 176), v130 / 3.0);
    v136 = v131 / 3.0;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v173[44 * v121], v131 / 3.0);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v124[v117], 0.33333);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 352, v177);
    v137 = v127 / 3.0;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v120 - 352), v137);
    v138 = v132 / 3.0;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), v120, v138);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v172 + 352 * ((v118 - 1) & 3)), v131 / 3.0);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), &v125[v117], -0.33333);
    if (v188[v122] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 176, v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 352), v134);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 176), v135);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v173[44 * v121], v136);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v124[v117], 0.33333);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v120 + 704, v120 + 352);
      v119 = -2.0;
      goto LABEL_95;
    }

    v119 = -2.0;
    v139 = v118 + 1;
    if (v188[v121] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 352, v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v120 - 352), v137);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), v120, v138);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v172 + 352 * ((v118 - 1) & 3)), v136);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), &v125[v117], -0.33333);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v120 + 352, v120 + 704);
    }

LABEL_96:
    v120 += 44;
    v117 += 352 * v171;
    v118 = v139;
    if (v139 != 4)
    {
      continue;
    }

    break;
  }

  for (n = 0; n != 4; ++n)
  {
    v141 = (v176 + 352 * n);
    v142 = *v141;
    if (v142 >= 1)
    {
      v143 = *(v141 + 1);
      do
      {
        *v143 += v174;
        v143 += 2;
        --v142;
      }

      while (v142);
    }

    v144 = (v172 + 352 * n);
    v145 = *v144;
    if (v145 >= 1)
    {
      v146 = *(v144 + 1);
      do
      {
        *v146 += v174;
        v146 += 2;
        --v145;
      }

      while (v145);
    }

    v147 = &v173[44 * n];
    v148 = *v147;
    if (v148 >= 1)
    {
      v149 = v147[1];
      do
      {
        *v149 += v174;
        v149 += 2;
        --v148;
      }

      while (v148);
    }

    v150 = (v170 + 352 * n);
    v151 = *v150;
    if (v151 >= 1)
    {
      v152 = *(v150 + 1);
      do
      {
        *v152 += v174;
        v152 += 2;
        --v151;
      }

      while (v151);
    }

    v153 = (v169 + 352 * n);
    v154 = *v153;
    if (v154 >= 1)
    {
      v155 = *(v153 + 1);
      do
      {
        *v155 += v174;
        v155 += 2;
        --v154;
      }

      while (v154);
    }
  }

  if (v190)
  {
    v156 = 0;
    v157 = 344;
    do
    {
      v158 = &v189[v157];
      v159 = &v189[v157 - 336];
      operator delete(*&v189[v157]);
      *v159 = v158 - 320;
      *(v158 - 81) = 40;
      ++v156;
      v157 += 352;
    }

    while (v156 < v190);
  }

  operator delete(v193);
  if (v195)
  {
    v160 = 0;
    v161 = 344;
    do
    {
      v162 = &v194[v161];
      v163 = &v194[v161 - 336];
      operator delete(*&v194[v161]);
      *v163 = v162 - 320;
      *(v162 - 81) = 40;
      ++v160;
      v161 += 352;
    }

    while (v160 < v195);
  }

  operator delete(v198[0]);
  v164 = 1408;
  do
  {
    operator delete(v198[v164 / 8]);
    *&v197[v164 + 3184] = &v197[v164 + 3200];
    *&v197[v164 + 3196] = 40;
    v164 -= 352;
  }

  while (v164);
  v165 = 176;
  do
  {
    operator delete(v198[v165 + 176]);
    v198[v165 + 134] = &v198[v165 + 136];
    HIDWORD(v198[v165 + 135]) = 40;
    v165 -= 44;
  }

  while (v165 * 8);
  v166 = 92;
  do
  {
    v167 = &(&v199)[v166];
    operator delete(v198[v166 + 360]);
    *(v167 - 23) = v167 - 168;
    *(v167 - 43) = 40;
    v166 -= 23;
  }

  while (v166 * 8);
  return v176;
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(void **this, signed int a2)
{
  *this = 0;
  if (*(this + 4) < a2)
  {
    if (a2)
    {
      if (*(this + 5) < a2)
      {
        operator delete(this[43]);
        this[1] = this + 3;
        *(this + 5) = 40;
        v4 = operator new(8 * a2);
        this[43] = v4;
        this[1] = v4;
        *(this + 5) = a2;
      }
    }

    else
    {
      operator delete(this[43]);
      this[1] = this + 3;
      *(this + 5) = 40;
    }

    *(this + 4) = a2;
  }
}

float OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *this, int a2, float result)
{
  v3 = *this;
  v4 = *(this + 1);
  if (*this < 1)
  {
LABEL_5:
    v7 = v4 + 8 * v3;
    *v7 = a2;
    *(v7 + 4) = result;
    *this = v3 + 1;
  }

  else
  {
    v5 = (v4 + 4);
    v6 = *this;
    while (*(v5 - 1) != a2)
    {
      v5 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    result = *v5 + result;
    *v5 = result;
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *this, const OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *a2, float a3)
{
  if (*a2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(this, *(*(a2 + 1) + v6), *(*(a2 + 1) + v6 + 4) * a3);
      ++v7;
      v6 += 8;
    }

    while (v7 < *a2);
  }
}

int *OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(int *a1, int *a2)
{
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(a1, a2[4]);
  v4 = *a2;
  *a1 = *a2;
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      *(*(a1 + 1) + 8 * v5) = *(*(a2 + 1) + 8 * v5);
      ++v5;
    }

    while (v5 < *a1);
  }

  return a1;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  *this = &unk_1F5D1A360;
  v4 = this + 480;
  v2 = *(this + 60);
  v3 = *(v4 + 1);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        v7 = *(v6 + 40);
        if (v7)
        {
          *(v6 + 48) = v7;
          operator delete(v7);
        }

        MEMORY[0x1E6906520](v6, 0x70C4089CF00AFLL);
        v2 = *(this + 60);
        v3 = *(this + 61);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(this + 61) = v2;
    operator delete(v2);
  }

  v8 = *(this + 57);
  if (v8)
  {
    *(this + 58) = v8;
    operator delete(v8);
  }

  v9 = *(this + 54);
  if (v9)
  {
    *(this + 55) = v9;
    operator delete(v9);
  }

  v10 = *(this + 51);
  if (v10)
  {
    *(this + 52) = v10;
    operator delete(v10);
  }

  v11 = *(this + 48);
  if (v11)
  {
    *(this + 49) = v11;
    operator delete(v11);
  }

  v12 = *(this + 45);
  if (v12)
  {
    *(this + 46) = v12;
    operator delete(v12);
  }

  v13 = *(this + 42);
  if (v13)
  {
    *(this + 43) = v13;
    operator delete(v13);
  }

  v14 = *(this + 39);
  if (v14)
  {
    *(this + 40) = v14;
    operator delete(v14);
  }

  v15 = *(this + 36);
  if (v15)
  {
    *(this + 37) = v15;
    operator delete(v15);
  }

  v16 = *(this + 33);
  if (v16)
  {
    *(this + 34) = v16;
    operator delete(v16);
  }

  v17 = *(this + 30);
  if (v17)
  {
    *(this + 31) = v17;
    operator delete(v17);
  }

  v18 = *(this + 27);
  if (v18)
  {
    *(this + 28) = v18;
    operator delete(v18);
  }

  v19 = *(this + 24);
  if (v19)
  {
    *(this + 25) = v19;
    operator delete(v19);
  }

  v20 = *(this + 21);
  if (v20)
  {
    *(this + 22) = v20;
    operator delete(v20);
  }

  v21 = *(this + 18);
  if (v21)
  {
    *(this + 19) = v21;
    operator delete(v21);
  }

  v22 = *(this + 15);
  if (v22)
  {
    *(this + 16) = v22;
    operator delete(v22);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::initializeSparseSelectionTags(void *this)
{
  v2 = this[1];
  v3 = *v2;
  v4 = this[51];
  v5 = this[52] - v4;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      this[52] = v4 + v3;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append((this + 51), v3 - v5);
    v2 = this[1];
  }

  v6 = v2[1];
  v7 = this[54];
  v8 = this[55] - v7;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      this[55] = v7 + v6;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append((this + 54), v6 - v8);
    v2 = this[1];
  }

  v9 = v2[2];
  v10 = this[57];
  v11 = this[58] - v10;
  if (v9 <= v11)
  {
    if (v9 < v11)
    {
      this[58] = v10 + v9;
    }
  }

  else
  {

    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append((this + 57), v9 - v11);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::refine(uint64_t a1, char a2)
{
  *(a1 + 36) = (a2 & 1) == 0;
  *(a1 + 37) = (a2 & 2) != 0;
  v4 = (*(*(a1 + 8) + 464) - *(*(a1 + 8) + 456)) >> 3;
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentToChildMapping(a1);
  v5 = *(a1 + 16);
  v6 = *(a1 + 52);
  v7 = *(a1 + 48) + *(a1 + 44);
  *v5 = *(a1 + 40);
  v5[1] = v7;
  v5[2] = *(a1 + 56) + v6 + *(a1 + 60);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateChildToParentMapping(a1, v8, v9);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagVectors(a1);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagVectors(a1);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagVectors(a1);
  if ((a2 & 4) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  v11[0] = v10;
  if (v4 < 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideTopology(a1, v11);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideEdgeSharpness(a1);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideVertexSharpness(a1);

    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::reclassifySemisharpVertices(a1);
  }

  else
  {
    v11[0] = v10 | 0x10;
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideTopology(a1, v11);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideEdgeSharpness(a1);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideVertexSharpness(a1);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::reclassifySemisharpVertices(a1);

    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideFVarChannels(a1);
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentToChildMapping(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  (*(*this + 16))(this);
  if ((*(this + 36) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseChildComponentIndices(this);
  }

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentChildIndices(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateChildToParentMapping(std::vector<int> *this, uint8x8_t a2, uint8x8_t a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  a3.i32[0] = HIDWORD(v7[0]);
  a2.i32[0] = v7[0];
  v4 = vorr_s8((vmovl_u8(a2).u64[0] & 0xFFE0FFE0FFE0FFE0), 0x18001000080000);
  v5 = vuzp1_s8(v4, v4);
  v5.i32[1] = vuzp1_s8(vorr_s8((vmovl_u8(a3).u64[0] & 0xFFE0FFE0FFE0FFE0), 0x19001100090001), v5).u32[0];
  v7[0] = v5;
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentVectors(this, v7);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentVectors(this, v7);
  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentVectors(this, v7);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideTopology(uint64_t result, char *a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    result = (*(*result + 32))(result);
    v4 = *a2;
    if ((*a2 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = (*(*v3 + 40))(v3);
  v4 = *a2;
  if ((*a2 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = (*(*v3 + 48))(v3);
  v4 = *a2;
  if ((*a2 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = (*(*v3 + 56))(v3);
  v4 = *a2;
  if ((*a2 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  result = (*(*v3 + 64))(v3);
  if ((*a2 & 0x20) != 0)
  {
LABEL_7:
    result = (*(*v3 + 72))(v3);
  }

LABEL_8:
  if (*(v3 + 28))
  {
    v5 = 6;
  }

  else
  {
    v5 = 4;
  }

  if (*(*(v3 + 8) + 20) > v5)
  {
    v5 = *(*(v3 + 8) + 20);
  }

  *(*(v3 + 16) + 20) = v5;
  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideFVarChannels(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  if (((*(*(this + 1) + 464) - *(*(this + 1) + 456)) >> 3) >= 1)
  {
    operator new();
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseChildComponentIndices(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 8);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(this + 57);
    do
    {
      if (*(v5 + v4))
      {
        *(*(this + 30) + 4 * v4) = 2;
        v3 = *(v2 + 8);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseEdgeChildren(this);
  v6 = *(*this + 24);

  return v6(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentChildIndices(uint64_t this)
{
  v1 = *(this + 36);
  *(this + 64) = 0;
  v2 = *(this + 120);
  v3 = *(this + 128) - v2;
  v4 = v3 >> 2;
  if (v1 == 1)
  {
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = vdupq_n_s64(((v3 >> 2) & 0x7FFFFFFF) - 1);
      v7 = xmmword_1E3049640;
      v8 = xmmword_1E3049620;
      v9 = v2 + 2;
      v10 = vdupq_n_s64(4uLL);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v6, v8));
        if (vuzp1_s16(v11, *v6.i8).u8[0])
        {
          *(v9 - 2) = v5;
        }

        if (vuzp1_s16(v11, *&v6).i8[2])
        {
          *(v9 - 1) = v5 + 1;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
        {
          *v9 = v5 + 2;
          v9[1] = v5 + 3;
        }

        v5 += 4;
        v7 = vaddq_s64(v7, v10);
        v8 = vaddq_s64(v8, v10);
        v9 += 4;
      }

      while (((v4 + 3) & 0xFFFFFFFC) != v5);
    }

    *(this + 40) = v4;
    *(this + 68) = 0;
    v12 = *(this + 144);
    v13 = *(this + 152) - v12;
    v14 = v13 >> 2;
    if ((v13 >> 2) >= 1)
    {
      v15 = 0;
      v16 = vdupq_n_s64(((v13 >> 2) & 0x7FFFFFFF) - 1);
      v17 = xmmword_1E3049640;
      v18 = xmmword_1E3049620;
      v19 = (v12 + 8);
      v20 = vdupq_n_s64(4uLL);
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v16, v18));
        if (vuzp1_s16(v21, *v16.i8).u8[0])
        {
          *(v19 - 2) = v15;
        }

        if (vuzp1_s16(v21, *&v16).i8[2])
        {
          *(v19 - 1) = v15 + 1;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v17))).i32[1])
        {
          *v19 = v15 + 2;
          v19[1] = v15 + 3;
        }

        v15 += 4;
        v17 = vaddq_s64(v17, v20);
        v18 = vaddq_s64(v18, v20);
        v19 += 4;
      }

      while (((v14 + 3) & 0xFFFFFFFC) != v15);
    }

    *(this + 44) = v14;
    *(this + 72) = v14;
    v22 = *(this + 192);
    v23 = *(this + 200) - v22;
    v24 = v23 >> 2;
    if ((v23 >> 2) >= 1)
    {
      v25 = (v23 >> 2) & 0x7FFFFFFF;
      v26 = (v24 + 3) & 0xFFFFFFFC;
      v27 = vdupq_n_s64(v25 - 1);
      v28 = xmmword_1E3049640;
      v29 = xmmword_1E3049620;
      v30 = (v22 + 8);
      v31 = vdupq_n_s64(4uLL);
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v27, v29));
        if (vuzp1_s16(v32, *v27.i8).u8[0])
        {
          *(v30 - 2) = v14;
        }

        if (vuzp1_s16(v32, *&v27).i8[2])
        {
          *(v30 - 1) = v14 + 1;
        }

        if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v28))).i32[1])
        {
          *v30 = v14 + 2;
          v30[1] = v14 + 3;
        }

        v28 = vaddq_s64(v28, v31);
        v29 = vaddq_s64(v29, v31);
        LODWORD(v14) = v14 + 4;
        v30 += 4;
        v26 -= 4;
      }

      while (v26);
    }

    *(this + 48) = v24;
    if (*(this + 37) == 1)
    {
      *(this + 76) = 0;
      v33 = *(this + 168);
      v34 = *(this + 176) - v33;
      v35 = v34 >> 2;
      if ((v34 >> 2) < 1)
      {
        v43 = 0;
      }

      else
      {
        v36 = 0;
        v37 = vdupq_n_s64(((v34 >> 2) & 0x7FFFFFFF) - 1);
        v38 = xmmword_1E3049640;
        v39 = xmmword_1E3049620;
        v40 = (v33 + 8);
        v41 = vdupq_n_s64(4uLL);
        do
        {
          v42 = vmovn_s64(vcgeq_u64(v37, v39));
          if (vuzp1_s16(v42, *v37.i8).u8[0])
          {
            *(v40 - 2) = v36;
          }

          if (vuzp1_s16(v42, *&v37).i8[2])
          {
            *(v40 - 1) = v36 + 1;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v38))).i32[1])
          {
            *v40 = v36 + 2;
            v40[1] = v36 + 3;
          }

          v36 += 4;
          v38 = vaddq_s64(v38, v41);
          v39 = vaddq_s64(v39, v41);
          v40 += 4;
        }

        while (((v35 + 3) & 0xFFFFFFFC) != v36);
        v43 = *(this + 76);
      }

      *(this + 52) = v35;
      v81 = v43 + v35;
      *(this + 80) = v81;
      v82 = *(this + 216);
      v83 = *(this + 224) - v82;
      v84 = v83 >> 2;
      if ((v83 >> 2) >= 1)
      {
        v85 = (v83 >> 2) & 0x7FFFFFFF;
        v86 = (v84 + 3) & 0xFFFFFFFC;
        v87 = vdupq_n_s64(v85 - 1);
        v88 = xmmword_1E3049640;
        v89 = xmmword_1E3049620;
        v90 = (v82 + 8);
        v91 = vdupq_n_s64(4uLL);
        do
        {
          v92 = vmovn_s64(vcgeq_u64(v87, v89));
          if (vuzp1_s16(v92, *v87.i8).u8[0])
          {
            *(v90 - 2) = v81;
          }

          if (vuzp1_s16(v92, *&v87).i8[2])
          {
            *(v90 - 1) = v81 + 1;
          }

          if (vuzp1_s16(*&v87, vmovn_s64(vcgeq_u64(v87, *&v88))).i32[1])
          {
            *v90 = v81 + 2;
            v90[1] = v81 + 3;
          }

          v88 = vaddq_s64(v88, v91);
          v89 = vaddq_s64(v89, v91);
          v81 += 4;
          v90 += 4;
          v86 -= 4;
        }

        while (v86);
        v81 = *(this + 80);
      }

      *(this + 56) = v84;
      v93 = v81 + v84;
      *(this + 84) = v93;
      v94 = *(this + 240);
      v95 = *(this + 248) - v94;
      v96 = v95 >> 2;
      if ((v95 >> 2) >= 1)
      {
        v97 = (v95 >> 2) & 0x7FFFFFFF;
        v98 = (v96 + 3) & 0xFFFFFFFC;
        v99 = vdupq_n_s64(v97 - 1);
        v100 = xmmword_1E3049640;
        v101 = xmmword_1E3049620;
        v102 = (v94 + 8);
        v103 = vdupq_n_s64(4uLL);
        do
        {
          v104 = vmovn_s64(vcgeq_u64(v99, v101));
          if (vuzp1_s16(v104, *v99.i8).u8[0])
          {
            *(v102 - 2) = v93;
          }

          if (vuzp1_s16(v104, *&v99).i8[2])
          {
            *(v102 - 1) = v93 + 1;
          }

          if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, *&v100))).i32[1])
          {
            *v102 = v93 + 2;
            v102[1] = v93 + 3;
          }

          v100 = vaddq_s64(v100, v103);
          v101 = vaddq_s64(v101, v103);
          v93 += 4;
          v102 += 4;
          v98 -= 4;
        }

        while (v98);
      }

      *(this + 60) = v96;
    }

    else
    {
      *(this + 84) = 0;
      v47 = *(this + 240);
      v48 = *(this + 248) - v47;
      v49 = v48 >> 2;
      if ((v48 >> 2) < 1)
      {
        v57 = 0;
      }

      else
      {
        v50 = 0;
        v51 = vdupq_n_s64(((v48 >> 2) & 0x7FFFFFFF) - 1);
        v52 = xmmword_1E3049640;
        v53 = xmmword_1E3049620;
        v54 = (v47 + 8);
        v55 = vdupq_n_s64(4uLL);
        do
        {
          v56 = vmovn_s64(vcgeq_u64(v51, v53));
          if (vuzp1_s16(v56, *v51.i8).u8[0])
          {
            *(v54 - 2) = v50;
          }

          if (vuzp1_s16(v56, *&v51).i8[2])
          {
            *(v54 - 1) = v50 + 1;
          }

          if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, *&v52))).i32[1])
          {
            *v54 = v50 + 2;
            v54[1] = v50 + 3;
          }

          v50 += 4;
          v52 = vaddq_s64(v52, v55);
          v53 = vaddq_s64(v53, v55);
          v54 += 4;
        }

        while (((v49 + 3) & 0xFFFFFFFC) != v50);
        v57 = *(this + 84);
      }

      *(this + 60) = v49;
      v105 = v57 + v49;
      *(this + 76) = v105;
      v106 = *(this + 168);
      v107 = *(this + 176) - v106;
      v108 = v107 >> 2;
      if ((v107 >> 2) >= 1)
      {
        v109 = (v107 >> 2) & 0x7FFFFFFF;
        v110 = (v108 + 3) & 0xFFFFFFFC;
        v111 = vdupq_n_s64(v109 - 1);
        v112 = xmmword_1E3049640;
        v113 = xmmword_1E3049620;
        v114 = (v106 + 8);
        v115 = vdupq_n_s64(4uLL);
        do
        {
          v116 = vmovn_s64(vcgeq_u64(v111, v113));
          if (vuzp1_s16(v116, *v111.i8).u8[0])
          {
            *(v114 - 2) = v105;
          }

          if (vuzp1_s16(v116, *&v111).i8[2])
          {
            *(v114 - 1) = v105 + 1;
          }

          if (vuzp1_s16(*&v111, vmovn_s64(vcgeq_u64(v111, *&v112))).i32[1])
          {
            *v114 = v105 + 2;
            v114[1] = v105 + 3;
          }

          v112 = vaddq_s64(v112, v115);
          v113 = vaddq_s64(v113, v115);
          v105 += 4;
          v114 += 4;
          v110 -= 4;
        }

        while (v110);
        v105 = *(this + 76);
      }

      *(this + 52) = v108;
      v117 = v105 + v108;
      *(this + 80) = v117;
      v118 = *(this + 216);
      v119 = *(this + 224) - v118;
      v120 = v119 >> 2;
      if ((v119 >> 2) >= 1)
      {
        v121 = (v119 >> 2) & 0x7FFFFFFF;
        v122 = (v120 + 3) & 0xFFFFFFFC;
        v123 = vdupq_n_s64(v121 - 1);
        v124 = xmmword_1E3049640;
        v125 = xmmword_1E3049620;
        v126 = (v118 + 8);
        v127 = vdupq_n_s64(4uLL);
        do
        {
          v128 = vmovn_s64(vcgeq_u64(v123, v125));
          if (vuzp1_s16(v128, *v123.i8).u8[0])
          {
            *(v126 - 2) = v117;
          }

          if (vuzp1_s16(v128, *&v123).i8[2])
          {
            *(v126 - 1) = v117 + 1;
          }

          if (vuzp1_s16(*&v123, vmovn_s64(vcgeq_u64(v123, *&v124))).i32[1])
          {
            *v126 = v117 + 2;
            v126[1] = v117 + 3;
          }

          v124 = vaddq_s64(v124, v127);
          v125 = vaddq_s64(v125, v127);
          v117 += 4;
          v126 += 4;
          v122 -= 4;
        }

        while (v122);
      }

      *(this + 56) = v120;
    }
  }

  else
  {
    if (v4 < 1)
    {
      v46 = 0;
    }

    else
    {
      v44 = 0;
      v45 = (v3 >> 2) & 0x7FFFFFFF;
      do
      {
        if (*v2)
        {
          v46 = v44 + 1;
        }

        else
        {
          v46 = v44;
        }

        if (!*v2)
        {
          v44 = -1;
        }

        *v2++ = v44;
        v44 = v46;
        --v45;
      }

      while (v45);
    }

    *(this + 40) = v46;
    *(this + 68) = 0;
    v58 = *(this + 144);
    v59 = *(this + 152) - v58;
    if ((v59 >> 2) < 1)
    {
      v62 = 0;
    }

    else
    {
      v60 = 0;
      v61 = (v59 >> 2) & 0x7FFFFFFF;
      do
      {
        if (*v58)
        {
          v62 = v60 + 1;
        }

        else
        {
          v62 = v60;
        }

        if (!*v58)
        {
          v60 = -1;
        }

        *v58++ = v60;
        v60 = v62;
        --v61;
      }

      while (v61);
    }

    *(this + 44) = v62;
    *(this + 72) = v62;
    v63 = *(this + 192);
    v64 = *(this + 200) - v63;
    if ((v64 >> 2) < 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = 0;
      v66 = (v64 >> 2) & 0x7FFFFFFF;
      do
      {
        v67 = v65 + v62;
        if (*v63)
        {
          ++v65;
          v68 = v67;
        }

        else
        {
          v68 = -1;
        }

        *v63++ = v68;
        --v66;
      }

      while (v66);
    }

    *(this + 48) = v65;
    if (*(this + 37) == 1)
    {
      *(this + 76) = 0;
      v69 = *(this + 168);
      v70 = *(this + 176) - v69;
      if ((v70 >> 2) < 1)
      {
        v74 = 0;
        v71 = 0;
      }

      else
      {
        v71 = 0;
        v72 = (v70 >> 2) & 0x7FFFFFFF;
        do
        {
          if (*v69)
          {
            v73 = v71;
          }

          else
          {
            v73 = -1;
          }

          if (*v69)
          {
            ++v71;
          }

          *v69++ = v73;
          --v72;
        }

        while (v72);
        v74 = *(this + 76);
      }

      *(this + 52) = v71;
      v129 = v71 + v74;
      *(this + 80) = v129;
      v130 = *(this + 216);
      v131 = *(this + 224) - v130;
      if ((v131 >> 2) < 1)
      {
        v132 = 0;
      }

      else
      {
        v132 = 0;
        v133 = (v131 >> 2) & 0x7FFFFFFF;
        do
        {
          v134 = v132 + v129;
          if (*v130)
          {
            ++v132;
            v135 = v134;
          }

          else
          {
            v135 = -1;
          }

          *v130++ = v135;
          --v133;
        }

        while (v133);
        v129 = *(this + 80);
      }

      *(this + 56) = v132;
      v143 = v132 + v129;
      *(this + 84) = v143;
      v144 = *(this + 240);
      v145 = *(this + 248) - v144;
      if ((v145 >> 2) < 1)
      {
        v146 = 0;
      }

      else
      {
        v146 = 0;
        v147 = (v145 >> 2) & 0x7FFFFFFF;
        do
        {
          v148 = v146 + v143;
          if (*v144)
          {
            ++v146;
            v149 = v148;
          }

          else
          {
            v149 = -1;
          }

          *v144++ = v149;
          --v147;
        }

        while (v147);
      }

      *(this + 60) = v146;
    }

    else
    {
      *(this + 84) = 0;
      v75 = *(this + 240);
      v76 = *(this + 248) - v75;
      if ((v76 >> 2) < 1)
      {
        v80 = 0;
        v77 = 0;
      }

      else
      {
        v77 = 0;
        v78 = (v76 >> 2) & 0x7FFFFFFF;
        do
        {
          if (*v75)
          {
            v79 = v77;
          }

          else
          {
            v79 = -1;
          }

          if (*v75)
          {
            ++v77;
          }

          *v75++ = v79;
          --v78;
        }

        while (v78);
        v80 = *(this + 84);
      }

      *(this + 60) = v77;
      v136 = v77 + v80;
      *(this + 76) = v136;
      v137 = *(this + 168);
      v138 = *(this + 176) - v137;
      if ((v138 >> 2) < 1)
      {
        v139 = 0;
      }

      else
      {
        v139 = 0;
        v140 = (v138 >> 2) & 0x7FFFFFFF;
        do
        {
          v141 = v139 + v136;
          if (*v137)
          {
            ++v139;
            v142 = v141;
          }

          else
          {
            v142 = -1;
          }

          *v137++ = v142;
          --v140;
        }

        while (v140);
        v136 = *(this + 76);
      }

      *(this + 52) = v139;
      v150 = v139 + v136;
      *(this + 80) = v150;
      v151 = *(this + 216);
      v152 = *(this + 224) - v151;
      if ((v152 >> 2) < 1)
      {
        v153 = 0;
      }

      else
      {
        v153 = 0;
        v154 = (v152 >> 2) & 0x7FFFFFFF;
        do
        {
          v155 = v153 + v150;
          if (*v151)
          {
            ++v153;
            v156 = v155;
          }

          else
          {
            v156 = -1;
          }

          *v151++ = v156;
          --v154;
        }

        while (v154);
      }

      *(this + 56) = v153;
    }
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentVectors(std::vector<int> *a1, _BYTE *a2)
{
  v4 = *a1->__end_cap_.__value_;
  begin = a1[14].__begin_;
  v6 = (a1[14].__end_ - begin);
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(&a1[14], v8);
    v4 = *a1->__end_cap_.__value_;
  }

  else if (!v7)
  {
    a1[14].__end_ = (begin + v4);
  }

  std::vector<unsigned int>::resize(a1 + 11, v4);

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentFromParentFaces(a1, a2);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentVectors(std::vector<int> *a1, _BYTE *a2)
{
  v4 = a1->__end_cap_.__value_[1];
  begin = a1[15].__begin_;
  v6 = (a1[15].__end_ - begin);
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(&a1[15], v8);
    v4 = a1->__end_cap_.__value_[1];
  }

  else if (!v7)
  {
    a1[15].__end_ = (begin + v4);
  }

  std::vector<unsigned int>::resize(a1 + 12, v4);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentFaces(a1, a2);

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentEdges(a1, a2);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentVectors(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(a1 + 16) + 8);
  v5 = *(a1 + 384);
  v6 = *(a1 + 392) - v5;
  if (*(a1 + 36) == 1)
  {
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v4 > v6)
    {
      v9 = (a1 + 384);
      v10 = a2;
LABEL_6:
      std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(v9, v8, v10);
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v4 > v6)
    {
      v9 = (a1 + 384);
      v10 = a2 + 4;
      goto LABEL_6;
    }
  }

  if (!v7)
  {
    *(a1 + 392) = v5 + v4;
  }

LABEL_9:
  std::vector<unsigned int>::resize((a1 + 312), *(*(a1 + 16) + 8));
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentFaces(a1, a2);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentEdges(a1, a2);

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentVertices(a1, a2);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentFromParentFaces(uint64_t result, _BYTE *a2)
{
  v2 = **(result + 8);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      LODWORD(v4) = *(result + 64);
      do
      {
        v5 = *(*(result + 88) + 8 * v3);
        if (v5 == 4)
        {
          *(*(result + 336) + v4) = *a2;
          v6 = v4 + 1;
          *(*(result + 336) + v6) = a2[1];
          v7 = v4 + 2;
          *(*(result + 336) + v7) = a2[2];
          v8 = v4 + 3;
          *(*(result + 336) + v8) = a2[3];
          v9 = *(result + 264);
          *(v9 + 4 * v4) = v3;
          *(v9 + 4 * v6) = v3;
          *(v9 + 4 * v7) = v3;
          *(v9 + 4 * v8) = v3;
          LODWORD(v4) = v4 + 4;
        }

        else if (v5 >= 1)
        {
          v10 = 0;
          v4 = v4;
          do
          {
            if (v5 <= 4)
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }

            *(*(result + 336) + v4) = a2[v11];
            *(*(result + 264) + 4 * v4++) = v3;
            ++v10;
          }

          while (v5 != v10);
        }

        ++v3;
      }

      while (v3 < **(result + 8));
    }
  }

  else if (v2 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = (*(result + 88) + 8 * v12);
      v14 = *v13;
      v15 = (*(result + 120) + 4 * v13[1]);
      if ((*(*(result + 408) + v12) & 1) != 0 && v14 == 4)
      {
        *(*(result + 336) + *v15) = *a2;
        *(*(result + 336) + v15[1]) = a2[1];
        *(*(result + 336) + v15[2]) = a2[2];
        *(*(result + 336) + v15[3]) = a2[3];
        v21 = *(result + 264);
        *(v21 + 4 * *v15) = v12;
        *(v21 + 4 * v15[1]) = v12;
        *(v21 + 4 * v15[2]) = v12;
        *(v21 + 4 * v15[3]) = v12;
      }

      else if (v14 >= 1)
      {
        v17 = 0;
        v18 = &a2[4 * !(*(*(result + 408) + v12) & 1)];
        do
        {
          v19 = v15[v17];
          if (v19 != -1)
          {
            if (v14 <= 4)
            {
              v20 = v17;
            }

            else
            {
              v20 = 0;
            }

            *(*(result + 336) + v19) = v18[v20];
            *(*(result + 264) + 4 * v15[v17]) = v12;
          }

          ++v17;
        }

        while (v14 != v17);
      }

      ++v12;
    }

    while (v12 < **(result + 8));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentFaces(uint64_t result, _BYTE *a2)
{
  v2 = **(result + 8);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      LODWORD(v4) = *(result + 68);
      do
      {
        v5 = *(*(result + 104) + 8 * v3);
        if (v5 == 4)
        {
          *(*(result + 360) + v4) = *a2;
          v6 = v4 + 1;
          *(*(result + 360) + v6) = a2[1];
          v7 = v4 + 2;
          *(*(result + 360) + v7) = a2[2];
          v8 = v4 + 3;
          *(*(result + 360) + v8) = a2[3];
          v9 = *(result + 288);
          *(v9 + 4 * v4) = v3;
          *(v9 + 4 * v6) = v3;
          *(v9 + 4 * v7) = v3;
          *(v9 + 4 * v8) = v3;
          LODWORD(v4) = v4 + 4;
        }

        else if (v5 >= 1)
        {
          v10 = 0;
          v4 = v4;
          do
          {
            if (v5 <= 4)
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }

            *(*(result + 360) + v4) = a2[v11];
            *(*(result + 288) + 4 * v4++) = v3;
            ++v10;
          }

          while (v5 != v10);
        }

        ++v3;
      }

      while (v3 < **(result + 8));
    }
  }

  else if (v2 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = (*(result + 104) + 8 * v12);
      v14 = *v13;
      v15 = (*(result + 144) + 4 * v13[1]);
      if ((*(*(result + 408) + v12) & 1) != 0 && v14 == 4)
      {
        *(*(result + 360) + *v15) = *a2;
        *(*(result + 360) + v15[1]) = a2[1];
        *(*(result + 360) + v15[2]) = a2[2];
        *(*(result + 360) + v15[3]) = a2[3];
        v21 = *(result + 288);
        *(v21 + 4 * *v15) = v12;
        *(v21 + 4 * v15[1]) = v12;
        *(v21 + 4 * v15[2]) = v12;
        *(v21 + 4 * v15[3]) = v12;
      }

      else if (v14 >= 1)
      {
        v17 = 0;
        v18 = &a2[4 * !(*(*(result + 408) + v12) & 1)];
        do
        {
          v19 = v15[v17];
          if (v19 != -1)
          {
            if (v14 <= 4)
            {
              v20 = v17;
            }

            else
            {
              v20 = 0;
            }

            *(*(result + 360) + v19) = v18[v20];
            *(*(result + 288) + 4 * v15[v17]) = v12;
          }

          ++v17;
        }

        while (v14 != v17);
      }

      ++v12;
    }

    while (v12 < **(result + 8));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentEdges(uint64_t result, _BYTE *a2)
{
  v2 = *(*(result + 8) + 4);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      v4 = *(result + 72);
      do
      {
        *(*(result + 360) + v4) = *a2;
        *(*(result + 360) + v4 + 1) = a2[1];
        v5 = (*(result + 288) + 4 * v4);
        *v5 = v3;
        v5[1] = v3++;
        v4 += 2;
      }

      while (v3 < *(*(result + 8) + 4));
    }
  }

  else if (v2 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = (*(result + 192) + 8 * v6);
      if (*(*(result + 432) + v6))
      {
        *(*(result + 360) + *v7) = *a2;
        *(*(result + 360) + v7[1]) = a2[1];
        v12 = *(result + 288);
        *(v12 + 4 * *v7) = v6;
        *(v12 + 4 * v7[1]) = v6;
      }

      else
      {
        v8 = 0;
        v9 = 1;
        do
        {
          v10 = v9;
          v11 = v7[v8];
          if (v11 != -1)
          {
            *(*(result + 360) + v11) = a2[v8 + 4];
            *(*(result + 288) + 4 * v7[v8]) = v6;
          }

          v9 = 0;
          v8 = 1;
        }

        while ((v10 & 1) != 0);
      }

      ++v6;
    }

    while (v6 < *(*(result + 8) + 4));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentFaces(uint64_t result, _BYTE *a2)
{
  if (*(result + 52))
  {
    v2 = *(result + 8);
    v3 = *v2;
    if (*(result + 36))
    {
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = *(result + 312) + 4 * *(result + 76);
        do
        {
          *(v5 + 4 * v4) = v4;
          ++v4;
        }

        while (v4 < *v2);
      }
    }

    else if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v7 = *(*(result + 168) + 4 * i);
        if (v7 != -1)
        {
          if (*(*(result + 408) + i))
          {
            *(*(result + 384) + v7) = *a2;
            v2 = *(result + 8);
          }

          *(*(result + 312) + 4 * v7) = i;
          v3 = *v2;
        }
      }
    }
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentEdges(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 4);
  if (*(result + 36))
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(result + 312) + 4 * *(result + 80);
      do
      {
        *(v5 + 4 * v4) = v4;
        ++v4;
      }

      while (v4 < *(v2 + 4));
    }
  }

  else if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(result + 216) + 4 * v6);
      if (v7 != -1)
      {
        if (*(*(result + 432) + v6))
        {
          *(*(result + 384) + v7) = *a2;
          v2 = *(result + 8);
        }

        *(*(result + 312) + 4 * v7) = v6;
      }

      ++v6;
    }

    while (v6 < *(v2 + 4));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentVertices(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 8);
  if (*(result + 36))
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(result + 312) + 4 * *(result + 84);
      do
      {
        *(v5 + 4 * v4) = v4;
        ++v4;
      }

      while (v4 < *(v2 + 8));
    }
  }

  else if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(result + 240) + 4 * v6);
      if (v7 != -1)
      {
        if (*(*(result + 456) + v6))
        {
          *(*(result + 384) + v7) = *a2;
          v2 = *(result + 8);
        }

        *(*(result + 312) + 4 * v7) = v6;
      }

      ++v6;
    }

    while (v6 < *(v2 + 8));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagVectors(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 12);
  v4 = *v2;
  v5 = *(v2 + 13) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 13) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(v2 + 12, v4 - v5);
  }

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagsFromParentFaces(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagVectors(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 240);
  v4 = *(v2 + 4);
  v5 = *(v2 + 248) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 248) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::ETag>::__append((v2 + 240), v4 - v5);
  }

  v6 = *(this + 11);
  if (v6 >= 1)
  {
    v7 = *(this + 17);
    v8 = v7 + v6;
    do
    {
      *(*(*(this + 2) + 240) + v7++) = 0;
    }

    while (v7 < v8);
  }

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagsFromParentEdges(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagVectors(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize((*(this + 2) + 432), *(*(this + 2) + 8));
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentFaces(this);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentEdges(this);
  result = OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentVertices(this);
  if ((*(this + 36) & 1) == 0)
  {
    v3 = *(this + 2);
    if (*(v3 + 8) >= 1)
    {
      v4 = 0;
      do
      {
        if (*(*(this + 48) + v4))
        {
          *(*(v3 + 432) + 2 * v4) |= 0x800u;
          v3 = *(this + 2);
        }

        ++v4;
      }

      while (v4 < *(v3 + 8));
    }
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagsFromParentFaces(uint64_t this)
{
  v1 = *(this + 40);
  if (v1 >= 1)
  {
    v2 = *(this + 64);
    v3 = v2 + v1;
    do
    {
      *(*(*(this + 16) + 96) + v2) = *(*(*(this + 8) + 96) + *(*(this + 264) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagsFromParentEdges(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 >= 1)
  {
    v2 = *(this + 72);
    v3 = v2 + v1;
    do
    {
      *(*(*(this + 16) + 240) + v2) = *(*(*(this + 8) + 240) + *(*(this + 288) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentFaces(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    v2 = *(this + 76);
    v3 = v2 + v1;
    if (*(*(this + 8) + 12) <= 0)
    {
      if (v1 >= 1)
      {
        do
        {
          *(*(*(this + 16) + 432) + 2 * v2) = 128;
          if (*(*(*(this + 8) + 24) + 8 * *(*(this + 312) + 4 * v2)) != *(this + 32))
          {
            *(*(*(this + 16) + 432) + 2 * v2) |= 2u;
          }

          ++v2;
        }

        while (v2 < v3);
      }
    }

    else if (v1 >= 1)
    {
      do
      {
        *(*(*(this + 16) + 432) + 2 * v2++) = 128;
      }

      while (v2 < v3);
    }
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentEdges(void *this)
{
  v1 = this[1];
  if (*(v1 + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(this[27] + 4 * v2);
      if (v4 != -1)
      {
        v5 = *(*(v1 + 240) + v2);
        v6 = v5 >> 3;
        v7 = v5 >> 1;
        v8 = v5 & 1;
        v9 = v3 & 0xFFFF883A;
        v10 = v5 >> 2;
        v11 = (v5 << 12) & (v8 << 14);
        if ((v5 & 0xC) != 0)
        {
          v12 = 512;
        }

        else
        {
          v12 = 128;
        }

        v3 = v9 & 0xFFFFCFBB | (4 * (v7 & 1)) & 0xBF | ((v6 & 1) << 6) | v12 & 0xFFFFCFFF | ((v10 & 1) << 12) & 0xDFFF | ((v10 & 1) << 13) | v11 | v8;
        *(*(this[2] + 432) + 2 * v4) = v3;
        v1 = this[1];
      }

      ++v2;
    }

    while (v2 < *(v1 + 4));
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentVertices(uint64_t this)
{
  v1 = *(this + 60);
  if (v1 >= 1)
  {
    v2 = *(this + 84);
    v3 = v2 + v1;
    do
    {
      *(*(*(this + 16) + 432) + 2 * v2) = *(*(*(this + 8) + 432) + 2 * *(*(this + 312) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideEdgeSharpness(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = *(this + 6);
  v2 = v27;
  v3 = *(this + 2);
  v4 = v3[27];
  v3 += 27;
  v3[1] = v4;
  std::vector<float>::resize(v3, *(v3 - 53));
  v28 = &v30;
  v29 = 0x1000000000;
  __p = 0;
  v5 = v2 & 0x60;
  if (v5 && (v6 = *(*(this + 1) + 20), v6 >= 0x11))
  {
    operator delete(0);
    v7 = operator new(4 * v6);
    __p = v7;
    v28 = v7;
    HIDWORD(v29) = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 12);
  if (v8 >= 1)
  {
    v9 = *(this + 18);
    v10 = v9 + v8;
    while (1)
    {
      v11 = *(this + 2);
      v12 = *(v11 + 216);
      v13 = *(v11 + 240);
      if ((*(v13 + v9) & 4) != 0)
      {
        goto LABEL_20;
      }

      if ((*(v13 + v9) & 8) != 0)
      {
        break;
      }

LABEL_23:
      if (++v9 >= v10)
      {
        v7 = __p;
        goto LABEL_25;
      }
    }

    v14 = *(*(this + 36) + 4 * v9);
    v15 = *(this + 1);
    v16 = v15[27];
    v17 = *(v16 + 4 * v14);
    if (v5)
    {
      v18 = *(v15[15] + 8 * v14 + 4 * ((*(*(this + 45) + v9) >> 3) & 3));
      v19 = v15[42];
      v20 = *(v19 + 8 * v18);
      v21 = v28;
      if (v20 >= 1)
      {
        v22 = (v15[45] + 4 * *(v19 + 8 * v18 + 4));
        v23 = v28;
        v24 = v20;
        do
        {
          v25 = *v22++;
          *v23++ = *(v16 + 4 * v25);
          --v24;
        }

        while (v24);
      }

      v26 = OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessAtVertex(&v27, v17, v20, v21);
      goto LABEL_14;
    }

    if (v17 <= 0.0)
    {
      goto LABEL_21;
    }

    if (v17 < 10.0)
    {
      if (v17 <= 1.0)
      {
LABEL_21:
        *(v12 + 4 * v9) = 0;
      }

      else
      {
        v26 = v17 + -1.0;
LABEL_14:
        *(v12 + 4 * v9) = v26;
        if (v26 > 0.0)
        {
          goto LABEL_23;
        }
      }

      *(v13 + v9) &= ~8u;
      goto LABEL_23;
    }

LABEL_20:
    *(v12 + 4 * v9) = 1092616192;
    goto LABEL_23;
  }

LABEL_25:
  operator delete(v7);
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideVertexSharpness(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 2);
  *(v2 + 416) = *(v2 + 408);
  std::vector<float>::resize((v2 + 408), *(v2 + 8));
  v3 = *(this + 15);
  if (v3 >= 1)
  {
    v4 = *(this + 21);
    v5 = v4 + v3;
    while (1)
    {
      v6 = *(this + 2);
      v7 = *(v6 + 408);
      v8 = *(v6 + 432);
      v9 = *(v8 + 2 * v4);
      if ((v9 & 0x10) != 0)
      {
        goto LABEL_10;
      }

      if ((v9 & 0x20) != 0)
      {
        break;
      }

LABEL_13:
      if (++v4 >= v5)
      {
        return;
      }
    }

    v10 = *(*(*(this + 1) + 408) + 4 * *(*(this + 39) + 4 * v4));
    if (v10 <= 0.0)
    {
      goto LABEL_11;
    }

    if (v10 < 10.0)
    {
      if (v10 <= 1.0)
      {
LABEL_11:
        *(v7 + 4 * v4) = 0;
      }

      else
      {
        v11 = v10 + -1.0;
        *(v7 + 4 * v4) = v11;
        if (v11 > 0.0)
        {
          goto LABEL_13;
        }
      }

      *(v8 + 2 * v4) &= ~0x20u;
      goto LABEL_13;
    }

LABEL_10:
    *(v7 + 4 * v4) = 1092616192;
    goto LABEL_13;
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::reclassifySemisharpVertices(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = *(this + 80);
    v3 = v2 + v1;
    while (1)
    {
      v4 = *(this + 16);
      v5 = *(v4 + 432);
      v6 = *(v5 + 2 * v2);
      if ((v6 & 0x40) != 0)
      {
        break;
      }

LABEL_16:
      if (++v2 >= v3)
      {
        goto LABEL_17;
      }
    }

    v7 = (*(this + 192) + 8 * *(*(this + 312) + 4 * v2));
    if ((*(*(this + 384) + v2) & 1) == 0)
    {
      v8 = ((*(*(v4 + 240) + v7[1]) >> 3) & 1) + ((*(*(v4 + 240) + *v7) >> 3) & 1);
      v9 = v6 & 0xFFFFF83F | ((v8 != 0) << 6) | (128 << v8);
LABEL_15:
      *(v5 + 2 * v2) = v9;
      goto LABEL_16;
    }

    v10 = *v7;
    if (v10 == -1 || (*(*(v4 + 240) + v10) & 8) == 0)
    {
      v11 = v7[1];
      if (v11 == -1)
      {
        v13 = v6 & 0xF83F;
      }

      else
      {
        v12 = 8 * *(*(v4 + 240) + v11);
        v13 = v6 & 0xF83F;
        if ((v12 & 0x40) != 0)
        {
          v14 = v12 & 0x40;
          v15 = 512;
LABEL_14:
          LOWORD(v9) = v14 | v15 | v13;
          goto LABEL_15;
        }
      }

      v14 = 0;
      v15 = 128;
      goto LABEL_14;
    }

    v13 = v6 & 0xF83F;
    v15 = 512;
    v14 = 64;
    goto LABEL_14;
  }

LABEL_17:
  v16 = *(this + 60);
  if (v16 >= 1)
  {
    v17 = *(this + 84);
    v18 = v17 + v16;
    while (1)
    {
      v19 = *(*(this + 312) + 4 * v17);
      v20 = *(this + 8);
      v21 = *(v20[54] + 2 * v19);
      if ((v21 & 0x60) != 0)
      {
        v22 = *(this + 16);
        v23 = v22[54];
        v24 = *(v23 + 2 * v17);
        if ((v21 & 0x40) != 0 || (((v24 & 0x20) == 0) & (v21 >> 5)) != 0)
        {
          break;
        }
      }

LABEL_37:
      if (++v17 >= v18)
      {
        return this;
      }
    }

    v25 = v22[45];
    if (((v22[46] - v25) >> 2) < 1)
    {
      v32 = v20[42];
      v33 = *(v32 + 8 * v19);
      if (v33 >= 1)
      {
        v34 = *(v32 + 8 * v19 + 4);
        v35 = (v20[45] + 4 * v34);
        v36 = (v20[48] + 2 * v34);
        v29 = 0;
        v37 = v22[30];
        do
        {
          v38 = *v35++;
          v39 = *(this + 192) + 8 * v38;
          LODWORD(v38) = *v36++;
          v29 = vadd_s32(v29, (*&vshl_u32(vand_s8(vdup_n_s32(*(v37 + *(v39 + 4 * v38))), 0xFF000000FFLL), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
          --v33;
        }

        while (v33);
        goto LABEL_30;
      }
    }

    else
    {
      v26 = (v22[42] + 8 * v17);
      v27 = *v26;
      if (v27 >= 1)
      {
        v28 = (v25 + 4 * v26[1]);
        v29 = 0;
        v30 = v22[30];
        do
        {
          v31 = *v28++;
          v29 = vadd_s32(v29, (*&vshl_u32(vand_s8(vdup_n_s32(*(v30 + v31)), 0xFF000000FFLL), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
          --v27;
        }

        while (v27);
LABEL_30:
        v40 = v29.i32[0];
        v41 = (v29.i32[0] > 0) << 6;
        v42 = v29.i32[1];
        goto LABEL_32;
      }
    }

    v42 = 0;
    v40 = 0;
    v41 = 0;
LABEL_32:
    v43 = *(v23 + 2 * v17);
    v44 = v41 | v24 & 0xFFBF;
    *(v23 + 2 * v17) = v44;
    if ((v43 & 0x30) == 0)
    {
      v45 = v40 + v42;
      if (v45 <= 2)
      {
        v46 = ((1 << v45) & 0xF) << 7;
      }

      else
      {
        v46 = 1024;
      }

      *(v23 + 2 * v17) = v46 | v44 & 0xF84F;
    }

    goto LABEL_37;
  }

  return this;
}

void std::vector<float>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = *a1;
  v5 = &v3[-*a1] >> 2;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      a1[1] = v4 + 4 * a2;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v3) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v4;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v10);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = &v3[4 * v6];
    bzero(v3, 4 * v6);
    a1[1] = v11;
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseEdgeChildren(void *this)
{
  v1 = this[1];
  if (*(v1 + 4) >= 1)
  {
    for (i = 0; i < *(v1 + 4); ++i)
    {
      v3 = (this[24] + 8 * i);
      v4 = this[54];
      if (*(v4 + i))
      {
        v7 = 2;
        *v3 = 2;
      }

      else
      {
        v5 = (*(v1 + 120) + 8 * i);
        v6 = this[57];
        if (*(v6 + *v5))
        {
          *v3 = 1;
          *(this[27] + 4 * i) = 1;
        }

        if ((*(v6 + v5[1]) & 1) == 0)
        {
          goto LABEL_10;
        }

        v7 = 1;
      }

      v3[1] = v7;
      *(this[27] + 4 * i) = v7;
LABEL_10:
      v8 = *(v1 + 168);
      v9 = (*(v1 + 144) + 8 * i);
      v10 = *v9;
      v11 = (v8 + 4 * v9[1]);
      if (v10 == 2)
      {
        v12 = *(v4 + i) & 0xE1 | (2 * ((*(this[51] + v11[1]) ^ *(this[51] + *v11)) & 1));
      }

      else if (v10 > 1)
      {
        v14 = *v11;
        v13 = v11 + 1;
        v15 = *(this[51] + v14);
        v16 = *(v4 + i) & 0xE1;
        *(v4 + i) = v16;
        v17 = v10 - 1;
        while (1)
        {
          v18 = *v13++;
          if ((*(this[51] + v18) ^ v15))
          {
            break;
          }

          if (!--v17)
          {
            goto LABEL_20;
          }
        }

        v12 = v16 | 2;
      }

      else
      {
        v12 = *(v4 + i) & 0xE1;
      }

      *(v4 + i) = v12;
LABEL_20:
      v1 = this[1];
    }
  }

  return this;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v10 = &v4[a2];
      do
      {
        *v4++ &= 0xE0u;
        --v2;
      }

      while (v2);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = &v4[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v5 - *a1;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v11 = v6;
    v12 = &v6[a2];
    v13 = v11;
    do
    {
      *v13++ &= 0xE0u;
      --v2;
    }

    while (v2);
    v15 = *a1;
    v14 = *(a1 + 8);
    v16 = &v11[*a1 - v14];
    memcpy(v16, *a1, v14 - *a1);
    *a1 = v16;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 - v3 >= a2)
  {
    a1[1] = &v3[a2];
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = (v6 + a2);
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    a1[1] = v10;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::Error(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v7 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x2800uLL, v4, va);
  return printf("%s: %s\n", OpenSubdiv::v3_1_1::Far::Error(OpenSubdiv::v3_1_1::Far::ErrorType,char const*,...)::errorTypeLabel[v3], __str);
}

uint64_t OpenSubdiv::v3_1_1::Far::Warning(OpenSubdiv::v3_1_1::Far *this, const char *a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1EEE9AC00](this);
  v5 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x2800uLL, v2, va);
  return fprintf(*MEMORY[0x1E69E9858], "Warning: %s\n", __str);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::applyRefinement(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  *(*(this + 4) + 8) = *(*(this + 2) + 8);
  v2 = *(this + 2);
  v3 = *(this + 4);
  *(v3 + 12) = *(v2 + 12);
  *(v3 + 13) = *(v2 + 13);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::estimateAndAllocateChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::trimAndFinalizeChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateEdgeTags(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueTags(this);
  v4 = *(this + 4);
  if ((*(v4 + 13) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueCreases(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::reclassifySemisharpValues(this);
    v4 = *(this + 4);
  }

  if (*(v4 + 16) <= *(*(this + 3) + 8))
  {
    v6 = *(*v4 + 48);
    v7 = *(*v4 + 56) - v6;
    v8 = *(v4 + 24);

    return memcpy(v8, v6, (v7 << 30 >> 30) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::initializeFaceValuesFromVertexFaceSiblings(v4);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::estimateAndAllocateChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = *this;
  v3 = *(*this + 52);
  v4 = *(*this + 56);
  if (v4 >= 1)
  {
    v5 = *(v2 + 80);
    v6 = v5 + v4;
    do
    {
      v7 = *(*(v2 + 312) + 4 * v5);
      if (*(*(*(this + 2) + 48) + v7))
      {
        v8 = *(*(*(this + 1) + 144) + 8 * v7);
      }

      else
      {
        v8 = 1;
      }

      v3 += v8;
      ++v5;
    }

    while (v5 < v6);
  }

  v9 = *(v2 + 60);
  if (v9 >= 1)
  {
    v10 = *(v2 + 84);
    v11 = v10 + v9;
    v12 = *(v2 + 312);
    do
    {
      v3 += *(*(*(this + 2) + 72) + 2 * *(v12 + 4 * v10++));
    }

    while (v10 < v11);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeComponents(*(this + 4));
  v13 = *(this + 4);
  v14 = *(v13 + 168);
  v15 = *(v13 + 176) - v14;
  if (v3 <= v15)
  {
    if (v3 < v15)
    {
      *(v13 + 176) = v14 + v3;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append((v13 + 168), v3 - v15);
  }

  v16 = 0;
  std::vector<unsigned short>::resize(this + 5, v3, &v16);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  *(*(this + 4) + 16) = 0;
  if (*(*this + 37) == 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(this);

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(this);

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(this);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::trimAndFinalizeChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = *(this + 4);
  v3 = *(v2 + 168);
  v4 = *(v2 + 16);
  v5 = *(v2 + 176) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 176) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append((v2 + 168), v4 - v5);
    v2 = *(this + 4);
  }

  if ((*(v2 + 13) & 1) == 0)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize((v2 + 192), *(v2 + 16));
    v2 = *(this + 4);
  }

  std::vector<unsigned short>::resize(this + 5, *(v2 + 16));
  std::vector<unsigned int>::resize((*(this + 4) + 144), *(*(this + 4) + 16));
  v6 = *(this + 4);
  if (*(v6 + 16) >= 1)
  {
    v7 = 0;
    v8 = *(v6 + 144);
    do
    {
      *(v8 + 4 * v7) = v7;
      ++v7;
    }

    while (v7 < *(v6 + 16));
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateEdgeTags(void *this)
{
  LODWORD(v1) = *(*this + 44);
  if (v1 >= 1)
  {
    v2 = 0;
    do
    {
      *(*(this[4] + 48) + v2++) = 0;
    }

    while (v2 < *(*this + 44));
    LODWORD(v1) = *(*this + 44);
  }

  if (v1 < *(this[3] + 4))
  {
    v1 = v1;
    do
    {
      *(*(this[4] + 48) + v1) = *(*(this[2] + 48) + *(*(*this + 288) + 4 * v1));
      ++v1;
    }

    while (v1 < *(this[3] + 4));
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueTags(int **this)
{
  v2 = *this;
  v3 = (*this)[13];
  if (v3 >= 1)
  {
    v4 = v2[19];
    v5 = v3 + v4;
    v6 = *(*(this[4] + 12) + 4 * v4);
    do
    {
      *(*(this[4] + 21) + v6) = 0;
      ++v4;
      ++v6;
    }

    while (v4 < v5);
    v2 = *this;
  }

  v7 = v2[14];
  if (v7 >= 1)
  {
    v8 = v2[20];
    v9 = v8 + v7;
    if (*(this[2] + 13))
    {
      v10 = 1;
    }

    else
    {
      v10 = 9;
    }

    do
    {
      v11 = this[4];
      v12 = *(*(v11 + 9) + 2 * v8);
      v13 = *(*(v11 + 12) + 4 * v8);
      v14 = *(v11 + 21);
      if ((*(*(this[2] + 6) + *(*(*this + 39) + 4 * v8)) & 9) != 0)
      {
        if (v12)
        {
          memset((v14 + v13), v10, v12);
        }
      }

      else if (v12)
      {
        bzero((v14 + v13), v12);
      }

      ++v8;
    }

    while (v8 < v9);
    v2 = *this;
  }

  v15 = v2[15];
  if (v15 >= 1)
  {
    v16 = v2[21];
    v17 = v16 + v15;
    do
    {
      v18 = *(*(*this + 39) + 4 * v16);
      memcpy((*(this[4] + 21) + *(*(this[4] + 12) + 4 * v16++)), (*(this[2] + 21) + *(*(this[2] + 12) + 4 * v18)), *(*(this[2] + 9) + 2 * v18));
    }

    while (v16 < v17);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueCreases(void *this)
{
  v1 = *this;
  if (*(*this + 32) == 4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  v3 = *(v1 + 56);
  if (v3 >= 1)
  {
    v4 = *(v1 + 80);
    v5 = v4 + v3;
    v6 = this[4];
    v7 = v6[9];
    v8 = v6[12];
    v9 = v6[21];
    do
    {
      v10 = *(v8 + 4 * v4);
      v11 = (v9 + v10);
      if ((*(v9 + v10) & 1) != 0 && (*(*(v1 + 384) + v4) & 1) == 0)
      {
        v12 = *(v7 + 2 * v4);
        if (*(v7 + 2 * v4))
        {
          v13 = 0;
          v14 = (v6[24] + 4 * v10 + 2);
          do
          {
            v15 = *v11++;
            if ((v15 & 0x18) != 0)
            {
              *(v14 - 1) = v13;
              *v14 = v2 - 1 + v13;
            }

            v13 += v2;
            v14 += 2;
            --v12;
          }

          while (v12);
        }
      }

      ++v4;
    }

    while (v4 < v5);
  }

  v16 = *(v1 + 60);
  if (v16 >= 1)
  {
    v17 = *(v1 + 84);
    v18 = v17 + v16;
    do
    {
      v19 = this[4];
      v20 = *(v19[12] + 4 * v17);
      v21 = (v19[21] + v20);
      if ((*v21 & 1) != 0 && (*(*(*this + 384) + v17) & 1) == 0)
      {
        v22 = *(v19[9] + 2 * v17);
        if (*(v19[9] + 2 * v17))
        {
          v23 = (*(this[2] + 192) + 4 * *(*(this[2] + 96) + 4 * *(*(*this + 312) + 4 * v17)));
          v24 = (v19[24] + 4 * v20);
          do
          {
            v25 = *v21++;
            if ((v25 & 0x18) != 0)
            {
              *v24 = *v23;
            }

            ++v24;
            ++v23;
            --v22;
          }

          while (v22);
        }
      }

      ++v17;
    }

    while (v17 < v18);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::reclassifySemisharpValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = 0;
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 3) + 20);
  v45 = &v46;
  v4 = *(*(this + 2) + 14);
  __p = 0;
  if (v3 >= 0x11)
  {
    v2 = operator new(4 * v3);
    __p = v2;
    v45 = v2;
  }

  v5 = *(*this + 60);
  if (v5 >= 1)
  {
    v6 = *(*this + 84);
    v7 = v6 + v5;
    while (1)
    {
      v8 = *(this + 4);
      v9 = *(v8[12] + 4 * v6);
      v10 = (v8[21] + v9);
      if ((*v10 & 1) == 0)
      {
        goto LABEL_9;
      }

      v11 = *this;
      if (*(*(*this + 384) + v6))
      {
        goto LABEL_9;
      }

      v12 = *(*(v11 + 312) + 4 * v6);
      v13 = *(this + 1);
      if ((*(v13[54] + 2 * v12) & 0x60) == 0)
      {
        goto LABEL_9;
      }

      v14 = *(this + 3);
      v15 = *(v14[54] + 2 * v6);
      if ((v15 & 0x30) != 0)
      {
        goto LABEL_9;
      }

      v16 = *(v8[9] + 2 * v6);
      if ((v15 & 0x40) == 0)
      {
        if (*(v8[9] + 2 * v6))
        {
          do
          {
            if ((*v10 & 0x10) != 0)
            {
              *v10 = *v10 & 0xC7 | 8;
            }

            ++v10;
            --v16;
          }

          while (v16);
        }

        goto LABEL_9;
      }

      v17 = v8[24];
      v18 = v14[45];
      if (((v14[46] - v18) & 0x3FFFFFFFCLL) != 0)
      {
        v19 = *(v14[42] + 8 * v6);
        v20 = (v18 + 4 * *(v14[42] + 8 * v6 + 4));
      }

      else
      {
        v21 = v13[42];
        v19 = *(v21 + 8 * v12);
        v20 = v45;
        if (v19 >= 1)
        {
          v22 = 0;
          v23 = *(v21 + 8 * v12 + 4);
          v24 = v13[45] + 4 * v23;
          v25 = v13[48] + 2 * v23;
          v26 = *(v11 + 192);
          do
          {
            *(v45 + v22) = *(v26 + 8 * *(v24 + 4 * v22) + 4 * *(v25 + 2 * v22));
            ++v22;
          }

          while (v19 != v22);
        }
      }

      if (v16)
      {
        break;
      }

LABEL_9:
      if (++v6 >= v7)
      {
        v2 = __p;
        goto LABEL_51;
      }
    }

    v27 = 0;
    v28 = v17 + 4 * v9;
    while (1)
    {
      v29 = v10[v27];
      if ((v29 & 0x30) == 0x10)
      {
        v30 = (v28 + 4 * v27);
        v31 = *v30;
        v32 = v30[1];
        if (v32 <= v31)
        {
          if (v31 <= v32)
          {
            goto LABEL_41;
          }

          v36 = *(*(this + 3) + 240);
          if (v31 + 1 < v19)
          {
            v37 = v31 + 2;
            v38 = v20 + v31 + 1;
            do
            {
              v39 = *v38++;
              v40 = *(v36 + v39);
              if ((v40 & 8) != 0)
              {
                break;
              }
            }

            while (v37++ < v19);
            if ((v40 & 8) != 0)
            {
              goto LABEL_42;
            }
          }

          v42 = 0;
          do
          {
            v43 = *(v36 + *(v20 + v42));
            v35 = (v43 >> 3) & 1;
            if (v42 >= v32)
            {
              break;
            }

            ++v42;
          }

          while ((v43 & 8) == 0);
        }

        else
        {
          v33 = v31 + 1;
          do
          {
            v34 = *(*(*(this + 3) + 240) + *(v20 + v33));
            v35 = (v34 >> 3) & 1;
            if (v33 >= v32)
            {
              break;
            }

            ++v33;
          }

          while ((v34 & 8) == 0);
        }

        if ((v35 & 1) == 0)
        {
LABEL_41:
          v10[v27] = v29 & 0xC7 | 8;
        }
      }

LABEL_42:
      if (++v27 == v16)
      {
        if (v16 == 2 && (v4 & 1) != 0)
        {
          v44 = *v10;
          if ((*v10 & 0x20) != 0 && (v10[1] & 0x10) == 0)
          {
LABEL_50:
            *v10 = v44 & 0xDF;
          }

          else if ((*v10 & 0x10) == 0 && (v10[1] & 0x20) != 0)
          {
            v44 = *++v10;
            goto LABEL_50;
          }
        }

        goto LABEL_9;
      }
    }
  }

LABEL_51:
  operator delete(v2);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(void *this)
{
  v1 = *(*this + 52);
  if (v1 >= 1)
  {
    v2 = *(*this + 76);
    v3 = v2 + v1;
    v4 = this[4];
    v5 = *(v4 + 96);
    v6 = *(v4 + 72);
    v7 = *(v4 + 16);
    do
    {
      *(v5 + 4 * v2) = v7;
      *(v6 + 2 * v2) = 1;
      v7 = *(v4 + 16) + 1;
      *(v4 + 16) = v7;
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(void *this)
{
  v1 = *this;
  v2 = *(*this + 56);
  if (v2 >= 1)
  {
    v3 = *(v1 + 80);
    v4 = v3 + v2;
    v5 = *(v1 + 312);
    v6 = this[4];
    v7 = *(v6 + 96);
    v8 = *(this[2] + 48);
    v9 = *(v6 + 16);
    v10 = vdupq_n_s64(8uLL);
    v11 = *(v6 + 72);
    do
    {
      v12 = *(v5 + 4 * v3);
      *(v7 + 4 * v3) = v9;
      if (*(v8 + v12))
      {
        v14 = this[1];
        v15 = *(v14 + 144);
        v13 = *(v15 + 8 * v12);
        if (v13 != 1)
        {
          v16 = *(v14 + 168);
          v17 = *(v15 + 8 * v12 + 4);
          if (v13 >= 1)
          {
            v18 = 0;
            v19 = vdupq_n_s64(v13 - 1);
            v20 = (this[5] + 2 * v9 + 8);
            v21 = xmmword_1E3049620;
            v22 = xmmword_1E3049640;
            v23 = xmmword_1E3049660;
            v24 = xmmword_1E305F210;
            do
            {
              v25 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s8(vuzp1_s16(v25, 6), 6).u8[0])
              {
                *(v20 - 4) = v18;
              }

              if (vuzp1_s8(vuzp1_s16(v25, 6), 6).i8[1])
              {
                *(v20 - 3) = v18 | 1;
              }

              if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v19, *&v22))), 6).i8[2])
              {
                *(v20 - 2) = v18 | 2;
                *(v20 - 1) = v18 | 3;
              }

              v26 = vmovn_s64(vcgeq_u64(v19, v23));
              if (vuzp1_s8(6, vuzp1_s16(v26, 6)).i32[1])
              {
                *v20 = v18 | 4;
              }

              if (vuzp1_s8(6, vuzp1_s16(v26, 6)).i8[5])
              {
                v20[1] = v18 | 5;
              }

              if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v19, *&v24)))).i8[6])
              {
                v20[2] = v18 | 6;
                v20[3] = v18 | 7;
              }

              v18 += 8;
              v23 = vaddq_s64(v23, v10);
              v22 = vaddq_s64(v22, v10);
              v21 = vaddq_s64(v21, v10);
              v24 = vaddq_s64(v24, v10);
              v20 += 8;
            }

            while (((v13 + 7) & 0xFFFFFFF8) != v18);
          }

          v27 = *(*v6 + 264);
          v28 = *(v27 + 8 * v3);
          if (v28 >= 1)
          {
            v29 = 0;
            v30 = v16 + 4 * v17;
            v31 = (8 * v3) | 4;
            v32 = *(this[3] + 288) + 4 * *(*(this[3] + 264) + v31);
            v33 = *(v6 + 120) + 2 * *(v27 + v31);
            v34 = *(v1 + 264);
            do
            {
              v35 = *(v34 + 4 * *(v32 + 4 * v29));
              if (v13 == 2)
              {
                if (v35 == *(v30 + 4))
                {
                  *(v33 + 2 * v29) = 1;
                }
              }

              else if (v13 >= 1)
              {
                for (i = 0; i != v13; ++i)
                {
                  if (v35 == *(v30 + 4 * i))
                  {
                    *(v33 + 2 * v29) = i;
                  }
                }
              }

              ++v29;
            }

            while (v29 != v28);
          }
        }
      }

      else
      {
        LODWORD(v13) = 1;
      }

      *(v11 + 2 * v3) = v13;
      v9 = *(v6 + 16) + v13;
      *(v6 + 16) = v9;
      ++v3;
    }

    while (v3 < v4);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(void *this)
{
  v1 = *this;
  v2 = *(*this + 60);
  if (v2 >= 1)
  {
    v3 = *(v1 + 84);
    v4 = v3 + v2;
    v5 = *(v1 + 312);
    v6 = this[4];
    v7 = *(v6 + 96);
    v8 = this[2];
    v9 = v8[12];
    v10 = v8[21];
    v11 = *(v6 + 16);
    v12 = *(v6 + 72);
    do
    {
      v13 = *(v5 + 4 * v3);
      *(v7 + 4 * v3) = v11;
      if (*(v10 + *(v9 + 4 * v13)))
      {
        v14 = *(v8[9] + 2 * v13);
        if (v14 >= 2)
        {
          v15 = 0;
          v16 = vdupq_n_s64(v14 - 2);
          v17 = (this[5] + 2 * v11 + 8);
          do
          {
            v18 = vdupq_n_s64(v15);
            v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1E3049620)));
            if (vuzp1_s8(vuzp1_s16(v19, 6), 6).u8[0])
            {
              *(v17 - 3) = v15 | 1;
            }

            if (vuzp1_s8(vuzp1_s16(v19, 6), 6).i8[1])
            {
              *(v17 - 2) = v15 | 2;
            }

            if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1E3049640)))), 6).i8[2])
            {
              *(v17 - 1) = v15 | 3;
              *v17 = v15 | 4;
            }

            v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1E3049660)));
            if (vuzp1_s8(6, vuzp1_s16(v20, 6)).i32[1])
            {
              v17[1] = v15 | 5;
            }

            if (vuzp1_s8(6, vuzp1_s16(v20, 6)).i8[5])
            {
              v17[2] = v15 | 6;
            }

            if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1E305F210))))).i8[6])
            {
              v17[3] = v15 | 7;
              v17[4] = v15 + 8;
            }

            v15 += 8;
            v17 += 8;
          }

          while (((v14 + 6) & 0x1FFF8) != v15);
          v21 = (*(*v6 + 264) + 8 * v3);
          v22 = *v21;
          if (v22 >= 1)
          {
            v23 = (v8[15] + 2 * *(*(*v8 + 264) + 4 * ((2 * v13) | 1)));
            v24 = (*(v6 + 120) + 2 * v21[1]);
            do
            {
              v25 = *v23++;
              *v24++ = v25;
              --v22;
            }

            while (v22);
          }
        }
      }

      else
      {
        LODWORD(v14) = 1;
      }

      *(v12 + 2 * v3) = v14;
      v11 = *(v6 + 16) + v14;
      *(v6 + 16) = v11;
      ++v3;
    }

    while (v3 < v4);
  }

  return this;
}

float OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this, int a2, unsigned int a3, int a4)
{
  v4 = a4;
  v5 = a3;
  v72 = *MEMORY[0x1E69E9840];
  v7 = v70;
  v68 = v70;
  v69 = 0x1000000000;
  v71 = 0;
  v8 = *(this + 1);
  v9 = v8[45];
  v10 = a2;
  v11 = (2 * a2) | 1;
  v12 = v8[42];
  v13 = *(v12 + 4 * v11);
  v14 = (v9 + 4 * v13);
  v15 = *(v12 + 8 * a2);
  v16 = *(this + 3);
  v17 = v16[45];
  if (((v16[46] - v17) & 0x3FFFFFFFCLL) != 0)
  {
    v62 = a4;
    v7 = (v17 + 4 * *(v16[42] + 8 * a4 + 4));
    goto LABEL_11;
  }

  if (v15)
  {
    v62 = a4;
    if (v15 <= 0x10)
    {
      LODWORD(v69) = *(v12 + 8 * a2);
      v18 = v8[48] + 2 * *(v12 + 4 * v11);
    }

    else
    {
      v61 = a2;
      operator delete(0);
      v7 = operator new(4 * v15);
      v71 = v7;
      v68 = v7;
      LODWORD(v69) = v15;
      HIDWORD(v69) = v15;
      if (v15 < 1)
      {
        v10 = v61;
        v5 = a3;
        goto LABEL_11;
      }

      v18 = *(*(this + 1) + 384) + 2 * *(*(*(this + 1) + 336) + 4 * v11);
      v10 = v61;
      v5 = a3;
    }

    v23 = 0;
    v24 = *(*this + 192);
    do
    {
      v7[v23] = *(v24 + 8 * v14[v23] + 4 * *(v18 + 2 * v23));
      ++v23;
    }

    while (v15 != v23);
LABEL_11:
    v22 = v66;
    v64 = v66;
    LODWORD(v65) = 2 * v15;
    HIDWORD(v65) = 32;
    v67 = 0;
    if ((2 * v15) < 0x21)
    {
      v21 = 0;
    }

    else
    {
      v25 = v10;
      v26 = v13;
      v27 = v9;
      v28 = v5;
      v29 = operator new(4 * (2 * v15));
      v5 = v28;
      v9 = v27;
      v13 = v26;
      v10 = v25;
      v21 = v29;
      v67 = v29;
      v64 = v29;
      HIDWORD(v65) = 2 * v15;
      v22 = v29;
    }

    v4 = v62;
    goto LABEL_15;
  }

  v19 = a2;
  operator delete(0);
  v5 = a3;
  v10 = v19;
  v21 = 0;
  v69 = 0x1000000000;
  v22 = v66;
  v64 = v66;
  v65 = 0x2000000000;
  v67 = 0;
  v68 = v70;
LABEL_15:
  v30 = (*(*(this + 2) + 192) + 4 * *(*(*(this + 2) + 96) + 4 * v10) + 4 * v5);
  v31 = *v30;
  v32 = v30[1];
  v33 = (v32 - v31);
  if (v32 <= v31)
  {
    v34 = *(this + 1);
    if (v31 <= v32)
    {
      LODWORD(v33) = 0;
      v36 = *(this + 3);
    }

    else
    {
      v44 = *(v34 + 216);
      v36 = *(this + 3);
      v45 = *(v36 + 216);
      if (v31 + 1 >= v15)
      {
        v46 = 0;
      }

      else
      {
        v46 = (v15 + ~v31);
        v47 = &v7[v31 + 1];
        v48 = (4 * v13 + 4 * v31 + v9 + 4);
        v49 = v22;
        v50 = v46;
        do
        {
          v51 = *v48++;
          *v49 = *(v44 + 4 * v51);
          v52 = *v47++;
          v49[v15] = *(v45 + 4 * v52);
          ++v49;
          --v50;
        }

        while (v50);
      }

      v53 = v32 + 1;
      v54 = &v22[v46];
      LODWORD(v33) = v32 + v46 + 1;
      do
      {
        v55 = *v14++;
        *v54 = *(v44 + 4 * v55);
        v56 = *v7++;
        v54[v15] = *(v45 + 4 * v56);
        ++v54;
        --v53;
      }

      while (v53);
    }
  }

  else
  {
    v34 = *(this + 1);
    v35 = *(v34 + 216);
    v36 = *(this + 3);
    v37 = *(v36 + 216);
    v38 = &v7[v31 + 1];
    v39 = (4 * v13 + 4 * v31 + v9 + 4);
    v40 = v22;
    v41 = v33;
    do
    {
      v42 = *v39++;
      *v40 = *(v35 + 4 * v42);
      v43 = *v38++;
      v40[v15] = *(v37 + 4 * v43);
      ++v40;
      --v41;
    }

    while (v41);
  }

  v63 = *(*this + 24);
  v57 = OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(&v63, *(*(v34 + 408) + 4 * v10), *(*(v36 + 408) + 4 * v4), v33, v22, &v22[v15]);
  v58 = *&v57;
  operator delete(v21);
  operator delete(v71);
  return v58;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 - v3 >= a2)
  {
    a1[1] = &v3[a2];
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = (v6 + a2);
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    a1[1] = v10;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::~TriRefinement(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  *this = &unk_1F5D1A3D0;
  v2 = *(this + 63);
  if (v2)
  {
    *(this + 64) = v2;
    operator delete(v2);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(this);
}

{
  OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::~TriRefinement(this);

  JUMPOUT(0x1E6906520);
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::allocateParentChildIndices(std::vector<int> *this)
{
  end = this->__end_;
  v4 = *(end + 9);
  v3 = *(end + 10);
  v6 = *(end + 15);
  v5 = *(end + 16);
  v8 = *end;
  v7 = end[1];
  v9 = end[2];
  __x = 4;
  std::vector<unsigned int>::resize(this + 21, 2 * v8, &__x);
  v10 = this->__end_;
  begin = this[21].__begin_;
  if (*v10 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = begin + 1;
    do
    {
      *v14 = v12;
      v14 += 2;
      ++v13;
      v12 += 4;
    }

    while (v13 < *v10);
  }

  v15 = (this[21].__end_ - begin) >> 2;
  this[3].__end_cap_.__value_ = begin;
  LODWORD(this[4].__begin_) = v15;
  v16 = *(v10 + 3);
  v17 = (*(v10 + 4) - v16) >> 2;
  this[4].__end_ = v16;
  LODWORD(this[4].__end_cap_.__value_) = v17;
  v18 = 0;
  std::vector<unsigned int>::resize(this + 5, 4 * v8, &v18);
  std::vector<unsigned int>::resize(this + 6, ((v3 - v4) >> 2), &v18);
  std::vector<unsigned int>::resize(this + 8, ((v5 - v6) >> 2), &v18);
  std::vector<unsigned int>::resize(this + 7, 0, &v18);
  std::vector<unsigned int>::resize(this + 9, v7, &v18);
  std::vector<unsigned int>::resize(this + 10, v9, &v18);
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<unsigned int>::resize(v2 + 2, 3 * SLODWORD(v2->__begin_));
  v3 = *(this + 1);
  if (*v3 >= 1)
  {
    v4 = 0;
    v5 = *(v3 + 6);
    v6 = *(v3 + 9);
    v7 = *(this + 15);
    v8 = *(this + 27);
    v9 = (*(this + 11) + 4);
    v10 = (*(v3 + 3) + 4);
    do
    {
      v11 = *v10;
      v10 += 2;
      v12 = (v5 + 4 * v11);
      v13 = (v6 + 4 * v11);
      v14 = *v9;
      v9 += 2;
      v15 = *(v8 + 4 * *v13);
      v16 = *(v8 + 4 * v13[1]);
      v17 = (v7 + 4 * v14);
      v18 = *(v8 + 4 * v13[2]);
      if (*v17 != -1)
      {
        v19 = (*(*(this + 2) + 48) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * *v17) | 1)));
        *v19 = *(*(this + 30) + 4 * *v12);
        v19[1] = v15;
        v19[2] = v18;
      }

      v20 = v17[1];
      if (v20 != -1)
      {
        v21 = (*(*(this + 2) + 48) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v20) | 1)));
        *v21 = v15;
        v21[1] = *(*(this + 30) + 4 * v12[1]);
        v21[2] = v16;
      }

      v22 = v17[2];
      if (v22 != -1)
      {
        v23 = (*(*(this + 2) + 48) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v22) | 1)));
        *v23 = v18;
        v23[1] = v16;
        v23[2] = *(*(this + 30) + 4 * v12[2]);
      }

      v24 = v17[3];
      if (v24 != -1)
      {
        v25 = (*(*(this + 2) + 48) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v24) | 1)));
        *v25 = v16;
        v25[1] = v18;
        v25[2] = v15;
      }

      ++v4;
    }

    while (v4 < *v3);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 2);
  begin_low = SLODWORD(v2->__begin_);
  __x = 3;
  std::vector<unsigned int>::resize(v2 + 1, 2 * begin_low, &__x);
  v4 = *(this + 2);
  if (*v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = (*(v4 + 3) + 4);
    do
    {
      *v7 = v5;
      v7 += 2;
      ++v6;
      v5 += 3;
    }

    while (v6 < *v4);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<unsigned int>::resize(v2 + 3, 3 * SLODWORD(v2->__begin_));
  v3 = *(this + 1);
  if (*v3 >= 1)
  {
    v4 = 0;
    v5 = *(v3 + 3);
    v6 = *(v3 + 6);
    v7 = *(v3 + 9);
    v8 = *(this + 11);
    v9 = *(this + 15);
    v10 = *(this + 13);
    v11 = *(this + 18);
    v12 = *(this + 24);
    v13 = *(v3 + 15);
    do
    {
      v14 = 0;
      v15 = (8 * v4) | 4;
      v16 = *(v5 + v15);
      v17 = (v6 + 4 * v16);
      v18 = (v7 + 4 * v16);
      v19 = *(v8 + v15);
      v20 = *(v10 + v15);
      do
      {
        v22 = *v18++;
        v21 = v22;
        v23 = (v13 + 8 * v22);
        v24 = *v23 != v23[1] && *v17 != *v23;
        v25 = v12 + 8 * v21;
        v26 = *(v25 + 4 * v24);
        LODWORD(v25) = *(v25 + 4 * !v24);
        v27 = (&v38 + v14);
        *v27 = v26;
        v27[1] = v25;
        v14 += 8;
        ++v17;
      }

      while (v14 != 24);
      v28 = (v9 + 4 * v19);
      v29 = (v11 + 4 * v20);
      if (*v28 != -1)
      {
        v30 = (*(*(this + 2) + 72) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * *v28) | 1)));
        v31 = v41;
        *v30 = v38;
        v30[1] = *v29;
        v30[2] = v31;
      }

      v32 = v28[1];
      if (v32 != -1)
      {
        v33 = *(*(this + 2) + 72) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v32) | 1));
        *v33 = v39;
        *(v33 + 8) = v29[1];
      }

      v34 = v28[2];
      if (v34 != -1)
      {
        v35 = *(*(this + 2) + 72) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v34) | 1));
        *v35 = v29[2];
        *(v35 + 4) = v40;
      }

      v36 = v28[3];
      if (v36 != -1)
      {
        v37 = (*(*(this + 2) + 72) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v36) | 1)));
        *v37 = v29[2];
        v37[1] = *v29;
        v37[2] = v29[1];
      }

      ++v4;
    }

    while (v4 < *v3);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  std::vector<unsigned int>::resize((*(this + 2) + 120), 2 * *(*(this + 2) + 4));
  v2 = *(this + 1);
  if (*v2 >= 1)
  {
    v3 = 0;
    v4 = *(v2 + 9);
    v5 = *(this + 18);
    v6 = *(this + 27);
    v7 = (*(this + 13) + 4);
    v8 = (*(v2 + 3) + 4);
    do
    {
      v9 = *v8;
      v8 += 2;
      v10 = (v4 + 4 * v9);
      v11 = *v7;
      v7 += 2;
      v12 = *(v6 + 4 * *v10);
      v13 = *(v6 + 4 * v10[1]);
      v14 = (v5 + 4 * v11);
      v15 = *(v6 + 4 * v10[2]);
      v16 = *v14;
      if (v16 != -1)
      {
        v17 = (*(*(this + 2) + 120) + 8 * v16);
        *v17 = v12;
        v17[1] = v15;
      }

      v18 = v14[1];
      if (v18 != -1)
      {
        v19 = (*(*(this + 2) + 120) + 8 * v18);
        *v19 = v13;
        v19[1] = v12;
      }

      v20 = v14[2];
      if (v20 != -1)
      {
        v21 = (*(*(this + 2) + 120) + 8 * v20);
        *v21 = v15;
        v21[1] = v13;
      }

      ++v3;
    }

    while (v3 < *v2);
  }

  if (v2[1] >= 1)
  {
    v22 = 0;
    v23 = (*(this + 24) + 4);
    v24 = (*(v2 + 15) + 4);
    do
    {
      v25 = *(v23 - 1);
      if (v25 != -1)
      {
        v26 = (*(*(this + 2) + 120) + 8 * v25);
        *v26 = *(*(this + 27) + 4 * v22);
        v26[1] = *(*(this + 30) + 4 * *(v24 - 1));
      }

      v27 = *v23;
      if (v27 != -1)
      {
        v28 = (*(*(this + 2) + 120) + 8 * v27);
        *v28 = *(*(this + 27) + 4 * v22);
        v28[1] = *(*(this + 30) + 4 * *v24);
      }

      ++v22;
      v23 += 2;
      v24 += 2;
    }

    while (v22 < v2[1]);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = 2 * (((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2) + ((*(this + 19) - *(this + 18)) >> 2));
  std::vector<unsigned int>::resize((*(this + 2) + 144), 2 * *(*(this + 2) + 4));
  std::vector<unsigned int>::resize((*(this + 2) + 168), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 192), v2);
  v4 = *(this + 1);
  v3 = *(this + 2);
  *(v3 + 16) = *(v4 + 16);
  v5 = *v4;
  if (*v4 >= 1)
  {
    v6 = 0;
    v7 = *(this + 11);
    v8 = *(this + 15);
    v9 = *(this + 13);
    v10 = *(this + 18);
    do
    {
      v11 = *(v9 + 8 * v6);
      if (v11 >= 1)
      {
        v12 = (8 * v6) | 4;
        v13 = (v8 + 4 * *(v7 + v12));
        v14 = (v10 + 4 * *(v9 + v12));
        v15 = v13[3];
        v16 = 1;
        do
        {
          v18 = *v14++;
          v17 = v18;
          if (v18 != -1)
          {
            v19 = *(v3 + 144);
            v20 = (v19 + 8 * v17);
            *v20 = 2;
            if (v17)
            {
              v21 = *(v20 - 1) + *(v20 - 2);
            }

            else
            {
              v21 = 0;
            }

            v22 = v16 % 3;
            v23 = 2 * v17;
            v20[1] = v21;
            v24 = *(v3 + 16);
            if (v24 <= 2)
            {
              v24 = 2;
            }

            *(v3 + 16) = v24;
            v25 = *(v19 + 4 * (v23 | 1));
            v26 = (*(v3 + 168) + 4 * v25);
            v27 = (*(v3 + 192) + 2 * v25);
            if (*v13 == -1)
            {
              v28 = 0;
            }

            else
            {
              *v26 = *v13;
              *v27 = v22;
              v28 = 1;
            }

            if (v15 != -1)
            {
              v26[v28] = v15;
              v27[v28] = v22;
              LODWORD(v28) = v28 + 1;
            }

            *v20 = v28;
          }

          ++v16;
          ++v13;
          --v11;
        }

        while (v11);
        v5 = *v4;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v29 = *(v4 + 4);
  if (v29 >= 1)
  {
    v30 = 0;
    v31 = *(this + 24);
    do
    {
      v32 = (v31 + 8 * v30);
      if (*v32 != -1 || v32[1] != -1)
      {
        v33 = 0;
        v34 = *(*(v4 + 144) + 8 * v30);
        v35 = *(*(v4 + 144) + 8 * v30 + 4);
        v36 = *(v4 + 168) + 4 * v35;
        v37 = *(v4 + 192) + 2 * v35;
        v38 = (*(v4 + 120) + 8 * v30);
        v39 = 1;
        do
        {
          v40 = v39;
          v41 = v32[v33];
          if (v41 != -1)
          {
            v42 = *(v3 + 144);
            v43 = (v42 + 8 * v41);
            *v43 = v34;
            if (v41)
            {
              v44 = *(v43 - 1) + *(v43 - 2);
            }

            else
            {
              v44 = 0;
            }

            v43[1] = v44;
            v45 = *(v3 + 16);
            if (v45 <= v34)
            {
              v45 = v34;
            }

            *(v3 + 16) = v45;
            if (v34 < 1)
            {
              v46 = 0;
            }

            else
            {
              v46 = 0;
              v47 = *(v42 + 4 * ((2 * v41) | 1));
              v48 = *(v3 + 168) + 4 * v47;
              v49 = *(v3 + 192) + 2 * v47;
              v50 = *(v4 + 24);
              v51 = *(this + 11);
              v52 = *(this + 15);
              v53 = v36;
              v54 = v37;
              v55 = v34;
              do
              {
                v57 = *v53++;
                v56 = v57;
                LODWORD(v57) = *v54++;
                v58 = v57;
                v59 = (2 * v56) | 1;
                v60 = v33;
                if (*v38 != v38[1])
                {
                  v60 = *(*(v4 + 48) + 4 * *(v50 + 4 * v59) + 4 * v58) != v38[v33];
                }

                v61 = v52 + 4 * *(v51 + 4 * v59);
                v62 = v60 + v58;
                if (v62 == *(v50 + 8 * v56))
                {
                  v63 = 0;
                }

                else
                {
                  v63 = v62;
                }

                v64 = *(v61 + 4 * v63);
                if (v64 != -1)
                {
                  *(v48 + 4 * v46) = v64;
                  *(v49 + 2 * v46++) = v58;
                }

                --v55;
              }

              while (v55);
            }

            *v43 = v46;
          }

          v39 = 0;
          v33 = 1;
        }

        while ((v40 & 1) != 0);
        v29 = *(v4 + 4);
      }

      ++v30;
    }

    while (v30 < v29);
  }

  v65 = (*(v3 + 144) + 4 * (2 * *(v3 + 4) - 2));
  v66 = *v65;
  v67 = v65[1];
  std::vector<unsigned int>::resize((v3 + 168), v67 + v66);
  v68 = (*(this + 2) + 192);

  std::vector<unsigned short>::resize(v68, v67 + v66);
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = ((*(*(this + 1) + 296) - *(*(this + 1) + 288)) >> 2) + 3 * ((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2);
  std::vector<unsigned int>::resize((*(this + 2) + 264), 2 * *(*(this + 2) + 8));
  std::vector<unsigned int>::resize((*(this + 2) + 288), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 312), v2);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(this);
  }

  v3 = *(this + 2);
  v4 = (*(v3 + 264) + 4 * (2 * *(v3 + 8) - 2));
  v5 = *v4;
  v6 = v4[1];
  std::vector<unsigned int>::resize((v3 + 288), v6 + v5);
  v7 = (*(this + 2) + 312);

  std::vector<unsigned short>::resize(v7, v6 + v5);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 288);
        v7 = (*(v1 + 264) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 312);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = *(v20 + 4 * *(v19 + 8 * v21 + 4) + 4 * v22);
            if (v24 != -1)
            {
              *(v17 + 4 * v14) = v24;
              *(v18 + 2 * v14++) = v23;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = (*(v1 + 144) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 192);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = 2 * v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = v22 + 1 - 3 * ((1431655766 * (v22 + 1)) >> 32);
            v25 = v20 + 4 * *(v19 + 8 * v21 + 4);
            v26 = *(v25 + 4 * v24);
            if (v26 != -1)
            {
              *(v17 + 4 * v14) = v26;
              *(v18 + 2 * v14++) = v23;
            }

            v27 = *(v25 + 12);
            if (v27 != -1)
            {
              *(v17 + 4 * v14) = v27;
              *(v18 + 2 * v14++) = v23 + 2 - 3 * ((1431655766 * (v23 + 2)) >> 32);
            }

            v28 = *(v25 + 4 * v23);
            if (v28 != -1)
            {
              *(v17 + 4 * v14) = v28;
              *(v18 + 2 * v14++) = v24;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 1);
  v3 = ((*(v2 + 368) - *(v2 + 360)) >> 2) + 2 * (*(v2 + 4) + ((*(v2 + 176) - *(v2 + 168)) >> 2));
  std::vector<unsigned int>::resize((*(this + 2) + 336), 2 * *(*(this + 2) + 8));
  std::vector<unsigned int>::resize((*(this + 2) + 360), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 384), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 336) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<unsigned int>::resize((v4 + 360), v7 + v6);
  v8 = (*(this + 2) + 384);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 360);
        v7 = (*(v1 + 336) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 384);
        v11 = this[2];
        v12 = *(v11 + 336);
        v13 = (v12 + 8 * v5);
        *v13 = v8;
        if (v5)
        {
          v14 = *(v13 - 1) + *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v13[1] = v14;
        v15 = *(v11 + 20);
        if (v15 <= v8)
        {
          v15 = v8;
        }

        *(v11 + 20) = v15;
        if (v8 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v6 + 4 * v9);
          v18 = (v10 + 2 * v9);
          v19 = *(v12 + 4 * ((2 * v5) | 1));
          v20 = *(v11 + 360) + 4 * v19;
          v21 = *(v11 + 384) + 2 * v19;
          v22 = this[24];
          do
          {
            v23 = *v17++;
            v24 = v22 + 8 * v23;
            LODWORD(v23) = *v18++;
            v25 = *(v24 + 4 * v23);
            if (v25 != -1)
            {
              *(v20 + 4 * v16) = v25;
              *(v21 + 2 * v16++) = 1;
            }

            --v8;
          }

          while (v8);
        }

        *v13 = v16;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 192);
        v10 = *(v1 + 120);
        v11 = this[24];
        v12 = this[2];
        v13 = v7 + 2;
        v14 = *(v12 + 336);
        v15 = (v14 + 8 * v5);
        *v15 = v7 + 2;
        if (v5)
        {
          v16 = *(v15 - 1) + *(v15 - 2);
        }

        else
        {
          v16 = 0;
        }

        v15[1] = v16;
        if (*(v12 + 20) > v13)
        {
          v13 = *(v12 + 20);
        }

        *(v12 + 20) = v13;
        if (v7 < 1)
        {
          v18 = 0;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = v6 + 4 * v8;
          v21 = v9 + 2 * v8;
          v22 = (v10 + 8 * v3);
          v23 = v11 + 8 * v3;
          v24 = *(v14 + 4 * ((2 * v5) | 1));
          v25 = *(v12 + 360) + 4 * v24;
          v26 = *(v12 + 384) + 2 * v24;
          v27 = this[13];
          v28 = this[18];
          v29 = -1;
          do
          {
            v30 = *(v21 + 2 * v17);
            v31 = (2 * *(v20 + 4 * v17)) | 1;
            v32 = v28 + 4 * *(v27 + 4 * v31);
            if (v17)
            {
              v33 = *(v32 + 4 * (v30 + 1 - 3 * ((1431655766 * (v30 + 1)) >> 32)));
              v34 = *(v32 + 4 * *(v21 + 2 * v17));
            }

            else
            {
              if (*v22 != v22[1])
              {
                v19 = *(*(v1 + 48) + 4 * *(*(v1 + 24) + 4 * v31) + 4 * *(v21 + 2 * v17)) != *v22;
              }

              v35 = *(v23 + 4 * !v19);
              v29 = *(v23 + 4 * v19);
              v33 = *(v32 + 4 * (v30 + 1 - 3 * ((1431655766 * (v30 + 1)) >> 32)));
              v34 = *(v32 + 4 * *(v21 + 2 * v17));
              if (v35 != -1)
              {
                *(v25 + 4 * v18) = v35;
                *(v26 + 2 * v18++) = 0;
              }
            }

            if (v33 != -1)
            {
              *(v25 + 4 * v18) = v33;
              *(v26 + 2 * v18++) = 1;
            }

            if (v34 != -1)
            {
              *(v25 + 4 * v18) = v34;
              *(v26 + 2 * v18++) = 0;
            }

            if (!v17 && v29 != -1)
            {
              *(v25 + 4 * v18) = v29;
              *(v26 + 2 * v18++) = 0;
            }

            ++v17;
          }

          while (v7 != v17);
        }

        *v15 = v18;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren(void *this)
{
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = 4;
    *&v4 = 0x200000002;
    *(&v4 + 1) = 0x200000002;
    do
    {
      v5 = this[15] + 4 * *(this[11] + v3);
      v6 = this[18] + 4 * *(this[13] + v3);
      v7 = this[51];
      if (*(v7 + v2))
      {
        *v5 = v4;
        *v6 = 2;
        *(v6 + 4) = 0x200000002;
        *(v7 + v2) &= 0xE1u;
      }

      else
      {
        v8 = *(*(v1 + 3) + v3);
        v9 = (*(v1 + 6) + 4 * v8);
        if (*(this[57] + v9[2]) & 1 | ((*(this[57] + v9[1]) & 1) + (*(this[57] + *v9) & 1)))
        {
          v10 = *(this[54] + *(*(v1 + 9) + 4 * v8 + 4)) & 0xE | (*(this[54] + *(*(v1 + 9) + 4 * v8)) >> 1) & 0xF | (2 * *(this[54] + *(*(v1 + 9) + 4 * v8 + 8))) & 0xC;
          *(v7 + v2) = *(v7 + v2) & 0xE0 | (2 * v10);
          if (v10)
          {
            *(v5 + 12) = 1;
            *v6 = 1;
            *(v6 + 4) = 0x100000001;
          }

          v11 = this[57];
          if (*(v11 + *v9))
          {
            *v5 = 1;
            *v6 = 1;
          }

          if (*(v11 + v9[1]))
          {
            *(v5 + 4) = 1;
            *(v6 + 4) = 1;
          }

          if (*(v11 + v9[2]))
          {
            *(v5 + 8) = 1;
            *(v6 + 8) = 1;
          }
        }
      }

      ++v2;
      v1 = this[1];
      v3 += 8;
    }

    while (v2 < *v1);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::EndCapBSplineBasisPatchFactory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v6 = **(*(a2 + 88) + 24 * ((*(a2 + 8) >> 2) & 0xF));
  v7 = 7 * v6;
  v8 = 112 * v6;
  if (v8 >= 104857600)
  {
    v9 = 104857600;
  }

  else
  {
    v9 = v8;
  }

  std::vector<int>::reserve((a3 + 16), v7);
  std::vector<int>::reserve((a3 + 64), v9);
  std::vector<int>::reserve((a3 + 88), v9);
  v10 = *(a1 + 8);
  if (v10)
  {
    std::vector<int>::reserve((v10 + 16), v7);
    std::vector<int>::reserve((v10 + 64), v7);
    std::vector<int>::reserve((v10 + 88), v7);
  }

  return a1;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::GetPatchPoints(uint64_t a1, void *a2, int a3, __int16 *a4, uint64_t a5, unsigned int a6)
{
  v7 = a5;
  v8 = a2[3];
  v9 = (a2[6] + 4 * *(v8 + 8 * a3 + 4));
  v10 = *(v8 + 8 * a3);
  if ((a6 & 0x80000000) == 0)
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(a1);
  }

  v11 = 0;
  v12 = -1;
  do
  {
    v14 = *(a2[54] + 2 * v9->i32[v11]);
    if ((v14 & 0x780) != 0x80 || (v15 = *a4) != 0)
    {
      LOBYTE(v15) = 1;
    }

    if ((v14 & 2) != 0)
    {
      if (v12 < 0)
      {
        v12 = v11;
      }

      else
      {
        LOBYTE(v15) = 1;
      }
    }

    if (v11 > 2)
    {
      break;
    }

    ++v11;
    a4 += 3;
  }

  while ((v15 & 1) == 0);
  if ((v15 & 1) == 0)
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(a1, a2, a3, v12, v9, v10, v7, a6);
  }

  else
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(a1);
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v53 = v5;
  v6 = v1;
  v82[16] = *MEMORY[0x1E69E9840];
  v7 = *(v1 + 16);
  if ((v2 & 0x80000000) != 0)
  {
    v11 = *(v7 + 20);
  }

  else
  {
    v9 = v7 + 40;
    v8 = *(v7 + 40);
    v10 = *(v9 + 8) - v8;
    if ((v10 >> 3) < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = (v10 >> 3);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        v13 = *v8++;
        v11 += *(*(*(v13 + 456) + 8 * v2) + 16);
        --v12;
      }

      while (v12);
    }
  }

  v14 = *(v1 + 24);
  v15 = 16;
  do
  {
    v58[0] = v14 + v11;
    std::vector<int>::push_back[abi:nn200100]((v6 + 32), v58);
    v14 = *(v6 + 24) + 1;
    *(v6 + 24) = v14;
    --v15;
  }

  while (v15);
  v54 = v4;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(v58);
  v82[0] = v58;
  v82[1] = &v62;
  v82[2] = &v67;
  v82[3] = &v59;
  v82[4] = &v66;
  v82[5] = &v70;
  v82[6] = &v71;
  v82[7] = &v63;
  v82[8] = &v65;
  v82[9] = &v73;
  v82[10] = &v72;
  v82[11] = &v68;
  v82[12] = v61;
  v82[13] = v69;
  v82[14] = &v64;
  v82[15] = &v60;
  v16 = v58[4];
  v17 = &v78;
  v78 = &v80;
  v79 = 0x1000000010;
  v18 = 16;
  v81 = 0;
  do
  {
    *(v17 + 4) = 0;
    v17[3] = (v17 + 5);
    v17[45] = 0;
    v17[4] = 0x2800000028;
    v17 += 44;
    --v18;
  }

  while (v18);
  v19 = 0;
  v20 = &unk_1E3109F5C;
  do
  {
    v21 = 0;
    v55 = v19;
    v22 = 4 * v19;
    v23 = v82;
    do
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v78[44 * v21 + 44 * v22], v16);
      for (i = 0; i != 16; i += 4)
      {
        v25 = *&v20[i];
        if (v25 != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v78[44 * v21 + 44 * v22], v23[i], v25);
        }
      }

      ++v21;
      ++v23;
    }

    while (v21 != 4);
    v19 = v55 + 1;
    v20 += 16;
  }

  while (v55 != 3);
  v26 = 0;
  for (j = 0; j != 4; ++j)
  {
    v28 = 0;
    v29 = &unk_1E3109F5C;
    do
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v76, v16);
      v31 = 0;
      v32 = v26;
      do
      {
        v33 = *&v29[v31];
        if (v33 != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v76, (v78 + v32), v33);
        }

        v31 += 4;
        v32 += 352;
      }

      while (v31 != 16);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v76, *v6, v30);
      operator delete(v77);
      ++v28;
      v29 += 16;
    }

    while (v28 != 4);
    v26 += 1408;
  }

  if (*(v6 + 8))
  {
    for (k = 0; k != 16; ++k)
    {
      v76[0] = *(v53 + 4 * dword_1E3109F9C[k]) + v54;
      v35 = *(v6 + 8);
      v57 = 1;
      std::vector<int>::push_back[abi:nn200100]((v35 + 16), &v57);
      std::vector<int>::push_back[abi:nn200100]((*(v6 + 8) + 64), v76);
      v36 = *(v6 + 8);
      v57 = 1065353216;
      std::vector<float>::push_back[abi:nn200100]((v36 + 88), &v57);
    }
  }

  v37 = *(v6 + 28);
  *(v6 + 28) = v37 + 1;
  v38 = *(v6 + 32);
  if (v79)
  {
    v39 = 0;
    v40 = 43;
    do
    {
      v41 = &v78[v40];
      v42 = &v78[v40 - 42];
      operator delete(v78[v40]);
      *v42 = (v41 - 40);
      *(v41 - 81) = 40;
      ++v39;
      v40 += 44;
    }

    while (v39 < v79);
  }

  operator delete(v81);
  v43 = &v75;
  v44 = -1408;
  do
  {
    operator delete(v43[42]);
    *v43 = (v43 + 2);
    *(v43 + 3) = 40;
    v43 -= 44;
    v44 += 352;
  }

  while (v44);
  v45 = &v74;
  v46 = -1408;
  do
  {
    operator delete(v45[42]);
    *v45 = (v45 + 2);
    *(v45 + 3) = 40;
    v45 -= 44;
    v46 += 352;
  }

  while (v46);
  for (m = 0; m != -352; m -= 88)
  {
    v48 = &v58[m];
    operator delete(*&v69[m * 4 + 344]);
    *(v48 + 485) = v48 + 974;
    v48[973] = 40;
  }

  v49 = 352;
  do
  {
    v50 = &v58[v49];
    operator delete(*&v61[v49 * 4 + 344]);
    *(v50 + 133) = v50 + 270;
    v50[269] = 40;
    v49 -= 88;
  }

  while (v49 * 4);
  v51 = 352;
  do
  {
    operator delete(*&v56[v51 * 4]);
    *&v58[v51 - 86] = &v58[v51 - 82];
    v58[v51 - 83] = 40;
    v51 -= 88;
  }

  while (v51 * 4);
  return v38 + (v37 << 6);
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(uint64_t a1, uint64_t a2, int a3, int a4, int32x4_t *a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v297 = *MEMORY[0x1E69E9840];
  v15 = 2 * *(a2 + 20);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v278, v15 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v275, v15 + 16);
  v249 = v15;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v272, v15 + 16);
  v16 = *(a2 + 20);
  v17 = v268;
  v266 = v268;
  v267 = 0x2800000000;
  v269 = 0;
  v18 = 2 * v16;
  if (v16)
  {
    if (v18 < 0x29)
    {
      goto LABEL_6;
    }

    operator delete(0);
    v266 = v268;
    HIDWORD(v267) = 40;
    v17 = operator new(4 * v18);
    v269 = v17;
    v19 = v18;
  }

  else
  {
    operator delete(0);
    v19 = 40;
  }

  v266 = v17;
  HIDWORD(v267) = v19;
LABEL_6:
  LODWORD(v267) = v18;
  v255 = a4;
  v250 = a8;
  v20 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(a2, a5->i32[a4], v17, a8);
  v21 = (v20 / 2);
  v256 = a5;
  v251 = a4;
  if (v20 < 2)
  {
    v247 = -6.2832;
    v248 = -6.2832;
  }

  else
  {
    v22 = 0;
    if (a4 + 3 <= 0)
    {
      v23 = -(-(a4 + 3) & 3);
    }

    else
    {
      v23 = (a4 + 3) & 3;
    }

    if (a4 + 1 <= 0)
    {
      v24 = -(-(a4 + 1) & 3);
    }

    else
    {
      v24 = (a4 + 1) & 3;
    }

    v25 = v266;
    v26 = a5->i32[v24];
    v27 = a5->i32[v23];
    v28 = -1;
    v29 = -1;
    do
    {
      v31 = *v25;
      v25 += 2;
      v30 = v31;
      if (v31 == v26)
      {
        v28 = v22;
      }

      if (v30 == v27)
      {
        v29 = v22;
      }

      ++v22;
    }

    while (v21 != v22);
    v247 = v28 * 6.2832;
    v248 = v29 * 6.2832;
  }

  LODWORD(v292) = 0;
  v293 = &v295;
  v296 = 0;
  v294 = 0x2800000028;
  LODWORD(v287) = 0;
  v288 = &v290;
  v291 = 0;
  v289 = 0x2800000028;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v292, v20 + 1);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v287, v20 + 1);
  v32 = v21;
  v33 = cosf(6.2832 / v21);
  if (v20 > 1)
  {
    v34 = 0;
    v35 = 1.0 / ((((v33 + 5.0) + sqrtf((v33 + 9.0) * (v33 + 1.0))) * v32) * 0.0625);
    v36 = 2.0 / (v32 + 5.0);
    v252 = 1.0 / (v32 + 5.0);
    do
    {
      v37 = v34 + 1;
      v38 = (v34 + 1) % v21;
      v39 = &v266[2 * v34];
      v41 = *v39;
      v40 = v39[1];
      v42 = *&v266[2 * v38];
      v282 = &v284;
      __p = 0;
      v283 = 0x2800000004;
      v43 = v256->i32[v255];
      v285[0] = v32 / (v32 + 5.0);
      v284 = v43;
      v281 = 1;
      if (v43 == LODWORD(v42))
      {
        v285[0] = v36 + (v32 / (v32 + 5.0));
        v44 = 1;
        v45 = 1;
        v46 = v285;
      }

      else
      {
        v285[2] = 2.0 / (v32 + 5.0);
        v44 = 2;
        v45 = 2;
        v46 = v285;
        v285[1] = v42;
        v281 = 2;
      }

      while (*(v46 - 1) != v41)
      {
        v46 += 2;
        if (!--v45)
        {
          v47 = &v285[2 * v44 - 1];
          *v47 = v41;
          v47[1] = v36;
          v281 = ++v44;
          goto LABEL_30;
        }
      }

      *v46 = v36 + *v46;
LABEL_30:
      v48 = v44;
      v49 = v285;
      while (*(v49 - 1) != v40)
      {
        v49 += 2;
        if (!--v48)
        {
          v50 = &v285[2 * v44 - 1];
          *v50 = v40;
          v50[1] = v252;
          v281 = v44 + 1;
          goto LABEL_35;
        }
      }

      *v49 = v252 + *v49;
LABEL_35:
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v278, &v281, 1.0 / v32);
      v51 = __sincosf_stret((v34 * 6.2832) / v32);
      v52 = __sincosf_stret((v38 * 6.2832) / v32);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v281, v35 * ((v52.__cosval * 0.5) + (v51.__cosval * 0.5)));
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v287, &v281, v35 * ((v52.__sinval * 0.5) + (v51.__sinval * 0.5)));
      operator delete(__p);
      ++v34;
    }

    while (v37 != v21);
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(&v275, &v278);
  v53 = __sincosf_stret(v247 / v32);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v275, &v292, v53.__cosval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v275, &v287, v53.__sinval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(&v272, &v278);
  v54 = __sincosf_stret(v248 / v32);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v272, &v292, v54.__cosval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v272, &v287, v54.__sinval);
  operator delete(v291);
  operator delete(v296);
  operator delete(v269);
  v55 = v278;
  if (v278 >= 1)
  {
    v56 = v279;
    do
    {
      *v56 += a7;
      v56 += 2;
      --v55;
    }

    while (v55);
  }

  v57 = v275;
  if (v275 >= 1)
  {
    v58 = v276;
    do
    {
      *v58 += a7;
      v58 += 2;
      --v57;
    }

    while (v57);
  }

  v59 = v272;
  if (v272 >= 1)
  {
    v60 = v273;
    do
    {
      *v60 += a7;
      v60 += 2;
      --v59;
    }

    while (v59);
  }

  v61 = 0;
  v271[0] = vaddq_s32(*v256, vdupq_n_s32(a7));
  v62 = *(a2 + 24);
  v63 = *(a2 + 48);
  v64 = v63 + 4 * *(v62 + 4 * ((2 * a3) | 1));
  v65 = *(a2 + 288);
  v66 = *(a2 + 264);
  v67 = *(a2 + 312);
  v68 = 4;
  do
  {
    v69 = *(v64 + 4 * v61);
    v70 = *(v66 + 8 * v69 + 4);
    v71 = (v65 + 4 * v70);
    v72 = v67 + 2 * v70;
    v73 = v271 + v68;
    if (v61 == v251)
    {
      v74 = *(v66 + 8 * v69);
      if (v74 < 1)
      {
LABEL_51:
        LODWORD(v75) = -1;
      }

      else
      {
        v75 = 0;
        while (v71[v75] != a3)
        {
          if (v74 == ++v75)
          {
            goto LABEL_51;
          }
        }
      }

      *(v271 + v68) = *(v63 + 4 * *(v62 + 8 * v71[(v75 + 1) % v74] + 4) + 4 * ((*(v72 + 2 * ((v75 + 1) % v74)) - 1) & 3)) + a7;
      v76 = (v63 + 4 * *(v62 + 8 * v71[(v74 + v75 - 1) % v74] + 4) + 4 * ((*(v72 + 2 * ((v74 + v75 - 1) % v74)) + 1) & 3));
    }

    else
    {
      if (*v71 == a3)
      {
        v77 = 2;
      }

      else if (v71[1] == a3)
      {
        v77 = 3;
      }

      else
      {
        v77 = v71[2] != a3;
      }

      v78 = *(v72 + 2 * v77);
      v79 = v63 + 4 * *(v62 + 8 * v71[v77] + 4);
      *v73 = *(v79 + 4 * ((v78 + 1) & 3)) + a7;
      v73[1] = *(v79 + 4 * (v78 & 3 ^ 2)) + a7;
      v76 = (v79 + 4 * ((v78 - 1) & 3));
    }

    v73[2] = *v76 + a7;
    v68 += 3;
    ++v61;
  }

  while (v61 != 4);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v292, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v287, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v281, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v266, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v263, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v260, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v257, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v287, &v275, 12.0);
  v80 = (&OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,int,OpenSubdiv::v3_1_1::Vtr::ConstArray<int>,int,int)::rotation + 64 * v255);
  v81 = *(v271 + *v80);
  v82 = v287;
  v83 = v288;
  if (v287 < 1)
  {
LABEL_64:
    v86 = &v288[v287];
    *v86 = v81;
    *(v86 + 1) = -1062557013;
    LODWORD(v287) = ++v82;
  }

  else
  {
    v84 = v288 + 1;
    v85 = v287;
    while (*(v84 - 1) != v81)
    {
      v84 += 2;
      if (!--v85)
      {
        goto LABEL_64;
      }
    }

    *v84 = *v84 + -5.3333;
  }

  v87 = *(v271 + v80[1]);
  if (v82 < 1)
  {
LABEL_70:
    v90 = &v83[v82];
    *v90 = v87;
    *(v90 + 1) = -1070945621;
    LODWORD(v287) = ++v82;
  }

  else
  {
    v88 = v82;
    v89 = v83 + 1;
    while (*(v89 - 1) != v87)
    {
      v89 += 2;
      if (!--v88)
      {
        goto LABEL_70;
      }
    }

    *v89 = *v89 + -2.6667;
  }

  v253 = v80[2];
  v91 = *(v271 + v253);
  if (v82 < 1)
  {
LABEL_76:
    v94 = &v83[v82];
    *v94 = v91;
    *(v94 + 1) = -1087722837;
    LODWORD(v287) = ++v82;
  }

  else
  {
    v92 = v82;
    v93 = v83 + 1;
    while (*(v93 - 1) != v91)
    {
      v93 += 2;
      if (!--v92)
      {
        goto LABEL_76;
      }
    }

    *v93 = *v93 + -0.66667;
  }

  v95 = *(v271 + v80[3]);
  if (v82 < 1)
  {
LABEL_82:
    v98 = &v83[v82];
    *v98 = v95;
    *(v98 + 1) = -1079334229;
    LODWORD(v287) = ++v82;
  }

  else
  {
    v96 = v82;
    v97 = v83 + 1;
    while (*(v97 - 1) != v95)
    {
      v97 += 2;
      if (!--v96)
      {
        goto LABEL_82;
      }
    }

    *v97 = *v97 + -1.3333;
  }

  v99 = *(v271 + v80[6]);
  if (v82 < 1)
  {
LABEL_88:
    v102 = &v83[v82];
    *v102 = v99;
    *(v102 + 1) = -1096111445;
    LODWORD(v287) = ++v82;
  }

  else
  {
    v100 = v82;
    v101 = v83 + 1;
    while (*(v101 - 1) != v99)
    {
      v101 += 2;
      if (!--v100)
      {
        goto LABEL_88;
      }
    }

    *v101 = *v101 + -0.33333;
  }

  v103 = *(v271 + v80[7]);
  if (v82 < 1)
  {
LABEL_94:
    v106 = &v83[v82];
    *v106 = v103;
    *(v106 + 1) = -1087722837;
    LODWORD(v287) = v82 + 1;
  }

  else
  {
    v104 = v82;
    v105 = v83 + 1;
    while (*(v105 - 1) != v103)
    {
      v105 += 2;
      if (!--v104)
      {
        goto LABEL_94;
      }
    }

    *v105 = *v105 + -0.66667;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v281, &v275, -6.0);
  v107 = v281;
  v108 = v282;
  if (v281 < 1)
  {
LABEL_100:
    v111 = &v282[2 * v281];
    *v111 = v81;
    v111[1] = 1076538027;
    v281 = ++v107;
  }

  else
  {
    v109 = (v282 + 1);
    v110 = v281;
    while (*(v109 - 1) != v81)
    {
      v109 += 2;
      if (!--v110)
      {
        goto LABEL_100;
      }
    }

    *v109 = *v109 + 2.6667;
  }

  if (v107 < 1)
  {
LABEL_106:
    v114 = &v108[2 * v107];
    *v114 = v87;
    v114[1] = 1068149419;
    v281 = ++v107;
  }

  else
  {
    v112 = v107;
    v113 = (v108 + 1);
    while (*(v113 - 1) != v87)
    {
      v113 += 2;
      if (!--v112)
      {
        goto LABEL_106;
      }
    }

    *v113 = *v113 + 1.3333;
  }

  if (v107 < 1)
  {
LABEL_112:
    v117 = &v108[2 * v107];
    *v117 = v91;
    v117[1] = 1051372203;
    v281 = ++v107;
  }

  else
  {
    v115 = v107;
    v116 = (v108 + 1);
    while (*(v116 - 1) != v91)
    {
      v116 += 2;
      if (!--v115)
      {
        goto LABEL_112;
      }
    }

    *v116 = *v116 + 0.33333;
  }

  if (v107 < 1)
  {
LABEL_118:
    v120 = &v108[2 * v107];
    *v120 = v95;
    v120[1] = 1059760811;
    v281 = ++v107;
  }

  else
  {
    v118 = v107;
    v119 = (v108 + 1);
    while (*(v119 - 1) != v95)
    {
      v119 += 2;
      if (!--v118)
      {
        goto LABEL_118;
      }
    }

    *v119 = *v119 + 0.66667;
  }

  if (v107 < 1)
  {
LABEL_124:
    v123 = &v108[2 * v107];
    *v123 = v99;
    v123[1] = 1059760811;
    v281 = ++v107;
  }

  else
  {
    v121 = v107;
    v122 = (v108 + 1);
    while (*(v122 - 1) != v99)
    {
      v122 += 2;
      if (!--v121)
      {
        goto LABEL_124;
      }
    }

    *v122 = *v122 + 0.66667;
  }

  if (v107 < 1)
  {
LABEL_130:
    v126 = &v108[2 * v107];
    *v126 = v103;
    v126[1] = 1068149419;
    v281 = v107 + 1;
  }

  else
  {
    v124 = v107;
    v125 = (v108 + 1);
    while (*(v125 - 1) != v103)
    {
      v125 += 2;
      if (!--v124)
      {
        goto LABEL_130;
      }
    }

    *v125 = *v125 + 1.3333;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(&v266, &v287);
  v127 = *(v271 + v80[8]);
  v128 = v266;
  v129 = v267;
  if (v266 < 1)
  {
LABEL_136:
    v132 = (v267 + 8 * v266);
    *v132 = v127;
    v132[1] = 1065353216;
    LODWORD(v266) = ++v128;
  }

  else
  {
    v130 = (v267 + 4);
    v131 = v266;
    while (*(v130 - 1) != v127)
    {
      v130 += 2;
      if (!--v131)
      {
        goto LABEL_136;
      }
    }

    *v130 = *v130 + 1.0;
  }

  if (v128 < 1)
  {
LABEL_142:
    v135 = (v129 + 8 * v128);
    *v135 = v99;
    v135[1] = -1082130432;
    LODWORD(v266) = v128 + 1;
  }

  else
  {
    v133 = v128;
    v134 = (v129 + 4);
    while (*(v134 - 1) != v99)
    {
      v134 += 2;
      if (!--v133)
      {
        goto LABEL_142;
      }
    }

    *v134 = *v134 + -1.0;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v263, &v272, 12.0);
  v136 = v263;
  v137 = v264;
  if (v263 < 1)
  {
LABEL_148:
    v140 = (v264 + 8 * v263);
    *v140 = v81;
    v140[1] = -1062557013;
    v263 = ++v136;
  }

  else
  {
    v138 = (v264 + 4);
    v139 = v263;
    while (*(v138 - 1) != v81)
    {
      v138 += 2;
      if (!--v139)
      {
        goto LABEL_148;
      }
    }

    *v138 = *v138 + -5.3333;
  }

  if (v136 < 1)
  {
LABEL_154:
    v143 = (v137 + 8 * v136);
    *v143 = v87;
    v143[1] = -1079334229;
    v263 = ++v136;
  }

  else
  {
    v141 = v136;
    v142 = (v137 + 4);
    while (*(v142 - 1) != v87)
    {
      v142 += 2;
      if (!--v141)
      {
        goto LABEL_154;
      }
    }

    *v142 = *v142 + -1.3333;
  }

  if (v136 < 1)
  {
LABEL_160:
    v146 = (v137 + 8 * v136);
    *v146 = v91;
    v146[1] = -1087722837;
    v263 = ++v136;
  }

  else
  {
    v144 = v136;
    v145 = (v137 + 4);
    while (*(v145 - 1) != v91)
    {
      v145 += 2;
      if (!--v144)
      {
        goto LABEL_160;
      }
    }

    *v145 = *v145 + -0.66667;
  }

  if (v136 < 1)
  {
LABEL_166:
    v149 = (v137 + 8 * v136);
    *v149 = v95;
    v149[1] = -1070945621;
    v263 = ++v136;
  }

  else
  {
    v147 = v136;
    v148 = (v137 + 4);
    while (*(v148 - 1) != v95)
    {
      v148 += 2;
      if (!--v147)
      {
        goto LABEL_166;
      }
    }

    *v148 = *v148 + -2.6667;
  }

  v150 = *(v271 + v80[4]);
  if (v136 < 1)
  {
LABEL_172:
    v153 = (v137 + 8 * v136);
    *v153 = v150;
    v153[1] = -1096111445;
    v263 = ++v136;
  }

  else
  {
    v151 = v136;
    v152 = (v137 + 4);
    while (*(v152 - 1) != v150)
    {
      v152 += 2;
      if (!--v151)
      {
        goto LABEL_172;
      }
    }

    *v152 = *v152 + -0.33333;
  }

  v154 = *(v271 + v80[15]);
  if (v136 < 1)
  {
LABEL_178:
    v157 = (v137 + 8 * v136);
    *v157 = v154;
    v157[1] = -1087722837;
    v263 = v136 + 1;
  }

  else
  {
    v155 = v136;
    v156 = (v137 + 4);
    while (*(v156 - 1) != v154)
    {
      v156 += 2;
      if (!--v155)
      {
        goto LABEL_178;
      }
    }

    *v156 = *v156 + -0.66667;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v260, &v272, -6.0);
  v158 = v260;
  v159 = v261;
  if (v260 < 1)
  {
LABEL_184:
    v162 = (v261 + 8 * v260);
    *v162 = v81;
    v162[1] = 1076538027;
    v260 = ++v158;
  }

  else
  {
    v160 = (v261 + 4);
    v161 = v260;
    while (*(v160 - 1) != v81)
    {
      v160 += 2;
      if (!--v161)
      {
        goto LABEL_184;
      }
    }

    *v160 = *v160 + 2.6667;
  }

  if (v158 < 1)
  {
LABEL_190:
    v165 = (v159 + 8 * v158);
    *v165 = v87;
    v165[1] = 1059760811;
    v260 = ++v158;
  }

  else
  {
    v163 = v158;
    v164 = (v159 + 4);
    while (*(v164 - 1) != v87)
    {
      v164 += 2;
      if (!--v163)
      {
        goto LABEL_190;
      }
    }

    *v164 = *v164 + 0.66667;
  }

  if (v158 < 1)
  {
LABEL_196:
    v168 = (v159 + 8 * v158);
    *v168 = v91;
    v168[1] = 1051372203;
    v260 = ++v158;
  }

  else
  {
    v166 = v158;
    v167 = (v159 + 4);
    while (*(v167 - 1) != v91)
    {
      v167 += 2;
      if (!--v166)
      {
        goto LABEL_196;
      }
    }

    *v167 = *v167 + 0.33333;
  }

  if (v158 < 1)
  {
LABEL_202:
    v171 = (v159 + 8 * v158);
    *v171 = v95;
    v171[1] = 1068149419;
    v260 = ++v158;
  }

  else
  {
    v169 = v158;
    v170 = (v159 + 4);
    while (*(v170 - 1) != v95)
    {
      v170 += 2;
      if (!--v169)
      {
        goto LABEL_202;
      }
    }

    *v170 = *v170 + 1.3333;
  }

  if (v158 < 1)
  {
LABEL_208:
    v174 = (v159 + 8 * v158);
    *v174 = v150;
    v174[1] = 1059760811;
    v260 = ++v158;
  }

  else
  {
    v172 = v158;
    v173 = (v159 + 4);
    while (*(v173 - 1) != v150)
    {
      v173 += 2;
      if (!--v172)
      {
        goto LABEL_208;
      }
    }

    *v173 = *v173 + 0.66667;
  }

  if (v158 < 1)
  {
LABEL_214:
    v177 = (v159 + 8 * v158);
    *v177 = v154;
    v177[1] = 1068149419;
    v260 = v158 + 1;
  }

  else
  {
    v175 = v158;
    v176 = (v159 + 4);
    while (*(v176 - 1) != v154)
    {
      v176 += 2;
      if (!--v175)
      {
        goto LABEL_214;
      }
    }

    *v176 = *v176 + 1.3333;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(&v257, &v263);
  v178 = *(v271 + v80[14]);
  v179 = v257;
  v180 = v258;
  if (v257 < 1)
  {
LABEL_220:
    v183 = (v258 + 8 * v257);
    *v183 = v178;
    v183[1] = 1065353216;
    v257 = ++v179;
  }

  else
  {
    v181 = (v258 + 4);
    v182 = v257;
    while (*(v181 - 1) != v178)
    {
      v181 += 2;
      if (!--v182)
      {
        goto LABEL_220;
      }
    }

    *v181 = *v181 + 1.0;
  }

  if (v179 < 1)
  {
LABEL_226:
    v186 = (v180 + 8 * v179);
    *v186 = v150;
    v186[1] = -1082130432;
    v257 = v179 + 1;
  }

  else
  {
    v184 = v179;
    v185 = (v180 + 4);
    while (*(v185 - 1) != v150)
    {
      v185 += 2;
      if (!--v184)
      {
        goto LABEL_226;
      }
    }

    *v185 = *v185 + -1.0;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v278, 36.0);
  v187 = v292;
  v188 = v293;
  if (v292 < 1)
  {
LABEL_232:
    v191 = &v293[v292];
    *v191 = v81;
    *(v191 + 1) = -1048576000;
    LODWORD(v292) = ++v187;
  }

  else
  {
    v189 = v293 + 1;
    v190 = v292;
    while (*(v189 - 1) != v81)
    {
      v189 += 2;
      if (!--v190)
      {
        goto LABEL_232;
      }
    }

    *v189 = *v189 + -16.0;
  }

  if (v187 < 1)
  {
LABEL_238:
    v194 = &v188[v187];
    *v194 = v87;
    *(v194 + 1) = -1065353216;
    LODWORD(v292) = ++v187;
  }

  else
  {
    v192 = v187;
    v193 = v188 + 1;
    while (*(v193 - 1) != v87)
    {
      v193 += 2;
      if (!--v192)
      {
        goto LABEL_238;
      }
    }

    *v193 = *v193 + -4.0;
  }

  if (v187 < 1)
  {
LABEL_244:
    v197 = &v188[v187];
    *v197 = v95;
    *(v197 + 1) = -1065353216;
    LODWORD(v292) = v187 + 1;
  }

  else
  {
    v195 = v187;
    v196 = v188 + 1;
    while (*(v196 - 1) != v95)
    {
      v196 += 2;
      if (!--v195)
      {
        goto LABEL_244;
      }
    }

    *v196 = *v196 + -4.0;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v263, -4.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v287, -4.0);
  v198 = *(v271 + v253);
  v199 = v292;
  if (v292 < 1)
  {
LABEL_250:
    v202 = &v293[v292];
    *v202 = v198;
    *(v202 + 1) = -1082130432;
    LODWORD(v292) = v199 + 1;
  }

  else
  {
    v200 = v293 + 1;
    v201 = v292;
    while (*(v200 - 1) != v198)
    {
      v200 += 2;
      if (!--v201)
      {
        goto LABEL_250;
      }
    }

    *v200 = *v200 + -1.0;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v281, -1.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v260, -1.0);
  v204 = *(a1 + 16);
  if ((v250 & 0x80000000) != 0)
  {
    v208 = *(v204 + 20);
  }

  else
  {
    v206 = v204 + 40;
    v205 = *(v204 + 40);
    v207 = *(v206 + 8) - v205;
    if ((v207 >> 3) < 1)
    {
      v208 = 0;
    }

    else
    {
      v208 = 0;
      v209 = (v207 >> 3);
      if (v209 <= 1)
      {
        v209 = 1;
      }

      do
      {
        v210 = *v205++;
        v208 += *(*(*(v210 + 456) + 8 * v250) + 16);
        --v209;
      }

      while (v209);
    }
  }

  v211 = v256->i32[v255];
  v212 = v251 + 1;
  v213 = v256->i32[(v251 + 1) & 3];
  v214 = v251 + 3;
  v254 = v256->i32[(v251 + 3) & 3];
  v215 = *(a1 + 24);
  *(a1 + 24) = v215 + 1;
  v216 = 3 * v255;
  *(&v271[1] + 3 * v255 + 2) = v215 + v208;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v287, *a1, v203);
  v218 = *(a1 + 8);
  if (v218)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v211 + a7), v218, v217);
  }

  v219 = *(a1 + 24);
  *(a1 + 24) = v219 + 1;
  v220 = v219 + v208;
  if (v212 <= 0)
  {
    v221 = -(-v212 & 3);
  }

  else
  {
    v221 = (v251 + 1) & 3;
  }

  v222 = 3 * v221;
  *(&v271[1] + 3 * v221) = v220;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v281, *a1, v217);
  v224 = *(a1 + 8);
  if (v224)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v213 + a7), v224, v223);
  }

  v225 = *(a1 + 24);
  *(a1 + 24) = v225 + 1;
  *(&v271[1] + v222 + 1) = v225 + v208;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v266, *a1, v223);
  v227 = *(a1 + 8);
  if (v227)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v213 + a7), v227, v226);
  }

  v228 = *(a1 + 24);
  *(a1 + 24) = v228 + 1;
  *(&v271[1] + v216) = v228 + v208;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v263, *a1, v226);
  v230 = *(a1 + 8);
  if (v230)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v211 + a7), v230, v229);
  }

  v231 = *(a1 + 24);
  *(a1 + 24) = v231 + 1;
  v232 = v231 + v208;
  if (v214 <= 0)
  {
    v233 = -(-v214 & 3);
  }

  else
  {
    v233 = v214 & 3;
  }

  v234 = 3 * v233;
  *(&v271[1] + 3 * v233 + 2) = v232;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v260, *a1, v229);
  v236 = *(a1 + 8);
  if (v236)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v254 + a7), v236, v235);
  }

  v237 = *(a1 + 24);
  *(a1 + 24) = v237 + 1;
  *(&v271[1] + v234 + 1) = v237 + v208;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v257, *a1, v235);
  v239 = *(a1 + 8);
  if (v239)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v254 + a7), v239, v238);
  }

  v240 = *(a1 + 24);
  *(a1 + 24) = v240 + 1;
  *(&v271[1] + v216 + 1) = v240 + v208;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v292, *a1, v238);
  v242 = *(a1 + 8);
  if (v242)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v211 + a7), v242, v241);
  }

  for (i = 0; i != 16; ++i)
  {
    std::vector<int>::push_back[abi:nn200100]((a1 + 32), v271 + OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,int,OpenSubdiv::v3_1_1::Vtr::ConstArray<int>,int,int)::permuteRegular[i]);
  }

  v244 = *(a1 + 28);
  *(a1 + 28) = v244 + 1;
  v245 = *(a1 + 32);
  operator delete(v259);
  operator delete(v262);
  operator delete(v265);
  operator delete(v270);
  operator delete(__p);
  operator delete(v291);
  operator delete(v296);
  operator delete(v274);
  operator delete(v277);
  operator delete(v280);
  return v245 + (v244 << 6);
}