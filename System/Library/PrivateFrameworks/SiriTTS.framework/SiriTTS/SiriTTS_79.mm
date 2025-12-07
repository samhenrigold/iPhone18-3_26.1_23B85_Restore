uint64_t Wsola__plosive_silence(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 1088);
  v5 = **(*(v4 + 152) + 56 * a2 + 8);
  v6 = *(v4 + 180);
  v7 = *(v4 + 64);
  if (*(v4 + 28) - *(v4 + 20) >= v6)
  {
    *(v7 + 4) = v6;
    inserted = InOut__DecodeToVector(a1, v5, v6, v7);
    if ((inserted & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return inserted;
    }
  }

  else
  {
    inserted = InOut__DecodeToVector(a1, v5, *(v4 + 28) - *(v4 + 20), v7);
    if ((inserted & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return inserted;
    }

    v9 = *(v4 + 28) - *(v4 + 20);
    Wsola__zero(*(*(v4 + 64) + 8), v9, *(v4 + 180) - v9);
    *(*(v4 + 64) + 4) = *(v4 + 28) - *(v4 + 20);
  }

  *(v4 + 32) = 0;
  if (v2 < 1)
  {
    if (*(*(v4 + 160) + 10))
    {
      v24 = 0;
      if (Wsola__findNextEventInSubUnit(v4, 0, &v24))
      {
        v16 = *(v4 + 152);
        v17 = *(v16 + 46);
        if (v24 < v17)
        {
          v18 = *(v16 + 44);
          v19 = *(v4 + 144);
          v20 = (*(v4 + 160) + 16 * v24 + 16 * v18);
          v21 = v17 - v24;
          do
          {
            if (*v20 > v19)
            {
              *v20 = v19;
            }

            v20 += 4;
            --v21;
          }

          while (v21);
        }
      }
    }
  }

  else
  {
    v25 = 0;
    if (v2 != 1)
    {
      if (Wsola__findNextEventInSubUnit(v4, v2 - 1, &v25))
      {
        v10 = *(v4 + 152) + 56 * (v2 - 1);
        v11 = *(v10 + 46);
        if (v25 < v11)
        {
          v12 = *(v10 + 44);
          v13 = *(v4 + 144);
          v14 = (*(v4 + 160) + 16 * v25 + 16 * v12);
          v15 = v11 - v25;
          do
          {
            if (*v14 > v13)
            {
              *v14 = v13;
            }

            v14 += 4;
            --v15;
          }

          while (v15);
        }
      }
    }
  }

  InOut__PutVectorInBuffer(v4, *(v4 + 48), 0, *(v4 + 180));
  inserted = InOut__AudioWriteToClientWithMarkers(a1, v2 - 1, 1, 1);
  if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    v22 = *(*(v4 + 152) + 56 * v2 + 40);
    Wsola__updateSubunits(v4, v2, *(*(v4 + 152) + 56 * v2 + 36) + v22);
    inserted = InOut__InsertSilence(a1, v22, v2);
    if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
    {
      Wsola__updateSubunits(v4, v2, *(*(v4 + 152) + 56 * v2 + 36));
      InOut__PutVectorInBuffer(v4, *(v4 + 64), 0, *(*(v4 + 64) + 4));
      inserted = InOut__AudioWriteToClientWithMarkers(a1, v2, *(*(v4 + 64) + 4), 0);
      if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
      {
        Wsola__updatepointers(v4, *(v4 + 180) + *(v4 + 32));
      }
    }
  }

  return inserted;
}

uint64_t synthfx_ExtractFeaturesForSynth_Demi(int a1, uint64_t a2)
{
  v3 = a1;
  v90 = *(a2 + 136);
  v91 = v90 != 0;
  v4 = *(a2 + 32) - 2;
  *(a2 + 32) = v4;
  *(a2 + 48) += 4;
  *(a2 + 56) -= 4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = 0;
  v6 = v4;
  do
  {
    *(*(a2 + 24) + 4 * v5) = *(*(a2 + 24) + 4 * v5 + 4);
    *(*(a2 + 40) + 8 * v5) = *(*(a2 + 40) + 8 * v5 + 8);
    ++v5;
  }

  while (v4 != v5);
  if (v4 == 1)
  {
LABEL_5:
    *(a2 + 32) = 0;
    v7 = *(a2 + 112);
    goto LABEL_6;
  }

  LOWORD(v44) = v4;
  if (!a1)
  {
    v94 = 0uLL;
    v93 = 0uLL;
    UnitData = Lookup_GetUnitData(***(a2 + 40), **(a2 + 24), &v94);
    if ((UnitData & 0x80000000) != 0)
    {
      return UnitData;
    }

    if (*(a2 + 32))
    {
      v67 = 0;
      v68 = 0;
      v44 = 1;
      v4 = 1;
      while (1)
      {
        v25 = Lookup_GetUnitData(**(*(a2 + 40) + 8 * (v67 + 1)), *(*(a2 + 24) + 4 * (v67 + 1)), &v93);
        if ((v25 & 0x80000000) != 0)
        {
          return v25;
        }

        LODWORD(v69) = *(a2 + 32);
        if (v67 >= v69)
        {
          ++v67;
        }

        else
        {
          v70 = v67;
          v71 = 8 * v67 + 16;
          do
          {
            v72 = *(a2 + 40);
            if (*(v72 + v71 - 16) != *(v72 + 8 * v70 + 8))
            {
              break;
            }

            v73 = *(*(a2 + 64) + v68) != 35 && *(*(a2 + 96) + 2 * v68) == 0;
            if (!v73 || BYTE12(v94) != 0)
            {
              break;
            }

            v75 = DWORD1(v93) - (DWORD1(v94) + DWORD2(v94));
            if (v75 < 0)
            {
              v75 = DWORD1(v94) + DWORD2(v94) - DWORD1(v93);
            }

            if (v75 > 3)
            {
              break;
            }

            v76 = v70 + 1;
            ++v67;
            v68 = (v67 & 1) + (v67 >> 1);
            v94 = v93;
            ++v44;
            v25 = Lookup_GetUnitData(**(v72 + v71), *(*(a2 + 24) + 4 * v70 + 8), &v93);
            v69 = *(a2 + 32);
            v71 += 8;
            v70 = v76;
          }

          while (v76 < v69);
          if ((v25 & 0x80000000) != 0)
          {
            return v25;
          }

          ++v67;
        }

        v68 = (v67 & 1) + (v67 >> 1);
        v94 = v93;
        ++v44;
        ++v4;
        if (v67 >= v69)
        {
          goto LABEL_143;
        }
      }
    }

    v4 = 1;
    LOWORD(v44) = 1;
LABEL_143:
    v6 = v4;
  }

  v25 = 2164269066;
  if (!v90)
  {
    LOWORD(v44) = 1;
  }

  v45 = heap_Calloc(*(*a2 + 8), v6, 56);
  *(a2 + 128) = v45;
  if (v45)
  {
    *(a2 + 120) = v4;
    v46 = heap_Calloc(*(*a2 + 8), v44, 16);
    *(a2 + 112) = v46;
    if (v46)
    {
      v7 = v46;
      *(a2 + 106) = v44;
LABEL_6:
      v96 = 0;
      v8 = *(a2 + 128);
      *&v94 = v8;
      *(&v94 + 1) = v7;
      *(v8 + 44) = 0;
      if (v3)
      {
        v9 = *(a2 + 32);
        if (*(a2 + 32))
        {
          v10 = 0;
          v11 = 0;
          v12 = *(a2 + 24);
          v13 = *(a2 + 40);
          v14 = v8 + 40;
          v15 = *(a2 + 64);
          v16 = (*(a2 + 48) + 2);
          v17 = v7;
          do
          {
            v18 = (v10 >> 1) + (v10 & 1);
            *(v14 - 40) = *(v12 + 4 * v10);
            *(v14 - 32) = *(v13 + 8 * v10);
            *(v14 - 24) = *(v16 - 1);
            *(v14 - 20) = *v16;
            *(v14 + 4) = v10;
            if (!v10 || (v10 & 1) != 0)
            {
              v22 = *(*(a2 + 96) + 2 * v18);
              *v14 = v22;
              v19 = (v15 + v18);
              LODWORD(v21) = *(v15 + v18);
              if (v21 != 35)
              {
                goto LABEL_19;
              }

              if (v22)
              {
                LOBYTE(v21) = 35;
                goto LABEL_19;
              }

              v21 = v14;
            }

            else
            {
              *v14 = 0;
              v19 = (v15 + v18);
              v20 = *(v15 + v18);
              if (v20 != 35)
              {
                v23 = v7 + 16 * v10;
                *(v17 + 12) = v20;
                *(v17 + 8) = v11;
                goto LABEL_20;
              }

              v21 = (v8 + 56 * v10 + 40);
            }

            *v21 = 1;
            LOBYTE(v21) = *v19;
LABEL_19:
            *(v17 + 12) = v21;
            *(v17 + 8) = v11;
            v23 = v17;
            if (v10)
            {
              goto LABEL_22;
            }

LABEL_20:
            if (!v18)
            {
LABEL_22:
              v24 = *(*(a2 + 80) + 2 * v18);
              goto LABEL_23;
            }

            v24 = 0;
LABEL_23:
            v16 += 2;
            *(v23 + 10) = v24;
            v11 += v24;
            ++v10;
            v14 += 56;
            v17 += 16;
          }

          while (v9 != v10);
        }

        v25 = 0;
        *(a2 + 120) = v9;
        *(a2 + 106) = v9;
        goto LABEL_25;
      }

      v93 = 0uLL;
      v92 = 0uLL;
      v25 = Lookup_GetUnitData(***(a2 + 40), **(a2 + 24), &v93);
      if ((v25 & 0x80000000) != 0)
      {
        return v25;
      }

      if (**(a2 + 64) == 35)
      {
        v47 = DWORD2(v93);
        if (DWORD2(v93) >= 0x16)
        {
          v47 = 22;
        }

        if (*(a2 + 16))
        {
          v48 = v47;
        }

        else
        {
          v48 = 1;
        }

        DWORD2(v93) = v48;
      }

      v49 = 1;
      v95 = 1;
      FillUnit(a2, v8, 0, 0, &v93, 0, v91);
      FillSubunit(a2, &v94, v8, 0, 0, &v93, &v96, v91);
      if (!*(a2 + 32))
      {
        v77 = 0;
        LOWORD(v9) = 1;
        goto LABEL_124;
      }

      v89 = v7;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      LODWORD(v7) = 0;
      LOWORD(v9) = 1;
      while (1)
      {
        v25 = Lookup_GetUnitData(**(*(a2 + 40) + 8 * (v7 + 1)), *(*(a2 + 24) + 4 * (v7 + 1)), &v92);
        LODWORD(v53) = *(a2 + 32);
        if (v7 < v53)
        {
          break;
        }

LABEL_86:
        if ((v25 & 0x80000000) != 0)
        {
          return v25;
        }

        v63 = v7 + 1;
        if (v7 + 1 < v53)
        {
          v52 = (v63 & 1) + (v63 >> 1);
          v93 = v92;
          v64 = v53 - 2;
          if (*(*(a2 + 64) + v52) == 35 && v7 == v64)
          {
            DWORD2(v93) = 4;
          }

          ++v50;
          FillUnit(a2, v8 + 56 * v50, v7 + 1, (v63 & 1) + (v63 >> 1), &v93, ++v51, v91);
          LOWORD(v9) = v9 + 1;
          LOWORD(v95) = v9;
          FillSubunit(a2, &v94, v8 + 56 * v50, v63, (v63 & 1) + (v63 >> 1), &v93, &v96, v91);
          LODWORD(v7) = v7 + 1;
          if (v63 < *(a2 + 32))
          {
            continue;
          }
        }

        v77 = v52;
        v49 = v51 + 1;
        v3 = 0;
        v7 = v89;
LABEL_124:
        if (v90)
        {
          v79 = v49;
        }

        else
        {
          v79 = 0;
        }

        *(a2 + 120) = v9;
        *(a2 + 106) = v79;
        v80 = *(a2 + 64);
        if (*v80 == 35)
        {
          *(v8 + 48) = 68;
          *(v8 + 104) = *(v8 + 104) & 0xF0 | 4;
        }

        if (v80[v77] == 35)
        {
          v81 = v8 + 56 * v9;
          *(v81 - 64) = *(v81 - 64) & 0xF | 0x40;
          *(v81 - 8) = 68;
        }

        if (v9 < 3u)
        {
LABEL_25:
          if (!v3 && (v25 & 0x80000000) == 0 && v90)
          {
            v26 = *(a2 + 16);
            if ((v26 & 1) == 0)
            {
              v27 = *(a2 + 128);
              v28 = *(a2 + 112) + 16 * *(v27 + 44);
              if (*(v28 + 12) == 35)
              {
                *(v27 + 48) = *(v27 + 48) & 0xF0 | 1;
                v29 = *(v27 + 40);
                v30 = *(v27 + 32);
                v31 = *(v28 + 4);
                v32 = 10 * v29;
                v33 = v29 > 0;
                v34 = v31 > 50;
                v35 = v32 - v31;
                if (v32 >= v31)
                {
                  v36 = *(v28 + 4);
                }

                else
                {
                  v36 = v32;
                }

                if (v32 <= v31)
                {
                  v35 = 15;
                }

                v37 = !v33 || !v34;
                if (v33 && v34)
                {
                  v38 = v36;
                }

                else
                {
                  v38 = *(v28 + 4);
                }

                if (!v37)
                {
                  v32 = v35;
                }

                v39 = v32 / 10;
                v40 = v31 - v38;
                v41 = __OFSUB__(v30, v40);
                v42 = v30 - v40;
                if (v42 < 0 == v41)
                {
                  *(v28 + 4) = v38;
                  *(v27 + 28) += v40;
                  *(v27 + 32) = v42;
                }

                *(v27 + 40) = v39;
              }
            }

            if ((v26 & 4) == 0)
            {
              v43 = *(a2 + 128) + 56 * v9;
              if (*(*(a2 + 112) + 16 * *(v43 - 12) + 16 * *(v43 - 10) - 4) == 35)
              {
                *(v43 - 8) = *(v43 - 8) & 0xF | 0x10;
              }
            }
          }

          return v25;
        }

        v82 = (v8 + 104);
        v83 = 1;
        while (2)
        {
          v84 = *v82;
          if ((v84 & 0xF) == 0 && *(v82 - 1) == 1)
          {
            v85 = 65;
            v86 = 4;
            v87 = -16;
            v88 = 1;
            goto LABEL_139;
          }

          if (v84 <= 0xF && *(v82 - 1) == 1)
          {
            v85 = 20;
            v86 = 64;
            v87 = 15;
            v88 = -1;
LABEL_139:
            *(v82 - 4) = 3;
            *(v7 + 16 * *(v82 - 2) + 4) = 3;
            *(v8 + 56 * (v83 + v88) + 48) = *(v8 + 56 * (v83 + v88) + 48) & v87 | v86;
            *v82 = v85;
          }

          ++v83;
          v82 += 56;
          if (v9 - 1 == v83)
          {
            goto LABEL_25;
          }

          continue;
        }
      }

      v54 = v8 + 56 * v50;
      v55 = v7;
      while (1)
      {
        v7 = v55;
        v56 = *(a2 + 96);
        if (*(*(a2 + 64) + v52) == 35 || *(v56 + 2 * v52) != 0 || BYTE12(v93) != 0)
        {
          goto LABEL_86;
        }

        v59 = DWORD1(v92) - (DWORD1(v93) + DWORD2(v93));
        if (v59 < 0)
        {
          v59 = DWORD1(v93) + DWORD2(v93) - DWORD1(v92);
        }

        if (v59 > 3)
        {
          goto LABEL_86;
        }

        ++v55;
        if (v7 + 1 >= v53)
        {
          goto LABEL_85;
        }

        v52 = (v55 & 1) + (v55 >> 1);
        v93 = v92;
        *(v54 + 32) += DWORD2(v92);
        if ((v55 & 1) == 0)
        {
          break;
        }

        v61 = *(v56 + 2 * v52);
        v60 = *(v54 + 48) & 0xF;
        *(v54 + 48) = v60 | 0x20;
        if (v61)
        {
          goto LABEL_81;
        }

        if (*(*(a2 + 88) + v52) == 80)
        {
          v60 |= 0x40u;
          goto LABEL_81;
        }

LABEL_82:
        v62 = v90;
        if (v90)
        {
          v62 = *(v54 + 46) + 1;
        }

        *(v54 + 46) = v62;
        FillSubunit(a2, &v94, v8 + 56 * v50, v7 + 1, (v55 & 1) + (v55 >> 1), &v93, &v96, v91);
        v25 = Lookup_GetUnitData(**(*(a2 + 40) + 8 * v7 + 16), *(*(a2 + 24) + 4 * v7 + 8), &v92);
        v53 = *(a2 + 32);
        ++v51;
        if (v55 >= v53)
        {
LABEL_85:
          LODWORD(v7) = v7 + 1;
          goto LABEL_86;
        }
      }

      v60 = *(v54 + 48) & 0xF | 0x20;
LABEL_81:
      *(v54 + 48) = v60;
      goto LABEL_82;
    }
  }

  return v25;
}

void *FillUnit(void *result, uint64_t a2, int a3, int a4, uint64_t a5, __int16 a6, int a7)
{
  *a2 = *a5;
  v7 = result[6];
  *(a2 + 8) = *(result[5] + 8 * a3);
  v8 = *(v7 + 4 * a3);
  LODWORD(v7) = *(v7 + 2 * ((2 * a3) | 1));
  *(a2 + 16) = v8;
  *(a2 + 20) = v7;
  *(a2 + 28) = *(a5 + 4);
  *(a2 + 36) = 0;
  v9 = *(result[12] + 2 * a4);
  *(a2 + 48) = 34;
  if (a3)
  {
    *(a2 + 40) = 0;
    if (v9)
    {
      v10 = 2;
    }

    else
    {
      if (*(result[11] + a4) != 80)
      {
        goto LABEL_11;
      }

      v10 = 66;
    }
  }

  else if (v9)
  {
    *(a2 + 40) = v9;
    v10 = 32;
  }

  else
  {
    *(a2 + 40) = 0;
    if (*(result[11] + a4) != 80)
    {
      goto LABEL_11;
    }

    v10 = 36;
  }

  *(a2 + 48) = v10;
LABEL_11:
  if (a7 != 1)
  {
    a6 = 0;
  }

  *(a2 + 46) = a7 == 1;
  *(a2 + 44) = a6;
  return result;
}

uint64_t FillSubunit(uint64_t result, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, _WORD *a7, int a8)
{
  if (!a8)
  {
    *(a3 + 44) = 0;
    return result;
  }

  v8 = *(a2 + 8) + 16 * *(a3 + 44) + 16 * *(a3 + 46);
  *(v8 - 4) = *(*(result + 64) + a5);
  v9 = *(a6 + 8);
  *(v8 - 12) = v9;
  if (*(a2 + 16) == 1)
  {
    if ((a4 & 1) == 0)
    {
      v10 = *(*a2 + 46);
      *(v8 - 16) = 0;
      *(v8 - 8) = *a7;
      if (a5 || v10 != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }
  }

  else if ((a4 & 1) == 0)
  {
    *(v8 - 16) = 0;
    *(v8 - 8) = *a7;
LABEL_10:
    *(v8 - 6) = 0;
    return result;
  }

  v11 = *(result + 72) - 1;
  *(v8 - 16) = 0;
  *(v8 - 8) = *a7;
  if (v11 != a5)
  {
LABEL_29:
    v24 = *(*(result + 80) + 2 * a5);
    *(v8 - 6) = v24;
    *a7 += v24;
    return result;
  }

  v12 = *(result + 16) & 4;
  v13 = *(*(result + 80) + 2 * a5);
  *(v8 - 6) = v13;
  *a7 += v13;
  v14 = *(*(result + 96) + 2 * a5);
  if (!*(*(result + 96) + 2 * a5) || !*(a3 + 46))
  {
    v25 = (v12 << 14) | 0x20000;
LABEL_32:
    *(v8 - 16) = v25;
    return result;
  }

  if (v12)
  {
    v25 = v14 | 0x30000;
    goto LABEL_32;
  }

  v15 = 10 * v14;
  if (v15 >= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (v15 <= v9)
  {
    v17 = 15;
  }

  else
  {
    v17 = v15 - v9;
  }

  if (v9 <= 50)
  {
    v18 = v9;
  }

  else
  {
    v18 = v16;
  }

  if (v9 > 50)
  {
    v15 = v17;
  }

  v19 = v15 / 10;
  v20 = v9 - v18;
  v21 = *(a3 + 32);
  v22 = __OFSUB__(v21, v20);
  v23 = v21 - v20;
  if (v23 < 0 == v22)
  {
    *(v8 - 12) = v18;
    *(a3 + 32) = v23;
  }

  *(v8 - 16) = 0x20000;
  *(result + 104) = v19;
  return result;
}

uint64_t synth_Wsola__Wsola(uint64_t a1)
{
  v2 = *(a1 + 1088);
  *(v2 + 144) = 0;
  *(v2 + 88) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 104) = 0;
  *(v2 + 20) = 0;
  *(v2 + 36) = 0;
  *(v2 + 28) = 0;
  *(v2 + 44) = 0;
  v3 = *(a1 + 1040);
  if (v3 > 15999)
  {
    if (v3 == 16000)
    {
      v4 = 160;
    }

    else
    {
      if (v3 != 22050)
      {
        goto LABEL_8;
      }

      v4 = 220;
    }

    *v2 = v4;
    v5 = 4;
    goto LABEL_13;
  }

  if (v3 == 8000)
  {
    v4 = 80;
    goto LABEL_10;
  }

  if (v3 != 11025)
  {
LABEL_8:
    v4 = *v2;
    goto LABEL_14;
  }

  v4 = 112;
LABEL_10:
  *v2 = v4;
  v5 = 2;
LABEL_13:
  *(v2 + 16) = v5;
LABEL_14:
  *(v2 + 4) = v4 >> 1;
  *(v2 + 8) = 2 * v4;
  *(v2 + 12) = 3 * v4;
  *(v2 + 64) = v2 + 112;
  *(v2 + 72) = v2 + 128;
  *(v2 + 48) = v2 + 80;
  *(v2 + 56) = v2 + 96;
  Wsola__OverlapWindow__Init(v2, v3);
  v6 = *(a1 + 1088);
  v7 = *(a1 + 1040);
  if (v7 > 15999)
  {
    if (v7 == 16000)
    {
      v8 = 216;
      *(v6 + 184) = 216;
      *(v6 + 196) = 188;
      *(v6 + 208) = *v6;
      *(v6 + 212) = 0x500000020;
      v9 = 6;
      goto LABEL_24;
    }

    if (v7 == 22050)
    {
      v8 = 298;
      *(v6 + 184) = 298;
      *(v6 + 196) = 260;
      *(v6 + 208) = *v6;
      *(v6 + 212) = 0x50000002CLL;
      v9 = 8;
      goto LABEL_24;
    }
  }

  else
  {
    if (v7 == 8000)
    {
      v8 = 108;
      *(v6 + 184) = 108;
      *(v6 + 196) = 94;
      *(v6 + 208) = *v6;
      *(v6 + 212) = 0x500000010;
      v9 = 2;
      goto LABEL_24;
    }

    if (v7 == 11025)
    {
      v8 = 149;
      *(v6 + 184) = 149;
      *(v6 + 196) = 130;
      *(v6 + 208) = *v6;
      *(v6 + 212) = 0x500000016;
      v9 = 4;
LABEL_24:
      *(v6 + 220) = v9;
      goto LABEL_25;
    }
  }

  v8 = *(v6 + 184);
LABEL_25:
  *(v6 + 180) = 1;
  *(v6 + 188) = v8 >> 1;
  *(v6 + 192) = v8;
  v10 = *(v6 + 4);
  *(v6 + 200) = v10;
  *(v6 + 204) = v10 >> 1;
  *(v2 + 224) = 0;
  return 0;
}

void synth_doWsolaSynthesis(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1088);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  Psola_GetSynthMode(a1, &v9 + 1, v11, v10, &v9, &v8 + 1, &v8, &v7);
  Synth_LinkMsgLayers(a1);
  if ((v3 & 0x80000000) == 0 && (synthfx_ExtractFeaturesForSynth_Demi(SHIDWORD(v9) > 0, a1 + 512) & 0x80000000) == 0)
  {
    if ((Synth_Reset(a1) & 0x80000000) == 0 && (Synth__InitForProcessing(a1) & 0x80000000) == 0 && (InOut__GetClientBuffer(a1) & 0x80000000) == 0 && !InOut__IsEndState(a1) && *(a1 + 1024))
    {
      *(v2 + 144) = 0;
      if (SHIDWORD(v9) < 2)
      {
        if (HIDWORD(v9) == 1)
        {
          v4 = v9;
          if (v9 >= 1)
          {
            v4 = 10 * v9;
            LODWORD(v9) = 10 * v9;
          }

          v5 = HIDWORD(v8);
          if (SHIDWORD(v8) >= 1)
          {
            v5 = 10 * HIDWORD(v8);
            HIDWORD(v8) *= 10;
          }

          v6 = v8;
          if (v8 >= 1)
          {
            v6 = 10 * v8;
            LODWORD(v8) = 10 * v8;
          }

          Psola_Process(a1, v4, v5, v6);
        }

        else
        {
          Wsola__Process(a1);
        }
      }

      else
      {
        kaldi::nnet1::Component::IsUpdatable(a1);
      }
    }

    Synth_UnlinkMsgLayers(a1);
  }
}

uint64_t synth_SetWaitPeriod(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    return 2164269071;
  }

  result = 0;
  *(a1 + 1044) = a2;
  v4 = 1717986919 * (*(a1 + 1040) * 2 * (a2 & 0x7FFF) + 5);
  *(a1 + 1048) = (v4 >> 34) + (v4 >> 63);
  return result;
}

uint64_t synth_SetRateBaseline(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x32)
  {
    v2 = 50;
  }

  else
  {
    v2 = a2;
  }

  if (v2 >= 0x190)
  {
    v3 = 400;
  }

  else
  {
    v3 = v2;
  }

  *(a1 + 1056) = v3;
  *(a1 + 1052) = MapProsodyValue_Scaling(50, 100, 0x190u, v3, 100);
  return 0;
}

uint64_t synth_SetPitchBaseline(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xC8)
  {
    v2 = 200;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= 0x32)
  {
    v3 = 50;
  }

  else
  {
    v3 = v2;
  }

  *(a1 + 1060) = v3;
  *(a1 + 1054) = MapProsodyValue_Scaling(50, 100, 0xC8u, v3, 100);
  return 0;
}

uint64_t CheckForVFStateTriggers(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 25)
  {
    return 0;
  }

  __s[5] = v2;
  __s[6] = v3;
  __s[0] = 0;
  v10 = 0;
  paramc_ParamGetStr(*(*(a1 + 16) + 40), "waitfactor", __s);
  paramc_ParamGetUInt(*(*(a1 + 16) + 40), "finalsentencefound", &v10);
  result = 0;
  if (v10 != 1)
  {
    if ((paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactor", a2[6]) & 0x80000000) != 0)
    {
      v7 = strlen(__s[0]);
      paramc_ParamRipple(*(*(a1 + 16) + 40), "waitfactor", __s[0], (v7 + 1));
    }

    paramc_ParamRelease(*(*(a1 + 16) + 40));
    v8 = a2[6];
    if (v8 <= 9u)
    {
      result = 0;
      *(a1 + 1044) = v8;
      v9 = 1717986919 * (*(a1 + 1040) * 2 * (v8 & 0xF) + 5);
      *(a1 + 1048) = (v9 >> 34) + (v9 >> 63);
    }

    else
    {
      return 2164269071;
    }
  }

  return result;
}

uint64_t synth_ProcessMarkers(uint64_t a1)
{
  v1 = *(a1 + 1082);
  if (v1 < *(a1 + 1080))
  {
    v3 = 32 * v1;
    do
    {
      if (*(a1 + 1152))
      {
        v4 = *(a1 + 648);
        v5 = *(v4 + v3);
        if (v5 == 16)
        {
          v7 = *(v4 + v3 + 24);
          if (v7 != 100)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH", 45002, "%s%u", "pitch", v7);
          }
        }

        else if (v5 == 13)
        {
          result = synth_ResetParams(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      result = CheckForVFStateTriggers(a1, (*(a1 + 648) + v3));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      ++v1;
      v3 += 32;
    }

    while (v1 < *(a1 + 1080));
  }

  return 0;
}

uint64_t synth_splitGID(uint64_t a1, unsigned int a2, void *a3, unsigned int *a4)
{
  v4 = *(a1 + 928);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 928);
  }

  v6 = (v5 - 1);
  v7 = 1;
  v8 = 64;
  while (v6 + v7 != 1)
  {
    v9 = *(a1 + 936);
    v10 = *(v9 + v8);
    --v7;
    v8 += 40;
    if (v10 > a2)
    {
      v6 = -v7;
LABEL_10:
      v11 = 5 * v6;
      *a3 = v9 + 8 * v11;
      v12 = a2 - *(*(a1 + 936) + 8 * v11 + 24);
      goto LABEL_11;
    }
  }

  if (v4)
  {
    v9 = *(a1 + 936);
    goto LABEL_10;
  }

  v12 = 0;
  *a3 = 0;
LABEL_11:
  *a4 = v12;
  return 0;
}

uint64_t InOut__PutVectorInBuffer(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 < 1)
  {
    a4 = 0;
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = *(a1 + 72);
    v5 = *(v4 + 8);
    v6 = a4;
    v7 = (*(a2 + 8) + 4 * a3);
    do
    {
      v8 = *v7++;
      *v5++ = v8;
      --v6;
    }

    while (v6);
  }

  *(v4 + 4) = a4;
  return a4;
}

uint64_t InOut__GetClientBuffer(uint64_t a1)
{
  v1 = *(a1 + 1008);
  if (v1)
  {
    v2 = *(*(a1 + 1000) + 56);
  }

  else
  {
    v2 = *(*(a1 + 984) + 56);
    v1 = *(a1 + 992);
  }

  return InOut__PutOutput(a1, v2, v1, *(a1 + 1076) == 0);
}

uint64_t InOut__PutOutput(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, int a4)
{
  v7 = *(a1 + 1072);
  if (v7 == 1)
  {
    result = synth_ProcessMarkers(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v12 = *(a1 + 1080);
    v13 = *(a1 + 1082);
    v14 = (v12 - v13);
    if (v12 == v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a1 + 648) + 32 * v13;
    }

    *(a1 + 1082) = v12;
    if (a4)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    *(a1 + 1032) = v16;
    v17 = *(a1 + 1024);
    v18 = v17 != 0;
    v19 = v17 - 1;
    if (!v18)
    {
      v19 = 0;
    }

    if (v12 != v13)
    {
      v20 = (v15 + 12);
      v21 = v14;
      do
      {
        if (*v20 > v19)
        {
          *v20 = v19;
        }

        v20 += 8;
        --v21;
      }

      while (v21);
    }

    result = a2(a3, v16, a1 + 1016, a1 + 1024, v15, v14);
    if ((result & 0x80000000) == 0 && *(a1 + 1016) && a4 && *(a1 + 1024))
    {
      *(a1 + 1084) += *(a1 + 1036);
      *(a1 + 1036) = 0;
      *(a1 + 1028) = 0;
      return result;
    }

    goto LABEL_27;
  }

  if (v7)
  {
    return 0;
  }

  *(a1 + 1024) = 0;
  *(a1 + 1036) = 0;
  v8 = (a1 + 1016);
  result = a2(a3, *(a1 + 1032), a1 + 1016, a1 + 1024, 0, 0);
  if ((result & 0x80000000) != 0 || !*(a1 + 1024) || !*v8)
  {
LABEL_27:
    v10 = 2;
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:
  *(a1 + 1072) = v10;
  return result;
}

uint64_t InOut__DecodeToVector(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  if (a3 < 1)
  {
    result = 0;
    goto LABEL_10;
  }

  v7 = *(a1 + 1088);
  v15 = a3;
  v8 = *(*(v7 + 72) + 4);
  if (v8 < 1)
  {
    v9 = 0;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    result = Lookup_Decode(a2, &v15, *(v7 + 40) + 2 * v9);
    v5 = v15 + v9;
    if (v15 + v9 < 1)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  purgeBufferToVector(v7, &v15, *(v7 + 40));
  v9 = v15;
  v15 = v5 - v15;
  if (!*(*(v7 + 72) + 4))
  {
    goto LABEL_7;
  }

LABEL_4:
  result = 0;
LABEL_8:
  v11 = *(v7 + 40);
  v12 = *(a4 + 8);
  v13 = v5;
  do
  {
    v14 = *v11++;
    *v12++ = v14;
    --v13;
  }

  while (v13);
LABEL_10:
  *(a4 + 4) = v5;
  return result;
}

uint64_t purgeBufferToVector(uint64_t result, _DWORD *a2, _WORD *a3)
{
  LODWORD(v3) = *a2;
  if (*a2 < 1 || (v4 = *(result + 72), v5 = *(v4 + 4), v5 < 1))
  {
    LODWORD(v3) = 0;
  }

  else
  {
    if (v3 >= v5)
    {
      v3 = v5;
    }

    else
    {
      v3 = v3;
    }

    v6 = *(v4 + 8);
    v7 = v3;
    do
    {
      v8 = *v6++;
      *a3++ = v8;
      --v7;
    }

    while (v7);
    if (v3 >= v5)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v9 = 0;
      v10 = *(v4 + 8);
      do
      {
        *(v10 + 4 * v9) = *(v10 + 4 * v3 + 4 * v9);
        ++v9;
      }

      while (*(v4 + 4) > v3 + v9);
    }

    *(v4 + 4) = v9;
  }

  *a2 = v3;
  return result;
}

uint64_t InOut__AudioWriteToClient__No_Subunits(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a1 + 1088);
  do
  {
    v7 = *(a1 + 1028);
    v8 = *(a1 + 1024);
    if (v7 >= v8)
    {
      result = InOut__GetClientBuffer(a1);
      if ((result & 0x80000000) != 0 || *(a1 + 1072) == 2)
      {
        return result;
      }

      v8 = *(a1 + 1024);
      v7 = *(a1 + 1028);
    }

    v10 = v8 - v7;
    if (v3 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v3;
    }

    *(v6 + 144) += v11;
    result = synthDecodeToClient(a1, a2, v11);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v3 -= v11;
  }

  while (*(a1 + 1072) != 2 && v3 > 0);
  return result;
}

uint64_t synthDecodeToClient(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 1088);
  v7 = *(a1 + 1028);
  v8 = *(a1 + 1024);
  if (v7 < v8)
  {
    result = 0;
    goto LABEL_7;
  }

  result = InOut__GetClientBuffer(a1);
  if ((result & 0x80000000) == 0 && *(a1 + 1072) != 2)
  {
    v8 = *(a1 + 1024);
    v7 = *(a1 + 1028);
LABEL_7:
    v10 = v8 - v7;
    if (v10 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = v10;
    }

    v19 = v11;
    v12 = *(*(v6 + 72) + 4);
    if (v12 >= 1)
    {
      purgeBufferToVector(v6, &v19, (*(a1 + 1016) + 2 * v7));
      result = 0;
      v13 = v19;
      v7 = *(a1 + 1028) + v19;
      *(a1 + 1028) = v7;
      v19 = v11 - v13;
      v12 = *(*(v6 + 72) + 4);
    }

    if (v12)
    {
      do
      {
LABEL_15:
        *(a1 + 1036) += v11;
        a3 -= v11;
        if (!a3)
        {
          return result;
        }

        result = InOut__GetClientBuffer(a1);
        if ((result & 0x80000000) != 0 || *(a1 + 1072) == 2)
        {
          return result;
        }

        v15 = *(a1 + 1028);
        if (*(a1 + 1024) - v15 >= a3)
        {
          v11 = a3;
        }

        else
        {
          v11 = *(a1 + 1024) - v15;
        }

        v18 = v11;
        v16 = *(*(v6 + 72) + 4);
        if (v16 >= 1)
        {
          purgeBufferToVector(v6, &v18, (*(a1 + 1016) + 2 * v15));
          result = 0;
          v17 = v18;
          LODWORD(v15) = *(a1 + 1028) + v18;
          *(a1 + 1028) = v15;
          v18 = v11 - v17;
          v16 = *(*(v6 + 72) + 4);
        }
      }

      while (v16);
      result = Lookup_Decode(a2, &v18, *(a1 + 1016) + 2 * v15);
      v14 = v18;
    }

    else
    {
      result = Lookup_Decode(a2, &v19, *(a1 + 1016) + 2 * v7);
      v14 = v19;
    }

    *(a1 + 1028) += v14;
    goto LABEL_15;
  }

  return result;
}

uint64_t InOut__AudioWriteToClientWithMarkers(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a3 < 1)
  {
    return 0;
  }

  else
  {
    v5 = a3;
    v8 = *(a1 + 1088);
    if ((a2 & 0x80000000) != 0)
    {
      if (*(a1 + 618))
      {
        v45 = 0;
        v46 = 0;
        goto LABEL_21;
      }

      v9 = 0;
    }

    else
    {
      v9 = **(*(v8 + 152) + 56 * a2 + 8);
      if (*(a1 + 618))
      {
        v46 = 0;
        v45 = v9;
        if (Wsola__findNextEventInSubUnit(v8, a2, &v46) && *(*(v8 + 160) + 16 * (v46 + *(*(v8 + 152) + 56 * a2 + 44))) < *(v8 + 144))
        {
          do
          {
            v10 = *(v8 + 152);
            v11 = v10 + 56 * a2;
            if (v46 >= *(v11 + 46))
            {
              break;
            }

            v12 = *(v8 + 160);
            v13 = v12 + 16 * (v46 + *(v11 + 44));
            if (*v13 >= *(v8 + 144))
            {
              break;
            }

            v14 = *(v13 + 8);
            v15 = *(v13 + 10);
            v16 = *(a1 + 656);
            if (v15 + v14 > v16)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "SYNTH", 45000, "%s%u%s%u%s%u", "index", v14, "count", v15, "total", v16);
              v15 = *(a1 + 656);
              if (v14 >= v15)
              {
                v14 = *(a1 + 656);
              }

              LOWORD(v15) = v15 - v14;
              v10 = *(v8 + 152);
              v12 = *(v8 + 160);
            }

            v17 = *(v10 + 56 * a2 + 44);
            if (v15)
            {
              v18 = *(a1 + 1084);
              v19 = v15;
              v20 = *(a1 + 648) + 32 * v14 + 16;
              do
              {
                *(v20 - 4) = (*(v12 + 16 * (v46 + v17)) - v18);
                v20 += 32;
                --v19;
              }

              while (v19);
            }

            *(v12 + 16 * (v46 + v17) + 10) = 0;
            *(a1 + 1080) = v15 + v14;
          }

          while (Wsola__findNextEventInSubUnit(v8, a2, &v46));
        }

        while (1)
        {
LABEL_21:
          v23 = *(a1 + 1028);
          v24 = *(a1 + 1024);
          if (v23 >= v24)
          {
            ClientBuffer = InOut__GetClientBuffer(a1);
            if ((ClientBuffer & 0x80000000) != 0 || *(a1 + 1072) == 2)
            {
              return ClientBuffer;
            }

            v24 = *(a1 + 1024);
            v23 = *(a1 + 1028);
          }

          v25 = v24 - v23;
          if (v5 >= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v5;
          }

          *(v8 + 144) += v26;
          if (v5 <= v25)
          {
            v27 = 1;
          }

          else
          {
            v27 = 2;
          }

          if (a4 == 2)
          {
            a4 = v27;
          }

          if ((a2 & 0x80000000) == 0)
          {
            v28 = v46;
            v29 = *(v8 + 152);
            if (v46 < *(v29 + 56 * a2 + 46))
            {
              break;
            }
          }

LABEL_55:
          ClientBuffer = synthDecodeToClient(a1, v45, v26);
          if ((ClientBuffer & 0x80000000) == 0 && *(a1 + 1072) != 2)
          {
            v5 -= v26;
            if ((a2 & 0x80000000) == 0 && v5 >= 1)
            {
              Wsola__findNextEventInSubUnit(v8, a2, &v46);
            }

            if (v5 > 0)
            {
              continue;
            }
          }

          return ClientBuffer;
        }

        v30 = *(v8 + 160);
        while (1)
        {
          v31 = *(v29 + 56 * a2 + 44);
          if (a4 == 1)
          {
            v32 = v28 + v31;
            v33 = *(v8 + 144);
            if (*(v30 + 16 * v32 + 10))
            {
              v34 = *(v30 + 16 * v32);
              goto LABEL_43;
            }
          }

          else
          {
            v33 = *(v8 + 144);
            v32 = v31 + v28;
          }

          v35 = (v30 + 16 * v32);
          v34 = *v35;
          if (*v35 <= v33 && *(v35 + 5))
          {
            if (a4 == 1)
            {
LABEL_43:
              if (v34 < v33)
              {
                v33 = v34;
              }

              *(v30 + 16 * v32) = v33;
            }

            v36 = v30 + 16 * v32;
            v37 = *(v36 + 8);
            v38 = *(v36 + 10);
            v39 = *(a1 + 656);
            if (v38 + v37 > v39)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "SYNTH", 45000, "%s%u%s%u%s%u", "index", v37, "count", v38, "total", v39);
              v40 = *(a1 + 656);
              if (v37 >= v40)
              {
                v37 = *(a1 + 656);
              }

              LOWORD(v38) = v40 - v37;
              v29 = *(v8 + 152);
              v30 = *(v8 + 160);
            }

            v41 = v28 + *(v29 + 56 * a2 + 44);
            if (v38)
            {
              v42 = *(v30 + 16 * v41) - *(a1 + 1084);
              v43 = v38;
              v44 = (*(a1 + 648) + 32 * v37 + 16);
              do
              {
                *(v44 - 1) = v42;
                *v44 = 0;
                v44 += 8;
                --v43;
              }

              while (v43);
            }

            *(v30 + 16 * v41 + 10) = 0;
            *(a1 + 1080) = v38 + v37;
          }

          if (++v28 >= *(v29 + 56 * a2 + 46))
          {
            goto LABEL_55;
          }
        }
      }
    }

    return InOut__AudioWriteToClient__No_Subunits(a1, v9, a3);
  }
}

uint64_t InOut__InsertSilence(uint64_t a1, int a2, unsigned int a3)
{
  v6 = *(a1 + 1088);
  v7 = **(v6 + 72);
  v8 = *(v6 + 48);
  if (v7 >= *v8)
  {
    v9 = *v8;
  }

  else
  {
    v9 = v7;
  }

  Wsola__zero(*(v8 + 1), 0, v9);
  result = 0;
  if (v9 >= 1 && a2 >= 1)
  {
    do
    {
      v12 = a2;
      if (v9 < a2)
      {
        v12 = v9;
      }

      if (a2 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = a2;
      }

      v14 = *(*(v6 + 48) + 8);
      v15 = *(v6 + 72);
      v16 = *(v15 + 8);
      do
      {
        v17 = *v14++;
        *v16++ = v17;
        --v12;
      }

      while (v12);
      *(v15 + 4) = v13;
      result = InOut__AudioWriteToClientWithMarkers(a1, a3, v13, 0);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v18 = *(a1 + 1072) == 2 || a2 - v9 <= 0;
      a2 -= v9;
    }

    while (!v18);
  }

  return result;
}

uint64_t Psola_OutputDataPart(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = *(a1 + 1028);
  v9 = *(a1 + 1024);
  if (v8 >= v9)
  {
    ClientBuffer = InOut__GetClientBuffer(a1);
    if ((ClientBuffer & 0x80000000) != 0)
    {
      return ClientBuffer;
    }

    if (InOut__IsEndState(a1))
    {
LABEL_24:
      InOut__IsEndState(a1);
      return ClientBuffer;
    }

    v9 = *(a1 + 1024);
    v8 = *(a1 + 1028);
  }

  else
  {
    ClientBuffer = 0;
  }

  LODWORD(v11) = v9 - v8;
  if (v11 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v11;
  }

  if (v11 >= 1)
  {
    v12 = *(a1 + 1016);
    v13 = (a2 + 2 * a3);
    v14 = v8;
    v15 = v11;
    do
    {
      v16 = *v13++;
      *(v12 + 2 * v14++) = v16;
      --v15;
    }

    while (v15);
  }

  *(a1 + 1028) = v11 + v8;
  *(a1 + 1036) += v11;
  v17 = a4 - v11;
  if (!v17)
  {
LABEL_23:
    if ((ClientBuffer & 0x80000000) != 0)
    {
      return ClientBuffer;
    }

    goto LABEL_24;
  }

  v18 = v11 + a3;
  while (1)
  {
    ClientBuffer = InOut__GetClientBuffer(a1);
    if ((ClientBuffer & 0x80000000) != 0)
    {
      return ClientBuffer;
    }

    if (InOut__IsEndState(a1))
    {
      goto LABEL_24;
    }

    v19 = *(a1 + 1028);
    LODWORD(v20) = *(a1 + 1024) - v19;
    if (v20 >= v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = v20;
    }

    if (v20 >= 1)
    {
      v21 = *(a1 + 1016);
      v22 = (a2 + 2 * v18);
      v23 = *(a1 + 1028);
      v24 = v20;
      do
      {
        v25 = *v22++;
        *(v21 + 2 * v23++) = v25;
        --v24;
      }

      while (v24);
    }

    v18 += v20;
    *(a1 + 1028) = v20 + v19;
    *(a1 + 1036) += v20;
    v17 -= v20;
    if (!v17)
    {
      goto LABEL_23;
    }
  }
}

uint64_t Psola_GetDecodedUnitData_VE(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, uint64_t a7, char *a8, unsigned int *a9, _DWORD *a10, unsigned int *a11)
{
  v11 = a7;
  v17 = *a2;
  if (*a2)
  {
    v32 = 0;
    v33 = 0;
    UnitData = Lookup_GetUnitData(v17, a3, &v32);
    if ((UnitData & 0x80000000) == 0)
    {
      v19 = Convert2Samples(a1, HIDWORD(v32));
      if (a5 < 0)
      {
        a5 = Convert2Samples(a1, v33);
      }

      if (a6 + a4 + a5 > v11)
      {
        *a9 = 0;
        *a10 = 0;
        v20 = 2164269065;
        *a11 = 0;
        return v20;
      }

      if (v19 >= a4)
      {
        v27 = a4;
      }

      else
      {
        v27 = v19;
      }

      *a9 = v27;
      *a10 = a5;
      *a11 = a6;
      return Lookup_GetDecodedData(*a2, v19 - *a9, *a9 + a6 + *a10, a8);
    }

    return UnitData;
  }

  v21 = a2[1];
  if (!v21)
  {
    return 0;
  }

  LODWORD(v32) = a4;
  v30 = 0;
  v31 = a6 + 10;
  v20 = (*(*(a1 + 952) + 48))(v21, a3, &v32, &v31, &v30, a8, a7);
  if ((v20 & 0x80000000) == 0)
  {
    v23 = v32;
    *a9 = v32;
    if (a5 < 0)
    {
      v26 = v31;
      *a10 = v30 - (v23 + v31);
    }

    else
    {
      if (a6 + a4 + a5 >= v11)
      {
        v24 = v11;
      }

      else
      {
        v24 = a6 + a4 + a5;
      }

      v25 = v30;
      if (v30 < v24)
      {
        bzero(&a8[2 * v30], 2 * (v24 + ~v30) + 2);
        v25 = v24;
      }

      *a10 = a5;
      v26 = v25 - (v23 + a5);
    }

    *a11 = v26;
  }

  return v20;
}

uint64_t Psola_IsAdjacent(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, _DWORD *a6)
{
  v15 = 0;
  v16 = 0;
  v14[0] = 0;
  v14[1] = 0;
  *a6 = 0;
  if (**(a1 + 936))
  {
    v6 = a2 == a4;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && a3 >= 1 && a5 >= 1)
  {
    v11 = a5;
    Lookup_GetUnitData(*a2, a3, &v15);
    Lookup_GetUnitData(*a4, v11, v14);
    v13 = HIDWORD(v14[0]) - (HIDWORD(v15) + v16);
    if (v13 < 0)
    {
      v13 = HIDWORD(v15) + v16 - HIDWORD(v14[0]);
    }

    if (v13 <= 3)
    {
      *a6 = 1;
    }
  }

  return 0;
}

uint64_t Psola_Process(uint64_t a1, int a2, int a3, int a4)
{
  ClientBuffer = 2164269066;
  v9 = *(a1 + 1088);
  v59 = 0;
  *v60 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v10 = heap_Alloc(*(*(a1 + 16) + 8), 4812);
  if (!v10)
  {
    return ClientBuffer;
  }

  v11 = v10;
  v12 = heap_Alloc(*(*(a1 + 16) + 8), 48000);
  if (!v12)
  {
    v22 = 0;
    v53 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v14 = 0;
    goto LABEL_47;
  }

  v13 = heap_Calloc(*(*(a1 + 16) + 8), 1, 48);
  v14 = v13;
  if (!v13 || (*(v13 + 8) = 961, v15 = heap_Alloc(*(*(a1 + 16) + 8), 1922), (*v14 = v15) == 0) || (v14[3] = 961, v16 = heap_Alloc(*(*(a1 + 16) + 8), 1922), (v14[2] = v16) == 0) || (v14[5] = 961, v17 = heap_Alloc(*(*(a1 + 16) + 8), 1922), (v14[4] = v17) == 0))
  {
    v22 = 0;
    v53 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_47;
  }

  v18 = heap_Alloc(*(*(a1 + 16) + 8), 60008);
  if (!v18)
  {
    v22 = 0;
    v53 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    goto LABEL_47;
  }

  v43 = a2;
  v19 = heap_Alloc(*(*(a1 + 16) + 8), 60008);
  if (!v19)
  {
    v22 = 0;
    v53 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_47;
  }

  v41 = a3;
  v20 = heap_Alloc(*(*(a1 + 16) + 8), 60008);
  if (!v20)
  {
    v22 = 0;
    v53 = 0;
    v21 = 0;
    goto LABEL_47;
  }

  v44 = a4;
  v21 = heap_Alloc(*(*(a1 + 16) + 8), 60006);
  if (!v21 || (v53 = heap_Alloc(*(*(a1 + 16) + 8), 60006)) == 0)
  {
    v22 = 0;
    v53 = 0;
    goto LABEL_47;
  }

  v51 = v9;
  v22 = heap_Alloc(*(*(a1 + 16) + 8), 60006);
  if (!v22)
  {
    goto LABEL_47;
  }

  bzero(v11, 0x12CCuLL);
  *v18 = 0;
  *v21 = 0;
  v21[2] = 0;
  *v19 = 0;
  *v53 = 0;
  v53[2] = 0;
  UnitModif = Psola_SetUpCrossFading(a1, -1, -1, 100, 100, v21, v53, &v59, &v58 + 1);
  if ((UnitModif & 0x80000000) != 0)
  {
LABEL_74:
    ClientBuffer = UnitModif;
    goto LABEL_47;
  }

  v49 = 0;
  v24 = 0;
  v42 = 0;
  v60[0] = 0;
  LODWORD(v25) = *(v51 + 168);
  v45 = 1;
  v26 = -1;
  v27 = -1;
  do
  {
    v47 = v26;
    v48 = v27;
    v52 = v24;
    if (v24 >= v25)
    {
      v46 = 0;
      v50 = -1;
    }

    else
    {
      v28 = *(v51 + 152) + v49;
      v50 = *v28;
      v46 = *(v28 + 8);
      Psola_checkMarker(a1, v51, v24);
      v24 = v52;
      LOWORD(v25) = *(v51 + 168);
    }

    if (v24 < v25 && (Psola_SilUnitLen(a1, *(v51 + 152) + v49, v44) & 0x80000000) != 0)
    {
      if (!v46)
      {
        ClientBuffer = 2164269062;
        goto LABEL_47;
      }

      UnitModif = Pmk_Lookup_UnitPeriInfo(*(v46 + 16), v50, v20);
      if ((UnitModif & 0x80000000) != 0)
      {
        goto LABEL_74;
      }

      Psola_AssignPeriRanges(v20);
      if (!v20[2])
      {
        v34 = v18;
        v35 = v21;
        v30 = v52;
        v26 = v47;
        v27 = v48;
        goto LABEL_38;
      }

      if (*(a1 + 1148) && (Psola_IsAdjacent(a1, v42, v48, v46, v50, &v55), v55))
      {
        Psola_SyncOverlappingPeriods(v19, v20);
        v33 = 1;
      }

      else
      {
        v33 = 100;
      }

      v40 = v33;
      UnitModif = Psola_CalculateModificationFactors(a1, *(v51 + 152) + v49, v43, v41, v44, &v57, &v56 + 1, &v56);
      if ((UnitModif & 0x80000000) != 0)
      {
        goto LABEL_74;
      }

      UnitModif = Psola_GetUnitModif (a1, v50, v20, v57, SHIDWORD(v56), v56, v22);
      v29 = v40;
      if ((UnitModif & 0x80000000) != 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      *v20 = 0;
      *v22 = 0;
      v29 = 100;
      v22[2] = 0;
    }

    UnitModif = Psola_SetUpCrossFading(a1, v48, v50, v29, v29, v53, v22, &v58, &v57 + 1);
    if ((UnitModif & 0x80000000) != 0)
    {
      goto LABEL_74;
    }

    v30 = v52;
    if (v52 && (v47 & 0x80000000) == 0)
    {
      v31 = Psola_SilUnitLen(a1, *(v51 + 152) + 56 * v47, v44);
      if (*v19)
      {
        v32 = v31;
      }

      else
      {
        v32 = v31 & ~(v31 >> 31);
      }

      if (v32 < 0)
      {
        UnitModif = Psola_LoadUnitData(a1, v42, v48, v19, v12, &v60[1], &v59 + 1);
        if ((UnitModif & 0x80000000) != 0)
        {
          goto LABEL_74;
        }

        UnitModif = Psola_DoPeriSynth(a1, v48, v47, v11, v14, &v54, v12, SHIDWORD(v59), v19, v53, v59, SHIDWORD(v58), v58, SHIDWORD(v57), v60);
        v30 = v52;
        if ((UnitModif & 0x80000000) != 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        Psola_SynthSilence(a1, v48, v47, v11, v32, v60);
        v30 = v52;
      }
    }

    v45 = 3 - v45;
    v26 = v30;
    v34 = v19;
    v19 = v20;
    v35 = v53;
    v53 = v22;
    v27 = v50;
    v42 = v46;
    HIDWORD(v58) = HIDWORD(v57);
    LODWORD(v59) = v58;
    v22 = v21;
    v20 = v18;
    v21 = v35;
    v18 = v34;
LABEL_38:
    v24 = v30 + 1;
    v25 = *(v51 + 168);
    v49 += 56;
  }

  while (v30 < v25);
  v21 = v35;
  v18 = v34;
  if (*(a1 + 1144))
  {
    v39 = *(a1 + 1096) + *(a1 + 1048);
    if (v39 >= 1)
    {
      Psola_SynthSilence(a1, -1, (v25 - 1), v11, v39, v60);
    }
  }

  Psola_FlushOlaBufPart(a1, v11, v11[2] + *v11);
  *(a1 + 1076) = 1;
  *(a1 + 1024) = *(a1 + 1028);
  ++*(v51 + 224);
  ClientBuffer = InOut__GetClientBuffer(a1);
  if ((ClientBuffer & 0x80000000) == 0)
  {
    InOut__IsEndState(a1);
  }

LABEL_47:
  heap_Free(*(*(a1 + 16) + 8), v11);
  if (v12)
  {
    heap_Free(*(*(a1 + 16) + 8), v12);
  }

  if (v14)
  {
    if (*v14)
    {
      heap_Free(*(*(a1 + 16) + 8), *v14);
    }

    v36 = v14[2];
    if (v36)
    {
      heap_Free(*(*(a1 + 16) + 8), v36);
    }

    v37 = v14[4];
    if (v37)
    {
      heap_Free(*(*(a1 + 16) + 8), v37);
    }

    heap_Free(*(*(a1 + 16) + 8), v14);
  }

  if (v18)
  {
    heap_Free(*(*(a1 + 16) + 8), v18);
  }

  if (v19)
  {
    heap_Free(*(*(a1 + 16) + 8), v19);
  }

  if (v20)
  {
    heap_Free(*(*(a1 + 16) + 8), v20);
  }

  if (v21)
  {
    heap_Free(*(*(a1 + 16) + 8), v21);
  }

  if (v53)
  {
    heap_Free(*(*(a1 + 16) + 8), v53);
  }

  if (v22)
  {
    heap_Free(*(*(a1 + 16) + 8), v22);
  }

  return ClientBuffer;
}

uint64_t Psola_SetUpCrossFading(uint64_t a1, int a2, int a3, int a4, int a5, unsigned __int16 *a6, unsigned __int16 *a7, _DWORD *a8, int *a9)
{
  v9 = *(a1 + 1040);
  v10 = v9 * a4;
  v11 = 274877907 * v9 * a4;
  v12 = v11 >> 63;
  v13 = v11 >> 38;
  v14 = v9 * a5 / 1000;
  v15 = a6[1] + *a6;
  *a9 = 0;
  v16 = a6[2];
  if (a6[2])
  {
    v17 = 0;
    v18 = 0;
    v19 = a7 + 20003;
    while (v18 < a7[1] >> 1 && v17 < v14)
    {
      v21 = v19[v18 + *a7];
      a6[v15 + 20003 + v18] = v19[v18 + *a7];
      v17 += v21;
      *a9 = v17;
      if (v16 == ++v18)
      {
        goto LABEL_9;
      }
    }

    LOWORD(v16) = v18;
  }

LABEL_9:
  v22 = v13 + v12;
  a6[2] = v16;
  LODWORD(v16) = *a7;
  if (*a7)
  {
    v23 = 0;
    if (a6[1] && v10 >= 1000)
    {
      v23 = 0;
      v24 = &a6[v15 + 20002];
      v25 = -1;
      v26 = 1;
      do
      {
        v27 = v26;
        v28 = *v24--;
        a7[v25 + 20003 + v16] = v28;
        v23 += v28;
        v16 = *a7;
        if (v26 >= v16)
        {
          break;
        }

        ++v26;
        --v25;
      }

      while (v27 < (a6[1] + 1) >> 1 && v23 < v22);
    }

    else
    {
      LODWORD(v27) = 0;
    }

    v30 = v16;
  }

  else
  {
    v23 = 0;
    LODWORD(v27) = 0;
    v30 = 0;
  }

  v31 = v30 - v27;
  if ((v30 - v27) >= 1)
  {
    v32 = a7[1];
    v33 = a7[2];
    if (v31 < v30 + v32 + v33)
    {
      v34 = -v27;
      v35 = -v27 + v30;
      v36 = v35 - v31;
      v37 = 2 * v36 + 6;
      v38 = 2 * v36 + 20006;
      v39 = 2 * v36 + 40006;
      v40 = 2 * v35;
      v41 = 2 * v35 + 40006;
      v42 = 2 * v35 + 20006;
      v43 = v40 + 6;
      v44 = v32 + v33 - v34;
      do
      {
        *(a7 + v37) = *(a7 + v43);
        *(a7 + v38) = *(a7 + v42);
        *(a7 + v39) = *(a7 + v41);
        v37 += 2;
        v38 += 2;
        v39 += 2;
        v41 += 2;
        v42 += 2;
        v43 += 2;
        --v44;
      }

      while (v44);
      LOWORD(v16) = *a7;
    }

    *a7 = v16 - v31;
  }

  if (v23 < v22)
  {
    v22 = v23;
  }

  *a8 = v22;
  if (*a9 < v14)
  {
    v14 = *a9;
  }

  *a9 = v14;
  if ((*a8 + v14 < 0) ^ __OFADD__(*a8, v14) | (*a8 + v14 == 0) && a6[1] && a7[1])
  {
    return 2164269071;
  }

  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "crossfading lengths between unit %d and %d: %d+%d\n", a2, a3, *a8, v14);
  return 0;
}

uint64_t Psola_checkMarker(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 160) + 16 * *(*(a2 + 152) + 56 * a3 + 44);
  if (*(v3 + 10))
  {
    v4 = result;
    if (!a3 || (a3 & 1) != 0)
    {
      v5 = *(v3 + 8);
      v6 = v5 + *(v3 + 10);
      v7 = 32 * v5;
      do
      {
        v8 = *(v4 + 648);
        v9 = *(v8 + v7);
        if (v9 <= 16)
        {
          if (v9 == 13)
          {
            result = synth_ResetParams(v4);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            goto LABEL_18;
          }

          if (v9 == 16)
          {
            v14 = *(v8 + v7 + 24);
            *(v4 + 1054) = v14;
            v11 = *(*(v4 + 16) + 40);
            v12 = v14;
            v13 = "pitch";
            goto LABEL_15;
          }
        }

        else
        {
          switch(v9)
          {
            case 17:
              *(v4 + 1064) = *(v8 + v7 + 24);
              break;
            case 18:
              v15 = *(v8 + v7 + 24);
              *(v4 + 1052) = v15;
              v11 = *(*(v4 + 16) + 40);
              v12 = v15;
              v13 = "rate";
LABEL_15:
              result = paramc_ParamSetUInt(v11, v13, v12);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              break;
            case 25:
              v10 = *(v8 + v7 + 24);
              *(v4 + 1044) = v10;
              v11 = *(*(v4 + 16) + 40);
              v12 = v10;
              v13 = "waitfactor";
              goto LABEL_15;
          }
        }

LABEL_18:
        ++v5;
        v7 += 32;
      }

      while (v5 < v6);
    }
  }

  return result;
}

uint64_t Psola_SilUnitLen(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    if (a3 < 0)
    {
      v5 = 274877907 * (500 - *(a1 + 1040) * a3);
      v3 = (v5 >> 38) + (v5 >> 63);
    }

    else
    {
      v3 = (v3 * a3 + 500) / 0x3E8u;
    }
  }

  return Convert2Samples(a1, 10 * v3);
}

unsigned __int16 *Psola_AssignPeriRanges(unsigned __int16 *result)
{
  v1 = result[3];
  v2 = (result[2] + result[1] + v1);
  if (result[2] + result[1] + v1)
  {
    v3 = 0;
    v4 = result + 10004;
    result[1] = 0;
    v5 = result + 4;
    while (*v5 < 0)
    {
      result[1] = ++v3;
      ++v5;
      if (v2 == v3)
      {
        result[2] = 0;
LABEL_17:
        result[3] = v2 - v3;
        return result;
      }
    }

    result[2] = 0;
    if (v3 >= v2)
    {
      goto LABEL_17;
    }

    v6 = 0;
    v7 = v2 - v3;
    v8 = *result;
    do
    {
      v9 = *v5++;
      if (v9 >= v8)
      {
        break;
      }

      result[2] = ++v6;
      --v7;
    }

    while (v7);
    result[3] = v2 - (v3 + v6);
    if (!v3 && v6)
    {
      result[1] = 1;
      if (v6 == 1)
      {
        v10 = (v2 - 1);
        if (v2 != 1)
        {
          v11 = &result[v10];
          v12 = v10 - 1;
          do
          {
            result[v2 + 4] = v11[4];
            result[v2 + 10004] = v11[10004];
            result[v2 + 20004] = v11[20004];
            LODWORD(v2) = v2 - 1;
            --v11;
          }

          while (v12--);
        }

        v14 = *v4;
        v15 = v14 + (v14 >> 15);
        result[10005] = v15 >> 1;
        v16 = v14 - (v15 >> 1);
        *v4 = v16;
        result[5] = result[4] + v16;
        *(result + 10002) = 0;
      }

      else
      {
        result[2] = v6 - 1;
      }
    }
  }

  return result;
}

unsigned __int16 *Psola_SyncOverlappingPeriods(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (result[1] && a2[1])
  {
    v2 = result[1] + result[2] - 1;
    v3 = a2 + 3;
    v4 = a2[2] + a2[1] + a2[3];
    v5 = a2 + 4;
    v6 = v2;
    v7 = result + 10004;
    v8 = result[v2 + 10004] + result[v2 + 4] - *result;
    v9 = v4 - 1;
    v10 = a2[(v4 - 1) + 4];
    v11 = a2 + 10004;
    v12 = a2[(v4 - 1) + 10004];
    if (v4 <= 1)
    {
      v16 = 0;
      *v5 = v8;
      v19 = a2 + 4;
    }

    else
    {
      v13 = 0;
      if (a2[5] - v8 >= 0)
      {
        v14 = a2[5] - v8;
      }

      else
      {
        v14 = v8 - a2[5];
      }

      do
      {
        if (v5[++v13 + 1] - v8 >= 0)
        {
          v15 = v5[v13 + 1] - v8;
        }

        else
        {
          v15 = v8 - v5[v13 + 1];
        }

        v16 = v13;
        v17 = v13 + 1 >= v4 || v15 >= v14;
        v14 = v15;
      }

      while (!v17);
      v18 = v13;
      v19 = &v5[v13];
      *v19 = v8;
      if (v18)
      {
        do
        {
          v20 = v7[v6];
          a2[v18 + 10003] = v20;
          v8 -= v20;
          v3[v18] = v8;
          if (v18 < 2)
          {
            break;
          }

          --v18;
        }

        while (v6-- > 0);
      }

      else
      {
        v16 = 0;
      }
    }

    v22 = v16 + 1;
    if (v16 + 1 >= v4)
    {
      v24 = 0;
      v9 = v16;
    }

    else
    {
      v23 = *v19 + 32;
      if (v23 <= v5[v22])
      {
        v24 = 0;
        v9 = v16;
      }

      else
      {
        v24 = 0;
        v25 = v16;
        while (1)
        {
          ++v24;
          if (v25 + 2 >= v4)
          {
            break;
          }

          v26 = a2[v25++ + 6];
          if (v23 <= v26)
          {
            v9 = v25;
            break;
          }
        }
      }

      v22 = v9 + 1;
    }

    if (v22 < v4)
    {
      v27 = v9;
      v28 = v16;
      v29 = v5[v16];
      v30 = v27 + 5;
      do
      {
        v31 = &a2[v28];
        v32 = a2[v30];
        v11[v28++] = v32 - v29;
        v31[5] = v32;
        v33 = v30 - 3;
        ++v30;
        v29 = v32;
      }

      while (v33 < v4);
      v16 = v28;
    }

    v34 = v12 + v10;
    if (v16 >= 1)
    {
      v35 = v24 + v16;
      while (v34 - 32 < v5[v16])
      {
        ++v24;
        v36 = __OFSUB__(v16--, 1);
        if ((v16 < 0) ^ v36 | (v16 == 0))
        {
          v16 = 0;
          goto LABEL_43;
        }
      }
    }

    v35 = v24;
LABEL_43:
    v11[v16] = v34 - v5[v16];
    if (v35)
    {
      v37 = *v3;
      while (v37)
      {
        --v35;
        *v3 = --v37;
        if (!v35)
        {
          return Psola_AssignPeriRanges(a2);
        }
      }

      v38 = a2[2];
      while (v38)
      {
        --v35;
        a2[2] = --v38;
        if (!v35)
        {
          return Psola_AssignPeriRanges(a2);
        }
      }

      v39 = a2[1];
      do
      {
        if (!v39)
        {
          break;
        }

        --v35;
        a2[1] = --v39;
      }

      while (v35);
    }

    return Psola_AssignPeriRanges(a2);
  }

  return result;
}

uint64_t Psola_CalculateModificationFactors(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int *a6, int *a7, _DWORD *a8)
{
  if (a3 < 1)
  {
    if (!a3)
    {
      a3 = *(a2 + 16);
    }
  }

  else
  {
    a3 = *(a2 + 16) * a3 / 1000;
  }

  *a6 = a3;
  if (a4 < 1)
  {
    if (!a4)
    {
      a4 = *(a2 + 20);
    }
  }

  else
  {
    a4 = *(a2 + 20) * a4 / 1000;
  }

  *a7 = a4;
  *a8 = a5;
  v8 = *(a1 + 1052);
  if (v8 == 100)
  {
    v9 = 1000;
  }

  else
  {
    if (v8 - 50 > 0x15E)
    {
      return 2164269071;
    }

    v9 = ((v8 >> 1) + 100000) / v8;
  }

  v10 = 10 * *(a1 + 1054);
  if (v10 && v10 != 1000)
  {
    v11 = 274877907 * (*a6 * v10 + 500);
    *a6 = (v11 >> 38) + (v11 >> 63);
    v12 = 274877907 * (*a7 * v10 + 500);
    *a7 = (v12 >> 38) + (v12 >> 63);
  }

  result = 0;
  if (v9 != 1000)
  {
    v14 = 274877907 * (*a8 * v9 + 500);
    *a8 = (v14 >> 38) + (v14 >> 63);
  }

  return result;
}

uint64_t Psola_GetUnitModif (uint64_t a1, int a2, unsigned __int16 *a3, int a4, int a5, int a6, unsigned __int16 *a7)
{
  v10 = a3[1];
  v11 = a3[2] + v10 - 1;
  if (v10 <= v11)
  {
    v12 = 0;
    v13 = a3[1];
    do
    {
      v12 += a3[v13++ + 10004];
    }

    while (v13 <= v11);
  }

  else
  {
    v12 = 0;
  }

  v14 = a6;
  if (a6 < 0)
  {
    v15 = (1000 * v12 + *(a1 + 1040) / 2) / *(a1 + 1040);
    v14 = (-1000 * a6 + v15 / 2) / v15;
  }

  v16 = v12;
  if (v14)
  {
    v16 = (v14 * v12 + 500) / 1000;
  }

  result = 2164269065;
  if (a4 >= 1 && a5 < 1 || a4 <= 0 && a5 > 0)
  {
    return 2164269074;
  }

  v49 = a3[2] + v10;
  *a7 = 0;
  if (v10)
  {
    for (i = 0; i != v10; *a7 = i)
    {
      a7[i + 3] = i;
      a7[i + 10003] = 0;
      a7[i + 20003] = a3[i + 10004];
      ++i;
    }

    v19 = v10;
  }

  else
  {
    v19 = 0;
  }

  a7[1] = 0;
  if (v10 <= v11)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v51 = a3 + 10004;
    v52 = a5 - a4;
    v33 = a3 + 20004;
    while (1)
    {
      v34 = v51[v10];
      if (v14)
      {
        v32 += (v14 * v34 + 500) / 1000;
      }

      else
      {
        v32 = v31 + v34;
      }

      v35 = v19 <= 0x2710 ? 10000 : v19;
      v36 = v10 == v11 && v31 == 0;
      v37 = v36;
      if (v31 + (v34 >> 1) <= v32 || v37)
      {
        break;
      }

LABEL_84:
      v30 += v34;
      LOWORD(v10) = v10 + 1;
      if (v10 > v11)
      {
        goto LABEL_21;
      }
    }

    v39 = 0;
    v40 = &a7[v19];
    v41 = v35 - v19;
    while (1)
    {
      v42 = a4;
      if (v14)
      {
        if (v16)
        {
          v42 = (v16 / 2 + v31 * v52) / v16 + a4;
        }
      }

      else
      {
        v42 = (v12 / 2 + v30 * v52) / v12 + a4;
      }

      v43 = v34;
      if (v33[v10] != 1)
      {
        goto LABEL_63;
      }

      if (v42 < 1)
      {
        v43 = v34;
        if ((v42 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        v44 = *(a1 + 1040);
        v42 = -v42;
      }

      else
      {
        v44 = 1000 * v51[v10];
      }

      v43 = (v44 + (v42 >> 1)) / v42;
LABEL_63:
      if (!v41)
      {
        return result;
      }

      if (v43 <= 0x10)
      {
        v45 = 16;
      }

      else
      {
        v45 = v43;
      }

      if (v45 >= 0x3C1)
      {
        v45 = 961;
      }

      v40[3] = v10;
      v40[20003] = v45;
      if (v33[v10])
      {
        v46 = 0;
      }

      else
      {
        v46 = v39;
      }

      v39 = 1 - v39;
      v31 += v45;
      if (!v14)
      {
        v32 = v31;
      }

      v40[10003] = v46;
      a7[1] = ++v29;
      v48 = v10 == v11 && v31 == 0;
      ++v19;
      ++v40;
      --v41;
      if (v31 + (v34 >> 1) > v32 && !v48)
      {
        goto LABEL_84;
      }
    }
  }

LABEL_21:
  v20 = a3[2] + a3[1] + a3[3];
  a7[2] = 0;
  if (v49 >= v20)
  {
LABEL_28:
    log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "modified unit %d: f0Beg=%d, f0End=%d, dur=%d\n", a2, a4, a5, a6);
    if (a7[1] + *a7 + a7[2])
    {
      v26 = 0;
      v27 = (a7[1] + *a7 + a7[2]);
      do
      {
        if (v26 == *a7)
        {
          log_OutText(*(*(a1 + 16) + 32), "PSOLA", 100, 0, "  --- start of nominal part\n");
        }

        v28 = a7[v26 + 3];
        log_OutText(*(*(a1 + 16) + 32), "PSOLA", 100, 0, "  peri num: %d, type: %d, orig len: %d, new len: %d, rev: %d\n", a7[v26 + 3], a3[v28 + 20004], a3[v28 + 10004], a7[v26 + 20003], a7[v26 + 10003]);
        if (v26 == *a7 + a7[1] - 1)
        {
          log_OutText(*(*(a1 + 16) + 32), "PSOLA", 100, 0, "  --- end of nominal part\n");
        }

        ++v26;
      }

      while (v27 != v26);
    }

    return 0;
  }

  else
  {
    v21 = 0;
    v22 = v49;
    if (v19 <= 0x2710)
    {
      v23 = 10000;
    }

    else
    {
      v23 = v19;
    }

    v24 = v23 - v19;
    v25 = &a7[v19];
    while (v24)
    {
      v25[3] = v22;
      v25[10003] = 0;
      v25[20003] = a3[v22 + 10004];
      a7[2] = ++v21;
      ++v22;
      --v24;
      ++v25;
      if (v22 >= v20)
      {
        goto LABEL_28;
      }
    }
  }

  return result;
}

void Psola_SynthSilence(uint64_t a1, int a2, uint64_t a3, int *a4, int a5, int *a6)
{
  v9 = a3;
  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "PMK: %d 0 %d\n", a2, a5);
  v12 = *(a1 + 1052);
  if (v12 == 100)
  {
    v13 = 1000;
  }

  else if (v12 - 50 > 0x15E)
  {
    v13 = 0;
  }

  else
  {
    v13 = ((v12 >> 1) + 100000) / v12;
  }

  v14 = (v13 * a5 + 500) / 1000;
  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "synthesizing silence for unit %d, len=%d\n", a2, v14);
  Psola_FlushOlaBufPart(a1, a4, *a6);
  Psola_DepositMarkers(a1, v9);
  v15 = *a6 + v14;
  *a6 = v15;
  if (*a4 <= v15)
  {
    Psola_AddToOlaBufAux(a1, a4, v16, 0, 0, v15);
  }
}

uint64_t Psola_LoadUnitData(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4, char *a5, int *a6, _DWORD *a7)
{
  v23 = 0;
  v21 = 0;
  v22 = 0;
  *a6 = 0;
  v10 = a4[1] + a4[2] + a4[3] - 1;
  v11 = &a4[v10];
  v12 = *a4;
  v14 = a4 + 4;
  v13 = a4[4];
  *a7 = 0;
  if (v13 <= 0)
  {
    v15 = -v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = v11[10004] + v14[v10];
  result = Psola_GetDecodedUnitData_VE(a1, a2, a3, v15, v12, (v16 - v12) & ~((v16 - v12) >> 31), 24000, a5, &v23, &v21, &v22);
  if ((result & 0x80000000) == 0)
  {
    v18 = v23;
    *a7 = v23;
    v19 = v21 + v18 + v22;
    *a6 = v19;
    if (*a7 + v16 > v19 || *a7 + *v14 < 0)
    {
      return 2164269065;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t Psola_DoPeriSynth(uint64_t a1, int a2, int a3, int *a4, void *a5, unsigned int *a6, uint64_t a7, int a8, uint64_t a9, unsigned __int16 *a10, int a11, int a12, int a13, int a14, unsigned int *a15)
{
  v17 = a1;
  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "synthesizing unit %d\n", a2);
  log_OutText(*(*(v17 + 16) + 32), "PSOLA", 99, 0, "PMK: %d", a2);
  if (a10[1])
  {
    v18 = *a10;
    do
    {
      log_OutText(*(*(v17 + 16) + 32), "PSOLA", 99, 0, " %d %d", *(a9 + 40008 + 2 * a10[v18 + 3]), a10[v18 + 20003]);
      ++v18;
    }

    while (a10[1] + *a10 > v18);
  }

  v19 = a15;
  log_OutText(*(*(v17 + 16) + 32), "PSOLA", 99, 0, "\n");
  v20 = *a10;
  v21 = a10[1];
  v22 = v21 + v20;
  v23 = a10 + 20003;
  v24 = 0;
  if (*a10)
  {
    v25 = *a10;
    v26 = a10 + 20003;
    do
    {
      v27 = *v26++;
      v24 += v27;
      --v25;
    }

    while (v25);
  }

  v28 = 0;
  if (a10[1])
  {
    v29 = &v23[*a10];
    do
    {
      v30 = *v29++;
      v28 += v30;
      LODWORD(v21) = v21 - 1;
    }

    while (v21);
  }

  v31 = v22 + a10[2];
  v32 = a13;
  v33 = *a15;
  v77 = a12 + a11;
  if ((v77 < 0) ^ __OFADD__(a12, a11) | (v77 == 0))
  {
    v77 = (v23[v20] + (v23[v20] >> 15)) << 16 >> 17;
    v73 = *a15;
  }

  else
  {
    v73 = v33 - a11;
  }

  v76 = a14 + a13;
  if ((a14 + a13 < 0) ^ __OFADD__(a14, a13) | (a14 + a13 == 0))
  {
    v34 = v23[v22 - 1];
    v32 = (v34 + (v34 >> 15)) >> 1;
    v76 = v32;
  }

  v35 = v33 + v28;
  if (v31)
  {
    v36 = 0;
    v37 = 0;
    v68 = v35 - v32;
    v38 = v33 - v24;
    v72 = a10 + 3;
    v70 = a10 + 20003;
    v71 = a9 + 20008;
    v39 = a9 + 8;
    v65 = (v31 - 1);
    v66 = v31;
    v67 = (v31 + 1);
    v40 = a8;
    v41 = a5;
    v81 = a9 + 8;
    v69 = v17;
    while (1)
    {
      v82 = v37;
      v83 = v38;
      if (v36)
      {
        if (v36 == v66)
        {
          v42 = v72[v65];
          LODWORD(v43) = *(v71 + 2 * v42);
          result = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v39 + 2 * v42) + v40, v43, v41);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LODWORD(v45) = 0;
          v46 = 0;
          v47 = v65;
          v48 = a10 + 20003;
        }

        else
        {
          v50 = v72[v36];
          v51 = v50 - 1;
          if (a10[v36 + 10003])
          {
            v43 = *(v71 + 2 * v50);
            v45 = *(v71 + 2 * v51);
            v52 = *(v81 + 2 * v50);
            result = Psola_ReallocIfNeeded(*(*(v17 + 16) + 8), v41, v43);
            if (v43 >= 1 && (result & 0x80000000) == 0)
            {
              v53 = (a7 + 2 * (v52 + a8));
              v54 = (*v41 + 2 * v43 - 2);
              v55 = v43;
              do
              {
                v56 = *v53++;
                *v54-- = v56;
                --v55;
              }

              while (v55);
            }

            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v57 = *(v81 + 2 * v51);
            result = Psola_ReallocIfNeeded(*(*(v17 + 16) + 8), v41 + 2, v45);
            if (v45 >= 1 && (result & 0x80000000) == 0)
            {
              v58 = (a7 + 2 * (v57 + a8));
              v59 = (v41[2] + 2 * v45 - 2);
              v60 = v45;
              do
              {
                v61 = *v58++;
                *v59-- = v61;
                --v60;
              }

              while (v60);
            }
          }

          else
          {
            LODWORD(v43) = *(v71 + 2 * v51);
            LODWORD(v45) = *(v71 + 2 * v50);
            v62 = v40;
            result = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v81 + 2 * v51) + v40, v43, v41);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v81 + 2 * v50) + v62, v45, v41 + 2);
          }

          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v47 = v36 - 1;
          v48 = a10 + 20003;
          v46 = v70[v36];
        }

        v63 = v48[v47];
        if (v43 <= v63)
        {
          v79 = 0;
        }

        else
        {
          memmove(*v41, (*v41 + 2 * (v43 - v48[v47])), 2 * v48[v47]);
          v79 = 0;
          LODWORD(v43) = v63;
        }
      }

      else
      {
        v49 = *v72;
        LODWORD(v45) = *(v71 + 2 * v49);
        v79 = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v39 + 2 * v49) + v40, v45, v41 + 2);
        if ((v79 & 0x80000000) != 0)
        {
          return v79;
        }

        LODWORD(v43) = 0;
        v46 = *v70;
      }

      if (v45 >= v46)
      {
        LODWORD(v45) = v46;
      }

      Psola_ApplyHanning(v41[4], a6, *v41, v43, 1);
      Psola_ApplyHanning(v41[4], a6, v41[2], v45, 0);
      Psola_ApplyFadingPart(*v41, v43, v83 - v43, v73, v77, 1);
      Psola_ApplyFadingPart(v41[2], v45, v83, v73, v77, 1);
      Psola_ApplyFadingPart(*v41, v43, v83 - v43, v68, v76, 0);
      Psola_ApplyFadingPart(v41[2], v45, v83, v68, v76, 0);
      v17 = v69;
      Psola_AddToOlaBuf(v69, a4, *v41, v43, v83 - v43);
      Psola_AddToOlaBuf(v69, a4, v41[2], v45, v83);
      v38 = v46 + v83;
      if (v82)
      {
        v41 = a5;
        v39 = a9 + 8;
        v37 = 1;
      }

      else
      {
        if (v38 >= (*a15 + 961) || v36 == v66)
        {
          Psola_FlushOlaBufPart(v69, a4, *a15);
          Psola_DepositMarkers(v69, a3);
          v79 = 0;
          v37 = 1;
        }

        else
        {
          v37 = 0;
        }

        v41 = a5;
        v39 = a9 + 8;
      }

      ++v36;
      v40 = a8;
      if (v36 == v67)
      {
        v19 = a15;
        v35 = *a15 + v28;
        result = v79;
        goto LABEL_54;
      }
    }
  }

  result = 0;
LABEL_54:
  *v19 = v35;
  return result;
}

void Psola_FlushOlaBufPart(uint64_t a1, _DWORD *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3 - *a2;
  if (v3 >= 1)
  {
    v6 = a2[1];
    v7 = a2[2];
    if (v3 >= v7)
    {
      v8 = a2[2];
    }

    else
    {
      v8 = v3;
    }

    if (v8 >= 2400 - v6)
    {
      v9 = 2400 - v6;
    }

    else
    {
      v9 = v8;
    }

    if (v3 >= v7)
    {
      v10 = v7 - v9;
    }

    else
    {
      v10 = v3 - v9;
    }

    if (v9 >= 1)
    {
      Psola_OutputDataPart(a1, (a2 + 3), v6, v9);
      bzero(a2 + 2 * a2[1] + 12, (2 * v9));
    }

    if (v10 >= 1)
    {
      Psola_OutputDataPart(a1, (a2 + 3), 0, v10);
      bzero(a2 + 3, (2 * v10));
    }

    v11 = v3 - v9 - v10;
    if (v11 >= 1)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      do
      {
        if (v11 >= 0x64)
        {
          v12 = 100;
        }

        else
        {
          v12 = v11;
        }

        Psola_OutputDataPart(a1, v15, 0, v12);
        v13 = __OFSUB__(v11, v12);
        v11 -= v12;
      }

      while (!((v11 < 0) ^ v13 | (v11 == 0)));
    }

    v14 = a2[1] + v3;
    *a2 += v3;
    a2[1] = v14 % 2400;
    a2[2] -= v10 + v9;
  }
}

uint64_t Psola_DepositMarkers(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(*(result + 1088) + 160) + 16 * *(*(*(result + 1088) + 152) + 56 * a2 + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 10);
  v6 = v5 + v4;
  v7 = *(result + 656);
  if (v5 + v4 > v7)
  {
    result = log_OutPublic(*(*(result + 16) + 32), "PSOLA", 45000, "%s%u%s%u%s%u", "index", v4, "count", v5, "total", v7);
    v6 = *(v2 + 656);
  }

  v8 = *(v2 + 1080);
  if (v6 > v8)
  {
    v9 = *(v2 + 1028);
    v10 = (*(v2 + 648) + 32 * v8 + 16);
    v11 = v6 - v8;
    do
    {
      *(v10 - 1) = v9;
      *v10 = 0;
      v10 += 8;
      --v11;
    }

    while (v11);
    *(v2 + 1080) = v6;
    *(v3 + 10) = 0;
  }

  return result;
}

void Psola_AddToOlaBuf(uint64_t result, int *a2, uint64_t a3, int a4, int a5)
{
  if (*a2 <= a5)
  {
    v16 = v5;
    v17 = v6;
    v7 = a5;
    v8 = a4;
    if (a4 < 1)
    {
      Psola_AddToOlaBufAux(result, a2, v15, 0, 0, a5);
    }

    else
    {
      v12 = 0;
      do
      {
        if (v8 >= 0x960)
        {
          v13 = 2400;
        }

        else
        {
          v13 = v8;
        }

        Psola_AddToOlaBufAux(result, a2, a3, v12, v13, v7);
        v12 += v13;
        v7 += v13;
        v14 = __OFSUB__(v8, v13);
        v8 -= v13;
      }

      while (!((v8 < 0) ^ v14 | (v8 == 0)));
    }
  }
}

void Psola_AddToOlaBufAux(uint64_t a1, int *a2, uint64_t a3, int a4, int a5, int a6)
{
  v11 = a6 + a5;
  v12 = a6 + a5 - 2400;
  v13 = *a2;
  if (v12 > *a2)
  {
    Psola_FlushOlaBufPart(a1, a2, v12);
    v13 = *a2;
  }

  v14 = (a6 - v13 + a2[1]) % 2400;
  if (2400 - v14 >= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = 2400 - v14;
  }

  v16 = a5 - v15;
  if (v15 >= 1)
  {
    v17 = a2 + v14 + 6;
    v18 = (a3 + 2 * a4);
    v19 = v15;
    do
    {
      v20 = *v18++;
      *v17++ += v20;
      --v19;
    }

    while (v19);
  }

  if (v16 >= 1)
  {
    v21 = v15 + a4;
    v22 = a2 + 3;
    v23 = (a3 + 2 * v21);
    do
    {
      v24 = *v23++;
      *v22 += v24;
      v22 = (v22 + 2);
      --v16;
    }

    while (v16);
  }

  v25 = v11 - v13;
  if (a2[2] > v25)
  {
    v25 = a2[2];
  }

  a2[2] = v25;
}

uint64_t Psola_CopyDataPart(uint64_t *a1, uint64_t a2, int a3, unsigned int a4, void **a5)
{
  v8 = a4;
  v9 = Psola_ReallocIfNeeded(a1, a5, a4);
  if ((v9 & 0x80000000) == 0)
  {
    memcpy(*a5, (a2 + 2 * a3), 2 * v8);
  }

  return v9;
}

__int16 *Psola_ApplyHanning(__int16 *result, unsigned int *a2, __int16 *a3, unsigned int a4, int a5)
{
  if (*a2 != a4)
  {
    if (a4 >= 1)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = HanningTab[v5 / a4];
        *v6++ = v7 + ((HanningTab[v5 / a4 + 1] - v7) * (v5 % a4)) / a4;
        v5 += 200;
      }

      while (200 * a4 != v5);
    }

    *a2 = a4;
  }

  if (a5)
  {
    if (a4 >= 1)
    {
      v8 = a4;
      do
      {
        v9 = *result++;
        *a3 = v9 * *a3 / 0x8000;
        ++a3;
        --v8;
      }

      while (v8);
    }
  }

  else if (a4 >= 1)
  {
    v10 = a4;
    do
    {
      v11 = *result++;
      *a3 = (0x7FFF - v11) * *a3 / 0x8000;
      ++a3;
      --v10;
    }

    while (v10);
  }

  return result;
}

void Psola_ApplyFadingPart(__int16 *a1, int a2, int a3, int a4, int a5, int a6)
{
  if (a3 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = a3 + a2;
  v8 = a5 + a4;
  if (a3 + a2 >= a5 + a4)
  {
    v9 = a5 + a4;
  }

  else
  {
    v9 = a3 + a2;
  }

  v10 = v9 - v6;
  if (v10 >= 1)
  {
    v11 = v10 + v6 - a3;
    v12 = v6 - a3;
    if (a6)
    {
      v13 = v6 - a4;
      do
      {
        a1[v12] = v13 * a1[v12] / a5;
        ++v13;
        ++v12;
      }

      while (v12 < v11);
    }

    else
    {
      v14 = a5 + a4 - v6;
      do
      {
        a1[v12] = v14 * a1[v12] / a5;
        ++v12;
        --v14;
      }

      while (v12 < v11);
    }
  }

  if (a4 > a3 && a6)
  {
    if (a4 - a3 >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = a4 - a3;
    }

    if (v15 <= 0)
    {
      return;
    }

LABEL_27:
    bzero(a1, (2 * v15));
    return;
  }

  if (!a6)
  {
    v16 = __OFSUB__(v7, v8);
    v15 = v7 - v8;
    if (!((v15 < 0) ^ v16 | (v15 == 0)))
    {
      if (v15 >= a2)
      {
        v15 = a2;
      }

      if (v15 >= 1)
      {
        a1 += a2 - v15;
        goto LABEL_27;
      }
    }
  }
}

uint64_t Psola_ReallocIfNeeded(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (a2[1] >= a3)
  {
    return 0;
  }

  v4 = (a3 & 0xFFFFFFFFFFFFFE00) + 512;
  v5 = heap_Realloc(a1, *a2, 2 * v4);
  if (!v5)
  {
    return 2164269066;
  }

  v6 = v5;
  result = 0;
  *a2 = v6;
  a2[1] = v4;
  return result;
}

uint64_t Psola_GetSynthMode(uint64_t a1, _DWORD *a2, _BYTE *a3, _BYTE *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  if ((*(a1 + 1152) & 2) != 0)
  {
    *a2 = 1;
    *a7 = 100;
  }

  else
  {
    *a2 = 0;
  }

  return 0;
}

uint64_t Synth_RetrieveInputBlock(uint64_t a1, char *__s2, void *a3)
{
  v3 = 2164269076;
  *a3 = 0;
  if (*(a1 + 328))
  {
    v7 = 0;
    v8 = 32 * *(a1 + 328);
    v9 = 336;
    for (i = 344; ; i += 16)
    {
      v11 = *(a1 + v7 + 48);
      if (v11)
      {
        if (!*(a1 + v7 + 40) && !strcmp(v11, __s2))
        {
          break;
        }
      }

      v9 += 16;
      v7 += 32;
      if (v8 == v7)
      {
        return v3;
      }
    }

    if (*(a1 + v9))
    {
      v3 = 0;
LABEL_11:
      *a3 = a1 + v9;
      return v3;
    }

    v3 = (*(*(a1 + 32) + 88))(*(a1 + v7 + 56), *(a1 + v7 + 64), a1 + v9, a1 + i);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  return v3;
}

uint64_t Synth_SetVoicePartsAndRelativeIds(uint64_t a1, uint64_t a2)
{
  v4 = 2164269066;
  v5 = heap_Alloc(*(*(a1 + 16) + 8), 8 * *(a1 + 544));
  *(a1 + 552) = v5;
  if (v5)
  {
    v6 = heap_Alloc(*(*(a1 + 16) + 8), 4 * *(a1 + 544));
    *(a1 + 536) = v6;
    if (v6)
    {
      if (*(a1 + 544))
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        do
        {
          synth_splitGID(a1, *(a2 + v8), (*(a1 + 552) + v7), (*(a1 + 536) + v8));
          ++v9;
          v8 += 4;
          v7 += 8;
        }

        while (v9 < *(a1 + 544));
      }

      return 0;
    }
  }

  return v4;
}

void Synth_LinkMsgLayers(uint64_t a1)
{
  v13 = 0;
  v2 = *(a1 + 616);
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 512) = *(a1 + 16);
  if ((Synth_RetrieveInputBlock(a1, "text/x-realspeak-usphonemes;charset=tts", &v13) & 0x80000000) == 0)
  {
    v3 = v13;
    v4 = *v13 + 1;
    *(a1 + 528) = **v13;
    *(a1 + 576) = v4;
    LOWORD(v3) = *(v3 + 8) - 2;
    *(a1 + 584) = v3;
    if (!*(v4 + v3) && (Synth_RetrieveInputBlock(a1, "application/x-realspeak-usids;version=4.0", &v13) & 0x80000000) == 0)
    {
      v5 = *v13;
      v6 = *(v13 + 8);
      *(a1 + 544) = v6 >> 2;
      if ((v6 >> 2) == 2 * *(a1 + 584) && (Synth_SetVoicePartsAndRelativeIds(a1, v5) & 0x80000000) == 0 && (Synth_RetrieveInputBlock(a1, "application/x-realspeak-targf0;version=4.0", &v13) & 0x80000000) == 0)
      {
        v7 = v13;
        *(a1 + 560) = *v13;
        LODWORD(v7) = *(v7 + 8);
        *(a1 + 568) = v7 >> 1;
        if ((v7 >> 1) == 4 * *(a1 + 584) && (Synth_RetrieveInputBlock(a1, "application/x-realspeak-usmarkers-u16;version=4.0", &v13) & 0x80000000) == 0)
        {
          v8 = v13;
          v9 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
          *(a1 + 592) = v9;
          if (v9)
          {
            memcpy(v9, *v8, *(v8 + 8));
            if ((Synth_RetrieveInputBlock(a1, "application/x-realspeak-usplosives;version=4.0", &v13) & 0x80000000) == 0)
            {
              *(a1 + 600) = *v13;
              if ((Synth_RetrieveInputBlock(a1, "application/x-realspeak-usdurs;version=4.0", &v13) & 0x80000000) == 0)
              {
                v10 = v13;
                v11 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
                *(a1 + 608) = v11;
                if (v11)
                {
                  memcpy(v11, *v10, *(v10 + 8));
                  if ((*(a1 + 528) & 1) == 0)
                  {
                    **(a1 + 608) = v2;
                  }

                  *(a1 + 664) = a1;
                  if ((Synth_RetrieveInputBlock(a1, "application/x-realspeak-markers-pp;version=4.0", &v13) & 0x80000000) == 0)
                  {
                    v12 = (v13 + 8);
                    Synth_SetupMarkers(a1 + 512, *v13, *(v13 + 8) >> 5, (v13 + 8));
                    *v12 *= 32;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

__n128 Synth_SetupMarkers(uint64_t a1, int *a2, unsigned int a3, unsigned int *a4)
{
  v8 = *(a1 + 72) + a3;
  *(a1 + 144) = v8;
  if (a3)
  {
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v10;
      v10 += 8;
      if (v11 == 8)
      {
        *(a1 + 144) = ++v8;
      }

      --v9;
    }

    while (v9);
  }

  v12 = heap_Calloc(*(*a1 + 8), v8, 32);
  *(a1 + 136) = v12;
  if (!v12)
  {
    return result;
  }

  LOWORD(v14) = *(a1 + 72);
  if (!v14)
  {
    v17 = 0;
    v25 = 0;
    goto LABEL_30;
  }

  v15 = 0;
  i = 0;
  v14 = 0;
  v17 = 0;
  do
  {
    v18 = *(*(a1 + 80) + 2 * v15);
    if (i)
    {
      v19 = (*(a1 + 136) + 32 * v14);
      *v19 = 8;
      v19[6] = 0;
      ++v14;
      ++*(*(a1 + 80) + 2 * v15);
    }

    for (i = 0; v18; --v18)
    {
      if (v17 >= a3 || v14 >= *(a1 + 144))
      {
        continue;
      }

      v20 = &a2[8 * v17];
      if (*v20 == 33)
      {
        if (v20[6] != 35)
        {
          goto LABEL_21;
        }
      }

      else if (*v20 != 8 || !v20[6])
      {
        goto LABEL_21;
      }

      i = 1;
LABEL_21:
      result = *v20;
      v21 = *(v20 + 1);
      v22 = *(a1 + 136) + 32 * v14;
      *v22 = result;
      *(v22 + 16) = v21;
      ++v17;
      ++v14;
    }

    if (v15 || (*(a1 + 16) & 1) != 0)
    {
      v23 = (*(a1 + 136) + 32 * v14);
      *v23 = 33;
      v23[6] = *(*(a1 + 64) + v15);
      ++v14;
      ++*(*(a1 + 80) + 2 * v15);
    }

    ++v15;
    v24 = *(a1 + 72);
  }

  while (v15 < v24);
  v25 = v24 > 2;
LABEL_30:
  *(a1 + 144) = v14;
  *a4 = v17;
  if (**(a1 + 64) == 35)
  {
    v26 = *(a1 + 80);
    if (!*v26)
    {
      v27 = *(v26 + 2);
      if (v25)
      {
        if (v27 >= v14)
        {
          v28 = v14;
        }

        else
        {
          v28 = *(v26 + 2);
        }

        if (v28)
        {
          v29 = 0;
          v30 = *(a1 + 136);
          v31 = 32 * v28;
          while (*(v30 + v29) != 0x4000)
          {
            v29 += 32;
            if (v31 == v29)
            {
              return result;
            }
          }

          v32 = (v30 + v29);
          result = *(v30 + 16);
          v34 = *v32;
          v33 = v32[1];
          *v32 = *v30;
          v32[1] = result;
          v35 = *(a1 + 136);
          *v35 = v34;
          v35[1] = v33;
          v36 = *(a1 + 80);
          ++*v36;
          --v36[1];
        }
      }

      else
      {
        *v26 = v27;
      }
    }
  }

  return result;
}

uint64_t Synth_UnlinkMsgLayers(void *a1)
{
  v2 = a1[69];
  if (v2)
  {
    heap_Free(*(a1[2] + 8), v2);
    a1[69] = 0;
  }

  v3 = a1[67];
  if (v3)
  {
    heap_Free(*(a1[2] + 8), v3);
    a1[67] = 0;
  }

  v4 = a1[76];
  if (v4)
  {
    heap_Free(*(a1[2] + 8), v4);
    a1[76] = 0;
  }

  v5 = a1[74];
  if (v5)
  {
    heap_Free(*(a1[2] + 8), v5);
    a1[74] = 0;
  }

  v6 = a1[81];
  if (v6)
  {
    heap_Free(*(a1[2] + 8), v6);
    a1[81] = 0;
  }

  v7 = a1[78];
  if (v7)
  {
    heap_Free(*(a1[2] + 8), v7);
    a1[78] = 0;
  }

  v8 = a1[80];
  if (v8)
  {
    heap_Free(*(a1[2] + 8), v8);
    a1[80] = 0;
  }

  return 0;
}

uint64_t Synth_Reset(uint64_t a1)
{
  *(a1 + 1084) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1016) = 0u;
  *(*(*(a1 + 1088) + 72) + 4) = 0;
  *(a1 + 1068) = 3;
  InOut__ResetOutputState(a1);
  *(a1 + 1096) = 0;
  *(a1 + 1036) = 0;
  *(a1 + 1076) = 0;
  return 0;
}

uint64_t Synth__InitForProcessing(uint64_t a1)
{
  v2 = *(a1 + 632);
  v3 = *(a1 + 1088);
  *(v3 + 168) = v2;
  v4 = *(a1 + 624);
  *(v3 + 152) = *(a1 + 640);
  *(v3 + 160) = v4;
  if ((*(a1 + 1152) & 2) != 0)
  {
    *(a1 + 1144) = (*(a1 + 528) & 4) != 0;
  }

  else
  {
    *(a1 + 1144) = 1;
    if (v2)
    {
      v5 = 0;
      do
      {
        v6 = Convert2Samples(a1, *(*(v3 + 152) + 56 * v5 + 28));
        v7 = *(*(a1 + 1088) + 152) + 56 * v5;
        *(v7 + 28) = v6;
        v8 = Convert2Samples(a1, *(v7 + 32));
        v3 = *(a1 + 1088);
        v9 = *(v3 + 152);
        *(v9 + 56 * v5 + 32) = v8;
        v10 = *(v9 + 56 * v5 + 40);
        if (v10 >= 1)
        {
          v11 = Convert2SamplesX(a1, v10);
          v3 = *(a1 + 1088);
          v9 = *(v3 + 152);
          *(v9 + 56 * v5 + 40) = v11;
        }

        v12 = v9 + 56 * v5;
        v13 = *(v12 + 46);
        if (*(v12 + 46))
        {
          v14 = 0;
          v15 = (*(v3 + 160) + 16 * *(v12 + 44) + 4);
          do
          {
            if (*v15 >= 1)
            {
              v16 = Convert2Samples(a1, *v15);
              *v15 = v16;
              v14 += v16;
            }

            v15 += 4;
            --v13;
          }

          while (v13);
          v3 = *(a1 + 1088);
          v17 = *(v3 + 152) + 56 * v5;
          v19 = *(v17 + 32);
          v18 = (v17 + 32);
          if (v14 > v19)
          {
            *v18 = v14;
          }
        }

        ++v5;
        v20 = *(v3 + 168);
      }

      while (v5 < v20);
    }

    else
    {
      LOWORD(v20) = 0;
    }

    do
    {
      if (v20 < 3u)
      {
        break;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = *(v3 + 152);
        v26 = v25 + 56 * v24;
        if (!*(v26 + 32) && !*(v26 + 40))
        {
          v27 = v25 + 56 * v24;
          *(v27 - 10) += *(v26 + 46);
          *(v27 - 8) = *(v27 - 8) & 0xF | 0x40;
          *(v26 + 104) = *(v26 + 104) & 0xF0 | 4;
          if (v24 <= v20 - 2)
          {
            v28 = v21;
            v29 = v22;
            do
            {
              v30 = *(v3 + 152) + v28;
              v31 = *(v30 + 128);
              *(v30 + 56) = *(v30 + 112);
              *(v30 + 72) = v31;
              *(v30 + 88) = *(v30 + 144);
              *(v30 + 104) = *(v30 + 160);
              v3 = *(a1 + 1088);
              ++v29;
              v28 += 56;
            }

            while (v29 < *(v3 + 168) - 2);
            LOWORD(v20) = *(v3 + 168);
          }

          *(v3 + 168) = v20 - 1;
          ++v23;
        }

        ++v24;
        v20 = *(v3 + 168);
        ++v22;
        v21 += 56;
      }

      while (v24 < (v20 - 1));
    }

    while (v23 > 0);
    if (*(a1 + 618))
    {
      v32 = 56 * v20 - 56;
      v33 = *(v3 + 152) + v32;
      v34 = *(v33 + 46) - 1;
      *(a1 + 1096) = Convert2SamplesX(a1, *(*(v3 + 160) + 16 * (v34 + *(v33 + 44))));
      *(a1 + 1144) = 1;
      v35 = (*(*(a1 + 1088) + 160) + 16 * (v34 + *(*(*(a1 + 1088) + 152) + v32 + 44)));
      if ((*v35 & 0x30000) == 0x20000)
      {
        *(a1 + 1144) = 0;
      }

      *v35 = 0;
    }
  }

  return 0;
}

uint64_t Synth__SetVectPointer(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    *(a2 + 8) = a1;
    *a2 = a3;
    *(a2 + 4) = a3;
  }

  return 0;
}

uint64_t synth_CreateBrokerString(uint64_t a1, char *a2, size_t a3, int a4, int a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = 0;
  __s1 = 0;
  __s = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "voiceaddon", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (!__s || !*__s)
  {
    goto LABEL_14;
  }

  v11 = strlen(__s);
  v12 = heap_Calloc(*(a1 + 8), 1, v11 + 19);
  if (!v12)
  {
    return 2164269066;
  }

  v13 = v12;
  strcpy(v12, "voiceaddonbaseuri.");
  strcat(v12, __s);
  Str = paramc_ParamGetStr(*(a1 + 40), v13, &__s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  heap_Free(*(a1 + 8), v13);
  if (__s1 && *__s1)
  {
    Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v14 = strlen(a2);
    v15 = 0;
    v16 = a2[v14 - 1];
    v17 = "_";
    if (a2[v14 - 1] && v16 != 47 && v16 != 92)
    {
      Str = strhelper_SafeCat(a2, "/", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) == 0)
      {
        v15 = 0;
        goto LABEL_15;
      }

      return Str;
    }
  }

  else
  {
LABEL_14:
    v17 = "/";
    v15 = 1;
  }

LABEL_15:
  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v33);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (__s && *__s)
  {
    Str = strhelper_SafeCat(a2, "synthvao", 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v33);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v33, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, __s, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, "vao", 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v18 = 0;
  }

  else
  {
    Str = strhelper_SafeCat(a2, "synth", 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v33, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v18 = 1;
  }

  Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (a4 == 1)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &__s1);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }
  }

  if (v18)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "reduction", &__s1);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v19 = __s1;
    if (strstr(__s1, "dev") || strstr(v19, "DEV"))
    {
      v20 = "dev";
      v21 = a2;
    }

    else
    {
      v21 = a2;
      v20 = v19;
    }

    Str = strhelper_SafeCat(v21, v20, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "coder", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "bitrate", &__s1) & 0x80000000) != 0 || !*__s1 || (paramc_ParamGetStr(*(a1 + 40), "overheadframes", &v34) & 0x80000000) != 0 || !*v34)
  {
    v23 = &a2[strlen(a2)];
    while (v23 > a2)
    {
      v25 = *--v23;
      v24 = v25;
      if ((v25 - 48) >= 0xA)
      {
        if (v24 == 102)
        {
          v26 = strlen(v23);
          memmove(v23 + 1, v23, v26 + 1);
          *v23 = *v17;
          goto LABEL_63;
        }

        break;
      }
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v31);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v27 = strlen(a2);
    LH_itoa(v31 / 1000, &a2[v27], 0xAu);
  }

  else
  {
    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v34, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }
  }

LABEL_63:
  vf_MakeLower(a2);
  if ((v15 & 1) == 0)
  {
    v28 = ".dat";
    return strhelper_SafeCat(a2, v28, 0xFFFFFFFFFFFFFFFFLL, a3);
  }

  v22 = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__s1);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  if (!a5)
  {
    if (!__s1 || !*__s1)
    {
      return v22;
    }

    Str = brokeraux_ComposeBrokerString(a1, a2, 0, 0, 0, 0, 0, v36, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    *a2 = 0;
    v28 = v36;
    return strhelper_SafeCat(a2, v28, 0xFFFFFFFFFFFFFFFFLL, a3);
  }

  if (cupreader_IsCupInTheScope(a1, &v30))
  {
    return cupreader_PrependCupName(a2, v30, a3);
  }

  return v22;
}

uint64_t synth_ResetParams(uint64_t a1)
{
  result = (*(*(a1 + 984) + 48))(*(a1 + 992));
  if ((result & 0x80000000) == 0)
  {
    if ((*(a1 + 1152) & 1) == 0 || (result = (*(*(a1 + 1000) + 48))(*(a1 + 1008)), (result & 0x80000000) == 0))
    {
      result = paramc_ParamSetInt(*(*(a1 + 16) + 40), "waitfactor", 2);
      if ((result & 0x80000000) == 0 && (*(a1 + 1152) & 2) != 0)
      {
        result = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "rate", 100);
        if ((result & 0x80000000) == 0)
        {
          v3 = *(*(a1 + 16) + 40);

          return paramc_ParamSetUInt(v3, "pitch", 100);
        }
      }
    }
  }

  return result;
}

uint64_t synth_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ISynth;
  return result;
}

uint64_t synth_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2164269063;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 83214;
  }

  return result;
}

uint64_t synth_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v5 = 2164269066;
  v28 = 0;
  v29 = 0;
  if (!a5)
  {
    return 2164269063;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v31);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if ((safeh_HandleCheck(a1, a2, 83214, 408) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v12 = heap_Calloc(*(v31 + 8), 1, 1160);
  if (v12)
  {
    v13 = v12;
    *v12 = a3;
    *(v12 + 8) = a4;
    *(v12 + 1016) = 0u;
    *(v12 + 1032) = 2;
    v14 = v31;
    *(v12 + 16) = v31;
    *(v12 + 24) = a1;
    *(v12 + 1076) = 1;
    Object = objc_GetObject(*(v14 + 48), "SYNTHSTREAM", &v30);
    if ((Object & 0x80000000) == 0)
    {
      *(v13 + 32) = *(v30 + 8);
      Object = objc_GetObject(*(v31 + 48), "SYNTHOUTPUTSINK", &v30);
      if ((Object & 0x80000000) == 0)
      {
        v16 = v30;
        *(v13 + 488) = *(v30 + 8);
        *(v13 + 496) = *(v16 + 16);
        *(v13 + 960) = v13;
        *(v13 + 968) = synth_CheckChange;
        *(v13 + 976) = synth_LearnChange;
        *(v13 + 1144) = 1;
        v17 = heap_Calloc(*(v31 + 8), 1, 232);
        *(v13 + 1088) = v17;
        if (!v17)
        {
          goto LABEL_24;
        }

        v18 = (v13 + 960);
        LODWORD(v25) = 0;
        if ((paramc_ParamGetInt(*(*(v13 + 16) + 40), "waitfactor", &v25) & 0x80000000) != 0)
        {
          *(v13 + 1044) = 2;
          paramc_ParamSetInt(*(*(v13 + 16) + 40), "waitfactor", 2);
        }

        else
        {
          v27 = 0;
          paramc_ParamGetUInt(*(*(v13 + 16) + 40), "finalsentencefound", &v27);
          if (v27 != 1)
          {
            *(v13 + 1044) = v25;
          }
        }

        paramc_ParamSetUInt(*(*(v13 + 16) + 40), "finalsentencefound", 0);
        v19 = *(*(v13 + 16) + 40);
        v25 = *v18;
        v26 = *(v13 + 976);
        Object = paramc_ListenerAdd(v19, "waitfactor", &v25);
        if ((Object & 0x80000000) == 0)
        {
          v20 = *(*(v13 + 16) + 40);
          v25 = *v18;
          v26 = *(v13 + 976);
          Object = paramc_ListenerAdd(v20, "finalsentencefound", &v25);
          if ((Object & 0x80000000) == 0)
          {
            v21 = *(*(v13 + 16) + 40);
            v25 = *v18;
            v26 = *(v13 + 976);
            Object = paramc_ListenerAdd(v21, "pitch", &v25);
            if ((Object & 0x80000000) == 0)
            {
              v22 = *(*(v13 + 16) + 40);
              v25 = *v18;
              v26 = *(v13 + 976);
              Object = paramc_ListenerAdd(v22, "pitch_baseline", &v25);
              if ((Object & 0x80000000) == 0)
              {
                Object = vol_GetInterface(1u, (v13 + 984));
                if ((Object & 0x80000000) == 0)
                {
                  v28 = v13;
                  v29 = PushOutput;
                  v23 = (*(*(v13 + 984) + 32))(a3, a4, &v28, v13 + 992);
                  if ((v23 & 0x80000000) != 0)
                  {
                    v5 = v23;
                    *(v13 + 992) = 0;
                  }

                  else
                  {
                    *a5 = v13;
                    *(a5 + 8) = 83213;
                    v5 = synth_ObjReopen(v13, *(a5 + 8));
                    if ((v5 & 0x80000000) == 0)
                    {
                      log_OutEvent(*(v31 + 32), 21, "");
                      return v5;
                    }
                  }

LABEL_24:
                  synth_loc_ObjClose(v13, 0);
                  *a5 = 0;
                  *(a5 + 8) = 0;
                  return v5;
                }
              }
            }
          }
        }
      }
    }

    v5 = Object;
    goto LABEL_24;
  }

  return v5;
}

uint64_t synth_ObjClose(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 83213, 1160) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  return synth_loc_ObjClose(a1, 0);
}

uint64_t synth_ObjReopen(void *a1, int a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = 2164269066;
  memset(v54, 0, sizeof(v54));
  v52 = 0;
  __s1 = 0;
  v51 = 0;
  v49 = 0;
  v47 = 0;
  __s2 = 0;
  __s = 0;
  if ((safeh_HandleCheck(a1, a2, 83213, 1160) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v50 = 0;
  v48 = 0;
  v46 = 0;
  v4 = a1[2];
  paramc_ParamSetStr(*(v4 + 40), "voiceaddon", "");
  BrokerString = synth_CreateBrokerString(a1[2], v54, 0x100uLL, 0, 0);
  if ((BrokerString & 0x80000000) == 0)
  {
    v6 = BrokerString;
    if (!LH_stricmp(v54, a1 + 672))
    {
      return v6;
    }
  }

  v7 = synth_CreateBrokerString(a1[2], v54, 0x100uLL, 1, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v6 = v7;
  if (!LH_stricmp(v54, a1 + 672))
  {
    return v6;
  }

  if ((Lookup_CheckForDataFile(*a1, a1[1], v54, &v49) & 0x80000000) != 0)
  {
    LOBYTE(v54[0]) = 0;
  }

  if (v49)
  {
    if (LOBYTE(v54[0]))
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_13:
  LOBYTE(v54[0]) = 0;
LABEL_14:
  Int = synth_CreateBrokerString(a1[2], v54, 0x100uLL, 0, 0);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

  Int = Lookup_CheckForDataFile(*a1, a1[1], v54, &v49);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

  if (v49)
  {
    if (LOBYTE(v54[0]))
    {
      goto LABEL_21;
    }
  }

  else
  {
    LOBYTE(v54[0]) = 0;
  }

  Int = synth_CreateBrokerString(a1[2], v54, 0x100uLL, 0, 1);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

LABEL_21:
  Int = synth_loc_ObjClose(a1, 1);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

  __strcpy_chk();
  Int = paramc_ParamGetInt(*(a1[2] + 40), "frequencyhz", a1 + 260);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

  Psola_GetToolSynthMode(&v50);
  if (v50 == 1)
  {
    v9 = 2;
    goto LABEL_29;
  }

  if (!v50)
  {
    v9 = 1;
LABEL_29:
    *(a1 + 1152) = v9;
    goto LABEL_30;
  }

  if (v50 >= 2)
  {
    v9 = 6;
    goto LABEL_29;
  }

  *(a1 + 1152) = 1;
  if ((paramc_ParamGetStr(*(v4 + 40), "typeofsynthesis", &__s1) & 0x80000000) == 0)
  {
    if (!strcmp(__s1, "psola"))
    {
      *(a1 + 1152) = 2;
    }

    paramc_ParamRelease(*(v4 + 40));
  }

LABEL_30:
  if ((a1[144] & 2) != 0)
  {
    v43 = 0;
    if ((paramc_ParamGetUInt(*(a1[2] + 40), "rate_baseline", &v43 + 1) & 0x80000000) != 0)
    {
      *(a1 + 264) = 100;
      paramc_ParamSetUInt(*(a1[2] + 40), "rate_baseline", 100);
    }

    else
    {
      *(a1 + 264) = WORD2(v43);
    }

    if ((paramc_ParamGetUInt(*(a1[2] + 40), "rate", &v43 + 1) & 0x80000000) != 0)
    {
      *(a1 + 526) = 100;
      paramc_ParamSetUInt(*(a1[2] + 40), "rate", 100);
      v11 = *(a1 + 526);
    }

    else
    {
      v11 = WORD2(v43);
      *(a1 + 526) = WORD2(v43);
    }

    *(a1 + 526) = MapProsodyValue_Scaling(50, 100, 0x190u, *(a1 + 264), v11);
    if ((paramc_ParamGetUInt(*(a1[2] + 40), "pitch_baseline", &v43) & 0x80000000) != 0)
    {
      *(a1 + 265) = 100;
      paramc_ParamSetUInt(*(a1[2] + 40), "pitch_baseline", 100);
    }

    else
    {
      *(a1 + 265) = v43;
    }

    if ((paramc_ParamGetUInt(*(a1[2] + 40), "pitch", &v43) & 0x80000000) != 0)
    {
      *(a1 + 527) = 100;
      paramc_ParamSetUInt(*(a1[2] + 40), "pitch", 100);
      v12 = *(a1 + 527);
    }

    else
    {
      v12 = v43;
      *(a1 + 527) = v43;
    }

    *(a1 + 527) = MapProsodyValue_Scaling(50, 100, 0xC8u, *(a1 + 265), v12);
    v13 = *(a1[2] + 40);
    v41 = *(a1 + 60);
    v42 = a1[122];
    Int = paramc_ListenerAdd(v13, "rate_baseline", &v41);
    if ((Int & 0x80000000) != 0)
    {
      return Int;
    }

    v14 = *(a1[2] + 40);
    v41 = *(a1 + 60);
    v42 = a1[122];
    Int = paramc_ListenerAdd(v14, "rate", &v41);
    if ((Int & 0x80000000) != 0)
    {
      return Int;
    }

    if (a1[126])
    {
      (*(a1[125] + 40))();
      a1[126] = 0;
    }
  }

  else if ((a1[144] & 1) != 0 && !a1[126])
  {
    Int = tsm_GetInterface(1u, a1 + 125);
    if ((Int & 0x80000000) == 0)
    {
      v10 = *(a1[123] + 56);
      *&v41 = a1[124];
      *(&v41 + 1) = v10;
      Int = (*(a1[125] + 32))(*a1, a1[1], &v41, a1 + 126);
      if ((Int & 0x80000000) != 0)
      {
        a1[126] = 0;
        return Int;
      }

      goto LABEL_52;
    }

    return Int;
  }

LABEL_52:
  synth_Wsola__Wsola(a1);
  v15 = a1[136];
  v16 = *(v15 + 12);
  v17 = heap_Alloc(*(v4 + 8), 4 * v16);
  a1[138] = v17;
  if (v17)
  {
    Synth__SetVectPointer(v17, *(v15 + 48), v16);
    v18 = *(v15 + 12);
    v19 = heap_Alloc(*(v4 + 8), 4 * v18);
    a1[139] = v19;
    if (v19)
    {
      Synth__SetVectPointer(v19, *(v15 + 64), v18);
      v20 = (*(v15 + 8) + *(v15 + 12));
      v21 = heap_Alloc(*(v4 + 8), 4 * v20);
      a1[140] = v21;
      if (v21)
      {
        Synth__SetVectPointer(v21, *(v15 + 72), v20);
        v22 = heap_Alloc(*(v4 + 8), 2 * *(v15 + 12));
        a1[142] = v22;
        if (v22)
        {
          *(v15 + 40) = v22;
          synth_SetWaitPeriod(a1, *(a1 + 522));
          Int = synth_GetDataHandles(a1, v54, &v48, &v47, &v46);
          if ((Int & 0x80000000) != 0)
          {
            return Int;
          }

          *(a1 + 232) = 1;
          v23 = heap_Calloc(*(v4 + 8), 1, 40);
          a1[117] = v23;
          if (v23)
          {
            v24 = v47;
            v25 = v23 + 40 * (*(a1 + 232) - 1);
            *v25 = v48;
            *(v25 + 8) = v24;
            *(v25 + 16) = v46;
            *(v25 + 24) = 0;
            v26 = heap_Calloc(*(v4 + 8), 1, 1);
            *(a1[117] + 40 * (*(a1 + 232) - 1) + 32) = v26;
            if (v26)
            {
              Int = paramc_ParamGetStr(*(v4 + 40), "voice", &v52);
              if ((Int & 0x80000000) != 0)
              {
                return Int;
              }

              if ((paramc_ParamGetStr(*(v4 + 40), "voiceoperatingpoint", &__s) & 0x80000000) != 0)
              {
                v27 = 0;
              }

              else
              {
                v27 = strlen(__s) + 1;
              }

              if ((paramc_ParamGetStr(*(v4 + 40), "vopversion", &__s2) & 0x80000000) != 0 || (v28 = __s2, !strcmp(__s2, "0.0.0")))
              {
                v29 = 0;
              }

              else
              {
                v29 = strlen(v28) + 1;
              }

              v30 = strlen(v52);
              v31 = heap_Calloc(*(v4 + 8), 1, (v27 + v29 + v30 + 14));
              a1[118] = v31;
              if (v31)
              {
                strcpy(v31, "voiceaddons.");
                v32 = strlen(a1[118]);
                v33 = v52;
                if (*v52)
                {
                  v34 = v32;
                  v35 = 0;
                  v36 = 1;
                  do
                  {
                    *(a1[118] + v34) = __tolower(v33[v35]);
                    v35 = v36;
                    v33 = v52;
                    ++v34;
                  }

                  while (strlen(v52) > v36++);
                }

                if (v27)
                {
                  *(a1[118] + strlen(a1[118])) = 46;
                  strcat(a1[118], __s);
                }

                if (v29)
                {
                  *(a1[118] + strlen(a1[118])) = 46;
                  strcat(a1[118], __s2);
                }

                paramc_ParamRelease(*(v4 + 40));
                if ((paramc_ParamGetStr(*(v4 + 40), a1[118], &v51) & 0x80000000) == 0 || (Int = paramc_ParamSetStr(*(v4 + 40), a1[118], ""), (Int & 0x80000000) == 0) && (Int = paramc_ParamGetStr(*(v4 + 40), a1[118], &v51), (Int & 0x80000000) == 0))
                {
                  Int = synth_UpdateAddons(a1, v51);
                  if ((Int & 0x80000000) == 0)
                  {
                    paramc_ParamRelease(*(v4 + 40));
                    v38 = *(v4 + 40);
                    v39 = a1[118];
                    v41 = *(a1 + 60);
                    v42 = a1[122];
                    return paramc_ListenerAdd(v38, v39, &v41);
                  }
                }

                return Int;
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t synth_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = 2164269065;
  if ((safeh_HandleCheck(a1, a2, 83213, 1160) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  *(a1 + 328) = 0;
  v8 = a1 + 40;
  v9 = "text/x-realspeak-usphonemes;charset=tts";
  v10 = 1u;
  do
  {
    v11 = *(a1 + 328);
    if (v11 > 8)
    {
      goto LABEL_17;
    }

    result = (*(*(a1 + 32) + 64))(a3, a4, 16, v9, 0, 0, v8 + 32 * v11 + 16);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 328);
    v14 = v8 + 32 * v13;
    *v14 = 0;
    *(v14 + 8) = v9;
    *(a1 + 328) = v13 + 1;
    v9 = synth_ProcessStart_szINPUT_STREAMS[v10++];
  }

  while (v10 != 7);
  v11 = *(a1 + 328);
  if (v11 > 8)
  {
    goto LABEL_17;
  }

  result = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 0, v8 + 32 * v11 + 16);
  if ((result & 0x80000000) == 0)
  {
    v15 = *(a1 + 328);
    v16 = v8 + 32 * v15;
    *v16 = 0;
    *(v16 + 8) = "application/x-realspeak-markers-pp;version=4.0";
    LOWORD(v15) = v15 + 1;
    *(a1 + 328) = v15;
    result = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 1, v8 + 32 * v15 + 16);
    if ((result & 0x80000000) == 0)
    {
      v17 = *(a1 + 328);
      v18 = v8 + 32 * v17;
      *v18 = 1;
      *(v18 + 8) = "application/x-realspeak-markers-pp;version=4.0";
      *(a1 + 480) = v17;
      *(a1 + 328) = v17 + 1;
    }
  }

LABEL_10:
  LODWORD(v11) = *(a1 + 328);
  if (v11 > 8)
  {
LABEL_17:
    v21 = 0;
    v22 = (a1 + 64);
    do
    {
      v23 = *(v22 - 1);
      if (v23)
      {
        (*(*(a1 + 32) + 72))(v23, *v22);
        LOWORD(v11) = *(a1 + 328);
      }

      ++v21;
      v22 += 4;
    }

    while (v21 < v11);
    LOWORD(v11) = 0;
    result = v7;
    goto LABEL_22;
  }

  if ((result & 0x80000000) == 0)
  {
    strcpy(v24, "audio/L16;rate=");
    v19 = strlen(v24);
    LH_itoa(*(a1 + 1040), &v24[v19], 0xAu);
    result = (*(*(a1 + 32) + 64))(a3, a4, 16, v24, 0, 1, v8 + 32 * *(a1 + 328) + 16);
    v11 = *(a1 + 328);
    if ((result & 0x80000000) == 0)
    {
      v20 = v8 + 32 * v11;
      *v20 = 1;
      *(v20 + 8) = 0;
      *(a1 + 482) = v11;
      LOWORD(v11) = v11 + 1;
      goto LABEL_22;
    }
  }

  if (v11)
  {
    v7 = result;
    goto LABEL_17;
  }

LABEL_22:
  *(a1 + 328) = v11;
  return result;
}

uint64_t synth_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v38 = 0;
  if ((safeh_HandleCheck(a1, a2, 83213, 1160) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  *a5 = 1;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 336) = 0u;
  v7 = (*(*(a1 + 32) + 144))(*(a1 + 56), *(a1 + 64), &v38 + 4, &v38);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (HIDWORD(v38))
  {
    synth_doWsolaSynthesis(a1);
    v9 = v8;
    goto LABEL_5;
  }

  v39 = 0;
  v9 = Synth_RetrieveInputBlock(a1, "application/x-realspeak-markers-pp;version=4.0", &v39);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  v13 = *(v39 + 8);
  if (v13 < 0x20)
  {
    goto LABEL_61;
  }

  v14 = heap_Alloc(*(*(a1 + 16) + 8), v13);
  *(a1 + 648) = v14;
  if (!v14)
  {
    v9 = 2164269066;
    goto LABEL_61;
  }

  memcpy(v14, *v39, *(v39 + 8));
  v15 = 0;
  v16 = 0;
  *(a1 + 656) = *(v39 + 8) >> 5;
  v17 = (a1 + 1016);
  v18 = (a1 + 1024);
  while (1)
  {
    v19 = *(a1 + 656);
    if (v15 >= v19)
    {
      break;
    }

    v20 = (*(a1 + 648) + 32 * v15);
    v20[3] = 0;
    v20[4] = 0;
    v21 = *v20;
    if (*v20 == 8)
    {
      v23 = Convert2SamplesX(a1, v20[6]);
      if (v23)
      {
        v24 = v23;
        if (*v17)
        {
          goto LABEL_34;
        }

        *(a1 + 1024) = 0;
        *(a1 + 1032) = 0;
        if (*(a1 + 1152))
        {
          v9 = (*(*(a1 + 1000) + 56))(*(a1 + 1008), 0, a1 + 1016, a1 + 1024, 0, 0);
          if ((v9 & 0x80000000) == 0 && *v17)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if ((*(a1 + 1152) & 2) != 0)
          {
            v9 = (*(*(a1 + 984) + 56))(*(a1 + 1008), 0, a1 + 1016, a1 + 1024, 0, 0);
          }

LABEL_34:
          while (1)
          {
            v25 = *v18;
            if (v24 >= *v18)
            {
              v24 -= v25;
            }

            else
            {
              *v18 = v24;
              v25 = v24;
              v24 = 0;
            }

            *(a1 + 1032) = 2;
            bzero(*(a1 + 1016), 2 * v25);
            if (*(a1 + 1152))
            {
              v9 = (*(*(a1 + 1000) + 56))(*(a1 + 1008), *(a1 + 1032), a1 + 1016, a1 + 1024, *(a1 + 648) + 32 * v16, v15 + 1 - v16);
              if ((v9 & 0x80000000) != 0 || !*v17)
              {
                break;
              }
            }

            v16 = v15 + 1;
            if (!v24)
            {
              v16 = v15 + 1;
              goto LABEL_25;
            }
          }
        }

        goto LABEL_58;
      }

      goto LABEL_25;
    }

    if (v21 == 25)
    {
      v22 = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactor", v20[6]);
      goto LABEL_24;
    }

    if (v21 == 13)
    {
      v22 = synth_ResetParams(a1);
LABEL_24:
      v9 = v22;
    }

LABEL_25:
    ++v15;
    if ((v9 & 0x80000000) != 0)
    {
      LODWORD(v19) = *(a1 + 656);
      break;
    }
  }

  if (v16 >= v19)
  {
    goto LABEL_58;
  }

  if (!*v17)
  {
    *(a1 + 1024) = 0;
    *(a1 + 1032) = 0;
    if (*(a1 + 1152))
    {
      v9 = (*(*(a1 + 1000) + 56))(*(a1 + 1008), 0, a1 + 1016, a1 + 1024, 0, 0);
      if ((v9 & 0x80000000) != 0 || !*v17)
      {
        goto LABEL_58;
      }
    }

    else if ((*(a1 + 1152) & 2) != 0)
    {
      v9 = (*(*(a1 + 984) + 56))(*(a1 + 1008), 0, a1 + 1016, a1 + 1024, 0, 0);
    }
  }

  *(a1 + 1024) = 0;
  *(a1 + 1032) = 3;
  if (*(a1 + 1152))
  {
    v31 = 1000;
  }

  else
  {
    if ((*(a1 + 1152) & 2) == 0)
    {
      goto LABEL_58;
    }

    v31 = 984;
  }

  v9 = (*(*(a1 + v31) + 56))(*(a1 + 1008), 3, a1 + 1016, a1 + 1024, *(a1 + 648) + 32 * v16, *(a1 + 656) - v16);
LABEL_58:
  v32 = *(a1 + 648);
  if (v32)
  {
    heap_Free(*(*(a1 + 16) + 8), v32);
    *(a1 + 648) = 0;
  }

  *(a1 + 656) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 1016) = 0;
LABEL_61:
  if (v38)
  {
    v33 = *(a1 + 328);
    if (*(a1 + 328))
    {
      v34 = 0;
      v35 = (a1 + 64);
      do
      {
        if (*(v35 - 1) && *(v35 - 6) == 1)
        {
          v36 = (*(*(a1 + 32) + 72))();
          if (v36 >= 0)
          {
            v9 = v9;
          }

          else
          {
            v9 = v36;
          }

          *(v35 - 1) = safeh_GetNullHandle();
          *v35 = v37;
          v33 = *(a1 + 328);
        }

        ++v34;
        v35 += 4;
      }

      while (v34 < v33);
    }
  }

LABEL_5:
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v10 = (a1 + 64);
  v11 = -1;
  v12 = 344;
  while (++v11 < *(a1 + 328))
  {
    if (!*(v10 - 6))
    {
      v9 = (*(*(a1 + 32) + 96))(*(v10 - 1), *v10, *(a1 + v12));
    }

    v10 += 4;
    v12 += 16;
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_43;
    }
  }

  if (InOut__IsEndState(a1))
  {
LABEL_43:
    v26 = *(a1 + 928);
    if (v26)
    {
      v27 = 0;
      for (i = 0; i < v26; ++i)
      {
        v29 = *(*(a1 + 936) + v27);
        if (v29)
        {
          Lookup_DeInit(v29);
          v26 = *(a1 + 928);
        }

        v27 += 40;
      }
    }

    *(a1 + 1076) = 1;
  }

  return v9;
}

uint64_t synth_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 83213, 1160);
  if ((v3 & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v4 = v3;
  v5 = *(a1 + 328);
  if (*(a1 + 328))
  {
    v6 = 0;
    v7 = (a1 + 64);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        v9 = (*(*(a1 + 32) + 72))(v8, *v7);
        if (v9 >= 0)
        {
          v4 = v4;
        }

        else
        {
          v4 = v9;
        }

        *(v7 - 1) = safeh_GetNullHandle();
        *v7 = v10;
        v5 = *(a1 + 328);
      }

      ++v6;
      v7 += 4;
    }

    while (v6 < v5);
  }

  *(a1 + 328) = 0;
  return v4;
}

uint64_t synth_CheckChange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "waitfactor"))
  {
    if (atoi(a3) >= 0xA)
    {
      v8 = 2164269071;
      goto LABEL_10;
    }
  }

  else
  {
    if (!strcmp(__s1, *(a1 + 944)) || !strcmp(__s1, "finalsentencefound"))
    {
      return 0;
    }

    v8 = 2164269071;
    v9 = *(a1 + 1152);
    if ((v9 & 2) == 0)
    {
      goto LABEL_5;
    }

    if (!strcmp(__s1, "rate"))
    {
      goto LABEL_16;
    }

    if (!strcmp(__s1, "pitch") || !strcmp(__s1, "pitch_baseline"))
    {
LABEL_22:
      if ((atoi(a3) - 50) >= 0x97)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if (!strcmp(__s1, "rate_baseline"))
    {
LABEL_16:
      if ((atoi(a3) - 50) >= 0x15F)
      {
        goto LABEL_10;
      }
    }

    else
    {
LABEL_5:
      if ((v9 & 1) == 0)
      {
LABEL_6:
        v8 = 2164269063;
LABEL_10:
        *a4 = 0;
        return v8;
      }

      if (strcmp(__s1, "pitch"))
      {
        if (strcmp(__s1, "pitch_baseline"))
        {
          if (!*(a1 + 1076))
          {
            v8 = 2164269073;
            goto LABEL_10;
          }

          goto LABEL_6;
        }

        goto LABEL_22;
      }

      if (atoi(a3) != 100)
      {
        v8 = 2164269057;
        goto LABEL_10;
      }
    }
  }

  return 0;
}

uint64_t synth_LearnChange(uint64_t a1, char *__s1, char *a3)
{
  if (!strcmp(__s1, "waitfactor"))
  {
    v18 = 0;
    paramc_ParamGetUInt(*(*(a1 + 16) + 40), "finalsentencefound", &v18);
    if (v18 == 1)
    {
      goto LABEL_8;
    }

    v9 = LH_atou(a3);
    updated = synth_SetWaitPeriod(a1, v9);
LABEL_11:
    v7 = updated;
    if ((updated & 0x80000000) != 0)
    {
      return v7;
    }

    goto LABEL_12;
  }

  if (!strcmp(__s1, *(a1 + 944)))
  {
    updated = synth_UpdateAddons(a1, a3);
    goto LABEL_11;
  }

  if (!strcmp(__s1, "finalsentencefound"))
  {
    if (LH_atou(a3) == 1)
    {
      v17 = 0;
      WaitPeriod = synth_GetWaitPeriod(a1, &v17);
      if ((WaitPeriod & 0x80000000) != 0)
      {
        return WaitPeriod;
      }

      paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", v17);
      v7 = synth_SetWaitPeriod(a1, 0);
    }

    else
    {
      v16 = 0;
      paramc_ParamGetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", &v16);
      v15 = synth_SetWaitPeriod(a1, v16);
      v7 = v15 & (v15 >> 31);
      if (v15 < 0)
      {
        return v7;
      }
    }

    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    goto LABEL_12;
  }

LABEL_8:
  v7 = 2164269063;
LABEL_12:
  if ((*(a1 + 1152) & 2) != 0)
  {
    if (strcmp(__s1, "pitch") || (v10 = LH_atou(a3), v7 = synth_SetPitch(a1, v10), (v7 & 0x80000000) == 0))
    {
      if (!strcmp(__s1, "pitch_baseline"))
      {
        v12 = LH_atoi(a3);
        return synth_SetPitchBaseline(a1, v12);
      }

      if (!strcmp(__s1, "rate"))
      {
        v13 = LH_atou(a3);
        return synth_SetRate(a1, v13);
      }

      if (!strcmp(__s1, "rate_baseline"))
      {
        v11 = LH_atou(a3);
        return synth_SetRateBaseline(a1, v11);
      }
    }
  }

  return v7;
}

uint64_t PushOutput(uint64_t a1, int a2, void *a3, int *a4, uint64_t a5, unsigned int a6)
{
  v24 = 0;
  v25 = a6;
  result = 2164269062;
  if (a1 && a3 && a4)
  {
    result = 0;
    if (a5)
    {
      v13 = 0;
      if (a6)
      {
        v14 = a1 + 40 + 32 * *(a1 + 482);
        result = (*(*(a1 + 32) + 136))(*(v14 + 16), *(v14 + 24), &v24);
        v15 = v24 >> 1;
        v24 >>= 1;
        if ((result & 0x80000000) != 0)
        {
          v13 = 0;
        }

        else
        {
          v16 = a6;
          v17 = 12;
          do
          {
            *(a5 + v17) += v15;
            v17 += 32;
            --v16;
          }

          while (v16);
          v18 = a1 + 40 + 32 * *(a1 + 480);
          result = (*(*(a1 + 32) + 104))(*(v18 + 16), *(v18 + 24), a5, 32 * a6);
          v13 = 1;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    if (*a3 && *a4)
    {
      v19 = a1 + 32 * *(a1 + 482);
      result = (*(*(a1 + 32) + 120))(*(v19 + 56), *(v19 + 64), (2 * *a4));
      *a3 = 0;
      v13 = 1;
    }

    if ((result & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    v20 = 2 * v13;
    v21 = a2 == 3 ? 1 : v20;
    result = (**(a1 + 488))(*(a1 + 496), *(a1 + 504), v21, a4, &v25);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    v22 = *a4;
    if (a2 != 3 && v22)
    {
      v23 = a1 + 32 * *(a1 + 482);
      result = (*(*(a1 + 32) + 112))(*(v23 + 56), *(v23 + 64), a3, (2 * v22));
      if ((result & 0x80000000) != 0)
      {
LABEL_26:
        *a3 = 0;
        *a4 = 0;
        return result;
      }

      v22 = *a4;
    }

    if (a2 == 3 || !v22)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t synth_loc_ObjClose(uint64_t a1, int a2)
{
  *(a1 + 672) = 0;
  v4 = *(a1 + 944);
  if (v4)
  {
    v5 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v6 = paramc_ListenerRemove(v5, v4, &v38);
    paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", "");
    v7 = v6 & (v6 >> 31);
    v8 = *(a1 + 944);
    if (v8)
    {
      heap_Free(*(*(a1 + 16) + 8), v8);
      *(a1 + 944) = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 928))
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 936);
    v12 = v11;
    do
    {
      if (v12)
      {
        if (*(v12 + v9))
        {
          v7 = Lookup_ObjClose((v12 + v9));
          v11 = *(a1 + 936);
        }

        if (*(v11 + v9 + 16))
        {
          v7 = Pmk_Lookup_ObjClose(v11 + v9 + 16);
          v11 = *(a1 + 936);
        }

        if (*(v11 + v9 + 32))
        {
          heap_Free(*(*(a1 + 16) + 8), *(v11 + v9 + 32));
          v11 = *(a1 + 936);
          *(v11 + v9 + 32) = 0;
        }

        v12 = v11;
      }

      ++v10;
      v9 += 40;
    }

    while (v10 < *(a1 + 928));
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = *(a1 + 936);
    if (v11)
    {
LABEL_17:
      heap_Free(*(*(a1 + 16) + 8), v11);
      *(a1 + 936) = 0;
    }
  }

  *(a1 + 928) = 0;
  v13 = *(a1 + 1104);
  if (v13)
  {
    heap_Free(*(*(a1 + 16) + 8), v13);
    *(a1 + 1104) = 0;
  }

  v14 = *(a1 + 1112);
  if (v14)
  {
    heap_Free(*(*(a1 + 16) + 8), v14);
    *(a1 + 1112) = 0;
  }

  v15 = *(a1 + 1120);
  if (v15)
  {
    heap_Free(*(*(a1 + 16) + 8), v15);
    *(a1 + 1120) = 0;
  }

  v16 = *(a1 + 1136);
  if (v16)
  {
    heap_Free(*(*(a1 + 16) + 8), v16);
    *(a1 + 1136) = 0;
  }

  if ((*(a1 + 1152) & 2) != 0)
  {
    v17 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v18 = paramc_ListenerRemove(v17, "rate", &v38);
    if (v7 > -1 && v18 < 0)
    {
      LODWORD(v7) = v18;
    }

    v20 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v21 = paramc_ListenerRemove(v20, "rate_baseline", &v38);
    if (v7 > -1 && v21 < 0)
    {
      v7 = v21;
    }

    else
    {
      v7 = v7;
    }
  }

  if (a2)
  {
    v23 = *(a1 + 1088);
    *(v23 + 224) = 0;
    *(v23 + 192) = 0u;
    *(v23 + 208) = 0u;
    *(v23 + 160) = 0u;
    *(v23 + 176) = 0u;
    *(v23 + 128) = 0u;
    *(v23 + 144) = 0u;
    *(v23 + 96) = 0u;
    *(v23 + 112) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *v23 = 0u;
    *(v23 + 16) = 0u;
  }

  else
  {
    if (*(a1 + 1008))
    {
      (*(*(a1 + 1000) + 40))();
      *(a1 + 1008) = 0;
    }

    if (*(a1 + 992))
    {
      (*(*(a1 + 984) + 40))();
      *(a1 + 992) = 0;
    }

    v24 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v25 = paramc_ListenerRemove(v24, "waitfactor", &v38);
    if (v7 > -1 && v25 < 0)
    {
      LODWORD(v7) = v25;
    }

    v27 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v28 = paramc_ListenerRemove(v27, "finalsentencefound", &v38);
    if (v7 > -1 && v28 < 0)
    {
      LODWORD(v7) = v28;
    }

    v30 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v31 = paramc_ListenerRemove(v30, "pitch", &v38);
    if (v7 > -1 && v31 < 0)
    {
      LODWORD(v7) = v31;
    }

    v33 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v34 = paramc_ListenerRemove(v33, "pitch_baseline", &v38);
    if (v7 > -1 && v34 < 0)
    {
      v7 = v34;
    }

    else
    {
      v7 = v7;
    }

    v36 = *(a1 + 1088);
    if (v36)
    {
      heap_Free(*(*(a1 + 16) + 8), v36);
      *(a1 + 1088) = 0;
    }

    if (*(a1 + 488))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHOUTPUTSINK");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    }

    heap_Free(*(*(a1 + 16) + 8), a1);
  }

  return v7;
}

uint64_t synth_UpdateAddons(uint64_t a1, char *__s)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = 2164269066;
  v5 = *(*(a1 + 16) + 8);
  v6 = strlen(__s);
  v7 = heap_Calloc(v5, 1, (v6 + 1));
  if (v7)
  {
    v8 = v7;
    strcpy(v7, __s);
    if (*(a1 + 928) >= 2u)
    {
      v9 = 0;
      v10 = 0;
      v11 = 1;
      while (1)
      {
        v12 = strchr(v8, 59);
        if (!v12)
        {
          goto LABEL_64;
        }

        v13 = v12;
        v14 = v8;
        do
        {
          *v13 = 0;
          v15 = strcmp(v14, *(*(a1 + 936) + 40 * v11 + 32));
          *v13 = 59;
          v14 = v13 + 1;
          v16 = strchr(v13 + 1, 59);
          v13 = v16;
          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }
        }

        while (!v17);
        if (v15)
        {
LABEL_64:
          v10 = 0;
          *v54 = 0;
          if (v11 < *(a1 + 928))
          {
            v18 = *(a1 + 936);
            v19 = *(v18 + 40 * v11);
            if (v19)
            {
              v20 = Lookup_NrUnits(v19, v54);
              if ((v20 & 0x80000000) != 0)
              {
                v10 = v20;
                goto LABEL_59;
              }

              v10 = Lookup_ObjClose((*(a1 + 936) + 40 * v11));
              if ((v10 & 0x80000000) != 0)
              {
                goto LABEL_59;
              }

              v18 = *(a1 + 936);
            }

            else
            {
              v10 = 0;
            }

            v21 = v18 + 40 * v11;
            v23 = *(v21 + 16);
            v22 = v21 + 16;
            if (v23)
            {
              v10 = Pmk_Lookup_ObjClose(v22);
              if ((v10 & 0x80000000) != 0)
              {
                goto LABEL_59;
              }

              v18 = *(a1 + 936);
            }

            v24 = *(v18 + 40 * v11 + 32);
            if (v24)
            {
              heap_Free(*(*(a1 + 16) + 8), v24);
              v18 = *(a1 + 936);
              *(v18 + 40 * v11 + 32) = 0;
            }

            v25 = v11 + 1;
            v26 = *(a1 + 928);
            if (v11 + 1 < v26)
            {
              v27 = v9;
              do
              {
                v28 = v18 + v27;
                v29 = *(v28 + 96);
                *(v28 + 40) = *(v28 + 80);
                *(v28 + 56) = v29;
                *(v28 + 72) = *(v28 + 112);
                v18 = *(a1 + 936);
                *(v18 + v27 + 64) -= *v54;
                ++v25;
                v26 = *(a1 + 928);
                v27 += 40;
              }

              while (v25 < v26);
            }

            *(a1 + 928) = v26 - 1;
          }
        }

        ++v11;
        v9 += 40;
        if (v11 >= *(a1 + 928))
        {
          goto LABEL_30;
        }
      }
    }

    v10 = 0;
LABEL_30:
    v30 = strchr(v8, 59);
    if (!v30)
    {
      goto LABEL_59;
    }

    v31 = v30;
    v32 = v8;
    while (2)
    {
      *v31 = 0;
      v33 = *(a1 + 928);
      if (v33 <= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v33;
      }

      v35 = 72;
      while (--v34)
      {
        v36 = v35 + 40;
        v37 = strcmp(v32, *(*(a1 + 936) + v35));
        v35 = v36;
        if (!v37)
        {
          goto LABEL_54;
        }
      }

      v50 = 0;
      if (!*v32)
      {
        v10 = 0;
        goto LABEL_54;
      }

      v52 = 0;
      v53 = 0;
      v51 = 0;
      paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", v32);
      v10 = CheckAndGetData(a1, v54, 0, &v50, &v53, &v52, &v51);
      if ((v10 & 0x80000000) == 0)
      {
        if (!v50)
        {
          v10 = CheckAndGetData(a1, v54, 1, &v50, &v53, &v52, &v51);
          if ((v10 & 0x80000000) != 0)
          {
            break;
          }

          if (!v50)
          {
            v10 = 2164269076;
            break;
          }
        }

        v38 = *(a1 + 928) + 1;
        *(a1 + 928) = v38;
        v39 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 936), 40 * v38);
        if (!v39)
        {
LABEL_56:
          v10 = 2164269066;
          break;
        }

        *(a1 + 936) = v39;
        v40 = v52;
        v41 = *(a1 + 928);
        v42 = v41 - 1;
        v43 = (v39 + 40 * (v41 - 1));
        *v43 = v53;
        v43[1] = v40;
        v43[2] = v51;
        if (v41 <= 1)
        {
          *(v39 + 40 * v42 + 24) = 0;
          goto LABEL_52;
        }

        v44 = v41 - 2;
        v45 = *(v39 + 40 * (v41 - 2));
        if (!v45)
        {
LABEL_51:
          *(v39 + 40 * v42 + 24) = *(v39 + 40 * v44 + 24) + v45;
LABEL_52:
          v47 = strlen(v32);
          v48 = heap_Calloc(*(*(a1 + 16) + 8), (v47 + 1), 1);
          *(*(a1 + 936) + 40 * (*(a1 + 928) - 1) + 32) = v48;
          if (v48)
          {
            strcpy(v48, v32);
LABEL_54:
            *v31 = 59;
            v32 = v31 + 1;
            v31 = strchr(v31 + 1, 59);
            if (v31)
            {
              continue;
            }

LABEL_59:
            heap_Free(*(*(a1 + 16) + 8), v8);
            return v10;
          }

          goto LABEL_56;
        }

        v10 = Lookup_NrUnits(*(v39 + 40 * v44), &v50 + 1);
        if ((v10 & 0x80000000) == 0)
        {
          v39 = *(a1 + 936);
          v46 = *(a1 + 928);
          LODWORD(v45) = HIDWORD(v50);
          v44 = v46 - 2;
          v42 = v46 - 1;
          goto LABEL_51;
        }
      }

      break;
    }

    --*(a1 + 928);
    goto LABEL_59;
  }

  return v4;
}

uint64_t CheckAndGetData(void *a1, char *a2, int a3, _DWORD *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v16 = 0;
  BrokerString = synth_CreateBrokerString(a1[2], a2, 0x100uLL, 0, a3);
  if ((BrokerString & 0x80000000) != 0)
  {
    DataHandles = BrokerString;
  }

  else
  {
    DataHandles = Lookup_CheckForDataFile(*a1, a1[1], a2, &v16);
    if ((DataHandles & 0x80000000) == 0)
    {
      if (v16)
      {
        DataHandles = synth_GetDataHandles(a1, a2, a5, a6, a7);
        if ((DataHandles & 0x80000000) != 0)
        {
          log_OutPublic(*(a1[2] + 32), "SYNTH", 45003, "%s%s", "brokerStr", a2);
        }
      }
    }
  }

  *a4 = v16;
  return DataHandles;
}

uint64_t synth_GetDataHandles(_WORD **a1, char *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a1[2];
  __s1 = 0;
  v22 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  Str = paramc_ParamGetStr(*(v9 + 5), "coder", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  if (!strcmp(__s1, "1175mrf22"))
  {
    v11 = 2164269057;
LABEL_28:
    if (!*a3)
    {
      goto LABEL_31;
    }

    Lookup_ObjClose(a3);
LABEL_30:
    *a3 = 0;
LABEL_31:
    if (*a5)
    {
      Pmk_Lookup_ObjClose(a5);
      *a5 = 0;
    }

    return v11;
  }

  v11 = Lookup_ObjOpen(*a1, a1[1], a1[3], a2, a3);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  if ((a1[144] & 2) == 0)
  {
    return v11;
  }

  if (!a2)
  {
    v11 = 2164269063;
    goto LABEL_28;
  }

  v12 = strlen(a2);
  v24[0] = 0;
  if (v12 >= 5 && (v13 = v12, !strcmp(&a2[v12 - 4], ".dat")))
  {
    Str = strhelper_SafeCat(v24, a2, v13 - 4, 0x100uLL);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    v15 = 0;
    v14 = "_";
  }

  else
  {
    Str = strhelper_SafeCat(v24, a2, 0xFFFFFFFFFFFFFFFFLL, 0x100uLL);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    v14 = "/";
    v15 = 1;
  }

  Str = strhelper_SafeCat(v24, v14, 0xFFFFFFFFFFFFFFFFLL, 0x100uLL);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v11 = strhelper_SafeCat(v24, "pmk", 0xFFFFFFFFFFFFFFFFLL, 0x100uLL);
  if (v11 < 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  if ((v16 & 1) == 0)
  {
    v11 = strhelper_SafeCat(v24, ".dat", 0xFFFFFFFFFFFFFFFFLL, 0x100uLL);
  }

  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  Str = Pmk_Lookup_ObjOpen(*a1, a1[1], a1[3], v24, a5);
  if ((Str & 0x80000000) != 0)
  {
    v17 = *(a1 + 1152);
    *a5 = 0;
    if ((v17 & 4) != 0)
    {
      return 0;
    }

    goto LABEL_27;
  }

  Str = Pmk_Lookup_Fingerprint(*a5, &v22);
  if ((Str & 0x80000000) != 0)
  {
LABEL_27:
    v11 = Str;
    goto LABEL_28;
  }

  if (*a3)
  {
    Str = Lookup_Fingerprint(*a3, __s2, 0x100u);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    __s2[0] = 0;
  }

  if (strcmp(v22, __s2))
  {
    v11 = 2164269081;
    goto LABEL_28;
  }

  v20 = 0;
  Int = paramc_ParamGetInt(*(v9 + 5), "pmksync", &v20);
  if (Int >= 0 && v20 != 0)
  {
    v11 = Int;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 287) = Int >= 0 && v20 != 0;
  return v11;
}

uint64_t TenthOfMsToSamples(int a1, unsigned int a2)
{
  result = 0;
  if (a1 > 15999)
  {
    if (a1 == 16000)
    {
      v4 = HIWORD(a2);
      v5 = 62676 * HIWORD(a2) + 19779 * a2 + ((62676 * a2 + 0x8000) >> 16) + 0x4000;
      v6 = 39558;
      goto LABEL_11;
    }

    if (a1 == 22050)
    {
      v5 = 28836 * HIWORD(a2) + 6717 * a2 + ((28836 * a2 + 0x8000) >> 16) + 0x4000;
      v7 = 13434 * HIWORD(a2) + 2 * a2;
      return v7 + (v5 >> 15);
    }
  }

  else if (a1 == 8000)
  {
    return 2 * (26272 * HIWORD(a2) + ((64821 * HIWORD(a2) + 13136 * a2 + ((64821 * a2 + 0x8000) >> 16) + 0x4000) >> 15));
  }

  else if (a1 == 11025)
  {
    v4 = HIWORD(a2);
    v5 = 47186 * HIWORD(a2) + 3358 * a2 + ((47186 * a2 + 0x8000) >> 16) + 0x4000;
    v6 = 6716;
LABEL_11:
    v7 = a2 + v4 * v6;
    return v7 + (v5 >> 15);
  }

  return result;
}

uint64_t vf_MakeLower(const char *a1)
{
  if (!a1)
  {
    return 2164269063;
  }

  if (*a1)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      a1[v2] = __tolower(a1[v2]);
      v2 = v3;
    }

    while (strlen(a1) > v3++);
  }

  return 0;
}

uint64_t tsm_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ITsm;
  return result;
}

uint64_t tsm_ObjOpen(_WORD *a1, uint64_t a2, _OWORD *a3, uint64_t *a4)
{
  v23 = 0;
  v22 = 0;
  v4 = 2164269066;
  if (!a4)
  {
    return 2164269062;
  }

  *a4 = 0;
  inited = InitRsrcFunction(a1, a2, &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (!a3)
  {
    return 2164269063;
  }

  v10 = heap_Calloc(*(v23 + 8), 1, 744);
  if (v10)
  {
    v11 = v10;
    v12 = v23;
    *v10 = v23;
    *(v10 + 8) = a1;
    *(v10 + 16) = a2;
    *(v10 + 48) = *(v12 + 40);
    *(v10 + 24) = *a3;
    UInt = critsec_ObjOpen(*(v12 + 16), *(v12 + 8), (v10 + 728));
    if ((UInt & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    UInt = critsec_ObjOpen(*(v23 + 16), *(v23 + 8), (v11 + 736));
    if ((UInt & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    *(v11 + 80) = 100;
    *(v11 + 40) = 1;
    *(v11 + 720) = 0;
    UInt = paramc_ParamSetStr(*(v11 + 48), "pausestatus", "0");
    if ((UInt & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    *(v11 + 684) = 0;
    SetRateLevelBeforePause(v11, 100);
    UInt = paramc_ParamGetUInt(*(v23 + 40), "frequencyhz", &v22);
    if ((UInt & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    *(v11 + 712) = v22;
    if ((paramc_ParamGetUInt(*(v23 + 40), "wordspermin", &v22) & 0x80000000) != 0)
    {
      v22 = 200;
      paramc_ParamSetUInt(*(v23 + 40), "wordspermin", 200);
    }

    *(v11 + 716) = v22;
    v14 = WSOLA__Create(*v11, *(v11 + 712));
    *(v11 + 704) = v14;
    if (!v14)
    {
      goto LABEL_28;
    }

    UInt = paramc_ParamSetStr(*(v11 + 48), "pausestatus", "0");
    if ((UInt & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    if ((paramc_ParamGetUInt(*(v11 + 48), "rate", &v22) & 0x80000000) != 0)
    {
      v22 = 100;
      SetRate(v11, 0x64u);
      UInt = paramc_ParamSetUInt(*(v11 + 48), "rate", v22);
      if ((UInt & 0x80000000) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      SetRate(v11, v22);
    }

    v15 = v22;
    if (v22 <= 0x32)
    {
      v15 = 50;
    }

    if (v15 >= 0x190)
    {
      v15 = 400;
    }

    paramc_ParamSetUInt(*(v11 + 48), "ratewpm", (v15 * *(v11 + 716) + 50) / 0x64uLL);
    *(v11 + 56) = v11;
    *(v11 + 64) = acceptor_TsmCheckRange;
    *(v11 + 72) = acceptor_TsmLearnChange;
    v16 = *(v11 + 48);
    v20 = *(v11 + 56);
    v21 = acceptor_TsmLearnChange;
    UInt = paramc_ListenerAdd(v16, "wordspermin", &v20);
    if ((UInt & 0x80000000) == 0)
    {
      v17 = *(v11 + 48);
      v20 = *(v11 + 56);
      v21 = *(v11 + 72);
      UInt = paramc_ListenerAdd(v17, "rate", &v20);
      if ((UInt & 0x80000000) == 0)
      {
        v18 = *(v11 + 48);
        v20 = *(v11 + 56);
        v21 = *(v11 + 72);
        v4 = paramc_ListenerAdd(v18, "ratewpm", &v20);
        if ((v4 & 0x80000000) == 0)
        {
LABEL_29:
          *a4 = v11;
          return v4;
        }

LABEL_28:
        tsm_ObjClose(v11);
        v11 = 0;
        goto LABEL_29;
      }
    }

LABEL_27:
    v4 = UInt;
    goto LABEL_28;
  }

  return v4;
}

uint64_t tsm_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2164269062;
  }

  if (*(a1 + 40) != 1)
  {
    FreeTask(a1);
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
  }

  *(a1 + 136) = 0;
  if (*(a1 + 704))
  {
    WSOLA__Remove((a1 + 704));
  }

  v3 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  paramc_ListenerRemove(v3, "wordspermin", &v9);
  v4 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  paramc_ListenerRemove(v4, "rate", &v9);
  v5 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  paramc_ListenerRemove(v5, "ratewpm", &v9);
  v6 = *(a1 + 728);
  if (v6)
  {
    critsec_ObjClose(v6);
  }

  v7 = *(a1 + 736);
  if (v7)
  {
    critsec_ObjClose(v7);
  }

  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t tsm_ResetParams(uint64_t a1)
{
  if (a1)
  {
    return paramc_ParamSetUInt(*(a1 + 48), "rate", 100);
  }

  else
  {
    return 2164269062;
  }
}

uint64_t tsm_Process(uint64_t a1, int a2, uint64_t *a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = 2164269066;
  v7 = 2164269062;
  if (!a1)
  {
    return v7;
  }

  v8 = a3;
  if (!a3)
  {
    return v7;
  }

  v9 = a4;
  if (!a4)
  {
    return v7;
  }

  v11 = *(a1 + 40);
  if (v11 == -1)
  {
    return 2164269073;
  }

  v13 = *a3;
  if (a5 | *a3)
  {
    if (v11 == 1)
    {
      goto LABEL_196;
    }

    LOBYTE(v14) = a2;
    v15 = *a4;
    v126[0] = 0;
    v125 = 0;
    v124 = -1;
    v121 = (a1 + 88);
    if (!*(a1 + 88) || !*(a1 + 96))
    {
      FreeTask(a1);
      v7 = 0;
LABEL_205:
      v96 = *(a1 + 40);
      if (v96 == 1 || v96 == -1)
      {
        *v8 = 0;
      }

      else if (v14)
      {
        v102 = *(a1 + 136);
        if (v102)
        {
          heap_Free(*(*a1 + 8), v102);
          *(a1 + 136) = 0;
        }

        *v8 = 0;
        if ((v14 & 2) != 0)
        {
          FreeTask(a1);
          v103 = 1;
        }

        else
        {
          v103 = 4;
        }

        *(a1 + 40) = v103;
      }

      else
      {
        if ((v14 & 2) != 0)
        {
          *v9 = *(a1 + 144);
        }

        else
        {
          *v9 = 0;
        }

        *v8 = *(a1 + 136);
      }

LABEL_214:
      v6 = v7;
      if ((v7 & 0x1FFF) == 0x807)
      {
        goto LABEL_239;
      }

      return v7;
    }

    v16 = a6;
    v110 = v13;
    if (v13)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      *(a1 + 696) = 1;
    }

    v18 = 0;
    v19 = 0;
    LODWORD(v20) = 0;
    v113 = 0;
    v118 = a2 & 2;
    if (a2)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    v111 = v21;
    v105 = a5 + 24;
    v106 = a6;
    v114 = a1 + 152;
    v115 = a6;
LABEL_21:
    v116 = v18;
    v119 = v20;
    if (v20 == v19)
    {
      while (1)
      {
        while (1)
        {
          HIDWORD(v125) = 0;
          v22 = SearchNextMarker(a5, v16, TSM_MARKER_INTEREST, 3u, &v125, &v124, &v125 + 1);
          v23 = v17;
          if (v125 < v16)
          {
            v23 = *(a5 + 32 * v125 + 12);
            if (v23 >= v17)
            {
              if (v23 | v17)
              {
                log_OutText(*(*a1 + 32), &ModuleInfoTsm, 3, 0, "ERROR: Mrk[%d] (tot:%d) with posCur %lu > %lu", v125, v16, *(a5 + 32 * v125 + 12), v17);
                *(a5 + 32 * v125 + 12) = (__PAIR64__(v17, v19) - v17) >> 32;
                v23 = (__PAIR64__(v17, v19) - v17) >> 32;
              }

              else
              {
                v23 = 0;
              }
            }
          }

          if (HIDWORD(v125))
          {
            break;
          }

LABEL_46:
          v113 = v22;
          if (v23 < v17 && !*(a1 + 684) && *(a5 + 32 * v124) != 8)
          {
            LOWORD(i) = 0;
            Rate = GetRate(a1, &i);
            if ((Rate & 0x80000000) != 0)
            {
LABEL_231:
              v7 = Rate;
              goto LABEL_238;
            }

            v26 = (a5 + 32 * v124);
            if (*v26 == 19)
            {
              v27 = (100 * v26[6]) / *(a1 + 716);
              if (v27 <= 0x32)
              {
                v27 = 50;
              }

              if (v27 >= 0x190)
              {
                v27 = 400;
              }
            }

            else
            {
              v27 = *v26 == 18 ? *(v26 + 12) : i;
            }

            if (v27 == i)
            {
              continue;
            }
          }

          goto LABEL_88;
        }

        if ((v22 - 16) < 4)
        {
          goto LABEL_29;
        }

        if (v22 != 8)
        {
          break;
        }

        if (!*(a1 + 684))
        {
          LOWORD(i) = 0;
          v28 = *(a5 + 32 * v124 + 24);
          if (v28)
          {
            *(a1 + 688) = v28 * ((8389 * (*(a1 + 712) >> 3)) >> 20);
            GetRate(a1, &i);
            LOWORD(v29) = i;
            v30 = (v125 + 1);
            if (v30 < v16)
            {
              v31 = (v105 + 32 * v30);
              v32 = v106 - v30;
              do
              {
                if (*(v31 - 3) != v23)
                {
                  break;
                }

                v33 = *(v31 - 6);
                if (v33 == 19)
                {
                  v29 = 100 * *v31 / *(a1 + 716);
                  if (v29 <= 0x32)
                  {
                    v29 = 50;
                  }

                  if (v29 >= 0x190)
                  {
                    LOWORD(v29) = 400;
                  }
                }

                else if (v33 == 18)
                {
                  v29 = *v31;
                }

                v31 += 8;
                --v32;
              }

              while (v32);
            }

            SetRateLevelBeforePause(a1, v29);
            SetRate(a1, 0x64u);
            paramc_ParamSetStr(*(a1 + 48), "pausestatus", "1");
            *(a1 + 684) = 1;
            if (!*(a5 + 32 * v124 + 24))
            {
              v34 = (v125 + 1);
              if (v34 >= v16)
              {
LABEL_86:
                SetRate(a1, *(a1 + 692));
                paramc_ParamSetStr(*(a1 + 48), "pausestatus", "0");
                *(a1 + 684) = 0;
                v22 = 8;
                goto LABEL_41;
              }

              v35 = (v105 + 32 * v34);
              v36 = v106 - v34;
              while (2)
              {
                if (*(v35 - 3) != v23)
                {
                  goto LABEL_86;
                }

                v37 = *(v35 - 6);
                if (v37 == 19)
                {
                  v38 = 100 * *v35 / *(a1 + 716);
                  if (v38 <= 0x32)
                  {
                    v38 = 50;
                  }

                  if (v38 >= 0x190)
                  {
                    LOWORD(v38) = 400;
                  }

LABEL_84:
                  SetRateLevelBeforePause(a1, v38);
                }

                else if (v37 == 18)
                {
                  v38 = *v35;
                  goto LABEL_84;
                }

                v35 += 8;
                if (!--v36)
                {
                  goto LABEL_86;
                }

                continue;
              }
            }
          }
        }

LABEL_41:
        v124 = v125;
        if (v23 != v19)
        {
          if (v125 < v16)
          {
            LODWORD(v125) = v125 + 1;
          }

          goto LABEL_46;
        }

        if (v125 < v16)
        {
          LODWORD(v125) = v125 + 1;
        }
      }

      if (v22 != 24)
      {
        goto LABEL_41;
      }

LABEL_29:
      v24 = (a5 + 32 * v124);
      if (*v24 == 19)
      {
        LODWORD(v24) = (100 * v24[6]) / *(a1 + 716);
        if (v24 <= 0x32)
        {
          LODWORD(v24) = 50;
        }

        if (v24 >= 0x190)
        {
          LOWORD(v24) = 400;
        }
      }

      else if (*v24 == 18)
      {
        LOWORD(v24) = *(v24 + 12);
      }

      else
      {
        LOWORD(v24) = 0;
      }

      paramc_ParamSetUInt(*(a1 + 48), "rate", v24);
      goto LABEL_41;
    }

    v23 = v19;
LABEL_88:
    v39 = v119;
    while (v18 < v16)
    {
      v40 = a5 + 32 * v18;
      v42 = *(v40 + 12);
      v41 = (v40 + 12);
      v20 = v42;
      if (v42 >= v17)
      {
        if (v20 | v17)
        {
          log_OutText(*(*a1 + 32), &ModuleInfoTsm, 3, 0, "ERROR: Mrk %d/%d with posCur %lu > %lu", v18, v115, v20, v17);
          v39 = v119;
          *v41 = (__PAIR64__(v17, v119) - v17) >> 32;
          LODWORD(v20) = (__PAIR64__(v17, v119) - v17) >> 32;
        }

        else
        {
          LODWORD(v20) = 0;
        }
      }

      if (v20 > v39)
      {
        goto LABEL_97;
      }

      ++v18;
    }

    LODWORD(v20) = v17;
LABEL_97:
    v43 = *(a1 + 684);
    if (v14)
    {
      if (v43)
      {
        v44 = *(a1 + 688);
        if (v44)
        {
          if (v125 >= v16 && (v113 - 16) >= 4)
          {
            v39 = v119;
            if (v113 != 24)
            {
              v23 = v44 + v119;
              if (v44 + v119 >= v17)
              {
                if (v17 < v20)
                {
                  LODWORD(v20) = v17;
                }

                v23 = v17;
              }

              else if (v23 < v20)
              {
                LODWORD(v20) = v44 + v119;
              }
            }
          }

          else
          {
            v39 = v119;
          }
        }

        goto LABEL_105;
      }
    }

    else if (v43)
    {
      v44 = *(a1 + 688);
LABEL_105:
      v45 = v20 - v39;
      v46 = v44 >= v45;
      v47 = v44 - v45;
      if (!v46)
      {
        v47 = 0;
      }

      *(a1 + 688) = v47;
    }

    v107 = v23;
    v48 = *(a1 + 112);
    if (v48)
    {
      v49 = v18 - v116;
      if (v18 > v116)
      {
        v50 = *(a1 + 128);
        v51 = (a5 + 32 * v116);
        do
        {
          v52 = *(v51 + 3);
          v53 = *(a1 + 668);
          if (v50 >= *(a1 + 120))
          {
            v54 = heap_Realloc(*(*a1 + 8), v48, 32 * (v50 + 8));
            if (!v54)
            {
              v7 = 2164269066;
              goto LABEL_238;
            }

            v48 = v54;
            *(a1 + 112) = v54;
            v50 = *(a1 + 128);
            *(a1 + 120) = v50 + 8;
          }

          v55 = (v48 + 32 * v50);
          v56 = *v51;
          v57 = v51[1];
          v51 += 2;
          *v55 = v56;
          v55[1] = v57;
          v48 = *(a1 + 112);
          v58 = *(a1 + 128);
          *(v48 + 32 * v58 + 12) = v53 + v52;
          v50 = v58 + 1;
          *(a1 + 128) = v50;
          --v49;
        }

        while (v49);
      }
    }

    v117 = v20 - v119;
    v14 = a2;
    if (v20 == v17)
    {
      v59 = a2;
    }

    else
    {
      v59 = 0;
    }

    v120 = (v110 + 2 * v119);
    v60 = v126[0];
    while (1)
    {
      v61 = *(a1 + 148);
      v123 = *(a1 + 148);
      if (!v60)
      {
        *(v114 + 4 * v61) += v117;
      }

      if (!*(a1 + 696))
      {
        break;
      }

      v126[0] = 0;
      *(a1 + 100) = *(a1 + 96);
      Rate = critsec_Enter(*(a1 + 728));
      if ((Rate & 0x80000000) != 0)
      {
        goto LABEL_231;
      }

      v62 = *(a1 + 80);
      Rate = critsec_Leave(*(a1 + 728));
      if ((Rate & 0x80000000) != 0)
      {
        goto LABEL_231;
      }

      v7 = WSOLA__TimeScaleInputBuffer(*(a1 + 704), v59, v120, v117, *(a1 + 88), (a1 + 100), (v62 - 100), &v123, v126);
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_238;
      }

      v60 = v126[0];
      if (v126[0] - 1 <= 1)
      {
        v63 = *(a1 + 696);
        i = 0;
        if (v63)
        {
          LOBYTE(v64) = *(a1 + 664);
          goto LABEL_140;
        }

        goto LABEL_129;
      }

      if (!v126[0])
      {
        v93 = (*(a1 + 148) - 127 * ((((*(a1 + 148) - ((3 * *(a1 + 148)) >> 8)) >> 1) + ((3 * *(a1 + 148)) >> 8)) >> 6) + 1);
        *(a1 + 148) = v93;
        *(v114 + 4 * v93) = 0;
LABEL_185:
        if (*(a1 + 684))
        {
          v19 = v107;
          if (!*(a1 + 688))
          {
            SetRate(a1, *(a1 + 692));
            v7 = paramc_ParamSetStr(*(a1 + 48), "pausestatus", "0");
            *(a1 + 684) = 0;
            if ((v7 & 0x80000000) != 0)
            {
LABEL_238:
              v6 = v7;
              v8 = a3;
              v9 = a4;
              goto LABEL_239;
            }
          }
        }

        else
        {
          v19 = v107;
        }

        if (v20 < v17)
        {
          goto LABEL_21;
        }

        *(a1 + 668) += v17;
        goto LABEL_246;
      }

LABEL_177:
      if ((v60 & 0xFFFFFFFD) == 0 || !*(a1 + 696))
      {
        goto LABEL_185;
      }
    }

    v126[0] = v111;
LABEL_129:
    OutputLength = 0;
    for (i = 1; ; OutputLength = WSOLA__GetOutputLength(*(a1 + 704), v64, &i))
    {
      v66 = *(a1 + 112);
      if (v66)
      {
        v68 = *(a1 + 124);
        v67 = *(a1 + 128);
        if (v68 < v67)
        {
          v69 = *(a1 + 672);
          v70 = v67 - v68;
          v71 = v68 + 1;
          v72 = (v66 + 32 * v68 + 12);
          do
          {
            if (*v72 > v69)
            {
              break;
            }

            *v72 = *(a1 + 680) - *(a1 + 676);
            v72 += 8;
            *(a1 + 124) = v71++;
            --v70;
          }

          while (v70);
        }
      }

      if (!i || !*(a1 + 696))
      {
        break;
      }

      *(a1 + 680) += OutputLength;
      v73 = *(a1 + 664);
      *(a1 + 672) += *(v114 + 4 * *(a1 + 664));
      v64 = v73 - 127 * ((((v73 - ((3 * v73) >> 8)) >> 1) + ((3 * v73) >> 8)) >> 6) + 1;
      *(a1 + 664) = v64;
LABEL_140:
      ;
    }

    v74 = *(a1 + 100);
    *(a1 + 676) += v74;
    v75 = v126[0];
    v76 = *(a1 + 124);
    if (v66 && v118)
    {
      v77 = *(a1 + 128);
      if (v77 != v76 && v126[0] == 2)
      {
        if (v76 < v77)
        {
          v79 = 0;
          v80 = v74 - 1;
          if (!v74)
          {
            v80 = 0;
          }

          v81 = vdupq_n_s64(v77 - v76 - 1);
          v82 = (v66 + 32 * v76 + 76);
          do
          {
            v83 = vdupq_n_s64(v79);
            v84 = vmovn_s64(vcgeq_u64(v81, vorrq_s8(v83, xmmword_1C378AF00)));
            if (vuzp1_s16(v84, *v81.i8).u8[0])
            {
              *(v82 - 16) = v80;
            }

            if (vuzp1_s16(v84, *&v81).i8[2])
            {
              *(v82 - 8) = v80;
            }

            if (vuzp1_s16(*&v81, vmovn_s64(vcgeq_u64(v81, vorrq_s8(v83, xmmword_1C378AEF0)))).i32[1])
            {
              *v82 = v80;
              v82[8] = v80;
            }

            v79 += 4;
            v82 += 32;
          }

          while (((v77 - v76 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v79);
        }

        *(a1 + 124) = v77;
        LODWORD(v76) = v77;
      }
    }

    if (v75 == 2)
    {
      v85 = v14;
    }

    else
    {
      v85 = 0;
    }

    v86 = v85 | v118;
    v87 = v85 & 0xFFFFFFFD;
    if (v76)
    {
      v88 = v87;
    }

    else
    {
      v88 = v86;
    }

    *(a1 + 104) += v74;
    v7 = (*(a1 + 32))(*(a1 + 24), v88, v121, a1 + 100);
    if ((v7 & 0x80000000) != 0)
    {
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      goto LABEL_238;
    }

    v89 = *(a1 + 112);
    v90 = *(a1 + 124);
    v91 = *(a1 + 128);
    if (v89 && v91 > v90)
    {
      memmove(v89, &v89[32 * v90], 32 * (v91 - v90));
      LODWORD(v90) = *(a1 + 124);
      v91 = *(a1 + 128);
    }

    *(a1 + 124) = 0;
    *(a1 + 128) = v91 - v90;
    if (v88)
    {
      v92 = 0;
      *v121 = 0;
    }

    else
    {
      v92 = *(a1 + 100);
    }

    *(a1 + 96) = v92;
    *(a1 + 100) = 0;
    v60 = v126[0];
    v14 = a2;
    if (v126[0] != 2 && (!*v121 || !v92))
    {
      FreeTask(a1);
LABEL_246:
      v8 = a3;
      v9 = a4;
      goto LABEL_205;
    }

    *(a1 + 104) = 0;
    goto LABEL_177;
  }

  if (v11 == 1)
  {
    v13 = 0;
  }

  else
  {
    FreeTask(a1);
    v13 = *v8;
  }

  *(a1 + 40) = 1;
LABEL_196:
  if (a5 | v13)
  {
    return 2164269073;
  }

  *(a1 + 40) = 3;
  *(a1 + 696) = 0;
  *(a1 + 148) = 1;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 88) = 0u;
  v94 = (a1 + 88);
  *(a1 + 664) = 1;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 668) = 0u;
  if (*(a1 + 684))
  {
    SetRate(a1, *(a1 + 692));
  }

  paramc_ParamSetStr(*(a1 + 48), "pausestatus", "0");
  *(a1 + 684) = 0;
  SetRateLevelBeforePause(a1, 100);
  v95 = WSOLA__Initialise(*(a1 + 704));
  *(a1 + 96) = 0;
  v7 = (*(a1 + 32))(*(a1 + 24), 0, a1 + 88, a1 + 96, 0, 0, v95);
  *(a1 + 100) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  if ((v7 & 0x80000000) != 0)
  {
    *v94 = 0;
    *(a1 + 96) = 0;
LABEL_209:
    FreeTask(a1);
    goto LABEL_210;
  }

  if (!*v94 || !*(a1 + 96))
  {
    goto LABEL_209;
  }

LABEL_210:
  if (!*(a1 + 112) && *v94 && (v97 = *(a1 + 96)) != 0)
  {
    if (v97 >= 0x400)
    {
      v98 = (v97 >> 7) & 0x1FFFFF8;
    }

    else
    {
      v98 = 8;
    }

    *(a1 + 120) = v98;
    v99 = heap_Calloc(*(*a1 + 8), v98, 32);
    *(a1 + 112) = v99;
    if (!v99)
    {
      FreeTask(a1);
      goto LABEL_239;
    }
  }

  else
  {
    *(a1 + 96) = 0;
    *v94 = 0;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v6 = v7;
    goto LABEL_239;
  }

  if (*(a1 + 40) == 1)
  {
    goto LABEL_214;
  }

  v100 = *(a1 + 96);
  if (v100 <= ((8589935 * (*(a1 + 712) << 7)) >> 32) >> 1)
  {
    v100 = ((8589935 * (*(a1 + 712) << 7)) >> 32) >> 1;
  }

  *(a1 + 144) = v100;
  *v9 = v100;
  v101 = heap_Alloc(*(*a1 + 8), 2 * v100);
  *(a1 + 136) = v101;
  *v8 = v101;
  if (!v101)
  {
LABEL_239:
    FreeTask(a1);
    *(a1 + 40) = 1;
    *v8 = 0;
    *v9 = 0;
    return v6;
  }

  return v7;
}

uint64_t tsm_Break(uint64_t a1, int a2)
{
  result = 2164269062;
  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      return 2164269073;
    }

    else
    {
      result = 0;
      if (a2)
      {
        *(a1 + 720) = 1;
      }
    }
  }

  return result;
}

uint64_t SetRateLevelBeforePause(uint64_t a1, __int16 a2)
{
  v4 = critsec_Enter(*(a1 + 736));
  if ((v4 & 0x80000000) == 0)
  {
    *(a1 + 692) = a2;
    critsec_Leave(*(a1 + 736));
  }

  return v4;
}

uint64_t SetRate(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v3 = result;
    result = critsec_Enter(*(result + 736));
    if ((result & 0x80000000) == 0)
    {
      if ((critsec_Enter(*(v3 + 728)) & 0x80000000) == 0)
      {
        *(v3 + 720) = 0;
        if (a2 <= 0x32)
        {
          v4 = 50;
        }

        else
        {
          v4 = a2;
        }

        if (v4 >= 0x190)
        {
          LOWORD(v4) = 400;
        }

        *(v3 + 80) = v4;
        critsec_Leave(*(v3 + 728));
      }

      v5 = *(v3 + 736);

      return critsec_Leave(v5);
    }
  }

  return result;
}

uint64_t acceptor_TsmCheckRange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "wordspermin"))
  {
    return 0;
  }

  v8 = 2164269071;
  if (!strcmp(__s1, "rate"))
  {
    if ((atoi(a3) - 401) <= 0xFFFFFEA0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v8 = 2164269063;
LABEL_5:
  if (!strcmp(__s1, "ratewpm"))
  {
    v9 = LH_atou(a3);
    v10 = *(a1 + 716);
    v11 = (50 * v10 + 50) / 0x64u;
    v12 = (400 * v10 + 50) / 0x64u;
    v13 = v11 > v9 || v9 > v12;
    v8 = 2164269071;
    if (!v13)
    {
      return 0;
    }
  }

  *a4 = 0;
  return v8;
}

uint64_t acceptor_TsmLearnChange(uint64_t a1, const char *a2, const char *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v6 = paramc_ParamGet(*(a1 + 48), "pausestatus", &v17, 0);
  if ((v6 & 0x80000000) == 0)
  {
    if (!strcmp(a2, "wordspermin"))
    {
      v6 = 0;
      *(a1 + 716) = LH_atou(a3);
    }

    if (!strcmp(a2, "rate"))
    {
      v7 = LH_atou(a3);
      v8 = *v17;
      if (v8 == 48)
      {
        v9 = -v17[1];
      }

      else
      {
        v9 = 48 - v8;
      }

      if (v9)
      {
        v10 = SetRateLevelBeforePause(a1, v7);
      }

      else
      {
        v10 = SetRateLevel(a1, v7);
      }

      v6 = v10;
    }

    if (!strcmp(a2, "ratewpm"))
    {
      v11 = 100 * LH_atou(a3) / *(a1 + 716);
      if (v11 <= 0x32)
      {
        v11 = 50;
      }

      if (v11 >= 0x190)
      {
        v12 = 400;
      }

      else
      {
        v12 = v11;
      }

      v13 = *v17;
      if (v13 == 48)
      {
        v14 = -v17[1];
      }

      else
      {
        v14 = 48 - v13;
      }

      if (v14)
      {
        SetRateLevelBeforePause(a1, v12);
      }

      else
      {
        SetRateLevel(a1, v12);
      }

      LH_utoa(v12, __s, 0xAu);
      v15 = strlen(__s);
      return paramc_ParamRipple(*(a1 + 48), "rate", __s, (v15 + 1));
    }
  }

  return v6;
}

uint64_t SetRateLevel(uint64_t a1, unsigned int a2)
{
  v4 = critsec_Enter(*(a1 + 736));
  if ((v4 & 0x80000000) == 0)
  {
    if (a2 <= 0x32)
    {
      v5 = 50;
    }

    else
    {
      v5 = a2;
    }

    if (v5 >= 0x190)
    {
      LOWORD(v5) = 400;
    }

    *(a1 + 80) = v5;
    critsec_Leave(*(a1 + 736));
  }

  return v4;
}

void *FreeTask(void *result)
{
  v1 = result;
  *(result + 10) = 1;
  v2 = result[17];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[17] = 0;
  }

  v3 = v1[11];
  *(v1 + 36) = 0;
  if (v3 || v1[14])
  {
    *(v1 + 25) = 0;
    result = (v1[4])(v1[3], 3, v1 + 11, v1 + 100, 0, 0);
    v4 = v1[14];
    v1[11] = 0;
    v1[12] = 0;
    if (v4)
    {
      result = heap_Free(*(*v1 + 8), v4);
    }

    v1[14] = 0;
    v1[15] = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t GetRate(uint64_t a1, _WORD *a2)
{
  result = critsec_Enter(*(a1 + 728));
  if ((result & 0x80000000) == 0)
  {
    *a2 = *(a1 + 80);
    v5 = *(a1 + 728);

    return critsec_Leave(v5);
  }

  return result;
}

uint64_t vol_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &IVol;
  return result;
}

uint64_t vol_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v24 = 0;
  v23 = 0;
  v4 = 2164269063;
  if (!a4)
  {
    return 2164269062;
  }

  *a4 = 0;
  inited = InitRsrcFunction(a1, a2, &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (a3 && *(a3 + 8))
  {
    v10 = heap_Calloc(*(v24 + 8), 1, 128);
    if (v10)
    {
      v11 = v10;
      *(v10 + 112) = 0;
      *(v10 + 40) = 0x100000001;
      *(v10 + 82) = 0;
      *(v10 + 92) = 0x7FFF;
      *(v10 + 96) = 0;
      v12 = (v10 + 96);
      *(v10 + 86) = 5275647;
      *(v10 + 104) = 0;
      v13 = v24;
      *v10 = v24;
      *(v10 + 8) = a1;
      *(v10 + 16) = a2;
      *(v10 + 48) = *(v13 + 40);
      *(v10 + 24) = *a3;
      UInt = critsec_ObjOpen(*(v13 + 16), *(v13 + 8), (v10 + 120));
      if ((UInt & 0x80000000) == 0)
      {
        if ((paramc_ParamGetUInt(*(v11 + 48), "volume", &v23) & 0x80000000) != 0)
        {
          SetVolume(v11, 0x50u);
          UInt = paramc_ParamSetUInt(*(v11 + 48), "volume", 80);
          if ((UInt & 0x80000000) != 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          SetVolume(v11, v23);
        }

        *(v11 + 56) = v11;
        *(v11 + 64) = acceptor_VolCheckRange;
        *(v11 + 72) = acceptor_VolLearnChange;
        v15 = *(v11 + 48);
        v21 = *(v11 + 56);
        v22 = acceptor_VolLearnChange;
        UInt = paramc_ListenerAdd(v15, "volume", &v21);
        if ((UInt & 0x80000000) == 0)
        {
          UInt = paramc_ParamGetUInt(*(v24 + 40), "frequencyhz", &v23);
          if ((UInt & 0x80000000) == 0)
          {
            v16 = v23;
            if (*(v11 + 80) == v23 && *v12)
            {
              v4 = 0;
LABEL_20:
              *a4 = v11;
              return v4;
            }

            *(v11 + 80) = v23;
            v4 = 2164269071;
            if (v16 > 15999)
            {
              if (v16 == 16000)
              {
                v18 = &as16FadeOut_16;
                v19 = 495;
                v20 = &as16FadeIn_16;
                goto LABEL_31;
              }

              if (v16 == 22050)
              {
                v18 = &as16FadeOut_22;
                v19 = 676;
                v20 = &as16FadeIn_22;
                goto LABEL_31;
              }
            }

            else
            {
              if (v16 == 8000)
              {
                v18 = &as16FadeOut_8;
                v19 = 255;
                v20 = &as16FadeIn_8;
                goto LABEL_31;
              }

              if (v16 == 11025)
              {
                v18 = &as16FadeOut_11;
                v19 = 345;
                v20 = &as16FadeIn_11;
LABEL_31:
                v4 = 0;
                *(v11 + 84) = v19;
                *(v11 + 96) = v20;
                *(v11 + 104) = v18;
                goto LABEL_20;
              }
            }

LABEL_19:
            vol_ObjClose(v11);
            v11 = 0;
            goto LABEL_20;
          }
        }
      }

LABEL_18:
      v4 = UInt;
      goto LABEL_19;
    }

    return 2164269066;
  }

  return v4;
}

uint64_t vol_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2164269062;
  }

  v2 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v3 = paramc_ListenerRemove(v2, "volume", &v6);
  v4 = *(a1 + 120);
  if (v4)
  {
    critsec_ObjClose(v4);
  }

  heap_Free(*(*a1 + 8), a1);
  return v3;
}

uint64_t vol_ResetParams(uint64_t a1)
{
  if (a1)
  {
    return paramc_ParamSetUInt(*(a1 + 48), "volume", 80);
  }

  else
  {
    return 2164269062;
  }
}

uint64_t vol_Process(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, uint64_t a5, unsigned int a6)
{
  v52 = *MEMORY[0x1E69E9840];
  result = 2164269062;
  if (!a1)
  {
    return result;
  }

  v8 = a3;
  if (!a3 || !a4)
  {
    return result;
  }

  v10 = a5;
  v12 = *a3;
  if (!(a5 | *a3))
  {
    *(a1 + 40) = 1;
    goto LABEL_7;
  }

  if (*(a1 + 40) == 1)
  {
LABEL_7:
    if (*(a1 + 112))
    {
      *(a1 + 112) = 0;
      *(a1 + 44) = 1;
      *(a1 + 82) = 0;
      result = paramc_ParamSetUInt(*(a1 + 48), "volume", 80);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    *(a1 + 40) = 3;
    result = (*(a1 + 32))(*(a1 + 24), a2, v8, a4, 0, 0);
    goto LABEL_10;
  }

  v13 = *a4;
  v50 = 0;
  result = critsec_Enter(*(a1 + 120));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (*(a1 + 40) == 3)
  {
    *(a1 + 44) = 1;
    *(a1 + 82) = 0;
    LOWORD(v14) = *(a1 + 86);
    *(a1 + 90) = v14;
  }

  else
  {
    LOWORD(v14) = *(a1 + 92);
  }

  v44 = a2;
  v45 = v8;
  v48 = -1;
  v49 = 0;
  v15 = 0;
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    v46 = v10;
    do
    {
      if (v17 == v16)
      {
        v18 = v13;
        SearchNextMarkerOfRTCSubType(v10, a6, VOL_RTC_INTEREST, 1u, &v49, &v48, &v50);
        v15 = v49;
        if (v49 >= a6)
        {
          v19 = -1;
        }

        else
        {
          v19 = *(v10 + 32 * v49 + 12);
        }

        if (v50)
        {
          v20 = v10 + 32 * v48;
          if (*v20 == 24)
          {
            v21 = *(v20 + 24);
            *(a1 + 88) = v21;
          }

          else
          {
            v21 = *(a1 + 88);
          }

          LH_itoa(v21, __s, 0xAu);
          v22 = strlen(__s);
          paramc_ParamSet(*(a1 + 48), "volume", __s, (v22 + 1));
          v23 = *(a1 + 88);
          if (v23 >= 0x64)
          {
            v23 = 100;
          }

          v24 = aVolPar2Amplif[v23];
          *(a1 + 86) = v24;
          if (v16 || *(a1 + 40) != 3)
          {
            v25 = v24 == v14;
            if (v24 > v14)
            {
              v26 = 2;
            }

            else
            {
              v26 = 3;
            }

            *(a1 + 44) = v26;
            *(a1 + 90) = v14;
            if (v25)
            {
              *(a1 + 44) = 1;
              *(a1 + 82) = 0;
            }

            else
            {
              *(a1 + 82) = *(a1 + 84);
            }
          }

          else
          {
            *(a1 + 82) = 0;
            *(a1 + 44) = 1;
            LOWORD(v14) = v24;
          }

          v10 = v46;
          v15 = v49;
          v48 = v49;
          if (v49 < a6)
          {
            v15 = ++v49;
          }
        }

        v16 = v19;
        v13 = v18;
      }

      v27 = *(a1 + 82);
      if (*(a1 + 82))
      {
        if (*(a1 + 84) >= v27)
        {
          v33 = 104;
          if (*(a1 + 44) == 2)
          {
            v33 = 96;
          }

          v28 = *(*(a1 + v33) + 2 * v27);
        }

        else
        {
          v28 = 0;
        }

        v14 = *(a1 + 86);
        v34 = *(a1 + 90) + ((v28 * (v14 - *(a1 + 90))) >> 15);
        v35 = v27 - 1;
        *(a1 + 82) = v27 - 1;
        v36 = *(v12 + 2 * v17);
        if (v35)
        {
          LOWORD(v14) = v34;
        }

        else
        {
          *(a1 + 44) = 1;
        }

        v37 = (v34 * v36) >> 15;
        if (v37 <= -32767)
        {
          v37 = -32767;
        }

        if (v37 >= 0x7FFF)
        {
          LOWORD(v37) = 0x7FFF;
        }

        *(v12 + 2 * v17) = v37;
        v29 = (v17 + 1);
      }

      else
      {
        if (v16 >= v13)
        {
          v29 = v13;
        }

        else
        {
          v29 = v16;
        }

        if (*(a1 + 88) != 80)
        {
          if (v17 >= v29)
          {
            v29 = v17;
          }

          else
          {
            v30 = v29 - v17;
            v31 = (v12 + 2 * v17);
            do
            {
              v32 = (*v31 * v14) >> 15;
              if (v32 <= -32767)
              {
                v32 = -32767;
              }

              if (v32 >= 0x7FFF)
              {
                LOWORD(v32) = 0x7FFF;
              }

              *v31++ = v32;
              --v30;
            }

            while (v30);
          }
        }
      }

      v17 = v29;
    }

    while (v29 < v13);
  }

  if (!a6)
  {
    v8 = v45;
    v38 = v44;
    goto LABEL_78;
  }

  v8 = v45;
  v38 = v44;
  if (v13)
  {
LABEL_78:
    v39 = a6;
    goto LABEL_83;
  }

  v39 = a6;
  if (v15 < a6)
  {
    do
    {
      SearchNextMarkerOfRTCSubType(v10, a6, VOL_RTC_INTEREST, 1u, &v49, &v48, &v50);
    }

    while (v49 < a6);
  }

  if (v50)
  {
    v40 = (v10 + 32 * v48);
    if (*v40 == 24)
    {
      v41 = v40[6];
      *(a1 + 88) = v41;
    }

    else
    {
      LOWORD(v41) = *(a1 + 88);
    }

    v41 = v41;
    if (v41 >= 0x64u)
    {
      v41 = 100;
    }

    LOWORD(v14) = aVolPar2Amplif[v41];
    *(a1 + 86) = v14;
    *(a1 + 90) = *(a1 + 92);
  }

LABEL_83:
  *(a1 + 92) = v14;
  critsec_Leave(*(a1 + 120));
  if ((v38 & 2) != 0)
  {
    v42 = 1;
  }

  else
  {
    v42 = 5;
  }

  if ((v38 & 1) == 0)
  {
    v42 = 4;
  }

  *(a1 + 40) = v42;
  result = (*(a1 + 32))(*(a1 + 24), v38, v8, a4, v10, v39);
  v43 = *(a1 + 40);
  if (v43 == 5)
  {
    goto LABEL_91;
  }

  if (v43 == 4)
  {
LABEL_10:
    if (!*v8 || !*a4)
    {
LABEL_91:
      *(a1 + 40) = 1;
    }
  }

  return result;
}

uint64_t vol_Break(uint64_t a1, int a2)
{
  result = 2164269062;
  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      return 2164269073;
    }

    else
    {
      result = 0;
      if (a2)
      {
        *(a1 + 112) = 1;
      }
    }
  }

  return result;
}

uint64_t SetVolume(uint64_t a1, unsigned int a2)
{
  v4 = critsec_Enter(*(a1 + 120));
  if ((v4 & 0x80000000) == 0)
  {
    if (a2 >= 0x64)
    {
      v5 = 100;
    }

    else
    {
      v5 = a2;
    }

    *(a1 + 112) = 0;
    *(a1 + 88) = v5;
    v6 = aVolPar2Amplif[v5];
    *(a1 + 86) = v6;
    v7 = *(a1 + 92);
    *(a1 + 90) = v7;
    v8 = v6 == v7;
    if (v6 > v7)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *(a1 + 44) = v9;
    if (v8)
    {
      v10 = 0;
      *(a1 + 44) = 1;
    }

    else
    {
      v10 = *(a1 + 84);
    }

    *(a1 + 82) = v10;
    critsec_Leave(*(a1 + 120));
  }

  return v4;
}

uint64_t acceptor_VolCheckRange(int a1, char *__s1, const char *a3, _DWORD *a4)
{
  v6 = 2164269063;
  *a4 = 1;
  if (!strcmp(__s1, "volume"))
  {
    if (atoi(a3) < 0x65)
    {
      return 0;
    }

    v6 = 2164269071;
  }

  *a4 = 0;
  return v6;
}

uint64_t acceptor_VolLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  v5 = 2164269063;
  if (strcmp(__s1, "volume"))
  {
    return v5;
  }

  v6 = atoi(a3);
  if (v6 > 0x64)
  {
    return 2164269071;
  }

  return SetVolume(a1, v6);
}

uint64_t psi_lookup_ReadStream(unsigned __int8 *a1, int a2, _DWORD *a3, int a4, _WORD *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = 2164269056;
  if (a1 && a2 <= 50)
  {
    if (a2 >= 1)
    {
      v6 = a2;
      v7 = v16;
      do
      {
        v8 = *a1++;
        v9 = vdupq_n_s32(v8);
        *v7++ = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v9, xmmword_1C3827A00), vshlq_u32(v9, xmmword_1C38279F0))), 0x101010101010101);
        --v6;
      }

      while (v6);
    }

    if (a4 >= 1)
    {
      v10 = 0;
      v11 = v16;
      do
      {
        v12 = *a5;
        if (*a5)
        {
          v13 = 0;
          v14 = 0;
          do
          {
            v14 += v11[v13] << v13;
            ++v13;
          }

          while (v12 != v13);
          v11 += v12;
        }

        else
        {
          v14 = 0;
        }

        *a3++ = v14;
        ++a5;
        ++v10;
      }

      while (v10 != a4);
    }

    return 0;
  }

  return v5;
}

uint64_t chi_DecodePolyphone__Create(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, __int128 *a5)
{
  v8 = 0;
  v9 = 0;
  v41 = *MEMORY[0x1E69E9840];
  *v40 = xmmword_1C3827A10;
  *&v40[12] = *(&xmmword_1C3827A10 + 12);
  *(a1 + 80) = 0;
  v10 = a1 + 80;
  *(a1 + 32) = 0;
  *(a1 + 28) = 0;
  *(a1 + 336) = 5;
  *(a1 + 40) = 0u;
  v11 = (a1 + 40);
  *(a1 + 160) = 0;
  *(a1 + 208) = 0;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 132) = 0;
  *(a1 + 138) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  v12 = *a5;
  *(a1 + 252) = a5[1];
  *(a1 + 352) = a2;
  *(a1 + 236) = v12;
  do
  {
    v9 += *&v40[v8];
    v8 += 2;
  }

  while (v8 != 12);
  if ((v9 & 7) != 0)
  {
    v13 = (v9 >> 3) + 1;
  }

  else
  {
    v13 = v9 >> 3;
  }

  Stream = psi_lookup_ReadStream(a4, v13, v36, 6, v40);
  if (Stream)
  {
    return Stream;
  }

  v15 = v38;
  *(a1 + 32) = v37;
  v16 = v39;
  *(a1 + 28) = v39;
  Stream = psi_lookup_ReadStream(&a4[v13], v13, v36, v16, (v40 | 0xC));
  if (Stream)
  {
    return Stream;
  }

  v19 = *(a1 + 28);
  if (v19 >= 1)
  {
    v20 = (a1 + 56);
    memcpy((a1 + 56), v36, 4 * v19);
    v21 = 0;
    v22 = (v40 | 0xC);
    v23 = v19;
    do
    {
      v24 = *v22++;
      v21 += v24;
      --v23;
    }

    while (v23);
    v25 = 0;
    v26 = (v21 & 7) == 0;
    LODWORD(v27) = v13 + ((v21 & 0xFFF8) >> 3);
    if (v26)
    {
      v27 = v27;
    }

    else
    {
      v27 = (v27 + 1);
    }

    v28 = &a4[v27];
    do
    {
      *v11++ = &v28[v25];
      v29 = *v20++;
      v25 += v29;
      --v19;
    }

    while (v19);
  }

  v17 = 2164269066;
  v30 = *(a1 + 32);
  *(a1 + 348) = v30;
  if (smc1175mrf22spi_GetInfo(v30, v15, 0, a1 + 96))
  {
    return 2164269056;
  }

  v31 = heap_Calloc(*(a3 + 8), *(a1 + 126), 1);
  *(a1 + 64) = v31;
  if (!v31 || smc1175mrf22spi_DecoderOpen(*(a1 + 348), v15, &a4[v13 - 4], v31, v10))
  {
    return 2164269056;
  }

  v32 = heap_Calloc(*(a3 + 8), *(a1 + 116), 1);
  *a1 = v32;
  if (v32)
  {
    v33 = heap_Calloc(*(a3 + 8), *(a1 + 120), 1);
    *(a1 + 8) = v33;
    if (v33)
    {
      v34 = heap_Calloc(*(a3 + 8), *(a1 + 120), 1);
      *(a1 + 16) = v34;
      if (v34)
      {
        v35 = heap_Calloc(*(a3 + 8), *(a1 + 128), 1);
        *(a1 + 72) = v35;
        if (v35)
        {
          *(a1 + 232) = 1;
          *(a1 + 24) = *(a1 + 104);
          *(a1 + 132) = 0;
          *(a1 + 134) = *(a1 + 120);
          Stream = vect_s_t__createVect(*(a3 + 8), a1 + 200, *(a1 + 236));
          if (!Stream)
          {
            Stream = vect_s_t__createVect(*(a3 + 8), a1 + 176, *(a1 + 236));
            if (!Stream)
            {
              Stream = vect_s_t__createVect(*(a3 + 8), a1 + 152, *(a1 + 236));
              if (!Stream)
              {
                Stream = vect_i_t__createVect(*(a3 + 8), a1 + 288, 0x1Eu);
                if (!Stream)
                {
                  return vect_i_t__createVect(*(a3 + 8), a1 + 312, 0x1Eu);
                }
              }
            }
          }

          return Stream;
        }
      }
    }
  }

  return v17;
}

uint64_t chi_DecodePolyphone__Delete(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1[9];
  if (v4)
  {
    heap_Free(*(a2 + 8), v4);
    a1[9] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    heap_Free(*(a2 + 8), v5);
    a1[8] = 0;
  }

  v6 = a1[1];
  if (v6)
  {
    heap_Free(*(a2 + 8), v6);
    a1[1] = 0;
  }

  v7 = a1[2];
  if (v7)
  {
    heap_Free(*(a2 + 8), v7);
    a1[2] = 0;
  }

  if (*a1)
  {
    heap_Free(*(a2 + 8), *a1);
    *a1 = 0;
  }

  vect_i_t__deleteVect((a1 + 36));
  vect_i_t__deleteVect((a1 + 39));
  vect_i_t__deleteVect((a1 + 25));
  vect_i_t__deleteVect((a1 + 22));
  vect_i_t__deleteVect((a1 + 19));
  v8 = a1[10];
  if (!v8)
  {
    return 0;
  }

  v9 = a1[11];

  return smc1175mrf22spi_DecoderClose(v8, v9);
}

uint64_t chi_DecodePolyphone__DeinitPoly(void *a1)
{
  v2 = 2164269056;
  v3 = a1[10];
  if (v3 && !smc1175mrf22spi_DecoderResetMemory(v3, a1[11]))
  {
    v2 = 0;
    a1[28] = 0;
  }

  return v2;
}

uint64_t chi_DecodePolyphone__InitPoly(uint64_t a1)
{
  *(a1 + 146) = 2 * *(a1 + 236);
  *(a1 + 232) = 1;
  *(a1 + 24) = *(a1 + 104);
  *(a1 + 224) = 0;
  *(a1 + 340) = 0;
  *(a1 + 276) = 0;
  *(a1 + 268) = 0;
  return 0;
}

uint64_t chi_DecodePolyphone__OneFrame(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 73);
  v37 = *(a1 + 67);
  v38 = v4;
  if (*(a1 + 67) >= *(a1 + 68))
  {
    return 2164269056;
  }

  v36 = 0;
  if (*(a2 + 124) == *(a2 + 56))
  {
    v9 = *(a2 + 120);
    switch(v9)
    {
      case 3:
        v10 = 480;
        break;
      case 2:
        v10 = 320;
        break;
      case 1:
        v10 = 160;
        break;
      default:
        v10 = 640;
        break;
    }

    v38 = v10;
    v36 = v9;
  }

  v12 = *(a2 + 144);
  smc1175mrf22spi_getDecoderBufferSize(a1[10], a1[11], *(a2 + 112), &v37, &v38, *(a1 + 58), &v36);
  if (*(a1 + 67) + v37 + 5 > *(a1 + 68) || (v13 = *(a2 + 124), v14 = *(a2 + 56), v13 == v14) && v12 == 1 || v13 >= v14 && !*(a1 + 58))
  {
    v_equ_i_t(a1[40], a1[37], *(a1 + 84));
    *(a1 + 85) = *(a1 + 86);
  }

  else
  {
    result = smc1175mrf22spi_getSpectrum(a1[10], a1[11], (*(a2 + 112) + v37), a1[40], a1 + 85);
    if (result)
    {
      return result;
    }
  }

  v15 = v37;
  if (v37)
  {
    v16 = 0;
    v17 = *(a1 + 67);
    while (v17 < *(a1 + 68))
    {
      v18 = *(a2 + 112);
      *(a2 + 112) = v18 + 1;
      *(a1[1] + *(a1 + 66) + v16++) = *v18;
      v17 = *(a1 + 67) + 1;
      *(a1 + 67) = v17;
      if (v37 <= v16)
      {
        v15 = 0;
        goto LABEL_25;
      }
    }

    memcpy(a1[1], a1[2], *(a1 + 71));
    v15 = 1;
  }

  else
  {
    v16 = 0;
  }

LABEL_25:
  v19 = *(a1 + 66) + v16;
  *(a1 + 70) = v19;
  *(a1 + 68) = v16;
  *(a1 + 67) = v16;
  *(a1 + 69) += v16;
  *(a1 + 69) = v19;
  if ((v15 & 1) == 0)
  {
    memcpy(a1[2], a1[1], v19);
    *(a1 + 71) = *(a1 + 70);
  }

  v20 = a1[9];
  v22 = *a1;
  v21 = a1[1];
  v23 = a1[40];
  if (*(a1 + 58))
  {
    result = smc1175mrf22spi_DecoderProcess_F1(a1[10], a1[11], v21, a1 + 70, v20, v22, a1 + 72, v23, *(a1 + 85), a3);
    if (result)
    {
      return result;
    }

    *(a1 + 58) = 0;
  }

  else
  {
    result = smc1175mrf22spi_DecoderProcess(a1[10], a1[11], v21, a1 + 70, v20, v22, a1 + 72, v23, *(a1 + 85), v36, a3, a4);
    if (result)
    {
      return result;
    }
  }

  v24 = *(a1 + 73);
  v25 = v38;
  if (v38 != v24)
  {
    *(a1 + 73) = v38;
    LOWORD(v24) = v25;
  }

  v26 = v24 >> 1;
  *(a2 + 8) += v26;
  v27 = *(a1 + 6);
  v28 = *(a1 + 72);
  if (v27 <= v28 >> 1)
  {
    v29 = a1[20];
    v30 = *a1;
    if (v27)
    {
      v_equ_s_t(v29, &v30[v27], (v24 - ((2 * v27) & 0xFFFE)) >> 1);
      v31 = *(a1 + 6);
      *(a1 + 42) = (*(a1 + 73) - 2 * (v31 & 0x7FFF)) >> 1;
      *(a2 + 8) -= v31;
      *(a1 + 6) = 0;
    }

    else
    {
      v_equ_s_t(v29, v30, v26);
      *(a1 + 42) = *(a1 + 73) >> 1;
    }
  }

  else
  {
    *(a1 + 6) = v27 - (v28 >> 1);
    *(a1 + 42) = 0;
  }

  v32 = *(a1 + 70);
  v33 = *(a1 + 69);
  if (v33 <= v32)
  {
    *(a1 + 66) = 0;
    v35 = *(a1 + 60);
  }

  else
  {
    v34 = v33 - v32;
    *(a1 + 66) = v34;
    memmove(a1[1], (a1[1] + v32), v34);
    v35 = *(a1 + 60) - *(a1 + 66);
  }

  *(a1 + 67) = v35;
  v_equ_i_t(a1[37], a1[40], *(a1 + 84));
  result = 0;
  *(a1 + 86) = *(a1 + 85);
  return result;
}

uint64_t chi_DecodePolyphone__SmpRequested(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 236);
  if (v4 < v11)
  {
    v11 = *a3;
  }

  v17 = v11;
  do
  {
    if (v10 >= v4)
    {
      break;
    }

    result = chi_DecodePolyphone__OneFrameX(a1, a2, &v17, a1 + 176);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 192);
    v10 += v13;
    v14 = v4 - v10;
    if (v4 - v10 >= *(a1 + 236))
    {
      v14 = *(a1 + 236);
    }

    v17 = v14;
    v_equ_s_t((*(a4 + 8) + 2 * v9), *(a1 + 184), v13);
    v15 = *(a1 + 192);
    v16 = *(a1 + 280) + v15;
    *(a1 + 280) = v16;
    if (v16 >= a2[32])
    {
      break;
    }

    v9 += v15;
  }

  while (*(a1 + 276) < *(a1 + 272));
  result = 0;
  *a3 = v10;
  return result;
}