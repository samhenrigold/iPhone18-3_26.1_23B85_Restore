void sub_2627E4228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  BitArray::~BitArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v23 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v23 - 104);
  _Unwind_Resume(a1);
}

uint64_t Lattice<PhonemeLatticeLC>::cmpNodesByInLinksIgnoreNodes(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v5 = *(a1 + 80);
  v6 = *(v5 + 24 * a2 + 8);
  v7 = *(v5 + 24 * a3 + 8);
  if (v6 == v7)
  {
    v8 = *(v5 + 24 * a2 + 16);
    if (v8 == -2)
    {
      return 0;
    }

    else
    {
      v9 = (v5 + 24 * a3 + 16);
      while (1)
      {
        v10 = *v9;
        result = Lattice<PhonemeLatticeLC>::cmpInLink(a1, v8, *v9);
        if (result)
        {
          break;
        }

        v11 = *(a1 + 128);
        v12 = v11 + 24 * v8;
        v9 = (v11 + 24 * v10 + 16);
        v8 = *(v12 + 16);
        if (v8 == -2)
        {
          return 0;
        }
      }
    }
  }

  else if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t Lattice<PhonemeLatticeLC>::cmpNodesByOutLinksIgnoreNodes(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v5 = *(a1 + 80);
  v6 = *(v5 + 24 * a2 + 12);
  v7 = *(v5 + 24 * a3 + 12);
  if (v6 == v7)
  {
    v8 = *(v5 + 24 * a2 + 20);
    if (v8 == -2)
    {
      return 0;
    }

    else
    {
      v9 = (v5 + 24 * a3 + 20);
      while (1)
      {
        v10 = *v9;
        result = Lattice<PhonemeLatticeLC>::cmpOutLink(a1, v8, *v9);
        if (result)
        {
          break;
        }

        v11 = *(a1 + 128);
        v12 = v11 + 24 * v8;
        v9 = (v11 + 24 * v10 + 20);
        v8 = *(v12 + 20);
        if (v8 == -2)
        {
          return 0;
        }
      }
    }
  }

  else if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t Lattice<PhonemeLatticeLC>::createLink(uint64_t a1, int a2, int a3, __int16 *a4)
{
  v7 = *a4;
  v8 = *(a1 + 120);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = *(*(a1 + 112) + 4 * v9);
    *(a1 + 120) = v9;
    v11 = *(a1 + 128);
  }

  else
  {
    v10 = *(a1 + 136);
    v12 = v10;
    if (v10 == *(a1 + 140))
    {
      DgnArray<CWIDAC>::reallocElts(a1 + 128, 1, 1);
      v12 = *(a1 + 136);
    }

    v11 = *(a1 + 128);
    *(v11 + 24 * v12) = -1;
    *(a1 + 136) = v12 + 1;
  }

  v13 = v11 + 24 * v10;
  *v13 = v7;
  v14 = *(a1 + 104);
  *(v13 + 4) = v14;
  *(v13 + 8) = a2;
  *(v13 + 12) = a3;
  *(v13 + 16) = 0x100000001;
  if (v14 == *(a1 + 108))
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 96, 1, 1);
    v14 = *(a1 + 104);
  }

  *(*(a1 + 96) + 4 * v14) = v10;
  ++*(a1 + 104);
  return v10;
}

void Lattice<PhonemeLatticeLC>::connectInLink(uint64_t result, unsigned int a2)
{
  v4 = *(result + 128);
  v6 = *(v4 + 24 * a2 + 12);
  v7 = *(result + 80);
  v8 = v7 + 24 * v6;
  v11 = *(v8 + 16);
  v10 = (v8 + 16);
  v9 = v11;
  if (v11 == -2)
  {
    v12 = -2;
  }

  else
  {
    do
    {
      v13 = Lattice<PhonemeLatticeLC>::cmpInLink(result, v9, a2);
      if (v13)
      {
        if (v13 >= 1)
        {
          v12 = *v10;
          v4 = *(result + 128);
          goto LABEL_9;
        }
      }

      else
      {
        DuplicateLinkError(*(*(result + 128) + 24 * a2 + 4), *(*(result + 128) + 24 * *v10 + 4));
      }

      v4 = *(result + 128);
      v14 = v4 + 24 * *v10;
      v15 = *(v14 + 16);
      v10 = (v14 + 16);
      v9 = v15;
    }

    while (v15 != -2);
    v12 = -2;
LABEL_9:
    v7 = *(result + 80);
  }

  *v10 = a2;
  *(v4 + 24 * a2 + 16) = v12;
  v16 = v7 + 24 * v6;
  v17 = *(v16 + 8);
  *(v16 + 8) = v17 + 1;
  if (!v17)
  {

    DgnPrimArray<unsigned int>::removeKeepOrder((result + 32), v6);
  }
}

void Lattice<PhonemeLatticeLC>::connectOutLink(uint64_t result, unsigned int a2)
{
  v4 = *(result + 128);
  v6 = *(v4 + 24 * a2 + 8);
  v7 = *(result + 80);
  v8 = v7 + 24 * v6;
  v11 = *(v8 + 20);
  v10 = (v8 + 20);
  v9 = v11;
  if (v11 == -2)
  {
    v12 = -2;
  }

  else
  {
    do
    {
      v13 = Lattice<PhonemeLatticeLC>::cmpOutLink(result, v9, a2);
      if (v13)
      {
        if (v13 >= 1)
        {
          v12 = *v10;
          v4 = *(result + 128);
          goto LABEL_9;
        }
      }

      else
      {
        DuplicateLinkError(*(*(result + 128) + 24 * a2 + 4), *(*(result + 128) + 24 * *v10 + 4));
      }

      v4 = *(result + 128);
      v14 = v4 + 24 * *v10;
      v15 = *(v14 + 20);
      v10 = (v14 + 20);
      v9 = v15;
    }

    while (v15 != -2);
    v12 = -2;
LABEL_9:
    v7 = *(result + 80);
  }

  *v10 = a2;
  *(v4 + 24 * a2 + 20) = v12;
  v16 = v7 + 24 * v6;
  v17 = *(v16 + 12);
  *(v16 + 12) = v17 + 1;
  if (!v17)
  {

    DgnPrimArray<unsigned int>::removeKeepOrder((result + 48), v6);
  }
}

unint64_t Lattice<PhonemeLatticeLC>::connectInLinkUnordered(unint64_t result, unsigned int a2)
{
  v3 = *(result + 128) + 24 * a2;
  v4 = *(v3 + 12);
  v5 = *(result + 80) + 24 * v4;
  v6 = *(v5 + 16);
  *(v5 + 16) = a2;
  *(v3 + 16) = v6;
  v7 = *(v5 + 8);
  *(v5 + 8) = v7 + 1;
  if (!v7)
  {
    return DgnPrimArray<unsigned int>::removeKeepOrder((result + 32), v4);
  }

  return result;
}

unint64_t Lattice<PhonemeLatticeLC>::connectOutLinkUnordered(unint64_t result, unsigned int a2)
{
  v3 = *(result + 128) + 24 * a2;
  v4 = *(v3 + 8);
  v5 = *(result + 80) + 24 * v4;
  v6 = *(v5 + 20);
  *(v5 + 20) = a2;
  *(v3 + 20) = v6;
  v7 = *(v5 + 12);
  *(v5 + 12) = v7 + 1;
  if (!v7)
  {
    return DgnPrimArray<unsigned int>::removeKeepOrder((result + 48), v4);
  }

  return result;
}

uint64_t *Lattice<PhonemeLatticeLC>::gcNonTerminal(uint64_t a1)
{
  Lattice<PhonemeLatticeLC>::gcSetup(a1);
  if (*(a1 + 56))
  {
    v2 = 0;
    v3 = *(a1 + 48);
    v4 = *(a1 + 80);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    do
    {
      v7 = *(v3 + 4 * v2);
      *(v4 + 24 * v7) = v6;
      *(v5 + 4 * v6) = v7;
      v6 = *(a1 + 24) + 1;
      *(a1 + 24) = v6;
      ++v2;
    }

    while (v2 < *(a1 + 56));
  }

  else
  {
    v6 = *(a1 + 24);
  }

  DgnPrimArray<int>::copyArraySlice((a1 + 48), (a1 + 16), 0, v6);
  *(a1 + 40) = 0;
  if (*(a1 + 24))
  {
    v8 = 0;
    do
    {
      v9 = *(a1 + 16);
      v10 = *(v9 + 4 * v8);
      v11 = *(a1 + 80);
      if (*(v11 + 24 * v10 + 8))
      {
        v12 = *(v11 + 24 * v10 + 16);
        if (v12 != -2)
        {
          v13 = *(a1 + 128);
          v14 = *(a1 + 96);
          do
          {
            v15 = *(v13 + 24 * v12 + 8);
            v16 = (v11 + 24 * v15);
            if (*v16 == -1)
            {
              v17 = *(a1 + 24);
              *v16 = v17;
              *(v9 + 4 * v17) = v15;
              ++*(a1 + 24);
            }

            v18 = *(a1 + 104);
            v19 = v13 + 24 * v12;
            *(v19 + 4) = v18;
            *(v14 + 4 * v18) = v12;
            ++*(a1 + 104);
            v12 = *(v19 + 16);
          }

          while (v12 != -2);
        }
      }

      else
      {
        v20 = *(a1 + 40);
        if (v20 == *(a1 + 44))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 32, 1, 1);
          v20 = *(a1 + 40);
        }

        *(*(a1 + 32) + 4 * v20) = v10;
        ++*(a1 + 40);
      }

      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  return Lattice<PhonemeLatticeLC>::gcCleanup(a1);
}

uint64_t *Lattice<PhonemeLatticeLC>::gcNonInitial(uint64_t a1)
{
  Lattice<PhonemeLatticeLC>::gcSetup(a1);
  if (*(a1 + 40))
  {
    v2 = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 80);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    do
    {
      v7 = *(v3 + 4 * v2);
      *(v4 + 24 * v7) = v6;
      *(v5 + 4 * v6) = v7;
      v6 = *(a1 + 24) + 1;
      *(a1 + 24) = v6;
      ++v2;
    }

    while (v2 < *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 24);
  }

  DgnPrimArray<int>::copyArraySlice((a1 + 32), (a1 + 16), 0, v6);
  *(a1 + 56) = 0;
  if (*(a1 + 24))
  {
    v8 = 0;
    do
    {
      v9 = *(a1 + 16);
      v10 = *(v9 + 4 * v8);
      v11 = *(a1 + 80);
      if (*(v11 + 24 * v10 + 12))
      {
        v12 = *(v11 + 24 * v10 + 20);
        if (v12 != -2)
        {
          v13 = *(a1 + 128);
          v14 = *(a1 + 96);
          do
          {
            v15 = *(v13 + 24 * v12 + 12);
            v16 = (v11 + 24 * v15);
            if (*v16 == -1)
            {
              v17 = *(a1 + 24);
              *v16 = v17;
              *(v9 + 4 * v17) = v15;
              ++*(a1 + 24);
            }

            v18 = *(a1 + 104);
            v19 = v13 + 24 * v12;
            *(v19 + 4) = v18;
            *(v14 + 4 * v18) = v12;
            ++*(a1 + 104);
            v12 = *(v19 + 20);
          }

          while (v12 != -2);
        }
      }

      else
      {
        v20 = *(a1 + 56);
        if (v20 == *(a1 + 60))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 48, 1, 1);
          v20 = *(a1 + 56);
        }

        *(*(a1 + 48) + 4 * v20) = v10;
        ++*(a1 + 56);
      }

      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  return Lattice<PhonemeLatticeLC>::gcCleanup(a1);
}

uint64_t *Lattice<PhonemeLatticeLC>::gcSetup(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 80);
    v5 = (v3 + 4 * v2);
    LODWORD(v6) = *(a1 + 40);
    do
    {
      if (!*(v4 + 24 * *(v3 + 4 * (v2 - 1)) + 12))
      {
        v6 = (v6 - 1);
        if (v2 - 1 < v6)
        {
          v7 = v5;
          v8 = v2 - 1;
          do
          {
            ++v8;
            *(v7 - 1) = *v7;
            ++v7;
          }

          while (v8 < (*(a1 + 40) - 1));
          LODWORD(v6) = *(a1 + 40) - 1;
        }

        *(a1 + 40) = v6;
      }

      --v5;
      v9 = v2-- <= 1;
    }

    while (!v9);
  }

  v10 = *(a1 + 56);
  if (v10 >= 1)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 80);
    v13 = (v11 + 4 * v10);
    LODWORD(v14) = *(a1 + 56);
    do
    {
      if (!*(v12 + 24 * *(v11 + 4 * (v10 - 1)) + 8))
      {
        v14 = (v14 - 1);
        if (v10 - 1 < v14)
        {
          v15 = v13;
          v16 = v10 - 1;
          do
          {
            ++v16;
            *(v15 - 1) = *v15;
            ++v15;
          }

          while (v16 < (*(a1 + 56) - 1));
          LODWORD(v14) = *(a1 + 56) - 1;
        }

        *(a1 + 56) = v14;
      }

      --v13;
      v9 = v10-- <= 1;
    }

    while (!v9);
  }

  DgnPrimArray<int>::copyArraySlice((a1 + 176), (a1 + 16), 0, *(a1 + 24));
  *(a1 + 24) = 0;
  v17 = *(a1 + 184);
  if (v17 >= 1)
  {
    v18 = *(a1 + 80);
    v19 = v17 + 1;
    v20 = (*(a1 + 176) + 4 * v17 - 4);
    do
    {
      v21 = *v20--;
      *(v18 + 24 * v21) = -1;
      --v19;
    }

    while (v19 > 1);
  }

  result = DgnPrimArray<int>::copyArraySlice((a1 + 160), (a1 + 96), 0, *(a1 + 104));
  *(a1 + 104) = 0;
  v23 = *(a1 + 168);
  if (v23 >= 1)
  {
    v24 = *(a1 + 128);
    v25 = v23 + 1;
    v26 = (*(a1 + 160) + 4 * v23 - 4);
    do
    {
      v27 = *v26--;
      *(v24 + 24 * v27 + 4) = -1;
      --v25;
    }

    while (v25 > 1);
  }

  return result;
}

uint64_t *Lattice<PhonemeLatticeLC>::gcCleanup(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 42);
  if (v2 >= 1)
  {
    v3 = v2 - 1;
    do
    {
      v4 = *(*(v1 + 160) + 4 * v3);
      if (*(*(v1 + 128) + 24 * v4 + 4) == -1)
      {
        result = Lattice<PhonemeLatticeLC>::disconnectAndDestroyLink(v1, v4);
      }

      v5 = v3-- + 1;
    }

    while (v5 > 1);
  }

  v6 = *(v1 + 184);
  if (v6 >= 1)
  {
    v7 = v6 - 1;
    do
    {
      v8 = *(*(v1 + 176) + 4 * v7);
      v9 = *(v1 + 80) + 24 * v8;
      if (*v9 == -1)
      {
        *(v9 + 16) = 0x100000001;
        result = Lattice<WordLatticeLC>::destroyNode(v1, v8);
      }

      v10 = v7-- + 1;
    }

    while (v10 > 1);
  }

  return result;
}

uint64_t *Lattice<PhonemeLatticeLC>::disconnectAndDestroyLink(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  Lattice<PhonemeLatticeLC>::disconnectInLink(a1, a2);
  Lattice<PhonemeLatticeLC>::disconnectOutLink(a1, v2);

  return Lattice<PhonemeLatticeLC>::destroyLinkNoDuplicateCheck(a1, v2);
}

uint64_t *Lattice<PhonemeLatticeLC>::disconnectInLink(uint64_t *result, unsigned int a2)
{
  v3 = result[16];
  v4 = *(v3 + 24 * a2 + 12);
  v5 = (result[10] + 24 * v4);
  if (*v5 != -1)
  {
    v6 = result;
    v7 = v5[4];
    v8 = v7 == a2;
    if (v7 == -2 || v7 == a2)
    {
      v10 = result[10] + 24 * v4;
    }

    else
    {
      do
      {
        v10 = v3 + 24 * v7;
        v7 = *(v10 + 16);
        v8 = v7 == a2;
      }

      while (v7 != -2 && v7 != a2);
    }

    if (v8)
    {
      *(v10 + 16) = *(v3 + 24 * a2 + 16);
      v12 = v5[2] - 1;
      v5[2] = v12;
      if (!v12)
      {
        v13 = *(result + 10);
        if (v13 == *(result + 11))
        {
          result = DgnPrimArray<unsigned int>::reallocElts((result + 4), 1, 1);
          v13 = *(v6 + 40);
          v3 = *(v6 + 128);
        }

        *(*(v6 + 32) + 4 * v13) = v4;
        ++*(v6 + 40);
      }
    }
  }

  *(v3 + 24 * a2 + 12) = -2;
  return result;
}

uint64_t *Lattice<PhonemeLatticeLC>::disconnectOutLink(uint64_t *result, unsigned int a2)
{
  v3 = result[16];
  v4 = *(v3 + 24 * a2 + 8);
  v5 = (result[10] + 24 * v4);
  if (*v5 != -1)
  {
    v6 = result;
    v7 = v5[5];
    v8 = v7 == a2;
    if (v7 == -2 || v7 == a2)
    {
      v10 = result[10] + 24 * v4;
    }

    else
    {
      do
      {
        v10 = v3 + 24 * v7;
        v7 = *(v10 + 20);
        v8 = v7 == a2;
      }

      while (v7 != -2 && v7 != a2);
    }

    if (v8)
    {
      *(v10 + 20) = *(v3 + 24 * a2 + 20);
      v12 = v5[3] - 1;
      v5[3] = v12;
      if (!v12)
      {
        v13 = *(result + 14);
        if (v13 == *(result + 15))
        {
          result = DgnPrimArray<unsigned int>::reallocElts((result + 6), 1, 1);
          v13 = *(v6 + 56);
          v3 = *(v6 + 128);
        }

        *(*(v6 + 48) + 4 * v13) = v4;
        ++*(v6 + 56);
      }
    }
  }

  *(v3 + 24 * a2 + 8) = -2;
  return result;
}

uint64_t *Lattice<PhonemeLatticeLC>::destroyLinkNoDuplicateCheck(uint64_t *result, unsigned int a2)
{
  v3 = result;
  v4 = result[16];
  v5 = *(v4 + 24 * a2 + 4);
  if (v5 != -1)
  {
    v6 = *(result + 26) - 1;
    v7 = result[12];
    v8 = *(v7 + 4 * v6);
    *(v7 + 4 * v5) = v8;
    *(v4 + 24 * v8 + 4) = v5;
    *(result + 26) = v6;
  }

  v9 = *(result + 30);
  if (v9 == *(result + 31))
  {
    result = DgnPrimArray<unsigned int>::reallocElts((result + 14), 1, 1);
    v9 = *(v3 + 30);
  }

  *(v3[14] + 4 * v9) = a2;
  ++*(v3 + 30);
  return result;
}

uint64_t Lattice<PhonemeLatticeLC>::topSortInternal(uint64_t a1, int a2)
{
  v5 = *(a1 + 24);
  v80 = 0;
  v81 = 0;
  if (v5)
  {
    v78 = 0;
    v6 = realloc_array(0, &v78, 4 * v5, 0, 0, 1);
    v7 = v78;
    v80 = v78;
    v8 = *(a1 + 24);
    LODWORD(v81) = v5;
    HIDWORD(v81) = v6 >> 2;
    if (!v8)
    {
      v23 = 0;
      goto LABEL_36;
    }

    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 16);
    v12 = *(a1 + 80);
    do
    {
      v13 = *(v11 + 4 * v9);
      v14 = *(v12 + 24 * v13 + 8);
      if (!v14)
      {
        if (v9 == v10)
        {
          v14 = 0;
        }

        else
        {
          if (a2)
          {
            goto LABEL_67;
          }

          v15 = *(v11 + 4 * v10);
          *(v11 + 4 * v9) = v15;
          *(v12 + 24 * v15) = v9;
          *(v11 + 4 * v10) = v13;
          *(v12 + 24 * v13) = v10;
          v14 = v7[v10];
          v7[v10] = 0;
        }

        v10 = (v10 + 1);
      }

      v7[v9++] = v14;
    }

    while (v9 < *(a1 + 24));
    if (v10 >= 2)
    {
      if (a2)
      {
        v16 = *(a1 + 16);
        v19 = *v16;
        v17 = v16 + 1;
        v18 = v19;
        v20 = v10 - 1;
        while (1)
        {
          v22 = *v17++;
          v21 = v22;
          if (v18 == v22 || *(*(a1 + 80) + 24 * v18 + 4) >= *(*(a1 + 80) + 24 * v21 + 4))
          {
            goto LABEL_67;
          }

          v18 = v21;
          if (!--v20)
          {
            goto LABEL_19;
          }
        }
      }

      (*(*a1 + 24))(a1, a1 + 16, v10);
      if (v10 >= 1)
      {
        v65 = *(a1 + 80);
        v66 = v10;
        v67 = *(a1 + 16) - 4;
        v68 = *(a1 + 32) - 4;
        do
        {
          v69 = v66 > 1;
          *(v65 + 24 * *(v67 + 4 * v66)) = v66 - 1;
          *(v68 + 4 * v66) = *(v67 + 4 * v66);
          --v66;
        }

        while (v69);
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
    LODWORD(v81) = 0;
  }

LABEL_19:
  v23 = *(a1 + 24);
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = *(a1 + 16);
    v27 = *(a1 + 80);
    do
    {
      v28 = *(v27 + 24 * *(v26 + 4 * v24) + 20);
      if (v28 != -2)
      {
        v29 = *(a1 + 128);
        v30 = v80;
        do
        {
          v31 = *(v29 + 24 * v28 + 4);
          if (v25 != v31)
          {
            if (a2)
            {
              goto LABEL_67;
            }

            v32 = *(a1 + 96);
            v33 = *(v32 + 4 * v31);
            v34 = *(v32 + 4 * v25);
            *(v32 + 4 * v31) = v34;
            *(v29 + 24 * v34 + 4) = v31;
            *(v32 + 4 * v25) = v33;
            *(v29 + 24 * v33 + 4) = v25;
          }

          v35 = *(v27 + 24 * *(v29 + 24 * v28 + 12));
          v36 = v30[v35] - 1;
          v30[v35] = v36;
          if (!v36)
          {
            if (v35 != v10)
            {
              if (a2)
              {
                goto LABEL_67;
              }

              v37 = *(v26 + 4 * v35);
              v38 = *(v26 + 4 * v10);
              *(v26 + 4 * v35) = v38;
              *(v27 + 24 * v38) = v35;
              *(v26 + 4 * v10) = v37;
              *(v27 + 24 * v37) = v10;
              v30[v35] = v30[v10];
              v30[v10] = 0;
            }

            LODWORD(v10) = v10 + 1;
          }

          v28 = *(v29 + 24 * v28 + 20);
          ++v25;
        }

        while (v28 != -2);
        v23 = *(a1 + 24);
      }

      ++v24;
    }

    while (v24 < v23);
  }

LABEL_36:
  v39 = *(a1 + 56);
  if (v39 >= 2)
  {
    if (a2)
    {
      v40 = v39 - 1;
      v41 = v23 - 2;
      while (1)
      {
        v42 = __OFSUB__(v40--, 1);
        if (v40 < 0 != v42)
        {
          break;
        }

        v43 = *(a1 + 16);
        v44 = *(v43 + 4 * v41);
        v45 = *(v43 + 4 * (v41 + 1));
        if (v44 != v45)
        {
          --v41;
          if (*(*(a1 + 80) + 24 * v44 + 4) < *(*(a1 + 80) + 24 * v45 + 4))
          {
            continue;
          }
        }

        goto LABEL_67;
      }
    }

    else
    {
      (*(*a1 + 16))(a1, a1 + 48);
      if ((v39 - 1) < 0)
      {
        goto LABEL_65;
      }

      v46 = *(a1 + 48);
      v47 = *(a1 + 16);
      v48 = *(a1 + 80);
      v49 = 4 * (v39 - 1);
      v50 = *(a1 + 24) - 1;
      do
      {
        v51 = *(v46 + v49);
        *(v47 + 4 * v50) = v51;
        *(v48 + 24 * v51) = v50;
        v49 -= 4;
        --v50;
      }

      while (v49 != -4);
    }
  }

  if (a2)
  {
    v52 = *(a1 + 24);
    if (v52)
    {
      v53 = 0;
      v54 = *(a1 + 16);
      v55 = *(a1 + 80);
      v56 = 1;
      v57 = *(a1 + 24);
      while (1)
      {
        v59 = *v54++;
        v58 = v59;
        v60 = *(v55 + 24 * v59 + 8);
        if ((v56 & 1) == 0 && !v60)
        {
          goto LABEL_67;
        }

        v61 = *(v55 + 24 * v58 + 12);
        if ((v53 & (v61 != 0)) != 0)
        {
          goto LABEL_67;
        }

        v56 &= v60 == 0;
        v53 |= v61 == 0;
        if (!--v57)
        {
          v78 = 0;
          v79 = 0;
          v82 = 0;
          v62 = realloc_array(0, &v82, v52, 0, 0, 1);
          v63 = v82;
          v78 = v82;
          v64 = *(a1 + 24);
          v79 = __PAIR64__(v62, v52);
          if (v64 >= 1)
          {
            bzero(v82, v64);
          }

          goto LABEL_60;
        }
      }
    }

    v63 = 0;
    v78 = 0;
    v79 = 0;
LABEL_60:
    v70 = *(a1 + 104);
    if (v70)
    {
      v71 = *(a1 + 96);
      v72 = *(a1 + 128);
      v73 = *(a1 + 80);
      while (1)
      {
        v74 = *v71++;
        v75 = v72 + 24 * v74;
        v63[*(v73 + 24 * *(v75 + 8))] = 1;
        if (v63[*(v73 + 24 * *(v75 + 12))] == 1)
        {
          break;
        }

        if (!--v70)
        {
          goto LABEL_64;
        }
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v78);
LABEL_67:
      v76 = 0;
      goto LABEL_68;
    }

LABEL_64:
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v78);
  }

LABEL_65:
  v76 = 1;
LABEL_68:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v80);
  return v76;
}

void sub_2627E555C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void MrecInitLibrarySet_throughGerm(void)
{
  MrecInitLibrarySet_throughUser();
  MrecInitLibrarySet_throughVoc();

  MrecInitModule_sdpres_sdapi();
}

void TCliticsParamManager::TCliticsParamManager(TCliticsParamManager *this, TLocaleInfo *a2)
{
  TLattProcParamManager::TLattProcParamManager(this, a2);
  *v3 = &unk_287525A78;
  TBoolParam::TBoolParam((v3 + 62), "D", "L", 0, 0, "1", &dword_26288EABC);
  TIntParam::TIntParam((this + 744), "C", "T", 0, 0, 300, 0, "1", &dword_26288EABC);
  TBoolParam::TBoolParam(this + 1096, "C", "R", 0, 0, "1", &dword_26288EABC);
  TStringParam::TStringParam(this + 1344, "C", "S", 256, &dword_26288EABC, "1", &dword_26288EABC);
  TParamManager::add(this, (this + 496));
  TParamManager::add(this, (this + 744));
  TParamManager::add(this, (this + 1096));
  TParamManager::add(this, (this + 1344));
}

void sub_2627E56E8(_Unwind_Exception *a1)
{
  TBoolParam::~TBoolParam(v1 + 137);
  TParam::~TParam(v1 + 93);
  TBoolParam::~TBoolParam(v1 + 62);
  TLattProcParamManager::~TLattProcParamManager(v1);
  _Unwind_Resume(a1);
}

void TCliticsProc::TCliticsProc(void *a1, uint64_t a2, BOOL a3, __int32 *a4)
{
  v5 = TLatticeProcessor::TLatticeProcessor(a1, a2, 0);
  *v5 = &unk_287528B18;
  TRegExp::TRegExp(v5 + 9, a2 + 240);
  operator new();
}

void sub_2627E5848(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v3, 0x10F3C40A031EB00);
  TRegExp::~TRegExp(v2);
  TLatticeProcessor::~TLatticeProcessor(v1);
  _Unwind_Resume(a1);
}

uint64_t TBoolParam::set(TBoolParam *this, char a2)
{
  ActiveConfigHandle = TParam::getActiveConfigHandle(this);
  *(this + ActiveConfigHandle + 176) = a2;
  *(this + 14) |= 1 << (ActiveConfigHandle + 33);

  return TParam::notifyChange(this, ActiveConfigHandle);
}

void TCliticsProc::~TCliticsProc(TCliticsProc *this)
{
  *this = &unk_287528B18;
  v2 = (this + 72);
  TRne::freeMemory(this);
  TRegExp::~TRegExp(v2);

  TLatticeProcessor::~TLatticeProcessor(this);
}

{
  TCliticsProc::~TCliticsProc(this);

  JUMPOUT(0x26672B1B0);
}

void TCliticsProc::applyInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v84 = 0;
  v85 = 0;
  v86 = 0;
  TFsa::topologicalSort(a3 + 3, &v84);
  v9 = v84;
  v8 = v85;
  v11 = a3[16];
  v10 = a3[17];
  v81 = 0;
  v82 = 0;
  v83 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](v80, ((v85 - v84) >> 3) + 1);
  v63 = (v8 - v9) >> 3;
  std::vector<unsigned long>::vector[abi:ne200100](v79, v63);
  std::vector<TWord const*>::vector[abi:ne200100](v78, (v10 - v11) >> 3);
  v62 = v8 - v9;
  v66 = a3;
  TAllocator::TAllocator(v77, 2048);
  v12 = a5;
  *a5 = 0;
  v72 = -1;
  std::vector<unsigned long>::vector[abi:ne200100](v76, v63, &v72);
  if (v8 != v9)
  {
    v13 = 0;
    v14 = (v8 - v9) >> 3;
    if (v63 <= 1)
    {
      v14 = 1;
    }

    v64 = v14;
    do
    {
      v15 = *&v84[8 * v13];
      *(v79[0] + *v15) = v13;
      v65 = v13;
      *(v80[0] + v13) = (v82 - v81) >> 3;
      for (i = v15[2]; i; i = *(i + 32))
      {
        v17 = *i;
        v18 = *(i + 8);
        v19 = *(v79[0] + **(i + 24));
        if (**i != 2 || (v17[2] & 1) != 0)
        {
          v22 = 0;
          v23 = 2;
        }

        else
        {
          v20 = v17[1];
          Word = TLexicon::findWord(*(a1 + 16), v20);
          v22 = Word;
          if (Word)
          {
            v23 = (*TWord::getOptionalTagBits(Word) >> 6) & 1;
          }

          else
          {
            v22 = TLexicon::addTempWord(*(a1 + 16), v20, 0, 0, 0);
            v23 = 0;
          }
        }

        *(v78[0] + v18) = v22;
        v24 = (v80[0] + 8 * v19);
        v26 = *v24;
        v25 = v24[1];
        v27 = *v24 == v25;
        if (*v24 < v25)
        {
          v27 = 0;
          if (v23 == 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = 8 * (v23 == 2);
          }

          do
          {
            v29 = v81[v26];
            if (*(v29 + 16))
            {
              v31 = TAllocator::allocate(v77, 24);
              *v31 = v29;
              v31[1] = v18;
              v31[2] = v28;
              v72 = v31;
              std::vector<TItnRule *>::push_back[abi:ne200100](&v81, &v72);
            }

            else if (v23 == 1)
            {
              v30 = TAllocator::allocate(v77, 24);
              *v30 = v29;
              v30[1] = v18;
              v30[2] = 2;
              v72 = v30;
              std::vector<TItnRule *>::push_back[abi:ne200100](&v81, &v72);
            }

            else
            {
              addTransitionToLattice(v66, v78, v29, *(a1 + 16), *(a1 + 56), a1 + 72, a4, v76, v12);
              v27 = 1;
            }

            ++v26;
          }

          while (v25 != v26);
        }

        if (v27)
        {
          v32 = TAllocator::allocate(v77, 24);
          v33 = 8 * (v23 == 2);
          *v32 = 0;
          v32[1] = v18;
          if (v23 == 1)
          {
            v33 = 1;
          }

          v32[2] = v33;
          v72 = v32;
          std::vector<TItnRule *>::push_back[abi:ne200100](&v81, &v72);
        }
      }

      v13 = v65 + 1;
    }

    while (v65 + 1 != v64);
  }

  *(v80[0] + v62) = (v82 - v81) >> 3;
  v35 = v66[25];
  v34 = v66[26];
  if (v35 != v34)
  {
    while (!*v35)
    {
      if (++v35 == v34)
      {
        goto LABEL_42;
      }
    }
  }

  if (v35 != v34)
  {
    do
    {
      v36 = (v80[0] + 8 * *(v79[0] + **v35));
      v37 = *v36;
      v38 = v36[1];
      if (*v36 < v38)
      {
        do
        {
          v39 = v81[v37];
          if ((*(v39 + 16) & 1) == 0)
          {
            addTransitionToLattice(v66, v78, v39, *(a1 + 16), *(a1 + 56), a1 + 72, a4, v76, v12);
          }

          ++v37;
        }

        while (v38 != v37);
      }

      v40 = v35 + 1;
      do
      {
        v35 = v40;
        if (v40 == v34)
        {
          break;
        }

        ++v40;
      }

      while (!*v35);
    }

    while (v35 != v66[26]);
  }

LABEL_42:
  if (!*v12)
  {
    *v12 = 1;
  }

  v41 = *(a1 + 56);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v41 + 496));
  v44 = *(v41 + TParam::getValidConfig((v41 + 496), ActiveConfigHandle) + 648);
  v45 = v63;
  if (v44 == 1)
  {
    tknPrintf("=== START PRODUCTIONS ===\n", v43);
    v47 = v81;
    if (v82 != v81)
    {
      v48 = 0;
      v49 = 0;
      do
      {
        if (v49 <= v45)
        {
          do
          {
            if (v48 != *(v80[0] + v49))
            {
              break;
            }

            tknPrintf("Productions for State #%llu...\n", v46, v49++);
          }

          while (v49 <= v45);
          v47 = v81;
        }

        v50 = v47[v48];
        v51 = v50[1];
        if (*(v78[0] + v51))
        {
          v72 = v74;
          v73 = xmmword_26286B6F0;
          v75 = 1;
          v52 = *(v78[0] + v51);
          if (v52)
          {
            TWord::getWrittenForm(v52, &v72);
            v53 = **(v78[0] + v50[1]);
          }

          else
          {
            TBuffer<wchar_t>::assign(&v72, "(");
            if (*(&v73 + 1) >= v73)
            {
              if (v75)
              {
                LODWORD(__p) = 0;
                TBuffer<wchar_t>::insert(&v72, *(&v73 + 1), &__p, 1uLL);
                v53 = v72;
                --*(&v73 + 1);
              }

              else
              {
                v53 = v72;
                if (v73)
                {
                  *(v72 + 4 * v73 - 4) = 0;
                }
              }
            }

            else
            {
              v53 = v72;
              *(v72 + 4 * *(&v73 + 1)) = 0;
            }
          }

          v54 = *v50;
          if (*v50)
          {
            __p = v70;
            v69 = xmmword_26286B6F0;
            v71 = 1;
            do
            {
              if ((v54[2] & 8) != 0)
              {
                v55 = "(";
                v56 = 9;
              }

              else
              {
                TWord::getWrittenForm(*(v78[0] + v54[1]), &__p);
                if (*(&v69 + 1) >= v69)
                {
                  if (v71)
                  {
                    v87[0] = 0;
                    TBuffer<wchar_t>::insert(&__p, *(&v69 + 1), v87, 1uLL);
                    v55 = __p;
                    --*(&v69 + 1);
                  }

                  else
                  {
                    v55 = __p;
                    if (v69)
                    {
                      *(__p + v69 - 1) = 0;
                    }
                  }
                }

                else
                {
                  v55 = __p;
                  *(__p + *(&v69 + 1)) = 0;
                }

                v57 = 0;
                  ;
                }

                v56 = v57 - 1;
              }

              TBuffer<wchar_t>::insert(&v72, 0, v55, v56);
              v54 = *v54;
            }

            while (v54);
            if (*(&v73 + 1) >= v73)
            {
              if (v75)
              {
                v87[0] = 0;
                TBuffer<wchar_t>::insert(&v72, *(&v73 + 1), v87, 1uLL);
                v53 = v72;
                --*(&v73 + 1);
              }

              else
              {
                v53 = v72;
                if (v73)
                {
                  *(v72 + 4 * v73 - 4) = 0;
                }
              }
            }

            else
            {
              v53 = v72;
              *(v72 + 4 * *(&v73 + 1)) = 0;
            }

            if (v71 == 1 && __p != v70 && __p)
            {
              MEMORY[0x26672B1B0]();
            }
          }

          v59 = v50[2];
          loggableUnicode(v53, &__p);
          p_p = &__p;
          if (v69 < 0)
          {
            p_p = __p;
          }

          tknPrintf("Production #%llu (0x%llx): %s\n", v60, v48, v59, p_p);
          v45 = v63;
          if (SHIBYTE(v69) < 0)
          {
            operator delete(__p);
          }

          if (v75 == 1 && v72 != v74 && v72)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        else
        {
          tknPrintf("Production #%llu (0x%llx): (UNKNOWN)\n", v46, v48, v50[2]);
          v45 = v63;
        }

        ++v48;
        v47 = v81;
      }

      while (v48 < (v82 - v81) >> 3);
    }

    tknPrintf("=== END PRODUCTIONS ===\n", v46);
  }

  if (v76[0])
  {
    v76[1] = v76[0];
    operator delete(v76[0]);
  }

  TAllocator::clear(v77);
  if (v78[0])
  {
    v78[1] = v78[0];
    operator delete(v78[0]);
  }

  if (v79[0])
  {
    v79[1] = v79[0];
    operator delete(v79[0]);
  }

  if (v80[0])
  {
    v80[1] = v80[0];
    operator delete(v80[0]);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }
}

void sub_2627E612C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (LOBYTE(STACK[0x470]) == 1 && a20 != v21 && a20)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x890]) == 1)
  {
    v24 = STACK[0x478];
    if (STACK[0x478] != v20)
    {
      if (v24)
      {
        MEMORY[0x26672B1B0](v24, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  v25 = STACK[0x898];
  if (STACK[0x898])
  {
    STACK[0x8A0] = v25;
    operator delete(v25);
  }

  TAllocator::clear((v22 - 256));
  v26 = *(v22 - 216);
  if (v26)
  {
    *(v22 - 208) = v26;
    operator delete(v26);
  }

  v27 = *(v22 - 192);
  if (v27)
  {
    *(v22 - 184) = v27;
    operator delete(v27);
  }

  v28 = *(v22 - 168);
  if (v28)
  {
    *(v22 - 160) = v28;
    operator delete(v28);
  }

  v29 = *(v22 - 144);
  if (v29)
  {
    *(v22 - 136) = v29;
    operator delete(v29);
  }

  v30 = *(v22 - 120);
  if (v30)
  {
    *(v22 - 112) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void addTransitionToLattice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2);
  v56 = v14;
  v58 = v15;
  if ((*(v10 + 16) & 0x10) == 0)
  {
    v16 = v13;
    v17 = v12;
    v18 = v11;
    v19 = v10;
    v20 = v9;
    ActiveConfigHandle = TParam::getActiveConfigHandle((v11 + 1096));
    v54 = *(v18 + TParam::getValidConfig((v18 + 1096), ActiveConfigHandle) + 1248);
    v22 = TParam::getActiveConfigHandle((v18 + 744));
    v59 = *(v18 + 4 * TParam::getValidConfig((v18 + 744), v22) + 904);
    v53 = v17;
    v55 = v17[2];
    v73 = &v75;
    v74 = xmmword_26286B6F0;
    v76 = 1;
    v23 = *(*(v20 + 128) + 8 * *(v19 + 8));
    v24 = *v23[3];
    v52 = *v23[2];
    v57 = *v23;
    v25 = *(*v23 + 4);
    v26 = (*v23)[5];
    v27 = *(*v23 + 6);
    v72[2] = *(*v23 + 5);
    v72[3] = v27;
    v28 = v57[8];
    v72[4] = v57[7];
    v72[5] = v28;
    v29 = v57[4];
    v72[0] = v57[3];
    v72[1] = v29;
    v30 = *v19;
    if (!*v19)
    {
      goto LABEL_67;
    }

    v51 = v16;
    v31 = (*(v19 + 16) & 3) == 0;
    v32 = v19;
    while (1)
    {
      v33 = v30;
      v34 = v30[1];
      v35 = *(*(v20 + 128) + 8 * v34);
      v24 = *v35[3];
      v36 = *v35;
      v37 = *(*v35 + 4);
      v26 += (*v35)[5];
      if (v31)
      {
        goto LABEL_9;
      }

      v38 = v33[2];
      if ((v38 & 8) != 0)
      {
        break;
      }

      if ((v38 & 3) == 0)
      {
        v41 = *v58;
        if (!v55)
        {
          goto LABEL_28;
        }

        TWord::getCategoryTag(*(v41 + 8 * v34), &v73);
        if (*(&v74 + 1) >= v74)
        {
          if (v76)
          {
            LODWORD(v68) = 0;
            TBuffer<wchar_t>::insert(&v73, *(&v74 + 1), &v68, 1uLL);
            v42 = v73;
            --*(&v74 + 1);
          }

          else
          {
            v42 = v73;
            if (v74)
            {
              v73[v74 - 1] = 0;
            }
          }
        }

        else
        {
          v42 = v73;
          v73[*(&v74 + 1)] = 0;
        }

        v43 = TRegExp::match(v53, v42, 0);
        v34 = v33[1];
        v41 = *v58;
        if ((v43 & 1) == 0)
        {
          v39 = 0;
        }

        else
        {
LABEL_28:
          v68 = v70;
          v69 = xmmword_26286B6F0;
          v71 = 1;
          TWord::getWrittenForm(*(v41 + 8 * v34), &v68);
          v64 = v66;
          v65 = xmmword_26286B6F0;
          v67 = 1;
          TWord::getWrittenForm(*(*v58 + 8 * v32[1]), &v64);
          v60 = v62;
          v61 = xmmword_26286B6F0;
          v63 = 1;
          TBuffer<wchar_t>::operator=(&v60, &v68);
          TBuffer<wchar_t>::operator+=(&v60, &v64);
          if (!v54)
          {
            goto LABEL_37;
          }

          if (*(&v69 + 1) >= v69)
          {
            if (v71)
            {
              v77[0] = 0;
              TBuffer<wchar_t>::insert(&v68, *(&v69 + 1), v77, 1uLL);
              v44 = v68;
              --*(&v69 + 1);
            }

            else
            {
              v44 = v68;
              if (v69)
              {
                v68[v69 - 1] = 0;
              }
            }
          }

          else
          {
            v44 = v68;
            v68[*(&v69 + 1)] = 0;
          }

          if ((respellRoot(&v60, v44) & 1) == 0)
          {
            v39 = 0;
          }

          else
          {
LABEL_37:
            if (*(&v61 + 1) >= v61)
            {
              if (v63)
              {
                v77[0] = 0;
                TBuffer<wchar_t>::insert(&v60, *(&v61 + 1), v77, 1uLL);
                v45 = v60;
                --*(&v61 + 1);
              }

              else
              {
                v45 = v60;
                if (v61)
                {
                  v60[v61 - 1] = 0;
                }
              }
            }

            else
            {
              v45 = v60;
              v60[*(&v61 + 1)] = 0;
            }

            if (!TLexicon::findWord(v56, v45))
            {
              if (*(&v61 + 1) >= v61)
              {
                if (v63)
                {
                  v77[0] = 0;
                  TBuffer<wchar_t>::insert(&v60, *(&v61 + 1), v77, 1uLL);
                  v46 = v60;
                  --*(&v61 + 1);
                }

                else
                {
                  v46 = v60;
                  if (v61)
                  {
                    v60[v61 - 1] = 0;
                  }
                }
              }

              else
              {
                v46 = v60;
                v60[*(&v61 + 1)] = 0;
              }

              TLexicon::addTempWord(v56, v46, 0, 0, 0);
            }

            v47 = v59;
            v39 = v26 >= v59;
            if (v26 < v59)
            {
              v47 = 0;
            }

            v26 -= v47;
          }

          if (v63 == 1 && v60 != v62 && v60)
          {
            MEMORY[0x26672B1B0]();
          }

          if (v67 == 1 && v64 != v66 && v64)
          {
            MEMORY[0x26672B1B0]();
          }

          if (v71 == 1 && v68 != v70 && v68)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        goto LABEL_10;
      }

      v31 = 0;
      v39 = 0;
LABEL_11:
      if (*(v20 + 248) == 1)
      {
        if (v39)
        {
          v40 = v59;
        }

        else
        {
          v40 = 0;
        }

        TLatticeProcessor::combineMrecData(v72, (v36 + 6), v40);
      }

      v25 |= v37;
      v30 = *v33;
      v32 = v33;
      if (!*v33)
      {
        v16 = v51;
LABEL_67:
        v48 = *v16;
        if (*(*v16 + 8 * v24) == -1)
        {
          v49 = *a9;
          *(v48 + 8 * v24) = *a9;
          *a9 = v49 + 1;
        }

        if (*(v48 + 8 * v52) == -1)
        {
          v50 = *a9;
          *(v48 + 8 * v52) = *a9;
          *a9 = v50 + 1;
        }

        operator new();
      }
    }

    if (*v36 == 2)
    {
      v39 = 0;
      v31 = 1;
      goto LABEL_11;
    }

LABEL_9:
    v39 = 0;
LABEL_10:
    v31 = 1;
    goto LABEL_11;
  }
}

void sub_2627E6A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (LOBYTE(STACK[0x8E8]) == 1)
  {
    v21 = STACK[0x4D0];
    if (STACK[0x4D0] != a19)
    {
      if (v21)
      {
        MEMORY[0x26672B1B0](v21, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  if (LOBYTE(STACK[0xD08]) == 1)
  {
    v22 = STACK[0x8F0];
    if (STACK[0x8F0] != a20)
    {
      if (v22)
      {
        MEMORY[0x26672B1B0](v22, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  if (LOBYTE(STACK[0x1190]) == 1)
  {
    v23 = STACK[0xD78];
    if (STACK[0xD78] != a12)
    {
      if (v23)
      {
        MEMORY[0x26672B1B0](v23, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TCliticsProc::apply(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(*(a1 + 56) + 136) = a4;
  if (*(a3[32] + 8) == *(*(a1 + 16) + 8))
  {
    memset(__p, 0, sizeof(__p));
    v8[0] = 0;
    TCliticsProc::applyInternal(a1, a2, a3, __p, v8);
    operator new();
  }

  tknPrintf("Error: The lattice lexicon handle does not match the lattice processor's lexicon handle.\n", a2);
  std::string::basic_string[abi:ne200100]<0>(v8, &byte_262899963);
  __p[0] = byte_287529580;
  if (SHIBYTE(v9) < 0)
  {
    std::string::__init_copy_ctor_external(&__p[1], v8[0], v8[1]);
  }

  else
  {
    *&__p[1] = *v8;
    v11 = v9;
  }

  __p[0] = &unk_287528000;
  if (v11 >= 0)
  {
    v4 = &__p[1];
  }

  else
  {
    v4 = __p[1];
  }

  conditionalAssert(v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/clitics/cliticsproc.cpp", 633);
  __p[0] = byte_287529580;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
  *exception = byte_287529580;
  v6 = (exception + 8);
  if (SHIBYTE(__p[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v6, __p[0], __p[1]);
  }

  else
  {
    v7 = *__p;
    *(exception + 3) = __p[2];
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  *exception = &unk_287528000;
}

void sub_2627E6DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      *(v27 + 136) = v28;
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void TCliticsProc::apply(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  *(*(a1 + 56) + 136) = a5;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<wchar_t const*>::reserve(&v33, a3);
  if (a3)
  {
    v9 = 0;
    v10 = v34;
    do
    {
      v11 = **(*a2 + 8 * v9);
      if (v10 >= v35)
      {
        v12 = (v10 - v33) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v13 = (v35 - v33) >> 2;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v35 - v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&v33, v14);
        }

        *(8 * v12) = v11;
        v10 = (8 * v12 + 8);
        v15 = (8 * v12 - (v34 - v33));
        memcpy(v15, v33, v34 - v33);
        v16 = v33;
        v33 = v15;
        v34 = v10;
        v35 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v10 = v11;
        v10 += 8;
      }

      v34 = v10;
      ++v9;
    }

    while (a3 != v9);
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<TState *>::reserve(&__p, a4 - a3);
  std::vector<TLatticeConstructionTransData>::vector[abi:ne200100](&v29, a4 - a3);
  if (a4 != a3)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = v29 + v17;
      *v19 = 2;
      *(v19 + 4) = 0;
      *(v19 + 1) = **(*a2 + 8 * a3 + 8 * v18);
      v20 = v29 + v17;
      v20[3] = v18;
      v20[5] = v18++;
      v20[4] = v18;
      v20[6] = v18;
      v20[7] = 1;
      v21 = v31;
      if (v31 >= v32)
      {
        v23 = (v31 - __p) >> 3;
        if ((v23 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v24 = (v32 - __p) >> 2;
        if (v24 <= v23 + 1)
        {
          v24 = v23 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(&__p, v25);
        }

        v26 = (8 * v23);
        *v26 = v20;
        v22 = 8 * v23 + 8;
        v27 = v26 - (v31 - __p);
        memcpy(v27, __p, v31 - __p);
        v28 = __p;
        __p = v27;
        v31 = v22;
        v32 = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v31 = v20;
        v22 = (v21 + 8);
      }

      v31 = v22;
      v17 += 160;
    }

    while (v18 != a4 - a3);
  }

  operator new();
}

void sub_2627E73EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  v27 = *(v25 - 112);
  if (v27)
  {
    *(v25 - 104) = v27;
    operator delete(v27);
  }

  *(a13 + 136) = a12;
  _Unwind_Resume(exception_object);
}

uint64_t TCliticsProc::save(TCliticsProc *this, TDataManager *a2, TDataManager *a3)
{
  v6 = *(this + 2);
  v7 = (v6 + 72);
  if (*(v6 + 95) < 0)
  {
    v7 = *v7;
  }

  TOutputModel::TOutputModel(v29, a2, a3, v7, *(this + 8));
  if (v30 <= 1)
  {
    tknPrintf("Error: Unsupported model version for Clitics: %llu\n", v8, v30);
    std::string::basic_string[abi:ne200100]<0>(&v27, &byte_262899963);
    *v22 = byte_287529580;
    if (SHIBYTE(v28) < 0)
    {
      std::string::__init_copy_ctor_external(&v22[8], v27, *(&v27 + 1));
    }

    else
    {
      *&v22[8] = v27;
      v23 = v28;
    }

    *v22 = &unk_287528000;
    if (v23 >= 0)
    {
      v15 = &v22[8];
    }

    else
    {
      v15 = *&v22[8];
    }

    conditionalAssert(v15, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/clitics/cliticsproc.cpp", 738);
    *v22 = byte_287529580;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*&v22[8]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v22, &byte_262899963);
    *exception = byte_287529580;
    v17 = (exception + 1);
    if ((v22[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v17, *v22, *&v22[8]);
    }

    else
    {
      v18 = *v22;
      exception[3] = *&v22[16];
      *&v17->__r_.__value_.__l.__data_ = v18;
    }

    *exception = &unk_287528000;
  }

  v9 = MEMORY[0x277D82828];
  if (a2)
  {
    TDataManager::setIntVar(a2, "CliticsVersion", 1);
    std::ostringstream::basic_ostringstream[abi:ne200100](v22);
    TOutputStream::TOutputStream(&v27, v22, "CliticsParam", *(this + 2) + 240);
    TParamManager::save(*(this + 7), &v27, 0);
    std::stringbuf::str();
    if ((v21 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v11 = v21;
    }

    else
    {
      v11 = v20;
    }

    (*(*a2 + 48))(a2, "CliticsParam", p_p, v11);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    *v22 = *v9;
    *&v22[*(*v22 - 24)] = v9[3];
    *&v22[8] = MEMORY[0x277D82878] + 16;
    if (v25 < 0)
    {
      operator delete(v24);
    }

    *&v22[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v22[16]);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v26);
  }

  if (a3)
  {
    TDataManager::setIntVar(a3, "CliticsVersion", 1);
    std::ostringstream::basic_ostringstream[abi:ne200100](v22);
    TOutputStream::TOutputStream(&v27, v22, "CliticsParam", *(this + 2) + 240);
    TParamManager::save(*(this + 7), &v27, 1);
    std::stringbuf::str();
    if ((v21 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v13 = v21;
    }

    else
    {
      v13 = v20;
    }

    (*(*a3 + 48))(a3, "CliticsParam", v12, v13);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    *v22 = *v9;
    *&v22[*(*v22 - 24)] = v9[3];
    *&v22[8] = MEMORY[0x277D82878] + 16;
    if (v25 < 0)
    {
      operator delete(v24);
    }

    *&v22[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v22[16]);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v26);
  }

  return (*(**(this + 8) + 24))(*(this + 8));
}

void sub_2627E7A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
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

void TCliticsParamManager::~TCliticsParamManager(TCliticsParamManager *this)
{
  TCliticsParamManager::~TCliticsParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287525A78;
  v2 = (this + 1344);
  *(this + 168) = &unk_287528A10;
  v6 = (this + 2696);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 2672);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 2648);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v6);
  for (i = 0; i != -1152; i -= 24)
  {
    if (*(this + i + 2647) < 0)
    {
      operator delete(*(this + i + 2624));
    }
  }

  TParam::~TParam(v2);
  v4 = 0;
  *(this + 137) = &unk_2875295A0;
  do
  {
    if (*(this + v4 + 1343) < 0)
    {
      operator delete(*(this + v4 + 1320));
    }

    v4 -= 24;
  }

  while (v4 != -48);
  TParam::~TParam(this + 137);
  TParam::~TParam(this + 93);
  v5 = 0;
  *(this + 62) = &unk_2875295A0;
  do
  {
    if (*(this + v5 + 743) < 0)
    {
      operator delete(*(this + v5 + 720));
    }

    v5 -= 24;
  }

  while (v5 != -48);
  TParam::~TParam(this + 62);
  *this = &unk_287525670;
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);
}

void MrecInitLibrary_word(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_corpus_word();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_wordlist_word();

  MrecInitModule_sdpres_sdapi();
}

void MrecInitLibrarySet_throughWord(void)
{
  MrecInitLibrarySet_throughPhoneme();

  MrecInitLibrary_word();
}

void MrecInitModule_dfile_dfutil(void)
{
  if (!gParDebugShowDFileLoadInfo)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugShowDFileLoadInfo", &unk_26288F317, &unk_26288F317, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugShowDFileLoadInfo = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugShowDFileLoadInfo);
  }
}

void writeMrecHeader(DgnStream *a1, const char *a2, int a3, int a4, int a5)
{
  (*(*a1 + 80))(a1, a2, 8);
  LODWORD(v15) = a3;
  (*(*a1 + 80))(a1, &v15, 4);
  LODWORD(v15) = a4;
  (*(*a1 + 80))(a1, &v15, 4);
  DgnString::DgnString(&v15);
  DgnString::preAllocate(&v15, 256);
  MrecName = GetMrecName();
  DgnString::operator=(&v15, MrecName);
  if (a5)
  {
    DgnString::operator+=(&v15, " ");
    MrecVersion = GetMrecVersion();
    DgnString::operator+=(&v15, MrecVersion);
  }

  v11 = v16;
  Buffer = DgnString::getBuffer(&v15, 0x20u);
  v13 = Buffer;
  LODWORD(v14) = v11 - 1;
  if (!v11)
  {
    LODWORD(v14) = 0;
  }

  if (v14 >= 0x1F)
  {
    v14 = 31;
  }

  else
  {
    v14 = v14;
  }

  bzero((Buffer + v14), (32 - v14));
  (*(*a1 + 80))(a1, v13, 32);
  DgnString::~DgnString(&v15);
}

DgnStream *OpenAndWriteMrecHeader(uint64_t a1, unsigned int a2, int a3, const char *a4, int a5, int a6)
{
  if (a3)
  {
    v11 = 5;
  }

  else
  {
    v11 = 1;
  }

  SubFileExtensionString = GetSubFileExtensionString(a2);
  v13 = (*(*a1 + 32))(a1, SubFileExtensionString, v11, 0);
  writeMrecHeader(v13, a4, a5, a6, a3 ^ 1);
  return v13;
}

uint64_t DFile::openSubFile(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  SubFileExtensionString = GetSubFileExtensionString(a2);
  v8 = *(*a1 + 32);

  return v8(a1, SubFileExtensionString, a3, a4);
}

void readMrecHeader(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4, _DWORD *a5, _DWORD *a6)
{
  v18[1] = *MEMORY[0x277D85DE8];
  (*(*a1 + 72))(a1, v18, 8, 1);
  if (v18[0] != *a4)
  {
    if (*(a1 + 24))
    {
      v13 = *(a1 + 16);
    }

    else
    {
      v13 = &unk_26288F317;
    }

    v12.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 144, "dfutil/dfile", 7, "%.500s %.8s %.8s", v13, v18, a4);
  }

  v17[0] = 0;
  (*(*a1 + 72))(a1, v17, 4, 1, v12);
  *a5 = v17[0];
  v17[0] = 0;
  (*(*a1 + 72))(a1, v17, 4, 1);
  *a6 = v17[0];
  if (!*a5)
  {
    SubFileExtensionString = GetSubFileExtensionString(a3);
    if (*(a2 + 24))
    {
      v15 = *(a2 + 16);
    }

    else
    {
      v15 = &unk_26288F317;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 150, "dfutil/dfile", 8, "%.500s %.500s", SubFileExtensionString, v15);
  }

  DgnString::DgnString(v17);
  Buffer = DgnString::getBuffer(v17, 0x20u);
  (*(*a1 + 72))(a1, Buffer, 32, 1);
  DgnString::~DgnString(v17);
}

void sub_2627E8294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t OpenAndReadMrecHeader(uint64_t a1, unsigned int a2, int a3, const char *a4, _DWORD *a5, _DWORD *a6)
{
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  SubFileExtensionString = GetSubFileExtensionString(a2);
  v13 = (*(*a1 + 32))(a1, SubFileExtensionString, v11, 0);
  readMrecHeader(v13, a1, a2, a4, a5, a6);
  return v13;
}

void MrecHeaderCheckVersions(char *a1, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a5 < a3 || a5 == a3 && a6 < a4)
  {
    DgnString::DgnString(v14, "A component of ");
    operator+(v15, a1, v14);
    operator+(&v16, " could not be opened because it is in an obsolete format, intended for a version of MREC older than this one. Consider upgrading the file with MREC 1.19.200.13604. Details:", v15);
    if (v17)
    {
      v12 = v16;
    }

    else
    {
      v12 = &unk_26288F317;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 210, "dfutil/dfile", 9, "%.500s %.500s %u %u %u %u", v12, a2, a3, a4, a5, a6);
    DgnString::~DgnString(&v16);
    DgnString::~DgnString(v15);
    DgnString::~DgnString(v14);
  }

  if (a5 > a3 || a5 == a3 && a6 > a4)
  {
    DgnString::DgnString(v14, "A component of ");
    operator+(v15, a1, v14);
    operator+(&v16, " could not be opened because it is in an unknown format, intended for a version of MREC newer than this one. Details:", v15);
    if (v17)
    {
      v13 = v16;
    }

    else
    {
      v13 = &unk_26288F317;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 221, "dfutil/dfile", 10, "%.500s %.500s %u %u %u %u", v13, a2, a3, a4, a5, a6);
    DgnString::~DgnString(&v16);
    DgnString::~DgnString(v15);
    DgnString::~DgnString(v14);
  }
}

void sub_2627E84FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  DgnString::~DgnString(va2);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

double MrecHeaderCheckLatestVersionIfShared(DFile *a1, const char *a2, int a3, int a4, int a5, int a6)
{
  if ((a5 != a3 || a6 != a4) && *(a1 + 72) == 1)
  {
    if (*(a1 + 6))
    {
      v6 = *(a1 + 2);
    }

    else
    {
      v6 = &unk_26288F317;
    }

    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 240, "dfutil/dfile", 11, "%.500s %.500s %u %u %u %u", v6, a2, a3, a4, a5, a6);
  }

  return result;
}

void (***DFileOwner::closeDFile(DFileOwner *this, DFile **a2))(void)
{
  if (*(this + 8) == 1)
  {
    DFile::removeFileAfterSaveException(this, a2);
    *(this + 8) = 0;
  }

  result = DgnDelete<RealDFile>(*this);
  *this = 0;
  return result;
}

void (***DFile::removeFileAfterSaveException(void (***this)(void), DFile **a2))(void)
{
  if (this)
  {
    v2 = this;
    this = *this;
    if (this)
    {
      ((*this)[7])(this, a2);
      this = DgnDelete<RealDFile>(*v2);
      *v2 = 0;
    }
  }

  return this;
}

uint64_t DFileOwner::setRemoveFileOnDestruction(uint64_t this, char a2)
{
  if (*this)
  {
    *(this + 8) = a2;
  }

  return this;
}

void DFile::DFile(DFile *this, const FileSpec *a2)
{
  *this = &unk_287523E78;
  v4 = (this + 32);
  FileSpec::FileSpec((this + 16));
  DgnString::DgnString(v4);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  FileSpec::operator=((this + 16), a2);
  FileSpec::getNameOnly(a2, v4);
  *(this + 48) = 1;
  *(this + 1) = 0;
}

uint64_t DFile::subFileExists(uint64_t a1, unsigned int a2)
{
  SubFileExtensionString = GetSubFileExtensionString(a2);
  v4 = *(*a1 + 24);

  return v4(a1, SubFileExtensionString);
}

void DFile::~DFile(DFile *this)
{
  *this = &unk_287523E78;
  *(this + 1) = 0;
  DgnIArray<Utterance *>::~DgnIArray(this + 56);
  DgnString::~DgnString(this + 32);
  FileSpec::~FileSpec(this + 16);
}

void DFile::printSize(DFile *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 353);
  if (v40)
  {
    v13 = v39;
  }

  else
  {
    v13 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288F317, a3, &unk_26288F317, v13);
  DgnString::~DgnString(&v39);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288F317);
  v15 = FileSpec::sizeObject(this + 16, 0);
  v16 = FileSpec::sizeObject(this + 16, 1);
  v17 = FileSpec::sizeObject(this + 16, 3);
  v18 = (a3 + 1);
  v38 = a3;
  v19 = (34 - a3);
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 354);
  if (v40)
  {
    v21 = v39;
  }

  else
  {
    v21 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v18, &unk_26288F317, v19, v19, v21, v15, v16, v17);
  DgnString::~DgnString(&v39);
  *a4 += v15;
  *a5 += v16;
  *a6 += v17;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 355);
  if (v40)
  {
    v24 = v39;
  }

  else
  {
    v24 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v18, &unk_26288F317, v19, v19, v24, v22, v22, 0);
  DgnString::~DgnString(&v39);
  *a4 += v22;
  *a5 += v22;
  v25 = sizeObject(this + 32, 0);
  v26 = sizeObject(this + 32, 1);
  v27 = sizeObject(this + 32, 3);
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 356);
  if (v40)
  {
    v29 = v39;
  }

  else
  {
    v29 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v18, &unk_26288F317, v19, v19, v29, v25, v26, v27);
  DgnString::~DgnString(&v39);
  *a4 += v25;
  *a5 += v26;
  *a6 += v27;
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 357);
  if (v40)
  {
    v31 = v39;
  }

  else
  {
    v31 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v18, &unk_26288F317, v19, v19, v31, 1, 1, 0);
  DgnString::~DgnString(&v39);
  ++*a4;
  ++*a5;
  v32 = sizeObject<SubDirExtension>(this + 56, 0);
  v33 = sizeObject<SubDirExtension>(this + 56, 1);
  v39 = 0xFFFFFFFF00000000;
  sizeObject(&v39, 2);
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 359);
  if (v40)
  {
    v35 = v39;
  }

  else
  {
    v35 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v18, &unk_26288F317, v19, v19, v35, v32, v33, 0);
  DgnString::~DgnString(&v39);
  *a4 += v32;
  *a5 += v33;
  getShipObjectSizeDescription(&v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 360);
  if (v40)
  {
    v37 = v39;
  }

  else
  {
    v37 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v38, &unk_26288F317, (35 - v38), (35 - v38), v37, *a4, *a5, *a6);
  DgnString::~DgnString(&v39);
}

void sub_2627E8C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<SubDirExtension>(uint64_t a1, int a2)
{
  v11 = 0xFFFFFFFF00000000;
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
      v9 = 8 * v7 - 8;
      do
      {
        v5 += sizeObject(*a1 + v9, a2);
        --v8;
        v9 -= 8;
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

void DFile::pushCurrentSubDirComponent(DFile *this, const SubDirExtension *a2)
{
  v4 = *(this + 16);
  if (v4 - 10 <= 0xFFFFFFF4)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 371, "dfutil/dfile", 5, "%d", 10);
    v4 = *(this + 16);
  }

  if (v4 == *(this + 17))
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 56, 1, 1);
    v4 = *(this + 16);
  }

  *(*(this + 7) + 8 * v4) = *a2;
  ++*(this + 16);
}

uint64_t DFile::popCurrentSubDirComponent(uint64_t this)
{
  v1 = *(this + 64);
  v2 = (v1 - 1);
  if (!v1)
  {
    v3 = *(this + 56);
    v4 = v2;
    do
    {
      *v3++ = 0xFFFFFFFF00000000;
      --v4;
    }

    while (v4);
  }

  *(this + 64) = v2;
  return this;
}

DgnString *DFile::makeSubFileName(uint64_t a1, char *a2, DgnString *this)
{
  DgnString::preAllocate(this, 96);
  if (*(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      SubDirExtension::appendToString((*a1 + v6), this);
      DgnString::operator+=(this, 47);
      ++v7;
      v6 += 8;
    }

    while (v7 < *(a1 + 8));
  }

  return DgnString::operator+=(this, a2);
}

uint64_t *DFile::openDFile(uint64_t a1, const FileSpec *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v31 = *MEMORY[0x277D85DE8];
  if (!FileSpec::isValid(a1))
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 432, "dfutil/dfile", 1, "%s", &unk_26288F317);
  }

  if (a2 == 1)
  {
    v8 = MemChunkAlloc(0x1B8uLL, 0);
    RealDFile::RealDFile(v8, a1);
    *a4 = v9;
    *(a4 + 8) = 1;
    v10 = 1;
LABEL_29:
    RealDFile::startUp(v9, v10, v5, 1, 0, 0);
    return v8;
  }

  OsFile::openOsFile(a1, 0);
  if (!v11)
  {
    if (!a2)
    {
      if (*(a1 + 8))
      {
        v19 = *a1;
      }

      else
      {
        v19 = &unk_26288F317;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 449, "dfutil/dfile", 2, "%.500s", v19);
    }

    v8 = MemChunkAlloc(0x1B8uLL, 0);
    RealDFile::RealDFile(v8, a1);
    *a4 = v9;
    *(a4 + 8) = a2 != 0;
    v10 = a2;
    goto LABEL_29;
  }

  v12 = v11;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  Bytes = OsFile::readBytes(v11, v24, 0x7Fu);
  OsFile::~OsFile(v12);
  MemChunkFree(v14, 0);
  if (Bytes)
  {
    v24[Bytes] = 0;
  }

  if (*v24 == 0x46545845544E4744 && *&v24[8] == 0x535245565F454C49 && *&v24[11] == 0x4E4F49535245565FLL)
  {
    if (a2)
    {
      if (*(a1 + 8))
      {
        v20 = *a1;
      }

      else
      {
        v20 = &unk_26288F317;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 476, "dfutil/dfile", 4, "%.500s", v20);
    }

    v8 = MemChunkAlloc(0x98uLL, 0);
    ListDFile::ListDFile(v8, a1);
    *a4 = v21;
    *(a4 + 8) = 0;
    ListDFile::startUp(v21);
    goto LABEL_37;
  }

  if (*v24 == 1279870532 && *&v24[3] == 1981826380)
  {
    v8 = MemChunkAlloc(0x1B8uLL, 0);
    RealDFile::RealDFile(v8, a1);
    *a4 = v22;
    *(a4 + 8) = a2 != 0;
    RealDFile::startUp(v22, a2, v5, 1, 0, 0);
LABEL_37:
    (*(*v8 + 72))(v8);
    return v8;
  }

  if (*(a1 + 8))
  {
    v18 = *a1;
  }

  else
  {
    v18 = &unk_26288F317;
  }

  errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 495, "dfutil/dfile", 3, "%.500s", v18);
  return 0;
}

const char *DFile::getNameForSemanticType(DFile *this)
{
  if (this > 0xF)
  {
    return "Internal Error";
  }

  else
  {
    return off_279B40C48[this];
  }
}

_BYTE **DFile::cacheSubFileSizeInfo(_BYTE **this)
{
  if ((*this[1] & 1) == 0)
  {
    v1 = this;
    this = (*(*this + 13))(this);
    *v1[1] = 1;
  }

  return this;
}

DFileProgressInfo *DFile::reportProgress(DFile *this, const char *a2, const char *a3)
{
  result = *(this + 1);
  if (result)
  {
    result = DFileProgressInfo::findSubFile(result, a2, a3);
    if (result != -1)
    {
      v5 = result;
      result = *(this + 1);
      if ((*(*(result + 5) + v5) & 1) == 0)
      {

        return DFileProgressInfo::recordFileAsReported(result, v5);
      }
    }
  }

  return result;
}

unint64_t DFileProgressInfo::findSubFile(DFileProgressInfo *this, const char *a2, const char *a3)
{
  if (!*(this + 4))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = *(this + 1) + v5;
    v8 = *(v7 + 8) ? *v7 : &unk_26288F317;
    if (!DgnString::compareNoCase(v8, a2, a3))
    {
      break;
    }

    ++v6;
    v5 += 16;
    if (v6 >= *(this + 4))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t DFileProgressInfo::recordFileAsReported(uint64_t this, ProgressCallbackHandler *a2)
{
  if (a2 != -1)
  {
    *(*(this + 40) + a2) = 1;
    *(this + 64) += *(*(this + 24) + 8 * a2);
    ++*(this + 72);
    return ProgressCallbackHandler::addProgress(*(this + 80), a2);
  }

  return this;
}

void DFileProgressInfo::reset(DFileProgressInfo *this)
{
  *(this + 10) = 0;
  v2 = *(this + 4);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnString::~DgnString(*(this + 1) + v3);
      v3 -= 16;
    }

    while (v3 != -16);
  }

  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *this = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
}

void DFileProgressInfo::DFileProgressInfo(DFileProgressInfo *this)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  DFileProgressInfo::reset(this);
}

void DFileProgressInfo::add(DFileProgressInfo *this, const DgnString *a2, uint64_t a3)
{
  v6 = *(this + 4);
  if (v6 == *(this + 5))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 8, 1, 1);
    v6 = *(this + 4);
  }

  DgnString::DgnString((*(this + 1) + 16 * v6), a2);
  ++*(this + 4);
  v7 = *(this + 8);
  if (v7 == *(this + 9))
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 24, 1, 1);
    v7 = *(this + 8);
  }

  *(*(this + 3) + 8 * v7) = a3;
  *(this + 8) = v7 + 1;
  v8 = *(this + 12);
  if (v8 == *(this + 13))
  {
    DgnPrimArray<char>::reallocElts(this + 40, 1, 1);
    v8 = *(this + 12);
  }

  *(*(this + 5) + v8) = 0;
  *(this + 12) = v8 + 1;
  *(this + 7) += a3;
}

void DFileProgressInfo::resetReportedInfo(void **this)
{
  v2 = *(this + 12);
  if (v2)
  {
    bzero(this[5], v2);
  }

  this[8] = 0;
  *(this + 18) = 0;
}

uint64_t *VocMgr::startupVocMgr(uint64_t a1)
{
  result = MemChunkAlloc(8uLL, 0);
  *result = a1;
  VocMgr::smpVocMgr = result;
  return result;
}

void VocMgr::printSize(VocMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocmgr.cpp", 94);
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

  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocmgr.cpp", 95);
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
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocmgr.cpp", 96);
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

void sub_2627E9814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t VocMgr::getVocOrThrow(VocMgr *this, unsigned int a2)
{
  if (*(*this + 8) <= a2 || (result = *(**this + 8 * a2)) == 0)
  {
    v4 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocmgr.cpp", 102, "voc/vocmgr", 1, "%u", a2);
    return *(**this + 8 * v4);
  }

  return result;
}

void VocMgr::beginRuleStateRecursiveOperation(VocMgr *this)
{
  v1 = *this;
  if (*(*this + 8) >= 2u)
  {
    v3 = 1;
    do
    {
      if (*(*v1 + 8 * v3))
      {
        MrecInitModule_sdpres_sdapi();
        MrecInitModule_sdpres_sdapi();
        v1 = *this;
      }

      ++v3;
    }

    while (*(v1 + 8) > v3);
  }
}

void VocMgr::endRuleStateRecursiveOperation(VocMgr *this)
{
  v1 = *this;
  if (*(*this + 8) >= 2u)
  {
    v3 = 1;
    do
    {
      v4 = *(*v1 + 8 * v3);
      if (v4)
      {
        RuleMgr::endRecursiveOperation(*(v4 + 64));
        StateMgr::endRecursiveOperation(*(v4 + 56));
        v1 = *this;
      }

      ++v3;
    }

    while (*(v1 + 8) > v3);
  }
}

uint64_t TTagManager::getClosedTagSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 + 24);
  result = std::__tree<SDhVoc_fake **>::__emplace_unique_key_args<SDhVoc_fake **,SDhVoc_fake ** const&>(a3, &v8, &v8);
  for (i = *(a2 + 32); ; i = *(result + 32))
  {
    v8 = i;
    if (i == -1)
    {
      break;
    }

    std::__tree<SDhVoc_fake **>::__emplace_unique_key_args<SDhVoc_fake **,SDhVoc_fake ** const&>(a3, &v8, &v8);
    result = TTagManager::getTag(a1, v8);
  }

  return result;
}

void TFormatter::addCapBlocks(void *a1, TAllocator *a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, unint64_t **a8, uint64_t a9)
{
  v52 = 0;
  v53 = 0;
  v51 = &v52;
  v47 = &v49;
  v48 = xmmword_26286B6F0;
  v50 = 1;
  v43 = &v45;
  v44 = xmmword_26286B6F0;
  v46 = 1;
  v11 = *a5;
  if (*a5)
  {
    v12 = a5;
    do
    {
      {
        operator new();
      }

      if (v11 == 13 || v11 == 10)
      {
        if (*v12 == 13 && v12[1] == 10)
        {
          ++v12;
        }

        WideNewLine = TStringParam::get((a1[6] + 144));
        if (!*WideNewLine)
        {
          WideNewLine = getWideNewLine();
        }

        v14 = 0;
          ;
        }

        TBuffer<wchar_t>::insert(&v47, *(&v48 + 1), WideNewLine, v14 - 1);
        v16 = 0;
          ;
        }

        TBuffer<wchar_t>::insert(&v43, *(&v44 + 1), WideNewLine, v16 - 1);
      }

      else if (*v12 == 223)
      {
        LODWORD(v39) = 223;
        TBuffer<wchar_t>::insert(&v47, *(&v48 + 1), &v39, 1uLL);
        TBuffer<wchar_t>::insert(&v43, *(&v44 + 1), "S", 2uLL);
      }

      else
      {
        LODWORD(v39) = *v12;
        TBuffer<wchar_t>::insert(&v47, *(&v48 + 1), &v39, 1uLL);
        LODWORD(v39) = TLocaleInfo::toUpper(a1[4] + 240, *v12);
        TBuffer<wchar_t>::insert(&v43, *(&v44 + 1), &v39, 1uLL);
      }

      v18 = v12[1];
      ++v12;
      v11 = v18;
    }

    while (v18);
    v19 = *(&v44 + 1);
    if (*(&v44 + 1) >= v44)
    {
      if (v46)
      {
        LODWORD(v39) = 0;
        TBuffer<wchar_t>::insert(&v43, *(&v44 + 1), &v39, 1uLL);
        v20 = v43;
        --*(&v44 + 1);
      }

      else
      {
        v20 = v43;
        if (v44)
        {
          v43[v44 - 1] = 0;
        }
      }

LABEL_28:
      if (*(&v48 + 1) >= v48)
      {
        if (v50)
        {
          LODWORD(v39) = 0;
          TBuffer<wchar_t>::insert(&v47, *(&v48 + 1), &v39, 1uLL);
          v21 = v47;
          --*(&v48 + 1);
        }

        else
        {
          v21 = v47;
          if (v48)
          {
            v47[v48 - 1] = 0;
          }
        }
      }

      else
      {
        v21 = v47;
        v47[*(&v48 + 1)] = 0;
      }

      if (wcscmp(v20, v21))
      {
        v39 = &v41;
        v40 = xmmword_26286B6F0;
        v42 = 1;
        TBuffer<wchar_t>::operator=(&v39, &v47);
        if (*(&v40 + 1))
        {
          v22 = 0;
          v23 = v39;
          do
          {
            v24 = TLocaleInfo::toLower(a1[4] + 240, v23[v22]);
            v23 = v39;
            v39[v22++] = v24;
            v25 = *(&v40 + 1);
          }

          while (v22 < *(&v40 + 1));
        }

        else
        {
          v25 = 0;
        }

        if (v25 >= v40)
        {
          if (v42)
          {
            v54[0] = 0;
            TBuffer<wchar_t>::insert(&v39, v25, v54, 1uLL);
            v29 = v39;
            --*(&v40 + 1);
          }

          else
          {
            v29 = v39;
            if (v40)
            {
              v39[v40 - 1] = 0;
            }
          }
        }

        else
        {
          v29 = v39;
          v39[v25] = 0;
        }

        if (*(&v48 + 1) >= v48)
        {
          if (v50)
          {
            v54[0] = 0;
            TBuffer<wchar_t>::insert(&v47, *(&v48 + 1), v54, 1uLL);
            v30 = v47;
            --*(&v48 + 1);
          }

          else
          {
            v30 = v47;
            if (v48)
            {
              v47[v48 - 1] = 0;
            }
          }
        }

        else
        {
          v30 = v47;
          v47[*(&v48 + 1)] = 0;
        }

        v38 = wcscmp(v29, v30);
        v31 = TLocaleInfo::toUpper(a1[4] + 240, *v30);
        v32 = *v47;
        Tag = TTagManager::getTag(a1[17], *(a1[17] + 136));
        std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v51, v52);
        v52 = 0;
        v53 = 0;
        v51 = &v52;
        v34 = *a8;
        v35 = a8[1];
        while (v34 != v35)
        {
          std::__tree<TPItnTagHandle_fake **>::__emplace_hint_unique_key_args<TPItnTagHandle_fake **,TPItnTagHandle_fake ** const&>(&v51, &v52, v34, v34);
          ++v34;
        }

        TTagManager::getClosedTagSet(a1[17], Tag, &v51);
        if (!v38)
        {
          v36 = TTagManager::getTag(a1[17], *(a1[17] + 120));
          TTagManager::getClosedTagSet(a1[17], v36, &v51);
        }

        if (v31 == v32)
        {
          v37 = TTagManager::getTag(a1[17], *(a1[17] + 128));
          TTagManager::getClosedTagSet(a1[17], v37, &v51);
        }

        operator new();
      }

      v26 = TTagManager::getTag(a1[17], *(a1[17] + 144));
      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v51, v52);
      v52 = 0;
      v53 = 0;
      v51 = &v52;
      v27 = *a8;
      v28 = a8[1];
      while (v27 != v28)
      {
        std::__tree<TPItnTagHandle_fake **>::__emplace_hint_unique_key_args<TPItnTagHandle_fake **,TPItnTagHandle_fake ** const&>(&v51, &v52, v27, v27);
        ++v27;
      }

      TTagManager::getClosedTagSet(a1[17], v26, &v51);
      operator new();
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v43;
  v43[v19] = 0;
  goto LABEL_28;
}

void sub_2627EA800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x26672B1B0](v12, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x890]) == 1 && STACK[0x478] != a12 && STACK[0x478] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0xCB0]) == 1)
  {
    v16 = STACK[0x898];
    if (STACK[0x898] != a11)
    {
      if (v16)
      {
        MEMORY[0x26672B1B0](v16, 0x1000C4052888210);
      }
    }
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v13 - 120, *(v13 - 112));
  _Unwind_Resume(a1);
}

uint64_t TFormatter::splitGrammarResult(uint64_t a1, __int32 *a2, std::vector<std::wstring> *this, void *a4, char a5)
{
  v5 = a4;
  v100 = *MEMORY[0x277D85DE8];
  if ((a5 & 1) == 0)
  {
    std::vector<TPItnTagHandle_fake **>::resize(a4, 0);
  }

  std::vector<std::string>::resize(this, 0);
  v94 = 0;
  v9 = &v93;
  v93 = 0;
  v92 = &v93;
  v96 = v98;
  v97 = xmmword_26286B6F0;
  v99 = 1;
  __s = v90;
  v89 = xmmword_26286B6F0;
  v91 = 1;
  v84 = v86;
  v85 = xmmword_26286B6F0;
  v87 = 1;
  v81 = a1;
  if (*a2)
  {
    v10 = a2;
    do
    {
      if (!wcsncmp(v10, dword_26288F354, 5uLL))
      {
        v13 = v10 + 5;
        if (v10[5])
        {
          v14 = 1;
          while (1)
          {
            v15 = wcsstr(v13, &unk_26288F36C);
            v16 = v15;
            if (!v15)
            {
              break;
            }

            if (!wcsncmp(v15, dword_26288F354, 5uLL))
            {
              ++v14;
            }

            v14 -= wcsncmp(v16, dword_26288F374, 6uLL) == 0;
            v13 = v16 + 1;
            if (v16[1])
            {
              v17 = v14 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
              if (v14)
              {
                goto LABEL_177;
              }

              v11 = v16 + 6;
              TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), v10, v11 - v10);
              a1 = v81;
              if (!*(&v89 + 1))
              {
                goto LABEL_101;
              }

              if (*(&v97 + 1) && v96[*(&v97 + 1) - 1] == 79)
              {
                if (*(&v89 + 1) >= v89)
                {
                  if (v91)
                  {
                    LODWORD(__p[0]) = 0;
                    TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), __p, 1uLL);
                    v18 = __s;
                    --*(&v89 + 1);
                  }

                  else
                  {
                    v18 = __s;
                    if (v89)
                    {
                      __s[v89 - 1] = 0;
                    }
                  }
                }

                else
                {
                  v18 = __s;
                  __s[*(&v89 + 1)] = 0;
                }

                std::wstring::append(this->__end_ - 1, v18);
                goto LABEL_101;
              }

              if (*(&v89 + 1) >= v89)
              {
                if (v91)
                {
                  v95 = 0;
                  TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), &v95, 1uLL);
                  v34 = __s;
                  --*(&v89 + 1);
                }

                else
                {
                  v34 = __s;
                  if (v89)
                  {
                    __s[v89 - 1] = 0;
                  }
                }
              }

              else
              {
                v34 = __s;
                __s[*(&v89 + 1)] = 0;
              }

              std::wstring::basic_string[abi:ne200100]<0>(__p, v34);
              std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
              if (v83 < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_86;
            }
          }
        }

        goto LABEL_177;
      }

      if (!wcsncmp(v10, dword_26288F390, 7uLL))
      {
        v19 = v10 + 7;
        v20 = wcsstr(v10 + 7, " ");
        if (!v20)
        {
          goto LABEL_177;
        }

        TBuffer<wchar_t>::assign(&v84, dword_26288F3B0);
        TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v19, v20 - v19);
        v21 = v20 + 1;
        v22 = wcsstr(v21, &unk_26288F3C8);
        if (!v22)
        {
          goto LABEL_177;
        }

        LODWORD(__p[0]) = 61;
        TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), __p, 1uLL);
        TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v21, v22 - v21);
        v23 = *(a1 + 136);
        if (*(&v85 + 1) >= v85)
        {
          if (v87)
          {
            LODWORD(__p[0]) = 0;
            TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), __p, 1uLL);
            --*(&v85 + 1);
          }

          else if (v85)
          {
            v84[v85 - 1] = 0;
          }
        }

        else
        {
          v84[*(&v85 + 1)] = 0;
        }

        v35 = (*(*v23 + 16))(v23);
        if (v35 == -1)
        {
          goto LABEL_177;
        }

        Tag = TTagManager::getTag(*(a1 + 136), v35);
        std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v92, v93);
        v94 = 0;
        v92 = v9;
        v93 = 0;
        TTagManager::getClosedTagSet(*(a1 + 136), Tag, &v92);
        std::vector<TPItnTagHandle_fake **>::insert[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,0>(v5, v5[1], v92, v9);
        v11 = v22 + 1;
      }

      else
      {
        if (!wcsncmp(v10, dword_26288F3D0, 7uLL))
        {
          v24 = wcsstr(v10 + 7, &unk_26288F3C8);
          if (!v24)
          {
            goto LABEL_177;
          }

          v25 = wcsstr(v10 + 7, &unk_26288F36C);
          if (v25 && v25 < v24)
          {
            loggableUnicode(a2, __p);
            if (v83 >= 0)
            {
              v67 = __p;
            }

            else
            {
              v67 = __p[0];
            }

            tknPrintf("Error: couldn't parse $Token() with embedded tags (%lld): '%s'. Ignored.\n", v66, v10 - a2, v67);
            if (v83 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_177;
          }

          v11 = v24 + 1;
          TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), v10, v11 - v10);
          if (*(&v89 + 1))
          {
            if (*(&v89 + 1) >= v89)
            {
              if (v91)
              {
                v95 = 0;
                TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), &v95, 1uLL);
                v26 = __s;
                --*(&v89 + 1);
              }

              else
              {
                v26 = __s;
                if (v89)
                {
                  __s[v89 - 1] = 0;
                }
              }
            }

            else
            {
              v26 = __s;
              __s[*(&v89 + 1)] = 0;
            }

            std::wstring::basic_string[abi:ne200100]<0>(__p, v26);
            std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
            if (v83 < 0)
            {
              operator delete(__p[0]);
            }

            LOBYTE(__p[0]) = 84;
            TBuffer<char>::insert(&v96, *(&v97 + 1), __p, 1uLL);
          }

          goto LABEL_101;
        }

        if (wcsncmp(v10, &unk_26288F36C, 1uLL))
        {
          v11 = wcsstr(v10 + 1, &unk_26288F36C);
          if (!v11)
          {
            v11 = &v10[wcslen(v10)];
          }

          TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), v10, v11 - v10);
          if (*(&v97 + 1) && v96[*(&v97 + 1) - 1] == 79)
          {
            if (*(&v89 + 1) >= v89)
            {
              if (v91)
              {
                LODWORD(__p[0]) = 0;
                TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), __p, 1uLL);
                v12 = __s;
                --*(&v89 + 1);
              }

              else
              {
                v12 = __s;
                if (v89)
                {
                  __s[v89 - 1] = 0;
                }
              }
            }

            else
            {
              v12 = __s;
              __s[*(&v89 + 1)] = 0;
            }

            std::wstring::append(this->__end_ - 1, v12);
          }

          else
          {
            if (*(&v89 + 1) >= v89)
            {
              if (v91)
              {
                v95 = 0;
                TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), &v95, 1uLL);
                v27 = __s;
                --*(&v89 + 1);
              }

              else
              {
                v27 = __s;
                if (v89)
                {
                  __s[v89 - 1] = 0;
                }
              }
            }

            else
            {
              v27 = __s;
              __s[*(&v89 + 1)] = 0;
            }

            std::wstring::basic_string[abi:ne200100]<0>(__p, v27);
            std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
            if (v83 < 0)
            {
              operator delete(__p[0]);
            }

LABEL_86:
            LOBYTE(__p[0]) = 79;
            TBuffer<char>::insert(&v96, *(&v97 + 1), __p, 1uLL);
          }

LABEL_101:
          TBuffer<wchar_t>::resize(&__s, 0);
          goto LABEL_102;
        }

        if (!v10[1])
        {
          goto LABEL_177;
        }

        v80 = v9;
        v28 = this;
        v29 = v5;
        v30 = 0;
        v31 = 1;
        do
        {
          v32 = &v10[v30];
          if (!wcsncmp(&v10[v30 + 1], &unk_26288F36C, 1uLL))
          {
            ++v31;
          }

          v31 -= wcsncmp(v32 + 1, &unk_26288F3C8, 1uLL) == 0;
          ++v30;
        }

        while (v32[2] && v31);
        if (v31)
        {
          goto LABEL_177;
        }

        TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), v10, (v30 * 4 + 4) >> 2);
        v5 = v29;
        this = v28;
        a1 = v81;
        v9 = v80;
        if (*(&v89 + 1))
        {
          if (*(&v89 + 1) >= v89)
          {
            if (v91)
            {
              v95 = 0;
              TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), &v95, 1uLL);
              v33 = __s;
              --*(&v89 + 1);
            }

            else
            {
              v33 = __s;
              if (v89)
              {
                __s[v89 - 1] = 0;
              }
            }
          }

          else
          {
            v33 = __s;
            __s[*(&v89 + 1)] = 0;
          }

          std::wstring::basic_string[abi:ne200100]<0>(__p, v33);
          std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
          if (v83 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(__p[0]) = 78;
          TBuffer<char>::insert(&v96, *(&v97 + 1), __p, 1uLL);
        }

        TBuffer<wchar_t>::resize(&__s, 0);
        v11 = &v10[v30 + 1];
      }

LABEL_102:
      v10 = v11;
    }

    while (*v11);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3) <= 1)
  {
    v38 = wcsstr(a2, dword_26288F354);
    if (v38)
    {
      std::vector<std::string>::resize(this, 0);
      v39 = v38 + 5;
      if (v38[5])
      {
        v40 = 1;
        v41 = v38 + 5;
        while (1)
        {
          v42 = wcsstr(v41, &unk_26288F36C);
          v43 = v42;
          if (!v42)
          {
            break;
          }

          if (!wcsncmp(v42, dword_26288F354, 5uLL))
          {
            ++v40;
          }

          v40 -= wcsncmp(v43, dword_26288F374, 6uLL) == 0;
          if (v40 == 1 && !wcsncmp(v43, dword_26288F3F0, 5uLL))
          {
            TBuffer<wchar_t>::resize(&__s, 0);
            TBuffer<wchar_t>::insert(&__s, 0, v39, v43 - v39);
            if (*(&v89 + 1) >= v89)
            {
              if (v91)
              {
                v95 = 0;
                TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), &v95, 1uLL);
                v44 = __s;
                --*(&v89 + 1);
              }

              else
              {
                v44 = __s;
                if (v89)
                {
                  __s[v89 - 1] = 0;
                }
              }
            }

            else
            {
              v44 = __s;
              __s[*(&v89 + 1)] = 0;
            }

            std::wstring::basic_string[abi:ne200100]<0>(__p, v44);
            std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
            if (v83 < 0)
            {
              operator delete(__p[0]);
            }

            v39 = v43 + 5;
          }

          v41 = v43 + 1;
          if (v40)
          {
            v45 = v43[1] == 0;
          }

          else
          {
            v45 = 1;
          }

          if (v45)
          {
            if (v40)
            {
              goto LABEL_177;
            }

            TBuffer<wchar_t>::resize(&__s, 0);
            TBuffer<wchar_t>::insert(&__s, 0, v39, v43 - v39);
            if (*(&v89 + 1) >= v89)
            {
              if (v91)
              {
                v95 = 0;
                TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), &v95, 1uLL);
                v46 = __s;
                --*(&v89 + 1);
              }

              else
              {
                v46 = __s;
                if (v89)
                {
                  __s[v89 - 1] = 0;
                }
              }
            }

            else
            {
              v46 = __s;
              __s[*(&v89 + 1)] = 0;
            }

            std::wstring::basic_string[abi:ne200100]<0>(__p, v46);
            std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
            if (v83 < 0)
            {
              operator delete(__p[0]);
            }

            if (this->__end_ == this->__begin_)
            {
              v37 = 65;
            }

            else
            {
              v71 = 0;
              v72 = v43 + 6;
              v73 = v38 - a2;
              v37 = 65;
              do
              {
                TBuffer<wchar_t>::resize(&__s, 0);
                TBuffer<wchar_t>::insert(&__s, 0, a2, v73);
                v74 = &this->__begin_[v71];
                if (SHIBYTE(v74->__r_.__value_.__r.__words[2]) < 0)
                {
                  v74 = v74->__r_.__value_.__r.__words[0];
                }

                v75 = 0;
                  ;
                }

                TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), v74, v75 - 1);
                v77 = -1;
                v78 = v72;
                do
                {
                  v79 = *v78++;
                  ++v77;
                }

                while (v79);
                TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), v72, v77);
                if (*(&v89 + 1) >= v89)
                {
                  if (v91)
                  {
                    LODWORD(__p[0]) = 0;
                    TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), __p, 1uLL);
                    --*(&v89 + 1);
                  }

                  else if (v89)
                  {
                    __s[v89 - 1] = 0;
                  }
                }

                else
                {
                  __s[*(&v89 + 1)] = 0;
                }

                MEMORY[0x26672AF30](&this->__begin_[v71++]);
              }

              while (v71 < 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3));
            }

            goto LABEL_178;
          }
        }
      }

      goto LABEL_177;
    }

    TBuffer<wchar_t>::resize(&__s, 0);
    while (*a2)
    {
      if (!wcsncmp(a2, dword_26288F390, 7uLL))
      {
        v49 = a2 + 7;
        v50 = wcsstr(v49, " ");
        if (!v50)
        {
          goto LABEL_177;
        }

        TBuffer<wchar_t>::assign(&v84, dword_26288F3B0);
        TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v49, v50 - v49);
        v51 = v50 + 1;
        v52 = wcsstr(v51, &unk_26288F3C8);
        if (!v52)
        {
          goto LABEL_177;
        }

        LODWORD(__p[0]) = 61;
        TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), __p, 1uLL);
        TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v51, v52 - v51);
        v53 = *(a1 + 136);
        if (*(&v85 + 1) >= v85)
        {
          if (v87)
          {
            LODWORD(__p[0]) = 0;
            TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), __p, 1uLL);
            --*(&v85 + 1);
          }

          else if (v85)
          {
            v84[v85 - 1] = 0;
          }
        }

        else
        {
          v84[*(&v85 + 1)] = 0;
        }

        v57 = (*(*v53 + 16))(v53);
        if (v57 == -1)
        {
          goto LABEL_177;
        }

        v58 = TTagManager::getTag(*(a1 + 136), v57);
        std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v92, v93);
        v94 = 0;
        v92 = v9;
        v93 = 0;
        TTagManager::getClosedTagSet(*(a1 + 136), v58, &v92);
        std::vector<TPItnTagHandle_fake **>::insert[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,0>(v5, v5[1], v92, v9);
        a2 = v52 + 1;
      }

      else if (!wcsncmp(a2, dword_26288F3D0, 7uLL))
      {
        if (*v96 != 84)
        {
          goto LABEL_104;
        }

        v54 = wcsstr(a2 + 8, &unk_26288F3C8);
        v55 = v54;
        if (!v54)
        {
          goto LABEL_177;
        }

        TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), a2 + 7, v54 - (a2 + 7));
        a2 = v55 + 1;
      }

      else
      {
        if (!wcsncmp(a2, dword_26288F354, 5uLL))
        {
          if (*v96 == 84)
          {
            v37 = 0;
          }

          else
          {
            v37 = 83;
          }

          goto LABEL_178;
        }

        v47 = a2 + 1;
        if (!wcsncmp(a2, &unk_26288F36C, 1uLL))
        {
          a2 = wcsstr(a2 + 1, " ");
          TBuffer<wchar_t>::resize(&v84, 0);
          TBuffer<wchar_t>::insert(&v84, 0, v47, a2 - v47);
          v56 = *(a1 + 136);
          if (*(&v85 + 1) >= v85)
          {
            if (v87)
            {
              LODWORD(__p[0]) = 0;
              TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), __p, 1uLL);
              --*(&v85 + 1);
            }

            else if (v85)
            {
              v84[v85 - 1] = 0;
            }
          }

          else
          {
            v84[*(&v85 + 1)] = 0;
          }

          v59 = (*(*v56 + 16))(v56);
          if (v59 == -1)
          {
            goto LABEL_177;
          }

          v60 = TTagManager::getTag(*(a1 + 136), v59);
          std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v92, v93);
          v94 = 0;
          v92 = v9;
          v93 = 0;
          TTagManager::getClosedTagSet(*(a1 + 136), v60, &v92);
          std::vector<TPItnTagHandle_fake **>::insert[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,0>(v5, v5[1], v92, v9);
          v61 = a2 + 1;
          if (!*a2)
          {
            goto LABEL_177;
          }

          v62 = -4;
          v63 = 1;
          do
          {
            if (!wcsncmp(a2, &unk_26288F36C, 1uLL))
            {
              ++v63;
            }

            v63 -= wcsncmp(a2, &unk_26288F3C8, 1uLL) == 0;
            v64 = a2[1];
            ++a2;
            v62 += 4;
          }

          while (v64 && v63);
          if (v63)
          {
            goto LABEL_177;
          }

          TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), v61, (v62 >> 2) - 1);
          a1 = v81;
        }

        else
        {
          v48 = wcsstr(a2 + 1, &unk_26288F36C);
          if (!v48)
          {
            v48 = &a2[wcslen(a2)];
          }

          TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), a2, v48 - a2);
          a2 = v48;
        }
      }
    }

    if (*(&v89 + 1))
    {
      std::vector<std::string>::resize(this, 0);
      if (*(&v89 + 1) >= v89)
      {
        if (v91)
        {
          v95 = 0;
          TBuffer<wchar_t>::insert(&__s, *(&v89 + 1), &v95, 1uLL);
          v65 = __s;
          --*(&v89 + 1);
        }

        else
        {
          v65 = __s;
          if (v89)
          {
            __s[v89 - 1] = 0;
          }
        }
      }

      else
      {
        v65 = __s;
        __s[*(&v89 + 1)] = 0;
      }

      std::wstring::basic_string[abi:ne200100]<0>(__p, v65);
      std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
      if (v83 < 0)
      {
        operator delete(__p[0]);
      }

      v70 = *v96;
      if (v70 == 84)
      {
        v37 = 84;
      }

      else if (v70 == 78)
      {
        v37 = 78;
      }

      else
      {
        v37 = 66;
      }
    }

    else
    {
LABEL_177:
      v37 = 0;
    }
  }

  else
  {
LABEL_104:
    v37 = 83;
  }

LABEL_178:
  if (v87 == 1 && v84 != v86 && v84 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v91 == 1 && __s != v90 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v99 == 1 && v96 != v98 && v96)
  {
    MEMORY[0x26672B1B0]();
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v92, v93);
  return v37;
}

void sub_2627EBB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x468]) == 1 && a22 != a12 && a22 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x888]) == 1)
  {
    v24 = STACK[0x470];
    if (STACK[0x470] != a13)
    {
      if (v24)
      {
        MEMORY[0x26672B1B0](v24, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x9C8]) == 1)
  {
    v25 = STACK[0x8B0];
    if (STACK[0x8B0] != a14)
    {
      if (v25)
      {
        MEMORY[0x26672B1B0](v25, 0x1000C4077774924);
      }
    }
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x890], STACK[0x898]);
  _Unwind_Resume(a1);
}

void std::vector<TPItnTagHandle_fake **>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<TPItnTagHandle_fake **>::__append(result, a2 - v2);
  }
}

char *std::vector<TPItnTagHandle_fake **>::insert[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,0>(void *a1, char *a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a4);
  }

  return std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>>(a1, a2, a3, a4, v4);
}

const void **TBuffer<wchar_t>::assign(const void **a1, int *a2, unint64_t a3)
{
  TBuffer<wchar_t>::resize(a1, 0);

  return TBuffer<wchar_t>::insert(a1, 0, a2, a3);
}

void TFormatter::addGrammarBlocks(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (*(a1 + 112))
  {
    v9 = *(a1 + 48);
    ActiveConfigHandle = TParam::getActiveConfigHandle((v9 + 3792));
    if ((*(v9 + TParam::getValidConfig((v9 + 3792), ActiveConfigHandle) + 3944) & 1) == 0)
    {
      v11 = *(a1 + 48);
      v12 = TParam::getActiveConfigHandle((v11 + 1872));
      v13 = *(v11 + 4 * TParam::getValidConfig((v11 + 1872), v12) + 2032);
      v15 = *a2;
      v14 = a2[1];
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v16 = TFormatter::stateToParamConfig(a1, (v15 + 112 * a3 + 40));
      if (0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 4) >= (v13 + a3))
      {
        v17 = v13 + a3;
      }

      else
      {
        v17 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 4);
      }

      TGrammarManager2::search(*(a1 + 112), a2, a3, v17, v16, &v83);
      TAllocator::TAllocator(v82, 2048);
      memset(&v81, 0, sizeof(v81));
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      memset(v74, 0, sizeof(v74));
      v18 = v83;
      if (v84 != v83)
      {
        v19 = 0;
        v67 = (*(a5 + 7) - *(a5 + 6)) >> 3;
        do
        {
          v65 = v19;
          v20 = &v18[56 * v19];
          v21 = *(v20 + 3);
          v69 = *(v20 + 2) + a3 - *(v20 + 4);
          v66 = *(v20 + 1);
          v73 = TFsa::newTrans(a5, a4, *(*(a5 + 6) + 8 * v69), v66);
          std::vector<TItnRule *>::push_back[abi:ne200100](&v78, &v73);
          v22 = v79;
          if (v78 != v79)
          {
            v68 = v21 + a3;
            do
            {
              v73 = *(v22 - 1);
              v79 = (v22 - 1);
              v23 = *v73;
              v25 = v73[2];
              v24 = v73[3];
              TFsa::deleteTrans(a5, v73);
              v26 = TFormatter::splitGrammarResult(a1, v23, &v81, &v75, 0);
              while (v26 == 78)
              {
                begin = v81.__begin_;
                if (SHIBYTE(v81.__begin_->__r_.__value_.__r.__words[2]) < 0)
                {
                  begin = v81.__begin_->__r_.__value_.__l.__data_;
                }

                std::wstring::basic_string[abi:ne200100]<0>(&__p, begin);
                if (v72 >= 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                v26 = TFormatter::splitGrammarResult(a1, p_p, &v81, &v75, 1);
                if (SHIBYTE(v72) < 0)
                {
                  operator delete(__p);
                }
              }

              if (*v24 >= v67)
              {
                v29 = -1;
              }

              else
              {
                v29 = v68;
              }

              if (*v25 >= v67)
              {
                v30 = -1;
              }

              else
              {
                v30 = v69;
              }

              if (v26 > 0x52u)
              {
                if (v26 == 83)
                {
                  v71 = 0;
                  v72 = 0;
                  __p = &v71;
                  v40 = v75;
                  v39 = v76;
                  if (v75 != v76)
                  {
                    if (v81.__begin_ != v81.__end_)
                    {
                      TFsa::newState(a5, 0);
                      v40 = v75;
                      v39 = v76;
                    }

                    while (v40 != v39)
                    {
                      std::__tree<TPItnTagHandle_fake **>::__emplace_hint_unique_key_args<TPItnTagHandle_fake **,TPItnTagHandle_fake ** const&>(&__p, &v71, v40, v40);
                      ++v40;
                    }

                    operator new();
                  }

                  v41 = v24;
                  v52 = v81.__begin_;
                  if (v81.__end_ != v81.__begin_)
                  {
                    v53 = 0;
                    v54 = 0;
                    v55 = 0xAAAAAAAAAAAAAAABLL * ((v81.__end_ - v81.__begin_) >> 3);
                    do
                    {
                      ++v54;
                      v56 = v25;
                      if (v54 != v55)
                      {
                        v56 = TFsa::newState(a5, 0);
                        v52 = v81.__begin_;
                      }

                      v57 = &v52[v53];
                      size = SHIBYTE(v52[v53].__r_.__value_.__r.__words[2]);
                      if ((size & 0x8000000000000000) != 0)
                      {
                        size = v57->__r_.__value_.__l.__size_;
                      }

                      v59 = size + 1;
                      if (v59 >> 62)
                      {
                        v60 = -1;
                      }

                      else
                      {
                        v60 = 4 * v59;
                      }

                      v61 = TAllocator::allocate(v82, v60);
                      v62 = v61;
                      v63 = &v81.__begin_[v53];
                      if (SHIBYTE(v81.__begin_[v53].__r_.__value_.__r.__words[2]) < 0)
                      {
                        v63 = v63->__r_.__value_.__r.__words[0];
                      }

                      wcscpy(v61, v63);
                      v73 = TFsa::newTrans(a5, v41, v56, v62);
                      std::vector<TItnRule *>::push_back[abi:ne200100](&v78, &v73);
                      if (v56 != v25 && v75 != v76)
                      {
                        TFsa::newState(a5, 0);
                        operator new();
                      }

                      v52 = v81.__begin_;
                      v55 = 0xAAAAAAAAAAAAAAABLL * ((v81.__end_ - v81.__begin_) >> 3);
                      ++v53;
                      v41 = v56;
                    }

                    while (v54 < v55);
                  }

                  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&__p, v71);
                }

                else
                {
                  if (v26 != 84)
                  {
                    goto LABEL_40;
                  }

                  data = v81.__begin_;
                  if (SHIBYTE(v81.__begin_->__r_.__value_.__r.__words[2]) < 0)
                  {
                    data = v81.__begin_->__r_.__value_.__l.__data_;
                  }

                  HeadClone = TLexicon::findHeadClone(*(a1 + 32), data);
                  if (!HeadClone)
                  {
                    v34 = v81.__begin_;
                    if (SHIBYTE(v81.__begin_->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v34 = v81.__begin_->__r_.__value_.__l.__data_;
                    }

                    HeadClone = TLexicon::addTempWord(*(a1 + 32), v34, 0, 0, 0);
                  }

                  TFormatter::addWordBlocks(a1, HeadClone, v24, v25, a5, v29, v30, &v75);
                }
              }

              else
              {
                if (v26 != 65)
                {
                  if (v26 == 66)
                  {
                    v31 = v81.__begin_;
                    if (SHIBYTE(v81.__begin_->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v31 = v81.__begin_->__r_.__value_.__l.__data_;
                    }

                    TFormatter::addCapBlocks(a1, a5, v24, v25, v31, v29, v30, &v75, v74);
                  }

LABEL_40:
                  loggableUnicode(v66, &__p);
                  if (v72 >= 0)
                  {
                    v36 = &__p;
                  }

                  else
                  {
                    v36 = __p;
                  }

                  tknPrintf("Error: couldn't parse '%s' spanning [%llu,%llu). Ignored.\n", v35, v36, v68, v69);
                  if (SHIBYTE(v72) < 0)
                  {
                    operator delete(__p);
                  }

                  TFormatter::addCapBlocks(a1, a5, v24, v25, &dword_26288F33C, v29, v30, &v75, v74);
                }

                v38 = v75;
                v37 = v76;
                if (v75 != v76)
                {
                  if (v81.__begin_ != v81.__end_)
                  {
                    TFsa::newState(a5, 0);
                    v38 = v75;
                    v37 = v76;
                  }

                  v71 = 0;
                  v72 = 0;
                  __p = &v71;
                  while (v38 != v37)
                  {
                    std::__tree<TPItnTagHandle_fake **>::__emplace_hint_unique_key_args<TPItnTagHandle_fake **,TPItnTagHandle_fake ** const&>(&__p, &v71, v38, v38);
                    ++v38;
                  }

                  operator new();
                }

                v42 = v81.__begin_;
                if (v81.__end_ != v81.__begin_)
                {
                  v43 = 0;
                  v44 = 0;
                  do
                  {
                    v45 = &v42[v43];
                    v46 = SHIBYTE(v42[v43].__r_.__value_.__r.__words[2]);
                    if ((v46 & 0x8000000000000000) != 0)
                    {
                      v46 = v45->__r_.__value_.__l.__size_;
                    }

                    v47 = v46 + 1;
                    if (v47 >> 62)
                    {
                      v48 = -1;
                    }

                    else
                    {
                      v48 = 4 * v47;
                    }

                    v49 = TAllocator::allocate(v82, v48);
                    v50 = v49;
                    v51 = &v81.__begin_[v43];
                    if (SHIBYTE(v81.__begin_[v43].__r_.__value_.__r.__words[2]) < 0)
                    {
                      v51 = v51->__r_.__value_.__r.__words[0];
                    }

                    wcscpy(v49, v51);
                    v73 = TFsa::newTrans(a5, v24, v25, v50);
                    std::vector<TItnRule *>::push_back[abi:ne200100](&v78, &v73);
                    ++v44;
                    v42 = v81.__begin_;
                    ++v43;
                  }

                  while (v44 < 0xAAAAAAAAAAAAAAABLL * ((v81.__end_ - v81.__begin_) >> 3));
                }
              }

              v22 = v79;
            }

            while (v78 != v79);
          }

          v18 = v83;
          v19 = v65 + 1;
        }

        while (v65 + 1 < (0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 3)));
      }

      TGrammarManager2::clearResult(*(a1 + 112));
      if (v74[0])
      {
        operator delete(v74[0]);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      v78 = &v81;
      std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v78);
      TAllocator::clear(v82);
      if (v83)
      {
        v84 = v83;
        operator delete(v83);
      }
    }
  }
}

void sub_2627EC5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  a33 = (v34 - 176);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a33);
  TAllocator::clear((v34 - 152));
  v36 = *(v34 - 112);
  if (v36)
  {
    *(v34 - 104) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

void TFormatter::addWordBlocks(uint64_t a1, __int32 **a2, uint64_t a3, uint64_t a4, TAllocator *a5, uint64_t a6, uint64_t a7, char **a8)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v45 = &v47;
  v46 = xmmword_26286B6F0;
  v48 = 1;
  TWord::getWrittenForm(a2, &v45);
  v42 = v44;
  v43 = xmmword_26286B6F0;
  v44[2048] = 1;
  (*(**(a1 + 120) + 48))(*(a1 + 120), *a2, 0, &v42);
  __p = 0;
  v40 = 0;
  v41 = 0;
  v15 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v16 = 0;
    do
    {
      v17 = *&v42[8 * v16];
      if (v17)
      {
        v18 = *(*(a1 + 120) + 32);
        if (v17 <= (*(*(a1 + 120) + 40) - v18) >> 3)
        {
          v17 = *(v18 + 8 * v17 - 8);
        }

        else
        {
          v17 = 0;
        }
      }

      if ((*(v17 + 145) & 1) == 0 && *(v17 + 32) == *(v17 + 24) && *(v17 + 56) == *(v17 + 48))
      {
        v19 = (v17 + 120);
        if (*(v17 + 143) < 0)
        {
          v19 = *v19;
        }

        v38 = v19;
        if (*v19)
        {
          if (*(&v46 + 1) >= v46)
          {
            if (v48)
            {
              v55[0] = 0;
              TBuffer<wchar_t>::insert(&v45, *(&v46 + 1), v55, 1uLL);
              v20 = v45;
              --*(&v46 + 1);
              v19 = v38;
            }

            else
            {
              v20 = v45;
              if (v46)
              {
                v45[v46 - 1] = 0;
              }
            }
          }

          else
          {
            v20 = v45;
            v45[*(&v46 + 1)] = 0;
          }

          if (!wcscasecmp(v20, v19))
          {
            if (*(&v46 + 1) >= v46)
            {
              if (v48)
              {
                v55[0] = 0;
                TBuffer<wchar_t>::insert(&v45, *(&v46 + 1), v55, 1uLL);
                v21 = v45;
                --*(&v46 + 1);
              }

              else
              {
                v21 = v45;
                if (v46)
                {
                  v45[v46 - 1] = 0;
                }
              }
            }

            else
            {
              v21 = v45;
              v45[*(&v46 + 1)] = 0;
            }

            if (wcscmp(v21, v38))
            {
              std::vector<wchar_t const*>::push_back[abi:ne200100](&__p, &v38);
            }
          }
        }

        v15 = *(&v43 + 1);
      }

      ++v16;
    }

    while (v16 < v15);
    if (__p != v40)
    {
      if (*(&v46 + 1) >= v46)
      {
        if (v48)
        {
          LODWORD(v38) = 0;
          TBuffer<wchar_t>::insert(&v45, *(&v46 + 1), &v38, 1uLL);
          v22 = v45;
          --*(&v46 + 1);
        }

        else
        {
          v22 = v45;
          if (v46)
          {
            v45[v46 - 1] = 0;
          }
        }
      }

      else
      {
        v22 = v45;
        v45[*(&v46 + 1)] = 0;
      }

      v23 = v40;
      if (v40 >= v41)
      {
        v25 = (v40 - __p) >> 3;
        if ((v25 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v26 = (v41 - __p) >> 2;
        if (v26 <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        if (v41 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&__p, v27);
        }

        v28 = (8 * v25);
        *v28 = v22;
        v24 = 8 * v25 + 8;
        v29 = v28 - (v40 - __p);
        memcpy(v29, __p, v40 - __p);
        v30 = __p;
        __p = v29;
        v40 = v24;
        v41 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v40 = v22;
        v24 = (v23 + 8);
      }

      v40 = v24;
      v15 = *(&v43 + 1);
    }

    if (v15)
    {
      v31 = 0;
      while (1)
      {
        v32 = *&v42[8 * v31];
        if (v32 && (v33 = *(*(a1 + 120) + 32), v32 <= (*(*(a1 + 120) + 40) - v33) >> 3))
        {
          v34 = *(v33 + 8 * v32 - 8);
        }

        else
        {
          v34 = 0;
        }

        if ((*(v34 + 145) & 1) == 0)
        {
          break;
        }

        if (++v31 >= v15)
        {
          std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TPItnTagHandle_fake ** const*>,std::__wrap_iter<TPItnTagHandle_fake ** const*>>(&v49, v50, *a8, a8[1], (a8[1] - *a8) >> 3);
          TFormatter::addCapBlocks(a1, a5, a3, a4, &dword_26288F33C, a6, a7, &v49, &__p);
        }
      }

      std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TPItnTagHandle_fake ** const*>,std::__wrap_iter<TPItnTagHandle_fake ** const*>>(&v49, v50, *(v34 + 96), *(v34 + 104), (*(v34 + 104) - *(v34 + 96)) >> 3);
      if (&v52 != (v34 + 72))
      {
        std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ***,TPItnTagHandle_fake ***>(&v52, *(v34 + 72), *(v34 + 80), (*(v34 + 80) - *(v34 + 72)) >> 3);
      }

      std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TPItnTagHandle_fake ** const*>,std::__wrap_iter<TPItnTagHandle_fake ** const*>>(&v52, v53, *a8, a8[1], (a8[1] - *a8) >> 3);
      v35 = (v34 + 120);
      if (*(v34 + 143) < 0)
      {
        v35 = *v35;
      }

      TFormatter::addCapBlocks(a1, a5, a3, a4, v35, a6, a7, &v52, &__p);
    }
  }

  std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TPItnTagHandle_fake ** const*>,std::__wrap_iter<TPItnTagHandle_fake ** const*>>(&v49, v50, *a8, a8[1], (a8[1] - *a8) >> 3);
  if (*(&v46 + 1) >= v46)
  {
    if (v48)
    {
      LODWORD(v38) = 0;
      TBuffer<wchar_t>::insert(&v45, *(&v46 + 1), &v38, 1uLL);
      v36 = v45;
      --*(&v46 + 1);
    }

    else
    {
      v36 = v45;
      if (v46)
      {
        v45[v46 - 1] = 0;
      }
    }
  }

  else
  {
    v36 = v45;
    v45[*(&v46 + 1)] = 0;
  }

  TFormatter::addCapBlocks(a1, a5, a3, a4, v36, a6, a7, &v49, &__p);
}

void sub_2627ECCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x878]) == 1 && a21 != a11 && a21)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0xC98]) == 1)
  {
    v23 = STACK[0x880];
    if (STACK[0x880] != a12)
    {
      if (v23)
      {
        MEMORY[0x26672B1B0](v23, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  v24 = *(v21 - 144);
  if (v24)
  {
    *(v21 - 136) = v24;
    operator delete(v24);
  }

  v25 = *(v21 - 120);
  if (v25)
  {
    *(v21 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t TFormatter::constructGraph(TFormatter *a1, uint64_t *a2, uint64_t a3, int a4, uint64_t **this)
{
  if (a2[1] - *a2 != -112)
  {
    v8 = 0;
    do
    {
      TFsa::newState(this, 0);
      ++v8;
    }

    while (v8 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4) + 1);
  }

  TFsa::addExtremity(this, *this[6], 0);
  TFsa::addExtremity(this, *(this[6] + 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 1)), 1u);
  __p = 0;
  v21 = 0;
  v22 = 0;
  memset(v19, 0, sizeof(v19));
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = &this[6][v10];
      v13 = *v11;
      v12 = v11[1];
      std::vector<TPItnTagHandle_fake **>::resize(&__p, 0);
      v14 = v10 + 1;
      if (*(*a2 + v9 + 33) == 1)
      {
        TFormatter::addCapBlocks(a1, this, v13, v12, &dword_26288F33C, v10, v10 + 1, &__p, v19);
      }

      TFormatter::addGrammarBlocks(a1, a2, v10, v13, this);
      TFormatter::addWordBlocks(a1, *(*a2 + v9 + 16), v13, v12, this, v10, v10 + 1, &__p);
      v9 += 112;
      ++v10;
    }

    while (v14 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
  }

  v15 = *(a1 + 6);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v15 + 19248));
  if (*(v15 + TParam::getValidConfig((v15 + 19248), ActiveConfigHandle) + 19400) == 1)
  {
    TFormatter::logFsa(a1, this);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return a3;
}

void sub_2627ECFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TFormatter::logFsa(TFormatter *this, const TFsa *a2)
{
  v26 = v28;
  v27 = xmmword_26286B6F0;
  v29 = 1;
  v3 = *(a2 + 6);
  v4 = *(a2 + 7);
  if (v3 != v4)
  {
    while (!*v3)
    {
      if (++v3 == v4)
      {
        goto LABEL_38;
      }
    }
  }

  if (v3 == v4)
  {
    goto LABEL_38;
  }

  do
  {
    tknPrintf("GRAPH: state=%llu, starting=%d, accepting=%d\n", a2, **v3, (*v3)[4] != -1, (*v3)[5] != -1);
    for (i = (*v3)[3]; i; i = i[5])
    {
      v6 = *i;
      TBuffer<wchar_t>::resize(&v26, 0);
      v7 = (v6 + 48);
      if (*(v6 + 71) < 0)
      {
        v7 = *v7;
      }

      slashEscape(v7, &v26);
      v8 = i[1];
      v9 = *i[2];
      if (*(&v27 + 1) >= v27)
      {
        if (v29)
        {
          v30[0] = 0;
          TBuffer<wchar_t>::insert(&v26, *(&v27 + 1), v30, 1uLL);
          v10 = v26;
          --*(&v27 + 1);
        }

        else
        {
          v10 = v26;
          if (v27)
          {
            v26[v27 - 1] = 0;
          }
        }
      }

      else
      {
        v10 = v26;
        v26[*(&v27 + 1)] = 0;
      }

      loggableUnicode(v10, __p);
      if (v25 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      tknPrintf("GRAPH:   trans=%llu, to_state=%llu, text='%s'\n", v11, v8, v9, v12);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      tknPrintf("GRAPH:     tags:\n", v13);
      v14 = *(v6 + 120);
      if (*(v6 + 128) != v14)
      {
        v15 = 0;
        do
        {
          v16 = *(v14 + 8 * v15);
          Tag = TTagManager::getTag(*(this + 17), v16);
          if (Tag)
          {
            if (*(Tag + 23) < 0)
            {
              Tag = *Tag;
            }

            loggableUnicode(Tag, __p);
            if (v25 >= 0)
            {
              v20 = __p;
            }

            else
            {
              v20 = __p[0];
            }

            tknPrintf("GRAPH:       <%s>\n", v19, v20);
            if (v25 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            tknPrintf("GRAPH:       <%llu>\n", v18, v16);
          }

          ++v15;
          v14 = *(v6 + 120);
        }

        while (v15 < (*(v6 + 128) - v14) >> 3);
      }
    }

    v21 = v3 + 1;
    do
    {
      v3 = v21;
      if (v21 == v4)
      {
        break;
      }

      ++v21;
    }

    while (!*v3);
  }

  while (v3 != *(a2 + 7));
  if (v29)
  {
LABEL_38:
    if (v26 != v28 && v26 != 0)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void sub_2627ED284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (LOBYTE(STACK[0x458]) == 1 && a17 != a12 && a17 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TFormatter::collectTags(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, TAllocator *a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v11 = *(a2 + 152);
  v10 = *(a2 + 160);
  if (v11 != v10)
  {
    while (!*v11)
    {
      v11 += 8;
      if (v11 == v10)
      {
        goto LABEL_178;
      }
    }
  }

  if (v11 == v10)
  {
LABEL_178:
    v89 = 0;
    return v89 & 1;
  }

  v102 = *(a2 + 160);
  do
  {
    v106 = v11;
    for (i = *(*v11 + 24); i; v8 = a3)
    {
      v13 = *i;
      v14 = (*i + 48);
      v15 = v14;
      if (*(*i + 71) < 0)
      {
        v15 = *v14;
      }

      v16 = wcslen(v15);
      v18 = *(v8 + 8);
      v17 = *(v8 + 16);
      if (v17 >= v18)
      {
        if (*(v8 + 1048))
        {
          LODWORD(v109) = 0;
          TBuffer<wchar_t>::insert(v8, v17, &v109, 1uLL);
          --*(v8 + 16);
          v19 = *v8;
        }

        else
        {
          v19 = *v8;
          if (v18)
          {
            v19[v18 - 1] = 0;
          }
        }
      }

      else
      {
        v19 = *v8;
        *(*v8 + 4 * v17) = 0;
      }

      v20 = v14;
      if (*(v13 + 71) < 0)
      {
        v20 = *v14;
      }

      v21 = 0;
      if (wcsncmp(v19, v20, v16))
      {
        v22 = 1;
        do
        {
          v23 = v19[v21];
          {
            operator new();
          }

          if (v23 <= 8202)
          {
            if (v23 != 32 && v23 != 160)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v24 = v23 == 8203 || v23 == 65279;
            if (!v24 && v23 != 12288)
            {
              goto LABEL_43;
            }
          }

          v26 = *(a3 + 8);
          v25 = *(a3 + 16);
          if (v25 >= v26)
          {
            if (*(a3 + 1048))
            {
              LODWORD(v109) = 0;
              TBuffer<wchar_t>::insert(a3, v25, &v109, 1uLL);
              --*(a3 + 16);
              v19 = *a3;
            }

            else
            {
              v19 = *a3;
              if (v26)
              {
                v19[v26 - 1] = 0;
              }
            }
          }

          else
          {
            v19 = *a3;
            *(*a3 + 4 * v25) = 0;
          }

          v27 = v14;
          if (*(v13 + 71) < 0)
          {
            v27 = *v14;
          }

          v28 = wcsncmp(&v19[v22++], v27, v16);
          ++v21;
        }

        while (v28);
      }

      v29 = TAllocator::allocate(a6, 40);
      *v29 = 0;
      v29[1] = i;
      v29[2] = 0;
      v29[3] = v21 + v16;
      *(v29 + 32) = 0;
      v109 = v29;
      std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v109);
LABEL_43:
      i = i[5];
    }

    v30 = v106 + 8;
    do
    {
      v11 = v30;
      if (v30 == v102)
      {
        break;
      }

      v30 += 8;
    }

    while (!*v11);
  }

  while (v11 != *(a2 + 160));
  v31 = v110;
  if (v111 == v110)
  {
    v91 = 0;
    if (!v110)
    {
      goto LABEL_177;
    }
  }

  else
  {
    v91 = 0;
    v32 = 0;
    v33 = a8;
    do
    {
      v34 = *&v31[8 * v32];
      v35 = *(v34[1] + 16);
      v96 = v32;
      v103 = v34;
      if (*(v35 + 40) != -1)
      {
        v36 = v34[3];
        v37 = *(a3 + 16);
        if (v36 < v37)
        {
          v38 = a3;
          do
          {
            v39 = *(*v38 + 4 * v36);
            {
              operator new();
            }

            if (v39 <= 8202)
            {
              if (v39 != 32 && v39 != 160)
              {
                goto LABEL_67;
              }
            }

            else if (v39 != 8203 && v39 != 12288 && v39 != 65279)
            {
LABEL_67:
              v37 = *(a3 + 16);
              break;
            }

            ++v36;
            v38 = a3;
            v37 = *(a3 + 16);
          }

          while (v36 < v37);
        }

        if (v36 == v37)
        {
          v42 = *(a7 + 8);
          v41 = *(a7 + 16);
          if (v42 >= v41)
          {
            v44 = (v42 - *a7) >> 3;
            if ((v44 + 1) >> 61)
            {
              std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
            }

            v45 = v41 - *a7;
            v46 = v45 >> 2;
            if (v45 >> 2 <= (v44 + 1))
            {
              v46 = v44 + 1;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v47 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v47 = v46;
            }

            if (v47)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a7, v47);
            }

            *(8 * v44) = v34;
            v43 = 8 * v44 + 8;
            v48 = *(a7 + 8) - *a7;
            v49 = (8 * v44 - v48);
            memcpy(v49, *a7, v48);
            v50 = *a7;
            *a7 = v49;
            *(a7 + 8) = v43;
            *(a7 + 16) = 0;
            if (v50)
            {
              operator delete(v50);
            }
          }

          else
          {
            *v42 = v34;
            v43 = (v42 + 1);
          }

          *(a7 + 8) = v43;
          if (v34)
          {
            v51 = v34;
            v52 = a4;
            do
            {
              v53 = v51[2];
              v54 = v53 < v52 || v53 >= a5;
              if (!v54 || v53 < v52 && v51[3] >= v52)
              {
                if (v53 < a4 && v51[3] >= a4)
                {
                  v52 = v51[2];
                }

                v55 = *v51[1];
                v56 = *(v55 + 120);
                if (*(v55 + 128) != v56)
                {
                  v57 = 0;
                  do
                  {
                    v58 = *(v56 + 8 * v57);
                    v109 = v58;
                    if (*(v34 + 32) != 1)
                    {
                      goto LABEL_100;
                    }

                    Tag = TTagManager::getTag(*(a1 + 136), v58);
                    if (!Tag)
                    {
                      goto LABEL_100;
                    }

                    if (*(Tag + 23) < 0)
                    {
                      Tag = *Tag;
                    }

                    if (wcsncmp(Tag, dword_26288F408, 6uLL))
                    {
LABEL_100:
                      std::__tree<SDhVoc_fake **>::__emplace_unique_key_args<SDhVoc_fake **,SDhVoc_fake ** const&>(v33, &v109, &v109);
                    }

                    ++v57;
                    v56 = *(v55 + 120);
                  }

                  while (v57 < (*(v55 + 128) - v56) >> 3);
                }
              }

              v51 = *v51;
            }

            while (v51);
          }

          v91 = 1;
        }
      }

      for (j = *(v35 + 24); j; v34 = v103)
      {
        v61 = v34[3];
        v99 = j;
        v62 = (*j + 48);
        v105 = *j;
        if (*(*j + 71) < 0)
        {
          v63 = wcslen(*v62);
          v64 = **v62;
        }

        else
        {
          v63 = wcslen(v62);
          v64 = *v62;
        }

        if (v64)
        {
          {
            operator new();
          }

          if (v64 <= 8202)
          {
            if (v64 != 32 && v64 != 160)
            {
              goto LABEL_124;
            }
          }

          else if (v64 != 8203 && v64 != 12288 && v64 != 65279)
          {
LABEL_124:
            while (v61 < *(a3 + 16))
            {
              v69 = *(*a3 + 4 * v61);
              {
                operator new();
              }

              if (v69 <= 8202)
              {
                if (v69 != 32 && v69 != 160)
                {
                  break;
                }
              }

              else
              {
                v70 = v69 == 8203 || v69 == 65279;
                if (!v70 && v69 != 12288)
                {
                  break;
                }
              }

              ++v61;
            }
          }
        }

        v67 = *(a3 + 8);
        v66 = *(a3 + 16);
        if (v66 >= v67)
        {
          if (*(a3 + 1048))
          {
            LODWORD(v109) = 0;
            TBuffer<wchar_t>::insert(a3, v66, &v109, 1uLL);
            --*(a3 + 16);
            v68 = *a3;
          }

          else
          {
            v68 = *a3;
            if (v67)
            {
              v68[v67 - 1] = 0;
            }
          }
        }

        else
        {
          v68 = *a3;
          *(*a3 + 4 * v66) = 0;
        }

        if (*(v105 + 71) < 0)
        {
          v62 = *v62;
        }

        v97 = v63;
        v98 = v61;
        v71 = v99;
        if (!wcsncmp(&v68[v61], v62, v63))
        {
          v72 = *(v103 + 32);
          v73 = *(v105 + 120);
          if (*(v105 + 128) == v73)
          {
            goto LABEL_169;
          }

          v101 = *(v103 + 32);
          v74 = 0;
          v75 = 0;
          do
          {
            v76 = TTagManager::getTag(*(a1 + 136), *(v73 + 8 * v74));
            v77 = v76;
            v107 = v74;
            if (v76)
            {
              if (*(v76 + 23) < 0)
              {
                v77 = *v76;
              }

              v78 = v103;
              if (!wcsncmp(v77, dword_26288F3B0, 5uLL) && v103 != 0)
              {
                v80 = wcschr(v77, 61);
                v81 = v75;
                do
                {
                  v82 = *v78[1];
                  v83 = *(v82 + 120);
                  if (*(v82 + 128) == v83)
                  {
LABEL_161:
                    if (v81)
                    {
                      v75 = 1;
                      break;
                    }
                  }

                  else
                  {
                    v84 = 0;
                    while (1)
                    {
                      v85 = TTagManager::getTag(*(a1 + 136), *(v83 + 8 * v84));
                      v86 = v85;
                      if (v85)
                      {
                        if (*(v85 + 23) < 0)
                        {
                          v86 = *v85;
                        }

                        if (!wcsncmp(v86, v77, v80 - v77 + 1) && wcscmp((v86 + v80 - v77 + 4), v80 + 1))
                        {
                          break;
                        }
                      }

                      ++v84;
                      v83 = *(v82 + 120);
                      if (v84 >= (*(v82 + 128) - v83) >> 3)
                      {
                        goto LABEL_161;
                      }
                    }

                    v101 = 1;
                    v75 = 1;
                    if ((v77[5] == 83) | v81 & 1)
                    {
                      break;
                    }
                  }

                  v81 = 0;
                  v75 = 0;
                  v78 = *v78;
                }

                while (v78);
              }
            }

            ++v74;
            v73 = *(v105 + 120);
          }

          while (v107 + 1 < ((*(v105 + 128) - v73) >> 3));
          v71 = v99;
          v72 = v101;
          if ((v75 & 1) == 0)
          {
LABEL_169:
            v87 = TAllocator::allocate(a6, 40);
            v88 = v103[3];
            *v87 = v103;
            v87[1] = v71;
            v87[2] = v88;
            v87[3] = v98 + v97;
            *(v87 + 32) = v72 & 1;
            v109 = v87;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v109);
          }
        }

        j = v71[5];
        v33 = a8;
        v32 = v96;
      }

      ++v32;
      v31 = v110;
    }

    while (v32 < (v111 - v110) >> 3);
    if (!v110)
    {
      goto LABEL_177;
    }
  }

  v111 = v31;
  operator delete(v31);
LABEL_177:
  v89 = v91;
  return v89 & 1;
}

void sub_2627EDC84(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  v4 = *(v2 - 112);
  if (v4)
  {
    *(v2 - 104) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void TFormatter::replace(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v101 = v4;
  v102 = v3;
  v6 = v5;
  v103 = v7;
  v104 = v8;
  v100 = v9;
  v10 = v2;
  v148 = *MEMORY[0x277D85DE8];
  v137 = v139;
  v138 = xmmword_26286B6F0;
  v140 = 1;
  if ((v11 & 8) == 0)
  {
    goto LABEL_2;
  }

  v12 = *(v2 + 48);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v12 + 5768));
  ValidConfig = TParam::getValidConfig((v12 + 5768), ActiveConfigHandle);
  if (!v104 || (*(v12 + ValidConfig + 5920) & 1) == 0 || !*v6 || v104 + v102 <= v102)
  {
    goto LABEL_2;
  }

  v15 = 0;
  v99 = (v103 + 8 * v102);
  while (1)
  {
    Result = TResultManager::getResult(*(v10 + 16), v99[v15]);
    if (Result[3] || Result[5] != Result[4])
    {
      break;
    }

    if (v104 == ++v15)
    {
      goto LABEL_2;
    }
  }

  if (TLocaleInfo::multiByteToUnicode(*(v10 + 4) + 240, v6, &v137))
  {
    goto LABEL_2;
  }

  v133 = v135;
  v134 = xmmword_26286B6F0;
  v136 = 1;
  v144 = v146;
  v145 = xmmword_26286B6F0;
  v147 = 1;
  v131 = 0;
  __p = 0;
  v132 = 0;
  v105[0] = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](&__p, v105);
  v17 = v102;
  do
  {
    v18 = TResultManager::getResult(*(v10 + 16), *(v103 + 8 * v17));
    v19 = *(v18 + 104);
    if (*(v18 + 112) != v19)
    {
      v20 = 0;
      do
      {
        v105[0] = *(v19 + 8 * v20) + *(v131 - 1);
        std::vector<unsigned long>::push_back[abi:ne200100](&__p, v105);
        v20 += 2;
        v19 = *(v18 + 104);
      }

      while (v20 < (*(v18 + 112) - v19) >> 3);
    }

    v21 = 0;
    v22 = *(v18 + 16);
      ;
    }

    TBuffer<char>::insert(&v144, *(&v145 + 1), v22, v21 - 1);
    TLocaleInfo::multiByteToUnicode(*(v10 + 4) + 240, *(v18 + 16), &v133);
    ++v17;
  }

  while (v17 != v104 + v102);
  if (*(&v145 + 1))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = (v131 - __p) >> 3;
    do
    {
      if (v25 < v27)
      {
        for (i = *(__p + v25); i <= v26; i = *(__p + ++v25))
        {
          v24 = i;
          if (v27 - 1 == v25)
          {
            v25 = (v131 - __p) >> 3;
            break;
          }
        }
      }

      if (v6[v26] != v144[v26])
      {
        goto LABEL_37;
      }

      ++v26;
    }

    while (v26 != *(&v145 + 1));
    v29 = strlen(v6);
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
LABEL_37:
    v30 = strlen(v6);
    v29 = v30;
    if (v26 != *(&v145 + 1))
    {
      if (*(&v145 + 1) && v30)
      {
        v35 = 0;
        v36 = (v131 - __p) >> 3;
        v37 = v30;
        v38 = *(&v145 + 1);
        v39 = *(&v145 + 1);
        do
        {
          v40 = v38;
          v41 = v37;
          --v38;
          --v37;
          if (v38 <= v24 || v37 <= v24)
          {
            break;
          }

          if (v35 < v36)
          {
            v43 = *&v131[8 * ~v35];
            if (v43 > v38)
            {
              v44 = &v131[-8 * v35 - 16];
              while (1)
              {
                v39 = v43;
                if (v36 - 1 == v35)
                {
                  break;
                }

                v45 = *v44--;
                v43 = v45;
                ++v35;
                if (v45 <= v38)
                {
                  goto LABEL_60;
                }
              }

              v35 = (v131 - __p) >> 3;
            }
          }

LABEL_60:
          ;
        }

        while (v6[v37] == v144[v38]);
        v46 = v41 - v40 + v39;
        goto LABEL_63;
      }

LABEL_62:
      v46 = v29;
      v39 = *(&v145 + 1);
LABEL_63:
      while (v24)
      {
        if (v6[v24 - 1] != 32)
        {
          break;
        }

        --v24;
      }

      if (v46 < v29)
      {
        do
        {
          if (v6[v46] != 32)
          {
            goto LABEL_70;
          }

          ++v46;
        }

        while (v29 != v46);
        v46 = v29;
      }

LABEL_70:
      v95 = v46;
      if (v39 < *(&v145 + 1))
      {
        do
        {
          if (v144[v39] != 32)
          {
            goto LABEL_74;
          }

          ++v39;
        }

        while (*(&v145 + 1) != v39);
        v39 = *(&v145 + 1);
      }

LABEL_74:
      v47 = *(v10 + 6);
      v48 = TParam::getActiveConfigHandle((v47 + 19248));
      if (*(v47 + TParam::getValidConfig((v47 + 19248), v48) + 19400) == 1)
      {
        v49 = TBuffer<char>::c_str(&v144);
        tknPrintf("REPLACEMENT OLD TEXT (%llu,%llu): <%s>\n", v50, v24, v39, v49);
        tknPrintf("REPLACEMENT NEW TEXT (%llu,%llu): <%s>\n", v51, v24, v95, v6);
      }

      v128 = 0;
      v127 = 0;
      v129 = 0;
      TFsa::TFsa(v124);
      TFormatter::addWords(v10, v99, &v99[v104], 0, &v127);
      TFormatter::constructGraph(v10, &v127, 0, -1227133513 * ((v128 - v127) >> 4), v124);
      v123[1] = 0;
      v123[0] = 0;
      v122 = v123;
      v121[1] = 0;
      v121[0] = 0;
      v120 = v121;
      TAllocator::TAllocator(v119, 2048);
      v117 = 0;
      v116 = 0;
      v118 = 0;
      v114 = 0;
      v113 = 0;
      v115 = 0;
      if (TFormatter::collectTags(v10, v124, &v137, v24, v95, v119, &v113, &v120) && TFormatter::collectTags(v10, v124, &v133, v24, v39, v119, &v116, &v122))
      {
        **v101 = -1;
        (*v101)[1] = TResultManager::merge(*(v10 + 16), v99, v104);
        (*v101)[2] = -1;
        v111 = 0;
        __src = 0;
        v112 = 0;
        v52 = *v113;
        if (*v113)
        {
          v53 = 0;
          do
          {
            v54 = *v52[1];
            if (v53 >= v112)
            {
              v55 = (v53 - __src) >> 3;
              if ((v55 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v56 = (v112 - __src) >> 2;
              if (v56 <= v55 + 1)
              {
                v56 = v55 + 1;
              }

              if (v112 - __src >= 0x7FFFFFFFFFFFFFF8)
              {
                v57 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v57 = v56;
              }

              if (v57)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(&__src, v57);
              }

              v58 = (8 * v55);
              *v58 = v54;
              v53 = (8 * v55 + 8);
              v59 = v58 - (v111 - __src);
              memcpy(v59, __src, v111 - __src);
              v60 = __src;
              __src = v59;
              v111 = v53;
              v112 = 0;
              if (v60)
              {
                operator delete(v60);
              }
            }

            else
            {
              *v53 = v54;
              v53 += 8;
            }

            v111 = v53;
            v52 = *v52;
          }

          while (v52);
          v61 = __src;
        }

        else
        {
          v61 = 0;
          v53 = 0;
        }

        v108 = 0;
        v107 = 0;
        v109 = 0;
        v141 = v143;
        v142 = xmmword_26286B6F0;
        v143[256] = 1;
        v62 = v53 - v61;
        if (v53 == v61)
        {
          v63 = 0;
LABEL_170:
          if (v29 > v63)
          {
            v105[0] = v29 - v63;
            std::vector<unsigned long>::push_back[abi:ne200100](&v107, v105);
            v105[0] = 0;
            std::vector<unsigned long>::push_back[abi:ne200100](&v107, v105);
          }

          TResultManager::setResultText(*(v10 + 16), (*v101)[1], v6, &v107);
        }

        v97 = 0;
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v66 = *&v61[8 * ~v65 + v62];
          *(&v142 + 1) = 0;
          v67 = (v66 + 48);
          lpsrc = v66;
          if (*(v66 + 71) < 0)
          {
            v67 = *v67;
          }

          TLocaleInfo::unicodeToMultiByte(*(v10 + 4) + 240, v67, &v141);
          if (*(&v142 + 1))
          {
            break;
          }

          v74 = v97;
          if (lpsrc[1] != -1)
          {
            v74 = lpsrc[1];
          }

          if (lpsrc[2] == -1)
          {
            v97 = v74;
          }

          else
          {
            v105[0] = v64 - v63;
            std::vector<unsigned long>::push_back[abi:ne200100](&v107, v105);
            v105[0] = lpsrc[2] - v74;
            std::vector<unsigned long>::push_back[abi:ne200100](&v107, v105);
            v97 = lpsrc[2];
            v63 = v64;
          }

LABEL_165:
          ++v65;
          v61 = __src;
          v62 = v111 - __src;
          if (v65 >= (v111 - __src) >> 3)
          {
            goto LABEL_170;
          }
        }

        v94 = v65;
        LODWORD(v106) = 0;
        v68 = TLocaleInfo::multiByteToUnicode(*(v10 + 4) + 240, &v6[v64], &v106);
        v96 = v63;
        v69 = 0;
        while (*v141 != v6[v64])
        {
          v70 = v106;
          {
            operator new();
          }

          if (v70 <= 8202)
          {
            if (v70 != 32 && v70 != 160)
            {
              break;
            }
          }

          else
          {
            v71 = v70 == 8203 || v70 == 65279;
            if (!v71 && v70 != 12288)
            {
              break;
            }
          }

          v72 = v68;
          if (v64 >= v29)
          {
            v72 = 0;
          }

          v69 += v72;
          v64 += v68;
          v68 = TLocaleInfo::multiByteToUnicode(*(v10 + 4) + 240, &v6[v64], &v106);
        }

        v63 = v96;
        TLocaleInfo::multiByteToUnicode(*(v10 + 4) + 240, &v6[v96], &v106);
        if (v69)
        {
          v73 = v106;
          {
            operator new();
          }

          if (v73 <= 8202)
          {
            if (v73 != 32 && v73 != 160)
            {
              goto LABEL_156;
            }
          }

          else if (v73 != 8203 && v73 != 65279 && v73 != 12288)
          {
            goto LABEL_156;
          }

          v75 = v108;
          if (v108 >= v109)
          {
            v77 = v107;
            v78 = v108 - v107;
            v79 = (v108 - v107) >> 3;
            v80 = v79 + 1;
            if ((v79 + 1) >> 61)
            {
              std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
            }

            v81 = v109 - v107;
            if ((v109 - v107) >> 2 > v80)
            {
              v80 = v81 >> 2;
            }

            v82 = v81 >= 0x7FFFFFFFFFFFFFF8;
            v83 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v82)
            {
              v83 = v80;
            }

            if (v83)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v107, v83);
            }

            *(8 * v79) = v69;
            v76 = 8 * v79 + 8;
            memcpy(0, v77, v78);
            v84 = v107;
            v107 = 0;
            v108 = v76;
            v109 = 0;
            if (v84)
            {
              operator delete(v84);
            }
          }

          else
          {
            *v108 = v69;
            v76 = (v75 + 8);
          }

          v108 = v76;
          v105[0] = 0;
          std::vector<unsigned long>::push_back[abi:ne200100](&v107, v105);
          v63 = v64;
        }

LABEL_156:
        if (v64 >= v29)
        {
          goto LABEL_170;
        }

        if (lpsrc[1] == -1)
        {
          v85 = v97;
        }

        else
        {
          v85 = lpsrc[1];
        }

        v64 += *(&v142 + 1);
        v86 = lpsrc[2];
        if (v86 == -1)
        {
          v87 = v63;
          v86 = v85;
          v65 = v94;
        }

        else
        {
          v87 = v64;
          v65 = v94;
          if (v64 <= v29)
          {
            v105[0] = v64 - v63;
            std::vector<unsigned long>::push_back[abi:ne200100](&v107, v105);
            v105[0] = lpsrc[2] - v85;
            std::vector<unsigned long>::push_back[abi:ne200100](&v107, v105);
            v86 = lpsrc[2];
            v87 = v64;
          }
        }

        v97 = v86;
        v63 = v87;
        goto LABEL_165;
      }

      v88 = v126;
      v89 = v125;
      if (v126 != v125)
      {
        v90 = 0;
        do
        {
          v91 = *(v89 + 8 * v90);
          if (v91)
          {
            v92 = *v91;
            if (*v91)
            {
              v93 = *(v92 + 120);
              if (v93)
              {
                *(v92 + 128) = v93;
                operator delete(v93);
              }

              if (*(v92 + 119) < 0)
              {
                operator delete(*(v92 + 96));
              }

              if (*(v92 + 95) < 0)
              {
                operator delete(*(v92 + 72));
              }

              if (*(v92 + 71) < 0)
              {
                operator delete(*(v92 + 48));
              }

              MEMORY[0x26672B1B0](v92, 0x10F2C405D5B575ELL);
              v88 = v126;
              v89 = v125;
            }
          }

          ++v90;
        }

        while (v90 < (v88 - v89) >> 3);
      }

      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      TAllocator::clear(v119);
      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v120, v121[0]);
      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v122, v123[0]);
      TFsa::~TFsa(v124);
      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      if (__p)
      {
        v131 = __p;
        operator delete(__p);
      }

      if (v147 == 1 && v144 != v146 && v144)
      {
        MEMORY[0x26672B1B0]();
      }

      if (v136 == 1 && v133 != v135 && v133)
      {
        MEMORY[0x26672B1B0]();
      }

LABEL_2:
      TResultManager::replace(*(v10 + 16), v103, v100, v102, v104, v6, v101);
    }
  }

  if (v6[*(&v145 + 1)])
  {
    if (v25 < (v131 - __p) >> 3)
    {
      v31 = *(__p + v25);
      if (v31 <= *(&v145 + 1))
      {
        v32 = (__p + 8 * v25 + 8);
        v33 = ~v25 + ((v131 - __p) >> 3);
        do
        {
          v24 = v31;
          if (!v33)
          {
            break;
          }

          v34 = *v32++;
          v31 = v34;
          --v33;
        }

        while (v34 <= *(&v145 + 1));
      }
    }

    goto LABEL_62;
  }

  if (TBoolParam::get((*(v10 + 6) + 19248)))
  {
    tknPrintString("No text differences; can't generate hints\n");
  }

  **v101 = -1;
  (*v101)[1] = TResultManager::merge(*(v10 + 16), v99, v104);
  (*v101)[2] = -1;
  if (__p)
  {
    v131 = __p;
    operator delete(__p);
  }

  if (v147 == 1 && v144 != v146 && v144)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v136 == 1 && v133 != v135 && v133)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v140 == 1 && v137 != v139 && v137)
  {
    MEMORY[0x26672B1B0]();
  }
}

void sub_2627F055C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  MEMORY[0x26672B1B0](v21, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x2918]) == 1)
  {
    v23 = STACK[0x2800];
    if (STACK[0x2800] != a18)
    {
      if (v23)
      {
        MEMORY[0x26672B1B0](v23, 0x1000C4077774924);
      }
    }
  }

  v24 = STACK[0x1DF8];
  if (STACK[0x1DF8])
  {
    STACK[0x1E00] = v24;
    operator delete(v24);
  }

  v25 = STACK[0x1E10];
  if (STACK[0x1E10])
  {
    STACK[0x1E18] = v25;
    operator delete(v25);
  }

  v26 = STACK[0x1E28];
  if (STACK[0x1E28])
  {
    STACK[0x1E30] = v26;
    operator delete(v26);
  }

  v27 = STACK[0x1E40];
  if (STACK[0x1E40])
  {
    STACK[0x1E48] = v27;
    operator delete(v27);
  }

  TAllocator::clear(&STACK[0x1E58]);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x1E80], STACK[0x1E88]);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x1E98], STACK[0x1EA0]);
  TFsa::~TFsa(&STACK[0x1EB0]);
  v28 = STACK[0x1F90];
  if (STACK[0x1F90])
  {
    STACK[0x1F98] = v28;
    operator delete(v28);
  }

  v29 = STACK[0x1FA8];
  if (STACK[0x1FA8])
  {
    STACK[0x1FB0] = v29;
    operator delete(v29);
  }

  if (LOBYTE(STACK[0x2A38]) == 1)
  {
    v30 = STACK[0x2920];
    if (STACK[0x2920] != a20)
    {
      if (v30)
      {
        MEMORY[0x26672B1B0](v30, 0x1000C4077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x23D8]) == 1)
  {
    v31 = STACK[0x1FC0];
    if (STACK[0x1FC0] != a21)
    {
      if (v31)
      {
        MEMORY[0x26672B1B0](v31, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x27F8]) == 1 && STACK[0x23E0] != a19 && STACK[0x23E0] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TBuffer<TPItnResultHandle_fake **>::data(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 >= v3)
  {
    if (*(a1 + 2072))
    {
      v5 = 0;
      TBuffer<TPItnRuleHandle_fake **>::insert(a1, v2, &v5, 1uLL);
      --*(a1 + 16);
    }

    else if (v3)
    {
      *(*a1 + 8 * v3 - 8) = 0;
    }
  }

  else
  {
    *(*a1 + 8 * v2) = 0;
  }

  return *a1;
}

void std::vector<THint>::resize(void *result, unint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<THint>::__append(result, v4);
  }

  else if (!v3)
  {
    std::vector<THint>::__base_destruct_at_end[abi:ne200100](result, *result + 104 * a2);
  }
}

void std::vector<THint>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x4EC4EC4EC4EC4EC5 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 104 * ((104 * a2 - 104) / 0x68) + 104;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x276276276276276)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x13B13B13B13B13BLL)
    {
      v9 = 0x276276276276276;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<THint>>(a1, v9);
    }

    v16 = 0;
    v17 = 104 * v6;
    v11 = 104 * ((104 * a2 - 104) / 0x68) + 104;
    bzero((104 * v6), v11);
    v18 = 104 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 104 * v6 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<THint>,THint*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<THint>::~__split_buffer(&v16);
  }
}

void sub_2627F0C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<THint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__tree<TPItnTagHandle_fake **>::__emplace_hint_unique_key_args<TPItnTagHandle_fake **,TPItnTagHandle_fake ** const&>(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v4 = *std::__tree<TState const*>::__find_equal<TState const*>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void **std::__advance[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>>(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

void std::vector<TPItnTagHandle_fake **>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

char *std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>>(void *a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v6 = a5;
  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 3)
  {
    v16 = (v10 - __src) >> 3;
    if (v16 >= a5)
    {
      v28 = &__src[8 * a5];
      v29 = &v10[-8 * a5];
      v30 = a1[1];
      while (v29 < v10)
      {
        v31 = *v29;
        v29 += 8;
        *v30++ = v31;
      }

      a1[1] = v30;
      if (v10 != v28)
      {
        memmove(&__src[8 * a5], __src, v10 - v28);
      }

      *__src = v7[4];
      if (v6 != 1)
      {
        v32 = __src;
        do
        {
          v33 = v7[1];
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = v7[2];
              v23 = *v34 == v7;
              v7 = v34;
            }

            while (!v23);
          }

          *(v32 + 1) = v34[4];
          v32 += 8;
          v7 = v34;
        }

        while (v6-- > 2);
      }
    }

    else
    {
      v50 = a3;
      std::__advance[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>>(&v50, (v10 - __src) >> 3);
      v18 = v50;
      v19 = a1[1];
      if (v50 != a4)
      {
        v20 = v50;
        do
        {
          *v19 = v20[4];
          v21 = v20[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v20[2];
              v23 = *v22 == v20;
              v20 = v22;
            }

            while (!v23);
          }

          v19 += 8;
          v20 = v22;
        }

        while (v22 != a4);
      }

      a1[1] = v19;
      if (v16 >= 1)
      {
        v24 = &__src[8 * v6];
        v25 = &v19[-8 * v6];
        v26 = v19;
        while (v25 < v10)
        {
          v27 = *v25;
          v25 += 8;
          *v26 = v27;
          v26 += 8;
        }

        a1[1] = v26;
        if (v19 != v24)
        {
          memmove(&__src[8 * v6], __src, v19 - v24);
        }

        if (v18 != v7)
        {
          v46 = __src;
          do
          {
            *v46 = v7[4];
            v47 = v7[1];
            if (v47)
            {
              do
              {
                v48 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v7[2];
                v23 = *v48 == v7;
                v7 = v48;
              }

              while (!v23);
            }

            v46 += 8;
            v7 = v48;
          }

          while (v48 != v18);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v10[-*a1] >> 3);
  if (v12 >> 61)
  {
    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
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

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, v15);
  }

  v36 = 8 * (v13 >> 3);
  v37 = (v36 + 8 * a5);
  v38 = v36;
  do
  {
    *v38 = v7[4];
    v38 += 8;
    v39 = v7[1];
    if (v39)
    {
      do
      {
        v40 = v39;
        v39 = *v39;
      }

      while (v39);
    }

    else
    {
      do
      {
        v40 = v7[2];
        v23 = *v40 == v7;
        v7 = v40;
      }

      while (!v23);
    }

    v7 = v40;
  }

  while (v38 != v37);
  memcpy(v37, __src, a1[1] - __src);
  v41 = *a1;
  v42 = &v37[a1[1] - __src];
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v36 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v36;
}

char *std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TPItnTagHandle_fake ** const*>,std::__wrap_iter<TPItnTagHandle_fake ** const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
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

uint64_t *std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ***,TPItnTagHandle_fake ***>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TPItnTagHandle_fake **>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void MrecInitModule_ddump_mrecutil(void)
{
  if (!gParDiagnosticShowFloatsAsHex)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DiagnosticShowFloatsAsHex", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDiagnosticShowFloatsAsHex = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDiagnosticShowFloatsAsHex);
  }
}

uint64_t SDState_GetHandle(unint64_t a1, const char *a2, unint64_t a3)
{
  SdapiInsurance::SdapiInsurance(v13, "SDState_GetHandle", 1, 1, 298);
  if (v13[97] == 1)
  {
    if (!a2)
    {
      v7 = throwBadStringPointer();
    }

    v13[151] = 0;
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>, '%.500s', <SDh %lld>)\n", v6, v7, "SDState_GetHandle", a1, a2, a3);
    }

    v8 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v9 = *(ModelMgr::getVocOrThrow(v8, a1) + 56);
    if (a3 == -1)
    {
      LODWORD(a3) = 0;
    }

    else
    {
      if (HIDWORD(a3))
      {
        throwBadSdapiArgument("SDhState", a3);
      }

      if ((a3 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhState", a3);
      }
    }

    Handle = StateMgr::getHandle(v9, a2, a3);
    if (Handle)
    {
      v11 = Handle;
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v13);
  return v11;
}

uint64_t SDState_GetAllowedWordCollations(unint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v17, "SDState_GetAllowedWordCollations", 1, 1, 311);
  if (v17[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v9 = a3;
      }

      else
      {
        v9 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v8, "SDState_GetAllowedWordCollations", a1, a2, v9, a4);
    }

    if (!a3 && a4)
    {
      throwBadLengthForNullPointer(a4, "DgnVerifyWritePtr");
    }

    v10 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v11 = *(ModelMgr::getVocOrThrow(v10, a1) + 56);
    if (HIDWORD(a2))
    {
      throwBadSdapiArgument("SDhState", a2);
    }

    if ((a2 + 1) <= 1)
    {
      throwBadSdapiArgument("SDhState", a2);
    }

    Colls = StateMgr::getColls(v11, a2, 1);
    v13 = *(Colls + 8);
    if (a4)
    {
      v14 = 0;
      do
      {
        if (v13 == v14)
        {
          break;
        }

        v15 = *(*Colls + 2 * v14);
        if ((v15 + 1) >= 2u)
        {
          if (v15 == 65534)
          {
            v15 = -2;
          }
        }

        else
        {
          v15 = -1;
        }

        *(a3 + 8 * v14++) = v15;
      }

      while (a4 != v14);
    }
  }

  else
  {
    v13 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v17);
  return v13;
}

uLong computeCRC32(unsigned int a1, const unsigned __int16 *a2, int a3)
{
  DgnPrimArray<unsigned char>::DgnPrimArray(&buf, 2 * a3);
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = a2[v6];
      buf[(v6 * 2)] = v7;
      buf[(v6 * 2 + 1)] = HIBYTE(v7);
      ++v6;
    }

    while (a3 != v6);
  }

  v8 = crc32(a1, buf, len);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&buf);
  return v8;
}

uLong computeCRC32(unsigned int a1, const unsigned int *a2, unsigned int a3)
{
  DgnPrimArray<unsigned char>::DgnPrimArray(&buf, 4 * a3);
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = a2[v6 / 4];
      buf[v6] = v7;
      v7 >>= 8;
      buf[(v6 + 1)] = v7;
      buf[(v6 + 2)] = v7;
      buf[(v6 + 3)] = v7;
      v6 += 4;
    }

    while (4 * a3 != v6);
  }

  v8 = crc32(a1, buf, len);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&buf);
  return v8;
}

uint64_t LMStats::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 56;
  }

  v5 = SnapTime::sizeObject(a1 + 56, a2) + v4;
  v6 = SnapTime::sizeObject(a1 + 88, a2);
  return v5 + v6 + SnapTime::sizeObject(a1 + 120, a2);
}

double LMStats::resetStats(LMStats *this)
{
  *(this + 18) = 0;
  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

__n128 LMStats::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v2;
  v3 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v3;
  result = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 120) = result;
  *(a1 + 136) = v5;
  return result;
}

int64x2_t LMStats::operator-=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *a1 = vsubq_s32(*a1, *a2);
  *(a1 + 16) = vsubq_s32(v2, *(a2 + 16));
  *(a1 + 32) = vsubq_s32(*(a1 + 32), *(a2 + 32));
  *(a1 + 48) = vsub_s32(*(a1 + 48), *(a2 + 48));
  *(a1 + 56) = vsubq_s64(*(a1 + 56), *(a2 + 56));
  *(a1 + 72) = vsubq_s64(*(a1 + 72), *(a2 + 72));
  *(a1 + 88) = vsubq_s64(*(a1 + 88), *(a2 + 88));
  *(a1 + 104) = vsubq_s64(*(a1 + 104), *(a2 + 104));
  *(a1 + 120) = vsubq_s64(*(a1 + 120), *(a2 + 120));
  result = vsubq_s64(*(a1 + 136), *(a2 + 136));
  *(a1 + 136) = result;
  return result;
}

void LanguageModel::LanguageModel(LanguageModel *this, int a2, const WordList *a3)
{
  *this = &unk_287528300;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 7) = 0;
  *(this + 8) = a2;
}

void LanguageModel::~LanguageModel(RecentBuffer **this)
{
  *this = &unk_287528300;
  v1 = this + 1;
  DgnDelete<RecentBuffer>(this[1]);
  *v1 = 0;
  v1[1] = 0;
}

uint64_t LanguageModel::getRecentBufferLength(LanguageModel *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

RecentBuffer **LanguageModel::addToRecent(RecentBuffer **result, uint64_t *a2, uint64_t a3)
{
  if (result[1])
  {
    LODWORD(v3) = a3;
    v5 = result;
    if ((*(*result + 14))(result, a3))
    {
      v3 = v3;
    }

    else
    {
      v3 = 0xFFFFFFLL;
    }

    v10 = 0;
    v11 = 0;
    v6 = *(a2 + 2);
    if (v6)
    {
      v12 = 0;
      HIDWORD(v11) = realloc_array(0, &v12, 4 * v6, 0, 0, 1) >> 2;
      v10 = v12;
      if (*(a2 + 2))
      {
        v7 = 0;
        do
        {
          if (((*v5)[14])(v5, *(*a2 + 4 * v7)))
          {
            v8 = *a2;
            v10[v11] = *(*a2 + 4 * v7);
            v9 = v11 + 1;
            LODWORD(v11) = v11 + 1;
          }

          else
          {
            v10[v11] = 0xFFFFFF;
            v9 = v11 + 1;
            LODWORD(v11) = v11 + 1;
            v8 = *a2;
          }

          if (*(v8 + 4 * v7) == 16777213)
          {
            RecentBuffer::addToRecent(v5[1], &v10, v3);
            v9 = 0;
            LODWORD(v11) = 0;
            v3 = 16777214;
          }

          ++v7;
        }

        while (v7 < *(a2 + 2));
        if (v9)
        {
          RecentBuffer::addToRecent(v5[1], &v10, v3);
        }
      }
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v10);
  }

  return result;
}

void sub_2627F1EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void LanguageModel::clearRecent(LanguageModel *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    RecentBuffer::clearRecent(v1);
  }
}

uint64_t LanguageModel::languageScoreFinish(LanguageModel *this, uint64_t a2, uint64_t RecentScore, LMScoreDetails *a4, uint64_t a5, unsigned int a6, LMContextData *a7)
{
  v7 = RecentScore;
  if (*(this + 1))
  {
    v8 = a5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if ((*(*this + 112))(this, a2, RecentScore, a4, a5))
    {
      v7 = RecentBuffer::getRecentScore(*(this + 1), a2, v7, a7);
    }

    if (a4)
    {
      *(*a4 + 2 * a6) = v7;
    }
  }

  return v7;
}

uint64_t LanguageModel::languageScoreFinishForSearch(LanguageModel *this, uint64_t a2, uint64_t a3, const LMContextData *a4)
{
  if (!*(this + 1) || !(*(*this + 112))(this))
  {
    return a3;
  }

  v8 = *(this + 1);

  return RecentBuffer::getRecentScore(v8, a2, a3, a4);
}

uint64_t LanguageModel::setContext(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(result + 8))
  {
    v9 = result;
    v10 = *(a2 + 8);
    v15 = 0;
    v16 = 0;
    if (v10)
    {
      v17 = 0;
      v11 = realloc_array(0, &v17, 4 * v10, 0, 0, 1);
      v15 = v17;
      v12 = *(a2 + 8);
      LODWORD(v16) = v10;
      HIDWORD(v16) = v11 >> 2;
      if (v12)
      {
        v13 = 0;
        do
        {
          if (((*v9)[14])(v9, *(*a2 + 4 * v13)))
          {
            v14 = *(*a2 + 4 * v13);
          }

          else
          {
            v14 = 0xFFFFFF;
          }

          v15[v13++] = v14;
        }

        while (v13 < *(a2 + 8));
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    RecentBuffer::setContext(v9[1], &v15, a4, a6);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  }

  return result;
}

void sub_2627F22B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void LanguageModel::unsetContext(LanguageModel *this, LMContextData *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    RecentBuffer::unsetContext(v2, a2);
  }
}

uint64_t LanguageModel::getValidTopicLmSlots(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 8) = 0;
  }

  return 0;
}

uint64_t LanguageModel::getValidFactoryCorrectiveLms(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 8) = 0;
  }

  return 0;
}

void LanguageModel::printSize(LanguageModel *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 694);
  if (v34)
  {
    v13 = v33;
  }

  else
  {
    v13 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288F46B, a3, &unk_26288F46B, v13);
  DgnString::~DgnString(&v33);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288F46B);
  v15 = *(this + 1);
  if (v15)
  {
    v32 = 0;
    v33 = 0;
    v16 = (a3 + 1);
    v31 = 0;
    RecentBuffer::printSize(v15, 0xFFFFFFFFLL, v16, &v33, &v32, &v31);
    *a4 += v33;
    *a5 += v32;
    *a6 += v31;
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

  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 696);
  if (v34)
  {
    v19 = v33;
  }

  else
  {
    v19 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, v16, &unk_26288F46B, (34 - a3), (34 - a3), v19, v17, v17, 0);
  DgnString::~DgnString(&v33);
  *a4 += v17;
  *a5 += v17;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 697);
  if (v34)
  {
    v22 = v33;
  }

  else
  {
    v22 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v16, &unk_26288F46B, (34 - a3), (34 - a3), v22, v20, v20, 0);
  DgnString::~DgnString(&v33);
  *a4 += v20;
  *a5 += v20;
  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 699);
  if (v34)
  {
    v24 = v33;
  }

  else
  {
    v24 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v16, &unk_26288F46B, (34 - a3), (34 - a3), v24, 1, 1, 0);
  DgnString::~DgnString(&v33);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 701);
  if (v34)
  {
    v26 = v33;
  }

  else
  {
    v26 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v16, &unk_26288F46B, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v33);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 703);
  if (v34)
  {
    v28 = v33;
  }

  else
  {
    v28 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v16, &unk_26288F46B, (34 - a3), (34 - a3), v28, 4, 4, 0);
  DgnString::~DgnString(&v33);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 704);
  if (v34)
  {
    v30 = v33;
  }

  else
  {
    v30 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, a3, &unk_26288F46B, (35 - a3), (35 - a3), v30, *a4, *a5, *a6);
  DgnString::~DgnString(&v33);
}

void sub_2627F2EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void LanguageModel::finalizeLM(uint64_t a1, LanguageModel *a2, DFile *a3, DFileChecksums *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, BOOL a11)
{
  if ((DFile::subFileExists(a3, 0x4Au) & 1) != 0 || DFile::subFileExists(a3, 0x49u))
  {
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 806, "lm/lm", 7, "%s", &errStr_lm_lm_E_RECENT_WITHOUT_LM);
    }

    v16 = MemChunkAlloc(0x218uLL, 0);
    RecentBuffer::RecentBuffer(v16, *(a1 + 32), *(a1 + 16), a2, a1);
    *(a1 + 8) = v17;

    RecentBuffer::loadRecentBuffer(v17, a3, a4, a6, a11);
  }
}

uint64_t *LanguageModel::CreateAndLoadLanguageModel(LanguageModel *this, DFile *a2, DFile *a3, DFileChecksums *a4, DgnSharedMemStream *a5, unsigned int a6, char a7, unsigned int a8, unsigned int a9, unsigned int a10, const WordList *a11, BOOL a12, unsigned int a13, unsigned int a14, __int16 a15, BOOL *a16, BOOL *a17, double *a18)
{
  v24 = a5;
  if (DFile::subFileExists(this, 0x6Du))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 852, "lm/lm", 4, "%s", &errStr_lm_lm_E_CANT_LOAD_WORDDUMMY);
  }

  if (DFile::subFileExists(this, 0x73u) & 1) != 0 || (DFile::subFileExists(this, 0x6Fu))
  {
    v19 = 1;
  }

  else
  {
    v19 = DFile::subFileExists(this, 0x70u);
  }

  v20 = v19 + DFile::subFileExists(this, 0x29u);
  if (v20 + DFile::subFileExists(this, 0x28u) >= 2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 858, "lm/lm", 3, "%s", &errStr_lm_lm_E_MULTIPLE_SPEC_SUBFILES);
  }

  if ((DFile::subFileExists(this, 0x73u) & 1) != 0 || (DFile::subFileExists(this, 0x6Fu) & 1) != 0 || DFile::subFileExists(this, 0x70u))
  {
    v21 = MemChunkAlloc(0x728uLL, 0);
    WordLanguageModel::WordLanguageModel(v21, a9, a11);
  }

  else if ((DFile::subFileExists(this, 0x29u) & 1) != 0 || DFile::subFileExists(this, 0x28u))
  {
    v21 = MemChunkAlloc(0x2D0uLL, 0);
    MultiLanguageModel::MultiLanguageModel(v21, a9, a11);
  }

  else
  {
    if ((a7 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 876, "lm/lm", 5, "%s", &errStr_lm_lm_E_MISSING_LM);
    }

    v21 = MemChunkAlloc(0x28uLL, 0);
    DummyLanguageModel::DummyLanguageModel(v21, a9, a11);
  }

  *(v21 + 7) = *(DFile::getCurrentSubDirComponents(this) + 8);
  *(v21 + 24) = v24;
  (*(*v21 + 24))(v21, this, a2, a3, a4, a6, a8, a12, __PAIR64__(a14, a13), a15, a16, a17, a18);
  return v21;
}

void MrecInitModule_generr_mrecutil(void)
{
  if (!gParDiagnosticCrashOnAssert)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DiagnosticCrashOnAssert", &byte_262899963, &byte_262899963, 1, SetShadowDiagnosticCrashOnAssert, 0);
    *v1 = &unk_287527EA0;
    gParDiagnosticCrashOnAssert = v1;
    gShadowDiagnosticCrashOnAssert = 1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticCrashOnAssert);
  }

  if (!gParDiagnosticCrashOnError)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DiagnosticCrashOnError", &byte_262899963, &byte_262899963, 0, SetShadowDiagnosticCrashOnError, 0);
    *v3 = &unk_287527EA0;
    gParDiagnosticCrashOnError = v3;
    gShadowDiagnosticCrashOnError = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticCrashOnError);
  }

  if (!gParDiagnosticCrashOnWarning)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DiagnosticCrashOnWarning", &byte_262899963, &byte_262899963, 0, SetShadowDiagnosticCrashOnWarning, 0);
    *v5 = &unk_287527EA0;
    gParDiagnosticCrashOnWarning = v5;
    gShadowDiagnosticCrashOnWarning = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticCrashOnWarning);
  }

  if (!gParDiagnosticAbortOnAssert)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DiagnosticAbortOnAssert", &byte_262899963, &byte_262899963, 1, SetShadowDiagnosticAbortOnAssert, 0);
    *v7 = &unk_287527EA0;
    gParDiagnosticAbortOnAssert = v7;
    gShadowDiagnosticAbortOnAssert = 1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticAbortOnAssert);
  }

  if (!gParDiagnosticSkipTheseAsserts)
  {
    v8 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v8, "DiagnosticSkipTheseAsserts", &byte_262899963, &byte_262899963, &byte_262899963, SetSkipAsserts, 0);
    *v9 = &unk_287526E40;
    gParDiagnosticSkipTheseAsserts = v9;
    v10 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v10, &gParDiagnosticSkipTheseAsserts);
  }
}

void errWarnInternal(const char *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, ...)
{
  va_start(va, a5);
  MEMORY[0x28223BE20](a1, a2);
  v25 = *MEMORY[0x277D85DE8];
  if ((sbSkipWarnings & 1) == 0)
  {
    v6 = v5;
    if (gShadowDiagnosticCrashOnWarning == 1)
    {
      v7 = getpid();
      kill(v7, 5);
    }

    ++sNumWarnBPCalls;
    DgnString::DgnString(&v23);
    v20[0] = 0;
    v21 = 0x2000;
    v22 = 0;
    MessageFormatPrefix(v20, 1, 0, -1);
    if (v24)
    {
      v8 = v23;
    }

    else
    {
      v8 = &byte_262899963;
    }

    if (v22)
    {
      v9 = v8;
    }

    else
    {
      v9 = v20;
    }

    v10 = strlen(v9);
    if (v6)
    {
      v11 = v10;
      Buffer = DgnBuffer::getBuffer(v20, 0);
      v13 = v21 - v11;
      v14 = vsnprintf(Buffer + v11, v21 - v11, v6, va);
      if ((v14 & 0x80000000) != 0 || v14 >= v13)
      {
        do
        {
          do
          {
            v15 = DgnBuffer::getBuffer(v20, 1);
            v16 = v21 - v11;
            v17 = vsnprintf(v15 + v11, v21 - v11, v6, va);
          }

          while ((v17 & 0x80000000) != 0);
        }

        while (v17 >= v16);
      }
    }

    DgnBuffer::appendString(v20, "\n");
    if (v24)
    {
      v18 = v23;
    }

    else
    {
      v18 = &byte_262899963;
    }

    if (v22)
    {
      v19 = v18;
    }

    else
    {
      v19 = v20;
    }

    xprintStringFancy(v19, 1, 1, 0, 0);
    DgnString::~DgnString(&v23);
  }
}

double errThrowInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, ...)
{
  va_start(va, a6);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = v7;
  v34 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v6;
  v40 = *MEMORY[0x277D85DE8];
  if ((gShadowDiagnosticCrashOnError & 1) != 0 || gbDiagnosticCrashOnErrorDueToProfilingClient == 1)
  {
    v17 = getpid();
    kill(v17, 5);
  }

  ++sNumErrBPCalls;
  DgnString::DgnString(&v38);
  __src[0] = 0;
  __size = 0x2000;
  __size_4 = 0;
  if (v8)
  {
    Buffer = DgnBuffer::getBuffer(__src, 0);
    for (i = __size; ; i = __size)
    {
      v20 = vsnprintf(Buffer, i, v8, va);
      if ((v20 & 0x80000000) == 0 && v20 < i)
      {
        break;
      }

      Buffer = DgnBuffer::getBuffer(__src, 1);
    }

    if (v39)
    {
      v21 = v38;
    }

    else
    {
      v21 = &byte_262899963;
    }

    if (__size_4)
    {
      v22 = v21;
    }

    else
    {
      v22 = __src;
    }
  }

  else
  {
    v22 = __src;
  }

  strcpy(sgLastErrorString, v22);
  if ((sbSkipErrThrows & 1) == 0 && v16 != 2)
  {
    if (v16 == 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      v25 = MemChunkAlloc(0x50uLL, 0);
      if (v39)
      {
        v26 = v38;
      }

      else
      {
        v26 = &byte_262899963;
      }

      if (__size_4)
      {
        v27 = v26;
      }

      else
      {
        v27 = __src;
      }

      DgnFileIOException::DgnFileIOException(v25, -1, v15, v13, v11, v34, v27);
      *exception = v28;
    }

    else
    {
      exception = __cxa_allocate_exception(8uLL);
      v30 = MemChunkAlloc(0x50uLL, 0);
      if (v39)
      {
        v31 = v38;
      }

      else
      {
        v31 = &byte_262899963;
      }

      if (__size_4)
      {
        v32 = v31;
      }

      else
      {
        v32 = __src;
      }

      DgnException::DgnException(v30, -1, v15, v13, v11, v34, v32);
      *exception = v33;
    }

    __cxa_throw(exception, v29, 0);
  }

  DgnString::~DgnString(&v38);
  return result;
}

uint64_t crashIntoDebugger()
{
  v0 = getpid();

  return kill(v0, 5);
}

uint64_t errCopyAndThrowException(uint64_t result, uint64_t a2)
{
  if ((sbSkipErrThrows & 1) == 0 && result != 2)
  {
    if (result == 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      v4 = MemChunkAlloc(0x50uLL, 0);
      if (*(a2 + 16))
      {
        v5 = *(a2 + 8);
      }

      else
      {
        v5 = &byte_262899963;
      }

      if (*(a2 + 40))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = &byte_262899963;
      }

      if (*(a2 + 64))
      {
        v10 = *(a2 + 56);
      }

      else
      {
        v10 = &byte_262899963;
      }

      DgnFileIOException::DgnFileIOException(v4, *(a2 + 72), v5, *(a2 + 24), v8, *(a2 + 48), v10);
      *exception = v12;
    }

    else
    {
      exception = __cxa_allocate_exception(8uLL);
      v6 = MemChunkAlloc(0x50uLL, 0);
      if (*(a2 + 16))
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = &byte_262899963;
      }

      if (*(a2 + 40))
      {
        v9 = *(a2 + 32);
      }

      else
      {
        v9 = &byte_262899963;
      }

      if (*(a2 + 64))
      {
        v11 = *(a2 + 56);
      }

      else
      {
        v11 = &byte_262899963;
      }

      DgnException::DgnException(v6, *(a2 + 72), v7, *(a2 + 24), v9, *(a2 + 48), v11);
      *exception = v14;
    }

    __cxa_throw(exception, v13, 0);
  }

  return result;
}

void ThrowMemoryException(uint64_t a1)
{
  if ((gShadowDiagnosticCrashOnError & 1) != 0 || gbDiagnosticCrashOnErrorDueToProfilingClient == 1)
  {
    v2 = getpid();
    kill(v2, 5);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = a1;
}

void ThrowNewFailure(uint64_t a1, uint64_t a2)
{
  snprintf(ThrowNewFailure(DgnMemoryException *,unsigned long)::buffer, 0x190uLL, "Memory allocation (%llu bytes) failed: throwing memory exception.\n", a2);
  xprintString(ThrowNewFailure(DgnMemoryException *,unsigned long)::buffer);
  MemStatsDisplayFromRef(0, 1, 1, 0, 0, 0, 0);
  ThrowMemoryException(a1);
}

void ThrowExternalNewFailure(uint64_t a1, uint64_t a2)
{
  snprintf(ThrowExternalNewFailure(DgnMemoryException *,unsigned long)::buffer, 0x190uLL, "External memory allocation (%llu bytes) failed: throwing memory exception.\n", a2);
  xprintString(ThrowExternalNewFailure(DgnMemoryException *,unsigned long)::buffer);
  MemStatsDisplayFromRef(0, 1, 1, 0, 0, 0, 0);
  ThrowMemoryException(a1);
}

uint64_t setDllTerminatedSuccessfullyOrNotInUse(uint64_t result)
{
  sbDllTerminatedSuccessfullyOrNotInUse = result;
  sbHaveTerminatedSuccessfully = result & sbExeTerminatedSuccessfullyOrNotInUse;
  return result;
}

void MrecInitModule_realdf_dfutil(void)
{
  if (!gParDebugDFile)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugDFile", &unk_26288F516, &unk_26288F516, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugDFile = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugDFile);
  }

  if (!gParDebugShowDFileStatsOnDestruction)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowDFileStatsOnDestruction", &unk_26288F516, &unk_26288F516, 0, SetShadowDebugShowDFileStatsOnDestruction, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowDFileStatsOnDestruction = v3;
    gShadowDebugShowDFileStatsOnDestruction = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowDFileStatsOnDestruction);
  }

  if (!gParDiagnosticDFileSimulateAddBlockFailure)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DiagnosticDFileSimulateAddBlockFailure", &unk_26288F516, &unk_26288F516, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDiagnosticDFileSimulateAddBlockFailure = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticDFileSimulateAddBlockFailure);
  }

  if (!gParDiagnosticDFileSimulateOpenFailure)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DiagnosticDFileSimulateOpenFailure", &unk_26288F516, &unk_26288F516, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDiagnosticDFileSimulateOpenFailure = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDiagnosticDFileSimulateOpenFailure);
  }
}

uint64_t mrecZlibFree(int a1, void *a2)
{
  if (a2)
  {
    return MemChunkFree(a2, 0);
  }

  return result;
}

uint64_t RealDFileSubFileStream::RealDFileSubFileStream(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5, int a6, unsigned int a7, unsigned int a8, int a9, char a10, unint64_t a11)
{
  if (*(a3 + 8))
  {
    v17 = *a3;
  }

  else
  {
    v17 = &unk_26288F516;
  }

  v18 = DgnStream::DgnStream(a1, a2, v17);
  *v18 = &unk_287525538;
  DgnString::DgnString((v18 + 6));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 72) = *(a1 + 8) == 1;
  *(a1 + 76) = 0;
  v108 = (a1 + 96);
  *(a1 + 40) = a4;
  DgnString::operator=(v19, a5);
  *(a1 + 64) = a6;
  *(a1 + 68) = a7;
  *(a1 + 80) = a8;
  *(a1 + 88) = a9;
  *(a1 + 92) = a10;
  *(a1 + 112) = 0;
  *(a1 + 120) = -1;
  if ((a6 - 3) > 1 || !a10)
  {
    goto LABEL_141;
  }

  if (HIDWORD(a11))
  {
    v20 = *(a1 + 40);
    v21 = (*(v20 + 152) + (a7 << 7));
    if (*(v20 + 24))
    {
      v22 = *(v20 + 16);
    }

    else
    {
      v22 = &unk_26288F516;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 630, "dfutil/realdf", 51, "%.500s %.500s", v21, v22);
  }

  *(a1 + 112) = a11;
  v23 = a11 / 0x500000;
  v106 = a11 % 0x500000;
  v107 = a11 / 0x500000;
  if (a11 >= 0x500000)
  {
    v24 = 5242880;
  }

  else
  {
    v24 = a11 % 0x500000;
  }

  v25 = v23 + 1;
  v26 = *(a1 + 108);
  if (v26 <= v23)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v108, v25 - v26, 0);
  }

  v27 = *(a1 + 104);
  if (v27 <= v25)
  {
    v28 = (a1 + 96);
    if (v27 <= v107)
    {
      v30 = ((a11 * 0x33333333334uLL) >> 64) - v27 + 1;
      v31 = 16 * v27;
      do
      {
        v32 = (*v108 + v31);
        *v32 = 0;
        v32[1] = 0;
        v31 += 16;
        --v30;
      }

      while (v30);
    }
  }

  else
  {
    v28 = (a1 + 96);
    if (v27 > v25)
    {
      v29 = 16 * v27 - 16;
      do
      {
        --v27;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*v108 + v29);
        v29 -= 16;
      }

      while (v27 > v25);
    }
  }

  *(a1 + 104) = v25;
  if (a11 >= 0x500000)
  {
    v33 = 0;
    v28 = (a1 + 96);
    if (v107 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = a11 / 0x500000;
    }

    v35 = 16 * v34;
    do
    {
      v36 = *v28 + v33;
      if (*(v36 + 12) >> 20 <= 4u)
      {
        strm.next_in = 0;
        *(v36 + 12) = realloc_array(*v36, &strm.next_in, 0x500000uLL, *(v36 + 8), *(v36 + 8), 1);
        *v36 = strm.next_in;
      }

      v33 += 16;
      v28 = (a1 + 96);
    }

    while (v35 != v33);
  }

  v37 = *v28 + 16 * v107;
  if (*(v37 + 12) < v106)
  {
    strm.next_in = 0;
    *(v37 + 12) = realloc_array(*v37, &strm.next_in, v106, *(v37 + 8), *(v37 + 8), 1);
    *v37 = strm.next_in;
  }

  strm.next_in = 0;
  strm.avail_in = 0;
  strm.next_out = 0;
  strm.avail_out = 0;
  strm.zalloc = mrecZlibAlloc;
  strm.zfree = mrecZlibFree;
  strm.opaque = 0;
  v38 = crc32(0, 0, 0);
  v117 = 0;
  *v118 = 0;
  buf = 0;
  v39 = realloc_array(0, &buf, 0x4000uLL, 0, 0, 1);
  v117 = buf;
  v118[0] = 0x4000;
  v118[1] = v39;
  strm.next_in = buf;
  inflateInit2_(&strm, -15, "1.2.12", 112);
  strm.avail_out = 0x4000;
  v116 = 0;
  RealDFileSubFileStream::basicReadWithMode(a1, &v116, 1u, 1);
  if (v116 != 31)
  {
    v40 = *(a1 + 40);
    v41 = (*(v40 + 152) + (*(a1 + 68) << 7));
    if (*(v40 + 24))
    {
      v42 = *(v40 + 16);
    }

    else
    {
      v42 = &unk_26288F516;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 672, "dfutil/realdf", 36, "%.500s %.500s", v41, v42);
  }

  RealDFileSubFileStream::basicReadWithMode(a1, &v116, 1u, 1);
  if (v116 != 139)
  {
    v43 = *(a1 + 40);
    v44 = (*(v43 + 152) + (*(a1 + 68) << 7));
    if (*(v43 + 24))
    {
      v45 = *(v43 + 16);
    }

    else
    {
      v45 = &unk_26288F516;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 676, "dfutil/realdf", 36, "%.500s %.500s", v44, v45);
  }

  v115 = 0;
  RealDFileSubFileStream::basicReadWithMode(a1, &v115, 1u, 1);
  if (v115 != 8)
  {
    v46 = *(a1 + 40);
    v47 = (*(v46 + 152) + (*(a1 + 68) << 7));
    if (*(v46 + 24))
    {
      v48 = *(v46 + 16);
    }

    else
    {
      v48 = &unk_26288F516;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 682, "dfutil/realdf", 36, "%.500s %.500s", v47, v48);
  }

  v114 = 0;
  RealDFileSubFileStream::basicReadWithMode(a1, &v114, 1u, 1);
  if (v114 > 0x1Fu)
  {
    v49 = *(a1 + 40);
    v50 = (*(v49 + 152) + (*(a1 + 68) << 7));
    if (*(v49 + 24))
    {
      v51 = *(v49 + 16);
    }

    else
    {
      v51 = &unk_26288F516;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 688, "dfutil/realdf", 36, "%.500s %.500s", v50, v51);
  }

  v52 = 6;
  do
  {
    RealDFileSubFileStream::basicReadWithMode(a1, &v116, 1u, 1);
    --v52;
  }

  while (v52);
  if ((v114 & 4) != 0)
  {
    RealDFileSubFileStream::basicReadWithMode(a1, &v116, 1u, 1);
    v53 = v116;
    RealDFileSubFileStream::basicReadWithMode(a1, &v116, 1u, 1);
    for (i = v53 + (v116 << 8); i; --i)
    {
      RealDFileSubFileStream::basicReadWithMode(a1, &v116, 1u, 1);
    }
  }

  v55 = v114;
  if ((v114 & 8) != 0)
  {
    do
    {
      RealDFileSubFileStream::basicReadWithMode(a1, &v116, 1u, 1);
    }

    while (v116);
    v55 = v114;
  }

  if ((v55 & 0x10) != 0)
  {
    do
    {
      RealDFileSubFileStream::basicReadWithMode(a1, &v116, 1u, 1);
    }

    while (v116);
    v55 = v114;
  }

  if ((v55 & 2) != 0)
  {
    RealDFileSubFileStream::basicReadWithMode(a1, &v116, 1u, 1);
    RealDFileSubFileStream::basicReadWithMode(a1, &v116, 1u, 1);
  }

  buf = 0;
  v113 = 0;
  v120[0] = 0;
  v56 = 0x4000;
  v57 = realloc_array(0, v120, 0x4000uLL, 0, 0, 1);
  __n = v24;
  v58 = 0;
  v59 = 0;
  buf = v120[0];
  LODWORD(v113) = 0x4000;
  HIDWORD(v113) = v57;
  while (2)
  {
    next_out = buf;
    strm.next_out = buf;
    strm.avail_out = v56;
    if (!v56)
    {
      goto LABEL_106;
    }

    while (1)
    {
      if (strm.avail_in)
      {
        v61 = 0;
      }

      else
      {
        if (v118[0])
        {
          v62 = RealDFileSubFileStream::basicRead(a1, v117, v118[0]);
        }

        else
        {
          v62 = 0;
        }

        strm.avail_in = v62;
        v61 = v62 == 0;
        strm.next_in = v117;
      }

      v63 = inflate(&strm, 0);
      v59 = v63;
      if (!v63)
      {
        goto LABEL_81;
      }

      if (v63 == 1)
      {
        break;
      }

      v64 = *(a1 + 40);
      if (*(v64 + 24))
      {
        v65 = *(v64 + 16);
      }

      else
      {
        v65 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 804, "dfutil/realdf", 39, "%.500s %.500s %d", (*(v64 + 152) + (*(a1 + 68) << 7)), v65, v63);
LABEL_81:
      if (v61)
      {
        v66 = *(a1 + 40);
        if (*(v66 + 24))
        {
          v67 = *(v66 + 16);
        }

        else
        {
          v67 = &unk_26288F516;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 807, "dfutil/realdf", 40, "%.500s %.500s", (*(v66 + 152) + (*(a1 + 68) << 7)), v67);
      }

      if (!strm.avail_out)
      {
        goto LABEL_106;
      }
    }

    v68 = v58;
    v69 = crc32(v38, next_out, LODWORD(strm.next_out) - next_out);
    next_out = strm.next_out;
    v70 = v120;
    v71 = 1;
    do
    {
      v72 = 0;
      v73 = 0;
      v74 = v71;
      *v70 = 0;
      do
      {
        __n_7 = 0;
        if (strm.avail_in)
        {
          --strm.avail_in;
          v75 = *strm.next_in++;
        }

        else
        {
          RealDFileSubFileStream::basicReadWithMode(a1, &__n_7, 1u, 1);
          v75 = __n_7;
        }

        v73 += v75 << v72;
        *v70 = v73;
        v72 += 8;
      }

      while (v72 != 32);
      v71 = 0;
      v70 = &v111;
    }

    while ((v74 & 1) != 0);
    v76 = v111;
    v38 = v69;
    v58 = v68;
    if (LODWORD(v120[0]) != v69)
    {
      v77 = *(a1 + 40);
      if (*(v77 + 24))
      {
        v78 = *(v77 + 16);
      }

      else
      {
        v78 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 792, "dfutil/realdf", 37, "%.500s %.500s %u %u", (*(v77 + 152) + (*(a1 + 68) << 7)), v78, v69, LODWORD(v120[0]));
    }

    total_out = strm.total_out;
    if (strm.total_out != v76)
    {
      v80 = *(a1 + 40);
      if (*(v80 + 24))
      {
        v81 = *(v80 + 16);
      }

      else
      {
        v81 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 797, "dfutil/realdf", 38, "%.500s %.500s %llu %u", (*(v80 + 152) + (*(a1 + 68) << 7)), v81, strm.total_out, v76);
      total_out = strm.total_out;
    }

    RealDFile::verifyCompressionInfo(*(a1 + 40), *(a1 + 68), total_out, v69);
    v59 = 1;
LABEL_106:
    v82 = crc32(v38, next_out, LODWORD(strm.next_out) - next_out);
    v83 = v113 - strm.avail_out;
    if (v113 != strm.avail_out)
    {
      v84 = v82;
      v85 = v83 - __n;
      if (v83 <= __n)
      {
        v91 = 0;
        v85 = v113 - strm.avail_out;
      }

      else
      {
        v86 = v58;
        v87 = *v108 + 16 * v58;
        v89 = *(v87 + 8);
        v88 = *(v87 + 12);
        v90 = v89 + __n;
        if (v89 + __n > v88)
        {
          DgnPrimArray<char>::reallocElts(v87, v89 + __n - v88, 1);
          v90 = *(v87 + 8) + __n;
        }

        *(v87 + 8) = v90;
        v91 = __n;
        memcpy((*v87 + v89), buf, __n);
        v58 = v86 + 1;
        if (v86 + 1 >= v107)
        {
          v92 = __n;
        }

        else
        {
          v92 = 5242880;
        }

        if (v58 == v107)
        {
          v92 = a11 % 0x500000;
        }

        __n = v92;
      }

      v93 = v58;
      v94 = *v108 + 16 * v58;
      v96 = *(v94 + 8);
      v95 = *(v94 + 12);
      v97 = v96 + v85;
      if (v96 + v85 > v95)
      {
        DgnPrimArray<char>::reallocElts(v94, v96 + v85 - v95, 1);
        v97 = *(v94 + 8) + v85;
      }

      *(v94 + 8) = v97;
      memcpy((*v94 + v96), &buf[v91], v85);
      if (v93 + 1 >= v107)
      {
        v98 = 0;
      }

      else
      {
        v98 = 5242880;
      }

      if (v93 + 1 == v107)
      {
        v99 = a11 / 0x500000;
      }

      else
      {
        v99 = v93 + 1;
      }

      if (v93 + 1 == v107)
      {
        v98 = a11 % 0x500000;
      }

      v58 = __n == v85 ? v99 : v93;
      v100 = __n == v85 ? v98 : __n - v85;
      if (v59 != 1)
      {
        v38 = v84;
        __n = v100;
        v56 = v113;
        continue;
      }
    }

    break;
  }

  v101 = inflateEnd(&strm);
  if (v101)
  {
    v102 = *(a1 + 40);
    v103 = (*(v102 + 152) + (*(a1 + 68) << 7));
    if (*(v102 + 24))
    {
      v104 = *(v102 + 16);
    }

    else
    {
      v104 = &unk_26288F516;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 872, "dfutil/realdf", 39, "%.500s %.500s %d", v103, v104, v101);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&buf);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v117);
LABEL_141:
  if (*(a1 + 8) == 2)
  {
    (*(*a1 + 32))(a1);
  }

  return a1;
}