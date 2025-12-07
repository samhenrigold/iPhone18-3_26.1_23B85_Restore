void sub_26262168C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(uint64_t result)
{
  if (result)
  {
    DgnPrimArray<unsigned int>::~DgnPrimArray(result + 16);
    MrecInitModule_sdpres_sdapi();

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(uint64_t *a1, int a2, const WordLatticeLC *a3, WordLatticeLC *this)
{
  v8 = *(a1[10] + 24 * a2 + 20);
  while (v8 != -2)
  {
    v9 = a1[16];
    v10 = v8;
    if (*(v9 + 136 * v8 + 120) == a3)
    {
      result = WordLatticeLC::cmpForMultiLinkCheck((v9 + 136 * v8), this, a3);
      if (result > 0)
      {
        return result;
      }

      v8 = *(a1[16] + 136 * v8 + 128);
      if ((result & 0x80000000) != 0)
      {
        Lattice<WordLatticeLC>::disconnectAndDestroyLink(a1, v10);
      }
    }

    else
    {
      v8 = *(v9 + 136 * v8 + 128);
    }
  }

  return Lattice<WordLatticeLC>::maybeCreateAndConnectLink(a1, a2, a3, this, 1, 0);
}

uint64_t FstSearchLateLatticeHashBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

VirtMap *FstSearchLateLatticeHashBackoff::endTopRecSyncRecog(VirtMap **this)
{
  VirtMap::setEmpty(this[14]);
  result = this[14];
  this[14] = 0;
  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::getBestExitScore(FstSearchLateLatticeHashBackoff *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 24 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 36 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v18))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v17, 1, 1);
          v5 = v18;
          v4 = v17;
        }

        v4[v5] = v8;
        v5 = v18 + 1;
        LODWORD(v18) = v18 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 24;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = *(this + 20);
    v10 = v5;
    v11 = 1879048192;
    do
    {
      v12 = *v4++;
      v13 = v9 + 36 * v12;
      v14 = *(v13 + 16);
      if (v11 > v14)
      {
        *(this + 57) = *(v13 + 20);
        v11 = v14;
      }

      --v10;
    }

    while (v10);
  }

  else
  {
LABEL_16:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v15 = 20000;
  }

  else
  {
    v15 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  return v15;
}

uint64_t FstSearchLateLatticeHashBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLateLatticeHashBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 24;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

unint64_t FstSearchLateLatticeHashBackoff::seedTheory(FstSearchLateLatticeHashBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 42);
    if (v11 == *(this + 43))
    {
      DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 36 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = 0xFFFFFFFFLL;
    *(v12 + 16) = a2;
    *(v12 + 20) = 0xFFFFFFFFLL;
    *(v12 + 28) = 0;
    *(v12 + 32) = -2;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 50);
  if (v14 == *(this + 51))
  {
    DgnArray<CWIDAC>::reallocElts(this + 192, 1, 1);
    v14 = *(this + 50);
  }

  v15 = *(this + 24) + 24 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  LODWORD(v15) = *(this + 50) + 1;
  *(this + 50) = v15;
  *(this + 38) = v15;

  return FstSearchLateLatticeHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLateLatticeHashBackoff::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 57);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 36 * v6);
    for (i = v8[5]; i != -1; v6 = v14)
    {
      v14 = i;
      result = v7[5];
      if (*v8 == 16777209)
      {
        v15 = (*(result + 87) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v8);
        v15 = result;
      }

      v16 = *(a2 + 8);
      if (v16 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v16 = *(a2 + 8);
      }

      *(*a2 + 4 * v16) = v15;
      ++*(a2 + 8);
      v17 = *(a6 + 8);
      if (v17 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v17 = *(a6 + 8);
      }

      *(*a6 + 4 * v17) = v6;
      ++*(a6 + 8);
      v18 = v7[20];
      v19 = *(v18 + 36 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v18 + 36 * v6 + 16);
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 36 * v14);
      i = v8[5];
    }

    *a4 = *v8;
  }

  return result;
}

BOOL FstSearchLateLatticeHashBackoff::isLexPelPhnMatch(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 160);
  v4 = (v3 + 36 * a2);
  v5 = *v4;
  v19 = 0;
  if ((v5 - 16777209) > 5 || ((1 << (v5 + 7)) & 0x31) == 0)
  {
    v16 = *(a1 + 48);
    v7 = (v16[9] + 2 * *(v16[6] + 4 * v5));
    v17 = *(v16[4] + 2 * v5);
    if (!v17)
    {
      v13 = 0xFFFFFFFFLL;
      goto LABEL_14;
    }

    if (v17 == 2)
    {
      *(a3 + 2) = *v7;
      *a3 = *(a1 + 68);
      *(a3 + 10) = 0;
      v13 = 1;
      goto LABEL_14;
    }

    if (v17 != 1)
    {
      v18 = &v7[v17];
      *(a3 + 2) = *(v18 - 2);
      *a3 = *(v18 - 3);
      *(a3 + 10) = 0;
      v13 = (v17 - 1);
      goto LABEL_14;
    }
  }

  else
  {
    v7 = &v19;
  }

  v8 = *(*(a1 + 176) + 16 * v4[2] + 12);
  if ((v8 & 0x80000000) != 0)
  {
    v12 = *(a1 + 68);
    *(a3 + 2) = v12;
  }

  else
  {
    v9 = *(v3 + 36 * v8);
    v10 = *(a1 + 48);
    if (*(v10 + 388) > v9 && *(*(v10 + 104) + v9))
    {
      v11 = *(*(v10 + 72) + 2 * *(*(v10 + 48) + 4 * v9) + 2 * (*(*(v10 + 32) + 2 * v9) - 1));
    }

    else
    {
      v11 = 0;
    }

    *(a3 + 2) = v11;
    v12 = *(a1 + 68);
  }

  v13 = 0;
  *a3 = v12;
  *(a3 + 10) = 1;
LABEL_14:
  v14 = v7[v13];
  *(a3 + 4) = v14;
  return *PicMgr::getPicNode(*(*(a1 + 56) + 48), *(*(*(*(a1 + 56) + 48) + 16) + v14) - 1, a3) == *(*(a1 + 160) + 36 * a2 + 32);
}

char *mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(char *result, unint64_t a2, int64_t a3, uint64_t a4)
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
LABEL_168:
    if ((a2 * a3) > a3)
    {
      v84 = &result[a2 * a3];
      v85 = &result[a3];
      v86 = result;
      do
      {
        if (v85 > result)
        {
          v87 = v86;
          v88 = v85;
          do
          {
            v89 = v88;
            v88 += v5;
            v90 = *(v88 + 2);
            v91 = *(v89 + 2);
            if (v90 <= v91 && (v90 < v91 || *v88 <= *v89))
            {
              break;
            }

            if (v8)
            {
              v92 = 0;
              if (v7)
              {
                v93 = v88;
                do
                {
                  v94 = *&v89[8 * v92];
                  *&v89[8 * v92] = *v93;
                  *v93 = v94;
                  v93 += 8;
                  ++v92;
                }

                while (a3 >> 3 != v92);
              }

              else
              {
                v96 = a3;
                do
                {
                  v97 = v89[v92];
                  v89[v92] = v87[v92];
                  v87[v92++] = v97;
                  --v96;
                }

                while (v96);
              }
            }

            else
            {
              v95 = *v89;
              *v89 = *v88;
              *v88 = v95;
            }

            v87 += v5;
          }

          while (v88 > result);
        }

        v85 += a3;
        v86 += a3;
      }

      while (v85 < v84);
    }

    return result;
  }

  v10 = a3 >> 3;
  while (1)
  {
    v11 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_84;
    }

    v12 = &result[(a2 - 1) * a3];
    if (a2 < 0x29)
    {
      v14 = result;
      goto LABEL_65;
    }

    v13 = (a2 >> 3) * a3;
    v14 = &result[v13];
    v15 = &result[2 * v13];
    v16 = *(result + 2);
    v17 = *&result[v13 + 8];
    if (v16 > v17 || v16 >= v17 && *result >= *v14)
    {
      v18 = *(v15 + 2);
      if (v17 <= v18 && (v17 < v18 || *v14 <= *v15))
      {
        if (v16 > v18 || (v14 = result, v16 >= v18) && (v14 = result, *result >= *v15))
        {
LABEL_22:
          v14 = &result[2 * v13];
        }
      }
    }

    else
    {
      v19 = *(v15 + 2);
      if (v17 > v19 || v17 >= v19 && *v14 >= *v15)
      {
        v14 = result;
        if (v16 <= v19)
        {
          if (v16 < v19)
          {
            goto LABEL_22;
          }

          v14 = &result[2 * v13];
          if (*result >= *v15)
          {
            v14 = result;
          }
        }
      }
    }

    v20 = &v11[-v13];
    v21 = &v11[v13];
    v22 = *&v11[-v13 + 8];
    v23 = *(v11 + 2);
    if (v22 > v23 || v22 >= v23 && *v20 >= *v11)
    {
      v24 = *(v21 + 2);
      if (v23 <= v24 && (v23 < v24 || *v11 <= *v21))
      {
        if (v22 > v24)
        {
          goto LABEL_45;
        }

        if (v22 >= v24)
        {
          v11 -= v13;
          if (*v20 < *v21)
          {
            goto LABEL_49;
          }

LABEL_45:
          v11 = v21;
          goto LABEL_49;
        }

LABEL_40:
        v11 -= v13;
      }
    }

    else
    {
      v25 = *(v21 + 2);
      if (v23 > v25 || v23 >= v25 && *v11 >= *v21)
      {
        if (v22 > v25)
        {
          goto LABEL_40;
        }

        if (v22 < v25)
        {
          goto LABEL_45;
        }

        if (*v20 >= *v21)
        {
          v11 -= v13;
        }

        else
        {
          v11 += v13;
        }
      }
    }

LABEL_49:
    v26 = -v13;
    v27 = &v12[-2 * v13];
    v28 = &v12[v26];
    v29 = *(v27 + 2);
    v30 = *(v28 + 2);
    if (v29 > v30 || v29 >= v30 && *v27 >= *v28)
    {
      v31 = *(v12 + 2);
      if (v30 > v31 || v30 >= v31 && *v28 > *v12)
      {
        goto LABEL_64;
      }

      if (v29 <= v31 && (v29 < v31 || *v27 < *v12))
      {
        goto LABEL_61;
      }
    }

    else
    {
      v32 = *(v12 + 2);
      if (v30 <= v32 && (v30 < v32 || *v28 < *v12))
      {
LABEL_64:
        v12 = v28;
        goto LABEL_65;
      }

      if (v29 > v32)
      {
LABEL_61:
        v12 = v27;
        goto LABEL_65;
      }

      if (v29 >= v32 && *v27 >= *v12)
      {
        v12 = v27;
      }
    }

LABEL_65:
    v33 = *(v14 + 2);
    v34 = *(v11 + 2);
    if (v33 > v34 || v33 >= v34 && *v14 >= *v11)
    {
      v35 = *(v12 + 2);
      if (v34 <= v35 && (v34 < v35 || *v11 <= *v12))
      {
        if (v33 > v35)
        {
          goto LABEL_83;
        }

        if (v33 < v35)
        {
          goto LABEL_77;
        }

        v11 = v14;
        if (*v14 >= *v12)
        {
LABEL_83:
          v11 = v12;
        }
      }

LABEL_84:
      if (!v8)
      {
        goto LABEL_100;
      }

      goto LABEL_85;
    }

    v36 = *(v12 + 2);
    if (v34 <= v36 && (v34 < v36 || *v11 < *v12))
    {
      goto LABEL_84;
    }

    if (v33 > v36)
    {
LABEL_77:
      v11 = v14;
      if (!v8)
      {
        goto LABEL_100;
      }

      goto LABEL_85;
    }

    if (v33 < v36)
    {
      goto LABEL_83;
    }

    if (*v14 >= *v12)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }

    if (!v8)
    {
LABEL_100:
      v43 = *result;
      *result = *v11;
      *v11 = v43;
      goto LABEL_101;
    }

LABEL_85:
    if (v7)
    {
      v37 = result;
      v38 = a3 >> 3;
      do
      {
        v39 = *v37;
        *v37 = *v11;
        v37 += 8;
        *v11 = v39;
        v11 += 8;
        --v38;
      }

      while (v38);
    }

    else
    {
      v40 = a3;
      v41 = result;
      do
      {
        v42 = *v41;
        *v41++ = *v11;
        *v11++ = v42;
        --v40;
      }

      while (v40);
    }

LABEL_101:
    v44 = 0;
    v45 = &result[a3];
    v46 = &result[(a2 - 1) * a3];
    v47 = v46;
    v48 = &result[a3];
    v49 = &result[a3];
LABEL_102:
    while (v48 <= v47)
    {
      v50 = *(v48 + 2);
      v51 = *(result + 2);
      if (v50 > v51)
      {
        break;
      }

      if (v50 >= v51)
      {
        if (*v48 == *result)
        {
          if (v8)
          {
            v52 = 0;
            if (v7)
            {
              do
              {
                v53 = *&v49[8 * v52];
                *&v49[8 * v52] = *&v48[8 * v52];
                *&v48[8 * v52++] = v53;
              }

              while (v10 != v52);
            }

            else
            {
              do
              {
                v54 = v49[v52];
                v49[v52] = v48[v52];
                v48[v52++] = v54;
              }

              while (a3 != v52);
            }
          }

          else
          {
            v64 = *v49;
            *v49 = *v48;
            *v48 = v64;
          }

          v49 += a3;
          v44 = 1;
        }

        else if (*v48 > *result)
        {
          break;
        }
      }

      v48 += a3;
    }

    while (v48 <= v47)
    {
      v56 = *(v47 + 2);
      v57 = *(result + 2);
      if (v56 <= v57)
      {
        if (v56 < v57)
        {
          goto LABEL_128;
        }

        if (*v47 == *result)
        {
          if (v8)
          {
            v58 = 0;
            if (v7)
            {
              do
              {
                v59 = *&v47[8 * v58];
                *&v47[8 * v58] = *&v46[8 * v58];
                *&v46[8 * v58++] = v59;
              }

              while (v10 != v58);
            }

            else
            {
              do
              {
                v60 = v47[v58];
                v47[v58] = v46[v58];
                v46[v58++] = v60;
              }

              while (a3 != v58);
            }
          }

          else
          {
            v55 = *v47;
            *v47 = *v46;
            *v46 = v55;
          }

          v46 += v5;
          v44 = 1;
        }

        else if (*v47 <= *result)
        {
LABEL_128:
          if (v8)
          {
            v61 = 0;
            if (v7)
            {
              do
              {
                v62 = *&v48[8 * v61];
                *&v48[8 * v61] = *&v47[8 * v61];
                *&v47[8 * v61++] = v62;
              }

              while (v10 != v61);
            }

            else
            {
              do
              {
                v63 = v48[v61];
                v48[v61] = v47[v61];
                v47[v61++] = v63;
              }

              while (a3 != v61);
            }
          }

          else
          {
            v65 = *v48;
            *v48 = *v47;
            *v47 = v65;
          }

          v48 += a3;
          v47 += v5;
          v44 = 1;
          goto LABEL_102;
        }
      }

      v47 += v5;
    }

    v66 = &result[a2 * a3];
    if (!v44)
    {
      break;
    }

    v67 = v48 - v49;
    if (v49 - result >= v48 - v49)
    {
      v68 = v48 - v49;
    }

    else
    {
      v68 = v49 - result;
    }

    if (v68)
    {
      if (v7)
      {
        v69 = &v48[-v68];
        v70 = v68 >> 3;
        v71 = result;
        do
        {
          v72 = *v71;
          *v71 = *v69;
          v71 += 8;
          *v69 = v72;
          v69 += 8;
          --v70;
        }

        while (v70);
      }

      else
      {
        v73 = -v68;
        v74 = result;
        do
        {
          v75 = *v74;
          *v74++ = v48[v73];
          v48[v73] = v75;
          v76 = __CFADD__(v73++, 1);
        }

        while (!v76);
      }
    }

    v77 = v46 - v47;
    v78 = v66 - &v46[a3];
    if (v46 - v47 < v78)
    {
      v78 = v46 - v47;
    }

    if (v78)
    {
      if (v7)
      {
        v79 = &v66[-v78];
        v80 = v78 >> 3;
        do
        {
          v81 = *v48;
          *v48 = *v79;
          v48 += 8;
          *v79 = v81;
          v79 += 8;
          --v80;
        }

        while (v80);
      }

      else
      {
        v82 = -v78;
        do
        {
          v83 = *v48;
          *v48++ = v66[v82];
          v66[v82] = v83;
          v76 = __CFADD__(v82++, 1);
        }

        while (!v76);
      }
    }

    if (v67 > a3)
    {
      result = mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(result, v67 / a3, a3, a4);
    }

    if (v77 <= a3)
    {
      return result;
    }

    result = &v66[-v77];
    a2 = v77 / a3;
    v7 = (((v66 - v77) | a3) & 7) == 0;
    if ((((v66 - v77) | a3) & 7) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = v6;
    }

    if (a2 < 7)
    {
      goto LABEL_168;
    }
  }

  if ((a2 * a3) > a3)
  {
    v98 = result;
    do
    {
      if (v45 > result)
      {
        v99 = v98;
        v100 = v45;
        do
        {
          v101 = v100;
          v100 += v5;
          v102 = *(v100 + 2);
          v103 = *(v101 + 2);
          if (v102 <= v103 && (v102 < v103 || *v100 <= *v101))
          {
            break;
          }

          if (v8)
          {
            v104 = 0;
            if (v7)
            {
              v105 = v100;
              do
              {
                v106 = *&v101[8 * v104];
                *&v101[8 * v104] = *v105;
                *v105 = v106;
                v105 += 8;
                ++v104;
              }

              while (v10 != v104);
            }

            else
            {
              v108 = a3;
              do
              {
                v109 = v101[v104];
                v101[v104] = v99[v104];
                v99[v104++] = v109;
                --v108;
              }

              while (v108);
            }
          }

          else
          {
            v107 = *v101;
            *v101 = *v100;
            *v100 = v107;
          }

          v99 += v5;
        }

        while (v100 > result);
      }

      v45 += a3;
      v98 += a3;
    }

    while (v45 < v66);
  }

  return result;
}

char *mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(char *result, unint64_t a2, int64_t a3, uint64_t a4, __n128 a5)
{
  v6 = -a3;
  v7 = a3 != 8;
  v8 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_157:
    if ((a2 * a3) > a3)
    {
      v90 = &result[a2 * a3];
      v91 = &result[a3];
      v92 = result;
      do
      {
        if (v91 > result)
        {
          v93 = v92;
          v94 = v91;
          do
          {
            v95 = v94;
            v94 += v6;
            if (*v94 <= *v95)
            {
              break;
            }

            if (v9)
            {
              v96 = 0;
              if (v8)
              {
                v97 = v94;
                do
                {
                  v98 = *&v95[8 * v96];
                  *&v95[8 * v96] = *v97;
                  *v97 = v98;
                  v97 += 8;
                  ++v96;
                }

                while (a3 >> 3 != v96);
              }

              else
              {
                v100 = a3;
                do
                {
                  v101 = v95[v96];
                  v95[v96] = v93[v96];
                  v93[v96++] = v101;
                  --v100;
                }

                while (v100);
              }
            }

            else
            {
              v99 = *v95;
              *v95 = *v94;
              *v94 = v99;
            }

            v93 += v6;
          }

          while (v94 > result);
        }

        v91 += a3;
        v92 += a3;
      }

      while (v91 < v90);
    }
  }

  else
  {
    v11 = a3 >> 3;
    while (1)
    {
      v12 = &result[(a2 >> 1) * a3];
      if (a2 != 7)
      {
        v13 = &result[(a2 - 1) * a3];
        if (a2 <= 0x28)
        {
          v25 = *result;
          v36 = *v12;
          v16 = result;
          v45 = *v13;
        }

        else
        {
          v14 = (a2 >> 3) * a3;
          v15 = 2 * v14;
          v16 = &result[2 * v14];
          v17 = *result;
          v18 = *&result[v14];
          v19 = *v16;
          if (*result >= *v16)
          {
            v20 = *v16;
          }

          else
          {
            v20 = *result;
          }

          if (v17 >= v19)
          {
            v21 = &result[2 * v14];
          }

          else
          {
            v21 = result;
          }

          if (v18 > v19)
          {
            v20 = *&result[v14];
            v21 = &result[v14];
          }

          if (v17 <= v19)
          {
            v22 = *v16;
          }

          else
          {
            v22 = *result;
          }

          if (v17 >= v19)
          {
            v16 = result;
          }

          v23 = v18 < v19;
          if (v18 >= v19)
          {
            v24 = v22;
          }

          else
          {
            v24 = *&result[v14];
          }

          if (v23)
          {
            v16 = &result[v14];
          }

          if (v17 < v18)
          {
            v25 = v24;
          }

          else
          {
            v25 = v20;
          }

          if (v17 >= v18)
          {
            v16 = v21;
          }

          v26 = -v14;
          v27 = &v12[-v14];
          v28 = &v12[v14];
          v29 = *v27;
          v30 = *v12;
          v31 = *v28;
          if (*v27 >= *v28)
          {
            v32 = *v28;
          }

          else
          {
            v32 = *v27;
          }

          if (v29 >= v31)
          {
            v33 = v28;
          }

          else
          {
            v33 = v27;
          }

          if (v30 > v31)
          {
            v32 = *v12;
            v33 = &result[(a2 >> 1) * a3];
          }

          if (v29 <= v31)
          {
            v34 = *v28;
          }

          else
          {
            v34 = *v27;
          }

          if (v29 >= v31)
          {
            v28 = v27;
          }

          if (v30 >= v31)
          {
            v35 = v34;
          }

          else
          {
            v35 = *v12;
          }

          if (v30 >= v31)
          {
            v12 = v28;
          }

          if (v29 < v30)
          {
            v36 = v35;
          }

          else
          {
            v36 = v32;
          }

          if (v29 >= v30)
          {
            v12 = v33;
          }

          v37 = &v13[-v15];
          v38 = &v13[v26];
          v39 = *v37;
          v40 = *v38;
          v41 = *v13;
          if (*v37 >= *v13)
          {
            v42 = *v13;
          }

          else
          {
            v42 = *v37;
          }

          if (v39 >= v41)
          {
            v43 = &result[(a2 - 1) * a3];
          }

          else
          {
            v43 = v37;
          }

          if (v40 > v41)
          {
            v42 = *v38;
            v43 = v38;
          }

          if (v39 <= v41)
          {
            v44 = *v13;
          }

          else
          {
            v44 = *v37;
          }

          if (v39 >= v41)
          {
            v13 = v37;
          }

          if (v40 >= v41)
          {
            v45 = v44;
          }

          else
          {
            v45 = *v38;
          }

          if (v40 < v41)
          {
            v13 = v38;
          }

          if (v39 >= v40)
          {
            v45 = v42;
            v13 = v43;
          }
        }

        if (v25 >= v45)
        {
          v46 = v13;
        }

        else
        {
          v46 = v16;
        }

        if (v36 > v45)
        {
          v46 = v12;
        }

        if (v25 >= v45)
        {
          v13 = v16;
        }

        if (v36 >= v45)
        {
          v12 = v13;
        }

        if (v25 >= v36)
        {
          v12 = v46;
        }
      }

      if (v9)
      {
        if (v8)
        {
          v47 = result;
          v48 = a3 >> 3;
          do
          {
            v49 = *v47;
            *v47 = *v12;
            v47 += 8;
            *v12 = v49;
            v12 += 8;
            --v48;
          }

          while (v48);
        }

        else
        {
          v51 = a3;
          v52 = result;
          do
          {
            v53 = *v52;
            *v52++ = *v12;
            *v12++ = v53;
            --v51;
          }

          while (v51);
        }
      }

      else
      {
        v50 = *result;
        *result = *v12;
        *v12 = v50;
      }

      v54 = 0;
      v55 = &result[a3];
      v56 = &result[(a2 - 1) * a3];
      v57 = v56;
      v58 = &result[a3];
      v59 = &result[a3];
LABEL_96:
      while (v58 <= v57 && *v58 <= *result)
      {
        if (*v58 == *result)
        {
          if (v9)
          {
            v60 = 0;
            if (v8)
            {
              do
              {
                v61 = *&v59[8 * v60];
                *&v59[8 * v60] = *&v58[8 * v60];
                *&v58[8 * v60++] = v61;
              }

              while (v11 != v60);
            }

            else
            {
              do
              {
                v62 = v59[v60];
                v59[v60] = v58[v60];
                v58[v60++] = v62;
              }

              while (a3 != v60);
            }
          }

          else
          {
            v70 = *v59;
            *v59 = *v58;
            *v58 = v70;
          }

          v59 += a3;
          v54 = 1;
        }

        v58 += a3;
      }

      while (v58 <= v57)
      {
        if (*v57 < *result)
        {
          if (v9)
          {
            v67 = 0;
            if (v8)
            {
              do
              {
                v68 = *&v58[8 * v67];
                *&v58[8 * v67] = *&v57[8 * v67];
                *&v57[8 * v67++] = v68;
              }

              while (v11 != v67);
            }

            else
            {
              do
              {
                v69 = v58[v67];
                v58[v67] = v57[v67];
                v57[v67++] = v69;
              }

              while (a3 != v67);
            }
          }

          else
          {
            v71 = *v58;
            *v58 = *v57;
            *v57 = v71;
          }

          v58 += a3;
          v57 += v6;
          v54 = 1;
          goto LABEL_96;
        }

        if (*v57 == *result)
        {
          if (v9)
          {
            v63 = 0;
            if (v8)
            {
              do
              {
                v64 = *&v57[8 * v63];
                *&v57[8 * v63] = *&v56[8 * v63];
                *&v56[8 * v63++] = v64;
              }

              while (v11 != v63);
            }

            else
            {
              do
              {
                v65 = v57[v63];
                v57[v63] = v56[v63];
                v56[v63++] = v65;
              }

              while (a3 != v63);
            }
          }

          else
          {
            v66 = *v57;
            *v57 = *v56;
            *v56 = v66;
          }

          v56 += v6;
          v54 = 1;
        }

        v57 += v6;
      }

      v72 = &result[a2 * a3];
      if (!v54)
      {
        break;
      }

      v73 = v58 - v59;
      if (v59 - result >= v58 - v59)
      {
        v74 = v58 - v59;
      }

      else
      {
        v74 = v59 - result;
      }

      if (v74)
      {
        if (v8)
        {
          v75 = &v58[-v74];
          v76 = v74 >> 3;
          v77 = result;
          do
          {
            v78 = *v77;
            *v77 = *v75;
            v77 += 8;
            *v75 = v78;
            v75 += 8;
            --v76;
          }

          while (v76);
        }

        else
        {
          v79 = -v74;
          v80 = result;
          do
          {
            v81 = *v80;
            *v80++ = v58[v79];
            v58[v79] = v81;
            v82 = __CFADD__(v79++, 1);
          }

          while (!v82);
        }
      }

      v83 = v56 - v57;
      v84 = v72 - &v56[a3];
      if (v56 - v57 < v84)
      {
        v84 = v56 - v57;
      }

      if (v84)
      {
        if (v8)
        {
          v85 = &v72[-v84];
          v86 = v84 >> 3;
          do
          {
            v87 = *v58;
            *v58 = *v85;
            v58 += 8;
            *v85 = v87;
            v85 += 8;
            --v86;
          }

          while (v86);
        }

        else
        {
          v88 = -v84;
          do
          {
            v89 = *v58;
            *v58++ = v72[v88];
            v72[v88] = v89;
            v82 = __CFADD__(v88++, 1);
          }

          while (!v82);
        }
      }

      if (v73 > a3)
      {
        result = mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(result, v73 / a3, a3, a4, a5);
      }

      if (v83 <= a3)
      {
        return result;
      }

      result = &v72[-v83];
      a2 = v83 / a3;
      v8 = (((v72 - v83) | a3) & 7) == 0;
      if ((((v72 - v83) | a3) & 7) != 0)
      {
        v9 = 2;
      }

      else
      {
        v9 = v7;
      }

      if (a2 < 7)
      {
        goto LABEL_157;
      }
    }

    if ((a2 * a3) > a3)
    {
      v102 = result;
      do
      {
        if (v55 > result)
        {
          v103 = v102;
          v104 = v55;
          do
          {
            v105 = v104;
            v104 += v6;
            if (*v104 <= *v105)
            {
              break;
            }

            if (v9)
            {
              v106 = 0;
              if (v8)
              {
                v107 = v104;
                do
                {
                  v108 = *&v105[8 * v106];
                  *&v105[8 * v106] = *v107;
                  *v107 = v108;
                  v107 += 8;
                  ++v106;
                }

                while (v11 != v106);
              }

              else
              {
                v110 = a3;
                do
                {
                  v111 = v105[v106];
                  v105[v106] = v103[v106];
                  v103[v106++] = v111;
                  --v110;
                }

                while (v110);
              }
            }

            else
            {
              v109 = *v105;
              *v105 = *v104;
              *v104 = v109;
            }

            v103 += v6;
          }

          while (v104 > result);
        }

        v55 += a3;
        v102 += a3;
      }

      while (v55 < v72);
    }
  }

  return result;
}

double FstSearchLateLatticeHashBackoff::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
{
  v3 = *(this + 40);
  if (*(v3 + 178) == 1)
  {
    result = ArcGraph::ensureHeaderValid(*(this + 40), "Header");
    if (*(v3 + 202) == 1)
    {
      v8 = *(this + 140);
      if (*(v3 + 188) != v8)
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchInterWordSilencePenalty", *(v3 + 188), v8);
      }
    }

    v9 = *(this + 136);
    if (*(v3 + 192) != v9)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchPerWordPenalty", *(v3 + 192), v9);
    }

    v10 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 40) + 174)) + 608);
    if (*(v3 + 196) != v10)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "Voc", *(v3 + 196), v10);
    }

    v11 = *(v3 + 203);
    if (a3)
    {
      if (a2)
      {
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v12 = 1;
      }

      else
      {
        if (v11)
        {
          return result;
        }

        v12 = 0;
      }

      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "DropAlternateFrames", v12, v11);
    }

    else if (a2 & 1) != 0 || (v11)
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "NoDecimation", a2, v11);
    }
  }

  return result;
}

void FstSearchLateLatticeHashBackoff::getHistory(uint64_t *result, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 == -1)
  {
    *(a3 + 8) = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = a2;
    v9 = a2;
    do
    {
      v10 = (result[20] + 36 * v9);
      if (*v10 == 16777209)
      {
        v7 = v7;
      }

      else
      {
        v7 = (v7 + 1);
      }

      v9 = v10[5];
    }

    while (v9 != -1);
    v11 = *(a3 + 12);
    if (v7 > v11)
    {
      DgnArray<PrefilterResultFrame>::reallocElts(a3, v7 - v11, 0);
    }

    v12 = *(a3 + 8);
    if (v12 < v7)
    {
      v13 = v7 - v12;
      v14 = *a3 + 32 * v12;
      do
      {
        *v14 = 0x3FFFFAFFFFFFLL;
        *(v14 + 8) = xmmword_26286CC40;
        *(v14 + 24) = 0x1F0000001FLL;
        v14 += 32;
        --v13;
      }

      while (v13);
    }

    *(a3 + 8) = v7;
    if (v7)
    {
      v15 = result[20];
      v16 = -16;
      do
      {
        v17 = (v15 + 36 * v8);
        v18 = v17[1];
        if (*v17 == 16777209)
        {
          if (a4)
          {
            v16 = (v18 - 1) / 2 + 1;
          }

          else
          {
            v16 = v18 + 1;
          }
        }

        else
        {
          if (a4)
          {
            v18 = (v18 - 1) / 2;
          }

          ArcGraph::lexToCWIDAC(&v22, result[5], *v17);
          if (v16 == -16)
          {
            v19 = v18 + 1;
          }

          else
          {
            v19 = v16;
          }

          v20 = HIDWORD(v22);
          v7 = (v7 - 1);
          v21 = *a3 + 32 * v7;
          *v21 = v22;
          *(v21 + 4) = v20;
          *(v21 + 8) = v23;
          *(v21 + 24) = v18 + 1;
          *(v21 + 28) = v19;
          v15 = result[20];
          v16 = -16;
        }

        v8 = *(v15 + 36 * v8 + 20);
      }

      while (v8 != -1);
    }
  }
}

uint64_t FstSearchLateLatticeHashBackoff::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLateLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (*(a3 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *a3 + v12;
      v16 = *(v15 + 28);
      WordLatticeLC::WordLatticeLC(v20, v15, v14, *(v15 + 24) - v14, v16 - *(v15 + 24), v21);
      v17 = *(a2 + 8);
      if (v17 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v17) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v17), v20);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v20);
      ++v13;
      v12 += 32;
      v14 = v16;
    }

    while (v13 < *(a3 + 8));
  }

  v18 = a1[20] + 36 * v11;
  return (*(v18 + 16) + *(a1[11] + 4 * *(v18 + 4)));
}

int64x2_t FstSearchLateLatticeHash::advanceDeltas(FstSearchLateLatticeHash *this, int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  v8 = a2;
  v87[0] = a2;
  v85 = 0u;
  v86 = 0u;
  SnapTime::recordTime(&v85, 1, 0, 0, 0);
  v83.n128_u64[0] = 0xFFFFFFFF00000000;
  v83.n128_u32[2] = -1;
  v83.n128_u16[6] = -2;
  v84 = 0;
  *(this + 58) = a3;
  v10 = (this + 232);
  v11 = *(this + 2);
  v12 = *(this + 50);
  if (v12)
  {
    v62 = a4;
    v63 = v8;
    for (i = 0; i < v12; ++i)
    {
      v14 = *(this + 24) + 24 * i;
      v15 = *(v14 + 4);
      v16 = *(this + 5);
      if (*(v16 + 160) != v15)
      {
        if (*(v16 + 140) > v15)
        {
          v17 = *v14;
          v18 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v14 + 12)) + v17;
          v19 = *(this + 58);
          if (v18 - v11 <= v19)
          {
            if (v19 > v18)
            {
              *v10 = v18;
            }

            v20 = (*(this + 24) + 24 * i);
            v21 = v20[1].n128_u64[0];
            v83 = *v20;
            v84 = v21;
            v83.n128_u32[0] = v18;
            FstSearchLateLatticeHashBackoff::maybeInsertHashedToken(this, &v83);
          }
        }

        v22 = v15;
        do
        {
          v23 = *(this + 5);
          v24 = *(v23 + 152);
          v25 = *(v24 + 4 * v22);
          v26 = *(v24 + 4 * (v22 + 1));
          v27 = *(v23 + 140);
          if (v27 <= v26)
          {
            if (v27 <= v15 && (*(this + 356) & 1) != 0)
            {
              v34 = (v25 & 0xFFFFF) <= 0xFFFF3 ? v25 & 0xFFFFF : v25 & 0xFFFFF | 0xF00000;
              if (v34 != 16777210)
              {
                DgnString::DgnString(&v80);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v34, &v80);
                v36 = &unk_26287F8B0;
                if (v80.i32[2])
                {
                  v36 = v80.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v35, v15, *(*(this + 24) + 24 * i), *(*(this + 24) + 24 * i + 8), v36);
                MiniFst::seed(this + 240, *(*(this + 24) + 24 * i), *(*(this + 24) + 24 * i + 20), *(*(this + 24) + 24 * i + 8), v26);
                DgnString::~DgnString(&v80);
              }
            }
          }

          else
          {
            v28 = (v25 >> 20) & 0x3FF;
            ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v24 + 4 * v22));
            v30 = *(this + 24) + 24 * i;
            v31 = ScoreNoBackoff + v28 + *v30;
            v32 = *(this + 58);
            if (v31 - v11 <= v32)
            {
              if (v32 > v31)
              {
                *v10 = v31;
              }

              v33 = *(v30 + 16);
              v83 = *v30;
              HIDWORD(v84) = HIDWORD(v33);
              v83.n128_u64[0] = __PAIR64__(v26, v31);
              v83.n128_u16[6] = v25;
              LODWORD(v84) = v33 + v28;
              FstSearchLateLatticeHashBackoff::maybeInsertHashedToken(this, &v83);
            }
          }

          v22 += 2;
        }

        while ((v25 & 0x80000000) == 0);
        v12 = *(this + 50);
      }
    }

    a3 = *v10;
    v8 = v63;
    a4 = v62;
  }

  v82 = a3 + v11;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, this + 58, v11, v8);
  }

  v80 = 0u;
  v81 = 0u;
  SnapTime::recordTime(&v80, 1, 0, 0, 0);
  v80 = vsubq_s64(v80, v85);
  v81 = vsubq_s64(v81, v86);
  v37 = *(this + 13);
  v38 = vaddq_s64(v37[1], v81);
  *v37 = vaddq_s64(*v37, v80);
  v37[1] = v38;
  v78 = 0u;
  v79 = 0u;
  SnapTime::recordTime(&v78, 1, 0, 0, 0);
  FstSearchLateLatticeHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v82);
  v76 = 0u;
  v77 = 0u;
  SnapTime::recordTime(&v76, 1, 0, 0, 0);
  v39 = vsubq_s64(v76, v78);
  v40 = *(this + 13);
  v41 = v40[3];
  v42 = vaddq_s64(v40[2], v39);
  v76 = v39;
  v77 = vsubq_s64(v77, v79);
  v43 = vaddq_s64(v41, v77);
  v40[2] = v42;
  v40[3] = v43;
  v74 = 0u;
  v75 = 0u;
  SnapTime::recordTime(&v74, 1, 0, 0, 0);
  v44 = *(this + 24);
  v45 = *(this + 26);
  *(this + 24) = v45;
  *(this + 26) = v44;
  LODWORD(v44) = *(this + 51);
  v46 = *(this + 27);
  *(this + 25) = v46;
  *(this + 54) = 0;
  *(this + 55) = v44;
  v47 = *(this + 6);
  if (v47 && v47 < v46)
  {
    mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(v45, v47, v46);
  }

  v72 = 0u;
  v73 = 0u;
  SnapTime::recordTime(&v72, 1, 0, 0, 0);
  v48 = vsubq_s64(v72, v74);
  v49 = *(this + 13);
  v50 = v49[5];
  v51 = vaddq_s64(v49[4], v48);
  v72 = v48;
  v73 = vsubq_s64(v73, v75);
  v52 = vaddq_s64(v50, v73);
  v49[4] = v51;
  v49[5] = v52;
  v70 = 0u;
  v71 = 0u;
  SnapTime::recordTime(&v70, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v68 = 0u;
  v69 = 0u;
  SnapTime::recordTime(&v68, 1, 0, 0, 0);
  v53 = vsubq_s64(v68, v70);
  v54 = *(this + 13);
  v55 = v54[9];
  v56 = vaddq_s64(v54[8], v53);
  v68 = v53;
  v69 = vsubq_s64(v69, v71);
  v57 = vaddq_s64(v55, v69);
  v54[8] = v56;
  v54[9] = v57;
  v66 = 0u;
  v67 = 0u;
  SnapTime::recordTime(&v66, 1, 0, 0, 0);
  *(this + 54) = 0;
  v58 = *(this + 50);
  *(this + 38) = v58;
  if (a4)
  {
    *(a4 + 2) += v58;
    if (*(a4 + 2) > v58)
    {
      LODWORD(v58) = *(a4 + 2);
    }

    *(a4 + 2) = v58;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLateLatticeHash::seedFromMiniFst(this, v87);
  }

  if (a5)
  {
    FstSearchLateLatticeHashBackoff::propagateNulls(this, v82, v8, a4);
  }

  *(this + 56) = v8;
  v64 = 0u;
  v65 = 0u;
  SnapTime::recordTime(&v64, 1, 0, 0, 0);
  v59 = *(this + 13);
  result = vaddq_s64(v59[6], vsubq_s64(v64, v66));
  v61 = vaddq_s64(v59[7], vsubq_s64(v65, v67));
  v59[6] = result;
  v59[7] = v61;
  return result;
}

uint64_t PelScoreCache::getScoreNoBackoff(PelScoreCache *this, uint64_t a2)
{
  if (*(this + 494) == 1)
  {
    v4 = *(*(this + 8) + 2 * a2);
    if (v4 == 20046)
    {
      if (*(this + 495))
      {
        v4 = 19999;
      }

      else if (*(this + 492) == 1)
      {
        v6 = *(**(this + 3) + 2 * a2);
        if (*(*(this + 18) + 4 * v6) == -1)
        {
          PelScoreCache::computeGenScores(this, *(**(this + 3) + 2 * a2));
        }

        v4 = PelScoreCache::computePelScoreFromGenScores(this, a2, v6);
      }

      else
      {
        v4 = PelScoreCache::computePelScore(this, a2);
      }
    }
  }

  else
  {
    v4 = PelScoreCache::computePelScoreNoCache(this, a2);
  }

  return (v4 - *(this + 64));
}

uint64_t FstSearchLateLatticeHash::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = (*(v2 + 256) + v4);
        v7 = *v6;
        v8 = v6[4];
        v9 = v6[5];
        v10 = v6[6];
        v11 = v6[7];
        LODWORD(v6) = v6[2];
        v23[0] = 0;
        v23[1] = 0;
        v12 = -2 - v6;
        if (v11 == 16777213)
        {
          v13 = (*(v2 + 160) + 36 * v12);
          v11 = 16777209;
          if (*v13 == 16777209)
          {
            v12 = *(*(v2 + 176) + 16 * v13[2] + 12);
          }
        }

        v14 = *a2;
        v15 = *(v2 + 168);
        if (v15 == *(v2 + 172))
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v15) = *(v2 + 168);
        }

        v16 = *(v2 + 160);
        v17 = v16 + 36 * v15;
        *v17 = v11;
        *(v17 + 4) = v14;
        *(v17 + 8) = 0xFFFFFFFFLL;
        *(v17 + 16) = v7;
        *(v17 + 20) = v12;
        *(v17 + 24) = v8;
        *(v17 + 28) = v9;
        *(v17 + 32) = -2;
        v18 = *(v2 + 168);
        *(v2 + 168) = v18 + 1;
        *(v16 + 36 * v18 + 12) = 1;
        v19 = *(v2 + 200);
        if (v19 == *(v2 + 204))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v19) = *(v2 + 200);
        }

        v20 = *(v2 + 192) + 24 * v19;
        *v20 = v7;
        *(v20 + 4) = v10;
        *(v20 + 8) = v18;
        *(v20 + 12) = -2;
        *(v20 + 16) = v8;
        *(v20 + 20) = v9;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
        ++v5;
        v21 = *(v2 + 264);
        if (v21 >= *(v2 + 20))
        {
          v21 = *(v2 + 20);
        }

        v4 += 36;
      }

      while (v5 < v21);
    }
  }

  return this;
}

void sub_262623AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLateLatticeHash::vite(int64x2_t **this, int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  FstSearchLateLatticeHash::advanceDeltas(this, a2, a3, a4, a5);
  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v9 = 0u;
  v10 = 0u;
  SnapTime::recordTime(&v9, 1, 0, 0, 0);
  v6 = this[13];
  result = vaddq_s64(v6[14], vsubq_s64(v9, v11));
  v8 = vaddq_s64(v6[15], vsubq_s64(v10, v12));
  v6[14] = result;
  v6[15] = v8;
  return result;
}

int64x2_t FstSearchLateLatticeHash::reset(FstSearchLateLatticeHash *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 50) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchLateLatticeHash::doFrame(int64x2_t **this, int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLateLatticeHash::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLateLatticeHash::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 30, a3, this[4]);
    result = ArcGraph::findBackoffState(this[5]);
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLateLatticeHash::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLateLatticeHashBackoff::generateTraceTokensFromTraces(this);
  FstSearchLateLatticeHash::generateTraceTokensForLateLattice(this);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = this[13];
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

uint64_t FstSearchLateLatticeHash::generateTraceTokensForLateLattice(FstSearchLateLatticeHash *this)
{
  v1 = this;
  v122[1] = 0;
  v123 = 0;
  v124 = 0;
  v122[0] = 0;
  FstSearchLateLatticeHashBackoff::getTraceTimeBoundaries(this, &v123, v122);
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117[0] = 0;
  v117[1] = 0;
  v116 = 1879048192;
  v2 = (*(*v1 + 80))(v1, &v120, &v118, &v116, v117);
  v3 = *(v1 + 7);
  v4 = *(v1 + 2);
  v113 = -1;
  v115 = 256;
  v114 = *(v1 + 34);
  if (v2)
  {
    v111 = 0;
    v112 = 0;
    v5 = *(v1 + 42);
    if (v5)
    {
      v6 = 0;
      v96 = v4;
      v97 = v3;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            --v5;
            v7 = *(v1 + 20);
            if (*(v120 + v5))
            {
              break;
            }

            *(v7 + 36 * v5 + 8) = -1;
            if (!v5)
            {
              goto LABEL_76;
            }
          }

          v8 = (v7 + 36 * v5);
          v9 = *v8;
          v10 = *(v1 + 6);
          if (*(v10 + 388) > v9 && *(*(v10 + 104) + v9))
          {
            v11 = *(*(v10 + 72) + 2 * *(*(v10 + 48) + 4 * v9));
          }

          else
          {
            v11 = 0;
          }

          v12 = *(v1 + 11);
          v13 = *(v12 + 4 * v8[1]);
          v14 = *(v1 + 22);
          v15 = (v14 + 16 * v8[2]);
          v16 = *(v1 + 3);
          v17 = *(v117[0] + 4 * v5);
          HIWORD(v113) = v11;
          v101 = v15;
          v18 = v15[1].u32[1];
          if ((v18 & 0x80000000) == 0)
          {
            break;
          }

          v8[2] = v6;
          if (v6 == HIDWORD(v112))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v111, 1, 1);
            v6 = v112;
          }

          *(v111 + v6) = *v101->i8;
          v6 = v112 + 1;
          LODWORD(v112) = v112 + 1;
          *(*(v1 + 20) + 36 * v5 + 12) = 1;
          if (!v5)
          {
            goto LABEL_76;
          }
        }

        v19 = v7 + 36 * v18;
        v20 = *(v19 + 4);
        v21 = v20 ? *(v123 + (v20 - 1)) : 0;
        v106 = v16 + v116 - v17;
        v99 = (v14 + 16 * *(v19 + 8));
        v100 = v13 + v101->i32[0] - *(v12 + 4 * v20) - v99->i32[0];
        v98 = v99->i32[0] - *(v122[0] + 4 * v20);
        v22 = v6;
        v103 = v18;
        if (v21 < *(v123 + v20))
        {
          break;
        }

LABEL_42:
        if (v6 >= v22)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 150, "fst/fstsrch", 2, "%s", &unk_26287F8B0);
          v22 = v112;
        }

        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(v111 + 16 * v6, v22 - v6, 16, 0);
        v37 = v6 + 1;
        v38 = v112;
        if (v37 < v112)
        {
          v39 = 16 * (v6 + 1);
          v40 = v6;
          do
          {
            if (*(v111 + v39 + 8) != *(v111 + 4 * v40 + 2))
            {
              *(v111 + ++v40) = *(v111 + v39);
              v38 = v112;
            }

            ++v37;
            v39 += 16;
          }

          while (v37 < v38);
          LODWORD(v37) = v40 + 1;
        }

        v41 = v111;
        if (HIDWORD(v112) < v37)
        {
          v109 = 0;
          HIDWORD(v112) = realloc_array(v111, &v109, 16 * v37, 16 * v38, 16 * v38, 1) >> 4;
          v41 = v109;
          v111 = v109;
          v38 = v112;
        }

        if (v38 < v37)
        {
          v42 = v37 - v38;
          v43 = &v41[16 * v38];
          do
          {
            *v43 = xmmword_26287F850;
            v43 += 16;
            --v42;
          }

          while (v42);
        }

        LODWORD(v112) = v37;
        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(&v41[16 * v6], v37 - v6, 16, 0, xmmword_26287F850);
        v44 = 16 * v6;
        v45 = *(v111 + v44) + v4;
        if (v45 >= v106)
        {
          v45 = v106;
        }

        v46 = v112;
        v47 = *(v1 + 5) + v6;
        if (v112 < v47)
        {
          v47 = v112;
        }

        v48 = *(v1 + 20);
        *(v48 + 36 * v5 + 8) = v6;
        if (v6 < v47)
        {
          while (*(v111 + v44) <= v45)
          {
            v49 = *(v111 + v44 + 12);
            if ((v49 & 0x80000000) == 0)
            {
              *(v120 + v49) = 1;
              v50 = v49 == v103 ? 0 : v98 + v3;
              v51 = v50 + v100 + *(v117[0] + 4 * v5);
              if (*(v117[0] + 4 * v49) > v51)
              {
                *(v117[0] + 4 * v49) = v51;
              }
            }

            ++v6;
            v44 += 16;
            if (v47 == v6)
            {
              v6 = v47;
              break;
            }
          }

          v48 = *(v1 + 20);
          v46 = v112;
        }

        *(v48 + 36 * v5 + 12) = v6 - *(v48 + 36 * v5 + 8);
        if (HIDWORD(v112) < v6)
        {
          v109 = 0;
          HIDWORD(v112) = realloc_array(v111, &v109, 16 * v6, 16 * v46, 16 * v46, 1) >> 4;
          v111 = v109;
          v46 = v112;
        }

        if (v46 < v6)
        {
          v52 = v6 - v46;
          v53 = v111 + 16 * v46;
          do
          {
            *v53++ = xmmword_26287F850;
            --v52;
          }

          while (v52);
        }

        LODWORD(v112) = v6;
        if (!v5)
        {
LABEL_76:
          v54 = v111;
          v55 = HIDWORD(v112);
          v56 = *(v1 + 42);
          goto LABEL_78;
        }
      }

      v102 = v5;
      v105 = v98 + v3;
      v104 = v13 + v101->i32[0] - v99->i32[0];
      v23 = 36 * v21;
      while (1)
      {
        if (v18 == v21)
        {
          v24 = 0;
        }

        else
        {
          v24 = v105;
        }

        v25 = *(v1 + 20);
        v26 = (*(v1 + 22) + 16 * *(v25 + v23 + 8));
        if ((v104 + v24 + *v26) <= v106)
        {
          v27 = v1;
          v28 = *(v25 + 36 * v102);
          v29 = *(v25 + v23);
          v30 = v29 != 16777209 && ArcGraph::lexToCWID(v27[5], *(v25 + v23)) >> 25 != 126;
          if (v28 == 16777209)
          {
            v1 = v27;
            v18 = v103;
            if (v30)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v31 = v28 == 16777214 || v29 == 16777213;
            v1 = v27;
            v18 = v103;
            if (!v31)
            {
LABEL_35:
              isLexPelPhnMatch = FstSearchLateLatticeHashBackoff::isLexPelPhnMatch(v1, v21, &v113);
              v1 = v27;
              v18 = v103;
              if (isLexPelPhnMatch)
              {
                v33 = v112;
                if (v112 == HIDWORD(v112))
                {
                  DgnArray<DgnPrimArray<double>>::reallocElts(&v111, 1, 1);
                  v33 = v112;
                  v1 = v27;
                  v18 = v103;
                }

                *(v111 + v33) = *v26;
                v34 = v112;
                LODWORD(v112) = v112 + 1;
                v35 = (v111 + 16 * v34);
                v35[1].i32[1] = v21;
                *v35 = vadd_s32(vsub_s32(vadd_s32(*v101, vdup_n_s32(v24)), *v99), *v35);
                v36 = *(*(v1 + 20) + 36 * v102);
                if (v36 != 16777209)
                {
                  v35[1].i32[0] = v36 + 2 * v35[1].i32[0] + 1;
                }
              }
            }
          }
        }

        ++v21;
        v23 += 36;
        if (v21 >= *(v123 + v20))
        {
          v22 = v112;
          v4 = v96;
          v3 = v97;
          v5 = v102;
          goto LABEL_42;
        }
      }
    }

    v56 = 0;
    v6 = 0;
    v55 = 0;
    v54 = 0;
LABEL_78:
    v57 = *(v1 + 22);
    *(v1 + 22) = v54;
    v111 = v57;
    v58 = *(v1 + 47);
    *(v1 + 46) = v6;
    *(v1 + 47) = v55;
    LODWORD(v112) = 0;
    HIDWORD(v112) = v58;
    v110 = 0;
    v109 = 0;
    if (v56)
    {
      v59 = MemChunkAlloc(4 * v56, 0);
      v109 = v59;
      v110 = v56;
      if (*(v1 + 42))
      {
        v60 = 0;
        v61 = 0;
        v56 = 0;
        do
        {
          v62 = *(v1 + 20);
          v63 = (v62 + v60);
          if (*(v62 + v60 + 8) == -1)
          {
            *(v59 + v61) = -1;
          }

          else
          {
            if (v61 != v56)
            {
              v64 = v62 + 36 * v56;
              v65 = *v63;
              v66 = v63[1];
              *(v64 + 32) = *(v63 + 16);
              *v64 = v65;
              *(v64 + 16) = v66;
            }

            *(v59 + v61) = v56++;
          }

          ++v61;
          v67 = *(v1 + 42);
          v60 += 36;
        }

        while (v61 < v67);
        v68 = *(v1 + 43);
        if (v56 > v68)
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v1 + 160, v56 - v68, 0);
          LODWORD(v67) = *(v1 + 42);
        }

        if (v67 < v56)
        {
          v69 = v56 - v67;
          v70 = (*(v1 + 20) + 36 * v67 + 32);
          do
          {
            *(v70 - 2) = xmmword_26287F860;
            *(v70 - 1) = xmmword_26287F870;
            *v70 = -2;
            v70 += 18;
            --v69;
          }

          while (v69);
        }
      }

      else
      {
        v56 = 0;
      }
    }

    *(v1 + 42) = v56;
    v71 = *(v1 + 46);
    if (v71)
    {
      v72 = v109;
      v73 = (*(v1 + 22) + 12);
      do
      {
        v74 = *v73;
        if ((v74 & 0x80000000) == 0)
        {
          *v73 = v72[v74];
        }

        v73 += 4;
        --v71;
      }

      while (v71);
    }

    v75 = *(v1 + 50);
    v107 = 0;
    v108 = 0;
    if (v75)
    {
      v125[0] = 0;
      v76 = realloc_array(0, v125, 24 * v75, 0, 0, 1) / 0x18;
      HIDWORD(v108) = v76;
      v77 = v125[0];
      v107 = v125[0];
      v78 = v125[0] + 16;
      v79 = v75;
      do
      {
        *(v78 - 2) = 0xFFFFFFFF00000000;
        *(v78 - 2) = -1;
        *(v78 - 2) = -2;
        *v78 = 0;
        v78 += 3;
        --v79;
      }

      while (v79);
    }

    else
    {
      v77 = 0;
      LODWORD(v76) = 0;
    }

    LODWORD(v108) = v75;
    v80 = *(v1 + 50);
    if (v80)
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = v109;
      do
      {
        v85 = *(v1 + 38);
        if (v83 < v85 && v82 == v85)
        {
          *(v1 + 38) = v83;
        }

        v87 = (*(v1 + 24) + v81);
        v88 = *(v87 + 2);
        if (v88 == -1 || v84[v88] != -1)
        {
          v89 = &v77[3 * v83];
          v90 = *v87;
          v89[2] = *(v87 + 2);
          *v89 = v90;
          v91 = *(*(v1 + 24) + v81 + 8);
          if (v91 != -1)
          {
            LODWORD(v91) = v84[v91];
          }

          *(v89 + 2) = v91;
          ++v83;
          v80 = *(v1 + 50);
        }

        ++v82;
        v81 += 24;
      }

      while (v82 < v80);
    }

    else
    {
      v83 = 0;
    }

    if (v83 < *(v1 + 38))
    {
      *(v1 + 38) = v83;
    }

    if (v76 < v83)
    {
      v125[0] = 0;
      v76 = realloc_array(v77, v125, 24 * v83, 24 * v75, 24 * v75, 1) / 0x18;
      v77 = v125[0];
      LODWORD(v75) = v108;
    }

    if (v75 < v83)
    {
      v92 = v83 - v75;
      v93 = &v77[3 * v75 + 2];
      do
      {
        *(v93 - 2) = 0xFFFFFFFF00000000;
        *(v93 - 2) = -1;
        *(v93 - 2) = -2;
        *v93 = 0;
        v93 += 3;
        --v92;
      }

      while (v92);
    }

    v94 = *(v1 + 24);
    *(v1 + 24) = v77;
    v107 = v94;
    LODWORD(v94) = *(v1 + 51);
    *(v1 + 50) = v83;
    *(v1 + 51) = v76;
    LODWORD(v108) = 0;
    HIDWORD(v108) = v94;
    DgnIArray<Utterance *>::~DgnIArray(&v107);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v109);
    DgnIArray<Utterance *>::~DgnIArray(&v111);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v117);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v118);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v122);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v123);
}

void sub_262624734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a25);
  DgnIArray<Utterance *>::~DgnIArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 160);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v30 - 128);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 112);
  _Unwind_Resume(a1);
}

void FstSearchLateLatticeHash::printSize(FstSearchLateLatticeHash *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950);
  if (v72)
  {
    v13 = v71;
  }

  else
  {
    v13 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v13);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26287F8B0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952);
  if (v72)
  {
    v18 = v71;
  }

  else
  {
    v18 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954);
  if (v72)
  {
    v20 = v71;
  }

  else
  {
    v20 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955);
  if (v72)
  {
    v22 = v71;
  }

  else
  {
    v22 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v66 = a2;
  v67 = a6;
  v68 = a3;
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956);
  if (v72)
  {
    v24 = v71;
  }

  else
  {
    v24 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = *(this + 42);
  v27 = 24 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 24 * (*(this + 43) - v26);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957);
  if (v72)
  {
    v31 = v71;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 16 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 16 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 50);
  v41 = 22 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 22 * (*(this + 51) - v40);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964);
  if (v72)
  {
    v45 = v71;
  }

  else
  {
    v45 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26287F8B0, v16, v16, v45, v43, v42, 0);
  DgnString::~DgnString(&v71);
  *a4 += v43;
  *a5 += v42;
  v46 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  v47 = *(this + 54);
  v48 = 22 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 22 * (*(this + 55) - v47);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966);
  if (v72)
  {
    v52 = v71;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26287F8B0, v16, v16, v52, v50, v49, 0);
  DgnString::~DgnString(&v71);
  *a4 += v50;
  *a5 += v49;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968);
  if (v72)
  {
    v54 = v71;
  }

  else
  {
    v54 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_26287F8B0, v16, v16, v54, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970);
  if (v72)
  {
    v56 = v71;
  }

  else
  {
    v56 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v15, &unk_26287F8B0, v16, v16, v56, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972);
  if (v72)
  {
    v58 = v71;
  }

  else
  {
    v58 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &unk_26287F8B0, v16, v16, v58, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v59 = sizeObject(this + 240, 0);
  v60 = sizeObject(this + 240, 1);
  v61 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974);
  if (v72)
  {
    v63 = v71;
  }

  else
  {
    v63 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26287F8B0, v16, v16, v63, v59, v60, v61);
  DgnString::~DgnString(&v71);
  *a4 += v59;
  *a5 += v60;
  *v67 += v61;
  v69 = 0;
  v70 = 0;
  SearchItf::printSize(this, v66, v15, &v70, &v69, &v69);
  *a4 += v70;
  *a5 += v69;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985);
  if (v72)
  {
    v65 = v71;
  }

  else
  {
    v65 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v68, &unk_26287F8B0, (35 - v68), (35 - v68), v65, *a4, *a5, *v67);
  DgnString::~DgnString(&v71);
}

BOOL FstSearchLateLatticeHash::findBestPath(uint64_t a1, uint64_t **a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a3 + 8) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v10;
  }

  if (v10)
  {
    v12 = *(a2 + 2) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a2 = MemChunkAlloc(v10, 0);
    *(a2 + 2) = v10;
  }

  else if (!v10)
  {
    goto LABEL_16;
  }

  v13 = 0;
  do
  {
    *(*a2 + v13) = 0;
    *(*a3 + v13++) = 0;
  }

  while (v10 != v13);
LABEL_16:
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1 || (v15 = *(a1 + 160), v16 = *(v15 + 36 * BestTrace + 16) + *(*(a1 + 88) + 4 * *(v15 + 36 * BestTrace + 4)), *a4 = v16, v16 == 1879048192))
  {
    v17 = 1879048192;
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = v18 - 1;
      v20 = 36 * v18;
      v21 = *(v15 + 36 * BestTrace + 4);
      v22 = 1879048192;
      do
      {
        if (*(v15 + v20 - 32) == v21 && *(v15 + v20 - 36) == 16777213 && !*(*a2 + v19))
        {
          *(*a2 + v19) = 2;
          *(*a3 + v19) = 1;
          v15 = *(a1 + 160);
          if (v22 >= *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32)))
          {
            v22 = *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32));
          }
        }

        --v19;
        v20 -= 36;
      }

      while (v19 != -1);
      v16 = *a4;
      v23 = *(a1 + 168);
    }

    else
    {
      v23 = 0;
      v22 = 1879048192;
    }

    v24 = *(a1 + 28);
    if (v16 <= v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v16 - v22;
    }

    v26 = *(a5 + 3);
    v27 = v23;
    if (v23 > v26)
    {
      DgnPrimArray<unsigned int>::reallocElts(a5, v23 - v26, 0);
      v27 = *(a1 + 168);
    }

    *(a5 + 2) = v23;
    v17 = *a4;
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = v17 - (v25 + v24) + *(a1 + 12);
      do
      {
        v31 = *a2;
        v32 = *(*a2 + v29);
        if (v32 == 2)
        {
          v33 = *a5;
          if (*(*(a1 + 176) + 16 * *(*(a1 + 160) + v28 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + v28 + 4)) <= v30)
          {
            *(v33 + 4 * v29) = v25 + v24;
            *(v31 + v29) = 1;
          }

          else
          {
            *(v33 + 4 * v29) = 1879048192;
            *(v31 + v29) = 0;
          }
        }

        else if (v32 == 1)
        {
          *(*a5 + 4 * v29) = 0;
        }

        else
        {
          *(*a5 + 4 * v29) = 1879048192;
        }

        ++v29;
        v28 += 36;
      }

      while (v29 < *(a1 + 168));
      v17 = *a4;
    }
  }

  return v17 != 1879048192;
}

uint64_t FstSearchLateLatticeHash::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLateLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 36 * v11);
        if ((*v13 - 16777209) >= 2 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 16 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLateLatticeHash::createLatticeLink(a1, v11, v15, 0xFFFFFFFF, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLateLatticeHash::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 36 * v11 + 12) + *(*(a1 + 160) + 36 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_26262542C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLateLatticeHash::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 36 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 16 * v19 + 12) == a2)
      {
        v22 = (v21 + 16 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(v44, *(a1 + 40), *(v16 + 36 * a2));
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (LODWORD(v44[0]) >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((a4 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 36 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 36 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v35 = *(v30 + 36 * a4 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 36 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 36 * a4 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_262625678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLateLatticeHash::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

VirtMap *FstSearchLateLatticeHash::endTopRecSyncRecog(VirtMap **this)
{
  VirtMap::setEmpty(this[14]);
  result = this[14];
  this[14] = 0;
  return result;
}

uint64_t FstSearchLateLatticeHash::getBestExitScore(FstSearchLateLatticeHash *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 24 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 36 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v18))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v17, 1, 1);
          v5 = v18;
          v4 = v17;
        }

        v4[v5] = v8;
        v5 = v18 + 1;
        LODWORD(v18) = v18 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 24;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = *(this + 20);
    v10 = v5;
    v11 = 1879048192;
    do
    {
      v12 = *v4++;
      v13 = v9 + 36 * v12;
      v14 = *(v13 + 16);
      if (v11 > v14)
      {
        *(this + 57) = *(v13 + 20);
        v11 = v14;
      }

      --v10;
    }

    while (v10);
  }

  else
  {
LABEL_16:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v15 = 20000;
  }

  else
  {
    v15 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  return v15;
}

uint64_t FstSearchLateLatticeHash::getBestScoreMaybeUpdateFstNode(FstSearchLateLatticeHash *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 24;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

unint64_t FstSearchLateLatticeHash::seedTheory(FstSearchLateLatticeHash *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 42);
    if (v11 == *(this + 43))
    {
      DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 36 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = 0xFFFFFFFFLL;
    *(v12 + 16) = a2;
    *(v12 + 20) = 0xFFFFFFFFLL;
    *(v12 + 28) = 0;
    *(v12 + 32) = -2;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 50);
  if (v14 == *(this + 51))
  {
    DgnArray<CWIDAC>::reallocElts(this + 192, 1, 1);
    v14 = *(this + 50);
  }

  v15 = *(this + 24) + 24 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  LODWORD(v15) = *(this + 50) + 1;
  *(this + 50) = v15;
  *(this + 38) = v15;

  return FstSearchLateLatticeHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLateLatticeHash::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 57);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 36 * v6);
    for (i = v8[5]; i != -1; v6 = v14)
    {
      v14 = i;
      result = v7[5];
      if (*v8 == 16777209)
      {
        v15 = (*(result + 87) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v8);
        v15 = result;
      }

      v16 = *(a2 + 8);
      if (v16 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v16 = *(a2 + 8);
      }

      *(*a2 + 4 * v16) = v15;
      ++*(a2 + 8);
      v17 = *(a6 + 8);
      if (v17 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v17 = *(a6 + 8);
      }

      *(*a6 + 4 * v17) = v6;
      ++*(a6 + 8);
      v18 = v7[20];
      v19 = *(v18 + 36 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v18 + 36 * v6 + 16);
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 36 * v14);
      i = v8[5];
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchLateLatticeHash::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
{
  v3 = *(this + 40);
  if (*(v3 + 178) == 1)
  {
    result = ArcGraph::ensureHeaderValid(*(this + 40), "Header");
    if (*(v3 + 202) == 1)
    {
      v8 = *(this + 140);
      if (*(v3 + 188) != v8)
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchInterWordSilencePenalty", *(v3 + 188), v8);
      }
    }

    v9 = *(this + 136);
    if (*(v3 + 192) != v9)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchPerWordPenalty", *(v3 + 192), v9);
    }

    v10 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 40) + 174)) + 608);
    if (*(v3 + 196) != v10)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "Voc", *(v3 + 196), v10);
    }

    v11 = *(v3 + 203);
    if (a3)
    {
      if (a2)
      {
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v12 = 1;
      }

      else
      {
        if (v11)
        {
          return result;
        }

        v12 = 0;
      }

      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "DropAlternateFrames", v12, v11);
    }

    else if (a2 & 1) != 0 || (v11)
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "NoDecimation", a2, v11);
    }
  }

  return result;
}

uint64_t FstSearchLateLatticeHash::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLateLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (*(a3 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *a3 + v12;
      v16 = *(v15 + 28);
      WordLatticeLC::WordLatticeLC(v20, v15, v14, *(v15 + 24) - v14, v16 - *(v15 + 24), v21);
      v17 = *(a2 + 8);
      if (v17 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v17) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v17), v20);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v20);
      ++v13;
      v12 += 32;
      v14 = v16;
    }

    while (v13 < *(a3 + 8));
  }

  v18 = a1[20] + 36 * v11;
  return (*(v18 + 16) + *(a1[11] + 4 * *(v18 + 4)));
}

uint64_t *FstSearchLatticeHashBackoff::generateNullTraces(uint64_t *this, int a2, unsigned int a3)
{
  v3 = *(this + 50);
  if (v3 > a3)
  {
    v5 = this;
    v6 = a3;
    v7 = this[24];
    v8 = 28 * a3;
    do
    {
      if ((*(v7 + v8 + 24) & 0x80000000) == 0)
      {
        v9 = *(v5 + 184);
        v10 = *(v5 + 168);
        if (v10 == *(v5 + 172))
        {
          this = DgnArray<DgnPrimArray<double>>::reallocElts(v5 + 160, 1, 1);
          v10 = *(v5 + 168);
        }

        v11 = (*(v5 + 160) + 16 * v10);
        *v11 = 16777210;
        v11[1] = a2;
        v11[2] = v9;
        v11[3] = 0;
        v12 = *(v5 + 168);
        *(v5 + 168) = v12 + 1;
        v13 = *(v5 + 184);
        if (v13 == *(v5 + 188))
        {
          this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v5 + 176, 1, 1);
          v13 = *(v5 + 184);
          v12 = *(v5 + 168) - 1;
        }

        v14 = *(v5 + 176) + 20 * v13;
        *(v5 + 184) = v13 + 1;
        v7 = *(v5 + 192);
        v15 = v7 + v8;
        *v14 = *(v7 + v8);
        *(v14 + 4) = *(v7 + v8 + 16);
        v16 = *(v7 + v8 + 24);
        *(v14 + 12) = *(v7 + v8 + 8);
        *(v14 + 16) = v16;
        *(v15 + 24) = -1;
        *(v15 + 8) = v12;
        v3 = *(v5 + 200);
      }

      ++v6;
      v8 += 28;
    }

    while (v6 < v3);
  }

  return this;
}

int64x2_t FstSearchLatticeHashBackoff::advanceDeltas(FstSearchLatticeHashBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v85[0] = a2;
  v83 = 0u;
  v84 = 0u;
  SnapTime::recordTime(&v83, 1, 0, 0, 0);
  *v82 = 0xFFFFFFFF00000000;
  *&v82[8] = -1;
  *&v82[12] = -2;
  *&v82[16] = 0;
  *&v82[24] = -1;
  *(this + 58) = a3;
  v10 = *(this + 2);
  v62 = (this + 232);
  v11 = *(this + 50);
  if (v11)
  {
    v61 = a5;
    for (i = 0; i < v11; ++i)
    {
      v13 = *(this + 24) + 28 * i;
      v14 = *(v13 + 4);
      v15 = *(this + 5);
      if (*(v15 + 160) != v14)
      {
        if (*(v15 + 140) > v14)
        {
          v16 = *(this + 19) + *(this + 58) >= 5000 ? 5000 : *(this + 19) + *(this + 58);
          ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v13 + 12), *v13, v16);
          v18 = *(this + 58);
          if (ScoreAllowBackoff_updateNodeInSequence - v10 <= v18)
          {
            if (v18 > ScoreAllowBackoff_updateNodeInSequence)
            {
              *v62 = ScoreAllowBackoff_updateNodeInSequence;
            }

            v19 = (*(this + 24) + 28 * i);
            v20 = *(v19 + 12);
            *v82 = *v19;
            *&v82[12] = v20;
            *v82 = ScoreAllowBackoff_updateNodeInSequence;
            FstSearchLatticeHashBackoff::maybeInsertHashedToken(this, v82);
          }
        }

        v21 = v14;
        do
        {
          v22 = *(this + 5);
          v23 = *(v22 + 152);
          v24 = *(v23 + 4 * v21);
          v25 = *(v23 + 4 * (v21 + 1));
          v26 = *(v22 + 140);
          if (v26 <= v25)
          {
            if (v26 <= v14 && (*(this + 356) & 1) != 0)
            {
              v33 = (v24 & 0xFFFFF) <= 0xFFFF3 ? v24 & 0xFFFFF : v24 & 0xFFFFF | 0xF00000;
              if (v33 != 16777210)
              {
                DgnString::DgnString(&v79);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v33, &v79);
                v35 = &unk_26287F8B0;
                if (v79.i32[2])
                {
                  v35 = v79.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v34, v14, *(*(this + 24) + 28 * i), *(*(this + 24) + 28 * i + 8), v35);
                MiniFst::seed(this + 240, *(*(this + 24) + 28 * i), *(*(this + 24) + 28 * i + 20), *(*(this + 24) + 28 * i + 8), v25);
                DgnString::~DgnString(&v79);
              }
            }
          }

          else
          {
            v27 = (v24 >> 20) & 0x3FF;
            if (*(this + 19) + *(this + 58) >= 5000)
            {
              v28 = 5000;
            }

            else
            {
              v28 = *(this + 19) + *(this + 58);
            }

            v29 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v23 + 4 * v21), *(*(this + 24) + 28 * i) + v27, v28);
            v30 = *(this + 58);
            if (v29 - v10 <= v30)
            {
              if (v30 > v29)
              {
                *v62 = v29;
              }

              v31 = (*(this + 24) + 28 * i);
              v32 = *(v31 + 12);
              *v82 = *v31;
              *&v82[12] = v32;
              *v82 = v29;
              *&v82[4] = v25;
              *&v82[12] = v24;
              *&v82[16] = DWORD1(v32) + v27;
              FstSearchLatticeHashBackoff::maybeInsertHashedToken(this, v82);
            }
          }

          v21 += 2;
        }

        while ((v24 & 0x80000000) == 0);
        v11 = *(this + 50);
      }
    }

    a3 = *v62;
    a5 = v61;
  }

  v81 = a3 + v10;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v62, v10, a2);
  }

  v79 = 0u;
  v80 = 0u;
  SnapTime::recordTime(&v79, 1, 0, 0, 0);
  v79 = vsubq_s64(v79, v83);
  v80 = vsubq_s64(v80, v84);
  v36 = *(this + 13);
  v37 = vaddq_s64(v36[1], v80);
  *v36 = vaddq_s64(*v36, v79);
  v36[1] = v37;
  v77 = 0u;
  v78 = 0u;
  SnapTime::recordTime(&v77, 1, 0, 0, 0);
  FstSearchLatticeHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v81);
  v75 = 0u;
  v76 = 0u;
  SnapTime::recordTime(&v75, 1, 0, 0, 0);
  v38 = vsubq_s64(v75, v77);
  v39 = *(this + 13);
  v40 = v39[3];
  v41 = vaddq_s64(v39[2], v38);
  v75 = v38;
  v76 = vsubq_s64(v76, v78);
  v42 = vaddq_s64(v40, v76);
  v39[2] = v41;
  v39[3] = v42;
  v73 = 0u;
  v74 = 0u;
  SnapTime::recordTime(&v73, 1, 0, 0, 0);
  v43 = *(this + 24);
  v44 = *(this + 26);
  *(this + 24) = v44;
  *(this + 26) = v43;
  LODWORD(v43) = *(this + 51);
  v45 = *(this + 27);
  *(this + 25) = v45;
  *(this + 54) = 0;
  *(this + 55) = v43;
  v46 = *(this + 6);
  if (v46 && v46 < v45)
  {
    mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(v44, v46, v45);
  }

  FstSearchLatticeHashBackoff::generateNullTraces(this, a2, 0);
  v71 = 0u;
  v72 = 0u;
  SnapTime::recordTime(&v71, 1, 0, 0, 0);
  v47 = vsubq_s64(v71, v73);
  v48 = *(this + 13);
  v49 = v48[5];
  v50 = vaddq_s64(v48[4], v47);
  v71 = v47;
  v72 = vsubq_s64(v72, v74);
  v51 = vaddq_s64(v49, v72);
  v48[4] = v50;
  v48[5] = v51;
  v69 = 0u;
  v70 = 0u;
  SnapTime::recordTime(&v69, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v67 = 0u;
  v68 = 0u;
  SnapTime::recordTime(&v67, 1, 0, 0, 0);
  v52 = vsubq_s64(v67, v69);
  v53 = *(this + 13);
  v54 = v53[9];
  v55 = vaddq_s64(v53[8], v52);
  v67 = v52;
  v68 = vsubq_s64(v68, v70);
  v56 = vaddq_s64(v54, v68);
  v53[8] = v55;
  v53[9] = v56;
  v65 = 0u;
  v66 = 0u;
  SnapTime::recordTime(&v65, 1, 0, 0, 0);
  *(this + 54) = 0;
  v57 = *(this + 50);
  *(this + 38) = v57;
  if (a4)
  {
    *(a4 + 2) += v57;
    if (*(a4 + 2) > v57)
    {
      LODWORD(v57) = *(a4 + 2);
    }

    *(a4 + 2) = v57;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLatticeHashBackoff::seedFromMiniFst(this, v85);
  }

  if (a5)
  {
    FstSearchLatticeHashBackoff::propagateNulls(this, v81, a2, a4);
  }

  *(this + 56) = a2;
  v63 = 0u;
  v64 = 0u;
  SnapTime::recordTime(&v63, 1, 0, 0, 0);
  v58 = *(this + 13);
  result = vaddq_s64(v58[6], vsubq_s64(v63, v65));
  v60 = vaddq_s64(v58[7], vsubq_s64(v64, v66));
  v58[6] = result;
  v58[7] = v60;
  return result;
}

__n128 FstSearchLatticeHashBackoff::maybeInsertHashedToken(uint64_t a1, int *a2)
{
  v4 = a2[1];
  v5 = v4 >> 6;
  v6 = v4 & 0x3F;
  v7 = *(a1 + 112);
  v8 = v7[2];
  v9 = *(v8 + 8 * v5);
  if (!v9)
  {
    v10 = *(v7 + 12);
    v11 = *(v7 + 13);
    v12 = *v7;
    if (v10 >= v11)
    {
      v13 = v12 + 16 * v11;
      if (!*(v13 + 8))
      {
        *v13 = MemChunkAlloc(0x100uLL, 0);
        *(v13 + 8) = 64;
        v12 = *v7;
        v8 = v7[2];
        LODWORD(v10) = *(v7 + 12);
        v11 = *(v7 + 13);
      }

      *(v8 + 8 * v5) = v12 + 16 * v11;
      *(v7 + 13) = v11 + 1;
    }

    else
    {
      *(v8 + 8 * v5) = v12 + 16 * v10;
    }

    *(v7 + 12) = v10 + 1;
    v14 = *(v7[2] + 8 * v5);
    memset(*v14, 255, 4 * *(v14 + 8));
    v16 = *(v7 + 10);
    if (v16 == *(v7 + 11))
    {
      DgnPrimArray<unsigned int>::reallocElts((v7 + 4), 1, 1);
      v16 = *(v7 + 10);
    }

    *(v7[4] + 4 * v16) = v5;
    ++*(v7 + 10);
    v9 = *(v7[2] + 8 * v5);
  }

  v17 = *v9;
  v18 = *(v17 + 4 * v6);
  if (v18 == -1)
  {
    v19 = *(a1 + 216);
    *(v17 + 4 * v6) = v19;
    a2[6] = -1;
    if (v19 == *(a1 + 220))
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(a1 + 208, 1, 1);
      v19 = *(a1 + 216);
    }

    v20 = *(a1 + 208) + 28 * v19;
    result = *a2;
    *(v20 + 12) = *(a2 + 3);
    *v20 = result;
    ++*(a1 + 216);
    return result;
  }

  v21 = a2[5];
  v22 = *(a1 + 208);
  v23 = (v22 + 28 * v18);
  if (v21 == v23[5])
  {
    if (*v23 <= *a2)
    {
      return result;
    }

LABEL_16:
    result = *a2;
    *(v23 + 3) = *(a2 + 3);
    *v23 = result;
    return result;
  }

  v24 = v18 ^ 0xFFFFFFFFLL;
  v25 = *v23;
  v26 = v23[6];
  if (v26 < 0)
  {
    v28 = 1;
    v30 = *v23;
LABEL_25:
    if (v28 >= *(a1 + 20))
    {
      v38 = *a2;
      if (v30 <= *a2)
      {
        return result;
      }

      if ((v24 & 0x80000000) != 0)
      {
        a2[6] = v26;
        goto LABEL_16;
      }

      v27 = *(a1 + 176);
      v39 = (v27 + 20 * v24);
      a2[6] = v39[4];
      v40 = a2[4];
      *v39 = v38;
      v39[1] = v40;
      v41 = a2[2];
      v39[2] = v21;
      v39[3] = v41;
      v29 = v24;
      goto LABEL_35;
    }

    a2[6] = v26;
    v29 = *(a1 + 184);
    v33 = *(a1 + 188);
    v23[6] = v29;
    v34 = v29;
    if (v29 == v33)
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(a1 + 176, 1, 1);
      v34 = *(a1 + 184);
      v21 = a2[5];
    }

    v27 = *(a1 + 176);
    v35 = (v27 + 20 * v34);
    *(a1 + 184) = v34 + 1;
    v36 = a2[4];
    *v35 = *a2;
    v35[1] = v36;
    v37 = a2[2];
    v35[2] = v21;
    v35[3] = v37;
    v35[4] = a2[6];
    if ((v29 & 0x80000000) == 0)
    {
      v22 = *(a1 + 208);
      v25 = *(v22 + 28 * v18);
      v38 = *(v27 + 20 * v29);
      goto LABEL_35;
    }
  }

  else
  {
    v27 = *(a1 + 176);
    v28 = 1;
    v29 = v23[6];
    v30 = *v23;
    while (1)
    {
      v31 = (v27 + 20 * v29);
      v32 = *v31;
      if (v31[2] == v21)
      {
        break;
      }

      if (v30 <= v32)
      {
        v24 = v29;
        v30 = *v31;
      }

      ++v28;
      v29 = v31[4];
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    v38 = *a2;
    if (v32 > *a2)
    {
      a2[6] = v31[4];
      v42 = a2[4];
      *v31 = v38;
      v31[1] = v42;
      v43 = a2[2];
      v31[2] = v21;
      v31[3] = v43;
LABEL_35:
      if (v25 > v38)
      {
        v44 = v27 + 20 * v29;
        v45 = v22 + 28 * v18;
        v46 = *(v44 + 12);
        *v44 = v25;
        v47 = *(v44 + 4);
        *(v44 + 4) = *(v45 + 16);
        *(v44 + 12) = *(v45 + 8);
        LODWORD(v44) = *(v45 + 24);
        result = *(a2 + 3);
        *v45 = *a2;
        *(v45 + 12) = result;
        v48 = *(a1 + 208) + 28 * v18;
        *v48 = v38;
        *(v48 + 8) = v46;
        *(v48 + 16) = v47;
        *(v48 + 24) = v44;
      }
    }
  }

  return result;
}

uint64_t FstSearchLatticeHashBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 216);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(*(this + 208), a2, v4);
    v8 = *(*(v6 + 208) + 28 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 220);
    if (a2 > v9)
    {
      this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v6 + 208, a2 - v9, 0);
    }

    v10 = *(v6 + 216);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = *(v6 + 208) + 28 * v10 + 12;
      do
      {
        *(v12 - 12) = 0xFFFFFFFF00000000;
        *(v12 - 4) = -1;
        *v12 = -2;
        *(v12 + 4) = 0;
        *(v12 + 8) = 0;
        *(v12 + 12) = -1;
        v12 += 28;
        --v11;
      }

      while (v11);
    }

    *(v6 + 216) = a2;
  }

  return this;
}

uint64_t mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (result + 28 * v3);
      v5 = (result + 28 * (v3 + (a3 >> 1)));
      v6 = 28;
      v7 = v4;
      do
      {
        v8 = *v7;
        *v7++ = *v5;
        *v5++ = v8;
        --v6;
      }

      while (v6);
      v9 = (result - 28 + 28 * (v3 + a3));
      v10 = (result + 28 * v3);
      do
      {
        v11 = v10 + 28;
        while (1)
        {
          v10 = v11;
          if (v11 >= v9)
          {
            break;
          }

          v11 += 28;
          if (*v10 > *v4)
          {
            v12 = v10;
            while (*v9 >= *v4)
            {
              v9 -= 28;
              if (v10 >= v9)
              {
                goto LABEL_16;
              }
            }

            for (i = 0; i != 28; ++i)
            {
              v14 = *v12;
              *v12++ = v9[i];
              v9[i] = v14;
            }

            v9 -= 28;
            break;
          }
        }

LABEL_16:
        ;
      }

      while (v10 < v9);
      if (*v10 > *v4)
      {
        v10 -= 28;
      }

      if (v10 > v4)
      {
        for (j = 0; j != 28; ++j)
        {
          v16 = v10[j];
          v10[j] = v4[j];
          v4[j] = v16;
        }
      }

      v17 = (v10 - v4) / 0x1CuLL;
      if (v17 <= a2)
      {
        if (v17 >= a2)
        {
          return result;
        }

        v18 = v17 + 1;
        v3 += v18;
        a2 -= v18;
        v17 = a3 - v18;
      }

      a3 = v17;
    }

    while (v17 > 1);
  }

  return result;
}

uint64_t FstSearchLatticeHashBackoff::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 256) + 36 * v4);
        v42 = *v5;
        v43 = v5[5];
        v6 = v5[6];
        v40 = v5[4];
        v41 = v5[7];
        v7 = v5[2];
        v44 = 0;
        v45 = 0;
        v39 = v6;
        if ((v7 & 0x80000000) != 0)
        {
          LODWORD(v11) = -2 - v7;
        }

        else
        {
          v8 = 0;
          v9 = 0;
          do
          {
            if (v9 == HIDWORD(v45))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v44, 1, 1);
              v9 = v45;
              v8 = v44;
            }

            *(v8 + 4 * v9) = v7;
            v10 = v45;
            v9 = v45 + 1;
            LODWORD(v45) = v45 + 1;
            v7 = *(*(v2 + 240) + 36 * v7 + 8);
          }

          while ((v7 & 0x80000000) == 0);
          LODWORD(v11) = -2 - v7;
          if ((v10 & 0x80000000) == 0)
          {
            do
            {
              v12 = *(v44 + 4 * v10);
              v13 = *(v2 + 240);
              v14 = (v13 + 36 * v12);
              v15 = *v14;
              v16 = *(v14 + 2);
              v17 = *(v2 + 184);
              if (v17 == *(v2 + 188))
              {
                DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
                v17 = *(v2 + 184);
                v13 = *(v2 + 240);
              }

              v18 = *(v2 + 176) + 20 * v17;
              *(v2 + 184) = v17 + 1;
              *v18 = v15;
              *(v18 + 4) = v16;
              *(v18 + 12) = v11;
              *(v18 + 16) = -1;
              v19 = *(v13 + 36 * v12 + 28);
              v20 = *(v2 + 168);
              if (v20 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v20 = *(v2 + 168);
              }

              v21 = *(v2 + 160);
              v22 = v21 + 16 * v20;
              *v22 = v19;
              *(v22 + 8) = v17;
              *(v22 + 12) = 0;
              v11 = *(v2 + 168);
              *(v2 + 168) = v11 + 1;
              *(v21 + 16 * v11 + 12) = 1;
            }

            while (v10-- > 0);
          }
        }

        v24 = *(v2 + 184);
        if (v24 == *(v2 + 188))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
          v24 = *(v2 + 184);
        }

        v25 = *(v2 + 176);
        *(v2 + 184) = v24 + 1;
        v26 = (v25 + 20 * v24);
        *v26 = v42;
        v26[1] = v40;
        v26[2] = v43;
        v26[3] = v11;
        v26[4] = -1;
        if (v41 == 16777213)
        {
          v27 = (*(v2 + 160) + 16 * v11);
          v28 = 16777209;
          if (*v27 == 16777209)
          {
            v24 = v27[2];
          }
        }

        else
        {
          v28 = v41;
        }

        v29 = *a2;
        v30 = *(v2 + 168);
        if (v30 == *(v2 + 172))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
          v30 = *(v2 + 168);
        }

        v31 = *(v2 + 160);
        v32 = (v31 + 16 * v30);
        *v32 = v28;
        v32[1] = v29;
        v32[2] = v24;
        v32[3] = 0;
        v33 = *(v2 + 168);
        *(v2 + 168) = v33 + 1;
        *(v31 + 16 * v33 + 12) = 1;
        v34 = *(v2 + 200);
        if (v34 == *(v2 + 204))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v34) = *(v2 + 200);
        }

        v35 = *(v2 + 192) + 28 * v34;
        *v35 = v42;
        *(v35 + 4) = v39;
        *(v35 + 8) = v33;
        *(v35 + 12) = -2;
        *(v35 + 16) = v40;
        *(v35 + 20) = v43;
        *(v35 + 24) = -1;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
        ++v4;
        LODWORD(v36) = *(v2 + 264);
        v37 = *(v2 + 20);
        if (v36 >= v37)
        {
          v36 = v37;
        }

        else
        {
          v36 = v36;
        }
      }

      while (v4 < v36);
    }
  }

  return this;
}

void sub_262626F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t *FstSearchLatticeHashBackoff::propagateNulls(FstSearchLatticeHashBackoff *this, int a2, int a3, SearchStats *a4)
{
  v5 = *(this + 42);
  LODWORD(v6) = *(this + 50);
  if (!v6)
  {
    v41 = *(this + 38);
    if (a4)
    {
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v62 = *(this + 42);
  v63 = a4;
  v7 = 0;
  v70 = a2;
  do
  {
    v8 = *(*(this + 24) + 28 * v7 + 4);
    v9 = *(this + 5);
    if (*(v9 + 160) != v8 && (*(v9 + 140) <= v8 || (*(*(v9 + 152) + 4 * v8) & 0x40000000) != 0))
    {
      v10 = *(*(this + 24) + 28 * v7 + 4);
      v66 = v7;
      do
      {
        v11 = *(this + 5);
        v12 = *(v11 + 152);
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * (v10 + 1));
        v15 = *(v11 + 140);
        if (v15 > v14)
        {
          goto LABEL_37;
        }

        v16 = (v13 & 0xFFFFF) <= 0xFFFF3 ? v13 & 0xFFFFF : v13 & 0xFFFFF | 0xF00000;
        if (v15 <= v8 && v16 != 16777210)
        {
          goto LABEL_37;
        }

        v18 = (v13 >> 20) & 0x3FF;
        v19 = *(this + 24);
        v20 = (v19 + 28 * v7);
        v21 = *v20;
        v22 = *v20 + v18;
        if (v22 > a2)
        {
          goto LABEL_37;
        }

        v23 = v20[2];
        v72 = *(v20 + 6);
        v71 = *(v20 + 7);
        v24 = v20[4];
        v25 = v20[5];
        v26 = v20[6];
        v27 = v24 + v18;
        if (v16 == 16777210)
        {
          if (v6 != *(this + 51))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v16 == 16777214)
          {
            v28 = v21 - v24;
          }

          else
          {
            v28 = v22;
          }

          if (v16 == 16777214)
          {
            v29 = 0;
          }

          else
          {
            v29 = v27;
          }

          if (v16 == 16777214)
          {
            v30 = v27;
          }

          else
          {
            v30 = 0;
          }

          v67 = v30;
          v68 = v28;
          v31 = *(this + 46);
          v69 = v26;
          if (v31 == *(this + 47))
          {
            v32 = v27;
            v64 = v29;
            DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, 1, 1);
            v29 = v64;
            v28 = v68;
            v26 = v69;
            v27 = v32;
            a2 = v70;
            v31 = *(this + 46);
          }

          v25 = v16 + 2 * v25 + 1;
          v33 = (*(this + 22) + 20 * v31);
          *(this + 46) = v31 + 1;
          *v33 = v28;
          v33[1] = v29;
          v33[2] = v25;
          v33[3] = v23;
          v33[4] = v26;
          v34 = *(this + 42);
          if (v34 == *(this + 43))
          {
            v35 = v27;
            DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
            v28 = v68;
            v26 = v69;
            v27 = v35;
            a2 = v70;
            v34 = *(this + 42);
          }

          v6 = *(this + 20) + 16 * v34;
          *v6 = v16;
          *(v6 + 4) = a3;
          *(v6 + 8) = v31;
          *(v6 + 12) = 0;
          v23 = *(this + 42);
          *(this + 42) = v23 + 1;
          v22 = v28 + v67;
          LODWORD(v6) = *(this + 50);
          if (v6 != *(this + 51))
          {
            goto LABEL_35;
          }
        }

        v36 = v26;
        v37 = v23;
        v38 = v8;
        v39 = v25;
        v40 = v27;
        DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 192, 1, 1);
        v27 = v40;
        v25 = v39;
        v8 = v38;
        v23 = v37;
        v7 = v66;
        v26 = v36;
        a2 = v70;
        LODWORD(v6) = *(this + 50);
LABEL_35:
        v19 = *(this + 24);
LABEL_36:
        v6 = v19 + 28 * v6;
        *v6 = v22;
        *(v6 + 4) = v14;
        *(v6 + 8) = v23;
        *(v6 + 12) = v72;
        *(v6 + 14) = v71;
        *(v6 + 16) = v27;
        *(v6 + 20) = v25;
        *(v6 + 24) = v26;
        LODWORD(v6) = *(this + 50) + 1;
        *(this + 50) = v6;
LABEL_37:
        v10 += 2;
      }

      while ((v13 & 0x80000000) == 0);
    }

    ++v7;
  }

  while (v7 < v6);
  v41 = *(this + 38);
  if (v6 > v41)
  {
    mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(this + 24) + 28 * v41), v6 - v41, 28, 0);
    v41 = *(this + 38);
    LODWORD(v6) = *(this + 50);
  }

  if (v41 < v6)
  {
    v42 = v41 - 1;
    v43 = v41;
    do
    {
      v44 = *(this + 24);
      v45 = (v44 + 28 * v43);
      if (*(v45 + 1) == *(v44 + 28 * (v43 - 1) + 4))
      {
        if (v41 - v42 < *(this + 5))
        {
          v46 = *(v45 + 5);
          v47 = v44 + 28 * v42;
          if (v46 != *(v47 + 20))
          {
            v48 = *(v47 + 24);
            if ((v48 & 0x80000000) != 0)
            {
LABEL_49:
              if (v48 == 0xFFFFFFFFLL)
              {
                v50 = *(this + 46);
                if (v50 == *(this + 47))
                {
                  DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, 1, 1);
                  v50 = *(this + 46);
                  v44 = *(this + 24);
                  v46 = *(v44 + 28 * v43 + 20);
                }

                v51 = (*(this + 22) + 20 * v50);
                *(this + 46) = v50 + 1;
                v52 = (v44 + 28 * v43);
                v53 = v52[4];
                *v51 = *v52;
                v51[1] = v53;
                LODWORD(v52) = v52[2];
                v51[2] = v46;
                v51[3] = v52;
                v54 = v44 + 28 * v42;
                v51[4] = *(v54 + 24);
                *(v54 + 24) = v50;
                ++v41;
              }
            }

            else
            {
              while (1)
              {
                v49 = *(this + 22) + 20 * v48;
                if (v46 == *(v49 + 8))
                {
                  break;
                }

                v48 = *(v49 + 16);
                if ((v48 & 0x80000000) != 0)
                {
                  goto LABEL_49;
                }
              }
            }
          }
        }
      }

      else
      {
        v41 = v42 + 2;
        ++v42;
        v55 = *v45;
        v56 = (v44 + 28 * v42);
        *(v56 + 12) = *(v45 + 12);
        *v56 = v55;
      }

      ++v43;
      v6 = *(this + 50);
    }

    while (v43 < v6);
    v41 = v42 + 1;
  }

  a4 = v63;
  v5 = v62;
  if (v63)
  {
LABEL_57:
    *(a4 + 1) += *(this + 42) - v5;
  }

LABEL_58:
  v57 = *(this + 51);
  if (v41 > v57)
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 192, v41 - v57, 0);
    LODWORD(v6) = *(this + 50);
  }

  if (v6 < v41)
  {
    v58 = v41 - v6;
    v59 = *(this + 24) + 28 * v6 + 12;
    do
    {
      *(v59 - 12) = 0xFFFFFFFF00000000;
      *(v59 - 4) = -1;
      *v59 = -2;
      *(v59 + 4) = 0;
      *(v59 + 8) = 0;
      *(v59 + 12) = -1;
      v59 += 28;
      --v58;
    }

    while (v58);
  }

  *(this + 50) = v41;
  v60 = *(this + 38);

  return FstSearchLatticeHashBackoff::generateNullTraces(this, a3, v60);
}

uint64_t *FstSearchLatticeHashBackoff::getCandidateTokensForTrace(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 12) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(v5 + 176);
      v8 = (v7 + 20 * (*(a2 + 8) + v6));
      v9 = v8[1].u32[1];
      if (v9 == -1 || (v10 = (*(v5 + 160) + 16 * v9), *v10 != 16777210))
      {
        v20 = *(a3 + 8);
        if (v20 == *(a3 + 12))
        {
          result = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(a3, 1, 1);
          LODWORD(v20) = *(a3 + 8);
        }

        v21 = *a3 + 20 * v20;
        v22 = *v8->i8;
        *(v21 + 16) = v8[2].i32[0];
        *v21 = v22;
        LODWORD(v21) = *(a3 + 8);
        *(a3 + 8) = v21 + 1;
        *(*a3 + 20 * v21 + 16) = -1;
      }

      else
      {
        v11 = v10[2];
        if ((v11 & 0x80000000) == 0)
        {
          v12 = vsub_s32(*v8, *(v7 + 20 * v11));
          v13 = *(a3 + 8);
          do
          {
            v14 = *(v5 + 176);
            if (v13 == *(a3 + 12))
            {
              result = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(a3, 1, 1);
              v13 = *(a3 + 8);
            }

            v15 = (v14 + 20 * v11);
            v16 = *a3 + 20 * v13;
            v17 = *v15;
            *(v16 + 16) = *(v15 + 4);
            *v16 = v17;
            v18 = *(a3 + 8);
            v13 = v18 + 1;
            *(a3 + 8) = v18 + 1;
            v19 = (*a3 + 20 * v18);
            *v19 = vadd_s32(v12, *v19);
            v19[2].i32[0] = -1;
            v11 = *(v15 + 4);
          }

          while ((v11 & 0x80000000) == 0);
        }
      }

      ++v6;
    }

    while (v6 < *(a2 + 12));
  }

  return result;
}

double FstSearchLatticeHashBackoff::annihilateNullActiveTokens(FstSearchLatticeHashBackoff *this)
{
  if (*(this + 50))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 24) + 28 * v2;
      v4 = *(v3 + 8);
      if ((v4 & 0x80000000) != 0 || (v5 = (*(this + 20) + 16 * v4), *v5 != 16777210))
      {
        v18 = *(this + 54);
        if (v18 == *(this + 55))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 208, 1, 1);
          LODWORD(v18) = *(this + 54);
        }

        v19 = (*(this + 26) + 28 * v18);
        v20 = *v3;
        *(v19 + 12) = *(v3 + 12);
        *v19 = v20;
        ++*(this + 54);
      }

      else
      {
        v6 = v5[2];
        if ((v6 & 0x80000000) == 0)
        {
          v7 = (*(this + 22) + 20 * v6);
          v8 = *v3 - *v7;
          v9 = *(v3 + 16) - v7[1];
          v10 = *(this + 54);
          do
          {
            if (v10 == *(this + 55))
            {
              DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 208, 1, 1);
              v10 = *(this + 54);
            }

            v11 = (*(this + 26) + 28 * v10);
            v12 = *v3;
            *(v11 + 12) = *(v3 + 12);
            *v11 = v12;
            v13 = *(this + 54);
            v10 = v13 + 1;
            *(this + 54) = v13 + 1;
            v14 = (*(this + 26) + 28 * v13);
            v15 = (*(this + 22) + 20 * v6);
            v16 = v15[2];
            v14[2] = v15[3];
            v17 = v15[1];
            v6 = v15[4];
            *v14 = v8 + *v15;
            v14[4] = v9 + v17;
            v14[5] = v16;
            v14[6] = -1;
          }

          while ((v6 & 0x80000000) == 0);
        }
      }

      ++v2;
    }

    while (v2 < *(this + 50));
  }

  v21 = *(this + 24);
  *(this + 24) = *(this + 26);
  *(this + 26) = v21;
  LODWORD(v21) = *(this + 51);
  result = *(this + 27);
  *(this + 25) = result;
  *(this + 54) = 0;
  *(this + 55) = v21;
  return result;
}

uint64_t FstSearchLatticeHashBackoff::annihilateNullTraces(uint64_t this)
{
  if (*(this + 168))
  {
    v1 = this;
    v2 = 0;
    do
    {
      v3 = *(v1 + 160) + 16 * v2;
      v32 = 0;
      v33 = 0;
      FstSearchLatticeHashBackoff::getCandidateTokensForTrace(v1, v3, &v32);
      v5 = v33;
      v6 = v32;
      if (v33 < 2 || (mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(v32 + 20, (v33 - 1), 20, 0), v5 = v33, v6 = v32, v33 < 2))
      {
        v7 = 0;
        v10 = xmmword_26287F850;
      }

      else
      {
        v7 = 0;
        v8 = v32 + 28;
        v9 = v33 - 1;
        v10 = xmmword_26287F850;
        do
        {
          if (*v8 != *&v6[20 * v7 + 8] && *(v6 + 2) != *v8)
          {
            ++v7;
            v4 = *(v8 - 2);
            v11 = &v6[20 * v7];
            v11[1].n128_u32[0] = v8[2];
            *v11 = v4;
          }

          v8 += 5;
          --v9;
        }

        while (v9);
      }

      v12 = v7 + 1;
      if (HIDWORD(v33) < v12)
      {
        v34 = 0;
        HIDWORD(v33) = realloc_array(v6, &v34, 20 * v12, 20 * v5, 20 * v5, 1) / 0x14;
        v6 = v34;
        v32 = v34;
        v5 = v33;
        v10 = xmmword_26287F850;
      }

      if (v5 < v12)
      {
        v13 = v12 - v5;
        v14 = &v6[20 * v5 + 16];
        do
        {
          *(v14 - 1) = v10;
          *v14 = -1;
          v14 += 20;
          --v13;
        }

        while (v13);
      }

      LODWORD(v33) = v7 + 1;
      mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(v6 + 20, v7, 20, 0, v4);
      v15 = v33;
      v16 = *(v1 + 20);
      if (v33 > v16)
      {
        if (HIDWORD(v33) < v16)
        {
          v34 = 0;
          HIDWORD(v33) = realloc_array(v32, &v34, 20 * v16, 20 * v33, 20 * v33, 1) / 0x14;
          v32 = v34;
          v15 = v33;
        }

        if (v15 < v16)
        {
          v17 = v16 - v15;
          v18 = v32 + 20 * v15 + 16;
          do
          {
            *(v18 - 1) = xmmword_26287F850;
            *v18 = -1;
            v18 += 5;
            --v17;
          }

          while (v17);
        }

        LODWORD(v33) = v16;
        v15 = v16;
      }

      if (v15)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0xFFFFFFFFLL;
        do
        {
          if (*(v3 + 12) <= v20)
          {
            v26 = *(v1 + 184);
            v27 = *(v1 + 176);
            *(v27 + 20 * v21 + 16) = v26;
            v28 = v32;
            if (v26 == *(v1 + 188))
            {
              DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v1 + 176, 1, 1);
              v29 = *(v1 + 184);
              v27 = *(v1 + 176);
              v15 = v33;
            }

            else
            {
              v29 = v26;
            }

            v30 = v27 + 20 * v29;
            v31 = *&v28[v19];
            *(v30 + 16) = *&v28[v19 + 16];
            *v30 = v31;
            ++*(v1 + 184);
          }

          else
          {
            v22 = *(v1 + 176) + 20 * (v20 + *(v3 + 8));
            v23 = *(v32 + v19);
            *(v22 + 16) = *(v32 + v19 + 16);
            *v22 = v23;
            v24 = *(v3 + 8);
            v25 = v20 + v24;
            if (v20)
            {
              *(*(v1 + 176) + 20 * (v20 + v24 - 1) + 16) = v25;
            }

            v26 = v25;
          }

          ++v20;
          v19 += 20;
          v21 = v26;
        }

        while (v20 < v15);
      }

      *(v3 + 12) = 0;
      this = DgnIArray<Utterance *>::~DgnIArray(&v32);
      ++v2;
    }

    while (v2 < *(v1 + 168));
  }

  return this;
}

void sub_262627AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

uint64_t *FstSearchLatticeHashBackoff::annihilateNullLongestFinal(uint64_t *this)
{
  v1 = *(this + 42);
  if (v1)
  {
    v2 = this;
    do
    {
      --v1;
      v3 = *(v2 + 160);
      v4 = (v3 + 16 * v1);
      if (*v4 == 16777210)
      {
        v5 = *(v2 + 176);
        v6 = (v5 + 20 * v4[2]);
        v7 = v6[1].u32[1];
        if (v7 != -1)
        {
          v8 = *v6;
          v9 = (v3 + 16 * v7);
          v10 = *v9;
          v11 = v9[2];
          v12 = v9[3];
          v13 = *(v2 + 184);
          v14 = v4[1];
          v15 = *(v2 + 168);
          if (v15 == *(v2 + 172))
          {
            this = DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
            v15 = *(v2 + 168);
            v3 = *(v2 + 160);
            v5 = *(v2 + 176);
          }

          v16 = (v3 + 16 * v15);
          *v16 = v10;
          v16[1] = v14;
          v16[2] = v13;
          v16[3] = v12;
          ++*(v2 + 168);
          if (v11 != 0xFFFFFFFFLL)
          {
            v17 = vsub_s32(v8, *(v5 + 20 * v11));
            v18 = *(v2 + 184);
            v19 = -1;
            do
            {
              v20 = v18;
              if ((v19 & 0x80000000) == 0)
              {
                *(v5 + 20 * v19 + 16) = v18;
              }

              v21 = (v5 + 20 * v11);
              v22 = *v21;
              v23 = v21[1];
              v24 = v20;
              if (v20 == *(v2 + 188))
              {
                this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
                v24 = *(v2 + 184);
                v5 = *(v2 + 176);
              }

              v25 = (v5 + 20 * v24);
              *v25 = vadd_s32(v17, v22);
              v25[1] = v23;
              v25[2].i32[0] = -1;
              v18 = *(v2 + 184) + 1;
              *(v2 + 184) = v18;
              v5 = *(v2 + 176);
              v11 = *(v5 + 20 * v11 + 16);
              v19 = v20;
            }

            while (v11 != -1);
          }

          if (v10 == 16777213)
          {
            return this;
          }
        }
      }

      else if (*v4 == 16777213)
      {
        return this;
      }
    }

    while (v1);
  }

  return this;
}

uint64_t FstSearchLatticeHashBackoff::collectTraces(FstSearchLatticeHashBackoff *this)
{
  v2 = *(this + 42);
  v40 = 0;
  v39 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v39 = v3;
    v40 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v40);
  }

  v5 = *(this + 50);
  if (v5)
  {
    v6 = 0;
    v7 = v39;
    v8 = (*(this + 24) + 8);
    do
    {
      v10 = *v8;
      v8 += 7;
      v9 = v10;
      if (v10 != -1)
      {
        *(v7 + v9) = 1;
        v5 = *(this + 50);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v11 = *(this + 42);
  if (v11)
  {
    v12 = 0;
    v13 = v39;
    do
    {
      --v11;
      if (v12)
      {
        v12 = 1;
      }

      else if (*(*(this + 20) + 16 * v11) == 16777213)
      {
        v12 = 1;
        *(v13 + v11) = 1;
      }

      else
      {
        v12 = 0;
      }

      if (*(v13 + v11))
      {
        v14 = *(*(this + 20) + 16 * v11 + 8);
        if (v14 != -1)
        {
          v15 = *(this + 22);
          do
          {
            v16 = v15 + 20 * v14;
            v17 = *(v16 + 12);
            if (v17 != -1)
            {
              *(v13 + v17) = 1;
            }

            v14 = *(v16 + 16);
          }

          while (v14 != -1);
        }
      }
    }

    while (v11);
    v18 = *(this + 42);
    v37 = 0;
    v38 = 0;
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        if (*(v39 + v19))
        {
          v21 = *(this + 20);
          if (v19 != v20)
          {
            *(v21 + 16 * v20) = *(v21 + 16 * v19);
            v21 = *(this + 20);
          }

          v22 = v38;
          *(v21 + 16 * v20 + 8) = v38;
          v23 = *(v21 + 16 * v19 + 8);
          if (v23 == -1)
          {
            v24 = v37;
          }

          else
          {
            v25 = *(this + 22);
            do
            {
              if (v22 == HIDWORD(v38))
              {
                DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(&v37, 1, 1);
                v22 = v38;
              }

              v24 = v37;
              v26 = v37 + 20 * v22;
              *v26 = *(v25 + 20 * v23);
              LODWORD(v38) = ++v22;
              *(v26 + 16) = v22;
              v27 = *(v26 + 12);
              if (v27 != -1)
              {
                *(v26 + 12) = *(v39 + v27);
              }

              v25 = *(this + 22);
              v23 = *(v25 + 20 * v23 + 16);
            }

            while (v23 != -1);
            v21 = *(this + 20);
          }

          *(v24 + 20 * (v22 - 1) + 16) = -1;
          *(v21 + 16 * v20 + 12) = v22 - *(v21 + 16 * v20 + 8);
          *(v39 + v19) = v20++;
          v18 = *(this + 42);
        }

        ++v19;
      }

      while (v19 < v18);
      v28 = *(this + 43);
      if (v20 > v28)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v20 - v28, 0);
        v18 = *(this + 42);
      }

      if (v18 < v20)
      {
        v29 = v20 - v18;
        v30 = (*(this + 20) + 16 * v18);
        do
        {
          *v30++ = xmmword_26287F860;
          --v29;
        }

        while (v29);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v37 = 0;
    v38 = 0;
  }

  *(this + 42) = v20;
  v31 = *(this + 22);
  *(this + 22) = v37;
  v37 = v31;
  LODWORD(v31) = *(this + 47);
  *(this + 23) = v38;
  LODWORD(v38) = 0;
  HIDWORD(v38) = v31;
  v32 = *(this + 50);
  if (v32)
  {
    v33 = v39;
    v34 = (*(this + 24) + 8);
    do
    {
      v35 = *v34;
      if (v35 != -1)
      {
        *v34 = *(v33 + v35);
      }

      v34 += 7;
      --v32;
    }

    while (v32);
  }

  DgnIArray<Utterance *>::~DgnIArray(&v37);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v39);
}

void sub_262627F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnIArray<Utterance *>::~DgnIArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLatticeHashBackoff::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLatticeHashBackoff::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLatticeHashBackoff::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

int64x2_t FstSearchLatticeHashBackoff::reset(FstSearchLatticeHashBackoff *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 50) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchLatticeHashBackoff::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLatticeHashBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLatticeHashBackoff::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 30, a3, this[4]);
    result = ArcGraph::findBackoffState(this[5]);
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLatticeHashBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLatticeHashBackoff::collectTraces(this);
  FstSearchLatticeHashBackoff::annihilateNullTraces(this);
  FstSearchLatticeHashBackoff::annihilateNullActiveTokens(this);
  FstSearchLatticeHashBackoff::annihilateNullLongestFinal(this);
  FstSearchLatticeHashBackoff::collectTraces(this);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = this[13];
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLatticeHashBackoff::printSize(FstSearchLatticeHashBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950);
  if (v72)
  {
    v13 = v71;
  }

  else
  {
    v13 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v13);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26287F8B0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952);
  if (v72)
  {
    v18 = v71;
  }

  else
  {
    v18 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954);
  if (v72)
  {
    v20 = v71;
  }

  else
  {
    v20 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955);
  if (v72)
  {
    v22 = v71;
  }

  else
  {
    v22 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v66 = a2;
  v67 = a6;
  v68 = a3;
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956);
  if (v72)
  {
    v24 = v71;
  }

  else
  {
    v24 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = *(this + 42);
  v27 = 16 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 16 * (*(this + 43) - v26);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957);
  if (v72)
  {
    v31 = v71;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 20 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 20 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 50);
  v41 = 26 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 26 * (*(this + 51) - v40);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964);
  if (v72)
  {
    v45 = v71;
  }

  else
  {
    v45 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26287F8B0, v16, v16, v45, v43, v42, 0);
  DgnString::~DgnString(&v71);
  *a4 += v43;
  *a5 += v42;
  v46 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  v47 = *(this + 54);
  v48 = 26 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 26 * (*(this + 55) - v47);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966);
  if (v72)
  {
    v52 = v71;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26287F8B0, v16, v16, v52, v50, v49, 0);
  DgnString::~DgnString(&v71);
  *a4 += v50;
  *a5 += v49;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968);
  if (v72)
  {
    v54 = v71;
  }

  else
  {
    v54 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_26287F8B0, v16, v16, v54, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970);
  if (v72)
  {
    v56 = v71;
  }

  else
  {
    v56 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v15, &unk_26287F8B0, v16, v16, v56, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972);
  if (v72)
  {
    v58 = v71;
  }

  else
  {
    v58 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &unk_26287F8B0, v16, v16, v58, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v59 = sizeObject(this + 240, 0);
  v60 = sizeObject(this + 240, 1);
  v61 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974);
  if (v72)
  {
    v63 = v71;
  }

  else
  {
    v63 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26287F8B0, v16, v16, v63, v59, v60, v61);
  DgnString::~DgnString(&v71);
  *a4 += v59;
  *a5 += v60;
  *v67 += v61;
  v69 = 0;
  v70 = 0;
  SearchItf::printSize(this, v66, v15, &v70, &v69, &v69);
  *a4 += v70;
  *a5 += v69;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985);
  if (v72)
  {
    v65 = v71;
  }

  else
  {
    v65 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v68, &unk_26287F8B0, (35 - v68), (35 - v68), v65, *a4, *a5, *v67);
  DgnString::~DgnString(&v71);
}

uint64_t FstSearchLatticeHashBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 152);
  }

  v5 = *(a1 + 200);
  if (v4 >= v5)
  {
    goto LABEL_21;
  }

  v6 = 28 * v4;
  v7 = 1879048192;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *(a1 + 192);
    if (!a4 || (v10 = *(v9 + v6 + 8), v10 == -1))
    {
      if (*(*(a1 + 40) + 160) != *(v9 + v6 + 4))
      {
        goto LABEL_19;
      }

      v10 = *(v9 + v6 + 8);
    }

    if (a2)
    {
      *(*a2 + v10) = 1;
    }

    if (a3)
    {
      *(*a3 + v10) = 1;
    }

    v11 = *(*(a1 + 176) + 20 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    v12 = v7 <= v11;
    if (v7 >= v11)
    {
      v7 = *(*(a1 + 176) + 20 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    }

    if (!v12)
    {
      v8 = v10;
    }

    v5 = *(a1 + 200);
LABEL_19:
    ++v4;
    v6 += 28;
  }

  while (v4 < v5);
  if (v8 == 0xFFFFFFFFLL)
  {
LABEL_21:
    v13 = *(a1 + 168);
    v8 = 0xFFFFFFFFLL;
    while (v13)
    {
      --v13;
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 16 * v13) == 16777213)
      {
        if (a2)
        {
          *(*a2 + v13) = 1;
        }

        v8 = v13;
        if (a3)
        {
          *(*a3 + v13) = 1;
        }

        return v8;
      }
    }
  }

  return v8;
}

BOOL FstSearchLatticeHashBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a3 + 8) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v8;
  }

  if (v8)
  {
    v10 = *(a2 + 8) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a2 = MemChunkAlloc(v8, 0);
    *(a2 + 8) = v8;
LABEL_14:
    v11 = 0;
    do
    {
      *(*a2 + v11) = 0;
      *(*a3 + v11++) = 0;
    }

    while (v8 != v11);
    goto LABEL_16;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_16:
  BestTrace = FstSearchLatticeHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 16 * BestTrace;
  LODWORD(v13) = *(*(a1 + 176) + 20 * *(v13 + 8)) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t *FstSearchLatticeHashBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v8 = a2;
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a2 + 2) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a2 = MemChunkAlloc(4 * v10, 0);
    *(v8 + 2) = v10;
  }

  Node = Lattice<WordLatticeLC>::createNode(a4);
  result = a3;
  v14 = *(a3 + 8);
  if (v14 == *(a3 + 12))
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
    result = a3;
    v14 = *(a3 + 8);
  }

  *(*result + 4 * v14) = Node;
  ++*(result + 2);
  v15 = *(a1 + 168);
  v16 = a7;
  if (v15)
  {
    v17 = -1;
    v39 = v8;
    do
    {
      --v15;
      v18 = *v8;
      *(*v8 + v15) = -1;
      if (*(*a6 + v15))
      {
        v19 = *(a1 + 160);
        v20 = *(*(a1 + 88) + 4 * *(v19 + 16 * v15 + 4));
        if (*(*v16 + v15) == 1)
        {
          if (*(*a6 + v15) != 1 || v17 == -1)
          {
            v22 = Lattice<WordLatticeLC>::createNode(a4);
            result = a3;
            v23 = *(a3 + 8);
            *(*v8 + v15) = v23;
            if (v23 == *(a3 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              result = a3;
              v23 = *(a3 + 8);
            }

            *(*result + 4 * v23) = v22;
            v24 = *(result + 2);
            *(result + 2) = v24 + 1;
            if (*(*a6 + v15) == 1)
            {
              v17 = v24;
            }

            v19 = *(a1 + 160);
            v16 = a7;
          }

          else
          {
            *(v18 + v15) = v17;
          }
        }

        v25 = (v19 + 16 * v15);
        if (v25[3] >= 1)
        {
          v40 = v17;
          v26 = *v25;
          v27 = v25[2];
          do
          {
            v28 = *(a1 + 176);
            v29 = (v28 + 20 * v27);
            v30 = v29[3];
            if ((v30 & 0x80000000) != 0)
            {
              *v29 += v20;
            }

            else
            {
              if (v26 == 16777209)
              {
                v31 = *a5 + 16 * v30;
                v32 = *(v31 + 8);
                if (v32 == *(v31 + 12))
                {
                  result = DgnPrimArray<unsigned int>::reallocElts(v31, 1, 1);
                  v16 = a7;
                  v32 = *(v31 + 8);
                  v19 = *(a1 + 160);
                  v28 = *(a1 + 176);
                }

                *(*v31 + 4 * v32) = v15;
                ++*(v31 + 8);
                v30 = v29[3];
              }

              else
              {
                *(*v16 + v30) = 1;
              }

              v33 = v19 + 16 * v30;
              v34 = *(*(a1 + 88) + 4 * *(v33 + 4));
              v35 = (v28 + 20 * *(v33 + 8));
              v36 = v20 + *v29 - v34 - *v35;
              LODWORD(v35) = v29[1] - v35[1];
              *v29 = v36;
              v29[1] = v35;
              *(*a6 + v30) = 2;
              v19 = *(a1 + 160);
            }

            ++v27;
          }

          while (v27 < *(v19 + 16 * v15 + 12) + *(v19 + 16 * v15 + 8));
          v8 = v39;
          v17 = v40;
        }
      }
    }

    while (v15);
  }

  return result;
}

uint64_t FstSearchLatticeHashBackoff::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 16 * v11);
        if ((*v13 - 16777209) >= 2 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 20 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLatticeHashBackoff::createLatticeLink(a1, v11, v15, 0xFFFFFFFF, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLatticeHashBackoff::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 16 * v11 + 12) + *(*(a1 + 160) + 16 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_2626290F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLatticeHashBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 16 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 20 * v19 + 12) == a2)
      {
        v22 = (v21 + 20 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(v44, *(a1 + 40), *(v16 + 16 * a2));
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (LODWORD(v44[0]) >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((a4 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 16 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 16 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v35 = *(v30 + 16 * a4 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 16 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 16 * a4 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_26262932C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeHashBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

VirtMap *FstSearchLatticeHashBackoff::endTopRecSyncRecog(VirtMap **this)
{
  VirtMap::setEmpty(this[14]);
  result = this[14];
  this[14] = 0;
  return result;
}

uint64_t FstSearchLatticeHashBackoff::getBestExitScore(FstSearchLatticeHashBackoff *this)
{
  v21 = 0;
  v22 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 28 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v22))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
          v5 = v22;
          v4 = v21;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v22 + 1;
        LODWORD(v22) = v22 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 28;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = 1879048192;
    do
    {
      v12 = v10 + 16 * *(v4 + 4 * v9);
      v13 = *(v12 + 12);
      if (v13 >= 1)
      {
        v14 = *(v12 + 8);
        v15 = v13 + v14;
        v16 = *(this + 22);
        do
        {
          v17 = (v16 + 20 * v14);
          v18 = *v17;
          if (v11 > *v17)
          {
            *(this + 57) = v17[3];
            v11 = v18;
          }

          ++v14;
        }

        while (v14 < v15);
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
LABEL_19:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v19 = 20000;
  }

  else
  {
    v19 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return v19;
}

uint64_t FstSearchLatticeHashBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLatticeHashBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 28;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

uint64_t *FstSearchLatticeHashBackoff::seedTheory(FstSearchLatticeHashBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = *(this + 22) + 20 * v11;
    *(v12 + 4) = xmmword_26287F880;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 50);
  if (v16 == *(this + 51))
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 192, 1, 1);
    v16 = *(this + 50);
  }

  v17 = *(this + 24) + 28 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 16) = 0;
  *(v17 + 24) = -1;
  LODWORD(v17) = *(this + 50) + 1;
  *(this + 50) = v17;
  *(this + 38) = v17;

  return FstSearchLatticeHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLatticeHashBackoff::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 57);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 16 * v6);
    for (i = *(result[22] + 20 * v8[2] + 12); i != -1; v6 = v14)
    {
      v14 = i;
      result = v7[5];
      if (*v8 == 16777209)
      {
        v15 = (*(result + 87) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v8);
        v15 = result;
      }

      v16 = *(a2 + 8);
      if (v16 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v16 = *(a2 + 8);
      }

      *(*a2 + 4 * v16) = v15;
      ++*(a2 + 8);
      v17 = *(a6 + 8);
      if (v17 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v17 = *(a6 + 8);
      }

      *(*a6 + 4 * v17) = v6;
      ++*(a6 + 8);
      v18 = v7[20];
      v19 = *(v18 + 16 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v7[22] + 20 * *(v18 + 16 * v6 + 8));
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 16 * v14);
      i = *(v7[22] + 20 * v8[2] + 12);
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchLatticeHashBackoff::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
{
  v3 = *(this + 40);
  if (*(v3 + 178) == 1)
  {
    result = ArcGraph::ensureHeaderValid(*(this + 40), "Header");
    if (*(v3 + 202) == 1)
    {
      v8 = *(this + 140);
      if (*(v3 + 188) != v8)
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchInterWordSilencePenalty", *(v3 + 188), v8);
      }
    }

    v9 = *(this + 136);
    if (*(v3 + 192) != v9)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchPerWordPenalty", *(v3 + 192), v9);
    }

    v10 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 40) + 174)) + 608);
    if (*(v3 + 196) != v10)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "Voc", *(v3 + 196), v10);
    }

    v11 = *(v3 + 203);
    if (a3)
    {
      if (a2)
      {
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v12 = 1;
      }

      else
      {
        if (v11)
        {
          return result;
        }

        v12 = 0;
      }

      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "DropAlternateFrames", v12, v11);
    }

    else if (a2 & 1) != 0 || (v11)
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "NoDecimation", a2, v11);
    }
  }

  return result;
}

void FstSearchLatticeHashBackoff::getHistory(uint64_t *result, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 == -1)
  {
    *(a3 + 8) = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = a2;
    v9 = a2;
    do
    {
      v10 = (result[20] + 16 * v9);
      if (*v10 == 16777209)
      {
        v7 = v7;
      }

      else
      {
        v7 = (v7 + 1);
      }

      v9 = *(result[22] + 20 * v10[2] + 12);
    }

    while (v9 != -1);
    v11 = *(a3 + 12);
    if (v7 > v11)
    {
      DgnArray<PrefilterResultFrame>::reallocElts(a3, v7 - v11, 0);
    }

    v12 = *(a3 + 8);
    if (v12 < v7)
    {
      v13 = v7 - v12;
      v14 = *a3 + 32 * v12;
      do
      {
        *v14 = 0x3FFFFAFFFFFFLL;
        *(v14 + 8) = xmmword_26286CC40;
        *(v14 + 24) = 0x1F0000001FLL;
        v14 += 32;
        --v13;
      }

      while (v13);
    }

    *(a3 + 8) = v7;
    if (v7)
    {
      v15 = result[20];
      v16 = -16;
      do
      {
        v17 = (v15 + 16 * v8);
        v18 = v17[1];
        if (*v17 == 16777209)
        {
          if (a4)
          {
            v16 = (v18 - 1) / 2 + 1;
          }

          else
          {
            v16 = v18 + 1;
          }
        }

        else
        {
          if (a4)
          {
            v18 = (v18 - 1) / 2;
          }

          ArcGraph::lexToCWIDAC(&v22, result[5], *v17);
          if (v16 == -16)
          {
            v19 = v18 + 1;
          }

          else
          {
            v19 = v16;
          }

          v20 = HIDWORD(v22);
          v7 = (v7 - 1);
          v21 = *a3 + 32 * v7;
          *v21 = v22;
          *(v21 + 4) = v20;
          *(v21 + 8) = v23;
          *(v21 + 24) = v18 + 1;
          *(v21 + 28) = v19;
          v15 = result[20];
          v16 = -16;
        }

        v8 = *(result[22] + 20 * *(v15 + 16 * v8 + 8) + 12);
      }

      while (v8 != -1);
    }
  }
}

uint64_t FstSearchLatticeHashBackoff::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLatticeHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (*(a3 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *a3 + v12;
      v16 = *(v15 + 28);
      WordLatticeLC::WordLatticeLC(v20, v15, v14, *(v15 + 24) - v14, v16 - *(v15 + 24), v21);
      v17 = *(a2 + 8);
      if (v17 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v17) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v17), v20);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v20);
      ++v13;
      v12 += 32;
      v14 = v16;
    }

    while (v13 < *(a3 + 8));
  }

  v18 = a1[20] + 16 * v11;
  return (*(a1[22] + 20 * *(v18 + 8)) + *(a1[11] + 4 * *(v18 + 4)));
}

int64x2_t FstSearchLatticeHash::advanceDeltas(FstSearchLatticeHash *this, int a2, int a3, SearchStats *a4, int a5)
{
  v86[0] = a2;
  v84 = 0u;
  v85 = 0u;
  SnapTime::recordTime(&v84, 1, 0, 0, 0);
  *v83 = 0xFFFFFFFF00000000;
  *&v83[8] = -1;
  *&v83[12] = -2;
  *&v83[16] = 0;
  *&v83[24] = -1;
  *(this + 58) = a3;
  v10 = (this + 232);
  v11 = *(this + 2);
  v12 = *(this + 50);
  if (v12)
  {
    v62 = a5;
    v63 = a4;
    for (i = 0; i < v12; ++i)
    {
      v14 = *(this + 24) + 28 * i;
      v15 = *(v14 + 4);
      v16 = *(this + 5);
      if (*(v16 + 160) != v15)
      {
        if (*(v16 + 140) > v15)
        {
          v17 = *v14;
          v18 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v14 + 12)) + v17;
          v19 = *(this + 58);
          if (v18 - v11 <= v19)
          {
            if (v19 > v18)
            {
              *v10 = v18;
            }

            v20 = (*(this + 24) + 28 * i);
            v21 = *(v20 + 12);
            *v83 = *v20;
            *&v83[12] = v21;
            *v83 = v18;
            FstSearchLatticeHashBackoff::maybeInsertHashedToken(this, v83);
          }
        }

        v22 = v15;
        do
        {
          v23 = *(this + 5);
          v24 = *(v23 + 152);
          v25 = *(v24 + 4 * v22);
          v26 = *(v24 + 4 * (v22 + 1));
          v27 = *(v23 + 140);
          if (v27 <= v26)
          {
            if (v27 <= v15 && (*(this + 356) & 1) != 0)
            {
              v34 = (v25 & 0xFFFFF) <= 0xFFFF3 ? v25 & 0xFFFFF : v25 & 0xFFFFF | 0xF00000;
              if (v34 != 16777210)
              {
                DgnString::DgnString(&v80);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v34, &v80);
                v36 = &unk_26287F8B0;
                if (v80.i32[2])
                {
                  v36 = v80.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v35, v15, *(*(this + 24) + 28 * i), *(*(this + 24) + 28 * i + 8), v36);
                MiniFst::seed(this + 240, *(*(this + 24) + 28 * i), *(*(this + 24) + 28 * i + 20), *(*(this + 24) + 28 * i + 8), v26);
                DgnString::~DgnString(&v80);
              }
            }
          }

          else
          {
            v28 = (v25 >> 20) & 0x3FF;
            ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v24 + 4 * v22));
            v30 = *(this + 24) + 28 * i;
            v31 = ScoreNoBackoff + v28 + *v30;
            v32 = *(this + 58);
            if (v31 - v11 <= v32)
            {
              if (v32 > v31)
              {
                *v10 = v31;
              }

              v33 = *(v30 + 12);
              *v83 = *v30;
              *&v83[12] = v33;
              *v83 = v31;
              *&v83[4] = v26;
              *&v83[12] = v25;
              *&v83[16] = DWORD1(v33) + v28;
              FstSearchLatticeHashBackoff::maybeInsertHashedToken(this, v83);
            }
          }

          v22 += 2;
        }

        while ((v25 & 0x80000000) == 0);
        v12 = *(this + 50);
      }
    }

    a3 = *v10;
    a4 = v63;
    a5 = v62;
  }

  v82 = a3 + v11;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, this + 58, v11, a2);
  }

  v80 = 0u;
  v81 = 0u;
  SnapTime::recordTime(&v80, 1, 0, 0, 0);
  v80 = vsubq_s64(v80, v84);
  v81 = vsubq_s64(v81, v85);
  v37 = *(this + 13);
  v38 = vaddq_s64(v37[1], v81);
  *v37 = vaddq_s64(*v37, v80);
  v37[1] = v38;
  v78 = 0u;
  v79 = 0u;
  SnapTime::recordTime(&v78, 1, 0, 0, 0);
  FstSearchLatticeHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v82);
  v76 = 0u;
  v77 = 0u;
  SnapTime::recordTime(&v76, 1, 0, 0, 0);
  v39 = vsubq_s64(v76, v78);
  v40 = *(this + 13);
  v41 = v40[3];
  v42 = vaddq_s64(v40[2], v39);
  v76 = v39;
  v77 = vsubq_s64(v77, v79);
  v43 = vaddq_s64(v41, v77);
  v40[2] = v42;
  v40[3] = v43;
  v74 = 0u;
  v75 = 0u;
  SnapTime::recordTime(&v74, 1, 0, 0, 0);
  v44 = *(this + 24);
  v45 = *(this + 26);
  *(this + 24) = v45;
  *(this + 26) = v44;
  LODWORD(v44) = *(this + 51);
  v46 = *(this + 27);
  *(this + 25) = v46;
  *(this + 54) = 0;
  *(this + 55) = v44;
  v47 = *(this + 6);
  if (v47 && v47 < v46)
  {
    mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(v45, v47, v46);
  }

  FstSearchLatticeHashBackoff::generateNullTraces(this, a2, 0);
  v72 = 0u;
  v73 = 0u;
  SnapTime::recordTime(&v72, 1, 0, 0, 0);
  v48 = vsubq_s64(v72, v74);
  v49 = *(this + 13);
  v50 = v49[5];
  v51 = vaddq_s64(v49[4], v48);
  v72 = v48;
  v73 = vsubq_s64(v73, v75);
  v52 = vaddq_s64(v50, v73);
  v49[4] = v51;
  v49[5] = v52;
  v70 = 0u;
  v71 = 0u;
  SnapTime::recordTime(&v70, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v68 = 0u;
  v69 = 0u;
  SnapTime::recordTime(&v68, 1, 0, 0, 0);
  v53 = vsubq_s64(v68, v70);
  v54 = *(this + 13);
  v55 = v54[9];
  v56 = vaddq_s64(v54[8], v53);
  v68 = v53;
  v69 = vsubq_s64(v69, v71);
  v57 = vaddq_s64(v55, v69);
  v54[8] = v56;
  v54[9] = v57;
  v66 = 0u;
  v67 = 0u;
  SnapTime::recordTime(&v66, 1, 0, 0, 0);
  *(this + 54) = 0;
  v58 = *(this + 50);
  *(this + 38) = v58;
  if (a4)
  {
    *(a4 + 2) += v58;
    if (*(a4 + 2) > v58)
    {
      LODWORD(v58) = *(a4 + 2);
    }

    *(a4 + 2) = v58;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLatticeHash::seedFromMiniFst(this, v86);
  }

  if (a5)
  {
    FstSearchLatticeHashBackoff::propagateNulls(this, v82, a2, a4);
  }

  *(this + 56) = a2;
  v64 = 0u;
  v65 = 0u;
  SnapTime::recordTime(&v64, 1, 0, 0, 0);
  v59 = *(this + 13);
  result = vaddq_s64(v59[6], vsubq_s64(v64, v66));
  v61 = vaddq_s64(v59[7], vsubq_s64(v65, v67));
  v59[6] = result;
  v59[7] = v61;
  return result;
}

uint64_t FstSearchLatticeHash::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 256) + 36 * v4);
        v42 = *v5;
        v43 = v5[5];
        v6 = v5[6];
        v40 = v5[4];
        v41 = v5[7];
        v7 = v5[2];
        v44 = 0;
        v45 = 0;
        v39 = v6;
        if ((v7 & 0x80000000) != 0)
        {
          LODWORD(v11) = -2 - v7;
        }

        else
        {
          v8 = 0;
          v9 = 0;
          do
          {
            if (v9 == HIDWORD(v45))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v44, 1, 1);
              v9 = v45;
              v8 = v44;
            }

            *(v8 + 4 * v9) = v7;
            v10 = v45;
            v9 = v45 + 1;
            LODWORD(v45) = v45 + 1;
            v7 = *(*(v2 + 240) + 36 * v7 + 8);
          }

          while ((v7 & 0x80000000) == 0);
          LODWORD(v11) = -2 - v7;
          if ((v10 & 0x80000000) == 0)
          {
            do
            {
              v12 = *(v44 + 4 * v10);
              v13 = *(v2 + 240);
              v14 = (v13 + 36 * v12);
              v15 = *v14;
              v16 = *(v14 + 2);
              v17 = *(v2 + 184);
              if (v17 == *(v2 + 188))
              {
                DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
                v17 = *(v2 + 184);
                v13 = *(v2 + 240);
              }

              v18 = *(v2 + 176) + 20 * v17;
              *(v2 + 184) = v17 + 1;
              *v18 = v15;
              *(v18 + 4) = v16;
              *(v18 + 12) = v11;
              *(v18 + 16) = -1;
              v19 = *(v13 + 36 * v12 + 28);
              v20 = *(v2 + 168);
              if (v20 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v20 = *(v2 + 168);
              }

              v21 = *(v2 + 160);
              v22 = v21 + 16 * v20;
              *v22 = v19;
              *(v22 + 8) = v17;
              *(v22 + 12) = 0;
              v11 = *(v2 + 168);
              *(v2 + 168) = v11 + 1;
              *(v21 + 16 * v11 + 12) = 1;
            }

            while (v10-- > 0);
          }
        }

        v24 = *(v2 + 184);
        if (v24 == *(v2 + 188))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
          v24 = *(v2 + 184);
        }

        v25 = *(v2 + 176);
        *(v2 + 184) = v24 + 1;
        v26 = (v25 + 20 * v24);
        *v26 = v42;
        v26[1] = v40;
        v26[2] = v43;
        v26[3] = v11;
        v26[4] = -1;
        if (v41 == 16777213)
        {
          v27 = (*(v2 + 160) + 16 * v11);
          v28 = 16777209;
          if (*v27 == 16777209)
          {
            v24 = v27[2];
          }
        }

        else
        {
          v28 = v41;
        }

        v29 = *a2;
        v30 = *(v2 + 168);
        if (v30 == *(v2 + 172))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
          v30 = *(v2 + 168);
        }

        v31 = *(v2 + 160);
        v32 = (v31 + 16 * v30);
        *v32 = v28;
        v32[1] = v29;
        v32[2] = v24;
        v32[3] = 0;
        v33 = *(v2 + 168);
        *(v2 + 168) = v33 + 1;
        *(v31 + 16 * v33 + 12) = 1;
        v34 = *(v2 + 200);
        if (v34 == *(v2 + 204))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v34) = *(v2 + 200);
        }

        v35 = *(v2 + 192) + 28 * v34;
        *v35 = v42;
        *(v35 + 4) = v39;
        *(v35 + 8) = v33;
        *(v35 + 12) = -2;
        *(v35 + 16) = v40;
        *(v35 + 20) = v43;
        *(v35 + 24) = -1;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
        ++v4;
        LODWORD(v36) = *(v2 + 264);
        v37 = *(v2 + 20);
        if (v36 >= v37)
        {
          v36 = v37;
        }

        else
        {
          v36 = v36;
        }
      }

      while (v4 < v36);
    }
  }

  return this;
}

void sub_26262A708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeHash::annihilateNullTraces(uint64_t this)
{
  if (*(this + 168))
  {
    v1 = this;
    v2 = 0;
    do
    {
      v3 = *(v1 + 160) + 16 * v2;
      v32 = 0;
      v33 = 0;
      FstSearchLatticeHashBackoff::getCandidateTokensForTrace(v1, v3, &v32);
      v5 = v33;
      v6 = v32;
      if (v33 < 2 || (mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(v32 + 20, (v33 - 1), 20, 0), v5 = v33, v6 = v32, v33 < 2))
      {
        v7 = 0;
        v10 = xmmword_26287F850;
      }

      else
      {
        v7 = 0;
        v8 = v32 + 28;
        v9 = v33 - 1;
        v10 = xmmword_26287F850;
        do
        {
          if (*v8 != *&v6[20 * v7 + 8] && *(v6 + 2) != *v8)
          {
            ++v7;
            v4 = *(v8 - 2);
            v11 = &v6[20 * v7];
            v11[1].n128_u32[0] = v8[2];
            *v11 = v4;
          }

          v8 += 5;
          --v9;
        }

        while (v9);
      }

      v12 = v7 + 1;
      if (HIDWORD(v33) < v12)
      {
        v34 = 0;
        HIDWORD(v33) = realloc_array(v6, &v34, 20 * v12, 20 * v5, 20 * v5, 1) / 0x14;
        v6 = v34;
        v32 = v34;
        v5 = v33;
        v10 = xmmword_26287F850;
      }

      if (v5 < v12)
      {
        v13 = v12 - v5;
        v14 = &v6[20 * v5 + 16];
        do
        {
          *(v14 - 1) = v10;
          *v14 = -1;
          v14 += 20;
          --v13;
        }

        while (v13);
      }

      LODWORD(v33) = v7 + 1;
      mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(v6 + 20, v7, 20, 0, v4);
      v15 = v33;
      v16 = *(v1 + 20);
      if (v33 > v16)
      {
        if (HIDWORD(v33) < v16)
        {
          v34 = 0;
          HIDWORD(v33) = realloc_array(v32, &v34, 20 * v16, 20 * v33, 20 * v33, 1) / 0x14;
          v32 = v34;
          v15 = v33;
        }

        if (v15 < v16)
        {
          v17 = v16 - v15;
          v18 = v32 + 20 * v15 + 16;
          do
          {
            *(v18 - 1) = xmmword_26287F850;
            *v18 = -1;
            v18 += 5;
            --v17;
          }

          while (v17);
        }

        LODWORD(v33) = v16;
        v15 = v16;
      }

      if (v15)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0xFFFFFFFFLL;
        do
        {
          if (*(v3 + 12) <= v20)
          {
            v26 = *(v1 + 184);
            v27 = *(v1 + 176);
            *(v27 + 20 * v21 + 16) = v26;
            v28 = v32;
            if (v26 == *(v1 + 188))
            {
              DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v1 + 176, 1, 1);
              v29 = *(v1 + 184);
              v27 = *(v1 + 176);
              v15 = v33;
            }

            else
            {
              v29 = v26;
            }

            v30 = v27 + 20 * v29;
            v31 = *&v28[v19];
            *(v30 + 16) = *&v28[v19 + 16];
            *v30 = v31;
            ++*(v1 + 184);
          }

          else
          {
            v22 = *(v1 + 176) + 20 * (v20 + *(v3 + 8));
            v23 = *(v32 + v19);
            *(v22 + 16) = *(v32 + v19 + 16);
            *v22 = v23;
            v24 = *(v3 + 8);
            v25 = v20 + v24;
            if (v20)
            {
              *(*(v1 + 176) + 20 * (v20 + v24 - 1) + 16) = v25;
            }

            v26 = v25;
          }

          ++v20;
          v19 += 20;
          v21 = v26;
        }

        while (v20 < v15);
      }

      *(v3 + 12) = 0;
      this = DgnIArray<Utterance *>::~DgnIArray(&v32);
      ++v2;
    }

    while (v2 < *(v1 + 168));
  }

  return this;
}

void sub_26262AA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeHash::collectTraces(FstSearchLatticeHash *this)
{
  v2 = *(this + 42);
  v40 = 0;
  v39 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v39 = v3;
    v40 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v40);
  }

  v5 = *(this + 50);
  if (v5)
  {
    v6 = 0;
    v7 = v39;
    v8 = (*(this + 24) + 8);
    do
    {
      v10 = *v8;
      v8 += 7;
      v9 = v10;
      if (v10 != -1)
      {
        *(v7 + v9) = 1;
        v5 = *(this + 50);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v11 = *(this + 42);
  if (v11)
  {
    v12 = 0;
    v13 = v39;
    do
    {
      --v11;
      if (v12)
      {
        v12 = 1;
      }

      else if (*(*(this + 20) + 16 * v11) == 16777213)
      {
        v12 = 1;
        *(v13 + v11) = 1;
      }

      else
      {
        v12 = 0;
      }

      if (*(v13 + v11))
      {
        v14 = *(*(this + 20) + 16 * v11 + 8);
        if (v14 != -1)
        {
          v15 = *(this + 22);
          do
          {
            v16 = v15 + 20 * v14;
            v17 = *(v16 + 12);
            if (v17 != -1)
            {
              *(v13 + v17) = 1;
            }

            v14 = *(v16 + 16);
          }

          while (v14 != -1);
        }
      }
    }

    while (v11);
    v18 = *(this + 42);
    v37 = 0;
    v38 = 0;
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        if (*(v39 + v19))
        {
          v21 = *(this + 20);
          if (v19 != v20)
          {
            *(v21 + 16 * v20) = *(v21 + 16 * v19);
            v21 = *(this + 20);
          }

          v22 = v38;
          *(v21 + 16 * v20 + 8) = v38;
          v23 = *(v21 + 16 * v19 + 8);
          if (v23 == -1)
          {
            v24 = v37;
          }

          else
          {
            v25 = *(this + 22);
            do
            {
              if (v22 == HIDWORD(v38))
              {
                DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(&v37, 1, 1);
                v22 = v38;
              }

              v24 = v37;
              v26 = v37 + 20 * v22;
              *v26 = *(v25 + 20 * v23);
              LODWORD(v38) = ++v22;
              *(v26 + 16) = v22;
              v27 = *(v26 + 12);
              if (v27 != -1)
              {
                *(v26 + 12) = *(v39 + v27);
              }

              v25 = *(this + 22);
              v23 = *(v25 + 20 * v23 + 16);
            }

            while (v23 != -1);
            v21 = *(this + 20);
          }

          *(v24 + 20 * (v22 - 1) + 16) = -1;
          *(v21 + 16 * v20 + 12) = v22 - *(v21 + 16 * v20 + 8);
          *(v39 + v19) = v20++;
          v18 = *(this + 42);
        }

        ++v19;
      }

      while (v19 < v18);
      v28 = *(this + 43);
      if (v20 > v28)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v20 - v28, 0);
        v18 = *(this + 42);
      }

      if (v18 < v20)
      {
        v29 = v20 - v18;
        v30 = (*(this + 20) + 16 * v18);
        do
        {
          *v30++ = xmmword_26287F860;
          --v29;
        }

        while (v29);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v37 = 0;
    v38 = 0;
  }

  *(this + 42) = v20;
  v31 = *(this + 22);
  *(this + 22) = v37;
  v37 = v31;
  LODWORD(v31) = *(this + 47);
  *(this + 23) = v38;
  LODWORD(v38) = 0;
  HIDWORD(v38) = v31;
  v32 = *(this + 50);
  if (v32)
  {
    v33 = v39;
    v34 = (*(this + 24) + 8);
    do
    {
      v35 = *v34;
      if (v35 != -1)
      {
        *v34 = *(v33 + v35);
      }

      v34 += 7;
      --v32;
    }

    while (v32);
  }

  DgnIArray<Utterance *>::~DgnIArray(&v37);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v39);
}

void sub_26262ADB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnIArray<Utterance *>::~DgnIArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLatticeHash::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLatticeHash::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLatticeHash::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

int64x2_t FstSearchLatticeHash::reset(FstSearchLatticeHash *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 50) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchLatticeHash::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLatticeHash::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLatticeHash::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 30, a3, this[4]);
    result = ArcGraph::findBackoffState(this[5]);
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLatticeHash::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLatticeHash::collectTraces(this);
  FstSearchLatticeHash::annihilateNullTraces(this);
  FstSearchLatticeHashBackoff::annihilateNullActiveTokens(this);
  FstSearchLatticeHashBackoff::annihilateNullLongestFinal(this);
  FstSearchLatticeHash::collectTraces(this);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = this[13];
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLatticeHash::printSize(FstSearchLatticeHash *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950);
  if (v72)
  {
    v13 = v71;
  }

  else
  {
    v13 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v13);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26287F8B0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952);
  if (v72)
  {
    v18 = v71;
  }

  else
  {
    v18 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954);
  if (v72)
  {
    v20 = v71;
  }

  else
  {
    v20 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955);
  if (v72)
  {
    v22 = v71;
  }

  else
  {
    v22 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v66 = a2;
  v67 = a6;
  v68 = a3;
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956);
  if (v72)
  {
    v24 = v71;
  }

  else
  {
    v24 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = *(this + 42);
  v27 = 16 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 16 * (*(this + 43) - v26);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957);
  if (v72)
  {
    v31 = v71;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 20 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 20 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 50);
  v41 = 26 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 26 * (*(this + 51) - v40);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964);
  if (v72)
  {
    v45 = v71;
  }

  else
  {
    v45 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26287F8B0, v16, v16, v45, v43, v42, 0);
  DgnString::~DgnString(&v71);
  *a4 += v43;
  *a5 += v42;
  v46 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  v47 = *(this + 54);
  v48 = 26 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 26 * (*(this + 55) - v47);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966);
  if (v72)
  {
    v52 = v71;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26287F8B0, v16, v16, v52, v50, v49, 0);
  DgnString::~DgnString(&v71);
  *a4 += v50;
  *a5 += v49;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968);
  if (v72)
  {
    v54 = v71;
  }

  else
  {
    v54 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_26287F8B0, v16, v16, v54, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970);
  if (v72)
  {
    v56 = v71;
  }

  else
  {
    v56 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v15, &unk_26287F8B0, v16, v16, v56, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972);
  if (v72)
  {
    v58 = v71;
  }

  else
  {
    v58 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &unk_26287F8B0, v16, v16, v58, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v59 = sizeObject(this + 240, 0);
  v60 = sizeObject(this + 240, 1);
  v61 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974);
  if (v72)
  {
    v63 = v71;
  }

  else
  {
    v63 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26287F8B0, v16, v16, v63, v59, v60, v61);
  DgnString::~DgnString(&v71);
  *a4 += v59;
  *a5 += v60;
  *v67 += v61;
  v69 = 0;
  v70 = 0;
  SearchItf::printSize(this, v66, v15, &v70, &v69, &v69);
  *a4 += v70;
  *a5 += v69;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985);
  if (v72)
  {
    v65 = v71;
  }

  else
  {
    v65 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v68, &unk_26287F8B0, (35 - v68), (35 - v68), v65, *a4, *a5, *v67);
  DgnString::~DgnString(&v71);
}

BOOL FstSearchLatticeHash::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a3 + 8) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v8;
  }

  if (v8)
  {
    v10 = *(a2 + 8) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a2 = MemChunkAlloc(v8, 0);
    *(a2 + 8) = v8;
LABEL_14:
    v11 = 0;
    do
    {
      *(*a2 + v11) = 0;
      *(*a3 + v11++) = 0;
    }

    while (v8 != v11);
    goto LABEL_16;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_16:
  BestTrace = FstSearchLatticeHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 16 * BestTrace;
  LODWORD(v13) = *(*(a1 + 176) + 20 * *(v13 + 8)) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchLatticeHash::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 16 * v11);
        if ((*v13 - 16777209) >= 2 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 20 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLatticeHash::createLatticeLink(a1, v11, v15, 0xFFFFFFFF, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLatticeHash::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 16 * v11 + 12) + *(*(a1 + 160) + 16 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_26262BB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLatticeHash::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 16 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 20 * v19 + 12) == a2)
      {
        v22 = (v21 + 20 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(v44, *(a1 + 40), *(v16 + 16 * a2));
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (LODWORD(v44[0]) >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((a4 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 16 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 16 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v35 = *(v30 + 16 * a4 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 16 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 16 * a4 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_26262BD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeHash::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

VirtMap *FstSearchLatticeHash::endTopRecSyncRecog(VirtMap **this)
{
  VirtMap::setEmpty(this[14]);
  result = this[14];
  this[14] = 0;
  return result;
}

uint64_t FstSearchLatticeHash::getBestExitScore(FstSearchLatticeHash *this)
{
  v21 = 0;
  v22 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 28 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v22))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
          v5 = v22;
          v4 = v21;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v22 + 1;
        LODWORD(v22) = v22 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 28;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = 1879048192;
    do
    {
      v12 = v10 + 16 * *(v4 + 4 * v9);
      v13 = *(v12 + 12);
      if (v13 >= 1)
      {
        v14 = *(v12 + 8);
        v15 = v13 + v14;
        v16 = *(this + 22);
        do
        {
          v17 = (v16 + 20 * v14);
          v18 = *v17;
          if (v11 > *v17)
          {
            *(this + 57) = v17[3];
            v11 = v18;
          }

          ++v14;
        }

        while (v14 < v15);
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
LABEL_19:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v19 = 20000;
  }

  else
  {
    v19 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return v19;
}

uint64_t FstSearchLatticeHash::getBestScoreMaybeUpdateFstNode(FstSearchLatticeHash *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 28;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

uint64_t *FstSearchLatticeHash::seedTheory(FstSearchLatticeHash *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = *(this + 22) + 20 * v11;
    *(v12 + 4) = xmmword_26287F880;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 50);
  if (v16 == *(this + 51))
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 192, 1, 1);
    v16 = *(this + 50);
  }

  v17 = *(this + 24) + 28 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 16) = 0;
  *(v17 + 24) = -1;
  LODWORD(v17) = *(this + 50) + 1;
  *(this + 50) = v17;
  *(this + 38) = v17;

  return FstSearchLatticeHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLatticeHash::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 57);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 16 * v6);
    for (i = *(result[22] + 20 * v8[2] + 12); i != -1; v6 = v14)
    {
      v14 = i;
      result = v7[5];
      if (*v8 == 16777209)
      {
        v15 = (*(result + 87) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v8);
        v15 = result;
      }

      v16 = *(a2 + 8);
      if (v16 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v16 = *(a2 + 8);
      }

      *(*a2 + 4 * v16) = v15;
      ++*(a2 + 8);
      v17 = *(a6 + 8);
      if (v17 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v17 = *(a6 + 8);
      }

      *(*a6 + 4 * v17) = v6;
      ++*(a6 + 8);
      v18 = v7[20];
      v19 = *(v18 + 16 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v7[22] + 20 * *(v18 + 16 * v6 + 8));
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 16 * v14);
      i = *(v7[22] + 20 * v8[2] + 12);
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchLatticeHash::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
{
  v3 = *(this + 40);
  if (*(v3 + 178) == 1)
  {
    result = ArcGraph::ensureHeaderValid(*(this + 40), "Header");
    if (*(v3 + 202) == 1)
    {
      v8 = *(this + 140);
      if (*(v3 + 188) != v8)
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchInterWordSilencePenalty", *(v3 + 188), v8);
      }
    }

    v9 = *(this + 136);
    if (*(v3 + 192) != v9)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchPerWordPenalty", *(v3 + 192), v9);
    }

    v10 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 40) + 174)) + 608);
    if (*(v3 + 196) != v10)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "Voc", *(v3 + 196), v10);
    }

    v11 = *(v3 + 203);
    if (a3)
    {
      if (a2)
      {
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v12 = 1;
      }

      else
      {
        if (v11)
        {
          return result;
        }

        v12 = 0;
      }

      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "DropAlternateFrames", v12, v11);
    }

    else if (a2 & 1) != 0 || (v11)
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "NoDecimation", a2, v11);
    }
  }

  return result;
}

uint64_t FstSearchLatticeHash::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLatticeHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (*(a3 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *a3 + v12;
      v16 = *(v15 + 28);
      WordLatticeLC::WordLatticeLC(v20, v15, v14, *(v15 + 24) - v14, v16 - *(v15 + 24), v21);
      v17 = *(a2 + 8);
      if (v17 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v17) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v17), v20);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v20);
      ++v13;
      v12 += 32;
      v14 = v16;
    }

    while (v13 < *(a3 + 8));
  }

  v18 = a1[20] + 16 * v11;
  return (*(a1[22] + 20 * *(v18 + 8)) + *(a1[11] + 4 * *(v18 + 4)));
}

uint64_t FstSearchDurationHashBackoff::maybeInitDurModel(FstSearchDurationHashBackoff *this, const PicMgr *a2, int a3)
{
  v15 = 0;
  v16 = 0;
  PicMgr::getPelDurIdMap(a2, &v15);
  if (a3 == 1)
  {
    v6 = 56;
  }

  else
  {
    v6 = 72;
  }

  v7 = v16;
  v8 = *(this + 51);
  if (v16 <= v8)
  {
    *(this + 50) = v16;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    DgnPrimArray<short>::reallocElts(this + 192, v16 - v8, 0);
    *(this + 50) = v7;
  }

  v9 = 0;
  v10 = v15;
  v11 = *(this + 24);
  do
  {
    if (!v9 || (v12 = *(v10 + 2 * v9), v12 == 0xFFFF))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(*(a2 + v6) + 2 * v12);
    }

    *(v11 + 2 * v9++) = v13;
  }

  while (v7 != v9);
LABEL_13:
  *(this + 208) = *(a2 + 8);
  *(this + 53) = *(a2 + 3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

int64x2_t FstSearchDurationHashBackoff::advanceDeltas(FstSearchDurationHashBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v8 = a2;
  v95[0] = a2;
  v93 = 0u;
  v94 = 0u;
  SnapTime::recordTime(&v93, 1, 0, 0, 0);
  *v92 = 0xFFFFFFFF00000000;
  *&v92[8] = -1;
  *&v92[12] = -2;
  *&v92[16] = 0;
  *&v92[24] = 0;
  v10 = (this + 256);
  *(this + 64) = a3;
  v11 = *(this + 2);
  v12 = *(this + 56);
  if (v12)
  {
    v68 = a5;
    v69 = a4;
    v13 = 0;
    v72 = *(this + 53);
    v70 = v8;
    v71 = *(this + 208);
    do
    {
      v14 = *(this + 27) + 28 * v13;
      v15 = *(v14 + 4);
      v16 = *(this + 5);
      if (*(v16 + 160) != v15)
      {
        if (*(v16 + 140) > v15)
        {
          if (*(this + 19) + *(this + 64) >= 5000)
          {
            v17 = 5000;
          }

          else
          {
            v17 = *(this + 19) + *(this + 64);
          }

          ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v14 + 12), *v14, v17);
          v19 = (*(this + 27) + 28 * v13);
          v20 = *v19;
          *&v92[12] = *(v19 + 12);
          *v92 = v20;
          v21 = WORD6(v20);
          if (WORD6(v20))
          {
            if (*&v92[20] >= 1)
            {
              v22 = v71 - *&v92[20];
            }

            else
            {
              v22 = v71;
            }

            v21 = v22 & ((*&v92[20] - v71) >> 31);
            *&v92[20] -= v71;
            *&v92[24] += v21;
          }

          v23 = v21 + ScoreAllowBackoff_updateNodeInSequence;
          if (v23 - v11 <= *v10)
          {
            if (*v10 > v23)
            {
              *v10 = v23;
            }

            *v92 = v23;
            FstSearchDurationHashBackoff::maybeInsertHashedToken(this, v92);
          }
        }

        v24 = v15;
        do
        {
          v25 = *(this + 5);
          v26 = *(v25 + 152);
          v27 = *(v26 + 4 * v24);
          v28 = *(v26 + 4 * (v24 + 1));
          v29 = *(v25 + 140);
          if (v29 <= v28)
          {
            if (v29 <= v15 && (*(this + 380) & 1) != 0)
            {
              v38 = (v27 & 0xFFFFF) <= 0xFFFF3 ? v27 & 0xFFFFF : v27 & 0xFFFFF | 0xF00000;
              if (v38 != 16777210)
              {
                DgnString::DgnString(&v89);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v38, &v89);
                v40 = &unk_26287F8B0;
                if (v89.i32[2])
                {
                  v40 = v89.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v39, v15, *(*(this + 27) + 28 * v13), *(*(this + 27) + 28 * v13 + 8), v40);
                MiniFst::seed(this + 264, *(*(this + 27) + 28 * v13), 0, *(*(this + 27) + 28 * v13 + 8), v28);
                DgnString::~DgnString(&v89);
              }
            }
          }

          else
          {
            v30 = (v27 >> 20) & 0x3FF;
            if (*(this + 19) + *(this + 64) >= 5000)
            {
              v31 = 5000;
            }

            else
            {
              v31 = *(this + 19) + *(this + 64);
            }

            v32 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v26 + 4 * v24), *(*(this + 27) + 28 * v13) + v30, v31);
            v33 = (*(this + 27) + 28 * v13);
            v34 = *v33;
            *&v92[12] = *(v33 + 12);
            *v92 = v34;
            v35 = *&v92[20] & ~(*&v92[20] >> 31);
            v36 = v27;
            if (v27)
            {
              v36 = *(*(this + 24) + 2 * v27);
              v35 -= v36 & (v36 >> 31);
              v37 = v72;
            }

            else
            {
              v37 = 0;
            }

            v41 = v37 + v35;
            *&v92[20] = v36;
            *&v92[24] += v41;
            v42 = v41 + v32;
            if (v42 - v11 <= *v10)
            {
              if (*v10 > v42)
              {
                *v10 = v42;
              }

              *v92 = v42;
              *&v92[4] = v28;
              *&v92[12] = v27;
              *&v92[16] += v30;
              FstSearchDurationHashBackoff::maybeInsertHashedToken(this, v92);
            }
          }

          v24 += 2;
        }

        while ((v27 & 0x80000000) == 0);
        v12 = *(this + 56);
      }

      ++v13;
    }

    while (v13 < v12);
    a3 = *v10;
    v8 = v70;
    a4 = v69;
    a5 = v68;
  }

  v91 = a3 + v11;
  if (*(this + 380) == 1)
  {
    MiniFst::updateFrame(this + 264, this + 64, v11, v8);
  }

  v89 = 0u;
  v90 = 0u;
  SnapTime::recordTime(&v89, 1, 0, 0, 0);
  v89 = vsubq_s64(v89, v93);
  v90 = vsubq_s64(v90, v94);
  v43 = *(this + 13);
  v44 = vaddq_s64(v43[1], v90);
  *v43 = vaddq_s64(*v43, v89);
  v43[1] = v44;
  v87 = 0u;
  v88 = 0u;
  SnapTime::recordTime(&v87, 1, 0, 0, 0);
  FstSearchDurationHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v91);
  v85 = 0u;
  v86 = 0u;
  SnapTime::recordTime(&v85, 1, 0, 0, 0);
  v45 = vsubq_s64(v85, v87);
  v46 = *(this + 13);
  v47 = v46[3];
  v48 = vaddq_s64(v46[2], v45);
  v85 = v45;
  v86 = vsubq_s64(v86, v88);
  v49 = vaddq_s64(v47, v86);
  v46[2] = v48;
  v46[3] = v49;
  v83 = 0u;
  v84 = 0u;
  SnapTime::recordTime(&v83, 1, 0, 0, 0);
  v50 = *(this + 27);
  v51 = *(this + 29);
  *(this + 27) = v51;
  *(this + 29) = v50;
  LODWORD(v50) = *(this + 57);
  v52 = *(this + 30);
  *(this + 28) = v52;
  *(this + 60) = 0;
  *(this + 61) = v50;
  v53 = *(this + 6);
  if (v53 && v53 < v52)
  {
    mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(v51, v53, v52);
  }

  v81 = 0u;
  v82 = 0u;
  SnapTime::recordTime(&v81, 1, 0, 0, 0);
  v54 = vsubq_s64(v81, v83);
  v55 = *(this + 13);
  v56 = v55[5];
  v57 = vaddq_s64(v55[4], v54);
  v81 = v54;
  v82 = vsubq_s64(v82, v84);
  v58 = vaddq_s64(v56, v82);
  v55[4] = v57;
  v55[5] = v58;
  v79 = 0u;
  v80 = 0u;
  SnapTime::recordTime(&v79, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v77 = 0u;
  v78 = 0u;
  SnapTime::recordTime(&v77, 1, 0, 0, 0);
  v59 = vsubq_s64(v77, v79);
  v60 = *(this + 13);
  v61 = v60[9];
  v62 = vaddq_s64(v60[8], v59);
  v77 = v59;
  v78 = vsubq_s64(v78, v80);
  v63 = vaddq_s64(v61, v78);
  v60[8] = v62;
  v60[9] = v63;
  v75 = 0u;
  v76 = 0u;
  SnapTime::recordTime(&v75, 1, 0, 0, 0);
  *(this + 60) = 0;
  v64 = *(this + 56);
  *(this + 38) = v64;
  if (a4)
  {
    *(a4 + 2) += v64;
    if (*(a4 + 2) > v64)
    {
      LODWORD(v64) = *(a4 + 2);
    }

    *(a4 + 2) = v64;
  }

  if (*(this + 380) == 1)
  {
    FstSearchDurationHashBackoff::seedFromMiniFst(this, v95);
  }

  if (a5)
  {
    FstSearchDurationHashBackoff::propagateNulls(this, v91, v8, a4);
  }

  *(this + 62) = v8;
  v73 = 0u;
  v74 = 0u;
  SnapTime::recordTime(&v73, 1, 0, 0, 0);
  v65 = *(this + 13);
  result = vaddq_s64(v65[6], vsubq_s64(v73, v75));
  v67 = vaddq_s64(v65[7], vsubq_s64(v74, v76));
  v65[6] = result;
  v65[7] = v67;
  return result;
}

__n128 FstSearchDurationHashBackoff::maybeInsertHashedToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  v5 = v4 >> 6;
  v6 = v4 & 0x3F;
  v7 = *(a1 + 112);
  v8 = v7[2];
  v9 = *(v8 + 8 * v5);
  if (!v9)
  {
    v10 = *(v7 + 12);
    v11 = *(v7 + 13);
    v12 = *v7;
    if (v10 >= v11)
    {
      v13 = v12 + 16 * v11;
      if (!*(v13 + 8))
      {
        *v13 = MemChunkAlloc(0x100uLL, 0);
        *(v13 + 8) = 64;
        v12 = *v7;
        v8 = v7[2];
        LODWORD(v10) = *(v7 + 12);
        v11 = *(v7 + 13);
      }

      *(v8 + 8 * v5) = v12 + 16 * v11;
      *(v7 + 13) = v11 + 1;
    }

    else
    {
      *(v8 + 8 * v5) = v12 + 16 * v10;
    }

    *(v7 + 12) = v10 + 1;
    v14 = *(v7[2] + 8 * v5);
    memset(*v14, 255, 4 * *(v14 + 8));
    v16 = *(v7 + 10);
    if (v16 == *(v7 + 11))
    {
      DgnPrimArray<unsigned int>::reallocElts((v7 + 4), 1, 1);
      v16 = *(v7 + 10);
    }

    *(v7[4] + 4 * v16) = v5;
    ++*(v7 + 10);
    v9 = *(v7[2] + 8 * v5);
  }

  v17 = *v9;
  v18 = *(v17 + 4 * v6);
  if (v18 == -1)
  {
    v20 = *(a1 + 240);
    *(v17 + 4 * v6) = v20;
    if (v20 == *(a1 + 244))
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(a1 + 232, 1, 1);
      v20 = *(a1 + 240);
    }

    v21 = *(a1 + 232) + 28 * v20;
    result = *a2;
    *(v21 + 12) = *(a2 + 12);
    *v21 = result;
    ++*(a1 + 240);
  }

  else
  {
    v19 = *(a1 + 232) + 28 * v18;
    if (*v19 > *a2)
    {
      result = *a2;
      *(v19 + 12) = *(a2 + 12);
      *v19 = result;
    }
  }

  return result;
}