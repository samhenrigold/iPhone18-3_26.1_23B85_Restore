uint64_t rankSearchLevel(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5, __CFBinaryHeap *a6, __CFBinaryHeap *a7, uint64_t a8, void *a9)
{
  v14 = a4 - a5;
  if (a4 <= a5)
  {
LABEL_5:
    v27 = a8;
    v17 = atomic_load((a1 + 4));
    v18 = sharedBuffer(v17);
    memcpy(v18, a3, a4);
    v19 = 0;
    *(v18 + (a4 + 1)) = 0;
    do
    {
      v20 = *(a2 + 20 + 8 * v19);
      *(v18 + a4) = v19;
      rankSearchGetCursor(a1, v20, v18, a4 + 1, a6);
      ++v19;
    }

    while (v19 != 256);
    v21 = *(a2 + 16);
    if (!v21)
    {
      goto LABEL_11;
    }

    v22 = SITrieCompletionCreate(a3, a4, v21, *(a2 + 8));
    updated = updateCompletions(v22, a9, a6, a7, v27);
    v24 = updated;
    if (v22)
    {
      trieCompletionRelease(updated, v22);
    }

    if (!v24)
    {
      return 0;
    }

    else
    {
LABEL_11:

      return rankSearchCursors(a1, a6, a7, v27, a9);
    }
  }

  else
  {
    v15 = a5;
    while (1)
    {
      v16 = *(a2 + 8 * a3[v15] + 20);
      if ((v16 & 3) != 1)
      {
        break;
      }

      a2 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      ++v15;
      if (!--v14)
      {
        goto LABEL_5;
      }
    }

    if ((v16 & 3) == 2)
    {

      return rankSearchList(a1, (v16 & 0xFFFFFFFFFFFFFFFCLL), a3, a4, v15 + 1, a6, a7, a8, a9);
    }

    else
    {
      return 1;
    }
  }
}

void SIGeneralTrieContinueRankedSearch(uint64_t a1, uint64_t a2, __CFBinaryHeap *a3, __CFBinaryHeap *a4)
{
  if ((*(a1 + 2080) & 9) == 1)
  {
    v14 = v4;
    v15 = v5;
    v13.version = 0;
    v13.copyDescription = 0;
    v13.retain = trieCompletionRetain;
    v13.release = trieCompletionRelease;
    v13.compare = trieCompletionInternalCompareScore;
    v10 = CFBinaryHeapCreate(*MEMORY[0x277CBECE8], 0, &v13, 0);
    if (v10)
    {
      v11 = v10;
      while (CFBinaryHeapGetCount(a3))
      {
        if (CFBinaryHeapGetCount(a4) >= a2)
        {
          break;
        }

        rankSearchCursors(a1, a3, v11, a2, 0);
        while (CFBinaryHeapGetCount(v11))
        {
          Minimum = CFBinaryHeapGetMinimum(v11);
          CFBinaryHeapAddValue(a4, Minimum);
          CFBinaryHeapRemoveMinimumValue(v11);
        }
      }

      CFRelease(v11);
    }
  }
}

BOOL rankSearchCursors(uint64_t a1, CFBinaryHeapRef heap, __CFBinaryHeap *a3, uint64_t a4, void *a5)
{
  v10 = (a1 + 2092);
  while (1)
  {
    Count = CFBinaryHeapGetCount(heap);
    if (!Count)
    {
      return Count == 0;
    }

    Minimum = CFBinaryHeapGetMinimum(heap);
    v13 = Minimum;
    if (Minimum)
    {
      ++Minimum[6];
    }

    CFBinaryHeapRemoveMinimumValue(heap);
    v14 = *(v13 + 1);
    v15 = v14 & 3;
    if ((v14 & 3) == 0)
    {
      v20 = SITrieCompletionCreate(v13 + 32, v13[7], v14 >> 2, *(v13 + 2));
      updated = updateCompletions(v20, a5, heap, a3, a4);
      v22 = updated;
      if (v20)
      {
        trieCompletionRelease(updated, v20);
      }

      goto LABEL_19;
    }

    v16 = *v10;
    if (*v10)
    {
      v17 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = v13[7];
      if (v15 == 3)
      {
        v19 = rankSearchCompactDiskLevel(a1, v17 + v16, v13 + 32, v18, v18, heap, a3, a4, a5);
      }

      else if (v15 == 1)
      {
        v19 = rankSearchDiskLevel(a1, v17 + v16, v13 + 32, v18, v18, heap, a3, a4, a5);
      }

      else
      {
        v19 = rankSearchDiskPage(a1, (v17 + v16), v13 + 32, v18, v18, heap, a3, a4, a5);
      }
    }

    else if (v15 == 2)
    {
      v19 = rankSearchList(a1, (v14 & 0xFFFFFFFFFFFFFFFCLL), v13 + 32, v13[7], v13[7], heap, a3, a4, a5);
    }

    else
    {
      if (v15 != 1)
      {
        v22 = 1;
        goto LABEL_19;
      }

      v19 = rankSearchLevel(a1, v14 & 0xFFFFFFFFFFFFFFFCLL, v13 + 32, v13[7], v13[7], heap, a3, a4, a5);
    }

    v22 = v19;
LABEL_19:
    v23 = v13[6] - 1;
    v13[6] = v23;
    if (v23)
    {
      if ((v22 & 1) == 0)
      {
        return Count == 0;
      }
    }

    else
    {
      free(v13);
      if ((v22 & 1) == 0)
      {
        return Count == 0;
      }
    }
  }
}

uint64_t SIGeneralTrieWriteToFileDescriptor(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if ((*(a1 + 2080) & 8) != 0)
  {
    return 0;
  }

  result = 0;
  if ((a2 & 0x80000000) == 0 && !*(a1 + 2092))
  {
    v7 = sysconf(29);
    *&__buf[1] = 12648430;
    v8 = (v7 + lseek(a2, 0, 2) - 1) & -v7;
    __buf[3] = 0;
    v12 = *(a1 + 2076);
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v17 = 0;
    v13 = *(a1 + 2100);
    HIDWORD(v14) = 2;
    lseek(a2, v8, 0);
    write(a2, &__buf[1], 0x34uLL);
    if (*(a1 + 2080))
    {
      serializeListsRanked(a1, a1 + 8, v8, a2);
    }

    else
    {
      serializeLists(a1, a1 + 8, v8, a2);
    }

    __buf[0] = lseek(a2, 0, 1) - v8;
    pwrite(a2, __buf, 4uLL, v8 + 4);
    if (*(a1 + 2080))
    {
      serializeLevelsRanked((a1 + 8), v8, a2, 0, 1u, __buf);
    }

    else
    {
      serializeLevels((a1 + 8), v8, a2, 0, 1u, __buf);
    }

    pwrite(a2, __buf, 4uLL, v8 + 8);
    lseek(a2, __buf[0], 0);
    *(a1 + 2076) = 0;
    if (*(a1 + 2080))
    {
      v9 = 2068;
    }

    else
    {
      v9 = 2052;
    }

    bzero((a1 + 8), v9);
    v10 = mmap(0, __buf[0], 1, 1, a2, v8);
    if (v10 == -1)
    {
      return 0;
    }

    else
    {
      *(a1 + 2092) = v10;
      if (a3)
      {
        *a3 = v8;
      }

      return 1;
    }
  }

  return result;
}

uint64_t SIGeneralTrieWriteToFileURL(uint64_t a1, const __CFURL *a2)
{
  v2 = 0;
  v13 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if ((*(a1 + 2080) & 8) == 0)
    {
      bzero(buffer, 0x401uLL);
      usedBufLen = 0;
      v5 = CFURLCopyPath(a2);
      if (v5)
      {
        v6 = v5;
        v14.length = CFStringGetLength(v5);
        v14.location = 0;
        CFStringGetBytes(v6, v14, 0x8000100u, 0x2Du, 0, buffer, 1024, &usedBufLen);
        buffer[usedBufLen] = 0;
        v7 = open(buffer, 1538, 384);
        v8 = v7;
        if ((v7 & 0x80000000) == 0)
        {
          v10 = -1;
          v2 = SIGeneralTrieWriteToFileDescriptor(a1, v7, &v10);
          close(v8);
          CFRelease(v6);
          return v2;
        }

        if (v7 != -1)
        {
          close(v7);
        }

        CFRelease(v6);
      }
    }

    return 0;
  }

  return v2;
}

void finishLevel<_RankedTrieLevel *,_RankedListNode *>(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 20;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      finishLevel<_RankedTrieLevel *,_RankedListNode *>(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

void finishLevel<_TrieLevel *,_ListNode *>(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 4;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      finishLevel<_TrieLevel *,_ListNode *>(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

uint64_t addListNode(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, int *a7)
{
  v13 = a1;
  v14 = *a2;
  v15 = malloc_type_calloc(8uLL, (*(a1 + 2100) + 1), 0x2004093837F09uLL);
  v16 = (a3 + a5);
  if (v14)
  {
    v39 = v13;
    v40 = a7;
    v17 = 0;
    v18 = 1;
    do
    {
      while (1)
      {
        v19 = *(v14 + 6);
        if (v19 + a5 != a4 || memcmp(v16, v14 + 14, v19))
        {
          break;
        }

        v18 = 0;
        *(v14 + 2) = a6;
        v20 = v17 + 1;
        v15[v17] = v14;
        v14 = *v14;
        ++v17;
        if (!v14)
        {
          goto LABEL_13;
        }
      }

      v20 = v17 + 1;
      v15[v17] = v14;
      v14 = *v14;
      ++v17;
    }

    while (v14);
    if (v18)
    {
      v13 = v39;
      a7 = v40;
      goto LABEL_12;
    }

LABEL_13:
    v23 = 1;
    v13 = v39;
    a7 = v40;
  }

  else
  {
    v20 = 0;
LABEL_12:
    v21 = a4 - a5;
    v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
    memcpy(v22 + 14, v16, v21);
    v22[v21 + 14] = 0;
    *(v22 + 6) = v21;
    *v22 = 0;
    v15[v20++] = v22;
    v23 = 2;
    *(v22 + 2) = a6;
  }

  qsort(v15, v20, 8uLL, nodeStringCompare);
  v24 = *v15;
  v25 = *v15;
  if (v20 >= 2)
  {
    v26 = v15 + 1;
    v27 = v20 - 1;
    v28 = *v15;
    do
    {
      v29 = *v26++;
      v25 = v29;
      *v28 = v29;
      v28 = v29;
      --v27;
    }

    while (v27);
  }

  *v25 = 0;
  *a2 = v24;
  free(v15);
  if (a7)
  {
    *a7 = v23;
  }

  if (v20 > *(v13 + 2100))
  {
    addListNode(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  return v20;
}

int *burstLevel(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x804uLL, 0x10000406A7154B6uLL);
  v7 = v6;
  if (a2)
  {
    v8 = (v6 + 1);
    do
    {
      v9 = *(a2 + 6);
      v10 = a2[2];
      v21 = 0;
      if (v9)
      {
        v11 = *&v8[8 * *(a2 + 14)];
        if (v11)
        {
          v20 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          v12 = addListNode(a1, &v20, a2 + 14, v9, 1u, v10, &v21);
          v13 = v20;
          if (v12 >= *(a1 + 2100))
          {
            v13 = burstLevel(a1, v20, &v21);
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          *&v8[8 * *(a2 + 14)] = v14 | v13;
        }

        else
        {
          v16 = (v9 - 1);
          v17 = malloc_type_calloc(1uLL, v16 + 15, 0x1020040D0C9BDDAuLL);
          memcpy((v17 + 14), a2 + 15, v16);
          *(v17 + 14 + v16) = 0;
          *(v17 + 12) = v16;
          *(v17 + 8) = v10;
          *v17 = 0;
          *&v8[8 * *(a2 + 14)] = v17 | 2;
          v21 = 2;
        }
      }

      else
      {
        if (*v7)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        v21 = v15;
        *v7 = v10;
      }

      if (a3)
      {
        *a3 = v21;
      }

      v18 = *a2;
      free(a2);
      a2 = v18;
    }

    while (v18);
  }

  return v7;
}

uint64_t nodeStringCompare(const void *a1, const void *a2)
{
  v2 = *(*a1 + 12);
  v3 = *(*a2 + 12);
  v4 = v2 - v3;
  if (v2 >= v3)
  {
    v5 = *(*a2 + 12);
  }

  else
  {
    v5 = *(*a1 + 12);
  }

  LODWORD(result) = memcmp((*a1 + 14), (*a2 + 14), v5);
  if (result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

uint64_t addListNodeRanked(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, double *a7, char a8, double a9, int *a10, uint64_t a11, void (*a12)(uint64_t, double, double))
{
  v18 = a1;
  v19 = *a2;
  v20 = malloc_type_calloc(8uLL, (*(a1 + 2100) + 1), 0x2004093837F09uLL);
  v21 = (a3 + a5);
  if (v19)
  {
    v47 = v18;
    v22 = 0;
    LODWORD(v23) = 0;
    if (a12)
    {
      a8 = 0;
    }

    v24 = 0.0;
    do
    {
      v25 = v23;
      v26 = *(v19 + 14);
      if (v26 + a5 == a4 && !memcmp(v21, v19 + 30, v26))
      {
        *(v19 + 6) = a6;
        v27 = a9;
        if ((a8 & 1) == 0)
        {
          v28 = *(v19 + 2);
          if (a12)
          {
            a12(a11, v28, a9);
          }

          else
          {
            v27 = v28 + a9;
          }
        }

        *(v19 + 2) = v27;
        v22 = 1;
      }

      if (*(v19 + 1) > v24)
      {
        v24 = *(v19 + 1);
      }

      v23 = (v23 + 1);
      v20[v25] = v19;
      v19 = *v19;
    }

    while (v19);
    if (v22)
    {
      v29 = 1;
      v18 = v47;
      goto LABEL_22;
    }

    v18 = v47;
  }

  else
  {
    LODWORD(v23) = 0;
    v24 = 0.0;
  }

  if (v24 < a9)
  {
    v24 = a9;
  }

  v30 = a4 - a5;
  v31 = malloc_type_calloc(1uLL, v30 + 31, 0x10200404094906EuLL);
  memcpy(v31 + 30, v21, v30);
  v31[v30 + 30] = 0;
  *(v31 + 14) = v30;
  *v31 = 0;
  v20[v23] = v31;
  *(v31 + 6) = a6;
  v23 = (v23 + 1);
  v29 = 2;
  *(v31 + 1) = v24;
  *(v31 + 2) = a9;
LABEL_22:
  qsort(v20, v23, 8uLL, nodeScoreCompare);
  v32 = *v20;
  *a7 = v24;
  v33 = v32;
  v34 = (v23 - 1);
  if (v23 != 1)
  {
    v35 = v20 + 1;
    v36 = v32;
    do
    {
      v37 = *v35++;
      v33 = v37;
      *v36 = v37;
      *(v37 + 8) = *a7;
      v36 = v37;
      --v34;
    }

    while (v34);
  }

  *v33 = 0;
  *a2 = v32;
  free(v20);
  if (a10)
  {
    *a10 = v29;
  }

  if (v23 > *(v18 + 2100))
  {
    addListNodeRanked(v38, v39, v40, v41, v42, v43, v44, v45);
  }

  return v23;
}

char *burstLevelRanked(uint64_t a1, unsigned __int16 *a2, double *a3, uint64_t a4, _DWORD *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x814uLL, 0x1000040B01ABE46uLL);
  v11 = v10;
  *a3 = 0.0;
  if (a2)
  {
    v12 = v10 + 20;
    v31 = a5;
    do
    {
      v32 = 0.0;
      v13 = a2[14];
      v14 = *(a2 + 6);
      v15 = *(a2 + 2);
      v34 = 0;
      if (v13)
      {
        v16 = *&v12[8 * *(a2 + 30)];
        if (v16)
        {
          v33 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          v17 = addListNodeRanked(a1, &v33, (a2 + 15), v13, 1u, v14, &v32, a4, v15, &v34, 0, 0);
          v18 = v33;
          if (v17 >= *(a1 + 2100))
          {
            v18 = burstLevelRanked(a1, v33, &v32, a4, 0);
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }

          *&v12[8 * *(a2 + 30)] = v19 | v18;
        }

        else
        {
          v21 = v12;
          v22 = v11;
          v23 = a1;
          v24 = a4;
          v25 = (v13 - 1);
          v26 = malloc_type_calloc(1uLL, v25 + 31, 0x10200404094906EuLL);
          memcpy((v26 + 30), a2 + 31, v25);
          *(v26 + 30 + v25) = 0;
          *(v26 + 28) = v25;
          a4 = v24;
          a1 = v23;
          v11 = v22;
          v12 = v21;
          a5 = v31;
          *(v26 + 24) = v14;
          *(v26 + 8) = v15;
          *(v26 + 16) = v15;
          *v26 = 0;
          v32 = v15;
          *&v12[8 * *(a2 + 30)] = v26 | 2;
          v34 = 2;
        }
      }

      else
      {
        if (*(v11 + 4))
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        v34 = v20;
        *(v11 + 4) = v14;
        *(v11 + 1) = v15;
        v32 = v15;
      }

      if (a5)
      {
        *a5 = v34;
      }

      v27 = v32;
      if (v32 <= *a3)
      {
        v27 = *a3;
      }

      *a3 = v27;
      v28 = *a2;
      free(a2);
      a2 = v28;
    }

    while (v28);
    v29 = *a3;
  }

  else
  {
    v29 = 0;
  }

  *v11 = v29;
  return v11;
}

uint64_t nodeScoreCompare(const void *a1, const void *a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  if (v2 == v3)
  {
    v4 = *(*a1 + 24);
    v5 = *(*a2 + 24);
    v6 = v4 == v5;
    if (v4 > v5)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else if (v2 <= v3)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t searchDiskLevelRanked(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v34 = 0;
  if (a5 >= a4)
  {
    v17 = *(a2 + 1024);
    if (v17)
    {
      v18 = SITrieCompletionCreate(a3, a4, v17, *(a2 + 1036));
      v19 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v18, 1, &v34);
      if (v18)
      {
        trieCompletionRelease(v19, v18);
      }

      v16 = v34;
      if (v34)
      {
        return 1;
      }
    }

    else
    {
      v16 = 0;
    }

    if (a6)
    {
      return v16;
    }

    v23 = 0;
    v24 = (a1 + 2092);
    while (1)
    {
      v25 = *(a2 + 4 * v23);
      a3[a5] = v23;
      if ((v25 & 3u) > 1uLL)
      {
        v28 = *v24;
        if ((v25 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v35, a8);
          v34 = searchDiskPageRanked(((v25 & 0xFFFFFFFC) + v28), a3, a4 + 1, a5 + 1, 0, a7, v35);
          v27 = v35;
        }

        else
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v36, a8);
          v34 = searchCompactDiskLevelRanked(a1, (v25 & 0xFFFFFFFC) + v28, a3, (a4 + 1), a5 + 1, 0, a7, v36);
          v27 = v36;
        }
      }

      else
      {
        if ((v25 & 3) == 0)
        {
          goto LABEL_22;
        }

        v26 = *v24;
        std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v37, a8);
        v34 = searchDiskLevelRanked(a1, (v25 & 0xFFFFFFFC) + v26, a3, (a4 + 1), a5 + 1, 0, a7, v37);
        v27 = v37;
      }

      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v27);
LABEL_22:
      v16 = v34;
      if ((v34 & 1) == 0 && v23++ != 255)
      {
        continue;
      }

      return v16;
    }
  }

  v15 = *(a2 + 4 * a3[a5]);
  if ((v15 & 3u) > 1uLL)
  {
    if ((v15 & 3) == 2)
    {
      v20 = *(a1 + 2092);
      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v38, a8);
      v21 = v38;
      v22 = searchDiskPageRanked(((v15 & 0xFFFFFFFC) + v20), a3, a4, a5 + 1, a6, a7, v38);
    }

    else
    {
      v31 = *(a1 + 2092);
      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v39, a8);
      v21 = v39;
      v22 = searchCompactDiskLevelRanked(a1, (v15 & 0xFFFFFFFC) + v31, a3, a4, a5 + 1, a6, a7, v39);
    }

    goto LABEL_28;
  }

  if ((v15 & 3) != 0)
  {
    v30 = *(a1 + 2092);
    std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v40, a8);
    v21 = v40;
    v22 = searchDiskLevelRanked(a1, (v15 & 0xFFFFFFFC) + v30, a3, a4, a5 + 1, a6, a7, v40);
LABEL_28:
    v16 = v22;
    std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v21);
    return v16;
  }

  return 0;
}

void sub_26B7D68E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t containsKey(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if (result)
  {
    if (*result == 1)
    {
LABEL_5:
      *(result + 4) = *(a2 + 20);
      *(result + 8) = *(a2 + 4);
LABEL_6:
      *a4 = 1;
      return result;
    }

    if (!*result)
    {
      if (!a3)
      {
        return result;
      }

      goto LABEL_5;
    }

    v6 = 0;
    v5 = *(result + 24);
    if (v5)
    {
      result = v5(*(result + 16), a2, &v6);
      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t searchDiskLevel(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = 0;
  if (a5 >= a4)
  {
    v17 = *(a2 + 1024);
    if (v17)
    {
      v18 = SITrieCompletionCreate(a3, a4, v17, 0.0);
      v19 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v18, 1, &v33);
      if (v18)
      {
        trieCompletionRelease(v19, v18);
      }

      v16 = v33;
      if (v33)
      {
        return 1;
      }
    }

    else
    {
      v16 = 0;
    }

    if (a6)
    {
      return v16;
    }

    v23 = 0;
    v24 = (a1 + 2092);
    while (1)
    {
      v25 = *(a2 + 4 * v23);
      a3[a5] = v23;
      if ((v25 & 3u) > 1uLL)
      {
        v28 = *v24;
        if ((v25 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v34, a8);
          v33 = searchDiskPage(a1, ((v25 & 0xFFFFFFFC) + v28), a3, a4 + 1, a5 + 1, 0, a7, v34);
          v27 = v34;
        }

        else
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v35, a8);
          v33 = searchCompactDiskLevel(a1, ((v25 & 0xFFFFFFFC) + v28), a3, (a4 + 1), a5 + 1, 0, a7, v35);
          v27 = v35;
        }
      }

      else
      {
        if ((v25 & 3) == 0)
        {
          goto LABEL_22;
        }

        v26 = *v24;
        std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v36, a8);
        v33 = searchDiskLevel(a1, (v25 & 0xFFFFFFFC) + v26, a3, (a4 + 1), a5 + 1, 0, a7, v36);
        v27 = v36;
      }

      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v27);
LABEL_22:
      v16 = v33;
      if ((v33 & 1) == 0 && v23++ != 255)
      {
        continue;
      }

      return v16;
    }
  }

  v15 = *(a2 + 4 * a3[a5]);
  if ((v15 & 3u) > 1uLL)
  {
    v20 = *(a1 + 2092);
    if ((v15 & 3) == 2)
    {
      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v37, a8);
      v21 = v37;
      v22 = searchDiskPage(a1, ((v15 & 0xFFFFFFFC) + v20), a3, a4, a5 + 1, a6, a7, v37);
    }

    else
    {
      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v38, a8);
      v21 = v38;
      v22 = searchCompactDiskLevel(a1, ((v15 & 0xFFFFFFFC) + v20), a3, a4, a5 + 1, a6, a7, v38);
    }

    goto LABEL_28;
  }

  if ((v15 & 3) != 0)
  {
    v30 = *(a1 + 2092);
    std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v39, a8);
    v21 = v39;
    v22 = searchDiskLevel(a1, (v15 & 0xFFFFFFFC) + v30, a3, a4, a5 + 1, a6, a7, v39);
LABEL_28:
    v16 = v22;
    std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v21);
    return v16;
  }

  return 0;
}

void sub_26B7D6CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t searchLevelRanked(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0;
  if (a4 >= a3)
  {
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = SITrieCompletionCreate(a2, a4, v17, *(a1 + 8));
      v19 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v18, 1, &v28);
      if (v18)
      {
        trieCompletionRelease(v19, v18);
      }

      v20 = v28;
      if (v28)
      {
        return 1;
      }
    }

    else
    {
      v20 = 0;
    }

    if (a5)
    {
      return v20;
    }

    v21 = 0;
    v22 = a1 + 20;
    while (1)
    {
      v23 = *(v22 + 8 * v21);
      a2[a4] = v21;
      if ((v23 & 3) == 2)
      {
        std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v29, a7);
        v24 = v29;
        v25 = searchListRanked((v23 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v29);
      }

      else
      {
        if ((v23 & 3) != 1)
        {
          goto LABEL_18;
        }

        std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v30, a7);
        v24 = v30;
        v25 = searchLevelRanked(v23 & 0xFFFFFFFFFFFFFFFCLL, a2, (a3 + 1), a4 + 1, 0, a6, v30);
      }

      v28 = v25;
      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v24);
LABEL_18:
      v20 = v28;
      if ((v28 & 1) == 0 && v21++ != 255)
      {
        continue;
      }

      return v20;
    }
  }

  v14 = *(a1 + 8 * a2[a4] + 20);
  if ((v14 & 3) == 2)
  {
    std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v31, a7);
    v15 = v31;
    v16 = searchListRanked((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v31);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      return 0;
    }

    std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v32, a7);
    v15 = v32;
    v16 = searchLevelRanked(v14 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4 + 1, a5, a6, v32);
  }

  v20 = v16;
  std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v15);
  return v20;
}

void sub_26B7D6F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t searchLevel(int *a1, const unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0;
  if (a4 >= a3)
  {
    if (*a1)
    {
      v17 = SITrieCompletionCreate(a2, a4, *a1, 0.0);
      v18 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v17, 1, &v26);
      if (v17)
      {
        trieCompletionRelease(v18, v17);
      }

      v19 = v26;
      if (v26)
      {
LABEL_9:
        v19 = 1;
        return v19 & 1;
      }
    }

    else
    {
      v19 = 0;
    }

    if (a5)
    {
      return v19 & 1;
    }

    v20 = 0;
    v21 = a1 + 1;
    while (1)
    {
      v22 = *&v21[2 * v20];
      a2[a4] = v20;
      if (v22)
      {
        break;
      }

LABEL_20:
      if (++v20 == 256)
      {
        return v19 & 1;
      }
    }

    if ((v22 & 3) == 2)
    {
      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v27, a7);
      v23 = v27;
      v24 = searchList((v22 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v27);
    }

    else
    {
      if ((v22 & 3) != 1)
      {
        goto LABEL_19;
      }

      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v28, a7);
      v23 = v28;
      v24 = searchLevel((v22 & 0xFFFFFFFFFFFFFFFCLL), a2, (a3 + 1), a4 + 1, 0, a6, v28);
    }

    v26 = v24;
    std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v23);
LABEL_19:
    v19 = v26;
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v14 = *&a1[2 * a2[a4] + 1];
  if ((v14 & 3) == 2)
  {
    std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v29, a7);
    v15 = v29;
    v16 = searchList((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v29);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      v19 = 0;
      return v19 & 1;
    }

    std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v30, a7);
    v15 = v30;
    v16 = searchLevel((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v30);
  }

  v19 = v16;
  std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v15);
  return v19 & 1;
}

void sub_26B7D71CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t searchCompactDiskLevelRanked(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = 0;
  if (a5 < a4)
  {
    v13 = a3[a5];
    v14 = v13 >> 6;
    v15 = *(a2 + 8 * (v13 >> 6));
    v16 = 1 << v13;
    if (((1 << v13) & v15) != 0)
    {
      if (v13 >= 0x40)
      {
        v17 = 0;
        v35 = a2;
        do
        {
          v36 = *v35++;
          v37 = vcnt_s8(v36);
          v37.i16[0] = vaddlv_u8(v37);
          v17 += v37.i32[0];
          --v14;
        }

        while (v14);
      }

      else
      {
        v17 = 0;
      }

      v38 = vcnt_s8(((v16 - 1) & v15));
      v38.i16[0] = vaddlv_u8(v38);
      v39 = *(a2 + 4 * (v17 + v38.i32[0]) + 52);
      if ((v39 & 3u) > 1)
      {
        v40 = *(a1 + 2092);
        if ((v39 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v52, a8);
          v41 = v52;
          v42 = searchDiskPageRanked(((v39 & 0xFFFFFFFC) + v40), a3, a4, a5 + 1, a6, a7, v52);
        }

        else
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v53, a8);
          v41 = v53;
          v42 = searchCompactDiskLevelRanked(a1, (v39 & 0xFFFFFFFC) + v40, a3, a4, a5 + 1, a6, a7, v53);
        }
      }

      else
      {
        if ((v39 & 3) == 0)
        {
          return 0;
        }

        v43 = *(a1 + 2092);
        std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v54, a8);
        v41 = v54;
        v42 = searchDiskLevelRanked(a1, (v39 & 0xFFFFFFFC) + v43, a3, a4, a5 + 1, a6, a7, v54);
      }

      v21 = v42;
      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v41);
      return v21;
    }

    return 0;
  }

  v18 = *(a2 + 48);
  if (!v18)
  {
    v21 = 0;
LABEL_11:
    if (a6)
    {
      return v21;
    }

    v22 = 0;
    v23 = (a1 + 2092);
    while (1)
    {
      if (v22 >> 6 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v22 >> 6;
      }

      v25 = *(a2 + 8 * (v22 >> 6));
      if ((v25 & (1 << v22)) == 0)
      {
        goto LABEL_28;
      }

      if (v22 >= 0x40)
      {
        v26 = 0;
        v27 = a2;
        do
        {
          v28 = *v27++;
          v29 = vcnt_s8(v28);
          v29.i16[0] = vaddlv_u8(v29);
          v26 += v29.i32[0];
          --v24;
        }

        while (v24);
      }

      else
      {
        v26 = 0;
      }

      v30 = vcnt_s8((v25 & ((1 << v22) - 1)));
      v30.i16[0] = vaddlv_u8(v30);
      v31 = *(a2 + 52 + 4 * (v26 + v30.i32[0]));
      a3[a5] = v22;
      if ((v31 & 3u) > 1)
      {
        v34 = *v23;
        if ((v31 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v49, a8);
          v48 = searchDiskPageRanked((v34 + (v31 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v49);
          v33 = v49;
        }

        else
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v50, a8);
          v48 = searchCompactDiskLevelRanked(a1, v34 + (v31 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v50);
          v33 = v50;
        }
      }

      else
      {
        if ((v31 & 3) == 0)
        {
          goto LABEL_28;
        }

        v32 = *v23;
        std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v51, a8);
        v48 = searchDiskLevelRanked(a1, v32 + (v31 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v51);
        v33 = v51;
      }

      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v33);
LABEL_28:
      v21 = v48;
      if ((v48 & 1) == 0 && ++v22 != 256)
      {
        continue;
      }

      return v21;
    }
  }

  v19 = SITrieCompletionCreate(a3, a4, v18, *(a2 + 40));
  v20 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v19, 1, &v48);
  if (v19)
  {
    trieCompletionRelease(v20, v19);
  }

  v21 = v48;
  if ((v48 & 1) == 0)
  {
    goto LABEL_11;
  }

  return 1;
}

void sub_26B7D75E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t searchDiskPageRanked(unsigned int *a1, const unsigned __int8 *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v33 = 0;
  v7 = *a1;
  if (*a1)
  {
    v8 = a4;
    v9 = 0;
    v10 = &a2[a4];
    v11 = a3 - a4;
    v12 = a1 + 3;
    v28 = a3;
    __dst = &a2[a3];
    while (1)
    {
      v13 = v12 + v9;
      v14 = *(v13 + 6);
      if (v11 <= v14 && !memcmp(v13 + 14, v10, v11))
      {
        v15 = a5;
        if (v11 == v14)
        {
          v15 = 0;
        }

        if ((v15 & 1) == 0)
        {
          v16 = (v14 + v8);
          v17 = a3;
          v18 = v16 - a3;
          v19 = v28;
          if (v18 >= 1)
          {
            memcpy(__dst, &v13[v14 - v18 + 14], v18);
            v19 = v16;
            v17 = v16;
          }

          a2[v19] = 0;
          v20 = SITrieCompletionCreate(a2, v17, *(v13 + 2), *v13);
          v8 = a4;
          if (v20)
          {
            v21 = v20;
            v22 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v20, v11 == v14, &v33);
            trieCompletionRelease(v22, v21);
            if (v33)
            {
              break;
            }
          }
        }
      }

      v9 += *(v13 + 6) + 14;
      if (v9 >= v7)
      {
        v23 = v33;
        return v23 & 1;
      }
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v10, &v9, &v8, &v7);
}

uint64_t std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

uint64_t std::__function::__func<void (*)(void *,_SITrieCompletion *,BOOL,BOOL *),std::allocator<void (*)(void *,_SITrieCompletion *,BOOL,BOOL *)>,void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287C3EF90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t searchCompactDiskLevel(uint64_t a1, int8x8_t *a2, const unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = 0;
  if (a5 < a4)
  {
    v13 = a3[a5];
    v14 = v13 >> 6;
    v15 = a2[v13 >> 6];
    v16 = 1 << v13;
    if (((1 << v13) & *&v15) != 0)
    {
      if (v13 >= 0x40)
      {
        v17 = 0;
        v35 = a2;
        do
        {
          v36 = *v35++;
          v37 = vcnt_s8(v36);
          v37.i16[0] = vaddlv_u8(v37);
          v17 += v37.i32[0];
          --v14;
        }

        while (v14);
      }

      else
      {
        v17 = 0;
      }

      v38 = vcnt_s8(((v16 - 1) & *&v15));
      v38.i16[0] = vaddlv_u8(v38);
      v39 = a2[4].i32[v17 + v38.i32[0] + 1];
      if ((v39 & 3u) > 1)
      {
        v40 = *(a1 + 2092);
        if ((v39 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v52, a8);
          v41 = v52;
          v42 = searchDiskPage(a1, ((v39 & 0xFFFFFFFC) + v40), a3, a4, a5 + 1, a6, a7, v52);
        }

        else
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v53, a8);
          v41 = v53;
          v42 = searchCompactDiskLevel(a1, ((v39 & 0xFFFFFFFC) + v40), a3, a4, a5 + 1, a6, a7, v53);
        }
      }

      else
      {
        if ((v39 & 3) == 0)
        {
          return 0;
        }

        v43 = *(a1 + 2092);
        std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v54, a8);
        v41 = v54;
        v42 = searchDiskLevel(a1, (v39 & 0xFFFFFFFC) + v43, a3, a4, a5 + 1, a6, a7, v54);
      }

      v21 = v42;
      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v41);
      return v21;
    }

    return 0;
  }

  v18 = a2[4].i32[0];
  if (!v18)
  {
    v21 = 0;
LABEL_11:
    if (a6)
    {
      return v21;
    }

    v22 = 0;
    v23 = (a1 + 2092);
    while (1)
    {
      if (v22 >> 6 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v22 >> 6;
      }

      v25 = a2[v22 >> 6];
      if ((*&v25 & (1 << v22)) == 0)
      {
        goto LABEL_28;
      }

      if (v22 >= 0x40)
      {
        v26 = 0;
        v27 = a2;
        do
        {
          v28 = *v27++;
          v29 = vcnt_s8(v28);
          v29.i16[0] = vaddlv_u8(v29);
          v26 += v29.i32[0];
          --v24;
        }

        while (v24);
      }

      else
      {
        v26 = 0;
      }

      v30 = vcnt_s8((*&v25 & ((1 << v22) - 1)));
      v30.i16[0] = vaddlv_u8(v30);
      v31 = a2[4].i32[v26 + v30.i32[0] + 1];
      a3[a5] = v22;
      if ((v31 & 3u) > 1)
      {
        v34 = *v23;
        if ((v31 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v49, a8);
          v48 = searchDiskPage(a1, (v34 + (v31 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v49);
          v33 = v49;
        }

        else
        {
          std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v50, a8);
          v48 = searchCompactDiskLevel(a1, (v34 + (v31 & 0xFFFFFFFC)), a3, (a4 + 1), a5 + 1, 0, a7, v50);
          v33 = v50;
        }
      }

      else
      {
        if ((v31 & 3) == 0)
        {
          goto LABEL_28;
        }

        v32 = *v23;
        std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v51, a8);
        v48 = searchDiskLevel(a1, v32 + (v31 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v51);
        v33 = v51;
      }

      std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v33);
LABEL_28:
      v21 = v48;
      if ((v48 & 1) == 0 && ++v22 != 256)
      {
        continue;
      }

      return v21;
    }
  }

  v19 = SITrieCompletionCreate(a3, a4, v18, 0.0);
  v20 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v19, 1, &v48);
  if (v19)
  {
    trieCompletionRelease(v20, v19);
  }

  v21 = v48;
  if ((v48 & 1) == 0)
  {
    goto LABEL_11;
  }

  return 1;
}

void sub_26B7D7E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t searchDiskPage(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3, unsigned int a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v60 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v9 = a4 - a5;
  v10 = *a2;
  if ((*(a1 + 2080) & 4) != 0)
  {
    memset(__s1, 0, sizeof(__s1));
    if (v10)
    {
      v24 = 0;
      v25 = 0;
      v26 = a2 + 1;
      v46 = a5 - a4;
      __s2 = &a3[a5];
      __dsta = a2 + 1;
      do
      {
        v27 = v25;
        v25 = v26 + v24;
        v28 = v25[6];
        if (v27)
        {
          v29 = v27[6];
          if (v28 > v29)
          {
            memcpy(__s1 + v29, v27 + 7, v28 - v29);
          }
        }

        v30 = *(v25 + 2);
        v31 = v30 + v28;
        if ((v30 + v28) >= v9)
        {
          if (a4 == v8 || (v28 >= v9 ? (v32 = v9) : (v32 = v28), !memcmp(__s1, __s2, v32)))
          {
            v33 = v9 - v28;
            if (v9 - v28 < 0 || (v30 >= v33 ? (v34 = v33) : (v34 = v30), !memcmp(v25 + 7, &__s2[v28], v34)))
            {
              v35 = a6;
              if (v9 == v31)
              {
                v35 = 0;
              }

              if ((v35 & 1) == 0)
              {
                v36 = v28 + v8;
                v37 = v28 + v8 - a4;
                if (v37 < 1)
                {
                  v36 = a4;
                }

                else
                {
                  memcpy(&a3[a4], __s1 + v28 - v37, v36 - a4);
                  v30 = *(v25 + 2);
                  LODWORD(v28) = v25[6];
                }

                v38 = v46 + v30 + v28;
                if (v38 < 1)
                {
                  v8 = a5;
                  v40 = a3;
                }

                else
                {
                  v39 = v38 - (v37 & ~(v37 >> 31));
                  v40 = a3;
                  memcpy(&a3[v36], &v25[v30 - v39 + 7], v39);
                  v36 += v39;
                  v8 = a5;
                }

                v40[v36] = 0;
                v41 = SITrieCompletionCreate(v40, v36, *v25, 0.0);
                v26 = __dsta;
                if (v41)
                {
                  v42 = v41;
                  v43 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v41, v9 == v31, &v58);
                  trieCompletionRelease(v43, v42);
                  if (v58)
                  {
                    goto LABEL_46;
                  }
                }
              }
            }
          }
        }

        v24 += *(v25 + 2) + 7;
      }

      while (v24 < v10);
    }
  }

  else if (v10)
  {
    v11 = 0;
    v12 = &a3[a5];
    v13 = a2 + 1;
    v14 = a6;
    __dst = &a3[a4];
    while (1)
    {
      v15 = v13 + v11;
      v16 = *(v15 + 2);
      if (v9 <= v16 && !memcmp(v15 + 6, v12, v9))
      {
        v17 = v9 == v16 ? 0 : v14;
        if ((v17 & 1) == 0)
        {
          v18 = a4;
          v19 = v16 + a5 - a4;
          v20 = a4;
          if (v19 >= 1)
          {
            memcpy(__dst, &v15[v16 - v19 + 6], v19);
            v20 = (v16 + a5);
            v18 = v16 + a5;
          }

          a3[v20] = 0;
          v21 = SITrieCompletionCreate(a3, v18, *v15, 0.0);
          v14 = a6;
          if (v21)
          {
            v22 = v21;
            v23 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v21, v9 == v16, &v58);
            trieCompletionRelease(v23, v22);
            if (v58)
            {
              break;
            }
          }
        }
      }

      v11 += *(v15 + 2) + 6;
      if (v11 >= v10)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    v44 = 1;
    return v44 & 1;
  }

LABEL_44:
  v44 = v58;
  return v44 & 1;
}

uint64_t searchListRanked(uint64_t *a1, const unsigned __int8 *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v28 = 0;
  if (a1)
  {
    v10 = a1;
    v11 = &a2[a4];
    v12 = (a3 - a4);
    v27 = a3;
    __dst = &a2[a3];
    while (1)
    {
      v14 = *(v10 + 14);
      if (v12 <= v14 && !memcmp(v10 + 30, v11, v12))
      {
        v15 = v12 == v14 ? 0 : a5;
        if ((v15 & 1) == 0)
        {
          v16 = v14 + a4 - a3;
          v17 = v27;
          v18 = a3;
          if (v16 >= 1)
          {
            memcpy(__dst, v10 + v14 - v16 + 30, v16);
            v17 = (v14 + a4);
            v18 = v14 + a4;
          }

          a2[v17] = 0;
          v19 = SITrieCompletionCreate(a2, v18, *(v10 + 6), *(v10 + 2));
          if (v19)
          {
            v20 = v19;
            v21 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v19, v12 == v14, &v28);
            trieCompletionRelease(v21, v20);
            if (v28)
            {
              break;
            }
          }
        }
      }

      v10 = *v10;
      if (!v10)
      {
        v22 = v28;
        return v22 & 1;
      }
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t searchList(uint64_t *a1, const unsigned __int8 *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v28 = 0;
  if (a1)
  {
    v10 = a1;
    v11 = &a2[a4];
    v12 = (a3 - a4);
    v27 = a3;
    __dst = &a2[a3];
    while (1)
    {
      v14 = *(v10 + 6);
      if (v12 <= v14 && !memcmp(v10 + 14, v11, v12))
      {
        v15 = v12 == v14 ? 0 : a5;
        if ((v15 & 1) == 0)
        {
          v16 = v14 + a4 - a3;
          v17 = v27;
          v18 = a3;
          if (v16 >= 1)
          {
            memcpy(__dst, v10 + v14 - v16 + 14, v16);
            v17 = (v14 + a4);
            v18 = v14 + a4;
          }

          a2[v17] = 0;
          v19 = SITrieCompletionCreate(a2, v18, *(v10 + 2), 0.0);
          if (v19)
          {
            v20 = v19;
            v21 = std::function<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v19, v12 == v14, &v28);
            trieCompletionRelease(v21, v20);
            if (v28)
            {
              break;
            }
          }
        }
      }

      v10 = *v10;
      if (!v10)
      {
        v22 = v28;
        return v22 & 1;
      }
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t advanceCompactMapCursorMappedLevel(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v8 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2092);
  if (*(a1 + 2080))
  {
    if (!a4)
    {
      *(a2 + 16) = *(v8 + 1024);
      *(a2 + 20) = *(v8 + 1036);
      return 1;
    }
  }

  else if (!a4)
  {
    *(a2 + 16) = *(v8 + 1024);
    return 1;
  }

  updateCompactMapCursorPointer(a1, a2, *(v8 + 4 * *a3));

  return advanceCompactMapCursor(a1, a2, a3 + 1, (a4 - 1));
}

uint64_t updateCompactMapCursorPointer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a2 != a3)
  {
    if ((a3 & 3u) <= 1uLL)
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 16) = 0;
LABEL_18:
        *a2 = a3;
        *(a2 + 8) = 0;
        return result;
      }

      v6 = *(result + 2080);
      v7 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2092);
      *(a2 + 16) = *(v7 + 1024);
      if ((v6 & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = *(v7 + 1036);
LABEL_17:
      *(a2 + 20) = v8;
      goto LABEL_18;
    }

    if ((a3 & 3) == 2)
    {
      v3 = *(result + 2080);
      if ((v3 & 4) != 0)
      {
        v5 = *((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2092));
      }

      else
      {
        v4 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2092);
        if (v3)
        {
          *(a2 + 16) = *(v4 + 8);
          v8 = *v4;
          goto LABEL_17;
        }

        v5 = *v4;
      }
    }

    else
    {
      v9 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2092);
      if (*(result + 2080))
      {
        *(a2 + 16) = *(v9 + 48);
        v8 = *(v9 + 40);
        goto LABEL_17;
      }

      v5 = *(v9 + 32);
    }

    *(a2 + 16) = v5;
    goto LABEL_18;
  }

  return result;
}

uint64_t advanceMapCursorTrieList(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 8);
  if ((*(a1 + 2080) & 1) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *(a2 + 16);
    if (v13 > *(v12 + 12))
    {
      advanceMapCursorTrieList(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    if (!v12)
    {
      LOBYTE(v14) = 0;
      return v14;
    }

    v14 = v12;
    while (1)
    {
      v15 = *(v14 + 12);
      if (v14 != v12)
      {
        if (v13 >= v15)
        {
          goto LABEL_18;
        }

        if (v13)
        {
          v16 = (v14 + 14);
          v17 = *(a2 + 16);
          v18 = (v12 + 14);
          do
          {
            v20 = *v16++;
            v19 = v20;
            v21 = *v18++;
            if (v19 != v21)
            {
              goto LABEL_18;
            }
          }

          while (--v17);
        }
      }

      if (v13 >= v15 || a4 == 0)
      {
        LODWORD(v23) = 0;
        LODWORD(v24) = *(a2 + 16);
      }

      else
      {
        v23 = 0;
        v24 = *(a2 + 16);
        do
        {
          if (*(v14 + 14 + v24) != a3[v23])
          {
            break;
          }

          ++v24;
          ++v23;
          if (v24 >= v15)
          {
            break;
          }
        }

        while (v23 < a4);
      }

      if (v23 == a4)
      {
        *(a2 + 8) = v14 | 2;
        if (v24 == v15)
        {
          *(a2 + 16) = v15;
          *(a2 + 20) = *(v14 + 8);
        }

        else
        {
          *(a2 + 16) = v13 + a4;
        }

        LOBYTE(v14) = 1;
        return v14;
      }

LABEL_18:
      v14 = *v14;
      if (!v14)
      {
        return v14;
      }
    }
  }

  v39[1] = v39;
  v39[0] = *a2;
  v25 = *(a2 + 16);
  v42 = *(a2 + 20);
  v43 = v11;
  v26 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = *(a2 + 24);
  MEMORY[0x28223BE20](a1);
  v28 = v39 - ((v25 + 15) & 0x1FFFFFFF0);
  bzero(v28, v25);
  v29 = *(a2 + 16);
  memcpy(v28, (v26 + 30), v29);
  v30 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
  if (v30)
  {
    v41 = 0;
    v31 = v29 + v8;
    v40 = v8;
    do
    {
      v32 = *(v30 + 28);
      if (v31 <= v32 && !memcmp((v30 + 30), v28, v29) && !memcmp((v30 + 30 + v29), a3, v40))
      {
        if (v31 == v32)
        {
          *(a2 + 8) = v30 | 2;
          v38 = *(v30 + 24);
          *(a2 + 24) = *(v30 + 16);
          *(a2 + 16) = v31;
          *(a2 + 20) = v38;
          LOBYTE(v14) = 1;
          return v14;
        }

        v33 = v43;
        if (!v41)
        {
          v33 = v30 | 2;
        }

        v43 = v33;
        if (v41)
        {
          v34 = v42;
        }

        else
        {
          LODWORD(v25) = v25 + v8;
          v34 = 0;
        }

        if (!v41)
        {
          v27 = 0.0;
        }

        v41 = 1;
        v42 = v34;
      }

      v30 = *v30;
    }

    while (v30);
  }

  else
  {
    v41 = 0;
  }

  v35 = v43;
  *a2 = v39[0];
  *(a2 + 8) = v35;
  LOBYTE(v14) = v41;
  v36 = v42;
  *(a2 + 16) = v25;
  *(a2 + 20) = v36;
  *(a2 + 24) = v27;
  return v14;
}

uint64_t updateMapCursorPointer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != a3)
  {
    if ((a3 & 3u) > 1uLL)
    {
      if ((a3 & 3) != 2)
      {
        goto LABEL_15;
      }

      v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      if (*(result + 2080))
      {
        *(a2 + 20) = *(v3 + 24);
        *(a2 + 24) = *(v3 + 16);
        *a2 = a3;
        goto LABEL_15;
      }

      if (*(v3 + 12))
      {
        v4 = 0;
      }

      else
      {
        v4 = *(v3 + 8);
      }
    }

    else
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 20) = 0;
        *(a2 + 24) = 0;
LABEL_15:
        *(a2 + 8) = a3;
        *(a2 + 16) = 0;
        return result;
      }

      v5 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      if (*(result + 2080))
      {
        *(a2 + 20) = *(v5 + 16);
        *(a2 + 24) = *(v5 + 8);
        goto LABEL_15;
      }

      v4 = *v5;
    }

    *(a2 + 20) = v4;
    goto LABEL_15;
  }

  return result;
}

uint64_t rankSearchCompactDiskLevel(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, __CFBinaryHeap *a6, __CFBinaryHeap *a7, uint64_t a8, void *a9)
{
  v10 = a4;
  if (a5 >= a4)
  {
LABEL_10:
    v46 = a8;
    v25 = atomic_load((a1 + 4));
    v26 = sharedBuffer(v25);
    if ((v10 + 1) <= 1023)
    {
      v27 = v26;
      memcpy(v26, a3, v10);
      v28 = 0;
      v27[v10 + 1] = 0;
      do
      {
        if (v28 >> 6 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28 >> 6;
        }

        v30 = *(a2 + 8 * (v28 >> 6));
        if (((1 << v28) & v30) != 0)
        {
          if (v28 >= 0x40)
          {
            v31 = 0;
            v32 = a2;
            do
            {
              v33 = *v32++;
              v34 = vcnt_s8(v33);
              v34.i16[0] = vaddlv_u8(v34);
              v31 += v34.i32[0];
              --v29;
            }

            while (v29);
          }

          else
          {
            v31 = 0;
          }

          v35 = vcnt_s8((((1 << v28) - 1) & v30));
          v35.i16[0] = vaddlv_u8(v35);
          v36 = *(a2 + 52 + 4 * (v31 + v35.i32[0]));
          v27[v10] = v28;
          rankSearchGetCursor(a1, v36, v27, v10 + 1, a6);
        }

        ++v28;
      }

      while (v28 != 256);
    }

    v37 = *(a2 + 48);
    if (!v37)
    {
      goto LABEL_26;
    }

    v38 = SITrieCompletionCreate(a3, v10, v37, *(a2 + 40));
    updated = updateCompletions(v38, a9, a6, a7, v46);
    v40 = updated;
    if (v38)
    {
      trieCompletionRelease(updated, v38);
    }

    if (!v40)
    {
      return 0;
    }

    else
    {
LABEL_26:

      return rankSearchCursors(a1, a6, a7, v46, a9);
    }
  }

  else
  {
    v13 = (a1 + 2092);
    while (1)
    {
      v14 = a3[a5];
      v15 = v14 >> 6;
      v16 = *(a2 + 8 * (v14 >> 6));
      result = 1;
      v18 = 1 << v14;
      if (((1 << v14) & v16) == 0)
      {
        break;
      }

      if (v14 >= 0x40)
      {
        v19 = 0;
        v20 = a2;
        do
        {
          v21 = *v20++;
          v22 = vcnt_s8(v21);
          v22.i16[0] = vaddlv_u8(v22);
          v19 += v22.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v19 = 0;
      }

      v23 = vcnt_s8(((v18 - 1) & v16));
      v23.i16[0] = vaddlv_u8(v23);
      v24 = *(a2 + 4 * (v19 + v23.i32[0]) + 52);
      if ((v24 & 3) != 3)
      {
        if ((v24 & 3) == 0)
        {
          return 1;
        }

        if ((v24 & 3) == 1)
        {
          v41 = (v24 & 0xFFFFFFFC) + *v13;
          v42 = a5 + 1;

          return rankSearchDiskLevel(a1, v41, a3, a4, v42, a6, a7, a8, a9);
        }

        else
        {
          v43 = ((v24 & 0xFFFFFFFC) + *v13);
          v44 = a5 + 1;

          return rankSearchDiskPage(a1, v43, a3, a4, v44, a6, a7, a8, a9);
        }
      }

      a2 = (v24 & 0xFFFFFFFC) + *v13;
      if (++a5 == a4)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t rankSearchDiskPage(uint64_t a1, unsigned int *a2, char *a3, unsigned int a4, unsigned int a5, __CFBinaryHeap *a6, __CFBinaryHeap *a7, uint64_t a8, void *a9)
{
  v47 = a8;
  v10 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v14 = a4 - a5;
  v15 = *a2;
  v16 = atomic_load((a1 + 4));
  v17 = sharedBuffer(v16);
  v18 = v17;
  if ((*(a1 + 2080) & 4) != 0)
  {
    if (v10 <= 0x3FF)
    {
      memcpy(v17, a3, v10);
      __dst = &v18[v10];
      *__dst = 0;
      memset(__s1, 0, sizeof(__s1));
      if (!v15)
      {
        goto LABEL_36;
      }

      v25 = 0;
      v26 = 0;
      v49 = a5 - v10;
      __s2a = &a3[a5];
      v52 = a2 + 3;
      v44 = v10;
      while (1)
      {
        v27 = v26;
        v26 = v52 + v25;
        v28 = v26[14];
        if (v27)
        {
          v29 = v27[14];
          if (v28 > v29)
          {
            memcpy(__s1 + v29, v27 + 15, v28 - v29);
          }
        }

        v30 = *(v26 + 6);
        if (v30 + v28 >= v14)
        {
          if (v10 == a5 || (v28 >= v14 ? (v31 = v14) : (v31 = v28), !memcmp(__s1, __s2a, v31)))
          {
            v32 = v14 - v28;
            if (v14 == v28)
            {
              goto LABEL_28;
            }

            if (v30 < v32)
            {
              v32 = v30;
            }

            if (!memcmp(v26 + 15, &__s2a[v28], v32))
            {
LABEL_28:
              v33 = v28 + a5;
              v34 = v10;
              v35 = v28 + a5 - v10;
              if (v35 < 1)
              {
                v33 = v34;
              }

              else
              {
                memcpy(__dst, __s1 + v28 - v35, v35);
                v30 = *(v26 + 6);
                LODWORD(v28) = v26[14];
              }

              v36 = v49 + v30 + v28;
              if (v36 >= 1)
              {
                v37 = v36 - (v35 & ~(v35 >> 31));
                memcpy(&v18[v33], &v26[v30 - v37 + 15], v37);
                v33 += v37;
              }

              v10 = v44;
              v18[v33] = 0;
              v38 = SITrieCompletionCreate(v18, v33, *(v26 + 2), *v26);
              if (v38)
              {
                v39 = v38;
                updated = updateCompletions(v38, a9, a6, a7, v47);
                v41 = updated;
                trieCompletionRelease(updated, v39);
                if (!v41)
                {
                  break;
                }
              }
            }
          }
        }

        v25 += *(v26 + 6) + 15;
        if (v25 >= v15)
        {
          goto LABEL_36;
        }
      }
    }

LABEL_12:
    v48 = 0;
    return v48 & 1;
  }

  if (a5 > 0x3FF)
  {
    goto LABEL_12;
  }

  memcpy(v17, a3, a5);
  v18[a5] = 0;
  if (!v15)
  {
LABEL_36:
    v48 = 1;
    return v48 & 1;
  }

  __s2 = a3;
  v19 = 0;
  v48 = 1;
  do
  {
    v20 = a2 + v19 + 12;
    memcpy(&v18[a5], v20 + 14, *(v20 + 6));
    v21 = *(v20 + 6) + a5;
    v18[v21] = 0;
    if (v14 <= *(v20 + 6) && !memcmp(v20 + 14, &__s2[a5], v14))
    {
      v22 = SITrieCompletionCreate(v18, v21, *(v20 + 2), *v20);
      if (v22)
      {
        v23 = v22;
        v24 = updateCompletions(v22, a9, a6, a7, v47);
        v48 = v24;
        trieCompletionRelease(v24, v23);
      }
    }

    v19 += *(v20 + 6) + 14;
  }

  while (v19 < v15);
  return v48 & 1;
}

BOOL updateCompletions(char *value, void *a2, __CFBinaryHeap *a3, CFBinaryHeapRef heap, uint64_t a5)
{
  if (CFBinaryHeapContainsValue(heap, value))
  {
LABEL_2:
    v10 = 1;
    goto LABEL_5;
  }

  if (a2)
  {
    v10 = (a2[2])(a2[1], *a2, value, heap, a5) != 0;
  }

  else
  {
    if (CFBinaryHeapGetCount(heap) < a5)
    {
      goto LABEL_2;
    }

    Minimum = CFBinaryHeapGetMinimum(heap);
    v12 = CFBinaryHeapGetMinimum(a3);
    v13 = 0.0;
    v14 = 0.0;
    if (value)
    {
      v14 = *(value + 4);
    }

    if (Minimum)
    {
      v13 = *(Minimum + 4);
    }

    if (v14 > v13)
    {
      goto LABEL_2;
    }

    if (v12)
    {
      v15 = Minimum ? *(Minimum + 4) : 0.0;
      if (v15 < v12[2])
      {
        goto LABEL_2;
      }
    }

    v10 = 0;
  }

LABEL_5:
  if (!CFBinaryHeapContainsValue(heap, value))
  {
    if (a2)
    {
      if ((a2[3])(a2[1], *a2, value, heap, a5))
      {
        (a2[4])(a2[1], *a2, value, heap, a5);
LABEL_32:
        v34 = heap;
        v35 = value;
LABEL_33:
        CFBinaryHeapAddValue(v34, v35);
      }
    }

    else
    {
      if (CFBinaryHeapGetCount(heap) < a5)
      {
        goto LABEL_32;
      }

      v16 = CFBinaryHeapGetMinimum(heap);
      v17 = v16;
      v18 = 0.0;
      v19 = 0.0;
      if (v16)
      {
        v19 = *(v16 + 4);
      }

      if (value)
      {
        v18 = *(value + 4);
      }

      if (v19 < v18)
      {
        v21 = *(v16 + 5);
        v20 = *(v16 + 6);
        v22 = *(v16 + 4);
        v23 = malloc_type_malloc(v20 + 4129, 0x100004002A458AFuLL);
        if (v23)
        {
          v24 = v23;
          *(v23 + 1) = (4 * v21);
          *(v23 + 2) = v22;
          v23[7] = v20;
          v25 = v23 + 8;
          v25[v20] = 0;
          memcpy(v25, v17 + 28, v20);
          v24[6] = 1;
          CFBinaryHeapAddValue(a3, v24);
          v26 = v24[6] - 1;
          v24[6] = v26;
          if (!v26)
          {
            free(v24);
          }
        }

        else
        {
          CFBinaryHeapAddValue(a3, 0);
        }

        CFBinaryHeapRemoveMinimumValue(heap);
        goto LABEL_32;
      }

      v28 = *(value + 5);
      v27 = *(value + 6);
      v29 = *(value + 4);
      v30 = malloc_type_malloc(v27 + 4129, 0x100004002A458AFuLL);
      if (!v30)
      {
        v34 = a3;
        v35 = 0;
        goto LABEL_33;
      }

      v31 = v30;
      *(v30 + 1) = (4 * v28);
      *(v30 + 2) = v29;
      v30[7] = v27;
      v32 = v30 + 8;
      v32[v27] = 0;
      memcpy(v32, value + 28, v27);
      v31[6] = 1;
      CFBinaryHeapAddValue(a3, v31);
      v33 = v31[6] - 1;
      v31[6] = v33;
      if (!v33)
      {
        free(v31);
      }
    }
  }

  return v10;
}

void rankSearchGetCursor(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4, __CFBinaryHeap *a5)
{
  v9 = *(a1 + 2092);
  v10 = a2 & 3;
  if (!v9)
  {
    if (v10 == 2)
    {
      v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      goto LABEL_13;
    }

    if (v10 != 1)
    {
      return;
    }

    v11 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
    goto LABEL_8;
  }

  if ((a2 & 3u) <= 1uLL)
  {
    if ((a2 & 3) == 0)
    {
      return;
    }

    v11 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + v9 + 1028);
LABEL_8:
    v12 = *v11;
    goto LABEL_13;
  }

  if (v10 == 2)
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4);
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + v9 + 32);
  }

LABEL_13:
  v13 = malloc_type_malloc(a4 + 4129, 0x100004002A458AFuLL);
  if (v13)
  {
    v14 = v13;
    *(v13 + 1) = a2;
    *(v13 + 2) = v12;
    v15 = v13 + 8;
    v14[7] = a4;
    v15[a4] = 0;
    memcpy(v15, a3, a4);
    v14[6] = 1;
    CFBinaryHeapAddValue(a5, v14);
    v16 = v14[6] - 1;
    v14[6] = v16;
    if (!v16)
    {

      free(v14);
    }
  }
}

uint64_t rankSearchList(uint64_t a1, uint64_t *a2, char *a3, int a4, unsigned int a5, __CFBinaryHeap *a6, __CFBinaryHeap *a7, unsigned int a8, void *a9)
{
  if (a5 <= 0x3FF)
  {
    v14 = atomic_load((a1 + 4));
    v15 = sharedBuffer(v14);
    memcpy(v15, a3, a5);
    v15[a5] = 0;
    if (a2)
    {
      v16 = a4 - a5;
      v9 = 1;
      do
      {
        memcpy(&v15[a5], a2 + 30, *(a2 + 14));
        v17 = *(a2 + 14) + a5;
        v15[v17] = 0;
        if (v16 <= *(a2 + 14) && !memcmp(a2 + 30, &a3[a5], v16))
        {
          v18 = SITrieCompletionCreate(v15, v17, *(a2 + 6), *(a2 + 2));
          if (v18)
          {
            v19 = v18;
            updated = updateCompletions(v18, a9, a6, a7, a8);
            v9 = updated;
            trieCompletionRelease(updated, v19);
          }
        }

        a2 = *a2;
      }

      while (a2);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void serializeListsRanked(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  v7 = 0;
  v8 = a2 + 20;
  __fd = a4;
  v25 = a2 + 20;
  do
  {
    v9 = *(v8 + 8 * v7);
    if ((v9 & 3) == 2)
    {
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      v11 = 1;
      v29 = lseek(v4, 0, 1);
      v12 = *(v6 + 2100);
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v14 = v10[1];
      v15 = malloc_type_malloc(1039 * v13 + 12, 0x100004077774924uLL);
      v16 = malloc_type_malloc(8 * v13, 0x2004093837F09uLL);
      LODWORD(v17) = 0;
      v18 = v10;
      do
      {
        LODWORD(v19) = v11;
        if (v13 <= v17)
        {
          v16 = malloc_type_realloc(v16, 16 * v13, 0x2004093837F09uLL);
          v13 *= 2;
        }

        *(v16 + v17) = v18;
        v18 = *v18;
        v17 = (v17 + 1);
        ++v11;
      }

      while (v18);
      qsort(v16, v17, 8uLL, nodeScoreCompare);
      v20 = 0;
      if (v17)
      {
        v21 = v16;
        v19 = v19;
        do
        {
          v22 = *v21++;
          v23 = &v15[v20 + 12];
          *(v23 + 12) = *(v22 + 28);
          *v23 = *(v22 + 16);
          *(v23 + 8) = *(v22 + 24);
          memcpy((v23 + 14), (v22 + 30), *(v22 + 28));
          v20 += *(v22 + 28) + 14;
          --v19;
        }

        while (v19);
      }

      v5 = a3;
      *v15 = v20;
      *(v15 + 4) = v14;
      v4 = __fd;
      write(__fd, v15, (v20 + 15) & 0x1FFFFFFFCLL);
      free(v16);
      free(v15);
      do
      {
        v24 = *v10;
        free(v10);
        v10 = v24;
      }

      while (v24);
      v8 = v25;
      v6 = a1;
      *(v25 + 8 * v7) = (v29 - a3) | 2;
    }

    else if ((v9 & 3) == 1)
    {
      serializeListsRanked(v6, v9 & 0xFFFFFFFFFFFFFFFCLL, v5, v4);
    }

    ++v7;
  }

  while (v7 != 256);
}

void serializeLists(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  v7 = 0;
  v8 = a2 + 4;
  __fd = a4;
  v35 = a2 + 4;
  do
  {
    v9 = *(v8 + 8 * v7);
    if ((v9 & 3) == 2)
    {
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      v39 = lseek(v4, 0, 1);
      v11 = *(v6 + 2100);
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = malloc_type_malloc(1031 * v12 + 4, 0x100004077774924uLL);
      v14 = malloc_type_malloc(8 * v12, 0x2004093837F09uLL);
      v15 = 0;
      if (v10)
      {
        v16 = v10;
        do
        {
          if (v12 <= v15)
          {
            v14 = malloc_type_realloc(v14, 16 * v12, 0x2004093837F09uLL);
            v12 *= 2;
          }

          *(v14 + v15) = v16;
          v16 = *v16;
          ++v15;
        }

        while (v16);
      }

      v17 = *(v6 + 2080);
      if ((v17 & 4) != 0)
      {
        v25 = v15;
        qsort(v14, v15, 8uLL, nodeStringCompare);
        if (v15)
        {
          v26 = 0;
          v20 = 0;
          v27 = 0;
          do
          {
            v28 = v27;
            v27 = *(v14 + v26);
            if (v28)
            {
              v29 = 0;
              v30 = *(v27 + 12);
              v31 = *(v27 + 12);
              while (v30 != v29)
              {
                if (*(v28 + 12) <= v29 || *(v27 + 14 + v29) != *(v28 + 14 + v29))
                {
                  v31 = v29;
                  break;
                }

                if (++v29 == 255)
                {
                  v31 = 255;
                  break;
                }
              }
            }

            else
            {
              v31 = 0;
              LOWORD(v30) = *(v27 + 12);
            }

            v32 = v13 + v20 + 4;
            v33 = v30 - v31;
            *(v32 + 4) = v33;
            *v32 = *(v27 + 8);
            *(v32 + 6) = v31;
            memcpy((v32 + 7), (v27 + v31 + 14), v33);
            v20 = v20 - v31 + *(v27 + 12) + 7;
            ++v26;
          }

          while (v26 != v25);
        }

        else
        {
          v20 = 0;
        }

        v24 = 10;
      }

      else
      {
        v18 = v15;
        if (v17)
        {
          v19 = nodeScoreCompare;
        }

        else
        {
          v19 = nodeStringCompare;
        }

        qsort(v14, v15, 8uLL, v19);
        v20 = 0;
        if (v15)
        {
          v21 = v14;
          do
          {
            v22 = *v21++;
            v23 = v13 + v20 + 4;
            *(v23 + 4) = *(v22 + 12);
            *v23 = *(v22 + 8);
            memcpy((v23 + 6), (v22 + 14), *(v22 + 12));
            v20 += *(v22 + 12) + 6;
            --v18;
          }

          while (v18);
        }

        v24 = 7;
      }

      v5 = a3;
      *v13 = v20;
      v4 = __fd;
      write(__fd, v13, (v24 + v20) & 0x1FFFFFFFCLL);
      free(v14);
      free(v13);
      do
      {
        v34 = *v10;
        free(v10);
        v10 = v34;
      }

      while (v34);
      v8 = v35;
      v6 = a1;
      *(v35 + 8 * v7) = (v39 - a3) | 2;
    }

    else if ((v9 & 3) == 1)
    {
      serializeLists(v6, v9 & 0xFFFFFFFFFFFFFFFCLL, v5, v4);
    }

    ++v7;
  }

  while (v7 != 256);
}

uint64_t serializeLevelsRanked(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, unsigned int *a6)
{
  v48 = *MEMORY[0x277D85DE8];
  v11 = 0uLL;
  for (i = 5; i != 517; i += 8)
  {
    v11 = vsubq_s32(v11, vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&a1[i]), vceqzq_s64(*&a1[i + 4]))));
  }

  v13 = vaddvq_s32(v11);
  if (v13 > 0xC7)
  {
    a5 = 1;
  }

  v44 = a5;
  if (a5)
  {
    v15 = *a6;
    bzero(v46, 0x400uLL);
    v16 = 0;
    *a6 = v15 + 1044;
    do
    {
      v17 = *&a1[2 * v16 + 5];
      if ((v17 & 3) == 1)
      {
        v18 = *a6;
        if (serializeLevelsRanked((v17 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, 1, 0, a6))
        {
          v19 = v18 | 1;
        }

        else
        {
          v19 = v18 | 3;
        }

        v46[v16] = v19;
      }

      else
      {
        v46[v16] = v17;
      }

      ++v16;
    }

    while (v16 != 256);
    v46[256] = a1[4];
    v47 = *a1;
    pwrite(a3, v46, 0x414uLL, v15 + a2);
    if (a4)
    {
LABEL_16:
      free(a1);
    }
  }

  else
  {
    v45 = a3;
    v42 = a4;
    v43 = v13;
    v21 = 4 * v13 + 52;
    v22 = *a6;
    MEMORY[0x28223BE20](a1);
    v24 = (&v39 - v23);
    bzero(&v39 - v23, v21);
    v33 = 0;
    v34 = 0;
    v40 = v22;
    v41 = v21;
    *a6 = v22 + v21;
    v35 = &v24[3].i8[4];
    do
    {
      v36 = *&a1[2 * v33 + 5];
      if (v36)
      {
        v24->i64[v33 >> 6] |= 1 << v33;
        if ((v36 & 3) == 1)
        {
          v37 = *a6;
          v25 = serializeLevelsRanked((v36 & 0xFFFFFFFFFFFFFFFCLL), a2, v45, 1, 0, a6);
          if (v25)
          {
            v38 = v37 | 1;
          }

          else
          {
            v38 = v37 | 3;
          }

          *&v35[4 * v34] = v38;
        }

        else
        {
          *&v35[4 * v34] = v36;
        }

        ++v34;
      }

      ++v33;
    }

    while (v33 != 256);
    if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v24)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v24[1])))))) != v43)
    {
      serializeLevelsRanked(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    v24[3].i32[0] = a1[4];
    v24[2] = *a1;
    pwrite(v45, v24, v41, v40 + a2);
    if (v42)
    {
      goto LABEL_16;
    }
  }

  return v44;
}

uint64_t serializeLevels(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, unsigned int *a6)
{
  v7 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v11 = 0uLL;
  for (i = 1; i != 513; i += 8)
  {
    v11 = vsubq_s32(v11, vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&a1[i]), vceqzq_s64(*&a1[i + 4]))));
  }

  v13 = vaddvq_s32(v11);
  if (v13 > 0xC7)
  {
    a5 = 1;
  }

  v47 = a5;
  if (a5)
  {
    v15 = *a6;
    bzero(v48, 0x400uLL);
    v16 = 0;
    *a6 = v15 + 1028;
    do
    {
      v17 = *&a1[2 * v16 + 1];
      if ((v17 & 3) == 1)
      {
        v18 = *a6;
        if (serializeLevels((v17 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, 1, 0, a6))
        {
          v19 = v18 | 1;
        }

        else
        {
          v19 = v18 | 3;
        }

        v48[v16] = v19;
      }

      else
      {
        v48[v16] = v17;
      }

      ++v16;
    }

    while (v16 != 256);
    v48[256] = *a1;
    v20 = v48;
    v21 = v15 + a2;
    v22 = a3;
    v23 = 1028;
  }

  else
  {
    v45 = v13;
    v46 = a4;
    v24 = 4 * v13 + 36;
    v25 = *a6;
    MEMORY[0x28223BE20](a1);
    v27 = (&v43 - v26);
    bzero(&v43 - v26, v24);
    v36 = 0;
    v37 = 0;
    v43 = v25;
    v44 = v24;
    *a6 = v25 + v24;
    v38 = &v27[2].i8[4];
    do
    {
      v39 = *&a1[2 * v36 + 1];
      if (v39)
      {
        v27->i64[v36 >> 6] |= 1 << v36;
        if ((v39 & 3) == 1)
        {
          v40 = *a6;
          v28 = serializeLevels((v39 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, 1, 0, a6);
          if (v28)
          {
            v41 = v40 | 1;
          }

          else
          {
            v41 = v40 | 3;
          }

          *&v38[4 * v37] = v41;
        }

        else
        {
          *&v38[4 * v37] = v39;
        }

        ++v37;
      }

      ++v36;
    }

    while (v36 != 256);
    v7 = v46;
    if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v27)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v27[1])))))) != v45)
    {
      serializeLevels(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    v27[2].i32[0] = *a1;
    v23 = v44;
    v21 = v43 + a2;
    v22 = a3;
    v20 = v27;
  }

  pwrite(v22, v20, v23, v21);
  if (v7)
  {
    free(a1);
  }

  return v47;
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void SILanguageModelShrinkLanguageGuessers()
{
  if (sLanguageIdentifierPool)
  {
    SIResourcePools::shrinkAll(sLanguageIdentifierPool);
  }
}

uint64_t SIIsLanguagePreferred(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (getAvailableLanguagesQueue(void)::onceAvailableLanguagesQueueToken != -1)
  {
    SIIsLanguagePreferred_cold_1();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __SIIsLanguagePreferred_block_invoke;
  v4[3] = &unk_279D03540;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(getAvailableLanguagesQueue(void)::gAvailableLanguagesQueue, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __SIIsLanguagePreferred_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  result = gAvailableLanguages;
  if (gAvailableLanguages)
  {
    *buffer = 0;
    v10 = 0;
    result = CFArrayGetCount(gAvailableLanguages);
    v3 = result;
    if (result >= 1)
    {
      v4 = strlen(*(a1 + 40));
      v5 = 0;
      if (v4 >= 8)
      {
        v6 = 8;
      }

      else
      {
        v6 = v4;
      }

      v7 = v6;
      while (1)
      {
        result = CFArrayGetValueAtIndex(gAvailableLanguages, v5);
        if (result)
        {
          v8 = result;
          v12.length = CFStringGetLength(result);
          v12.location = 0;
          buffer[CFStringGetBytes(v8, v12, 0x8000100u, 0x3Fu, 0, buffer, 16, 0)] = 0;
          result = strncmp(buffer, *(a1 + 40), v7);
          if (!result)
          {
            break;
          }
        }

        if (v3 == ++v5)
        {
          return result;
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

const __CFDictionary *SILanguageModelCreateWithOptions(CFURLRef url, const __CFDictionary *a2)
{
  values[1] = *MEMORY[0x277D85DE8];
  if (url)
  {
    if (!CFURLResourceIsReachable(url, 0))
    {
      return 0;
    }

    v4 = *MEMORY[0x277CBF168];
    values[0] = *MEMORY[0x277CBF168];
    v5 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 1, MEMORY[0x277CBF128]);
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = CFURLCopyResourcePropertiesForKeys(url, v5, 0);
    v8 = v7;
    if (!v7)
    {
      v13 = v6;
LABEL_88:
      CFRelease(v13);
      return v8;
    }

    v9 = CFDictionaryGetValue(v7, v4);
    v10 = *MEMORY[0x277CBED28];
    CFRelease(v8);
    CFRelease(v6);
    if (v9 != v10)
    {
      return 0;
    }
  }

  else
  {
    v10 = *MEMORY[0x277CBED28];
  }

  v57 = v10;
  values[0] = 0;
  v11 = *MEMORY[0x277CBED10];
  v55 = v11;
  v56 = v11;
  v53 = v10;
  v54 = v10;
  v51 = v10;
  v52 = v10;
  v49 = v11;
  v50 = v11;
  v47 = v11;
  v48 = v10;
  v45 = v11;
  v46 = v11;
  cf = 0;
  value = 0;
  v12 = v11;
  if (a2)
  {
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionLocale, &value);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionPreferredLanguages, &cf);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionBundleIdentifier, values);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionCacheResults, &v57);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionCacheResourcePaths, &v56);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionReducedResources, &v49);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionNoTimeout, &v45);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionEnableAdaptation, &v55);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionThresholdKeyphrases, &v50);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionNormalizeText, &v54);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionFilterByLexicon, &v53);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionFilterByBlocklist, &v52);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionFilterByAllowlist, &v51);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionEnableTokenizer, &v46);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionEnableLanguageModel, &v48);
    CFDictionaryGetValueIfPresent(a2, kSILanguageModelOptionEnableLexicon, &v47);
    v12 = v49;
  }

  if (v12 == v10)
  {
    v49 = v11;
    if (MGGetBoolAnswer())
    {
      v12 = v49;
    }

    else
    {
      v49 = v10;
      v12 = v10;
    }
  }

  v14 = v57 == v10;
  if (v57 == v10)
  {
    v15 = 2049;
  }

  else
  {
    v15 = 2048;
  }

  if (v56 == v10)
  {
    v14 = v15;
  }

  if (v12 == v10)
  {
    v16 = v14 | 0x400;
  }

  else
  {
    v16 = v14;
  }

  if (v45 == v10)
  {
    v16 |= 0x1000u;
  }

  if (v55 == v10)
  {
    v16 |= 2u;
  }

  if (v54 == v10)
  {
    v16 |= 4u;
  }

  if (v50 == v10)
  {
    v16 |= 0x40u;
  }

  if (v53 == v10)
  {
    v16 |= 8u;
  }

  if (v52 == v10)
  {
    v16 |= 0x10u;
  }

  if (v51 == v10)
  {
    v16 |= 0x20u;
  }

  if (v48 == v10)
  {
    v16 |= 0x80u;
  }

  if (v47 == v10)
  {
    v16 |= 0x100u;
  }

  if (v46 == v10)
  {
    v16 |= 0x200u;
  }

  if (value)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 | 0x2000;
  }

  v18 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (value)
  {
    v20 = CFLocaleGetValue(value, *MEMORY[0x277CBEE98]);
    if (v20)
    {
      Copy = CFStringCreateCopy(v18, v20);
    }

    else
    {
      Copy = 0;
    }

    LanguageID = SILanguagesGetLanguageID(value);
    if (LanguageID >= 2)
    {
      Language = SILanguagesGetLanguage(LanguageID);
      if (Language)
      {
        CFArrayAppendValue(Mutable, Language);
      }
    }
  }

  else
  {
    v22 = CFLocaleCopyCurrent();
    if (v22)
    {
      v23 = v22;
      v24 = CFLocaleGetValue(v22, *MEMORY[0x277CBEE98]);
      if (v24)
      {
        Copy = CFStringCreateCopy(v18, v24);
      }

      else
      {
        Copy = 0;
      }

      CFRelease(v23);
    }

    else
    {
      Copy = 0;
    }

    if (cf)
    {
      v27 = CFRetain(cf);
    }

    else
    {
      v27 = copyAvailableUserLanguages();
    }

    v28 = v27;
    if (v27)
    {
      Count = CFArrayGetCount(v27);
      if (Count >= 1)
      {
        v30 = Count;
        for (i = 0; i != v30; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v28, i);
          v33 = CFLocaleCreate(v18, ValueAtIndex);
          if (v33)
          {
            v34 = v33;
            v35 = SILanguagesGetLanguageID(v33);
            if (v35 >= 2)
            {
              v36 = SILanguagesGetLanguage(v35);
              if (v36)
              {
                CFArrayAppendValue(Mutable, v36);
              }
            }

            CFRelease(v34);
          }
        }
      }

      CFRelease(v28);
    }
  }

  if (Copy)
  {
    if (!CFStringsAreEqual(Copy, @"001"))
    {
      goto LABEL_76;
    }

    CFRelease(Copy);
  }

  Copy = CFStringCreateCopy(v18, @"US");
LABEL_76:
  v37 = malloc_type_malloc(0x28uLL, 0x1020040E5841EF2uLL);
  v8 = v37;
  if (v37)
  {
    v37[2] = 0;
    *(v37 + 6) = v17;
    v37[4] = SILanguagesGetRegionID(Copy);
    atomic_store(0, v8);
    v38 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v39 = v38;
    if (values[0])
    {
      CFDictionarySetValue(v38, @"bundleIdentifier", values[0]);
    }

    *(v8 + 8) = SILocalizationCreateWithOptions(v39);
    CFRelease(v39);
    updateAvailableLanguages(v8, Mutable);
    if (value)
    {
      v40 = SILanguagesGetLanguageID(value);
      *(v8 + 16) = SILanguageResourcesCreate(v40, *(v8 + 32), *(v8 + 24), values[0], url);
    }

    else if (!cf)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, v8, localeChangeCallback, *MEMORY[0x277CBEEB0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    atomic_fetch_add(v8, 1u);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (Mutable)
  {
    v13 = Mutable;
    goto LABEL_88;
  }

  return v8;
}

__CFArray *copyAvailableUserLanguages(void)
{
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v2 = CFLocaleCopyPreferredLanguages();
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        v8 = CFLocaleCreate(v0, ValueAtIndex);
        if (v8)
        {
          v9 = v8;
          LanguageID = SILanguagesGetLanguageID(v8);
          if (LanguageID >= 2)
          {
            Language = SILanguagesGetLanguage(LanguageID);
            CFArrayAppendValue(Mutable, Language);
          }

          CFRelease(v9);
        }
      }
    }

    CFRelease(v3);
  }

  return Mutable;
}

void updateAvailableLanguages(uint64_t a1, const __CFArray *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v6 = CFSetCreateMutable(v4, 0, MEMORY[0x277CBF158]);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      if (!CFSetContainsValue(v6, ValueAtIndex))
      {
        CFSetAddValue(v6, ValueAtIndex);
        if ((*(a1 + 25) & 0x20) != 0)
        {
          LanguageIDForIdentifier = SILanguagesGetLanguageIDForIdentifier(ValueAtIndex);
          v12[5] = 0;
          SIRetainLanguageResources(LanguageIDForIdentifier, *(a1 + 32), *(a1 + 24));
        }

        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  CFRelease(v6);
  if (getAvailableLanguagesQueue(void)::onceAvailableLanguagesQueueToken != -1)
  {
    SIIsLanguagePreferred_cold_1();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = ___ZL24updateAvailableLanguagesP14_LanguageModelPK9__CFArray_block_invoke;
  v12[3] = &__block_descriptor_tmp_75;
  v12[4] = Mutable;
  dispatch_sync(getAvailableLanguagesQueue(void)::gAvailableLanguagesQueue, v12);
}

void sub_26B7DAB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<SIResourceLock>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *SILanguageResourcesCreate(uint64_t a1, CFIndex a2, int a3, void *a4, void *a5)
{
  v9 = a1;
  v63 = *MEMORY[0x277D85DE8];
  Locale = SILanguagesGetLocale(a1);
  if (!Locale)
  {
    return 0;
  }

  v11 = Locale;
  v12 = malloc_type_malloc(0x48uLL, 0x10E004020B22391uLL);
  if (v12)
  {
    Current = CFAbsoluteTimeGetCurrent();
    value = a5;
    if (logger(void)::token != -1)
    {
      SILanguageResourcesCreate();
    }

    v14 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v60 = v9;
      _os_log_impl(&dword_26B7AA000, v14, OS_LOG_TYPE_INFO, "Creating lm resources for language ID %d", buf, 8u);
      if (logger(void)::token != -1)
      {
        SILanguageResourcesCreate();
      }
    }

    v15 = os_signpost_id_make_with_pointer(logger(void)::log, v12);
    if (logger(void)::token != -1)
    {
      v51 = v15;
      SILanguageResourcesCreate();
      v15 = v51;
    }

    v57 = a4;
    v55 = v11;
    spid = v15;
    v16 = v15 - 1;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = logger(void)::log;
      if (os_signpost_enabled(logger(void)::log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26B7AA000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LangResources", "start creating lm resources", buf, 2u);
      }
    }

    v12[4] = 0;
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 10) = v9;
    *(v12 + 14) = a3;
    *(v12 + 60) = 1;
    *(v12 + 16) = 0;
    v18 = SILanguagesCopyLocaleIdentifier(v9, a2);
    v19 = *MEMORY[0x277CBECE8];
    v56 = v16;
    if (v18)
    {
      v20 = v18;
      v21 = CFLocaleCreate(v19, v18);
      CFRelease(v20);
    }

    else
    {
      v21 = 0;
    }

    Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v23 = CFArrayCreateMutable(v19, 0, MEMORY[0x277CBF128]);
    v24 = v23;
    if (!Mutable || !v23)
    {
LABEL_48:
      if (a3)
      {
        OptionsDictionary = SIGeneralTrieCreateOptionsDictionary(1, 64, 0, 0, 0);
        v12[1] = SIGeneralTrieCreateMutableWithDictionary(OptionsDictionary);
        if (OptionsDictionary)
        {
          CFRelease(OptionsDictionary);
        }
      }

      else
      {
        v12[1] = 0;
      }

      if (v57 || (a3 & 0x1000) != 0)
      {
        v37 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v35 = v37;
        if ((a3 & 0x1000) != 0)
        {
          CFDictionarySetValue(v37, @"forceLoad", *MEMORY[0x277CBED28]);
        }

        v36 = v55;
        if (v57)
        {
          CFDictionarySetValue(v35, @"bundleIdentifier", v57);
        }
      }

      else
      {
        v35 = 0;
        v36 = v55;
      }

      v38 = SILexiconCacheCreateWithOptions(v35);
      v12[2] = v38;
      SILexiconCacheLoad(v38, v36, &__block_literal_global_90);
      if (v35)
      {
        CFRelease(v35);
      }

      v58 = 0.0;
      if (v9 > 18)
      {
        if (v9 == 19)
        {
          v39 = "di";
          goto LABEL_70;
        }

        if (v9 != 29)
        {
LABEL_71:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v24)
          {
            CFRelease(v24);
          }

          if (logger(void)::token != -1)
          {
            SILanguageResourcesCreate();
          }

          v41 = logger(void)::log;
          if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_INFO))
          {
            v42 = CFAbsoluteTimeGetCurrent();
            *buf = 67109376;
            v60 = v9;
            v61 = 2048;
            v62 = v42 - Current;
            _os_log_impl(&dword_26B7AA000, v41, OS_LOG_TYPE_INFO, "Created lm resources for language ID %d <%f s>", buf, 0x12u);
            if (logger(void)::token != -1)
            {
              SILanguageResourcesCreate();
            }
          }

          if (v56 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v43 = logger(void)::log;
            if (os_signpost_enabled(logger(void)::log))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_26B7AA000, v43, OS_SIGNPOST_INTERVAL_END, spid, "LangResources", "", buf, 2u);
            }
          }

          return v12;
        }
      }

      else
      {
        if (v9 == 10)
        {
          v39 = "of";
          goto LABEL_70;
        }

        if (v9 != 12)
        {
          goto LABEL_71;
        }
      }

      v39 = "de";
LABEL_70:
      TokenID = getTokenID(v12, v39, 2, 0, &v58);
      SILexiconCacheSetTokenID(v12[2], v36, v39, 2u, TokenID, 2, v58);
      goto LABEL_71;
    }

    v52 = v21;
    if ((a3 & 0x800) != 0)
    {
      v25 = SIGetResourceRootURLsForLocaleOfType(v21, @"LanguageModel");
      if (v25)
      {
        v26 = v25;
        Count = CFArrayGetCount(v25);
        if (Count >= 1)
        {
          v28 = Count;
          for (i = 0; i != v28; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v26, i);
            v64.length = CFArrayGetCount(v24);
            v64.location = 0;
            if (!CFArrayContainsValue(v24, v64, ValueAtIndex))
            {
              CFArrayAppendValue(v24, ValueAtIndex);
            }
          }
        }
      }
    }

    v31 = (v9 & 0xFFFFFFFE) == 4 || v9 == 54;
    if (v9 == 20)
    {
      v31 = 1;
    }

    *(v12 + 61) = v31;
    if (v9 <= 0x36 && ((1 << v9) & 0x40000000000030) != 0)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23090], @"Chinese.lm");
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23118], *MEMORY[0x277CBED10]);
    }

    else
    {
      v32 = value;
      if (v9 != 20 && (a3 & 0x400) == 0)
      {
        goto LABEL_35;
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x277D230C8], *MEMORY[0x277CBED28]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23118], *MEMORY[0x277CBED10]);
      if ((a3 & 0x800) != 0)
      {
        v45 = SIGetResourceRootURLsForLocaleOfType(v52, @"SearchQueryLanguageModel");
        if (v45)
        {
          v46 = v45;
          v47 = CFArrayGetCount(v45);
          if (v47 >= 1)
          {
            v48 = v47;
            for (j = 0; j != v48; ++j)
            {
              v50 = CFArrayGetValueAtIndex(v46, j);
              v65.length = CFArrayGetCount(v24);
              v65.location = 0;
              if (!CFArrayContainsValue(v24, v65, v50))
              {
                CFArrayAppendValue(v24, v50);
              }
            }
          }
        }
      }

      *(v12 + 60) = 0;
    }

    v32 = value;
LABEL_35:
    if ((a3 & 2) != 0 && v32)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23098], v32);
      v33 = *MEMORY[0x277CBED28];
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23120], *MEMORY[0x277CBED28]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23078], v33);
    }

    if ((a3 & 0x80) != 0)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277D230E0], v52);
      CFDictionarySetValue(Mutable, *MEMORY[0x277D230F8], *MEMORY[0x277CBED28]);
      if ((a3 & 0x800) != 0)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277D230A0], v24);
      }

      v12[3] = LMLanguageModelCreate();
      CFDictionaryRemoveAllValues(Mutable);
    }

    if ((a3 & 0x100) != 0 || v12[3])
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23168], v52);
      if ((a3 & 0x800) != 0)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277D230A0], v24);
      }

      v12[4] = LXLexiconCreate();
      CFDictionaryRemoveAllValues(Mutable);
    }

    CFArrayRemoveAllValues(v24);
    goto LABEL_48;
  }

  return v12;
}

void localeChangeCallback(__CFNotificationCenter *a1, uint64_t a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  if (a2)
  {
    v6 = copyAvailableUserLanguages();
    updateAvailableLanguages(a2, v6);
    if (v6)
    {

      CFRelease(v6);
    }
  }
}

atomic_uint *SILanguageModelRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add(result, 1u);
  }

  return result;
}

void SILanguageModelRelease(void *a1)
{
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    if (logger(void)::token != -1)
    {
      SILanguageResourcesCreate();
    }

    v2 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEBUG))
    {
      SILanguageModelRelease_cold_2(v2);
    }

    if (sLanguageIdentifierPool)
    {
      SIResourcePools::compactAll(sLanguageIdentifierPool);
    }

    v3 = a1[1];
    if (v3)
    {
      SILocalizationRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      SILanguageResourcesRelease(v4);
    }

    free(a1);
  }
}

uint64_t SILanguageModelGetDefaultModel(uint64_t a1, uint64_t a2)
{
  if (SILanguageModelGetDefaultModel::onceToken != -1)
  {
    SILanguageModelGetDefaultModel_cold_1();
  }

  return SILanguageModelGetDefaultModel::model;
}

uint64_t SILanguageModelGetDefaultModelWithContext(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __SILanguageModelGetDefaultModelWithContext_block_invoke;
  block[3] = &__block_descriptor_tmp_57_0;
  block[4] = a1;
  if (SILanguageModelGetDefaultModelWithContext::onceToken != -1)
  {
    dispatch_once(&SILanguageModelGetDefaultModelWithContext::onceToken, block);
  }

  return SILanguageModelGetDefaultModelWithContext::model;
}

void SILanguageModelPreheat(uint64_t a1, const __CFLocale *a2, uint64_t a3, uint64_t a4)
{
  SILanguagesGetLanguageID(a2);
  if (getResourcePools(void)::t != -1)
  {
    SILanguageModelPreheat_cold_1();
  }

  operator new();
}

__CFString *SILanguageModelGetLanguageGuessUsingMontrealInString()
{
  v3 = 0;
  getLanguageIdentifier(&v3);
  if (v3 && SIResourceLock::get(v3) && (NLLanguageIdentifierReset(), NLLanguageIdentifierConsumeString(), TopHypothesis = NLLanguageIdentifierGetTopHypothesis(), TopHypothesis <= 58))
  {
    Language = SILanguagesGetLanguage(TopHypothesis);
  }

  else
  {
    Language = 0;
  }

  std::unique_ptr<SIResourceLock>::~unique_ptr[abi:ne200100](&v3);
  return Language;
}

void sub_26B7DB72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<SIResourceLock>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t getLanguageIdentifier@<X0>(SIResourceLock **a1@<X8>)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (getLanguageIdentifier(void)::onceToken != -1)
  {
    getLanguageIdentifier();
  }

  v3[0] = &unk_287C3F190;
  v3[3] = v3;
  SIResourcePools::acquireResource(sLanguageIdentifierPool, 0, v3, 0, a1);
  return std::__function::__value_func<void * ()(void)>::~__value_func[abi:ne200100](v3);
}

SIResourceLock **std::unique_ptr<SIResourceLock>::~unique_ptr[abi:ne200100](SIResourceLock **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    SIResourceLock::~SIResourceLock(v2);
    MEMORY[0x26D681020]();
  }

  return a1;
}

__CFString *SILanguageModelGetLanguageGuessUsingMontreal()
{
  v3 = 0;
  getLanguageIdentifier(&v3);
  if (v3 && SIResourceLock::get(v3) && (NLLanguageIdentifierReset(), NLLanguageIdentifierConsumeCharacters(), TopHypothesis = NLLanguageIdentifierGetTopHypothesis(), TopHypothesis <= 58))
  {
    Language = SILanguagesGetLanguage(TopHypothesis);
  }

  else
  {
    Language = 0;
  }

  std::unique_ptr<SIResourceLock>::~unique_ptr[abi:ne200100](&v3);
  return Language;
}

void sub_26B7DB8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<SIResourceLock>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SILanguageModelCopyLocale(uint64_t result, uint64_t a2, const __CFLocale *ValidatedLocaleFromTokens, char a4)
{
  if (result)
  {
    v7 = result;
    if (!isValidTokenizedString(a2))
    {
      return 0;
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x2000000000;
    v55 = 0;
    if (getAvailableLanguagesQueue(void)::onceAvailableLanguagesQueueToken != -1)
    {
      SIIsLanguagePreferred_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZL22copyAvailableLanguagesv_block_invoke;
    block[3] = &unk_279D03750;
    block[4] = &v52;
    dispatch_sync(getAvailableLanguagesQueue(void)::gAvailableLanguagesQueue, block);
    v8 = v53[3];
    _Block_object_dispose(&v52, 8);
    v9 = MEMORY[0x277CBECE8];
    if (ValidatedLocaleFromTokens)
    {
      Value = CFLocaleGetValue(ValidatedLocaleFromTokens, *MEMORY[0x277CBEED0]);
      v11 = CFLocaleGetValue(ValidatedLocaleFromTokens, *MEMORY[0x277CBEED8]);
      v12 = *v9;
      prefix = Value;
      if (v11)
      {
        v13 = CFStringCreateWithFormat(v12, 0, @"%@-%@", Value, v11);
        if (v13)
        {
          v14 = v13;
          v15 = CFLocaleCreate(v12, v13);
          CFRelease(v14);
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = CFLocaleCreate(v12, Value);
      }
    }

    else
    {
      prefix = 0;
      v15 = 0;
      v12 = *MEMORY[0x277CBECE8];
    }

    if ((*(*(a2 + 24) + 16 * *(a2 + 40) - 8) + *(*(a2 + 24) + 16 * *(a2 + 40) - 16) - **(a2 + 24)) >= 300)
    {
      v16 = 300;
    }

    else
    {
      v16 = *(*(a2 + 24) + 16 * *(a2 + 40) - 8) + *(*(a2 + 24) + 16 * *(a2 + 40) - 16) - **(a2 + 24);
    }

    v17 = CFStringCreateWithCharactersNoCopy(v12, *(a2 + 16), v16, *MEMORY[0x277CBED00]);
    if (!v17)
    {
      ValidatedLocaleFromTokens = 0;
      if (!v15)
      {
LABEL_28:
        if (v8)
        {
          CFRelease(v8);
        }

        if (ValidatedLocaleFromTokens)
        {
          return MEMORY[0x26D680700](v12, ValidatedLocaleFromTokens);
        }

        return 0;
      }

LABEL_27:
      CFRelease(v15);
      goto LABEL_28;
    }

    v18 = v17;
    theArray = v8;
    v19 = NLStringTokenizerCopyBestStringLanguage();
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = v19;
    v21 = CFLocaleCreate(v12, v19);
    if (!v21)
    {
      CFRelease(v20);
      goto LABEL_25;
    }

    v22 = v21;
    v47 = v15;
    LanguageID = SILanguagesGetLanguageID(v21);
    Locale = SILanguagesGetLocale(LanguageID);
    CFRelease(v22);
    v25 = v20;
    v26 = Locale;
    CFRelease(v25);
    if (!Locale)
    {
      ValidatedLocaleFromTokens = 0;
      v15 = v47;
      goto LABEL_26;
    }

    v27 = MEMORY[0x26D680710](Locale);
    v15 = v47;
    if (v47)
    {
      v28 = MEMORY[0x26D680710](v47);
      if (CFStringHasPrefix(v28, v27))
      {
        ValidatedLocaleFromTokens = v26;
        goto LABEL_26;
      }

      if (!theArray)
      {
        goto LABEL_25;
      }

      v34 = MEMORY[0x26D680710](v26);
      if (CFStringHasPrefix(v34, prefix))
      {
        v45 = v27;
        Count = CFArrayGetCount(theArray);
        v36 = MEMORY[0x26D680710](v47);
        v57.location = 0;
        v57.length = Count;
        v27 = v45;
        v15 = v47;
        if (CFArrayContainsValue(theArray, v57, v36))
        {
          goto LABEL_26;
        }
      }
    }

    else if (!theArray)
    {
      goto LABEL_25;
    }

    v29 = v27;
    v30 = theArray;
    v56.length = CFArrayGetCount(theArray);
    v56.location = 0;
    if (CFArrayContainsValue(theArray, v56, v29))
    {
      if ((a4 & 1) == 0)
      {
        v31 = v7;
        v32 = v26;
        v33 = theArray;
LABEL_39:
        ValidatedLocaleFromTokens = GetValidatedLocaleFromTokens(v31, v32, v33, a2);
        goto LABEL_26;
      }

LABEL_25:
      ValidatedLocaleFromTokens = 0;
      goto LABEL_26;
    }

    if (CFArrayGetCount(theArray) < 2)
    {
      goto LABEL_25;
    }

    v48 = CFLocaleGetValue(v26, *MEMORY[0x277CBEED0]);
    v46 = CFArrayGetCount(theArray);
    if (v46 < 1)
    {
      goto LABEL_50;
    }

    v37 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v30, v37);
      if (CFStringHasPrefix(ValueAtIndex, v48))
      {
        if (CFStringGetLength(ValueAtIndex) >= 4)
        {
          break;
        }
      }

      ++v37;
      v30 = theArray;
      if (v46 == v37)
      {
        goto LABEL_50;
      }
    }

    v42 = CFLocaleCreate(v12, ValueAtIndex);
    if (v42)
    {
      v43 = v42;
      v44 = SILanguagesGetLanguageID(v42);
      ValidatedLocaleFromTokens = SILanguagesGetLocale(v44);
      CFRelease(v43);
    }

    else
    {
LABEL_50:
      ValidatedLocaleFromTokens = 0;
    }

    if ((v16 - 15) <= 0x54 && !ValidatedLocaleFromTokens)
    {
      v39 = guessedLocaleUsingMontreal(*(a2 + 16));
      v40 = v39;
      if ((a4 & 1) == 0)
      {
        goto LABEL_57;
      }

      ValidatedLocaleFromTokens = 0;
      if (v39 && prefix)
      {
        v41 = MEMORY[0x26D680710](v39);
        if (!CFStringHasPrefix(v41, prefix))
        {
          goto LABEL_25;
        }

LABEL_57:
        v31 = v7;
        v32 = v40;
        v33 = theArray;
        goto LABEL_39;
      }
    }

LABEL_26:
    CFRelease(v18);
    v8 = theArray;
    if (!v15)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  return result;
}

void *isValidTokenizedString(void *result)
{
  if (result)
  {
    if (*result && result[1] && result[2] && result[3] && result[4])
    {
      return (result[5] > 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GetValidatedLocaleFromTokens(uint64_t a1, const __CFLocale *a2, const __CFArray *a3, uint64_t *a4)
{
  v36 = a1;
  v38 = *MEMORY[0x277D85DE8];
  if (a2 && isValidTokenizedString(a4))
  {
    LanguageID = SILanguagesGetLanguageID(a2);
    v8 = LanguageID;
    v9 = v36;
    v10 = *(v36 + 25);
    v35 = a4;
    if ((v10 & 0x20) != 0)
    {
      if (languageIsPreferred(LanguageID))
      {
        v37 = 0;
        SIRetainLanguageResources(v8, *(v36 + 32), *(v36 + 24));
      }
    }

    else
    {
      if (*(v36 + 16))
      {
        MEMORY[0x28223BE20](LanguageID);
        v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v12, v11);
        ValidatedTokenScore = getValidatedTokenScore(*(v9 + 16), a4, v12);
        if (ValidatedTokenScore >= 0.5)
        {
          v14 = ValidatedTokenScore;
        }

        else
        {
          LODWORD(v8) = 0;
          v14 = 0.0;
        }
      }

      else
      {
        LODWORD(v8) = 0;
        v14 = 0.0;
      }

      Count = CFArrayGetCount(a3);
      if (Count >= 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = *MEMORY[0x277CBECE8];
        v33 = *MEMORY[0x277CBECE8];
        v34 = a3;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v17);
          v20 = CFLocaleCreate(v18, ValueAtIndex);
          v21 = v20;
          if (!v20)
          {
            goto LABEL_22;
          }

          v22 = SILanguagesGetLanguageID(v20);
          IsPreferred = languageIsPreferred(v22);
          if (IsPreferred)
          {
            break;
          }

LABEL_24:
          if (Count == ++v17)
          {
            goto LABEL_25;
          }
        }

        v24 = v36;
        v25 = *(v36 + 24);
        if ((v25 & 0x2000) != 0)
        {
          v37 = 0;
          SIRetainLanguageResources(v22, *(v36 + 32), v25);
        }

        if (*(v36 + 16))
        {
          v26 = v35;
          MEMORY[0x28223BE20](IsPreferred);
          v28 = v8;
          v8 = &v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v8, v27);
          v29 = v26;
          v30 = v8;
          LODWORD(v8) = v28;
          v18 = v33;
          a3 = v34;
          v31 = getValidatedTokenScore(*(v24 + 16), v29, v30);
          if (v31 >= 0.5 && v31 > v14)
          {
            LODWORD(v8) = v22;
            v14 = v31;
          }
        }

        CFRelease(v21);
LABEL_22:
        if (v16 > 1)
        {
          goto LABEL_25;
        }

        ++v16;
        goto LABEL_24;
      }

LABEL_25:
      if (v14 > 0.0)
      {
        return SILanguagesGetLocale(v8);
      }
    }
  }

  return 0;
}

const void *guessedLocaleUsingMontreal(const unsigned __int16 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  getLanguageIdentifier(&v5);
  if (v5 && SIResourceLock::get(v5) && (NLLanguageIdentifierReset(), NLLanguageIdentifierConsumeCharacters(), TopHypothesis = NLLanguageIdentifierGetTopHypothesis(), TopHypothesis >= 2))
  {
    Locale = SILanguagesGetLocale(TopHypothesis);
    v3 = Locale;
    if (Locale)
    {
      CFRetain(Locale);
    }
  }

  else
  {
    v3 = 0;
  }

  std::unique_ptr<SIResourceLock>::~unique_ptr[abi:ne200100](&v5);
  return v3;
}

void sub_26B7DC2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<SIResourceLock>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SILanguageModelCopyLocaleInString(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  v3 = 0;
  if (a1 && theString)
  {
    Length = CFStringGetLength(theString);
    if (Length < 2001)
    {
      v8 = Length;
      v9 = CFRetain(theString);
    }

    else
    {
      v8 = 2000;
      v17.location = 0;
      v17.length = 2000;
      v9 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], theString, v17);
    }

    v10 = v9;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    if (v9)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 0x40000000;
      v12[2] = __SILanguageModelCopyLocaleInString_block_invoke;
      v12[3] = &unk_279D035A8;
      v12[4] = &v13;
      v12[5] = a1;
      v12[6] = a3;
      SITextTokenizerEnumerateTokensInString(0, v9, v8, v12);
      CFRelease(v10);
      v3 = v14[3];
    }

    else
    {
      v3 = 0;
    }

    _Block_object_dispose(&v13, 8);
  }

  return v3;
}

void sub_26B7DC3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SILanguageModelCopyLocaleInString_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = SILanguageModelCopyLocale(*(a1 + 40), a4, *(a1 + 48), 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a7 = 1;
  return result;
}

BOOL SILanguageModelIsValidPhraseToken(unsigned __int16 *a1, uint64_t a2, char a3)
{
  if (a2 != 1)
  {
    return (a3 & 0x20) == 0;
  }

  v3 = *a1 - 38;
  v4 = v3 > 0x39;
  v5 = (1 << v3) & 0x2000000000000A1;
  return !v4 && v5 != 0 || (a3 & 0x20) == 0;
}

BOOL SILanguageModelIsStopWord(_BOOL8 result, const __CFLocale *a2, const char *a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    result = 0;
    if (a4)
    {
      if (a3 && a2)
      {
        if (*(v5 + 8))
        {
          SILocalizationLoad(*(v5 + 8), a2, &__block_literal_global_66);
          return SILocalizationGetTokenType(*(v5 + 8), a2, a3, a4, 0) == 5;
        }
      }
    }
  }

  return result;
}

void __SILanguageModelIsStopWord_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (logger(void)::token != -1)
    {
      SILanguageResourcesCreate();
    }

    v3 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_ERROR))
    {
      __SILanguageModelIsStopWord_block_invoke_cold_2(a2, v3);
    }
  }
}

uint64_t SILanguageModelEnumerateKeyPhrasesInString(uint64_t a1, uint64_t a2, CFStringRef theString, uint64_t a4)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  v9 = 0;
  if (a1 && a2 && Length)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 1;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2000000000;
    v13 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = __SILanguageModelEnumerateKeyPhrasesInString_block_invoke;
    v11[3] = &unk_279D03618;
    v11[7] = a1;
    v11[8] = a2;
    v11[4] = a4;
    v11[5] = &v14;
    v11[6] = v12;
    SITextTokenizerEnumerateTokensInString(a2, theString, 2000, v11);
    v9 = *(v15 + 24);
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v14, 8);
  }

  return v9;
}

void sub_26B7DC6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void *__SILanguageModelEnumerateKeyPhrasesInString_block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (a4[5])
  {
    v8 = result;
    v9 = result[7];
    v10 = v8[8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = __SILanguageModelEnumerateKeyPhrasesInString_block_invoke_2;
    v12[3] = &unk_279D035F0;
    v12[6] = a4;
    v12[7] = a2;
    v12[8] = a3;
    v11 = v8[6];
    v12[4] = v8[4];
    v12[5] = v11;
    result = EnumerateKeyPhrases(v9, v10, a4, v12);
    *(*(v8[5] + 8) + 24) = result;
    if ((*(*(v8[6] + 8) + 24) & 1) != 0 || !*(*(v8[5] + 8) + 24))
    {
      *a7 = 1;
    }
  }

  return result;
}

uint64_t EnumerateKeyPhrases(uint64_t a1, const __CFLocale *a2, uint64_t *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  LanguageID = SILanguagesGetLanguageID(a2);
  MEMORY[0x28223BE20](LanguageID);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  if ((*(a1 + 25) & 0x20) != 0)
  {
    result = languageIsPreferred(LanguageID);
    if (result)
    {
      v24 = 0;
      SIRetainLanguageResources(LanguageID, *(a1 + 32), *(a1 + 24));
    }
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v24 = 0;
      v25 = 0;
      if (a3[5] >= 1)
      {
        v11 = 0;
        v20 = xmmword_26B7FEE00;
        while (1)
        {
          v23 = v20;
          v22 = 0.0;
          KeyPhraseAtIndex = getKeyPhraseAtIndex(v10, v11, 0, a3, v9, &v24);
          v14 = KeyPhraseAtIndex;
          v15 = *(v10 + 56);
          if (*(v10 + 24))
          {
            v16 = (*(v10 + 56) & 0x80) == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            if (*(v10 + 32))
            {
              if ((v15 & 0x100) != 0)
              {
                if (lex_getCandidateKeyphrase(v10, a3, v9, KeyPhraseAtIndex, v13, &v23, &v22))
                {
                  v17 = 2;
                }

                else
                {
                  v17 = 0;
                }

                goto LABEL_20;
              }
            }

            else if ((v15 & 0x100) != 0)
            {
              *&v23 = KeyPhraseAtIndex;
              *(&v23 + 1) = v13;
              v17 = 1;
              goto LABEL_21;
            }

            v17 = 0;
          }

          else if (lm_getCandidateKeyphrase(v10, a3, v9, KeyPhraseAtIndex, v13, &v23, &v22))
          {
            v17 = 3;
          }

          else
          {
            v17 = 0;
          }

LABEL_20:
          v14 = v23;
LABEL_21:
          if (v14 == -1 || (v21 = 0, (*(a4 + 16))(a4, v14, *(&v23 + 1), v17, &v21, v22), (v21 & 1) == 0))
          {
            v11 = v25 + v24;
            if (v25 + v24 < a3[5])
            {
              continue;
            }
          }

          break;
        }
      }

      if ((*(a1 + 25) & 0x20) != 0)
      {
        os_unfair_lock_unlock((v10 + 64));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __SILanguageModelEnumerateKeyPhrasesInString_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t GetKeyPhraseRangeAtIndex(uint64_t a1, const __CFLocale *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, int *a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v25 = xmmword_26B7FEE00;
  LanguageID = SILanguagesGetLanguageID(a2);
  MEMORY[0x28223BE20](LanguageID);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v15, v14);
  if ((*(a1 + 25) & 0x20) == 0)
  {
    v16 = *(a1 + 16);
    if (!v16)
    {
LABEL_9:
      v20 = 0;
      goto LABEL_18;
    }

    KeyPhraseAtIndex = getKeyPhraseAtIndex(v16, a3, 1, a4, v15, a5);
    v19 = *(a1 + 16);
    if (!v19)
    {
      goto LABEL_8;
    }

    if (*(v19 + 24) && (*(v19 + 56) & 0x80) != 0)
    {
      v21 = lm_getCandidateKeyphrase(v19, a4, v15, KeyPhraseAtIndex, v17, &v25, a6) == 0;
      v22 = 3;
    }

    else
    {
      if (!*(v19 + 32) || (*(v19 + 57) & 1) == 0)
      {
LABEL_8:
        if ((*(v19 + 57) & 1) == 0)
        {
          goto LABEL_9;
        }

        *&v25 = KeyPhraseAtIndex;
        *(&v25 + 1) = v17;
        v20 = 1;
LABEL_18:
        if (a7)
        {
          *a7 = v20;
        }

        return v25;
      }

      v21 = !lex_getCandidateKeyphrase(v19, a4, v15, KeyPhraseAtIndex, v17, &v25, a6);
      v22 = 2;
    }

    if (v21)
    {
      v20 = 0;
    }

    else
    {
      v20 = v22;
    }

    goto LABEL_18;
  }

  if (languageIsPreferred(LanguageID))
  {
    v24[1] = 0;
    SIRetainLanguageResources(LanguageID, *(a1 + 32), *(a1 + 24));
  }

  return v25;
}

double GetKeyPhraseScoreAtIndex(uint64_t a1, const __CFLocale *a2, uint64_t a3, uint64_t *a4, int *a5)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v23[0] = 0.0;
  LanguageID = SILanguagesGetLanguageID(a2);
  v22 = xmmword_26B7FEE00;
  MEMORY[0x28223BE20](LanguageID);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if ((*(a1 + 25) & 0x20) == 0)
  {
    v12 = *(a1 + 16);
    if (!v12)
    {
LABEL_9:
      v17 = 0;
LABEL_18:
      v15 = *(&v22 + 1);
      goto LABEL_19;
    }

    KeyPhraseAtIndex = getKeyPhraseAtIndex(v12, a3, 1, a4, v11, 0);
    v15 = v13;
    v16 = *(a1 + 16);
    if (v16)
    {
      if (*(v16 + 24) && (*(v16 + 56) & 0x80) != 0)
      {
        v18 = lm_getCandidateKeyphrase(v16, a4, v11, KeyPhraseAtIndex, v13, &v22, v23) == 0;
        v19 = 3;
      }

      else
      {
        if (!*(v16 + 32) || (*(v16 + 57) & 1) == 0)
        {
          goto LABEL_8;
        }

        v18 = !lex_getCandidateKeyphrase(v16, a4, v11, KeyPhraseAtIndex, v13, &v22, v23);
        v19 = 2;
      }

      if (v18)
      {
        v17 = 0;
      }

      else
      {
        v17 = v19;
      }

      goto LABEL_18;
    }

LABEL_8:
    if (*(v16 + 57))
    {
      *&v22 = KeyPhraseAtIndex;
      *(&v22 + 1) = v13;
      v17 = 1;
LABEL_19:
      if (v15 == 1)
      {
        v23[0] = *&v11[40 * v22 + 24];
      }

      if (a5)
      {
        *a5 = v17;
      }

      return v23[0];
    }

    goto LABEL_9;
  }

  if (languageIsPreferred(LanguageID))
  {
    v21[1] = 0;
    SIRetainLanguageResources(LanguageID, *(a1 + 32), *(a1 + 24));
  }

  return v23[0];
}

uint64_t IsContentToken(uint64_t a1, const __CFLocale *a2, uint64_t *a3, uint64_t a4, double *a5, int *a6)
{
  v26[1] = *MEMORY[0x277D85DE8];
  LanguageID = SILanguagesGetLanguageID(a2);
  MEMORY[0x28223BE20](LanguageID);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v14, v13);
  SITokenInit(v14, a3, a4);
  if ((*(a1 + 25) & 0x20) == 0)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      updateTokenWithIDAndScoreAtIndex(v15, a3, v14, a4);
      v16 = *(a1 + 16);
      if (v16)
      {
        if (*(v16 + 24) && (*(v16 + 56) & 0x80) != 0)
        {
          v17 = 3;
          goto LABEL_15;
        }

        if (*(v16 + 32) && (*(v16 + 57) & 1) != 0)
        {
          v17 = 2;
          goto LABEL_15;
        }
      }

      v17 = (*(v16 + 56) >> 8) & 1;
    }

    else
    {
      v17 = 0;
    }

LABEL_15:
    v18 = 0;
    v19 = &v14[40 * a4];
    v20 = *(v19 + 3);
    if ((v19[32] & 1) != 0 && v20 != 0.0)
    {
      if ((LanguageID - 4) > 6)
      {
        v21 = -3.7;
      }

      else
      {
        v21 = dbl_26B7FEE70[(LanguageID - 4)];
      }

      if (v20 >= v21)
      {
        v18 = 0;
        if ((v19[32] & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_32;
      }

      v18 = 1;
    }

    if ((v19[32] & 1) == 0)
    {
LABEL_23:
      if (*(v19 + 4) == 7 && !*(a3[4] + 8 * a4))
      {
        v22 = *(v19 + 1);
        v23 = SILanguagesIsCJK(a2);
        v17 = 0;
        if ((v22 & 0xFFFFFFFFFFFFFFFELL) == 2 && v23 == 0)
        {
          v18 = 1;
        }

        else
        {
          v18 = v18;
        }
      }
    }

LABEL_32:
    if (a5)
    {
      *a5 = v20;
    }

    if (a6)
    {
      *a6 = v17;
    }

    return v18;
  }

  if (languageIsPreferred(LanguageID))
  {
    v26[0] = 0;
    SIRetainLanguageResources(LanguageID, *(a1 + 32), *(a1 + 24));
  }

  return 0;
}

uint64_t SILanguageModelIsContentTokenInString(uint64_t a1, const __CFLocale *a2, CFStringRef theString, uint64_t a4)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  v9 = 0;
  if (!a1)
  {
    return v9;
  }

  if (!a2)
  {
    return v9;
  }

  v10 = Length;
  if (!Length)
  {
    return v9;
  }

  LanguageID = SILanguagesGetLanguageID(a2);
  if (!languageIsPreferred(LanguageID))
  {
    return 0;
  }

  if (v10 < 2001)
  {
    v12 = CFRetain(theString);
  }

  else
  {
    v10 = 2000;
    v20.location = 0;
    v20.length = 2000;
    v12 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], theString, v20);
  }

  v13 = v12;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (v12)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = __SILanguageModelIsContentTokenInString_block_invoke;
    v15[3] = &unk_279D03640;
    v15[6] = a2;
    v15[7] = a4;
    v15[4] = &v16;
    v15[5] = a1;
    SITextTokenizerEnumerateTokensInString(0, v12, v10, v15);
    CFRelease(v13);
    v9 = *(v17 + 24);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_26B7DD48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t languageIsPreferred(int a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (getAvailableLanguagesQueue(void)::onceAvailableLanguagesQueueToken != -1)
  {
    SIIsLanguagePreferred_cold_1();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZL19languageIsPreferred12SILanguageID_block_invoke;
  v4[3] = &unk_279D03778;
  v5 = a1;
  v4[4] = &v6;
  dispatch_sync(getAvailableLanguagesQueue(void)::gAvailableLanguagesQueue, v4);
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __SILanguageModelIsContentTokenInString_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (a4[5] >= 1)
  {
    v9 = result;
    v10 = 0;
    while (1)
    {
      result = IsContentToken(*(v9 + 40), *(v9 + 48), a4, v10, 0, *(v9 + 56));
      if (result)
      {
        break;
      }

      if (++v10 >= a4[5])
      {
        goto LABEL_7;
      }
    }

    *(*(*(v9 + 32) + 8) + 24) = 1;
  }

LABEL_7:
  *a7 = 1;
  return result;
}

uint64_t _SILanguageModelGetCacheCount(uint64_t a1, const __CFLocale *a2)
{
  if (!a1 || !a2)
  {
    return -1;
  }

  LanguageID = SILanguagesGetLanguageID(a2);
  if ((*(a1 + 25) & 0x20) != 0)
  {
    v7 = LanguageID;
    if (languageIsPreferred(LanguageID))
    {
      SIRetainLanguageResources(v7, *(a1 + 32), *(a1 + 24));
    }

    return -1;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return -1;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return -1;
  }

  return SIGeneralTrieGetCount(v5);
}

void sub_26B7DD6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<SIResourceLock>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SIRetainLanguageResources(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (getResourcePools(void)::t != -1)
  {
    SILanguageModelPreheat_cold_1();
  }

  operator new();
}

dispatch_queue_t ___ZL26getAvailableLanguagesQueuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.SI.AvailableLanguages", 0);
  getAvailableLanguagesQueue(void)::gAvailableLanguagesQueue = result;
  return result;
}

CFArrayRef ___ZL24updateAvailableLanguagesP14_LanguageModelPK9__CFArray_block_invoke(uint64_t a1)
{
  if (gAvailableLanguages)
  {
    CFRelease(gAvailableLanguages);
    gAvailableLanguages = 0;
  }

  result = *(a1 + 32);
  if (!result)
  {
    result = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
  }

  gAvailableLanguages = result;
  return result;
}

uint64_t getTokenID(uint64_t a1, UInt8 *a2, CFIndex a3, unsigned int *a4, double *a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  if (v6 - 59 < 0xFFFFFFC7)
  {
    return 0;
  }

  v7 = 0;
  if (a2 && a3)
  {
    TokenID = 0;
    v26 = 0.0;
    v25 = 0;
    Locale = SILanguagesGetLocale(v6);
    v13 = *MEMORY[0x277CBECE8];
    v14 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a2, a3, 0x8000100u, 0, *MEMORY[0x277CBED00]);
    v15 = SILexiconCacheContainsTokenID(*(a1 + 16), Locale, a2, a3, &TokenID, &v25, &v26);
    if (v15)
    {
      if (TokenID)
      {
        goto LABEL_12;
      }
    }

    else
    {
      TokenID = _getTokenID(a1, v14, &v25, &v26);
      if (TokenID)
      {
        goto LABEL_12;
      }
    }

    if ((*(a1 + 56) & 4) != 0)
    {
      MutableCopy = CFStringCreateMutableCopy(v13, 0, v14);
      v16 = MutableCopy;
      if (MutableCopy)
      {
        CFStringLowercase(MutableCopy, Locale);
        if (!CFStringHasPrefix(v14, v16) && !SILexiconCacheContainsTokenIDInString(*(a1 + 16), Locale, v16, &TokenID, &v25, &v26))
        {
          TokenID = _getTokenID(a1, v16, &v25, &v26);
          if (TokenID)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }
      }

LABEL_13:
      if (TokenID)
      {
LABEL_14:
        if (!v15 && !v25)
        {
          v17 = *(a1 + 16);
          if (v16)
          {
            TokenTypeInString = SILexiconCacheGetTokenTypeInString(v17, Locale, v16);
          }

          else
          {
            TokenTypeInString = SILexiconCacheGetTokenType(v17, Locale, a2, a3);
          }

          v25 = TokenTypeInString;
        }

LABEL_33:
        if (TokenID && !v15 && v26 != 0.0)
        {
          SILexiconCacheSetTokenID(*(a1 + 16), Locale, a2, a3, TokenID, v25, v26);
          SILexiconCacheSetTokenIDInString(*(a1 + 16), Locale, v16, v26, TokenID, v25);
        }

        if (v25 == 8)
        {
          v25 = (*(a1 + 56) & 8) != 0;
        }

        if (v16)
        {
          CFRelease(v16);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        if (a5)
        {
          *a5 = v26;
        }

        if (a4)
        {
          *a4 = v25;
        }

        return TokenID;
      }

LABEL_22:
      v20 = *(a1 + 16);
      if (v16)
      {
        TokenID = SILexiconCacheGetTokenIDInString(v20, Locale, v16);
        TokenType = SILexiconCacheGetTokenTypeInString(*(a1 + 16), Locale, v16);
      }

      else
      {
        TokenID = SILexiconCacheGetTokenID(v20, Locale, a2, a3);
        TokenType = SILexiconCacheGetTokenType(*(a1 + 16), Locale, a2, a3);
      }

      if (TokenType)
      {
        v22 = TokenType;
      }

      else
      {
        v22 = 7;
      }

      v25 = v22;
      if (*(a1 + 24) && (*(a1 + 56) & 0x80) != 0)
      {
        LMLanguageModelJointProbability();
        v26 = v23;
      }

      goto LABEL_33;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  return v7;
}

CFIndex _getTokenID(uint64_t a1, CFStringRef theString, int *a3, double *a4)
{
  result = 0;
  if (theString)
  {
    if ((*(a1 + 40) - 59) >= 0xFFFFFFC7)
    {
      result = CFStringGetLength(theString);
      if (result)
      {
        TokenIDForString = 0;
        v19 = 0.0;
        if (*(a1 + 24) && (*(a1 + 56) & 0x80) != 0)
        {
          TokenIDForString = LMLanguageModelGetTokenIDForString();
          if (!TokenIDForString)
          {
            return TokenIDForString;
          }

          if (v19 == -99.0 || !*(a1 + 60))
          {
            LMLanguageModelJointProbability();
            v19 = v8;
          }
        }

        else
        {
          if (!*(a1 + 32))
          {
            return TokenIDForString;
          }

          if ((*(a1 + 57) & 1) == 0)
          {
            return TokenIDForString;
          }

          TokenIDForString = LXLexiconGetFirstTokenIDForString();
          if (!TokenIDForString)
          {
            return TokenIDForString;
          }
        }

        if (*(a1 + 32))
        {
          v15 = 0;
          v16 = &v15;
          v17 = 0x2000000000;
          v18 = 0;
          v11 = 0;
          v12 = &v11;
          v13 = 0x2000000000;
          v14 = 0;
          LXLexiconEnumerateEntriesForString();
          if (*(v16 + 24))
          {
            v9 = 8;
          }

          else
          {
            v9 = 0;
          }

          if (*(a1 + 24) && (*(a1 + 56) & 0x80) != 0)
          {
            v10 = &v19;
          }

          else
          {
            v10 = (v12 + 3);
          }

          v19 = *v10;
          _Block_object_dispose(&v11, 8);
          _Block_object_dispose(&v15, 8);
        }

        else
        {
          v9 = 0;
        }

        if (a3)
        {
          *a3 = v9;
        }

        if (a4)
        {
          *a4 = v19;
        }

        return TokenIDForString;
      }
    }
  }

  return result;
}

void sub_26B7DDD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___ZL11_getTokenIDP18_LanguageResourcesPK10__CFStringPjPd_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ((LXEntryGetMetaFlags() & 2) != 0 || (LXEntryGetMetaFlags() & 0x800000) != 0 || (LXEntryGetMetaFlags() & 0x1000000) != 0 || (LXEntryGetCategoryFlags() & 0x8000) != 0 || (LXEntryGetCategoryFlags() & 0x200) != 0 || (LXEntryGetCategoryFlags() & 0x100) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  LXEntryGetProbability();
  *(*(*(a1 + 40) + 8) + 24) = v5;
  *a3 = 1;
}

void SILanguageResourcesRelease(void *a1)
{
  if (a1)
  {
    if (logger(void)::token != -1)
    {
      SILanguageResourcesCreate();
    }

    v2 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEBUG))
    {
      SILanguageResourcesRelease(a1, v2);
    }

    v3 = a1[1];
    if (v3)
    {
      SIGeneralTrieRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      SILexiconCacheRelease(v4);
    }

    if (a1[3])
    {
      LMLanguageModelRelease();
    }

    v5 = a1[4];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

__n128 std::__function::__func<SIPreheatLanguageResources(SILanguageID,long,unsigned int,long,BOOL)::$_0,std::allocator<SIPreheatLanguageResources(SILanguageID,long,unsigned int,long,BOOL)::$_0>,void * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_287C3F058;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__value_func<void * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

os_log_t ___ZL6loggerv_block_invoke_0()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "SpotlightLanguageModel");
  logger(void)::log = result;
  return result;
}

void sub_26B7DE13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](va);
  MEMORY[0x26D681020](v4, v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_26B7DE32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](va);
  MEMORY[0x26D681020](v4, v3);
  _Unwind_Resume(a1);
}

CFTypeRef ___ZL22copyAvailableLanguagesv_block_invoke(uint64_t a1)
{
  result = gAvailableLanguages;
  if (gAvailableLanguages)
  {
    result = CFRetain(gAvailableLanguages);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

double getValidatedTokenScore(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0.0;
  if (a1)
  {
    if (*(a1 + 32))
    {
      v5 = *(a1 + 56);
      if ((v5 & 0x100) != 0 && *(a1 + 24) && (v5 & 0x80) != 0 && a2[5] >= 1)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (a3 + 32);
        do
        {
          SITokenInit(a3, a2, v10);
          updateTokenWithIDAndScoreAtIndex(a1, a2, a3, v10);
          v13 = *(v12 - 4);
          v14 = *v12;
          v15 = a2[3];
          if (*(v15 + v9 + 8) == 1 && ((v16 = *(a2[2] + 2 * *(v15 + v9)), v16 == 45) || v16 == 38))
          {
            v17 = v14 & (v13 != 7);
          }

          else
          {
            v17 = ((*(a2[4] + 8 * v10) & 0x20) == 0) & v14;
            if (v13 == 7)
            {
              v17 = 0;
            }
          }

          v11 += v17;
          if (++v10 >= a2[5])
          {
            break;
          }

          v12 += 40;
          v9 += 16;
        }

        while (v11 < 0x10);
        if (v11)
        {
          return (0.0 / v11);
        }
      }
    }
  }

  return v3;
}

uint64_t updateTokenWithIDAndScoreAtIndex(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = (a2[3] + 16 * a4);
  v8 = v7[1];
  v9 = *(a2[4] + 8 * a4);
  v10 = (a2[2] + 2 * *v7);
  v11 = *a2;
  v12 = (a2[1] + 16 * a4);
  v14 = *v12;
  v13 = v12[1];
  v47 = 0.0;
  v46 = 0;
  if (v8 != 1 || (v15 = *v10, v16 = 1, v17 = 1, v15 != 38) && v15 != 45)
  {
    v16 = 0;
    v17 = (v9 & 0x20) == 0;
  }

  if ((v9 & 0x800) != 0)
  {
    v46 = 4;
    v21 = *(result + 40) - 4;
    if (v21 > 6)
    {
      v22 = -3.7;
    }

    else
    {
      v22 = dbl_26B7FEE70[v21];
    }

    v47 = v22;
    v19 = 4;
    v17 = 1;
    v18 = 65;
  }

  else
  {
    result = getTokenID(result, (v11 + v14), v13, &v46, &v47);
    v18 = result;
    v19 = v46;
    if (v46)
    {
      v20 = 0;
    }

    else
    {
      v20 = v16;
    }

    if (v20 == 1)
    {
      v19 = 4;
LABEL_19:
      v46 = v19;
      goto LABEL_22;
    }

    if (result <= 0x40 && v46 == 0)
    {
      v47 = 0.0;
      v19 = 1;
      goto LABEL_19;
    }
  }

LABEL_22:
  if (v18)
  {
    v24 = v19 == 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = !v24;
  v26 = v25 & v17;
  if (v18 && v19 == 3)
  {
    if ((*(v6 + 56) & 0x20) != 0)
    {
      v19 = 3;
      if (!v26)
      {
        goto LABEL_83;
      }

      goto LABEL_33;
    }

    v19 = 0;
    v46 = 0;
  }

  if (!v26)
  {
    goto LABEL_83;
  }

LABEL_33:
  LOBYTE(v26) = 1;
  if (v19 > 7 || ((1 << v19) & 0x83) == 0)
  {
    goto LABEL_83;
  }

  v27 = *(v6 + 40);
  if (v27 <= 0x36 && ((1 << v27) & 0x40000000100030) != 0)
  {
    v28 = 1;
  }

  else
  {
    v28 = 3;
  }

  v29 = (v9 >> 5) & 1;
  if (v8 != 1)
  {
    LODWORD(v29) = 0;
  }

  v30 = v8 < v28 ? v29 : 1;
  v31 = v27 <= 0x36 && ((1 << v27) & 0x40000000100030) != 0 ? 15 : 20;
  v26 = v8 <= v31 ? v30 : 0;
  if (v19 != 7 || !v26)
  {
    goto LABEL_83;
  }

  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  result = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
  theSet = result;
  if (v8 < 1)
  {
    LOBYTE(v26) = 1;
    goto LABEL_83;
  }

  v44 = a3;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  while (1)
  {
    v36 = v33;
    v33 = v10[v35];
    if ((v33 & 0xFC00) != 0xD800)
    {
      v37 = v35;
      goto LABEL_58;
    }

    v37 = v35 + 1;
    if (v35 + 1 >= v8)
    {
      break;
    }

    v38 = v10[v37];
    if ((v38 & 0xFC00) != 0xDC00)
    {
      break;
    }

    v33 = (v33 << 10) - 56613888 + v38;
LABEL_58:
    if (v33 == v36)
    {
      ++v34;
    }

    else
    {
      if (v34 > 2)
      {
        break;
      }

      v34 = 1;
    }

    result = CFCharacterSetIsLongCharacterMember(Predefined, v33);
    v35 = v37 + 1;
    if (result)
    {
      if (v37)
      {
        result = CFCharacterSetIsLongCharacterMember(theSet, v36);
        if (result)
        {
          break;
        }
      }

      if (v35 < v8)
      {
        v39 = v10[v35];
        if ((v39 & 0xFC00) == 0xD800)
        {
          if (v37 + 2 >= v8)
          {
            goto LABEL_71;
          }

          v40 = v10[v37 + 2];
          if ((v40 & 0xFC00) != 0xDC00)
          {
            goto LABEL_71;
          }

          v39 = (v39 << 10) - 56613888 + v40;
        }

        result = CFCharacterSetIsLongCharacterMember(theSet, v39);
        if (result)
        {
          break;
        }
      }
    }

LABEL_71:
    if (v35 >= v8)
    {
      v41 = 1;
      goto LABEL_76;
    }
  }

  v41 = 0;
LABEL_76:
  if (v34 < 3)
  {
    LOBYTE(v26) = v41;
  }

  else
  {
    LOBYTE(v26) = 0;
  }

  a3 = v44;
LABEL_83:
  v42 = a3 + 40 * a4;
  v43 = v47;
  if (fabs(v47) == INFINITY)
  {
    v43 = 0.0;
  }

  *(v42 + 24) = v43;
  *(v42 + 16) = v46;
  *(v42 + 20) = v18;
  *(v42 + 32) = v26;
  return result;
}

uint64_t getKeyPhraseAtIndex(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v6 = a4[5];
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  if (a2 < 0)
  {
    v19 = 0;
    v14 = -1;
LABEL_32:
    if (a6)
    {
      *a6 = v14;
      a6[1] = v19;
    }

    return -1;
  }

  v33 = a6;
  v34 = v6;
  v9 = 0;
  v10 = 0;
  v45 = 0;
  v32 = v6 - a2;
  v11 = (a5 + 40 * a2);
  v12 = a2;
  v13 = -1;
  while (1)
  {
    v37 = v13;
    v14 = v12;
    v15 = v9;
    v16 = a2;
    v13 = a2 + v9;
    SITokenInit(a5, a4, a2 + v9);
    updateTokenWithIDAndScoreAtIndex(a1, a4, a5, v13);
    v17 = v11[1];
    v46 = *v11;
    v47 = v17;
    v48 = *(v11 + 4);
    if (v13)
    {
      SITokenInit(a5, a4, v13 - 1);
      updateTokenWithIDAndScoreAtIndex(a1, a4, a5, v13 - 1);
      v18 = *(v11 - 24);
      v43 = *(v11 - 40);
      v44 = v18;
      v45 = *(v11 - 1);
    }

    else
    {
      v43 = 0xFFFFFFFFFFFFFFFFLL;
      v44 = 0uLL;
      LOBYTE(v45) = 0;
    }

    v19 = v10 + 1;
    v20 = *(a1 + 40);
    if (checkIsNonPhraseToken(v20, &v43, &v46))
    {
      result = v37;
      a2 = v16;
      goto LABEL_19;
    }

    a2 = v16;
    if (!v15 && v47 == 2)
    {
      v14 = v16;
      goto LABEL_18;
    }

    if (v13 < v16)
    {
      v21 = *(v11 + 56);
      v40 = *(v11 + 40);
      v41 = v21;
      v42 = *(v11 + 9);
      v22 = checkIsNonPhraseToken(v20, &v46, &v40);
      a2 = v16;
      if (v22)
      {
        break;
      }
    }

    if (v13 >= 1)
    {
      v12 = v14 - 1;
      v9 = v15 - 1;
      v11 = (v11 - 40);
      ++v10;
      if (a3)
      {
        continue;
      }
    }

    v10 = v19;
    result = v14;
    goto LABEL_19;
  }

  v14 = v16 + v15;
LABEL_18:
  result = v37;
LABEL_19:
  if (result == -1 || !v10)
  {
    a6 = v33;
    goto LABEL_32;
  }

  v24 = a2 + 1;
  if (a2 + 1 < v34)
  {
    v25 = v14;
    v19 = 2 - v15;
    v36 = v32 - v15;
    v38 = result;
    v26 = v10 + v34 + ~a2;
    v27 = 40 * a2 + 40;
    while (1)
    {
      SITokenInit(a5, a4, v24);
      updateTokenWithIDAndScoreAtIndex(a1, a4, a5, v24);
      v28 = (a5 + v27);
      v29 = *(a5 + v27 + 16);
      v46 = *(a5 + v27);
      v47 = v29;
      v48 = *(a5 + v27 + 32);
      v30 = *(a5 + v27 - 24);
      v43 = *(a5 + v27 - 40);
      v44 = v30;
      v45 = *(a5 + v27 - 8);
      if (checkIsNonPhraseToken(*(a1 + 40), &v43, &v46))
      {
        break;
      }

      v31 = v28[1];
      v43 = *v28;
      v44 = v31;
      v45 = *(v28 + 4);
      ++v10;
      ++v24;
      v27 += 40;
      ++v19;
      if (v34 == v24)
      {
        v10 = v26;
        v19 = v36;
        break;
      }
    }

    v14 = v25;
    result = v38;
  }

  a6 = v33;
  if (v33)
  {
    *v33 = v14;
    v33[1] = v19;
  }

  if (!v10)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t lm_getCandidateKeyphrase(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v16 = 0;
  CandidateKeyphraseRangeFromSequenceRange = extractCandidateKeyphraseRangeFromSequenceRange(a1, a2, a3, a4, a5);
  if (CandidateKeyphraseRangeFromSequenceRange == -1)
  {
    return 0;
  }

  v13 = CandidateKeyphraseRangeFromSequenceRange;
  v14 = v12;
  if (lm_shouldFilterTokenSequence(a1, a3 + 40 * CandidateKeyphraseRangeFromSequenceRange, v12))
  {
    return 0;
  }

  result = lm_shouldAcceptKeyphraseCandidate(a1, a3, v13, v14, &v16);
  if (result)
  {
    if (a6)
    {
      *a6 = v13;
      a6[1] = v14;
    }

    if (a7)
    {
      *a7 = v16;
    }

    return 1;
  }

  return result;
}

BOOL lex_getCandidateKeyphrase(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, double *a7)
{
  v34 = *MEMORY[0x277D85DE8];
  CandidateKeyphraseRangeFromSequenceRange = extractCandidateKeyphraseRangeFromSequenceRange(a1, a2, a3, a4, a5);
  result = CandidateKeyphraseRangeFromSequenceRange != -1 && (v11 - 1) < 0xA;
  if (!result)
  {
    return result;
  }

  v15 = v11;
  v30 = a6;
  v31 = a7;
  v32 = 0.0;
  bzero(__s, 0x400uLL);
  v16 = 0;
  v17 = 0;
  v29 = v15;
  v18 = CandidateKeyphraseRangeFromSequenceRange + v15;
  v19 = (a3 + 40 * CandidateKeyphraseRangeFromSequenceRange + 24);
  v20 = 0.0;
  v21 = CandidateKeyphraseRangeFromSequenceRange;
  do
  {
    v22 = *v19;
    v23 = snprintf(&__s[v17], 1024 - v17, "%d/", *(v19 - 1));
    if (v22 != 0.0)
    {
      v20 = v20 + v22;
      v32 = v20;
      ++v16;
    }

    v17 += v23;
    ++v21;
    v19 += 5;
  }

  while (v21 < v18);
  if (v20 == 0.0)
  {
    v24 = v30;
    v25 = v29;
  }

  else
  {
    v24 = v30;
    v25 = v29;
    if (v16)
    {
      v20 = v20 / v16;
      v32 = v20;
    }
  }

  v26 = strlen(__s);
  __s[v26] = 0;
  v28 = *(a1 + 8);
  if (v28)
  {
    goto LABEL_19;
  }

  SIGeneralTrieContainsKey(0, __s, v26, 0, &v32);
  v28 = *(a1 + 8);
  if (v28)
  {
    v20 = v32;
LABEL_19:
    v27.n128_f64[0] = v20;
    SIGeneralTrieSetKeyWithScore(v28, __s, v26, 3, v27);
  }

  if (v24)
  {
    *v24 = CandidateKeyphraseRangeFromSequenceRange;
    v24[1] = v25;
  }

  result = 1;
  if (v31)
  {
    *v31 = v32;
  }

  return result;
}

BOOL checkIsNonPhraseToken(int a1, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 32) != 1)
  {
    return 1;
  }

  v3 = *a3;
  if (*a3 == -1 || !a3[1])
  {
    return 0;
  }

  v4 = *(a3 + 5);
  if (v4)
  {
    v5 = *(a3 + 4);
    if (v4 <= 0x40 && (v5 - 5) < 0xFFFFFFFE)
    {
      return 1;
    }

    if (!v5)
    {
      v6 = (a1 - 4) > 6 ? -3.7 : dbl_26B7FEE70[a1 - 4];
      if (*(a3 + 3) > v6)
      {
        return 1;
      }
    }
  }

  if (*a2 == -1)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a2 + 16);
  if (v8 == 3)
  {
    if (*(a3 + 4) != 2)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v8 == 2 && *(a3 + 4) == 2)
  {
    return 1;
  }

LABEL_20:
  v10 = *(a2 + 20);
  v11 = v7 + *a2;
  if (v10 <= 0x40 && v10 != 24 && v11 == v3 || v4 == 24 && v3 > v11)
  {
    return 1;
  }

  return v10 == 24 && v11 != v3;
}

uint64_t extractCandidateKeyphraseRangeFromSequenceRange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = -1;
  if (a4 == -1 || !a5)
  {
    return v5;
  }

  if (a4 < 0)
  {
    v11 = a2[3];
    v12 = (v11 + 16 * a4);
    v13 = *v12;
    v9 = a5;
LABEL_16:
    v16 = *(v12 - 2);
    v17 = *(v12 - 1);
    goto LABEL_17;
  }

  v6 = 16 * a4;
  v7 = (a3 + 40 * a4 + 20);
  v8 = a4;
  v9 = a5;
  while (1)
  {
    v10 = *v7;
    v7 += 10;
    if (v10 > 0x40)
    {
      break;
    }

    ++v8;
    v6 += 16;
    if (!--v9)
    {
      return -1;
    }
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v14 = (40 * a4 + 40 * a5 + a3 - 20);
    while (1)
    {
      v15 = *v14;
      v14 -= 10;
      if (v15 > 0x40)
      {
        break;
      }

      if (!--v9)
      {
        return -1;
      }
    }
  }

  v11 = a2[3];
  v12 = (v11 + v6);
  v13 = *(v11 + v6);
  if (v8)
  {
    a4 = v8;
    goto LABEL_16;
  }

  a4 = 0;
  v17 = 0;
  v16 = -1;
LABEL_17:
  v18 = (v11 + 16 * (v9 + a4));
  if (v9 + a4 >= a2[5])
  {
    v20 = 0;
    v19 = -1;
  }

  else
  {
    v19 = *v18;
    v20 = v18[1];
  }

  if (v16 != -1)
  {
    v21 = 0;
    if (v17 && v17 <= 1)
    {
      v22 = *(a2[2] + 2 * v16);
      v21 = vmaxv_u16(vceq_s16(vdup_n_s16(v22), 0x26002B002D005FLL)) | (v22 == 58);
    }

    if ((v21 & (v17 + v16 == v13)) != 0)
    {
      v9 = 0;
    }
  }

  if (v19 == -1 || !v20 || v20 > 1)
  {
    if (!v9)
    {
      return -1;
    }
  }

  else
  {
    v23 = *(a2[2] + 2 * v19);
    v24 = (vmaxv_u16(vceq_s16(vdup_n_s16(v23), 0x26002B002D005FLL)) | (v23 == 58)) & (*(v18 - 1) + *(v18 - 2) == v19);
    v5 = -1;
    if ((v24 & 1) != 0 || !v9)
    {
      return v5;
    }
  }

  if (v9 > 1 && (*(a1 + 56) & 8) != 0)
  {
    v9 -= *(a3 + 40 * a4 + 40 * v9 - 24) == 6;
  }

  else if (v9 < 1)
  {
    goto LABEL_48;
  }

  v25 = v9 + a4;
  v26 = (a3 + 40 * a4 + 16);
  v27 = a4;
  while (1)
  {
    v28 = *v26;
    v26 += 10;
    if (v28 == 2)
    {
      break;
    }

    if (++v27 >= v25)
    {
      goto LABEL_43;
    }
  }

  if (v27 != -1)
  {
    goto LABEL_49;
  }

LABEL_43:
  if (v9 >= 2)
  {
    v29 = (a3 + 40 * a4 + 16);
    v30 = a4;
    while (1)
    {
      v31 = *v29;
      v29 += 10;
      if (v31 != 7)
      {
        break;
      }

      if (++v30 >= v25)
      {
        v9 = 0;
        v32 = -1;
        goto LABEL_62;
      }
    }

    v36 = a3 + 40 * v25;
    if (!*(v36 - 24))
    {
      v37 = *(v36 - 16);
      v38 = *(a1 + 40) - 4;
      v39 = v38 > 6 ? -3.6 : dbl_26B7FEEA8[v38];
      if (v37 > v39)
      {
        --v9;
      }
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 -= *(a3 + 40 * a4 + 16) == 3;
LABEL_49:
  if ((a4 & 0x8000000000000000) == 0 && v9)
  {
    while (*(a3 + 40 * a4 - 24 + 40 * v9) == 2)
    {
      v33 = v9 < 4;
      if (v9 >= 4)
      {
        --v9;
      }

      else
      {
        v9 = 0;
      }

      if (v33)
      {
        v32 = -1;
      }

      else
      {
        v32 = a4;
      }

      if (v32 < 0 || !v9)
      {
        goto LABEL_62;
      }
    }
  }

  v32 = a4;
LABEL_62:
  if (v9)
  {
    v34 = v32 == -1;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    return -1;
  }

  else
  {
    return v32;
  }
}

uint64_t lm_shouldFilterTokenSequence(uint64_t result, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v4 = result;
    result = 1;
    if (a2)
    {
      if (a3)
      {
        if ((*(v4 + 56) & 0x10) != 0)
        {
          MEMORY[0x28223BE20](1);
          v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v7, v6);
          if (a3 >= 1)
          {
            v8 = (a2 + 20);
            v9 = v7;
            v10 = a3;
            do
            {
              v11 = *v8;
              v8 += 10;
              *v9 = v11;
              if (LMLanguageModelTokenSequenceIsBlocklisted())
              {
                return 1;
              }

              ++v9;
            }

            while (--v10);
          }

          if (LMLanguageModelTokenSequenceIsBlocklisted())
          {
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t lm_shouldAcceptKeyphraseCandidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  v38 = a1;
  v42 = *MEMORY[0x277D85DE8];
  if ((a4 - 11) < 0xFFFFFFFFFFFFFFF6)
  {
    return 0;
  }

  v34 = a5;
  v40 = 0.0;
  bzero(v41, 0x400uLL);
  v36 = &v33;
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v37, v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v13, v12);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v35 = a4;
  v17 = a3 + a4;
  v18 = (a2 + 40 * a3 + 20);
  do
  {
    v19 = *(v18 - 1);
    if (v19 != 4)
    {
      v39 = *v18;
      LMLanguageModelJointProbability();
      v21 = v20;
      if (v19 == 7)
      {
        ++v15;
      }

      v22 = snprintf(&v41[v16], 1024 - v16, "%d/", v39);
      if (v21 != 0.0)
      {
        *&v37[4 * v14] = v39;
        v13[v14++] = v21;
      }

      v16 += v22;
    }

    ++a3;
    v18 += 10;
  }

  while (a3 < v17);
  if (v15 > 1 && (v35 <= 3 && v35 == v15 || v35 >= 4 && v35 - v15 < v15))
  {
    return 0;
  }

  v23 = strlen(v41);
  v41[v23] = 0;
  v25 = *(v38 + 8);
  if (v25 && SIGeneralTrieContainsKey(v25, v41, v23, 0, &v40))
  {
    goto LABEL_28;
  }

  v26 = v14 - 1;
  if (v14 == 1)
  {
    v27 = *v13;
  }

  else
  {
    if (v14 <= 0)
    {
      goto LABEL_24;
    }

    LMLanguageModelJointProbability();
    v29 = *v13;
    v28 = v13 + 1;
    v30 = v29;
    do
    {
      v31 = *v28++;
      v30 = v30 + v31;
      --v26;
    }

    while (v26);
    if (vabdd_f64(v24.n128_f64[0], v30) == INFINITY)
    {
LABEL_24:
      v40 = 0.0;
      goto LABEL_28;
    }

    v27 = v24.n128_f64[0] - v30;
  }

  v40 = v27;
  if (v27 != 0.0)
  {
    v40 = v27 / v14;
  }

LABEL_28:
  v32 = *(v38 + 8);
  if (v32)
  {
    v24.n128_f64[0] = v40;
    SIGeneralTrieSetKeyWithScore(v32, v41, v23, 3, v24);
  }

  if ((*(v38 + 56) & 0x40) != 0 && (v14 == 1 && v40 > -3.5 || v14 >= 2 && fabs(v40) > 2.5))
  {
    return 0;
  }

  if (v34)
  {
    *v34 = v40;
  }

  return 1;
}

uint64_t ___ZL19languageIsPreferred12SILanguageID_block_invoke(uint64_t result)
{
  if (gAvailableLanguages)
  {
    v1 = result;
    Language = SILanguagesGetLanguage(*(result + 40));
    v3 = gAvailableLanguages;
    v4.length = CFArrayGetCount(gAvailableLanguages);
    v4.location = 0;
    result = CFArrayContainsValue(v3, v4, Language);
    if (result)
    {
      *(*(*(v1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

__n128 std::__function::__func<SIRetainLanguageResources(SILanguageID,long,unsigned int)::$_0,std::allocator<SIRetainLanguageResources(SILanguageID,long,unsigned int)::$_0>,void * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_287C3F1D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

CFIndex SICurrenciesGetCurrencyID(const void *a1)
{
  if (SICurrenciesGetCurrencyID::onceToken != -1)
  {
    SICurrenciesGetCurrencyID_cold_1();
  }

  v2 = SICurrenciesGetCurrencyID::sCurrencyStrings;
  v4.length = CFArrayGetCount(SICurrenciesGetCurrencyID::sCurrencyStrings);
  v4.location = 0;
  result = CFArrayGetFirstIndexOfValue(v2, v4, a1);
  if (result == -1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

CFArrayRef __SICurrenciesGetCurrencyID_block_invoke()
{
  result = CFArrayCreate(*MEMORY[0x277CBECE8], gCurrencyTags, 169, MEMORY[0x277CBF128]);
  SICurrenciesGetCurrencyID::sCurrencyStrings = result;
  return result;
}

__CFString *SICurrenciesGetCurrencyFromCode(uint64_t a1)
{
  v2 = 0;
  result = @"NONE";
  while (gCurrencyCodes[v2] != a1)
  {
    if (++v2 == 169)
    {
      return result;
    }
  }

  return gCurrencyTags[v2];
}

__CFString *SICurrenciesGetCurrencyFromID(unsigned int a1)
{
  if (a1 > 0xA8)
  {
    return @"NONE";
  }

  else
  {
    return gCurrencyTags[a1];
  }
}

void *fsi_create_walk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = malloc_type_calloc(1uLL, 0x4620uLL, 0x10F0040DF486990uLL);
  atomic_fetch_add_explicit(&gIteratorCount, 1u, memory_order_relaxed);
  if (initWalk(v4))
  {
    fsi_close(v4);
    return 0;
  }

  return v4;
}

uint64_t initWalk(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v57 = *MEMORY[0x277D85DE8];
  bzero(v1, 0x4620uLL);
  __strlcpy_chk();
  initCapabilities(v10);
  *v10 = 0;
  v47 = xmmword_26B7FF550;
  v48 = 0;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = &v47;
  }

  if (!v5)
  {
    v5 = fsi_attr_size(v11);
  }

  *(v10 + 9688) = malloc_type_malloc(0x1000uLL, 0x2004093837F09uLL);
  *(v10 + 9680) = SStackCreate(v5 << 8);
  *(v10 + 9640) = SQueueCreate(v5 << 8);
  *(v10 + 9696) = 0;
  *(v10 + 9704) = -1;
  v12 = *(v11 + 2);
  *(v10 + 1032) = *v11;
  *(v10 + 1048) = v12;
  *(v10 + 1056) = v5;
  v44 = 5;
  v45 = xmmword_26B7FF430;
  v46 = 0;
  fsi_attr_mapping_descriptor(v11, &v44, (v10 + 1128));
  bzero(v51, 0x8A8uLL);
  v41 = 5;
  v42 = xmmword_26B7FF440;
  v43 = 0;
  fsi_attr_mapping_descriptor(v11, &v41, v51);
  v13 = v52;
  v14 = v53;
  *(v10 + 1096) = v52;
  *(v10 + 1080) = v14;
  v15 = v54;
  v16 = v55;
  *(v10 + 1088) = v54;
  *(v10 + 1112) = v16;
  v17 = v56;
  *(v10 + 1120) = v56;
  *(v10 + 1028) = v3 & 0xFFFFFFF9 | 4;
  *(v10 + 9708) = 0;
  *(v10 + 9712) = (~v3 & 0x18) == 0;
  if (v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = &v47;
  }

  if ((*(v18 + 1) & 0x80000000) == 0)
  {
    initWalk_cold_6();
  }

  if (!v14)
  {
    initWalk_cold_5();
  }

  if (!v13)
  {
    initWalk_cold_4();
  }

  if (!v15)
  {
    initWalk_cold_3();
  }

  if (!v16)
  {
    initWalk_cold_2();
  }

  if (!v17)
  {
    initWalk_cold_1();
  }

  *(v10 + 9716) = ((v3 >> 5) & 1) == 0;
  *(v10 + 9720) = (v3 >> 6) & 1;
  *(v10 + 1064) = v3 & 1;
  v19 = (v10 + 8616);
  *(v10 + 8616) = 0;
  *(v10 + 3360) = v10 + 8616;
  *(v10 + 3376) = v10 + 8616;
  bzero(v50, 0x400uLL);
  if (*v9 == 46)
  {
    v20 = v9;
    do
    {
      if (v20[1] != 47)
      {
        break;
      }

      v21 = *(v20 + 2);
      v20 += 2;
    }

    while (v21 == 46);
  }

  if (__strlcpy_chk() > 0x3FF)
  {
    v25 = __error();
    v26 = 63;
LABEL_33:
    *v25 = v26;
    return 0xFFFFFFFFLL;
  }

  v22 = strrchr((v10 + 8616), 47);
  if (v22 && ((v23 = v22, *v19 != 47) || *(v10 + 8617)))
  {
    __strlcpy_chk();
    v24 = v23 - v19;
    if (v23 == v19)
    {
      *(v10 + 8617) = 0;
      v24 = 1;
    }

    else
    {
      *v23 = 0;
    }
  }

  else
  {
    __strlcpy_chk();
    v24 = 0;
    *v19 = 0;
  }

  *(v10 + 3352) = v24;
  *(v10 + 9736) = 0;
  if (!(*(v10 + 1096) | *(v10 + 1088) | *(v10 + 1112)))
  {
    v25 = __error();
    v26 = 22;
    goto LABEL_33;
  }

  v27 = malloc_type_malloc(*(v10 + 1056) + 4, 0x100004052888210uLL);
  if (md_getattrlist_real(v9, (v10 + 1032), v27, v5, 8))
  {
LABEL_30:
    v28 = *__error();
LABEL_31:
    *__error() = v28;
LABEL_53:
    free(v27);
    return 0xFFFFFFFFLL;
  }

  *(v10 + 9724) = *(v27 + *(v10 + 1088));
  *(v10 + 9728) = *(v27 + *(v10 + 1096));
  v29 = *(v10 + 1080);
  if (v29)
  {
    v30 = *v27;
    if (v29 + 8 <= v30)
    {
      v31 = v27 + v29;
      v32 = v27 + v29 + *(v27 + v29);
      if (&v32[*(v27 + v29 + 4)] <= v27 + v30)
      {
        v33 = *v9;
        if ((v33 == 46 || v33 == 47) && !v9[1])
        {
          strncpy(v32, v9, 2uLL);
          *(v31 + 1) = 2;
        }
      }
    }
  }

  if (*(v10 + 9708))
  {
    v34 = *(v27 + *(v10 + 1112));
  }

  else
  {
    bzero(v49, 0x400uLL);
    __strlcpy_chk();
    if ((*v9 != 46 || v9[1]) && __strlcat_chk() > 0x3FF)
    {
      v28 = 63;
      goto LABEL_31;
    }

    atomic_fetch_add_explicit(&gFDCount, 1u, memory_order_relaxed);
    v35 = open(v49, 32772);
    if (v35 > 0x7FF)
    {
      if ((v35 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v35 == -1)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      *(v10 + 4 * v35 + 9756) = 957;
      ++*(v10 + 9752);
    }

    v34 = v35;
  }

  if (pushStackEntry(v10, v34))
  {
    goto LABEL_53;
  }

  v37 = *(v10 + 3368);
  v38 = *(v10 + 3376);
  if (*(v10 + 9664))
  {
    v39 = *(v10 + 9672);
    if (v39)
    {
      v40 = (*(v39 + 16))(v39, v10);
    }

    else
    {
      v40 = 1;
    }
  }

  else
  {
    v40 = 0;
  }

  addIntoChildList(v10, v27, v37, v38, v40);
  free(v27);
  return 0;
}

void fsi_close(void *a1)
{
  internalClose(a1);
  atomic_fetch_add_explicit(&gIteratorCount, 0xFFFFFFFF, memory_order_relaxed);
  v2 = a1[1208];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[1209];
  if (v3)
  {
    _Block_release(v3);
  }

  free(a1);
}

void *fsi_set_sort_comparator(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 9664) = result;
  *(a1 + 9716) = 1;
  return result;
}

void *fsi_set_sort_check(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 9672) = result;
  return result;
}

char *fsi_create_hybrid(uint64_t a1, __int128 *a2, size_t a3, int a4, void *a5, int *a6, int *a7, uint64_t a8, double a9)
{
  v17 = malloc_type_calloc(1uLL, 0x4620uLL, 0x10F0040DF486990uLL);
  atomic_fetch_add_explicit(&gIteratorCount, 1u, memory_order_relaxed);
  __strlcpy_chk();
  initCapabilities(v17);
  *v17 = 2;
  v44[1] = 0;
  v44[2] = 0;
  v43 = 0;
  v44[0] = 0x200000000000005;
  v42 = 12;
  v40 = 12;
  v41 = -1;
  if (a5)
  {
    v18 = a7;
  }

  else
  {
    v18 = &v40;
  }

  if (a5)
  {
    v19 = a6;
  }

  else
  {
    v19 = &v42;
  }

  if (a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = v44;
  }

  v21 = *(a2 + 2);
  *(v17 + 4148) = *a2;
  *(v17 + 4164) = v21;
  v22 = *(v17 + 2074);
  if (*(v17 + 2074))
  {
    v23 = v20 + 1;
    v24 = v17 + 4152;
    v25 = *(v17 + 2074);
    do
    {
      v26 = *v23++;
      *v24++ |= v26;
      --v25;
    }

    while (v25);
    v27 = &v38;
    v38 = xmmword_26B7FF450;
    v39 = 0;
    v28 = v17 + 4152;
    do
    {
      v29 = *v27;
      v27 = (v27 + 4);
      *v28++ |= v29;
      --v22;
    }

    while (v22);
  }

  v37[1] = 0;
  v37[2] = 0;
  v37[0] = 0x400000000005;
  *(v17 + 138) = fsi_attr_offset(v17 + 1037, v37);
  walk = fsi_create_walk(a1, (v17 + 4148), 0, a8);
  *(v17 + 1076) = walk;
  if (walk)
  {
    *(v17 + 257) = a8;
    *(v17 + 427) = a9;
    v31 = *a2;
    *(v17 + 131) = *(a2 + 2);
    *(v17 + 1032) = v31;
    if (!a3)
    {
      a3 = fsi_attr_size(a2);
    }

    *(v17 + 132) = a3;
    *(v17 + 429) = a3;
    *(v17 + 430) = malloc_type_malloc(a3, 0xF0144666uLL);
    v32 = *v20;
    *(v17 + 433) = v20[2];
    *(v17 + 3448) = v32;
    v33 = malloc_type_malloc(*v19, 0x51A6ACCCuLL);
    memcpy(v33, v19, *v19);
    *(v17 + 434) = v33;
    v34 = malloc_type_malloc(*v18, 0x3C4E4938uLL);
    memcpy(v34, v18, *v18);
    *(v17 + 435) = v34;
    *(v17 + 856) = a4 | 1;
    fsi_attr_mapping_descriptor(v17 + 1037, v20, v17 + 4176);
    fsi_attr_mapping_descriptor(v17 + 1037, a2, v17 + 6392);
  }

  else
  {
    fsi_close(v17);
    return 0;
  }

  return v17;
}

uint64_t initCapabilities(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  bzero(&v12, 0x878uLL);
  result = statfs((a1 + 4), &v12);
  if (!result)
  {
    v11 = 0;
    v10 = xmmword_26B7FF568;
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    result = md_getattrlist_real(v12.f_mntonname, &v10, &v7, 0x24uLL, 0);
    if (!result)
    {
      v3 = DWORD1(v8);
      v4 = DWORD1(v7);
      v5 = BYTE8(v7) & BYTE8(v8);
      *(a1 + 3408) = BYTE8(v7) & BYTE8(v8) & 1;
      *(a1 + 3409) = (v5 & 8) != 0;
      v6 = ((v4 & v3) >> 14) & 1;
      if (!(*v12.f_fstypename ^ 0x73666361 | v12.f_fstypename[4]))
      {
        LOBYTE(v6) = 1;
      }

      *(a1 + 3410) = v6;
    }
  }

  return result;
}

char *fsi_create_search(uint64_t a1, __int128 *a2, unint64_t a3, int a4, void *a5, unsigned int *a6, unsigned int *a7, char a8, double a9)
{
  v16 = malloc_type_calloc(1uLL, 0x4620uLL, 0x10F0040DF486990uLL);
  atomic_fetch_add_explicit(&gIteratorCount, 1u, memory_order_relaxed);
  __strlcpy_chk();
  initCapabilities(v16);
  *v16 = 1;
  v16[1064] = a8 & 1;
  if (a8)
  {
    v35[1] = 0;
    v35[2] = 0;
    v35[0] = 0x200000000000005;
    *(v16 + 139) = fsi_attr_offset(a2, v35);
  }

  *(v16 + 857) = 1024;
  v17 = *a2;
  *(v16 + 131) = *(a2 + 2);
  *(v16 + 1032) = v17;
  if (!a3)
  {
    a3 = fsi_attr_size(a2);
  }

  *(v16 + 132) = a3;
  *(v16 + 429) = a3 << 10;
  *(v16 + 430) = malloc_type_malloc(a3 << 10, 0xD5DC0FC4uLL);
  v34[1] = 0;
  v34[2] = 0;
  v34[0] = 0x200000000000005;
  if (!a5)
  {
    a7 = &unk_26B7FF58C;
    a6 = &unk_26B7FF580;
  }

  v18 = v34;
  if (a5)
  {
    v18 = a5;
  }

  v19 = v18[2];
  *(v16 + 3448) = *v18;
  *(v16 + 433) = v19;
  v20 = malloc_type_malloc(*a6, 0xD021A4EAuLL);
  memcpy(v20, a6, *a6);
  *(v16 + 434) = v20;
  v21 = malloc_type_malloc(*a7, 0x3061C34CuLL);
  memcpy(v21, a7, *a7);
  *(v16 + 435) = v21;
  *(v16 + 856) = a4 | 1;
  *(v16 + 427) = a9;
  v22 = 1.0;
  if (a9 != 0.0)
  {
    v22 = a9;
  }

  v23 = *(v16 + 430);
  v24 = *(v16 + 429);
  v25 = *(v16 + 857);
  v26 = *(v16 + 434);
  v27 = *v26;
  v28 = *v21;
  *(v16 + 436) = v16 + 1032;
  *(v16 + 437) = v23;
  *(v16 + 438) = v24;
  *(v16 + 439) = v25;
  *(v16 + 440) = v22;
  *(v16 + 882) = 0;
  *(v16 + 442) = v26;
  *(v16 + 443) = v27;
  *(v16 + 444) = v21;
  *(v16 + 445) = v28;
  *(v16 + 223) = *(v16 + 3448);
  *(v16 + 448) = *(v16 + 433);
  v31 = 5;
  v32 = xmmword_26B7FF430;
  v33 = 0;
  fsi_attr_mapping_descriptor(v16 + 258, &v31, v16 + 1128);
  return v16;
}

void internalClose(uint64_t a1)
{
  if (!*a1)
  {
    if (!*(a1 + 9708))
    {
      v9 = *(a1 + 9696);
      if (v9)
      {
        v10 = a1 + 9756;
        do
        {
          v11 = *(*(a1 + 9688) + 8 * v9 - 8);
          if (!v11)
          {
            break;
          }

          v12 = *(v11 + 48);
          if (v12 != -1)
          {
            if ((v12 & 0x80000000) == 0)
            {
              atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
              if (v12 <= 2047)
              {
                v13 = *(a1 + 9752);
                *(a1 + 9752) = v13 - 1;
                v14 = *(v10 + 4 * (v12 & 0x7FFFFFFF));
                if (v14 < 0 || v13 <= 0)
                {
                  internalClose_cold_1();
                }

                if (v14)
                {
                  *(v10 + 4 * (v12 & 0x7FFFFFFF)) = -v14;
                }
              }
            }

            close(v12);
            v9 = *(a1 + 9696);
          }

          *(a1 + 9696) = --v9;
        }

        while (v9);
      }
    }

    free(*(a1 + 9688));
    free(*(a1 + 9648));
    *(a1 + 9648) = 0;
    v2 = *(a1 + 9704);
    if ((v2 & 0x80000000) == 0)
    {
      atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
      if (v2 <= 0x7FF)
      {
        v3 = *(a1 + 9752);
        *(a1 + 9752) = v3 - 1;
        v4 = *(a1 + 9756 + 4 * v2);
        if (v4 < 0 || v3 <= 0)
        {
          internalClose_cold_2();
        }

        if (v4)
        {
          *(a1 + 9756 + 4 * v2) = -v4;
        }
      }

      close(v2);
    }

    v5 = *(a1 + 9680);
    if (v5)
    {
      SStackDestroy(v5);
    }

    v6 = *(a1 + 9640);
    if (v6)
    {
      SQueueDestroy(v6);
    }
  }

  free(*(a1 + 3440));
  free(*(a1 + 3472));
  free(*(a1 + 3480));
  v7 = *(a1 + 8608);
  if (v7)
  {
    fsi_close(v7);
  }

  v8 = *(a1 + 1072);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 1072) = 0;
  }
}

uint64_t fsi_suspend(uint64_t result)
{
  do
  {
    *(result + 3400) = 1;
    result = *(result + 8608);
  }

  while (result);
  return result;
}

uint64_t fsi_reset(int *a1)
{
  v2 = 0;
  v7 = *MEMORY[0x277D85DE8];
  while (1)
  {
    *(a1 + 425) = 0;
    v3 = *a1;
    if (*a1 != 2)
    {
      break;
    }

    a1 = *(a1 + 1076);
    v2 = 1;
  }

  if (v3 == 1)
  {
    v4 = 0;
    a1[856] |= 1u;
  }

  else if (v3)
  {
    v4 = 0;
  }

  else
  {
    internalClose(a1);
    bzero(v6, 0x400uLL);
    __strlcpy_chk();
    if (initWalk(a1))
    {
      v4 = -1;
    }

    else
    {
      v4 = 0;
    }
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t fsi_level(uint64_t a1)
{
  v1 = *(a1 + 8608);
  if (!v1)
  {
    v1 = a1;
  }

  return *(v1 + 9696);
}

_DWORD *fsi_get_hybrid_mapping_descriptor(_DWORD *a1)
{
  if (*a1 == 2)
  {
    return a1 + 1598;
  }

  else
  {
    return 0;
  }
}

void fsi_set_visited_fileid_set(uint64_t a1, CFTypeRef cf)
{
  v3 = CFRetain(cf);
  v4 = *(a1 + 8608);
  if (v4)
  {
    v5 = *(v4 + 1072);
    if (v5)
    {
      CFRelease(v5);
      v4 = *(a1 + 8608);
    }

    v6 = (v4 + 1072);
  }

  else
  {
    v6 = (a1 + 1072);
    v7 = *(a1 + 1072);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  *v6 = v3;
}

uint64_t fsi_copy_visited_fileid_set(uint64_t a1)
{
  v1 = *(a1 + 8608);
  if (!v1)
  {
    v1 = a1;
  }

  v2 = *(v1 + 1072);
  if (v2)
  {
    CFRetain(*(v1 + 1072));
  }

  return v2;
}

uint64_t fsi_clear_visited_fileid(uint64_t result)
{
  v1 = *(result + 8608);
  if (!v1)
  {
    v1 = result;
  }

  *(v1 + 1065) = 0;
  return result;
}

uint64_t fsi_iterate_f(int *a1, __int128 *a2, uint64_t (*a3)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))
{
  v3 = a1;
  v151 = *MEMORY[0x277D85DE8];
  v145 = 0u;
  v146 = 0u;
  a1[851] = 0;
  v4 = *(a1 + 1076);
  if (v4)
  {
    *(v4 + 3404) = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = *v3;
  if (!*v3)
  {
    v7 = v3;
    goto LABEL_35;
  }

  if (v6 == 1)
  {
    if (*(v3 + 1064) == 1 && !*(v3 + 134))
    {
      *(v3 + 134) = SIUINT64SetCreate(*MEMORY[0x277CBECE8]);
    }

    v8 = CFAbsoluteTimeGetCurrent();
    while (1)
    {
      v149.d_ino = 0;
      if (searchfs(v3 + 4, (v3 + 872), &v149.d_ino, 0x8000103u, v3[856], (v3 + 898)))
      {
        v9 = *__error();
        v10 = v9 == 35;
        v11 = v9 == 35 || v9 == 0;
        if (!v11)
        {
          v3[856] &= ~1u;
          if (v9 != 35)
          {
            goto LABEL_361;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      if (v149.d_ino)
      {
        break;
      }

LABEL_29:
      v3[856] &= ~1u;
      if (!v10)
      {
LABEL_361:
        v23 = 0;
        v22 = v3[850];
LABEL_42:
        v3[851] = v22;
        v3[850] = 0;
        *__error() = v9;
        if (v9)
        {
          v26 = 1;
        }

        else
        {
          v26 = v23;
        }

        goto LABEL_350;
      }

LABEL_30:
      v19 = *(v3 + 427);
      v20 = CFAbsoluteTimeGetCurrent();
      v21 = v3;
      if (v19 < v20 - v8)
      {
        do
        {
          v21[850] = 1;
          v21 = *(v21 + 1076);
        }

        while (v21);
      }

      v22 = v3[850];
      if (v22)
      {
        v23 = 0;
        goto LABEL_42;
      }
    }

    v12 = *(v3 + 430);
    v13 = 1;
    while (1)
    {
      v14 = *(v3 + 134);
      *(v3 + 1065) = v14 != 0;
      if (v14)
      {
        v15 = *(v12 + *(v3 + 139));
        if (SIUINT64SetContainsValue(v14, v15))
        {
          goto LABEL_28;
        }

        v16 = *(v3 + 134) != 0;
      }

      else
      {
        v16 = 0;
        v15 = 0;
      }

      *(v3 + 1065) = v16;
      v17 = a3(v3, (v3 + 836), a2, v3[846], v12);
      if (*(v3 + 1065) == 1)
      {
        SIUINT64SetAddValue(*(v3 + 134), v15);
      }

      if (v17 == 1)
      {
        v22 = 0;
        v23 = -1;
        goto LABEL_42;
      }

LABEL_28:
      v12 = (v12 + *v12);
      if (v149.d_ino <= v13++)
      {
        goto LABEL_29;
      }
    }
  }

  if (v6 != 2)
  {
    v26 = 0xFFFFFFFFLL;
    goto LABEL_350;
  }

  *&v145 = Current;
  *(&v145 + 1) = a3;
  *&v146 = a2;
  *(&v146 + 1) = v3;
  v7 = *(v3 + 1076);
  a3 = hybridSearch;
  a2 = &v145;
LABEL_35:
  if (*(v7 + 1064) == 1 && !*(v7 + 1072))
  {
    *(v7 + 1072) = SIUINT64SetCreate(*MEMORY[0x277CBECE8]);
  }

  v24 = *(v7 + 9696);
  if (v24)
  {
    v25 = *(*(v7 + 9688) + 8 * v24 - 8);
  }

  else
  {
    v25 = 0;
  }

  v27 = -1;
  if (!*(v7 + 9708))
  {
    atomic_fetch_add_explicit(&gFDCount, 1u, memory_order_relaxed);
    v116 = open(".", 32772);
    v27 = v116;
    if (v116 > 0x7FF)
    {
      if ((v116 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        goto LABEL_342;
      }
    }

    else
    {
      *(v7 + 4 * v116 + 9756) = 1607;
      ++*(v7 + 9752);
    }

    if ((*(v7 + 9704) & 0x80000000) != 0 && (!v25 || (*(v25 + 48) & 0x80000000) != 0))
    {
      goto LABEL_47;
    }

    if (!MEMORY[0x26D6817B0]())
    {
      v135 = *(v7 + 9704);
      if ((v135 & 0x80000000) == 0)
      {
        atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v135 <= 0x7FF)
        {
          v136 = *(v7 + 9752);
          *(v7 + 9752) = v136 - 1;
          v137 = *(v7 + 9756 + 4 * v135);
          if (v137 < 0 || v136 <= 0)
          {
            fsi_iterate_f_cold_9();
          }

          if (v137)
          {
            *(v7 + 9756 + 4 * v135) = -v137;
          }
        }
      }

      close(v135);
      *(v7 + 9704) = -1;
      goto LABEL_47;
    }

    v117 = *__error();
    atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
    if (v27 <= 2047)
    {
      v118 = *(v7 + 9752);
      *(v7 + 9752) = v118 - 1;
      v119 = *(v7 + 9756 + 4 * v27);
      if (v119 < 0 || v118 <= 0)
      {
        fsi_iterate_f_cold_1();
      }

      if (v119)
      {
        *(v7 + 9756 + 4 * v27) = -v119;
      }
    }

    v120 = v27;
LABEL_341:
    close(v120);
    *__error() = v117;
LABEL_342:
    v26 = 1;
    goto LABEL_350;
  }

LABEL_47:
  v138 = v27;
  v28 = *(v7 + 1056);
  v29 = 10;
  if (*(v7 + 9712))
  {
    v29 = 0;
  }

  v142 = v28 << v29;
  v30 = malloc_type_malloc(v28 << v29, 0x1BB4496BuLL);
  v31 = 0;
  v140 = v7 + 9756;
  v141 = v30;
  v139 = v3;
  while (2)
  {
    if (*(v7 + 9700) == 2)
    {
      goto LABEL_144;
    }

    v31 = 0;
    *(v7 + 9700) = 0;
    if (*(v7 + 3400))
    {
LABEL_52:
      *(v7 + 9700) = 1;
      goto LABEL_143;
    }

    v31 = 0;
    LODWORD(v32) = 0;
    while (1)
    {
      v33 = *(v7 + 9696);
      if (!v33)
      {
        goto LABEL_284;
      }

      while (1)
      {
        v25 = *(*(v7 + 9688) + 8 * v33 - 8);
        if (!v25)
        {
          goto LABEL_142;
        }

        v34 = *v25;
        if (*v25 && v32 == 0)
        {
          break;
        }

        if (!*(v7 + 9708))
        {
          v36 = *(v25 + 48);
          if (v36 != -1)
          {
            if ((v36 & 0x80000000) == 0)
            {
              atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
              if (v36 <= 0x7FF)
              {
                v37 = *(v7 + 9752);
                *(v7 + 9752) = v37 - 1;
                v38 = *(v140 + 4 * (v36 & 0x7FF));
                if (v38 < 0 || v37 <= 0)
                {
                  fsi_iterate_f_cold_4();
                }

                if (v38)
                {
                  *(v140 + 4 * (v36 & 0x7FF)) = -v38;
                }
              }
            }

            close(v36);
            v33 = *(v7 + 9696);
          }
        }

        *(v7 + 9696) = --v33;
        if (!v33)
        {
LABEL_141:
          v25 = 0;
LABEL_142:
          if (v31 == 1)
          {
            goto LABEL_274;
          }

          goto LABEL_143;
        }

        v39 = *(*(v7 + 9688) + 8 * v33 - 8);
        if (v39)
        {
          if (*(v7 + 1080))
          {
            *(v7 + 9736) = *(v39 + 56);
          }

          if (*(v7 + 9708) || !MEMORY[0x26D6817B0](*(v39 + 48)))
          {
            v32 = 0;
          }

          else
          {
            v32 = *__error();
          }

          v40 = *(v7 + 9680);
          Data = SStackNextData(v40, *(v39 + 8));
          SStackPopBack(v40, Data);
          v33 = *(v7 + 9696);
          if (!v33)
          {
            goto LABEL_141;
          }
        }

        else
        {
          v32 = 0;
        }

        v25 = *(*(v7 + 9688) + 8 * v33 - 8);
        if (v25)
        {
          LODWORD(v32) = updateStackEntry(v7, v32, *(v25 + 16));
          *(v7 + 3348) = 2;
          v42 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
          if (v42 == 2)
          {
            v31 = 0;
          }

          else
          {
            v31 = v42;
          }

          if (v42 == 1)
          {
            goto LABEL_142;
          }

          v33 = *(v7 + 9696);
        }

        if (!v33)
        {
          goto LABEL_141;
        }
      }

      if (*(v7 + 9712) && !*(v7 + 1080))
      {
        v43 = SStackNextData(*(v7 + 9680), *v25);
        if (v43)
        {
          SStackDataLength(*(v7 + 9680), v43);
        }
      }

      else
      {
        v43 = 0;
      }

      *(v25 + 16) = v34;
      LODWORD(v32) = updateStackEntry(v7, 0, v34);
      if (*(v7 + 9664) && ((v44 = *(v7 + 9672)) == 0 || (*(v44 + 16))(v44, v7)))
      {
        v45 = *(v25 + 40);
        if (v45 != *(v25 + 24))
        {
          v46 = *(v25 + 32);
          *(v25 + 40) = v45 + 1;
          v47 = *(v46 + 8 * v45);
          goto LABEL_98;
        }
      }

      else if (v34 != *(v25 + 8))
      {
        v47 = SStackNextData(*(v7 + 9680), v34);
        goto LABEL_98;
      }

      v47 = 0;
LABEL_98:
      *v25 = v47;
      if (*&v34[*(v7 + 1096)] == 1 && *(v7 + 9664))
      {
        v48 = *(v7 + 9672);
        if (!v48)
        {
          goto LABEL_286;
        }

        if ((*(v48 + 16))(v48, v7))
        {
          break;
        }
      }

      if (*(v7 + 9708))
      {
        v49 = *(v7 + 1112);
        if (v49 + 8 <= *v34)
        {
          v50 = *&v34[v49];
LABEL_124:
          v60 = 1;
          goto LABEL_127;
        }
      }

      else
      {
        v51 = *(v7 + 1080);
        if (v51)
        {
          v52 = *v34;
          if (v51 + 8 <= v52)
          {
            v53 = &v34[v51];
            v54 = *(v53 + 1);
            v55 = &v53[*v53];
            if (&v55[v54] <= &v34[v52])
            {
              v43 = v55;
            }

            else
            {
              v43 = 0;
            }
          }

          else
          {
            v43 = 0;
          }
        }

        atomic_fetch_add_explicit(&gFDCount, 1u, memory_order_relaxed);
        v56 = open(v43, 32772);
        LODWORD(v50) = v56;
        if (v56 > 0x7FF)
        {
          if ((v56 & 0x80000000) != 0)
          {
            atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
            goto LABEL_126;
          }
        }

        else
        {
          *(v140 + 4 * v56) = 749;
          ++*(v7 + 9752);
        }

        if (!MEMORY[0x26D6817B0](v56))
        {
          v50 = v50;
          goto LABEL_124;
        }

        v57 = *__error();
        atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v50 <= 2047)
        {
          v58 = *(v7 + 9752);
          *(v7 + 9752) = v58 - 1;
          v59 = *(v140 + 4 * v50);
          if (v59 < 0 || v58 <= 0)
          {
            fsi_iterate_f_cold_3();
          }

          if (v59)
          {
            *(v140 + 4 * v50) = -v59;
          }
        }

        close(v50);
        *__error() = v57;
      }

LABEL_126:
      __error();
      v60 = 0;
      v50 = -1;
LABEL_127:
      *(v7 + 3348) = 1;
      if (*(v7 + 9720))
      {
        *(v7 + 3388) = 0;
        v61 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
        *(v7 + 3388) = 0;
      }

      else
      {
        v61 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
      }

      if (v61)
      {
        v62 = 0;
      }

      else
      {
        v62 = v60;
      }

      if (v62 == 1)
      {
        if (!pushStackEntry(v7, v50))
        {
          v110 = *(v7 + 9696);
          v30 = v141;
          v31 = 0;
          if (v110)
          {
            v25 = *(*(v7 + 9688) + 8 * v110 - 8);
            goto LABEL_143;
          }

LABEL_284:
          v25 = 0;
          goto LABEL_143;
        }

        cleanupAfterNoPush(v7, v50);
        v30 = v141;
      }

      else
      {
        cleanupAfterNoPush(v7, v50);
        if (v61 == 1)
        {
          v30 = v141;
          goto LABEL_274;
        }

        *(v7 + 3348) = 2;
        v11 = v61 == 3;
        v30 = v141;
        if (!v11 && a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392)) == 1)
        {
LABEL_274:
          if (*(v7 + 9708))
          {
            v31 = 1;
            v26 = 0xFFFFFFFFLL;
            if (v25)
            {
              goto LABEL_278;
            }
          }

          else
          {
            v121 = *(v7 + 9696);
            v26 = 0xFFFFFFFFLL;
            if (v121)
            {
              do
              {
                v122 = *(*(v7 + 9688) + 8 * v121 - 8);
                if (!v122)
                {
                  break;
                }

                v123 = *(v122 + 48);
                if (v123 != -1)
                {
                  if ((v123 & 0x80000000) == 0)
                  {
                    atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
                    if (v123 <= 2047)
                    {
                      v124 = *(v7 + 9752);
                      *(v7 + 9752) = v124 - 1;
                      v125 = *(v140 + 4 * (v123 & 0x7FFFFFFF));
                      if (v125 < 0 || v124 <= 0)
                      {
                        fsi_iterate_f_cold_6();
                      }

                      if (v125)
                      {
                        *(v140 + 4 * (v123 & 0x7FFFFFFF)) = -v125;
                      }
                    }
                  }

                  close(v123);
                  v121 = *(v7 + 9696);
                }

                *(v7 + 9696) = --v121;
              }

              while (v121);
              v26 = 0xFFFFFFFFLL;
            }
          }

          goto LABEL_322;
        }
      }

      v31 = 2;
      if (*(v7 + 3400))
      {
        goto LABEL_52;
      }
    }

    if (!*(v7 + 9664))
    {
      fsi_iterate_f_cold_2();
    }

LABEL_286:
    *(v7 + 3348) = 0;
    v31 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
    v30 = v141;
    if ((v31 & 0xFFFFFFFD) == 0)
    {
      v111 = *v25;
      if (*v25)
      {
        if (*&v111[*(v7 + 1096)] == 1)
        {
          updated = 0;
          do
          {
            *(v25 + 16) = v111;
            v113 = *(v25 + 40);
            if (v113 == *(v25 + 24))
            {
              v114 = 0;
            }

            else
            {
              v115 = *(v25 + 32);
              *(v25 + 40) = v113 + 1;
              v114 = *(v115 + 8 * v113);
            }

            *v25 = v114;
            updated = updateStackEntry(v7, updated, v111);
            *(v7 + 3348) = 0;
            v31 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
            if ((v31 & 0xFFFFFFFD) != 0)
            {
              break;
            }

            v111 = *v25;
            if (!*v25)
            {
              break;
            }
          }

          while (*&v111[*(v7 + 1096)] == 1);
        }
      }
    }

    if (v31 != 2)
    {
      goto LABEL_142;
    }

    v31 = 0;
LABEL_143:
    if (*(v7 + 3400))
    {
      goto LABEL_273;
    }

LABEL_144:
    if (!v25)
    {
      goto LABEL_273;
    }

    if (*(v7 + 3400) && !*(v7 + 9700))
    {
      *(v7 + 9700) = 2;
      goto LABEL_273;
    }

    *(v7 + 9700) = 0;
    bzero(v150, 0x400uLL);
    if (*(v7 + 9708))
    {
      d_name = v150;
      md_fsgetpath_fast(v150, *(v7 + 9724), *(v25 + 48));
    }

    else
    {
      d_name = ".";
    }

    if (*(v7 + 9712))
    {
      v64 = opendir(d_name);
      if (!v64)
      {
        goto LABEL_273;
      }

      v65 = v64;
      bzero(&v149, 0x418uLL);
      v148 = 0;
      if (*(v7 + 9664))
      {
        v66 = *(v7 + 9672);
        if (v66)
        {
          v67 = (*(v66 + 16))(v66, v7);
        }

        else
        {
          v67 = 1;
        }
      }

      else
      {
        v67 = 0;
      }

      while (1)
      {
        while (1)
        {
LABEL_221:
          if (v31 != 1 && !readdir_r(v65, &v149, &v148))
          {
            v92 = v148;
            if (v148)
            {
              continue;
            }
          }

          closedir(v65);
          if (*(v7 + 9716) && (!*(v7 + 9664) || (v103 = *(v7 + 9672)) != 0 && ((*(v103 + 16))(v103, v7) & 1) == 0))
          {
            if (v31 != 1)
            {
              *&v147.st_dev = 0;
              v104 = SQueuePeekData(*(v7 + 9640), &v147);
              if (*&v147.st_dev >= 4uLL)
              {
                v105 = v104;
                v106 = *v104;
                if (*&v147.st_dev >= v106)
                {
                  v107 = 0;
                  do
                  {
                    v107 = updateStackEntry(v7, v107, v105);
                    *(v7 + 3348) = 0;
                    v108 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
                    SQueueDropData(*(v7 + 9640), v106);
                    if (v108 == 2)
                    {
                      v31 = 0;
                    }

                    else
                    {
                      v31 = v108;
                    }

                    if (v31 == 1)
                    {
                      break;
                    }

                    *&v147.st_dev = 0;
                    v109 = SQueuePeekData(*(v7 + 9640), &v147);
                    if (*&v147.st_dev < 4uLL)
                    {
                      break;
                    }

                    v105 = v109;
                    v106 = *v109;
                  }

                  while (*&v147.st_dev >= v106);
                }
              }

              v30 = v141;
            }

            SQueueEmpty(*(v7 + 9640));
          }

          else
          {
            finishChildList(v7);
          }

          goto LABEL_273;
          if (v148->d_name[0] != 46 || v148->d_name[1] && (v148->d_name[1] != 46 || v148->d_name[2]))
          {
            if (*(v7 + 9708))
            {
              md_fsgetpath_fast(v150, *(v7 + 9724), v148->d_ino);
              v92 = v148;
            }

            else
            {
              d_name = v148->d_name;
            }

            d_type = v92->d_type;
            if (!d_type)
            {
              memset(&v147, 0, sizeof(v147));
              v94 = md_lstat_real(d_name, &v147);
              v95 = v148;
              if (!v94)
              {
                v148->d_type = v147.st_mode >> 12;
              }

              d_type = v95->d_type;
            }

            v96 = d_type == 8 || d_type == 4;
            if (v96 && (!md_getattrlist_real(d_name, (v7 + 1032), v30, v142, 8) || !*__error()))
            {
              break;
            }
          }
        }

        if (v148->d_type != 8)
        {
          break;
        }

        if (*(v7 + 9724) == *(v30 + *(v7 + 1088)))
        {
          if (!*(v7 + 9716))
          {
            updateStackEntry(v7, 0, v30);
            *(v7 + 3348) = 0;
            v102 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
            if (v102 == 2)
            {
              v31 = 0;
            }

            else
            {
              v31 = v102;
            }

            goto LABEL_221;
          }

          if (!v67)
          {
            SQueuePushData(*(v7 + 9640), *v30, v30);
            goto LABEL_221;
          }

          v97 = v7;
          v98 = v30;
          d_namlen = 0;
          v100 = 0;
          v101 = 1;
          goto LABEL_250;
        }
      }

      if ((*(v30 + *(v7 + 1120)) & 3) != 0 || *(v7 + 9724) != *(v30 + *(v7 + 1088)))
      {
        goto LABEL_221;
      }

      d_namlen = v148->d_namlen;
      v100 = v148->d_name;
      v97 = v7;
      v98 = v30;
      v101 = v67;
LABEL_250:
      addIntoChildList(v97, v98, d_namlen, v100, v101);
      goto LABEL_221;
    }

    atomic_fetch_add_explicit(&gFDCount, 1u, memory_order_relaxed);
    v68 = open(d_name, 32772);
    v69 = v68;
    v70 = v68;
    if (v68 > 0x7FF)
    {
      if ((v68 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        v3 = v139;
        goto LABEL_273;
      }
    }

    else
    {
      *(v140 + 4 * v68) = 1654;
      ++*(v7 + 9752);
    }

    while (2)
    {
      v71 = md_getattrlistbulk_real(v69, (v7 + 1032), v30, v142, 8);
      if ((v71 & 0x80000000) == 0)
      {
        v72 = v71;
        if (!v71)
        {
          v82 = v31 != 1;
          goto LABEL_193;
        }

        if (*(v7 + 9664))
        {
          v73 = *(v7 + 9672);
          if (v73)
          {
            v74 = (*(v73 + 16))(v73, v7);
          }

          else
          {
            v74 = 1;
          }
        }

        else
        {
          v74 = 0;
        }

        v75 = 0;
        v31 = 0;
        v76 = 1;
        while (2)
        {
          if (*(v7 + 9724) == *(v30 + *(v7 + 1088)))
          {
            v77 = *(v30 + *(v7 + 1096));
            if ((v77 - 1) <= 1)
            {
              v78 = *(v7 + 1072);
              if (!v78 || (SIUINT64SetContainsValue(v78, *(v30 + *(v7 + 1112))) & 1) == 0)
              {
                if (v77 == 1)
                {
                  if (*(v7 + 9716))
                  {
                    if (v74)
                    {
                      v79 = v7;
                      v80 = v30;
                      v81 = 1;
                      goto LABEL_178;
                    }

                    SQueuePushData(*(v7 + 9640), *v30, v30);
                  }

                  else
                  {
                    v75 = updateStackEntry(v7, v75, v30);
                    *(v7 + 3348) = 0;
                    *(v7 + 1065) = *(v7 + 1072) != 0;
                    v31 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
                    if (*(v7 + 1065) == 1)
                    {
                      SIUINT64SetAddValue(*(v7 + 1072), *(*(v7 + 3392) + *(v7 + 1112)));
                    }

                    if (v31 == 2)
                    {
                      v31 = 0;
                    }
                  }
                }

                else if ((*(v30 + *(v7 + 1120)) & 3) == 0)
                {
                  v79 = v7;
                  v80 = v30;
                  v81 = v74;
LABEL_178:
                  addIntoChildList(v79, v80, 0, 0, v81);
                }
              }
            }
          }

          if (v76 >= v72)
          {
            goto LABEL_187;
          }

          v30 = (v30 + *v30);
          ++v76;
          if (v31 == 1)
          {
            goto LABEL_187;
          }

          continue;
        }
      }

      LODWORD(v75) = *__error();
LABEL_187:
      v82 = v31 != 1;
      if (!v75)
      {
        v30 = v141;
        v69 = v70;
        if (v31 == 1)
        {
          goto LABEL_193;
        }

        continue;
      }

      break;
    }

    v30 = v141;
    v69 = v70;
LABEL_193:
    if (*(v7 + 9716) && (!*(v7 + 9664) || (v83 = *(v7 + 9672)) != 0 && ((*(v83 + 16))(v83, v7) & 1) == 0))
    {
      v3 = v139;
      if (v31 != 1)
      {
        v149.d_ino = 0;
        v84 = SQueuePeekData(*(v7 + 9640), &v149);
        if (v149.d_ino >= 4)
        {
          v85 = v84;
          v86 = *v84;
          if (v149.d_ino >= v86)
          {
            v87 = 0;
            do
            {
              v87 = updateStackEntry(v7, v87, v85);
              *(v7 + 3348) = 0;
              *(v7 + 1065) = *(v7 + 1072) != 0;
              v88 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
              if (*(v7 + 1065) == 1)
              {
                SIUINT64SetAddValue(*(v7 + 1072), *(*(v7 + 3392) + *(v7 + 1112)));
              }

              SQueueDropData(*(v7 + 9640), v86);
              if (v88 == 2)
              {
                v31 = 0;
              }

              else
              {
                v31 = v88;
              }

              if (v31 == 1)
              {
                break;
              }

              v149.d_ino = 0;
              v89 = SQueuePeekData(*(v7 + 9640), &v149);
              if (v149.d_ino < 4)
              {
                break;
              }

              v85 = v89;
              v86 = *v89;
            }

            while (v149.d_ino >= v86);
          }
        }

        v30 = v141;
      }

      SQueueEmpty(*(v7 + 9640));
    }

    else
    {
      v3 = v139;
      if (v82)
      {
        finishChildList(v7);
      }

      else
      {
        v31 = 1;
      }
    }

    atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
    if (v69 <= 2047)
    {
      v90 = *(v7 + 9752);
      *(v7 + 9752) = v90 - 1;
      v91 = *(v140 + 4 * v69);
      if (v91 < 0 || v90 <= 0)
      {
        fsi_iterate_f_cold_5();
      }

      if (v91)
      {
        *(v140 + 4 * v69) = -v91;
      }
    }

    close(v69);
LABEL_273:
    if (v31 == 1)
    {
      goto LABEL_274;
    }

    v26 = 0;
    if (v25)
    {
LABEL_278:
      if (v31 == 1 || *(v7 + 3400))
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_322:
  v126.n128_f64[0] = SQueueEmpty(*(v7 + 9640));
  if (*(v7 + 3400))
  {
    *(v7 + 3404) = 1;
    v127 = v138;
    if (!*(v7 + 9708))
    {
      atomic_fetch_add_explicit(&gFDCount, 1u, memory_order_relaxed);
      v128 = open(".", 32772, v126.n128_f64[0]);
      if (v128 <= 0x7FF)
      {
        *(v140 + 4 * v128) = 1868;
        ++*(v7 + 9752);
        goto LABEL_332;
      }

      if ((v128 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        *(v7 + 9704) = v128;
        *(v7 + 3404) = 0;
        v26 = 1;
      }

      else
      {
LABEL_332:
        *(v7 + 9704) = v128;
      }
    }

    *(v7 + 3400) = 0;
    if ((v138 & 0x80000000) == 0)
    {
LABEL_334:
      if (MEMORY[0x26D6817B0](v127, v126))
      {
        *(v7 + 3404) = 0;
        v117 = *__error();
        atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v127 <= 0x7FF)
        {
          v129 = *(v7 + 9752);
          *(v7 + 9752) = v129 - 1;
          v130 = *(v140 + 4 * v127);
          if (v130 < 0 || v129 <= 0)
          {
            fsi_iterate_f_cold_7();
          }

          if (v130)
          {
            *(v140 + 4 * v127) = -v130;
          }
        }

        v120 = v127;
        goto LABEL_341;
      }

      atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
      if (v127 <= 0x7FF)
      {
        v131 = *(v7 + 9752);
        *(v7 + 9752) = v131 - 1;
        v132 = *(v140 + 4 * v127);
        if (v132 < 0 || v131 <= 0)
        {
          fsi_iterate_f_cold_8();
        }

        if (v132)
        {
          *(v140 + 4 * v127) = -v132;
        }
      }

      close(v127);
    }
  }

  else
  {
    v127 = v138;
    if ((v138 & 0x80000000) == 0)
    {
      goto LABEL_334;
    }
  }

  free(v30);
LABEL_350:
  v133 = *(v3 + 1076);
  if (v133)
  {
    v3[851] = *(v133 + 3404);
    v3[850] = 0;
  }

  return v26;
}