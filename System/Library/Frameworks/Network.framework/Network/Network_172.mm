unint64_t ZSTD_HcFindBestMatch_dedicatedDictSearch_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v96 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  if (v9 >= v7)
  {
    v13 = v9 - v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1 << *(a1 + 268);
  v15 = *(a1 + 248);
  v16 = (-1640531535 * *a2) >> (34 - *(v15 + 264));
  v17 = *(v15 + 112);
  _X10 = v17 + 16 * v16;
  __asm { PRFM            #0, [X10] }

  v23 = *(a1 + 112);
  v24 = ~(-1 << v6);
  v25 = *(a1 + 44);
  v26 = 32 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v25 < v9)
    {
      v27 = (-1640531535 * *(v8 + v25)) >> v26;
      *(v5 + 4 * (v25 & v24)) = *(v23 + 4 * v27);
      *(v23 + 4 * v27) = v25;
    }
  }

  else if (v25 < v9)
  {
    do
    {
      v28 = (-1640531535 * *(v8 + v25)) >> v26;
      *(v5 + 4 * (v25 & v24)) = *(v23 + 4 * v28);
      *(v23 + 4 * v28) = v25++;
    }

    while (v9 != v25);
  }

  v29 = 4 * v16;
  *(a1 + 44) = v9;
  v30 = *a2;
  v31 = *(v23 + 4 * ((-1640531535 * *a2) >> v26));
  if (v31 < v12)
  {
    v32 = 3;
    goto LABEL_17;
  }

  v55 = v7 - 1;
  v56 = (a3 - 7);
  v57 = a3 - 1;
  v32 = 3;
  while (1)
  {
    v58 = (v8 + v31);
    if (*&v58[v32 - 3] != *&a2[v32 - 3])
    {
      goto LABEL_62;
    }

    if (v56 <= a2)
    {
      v61 = a2;
      goto LABEL_46;
    }

    v59 = *v58;
    if (v59 != *a2)
    {
      break;
    }

    v58 = (v8 + 8 + v31);
    v60 = a2 + 8;
    while (1)
    {
      v61 = v60;
      if (v60 >= v56)
      {
        break;
      }

      v63 = *v58;
      v58 += 8;
      v62 = v63;
      v60 += 8;
      if (v63 != *v61)
      {
        v64 = &v61[__clz(__rbit64(*v61 ^ v62)) >> 3] - a2;
        if (v64 > v32)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

LABEL_46:
    if (v61 < a3 - 3)
    {
      if (*v58 == *v61)
      {
        v58 += 4;
        v61 += 4;
      }

      if (v61 >= v57)
      {
LABEL_48:
        if (v61 >= a3)
        {
          goto LABEL_51;
        }

LABEL_49:
        if (*v58 == *v61)
        {
          ++v61;
        }

        goto LABEL_51;
      }
    }

    else if (v61 >= v57)
    {
      goto LABEL_48;
    }

    if (*v58 == *v61)
    {
      v58 += 2;
      v61 += 2;
    }

    if (v61 < a3)
    {
      goto LABEL_49;
    }

LABEL_51:
    v64 = v61 - a2;
    if (v61 - a2 > v32)
    {
      goto LABEL_61;
    }

LABEL_62:
    if (v31 > v13)
    {
      if (--v14)
      {
        v31 = *(v5 + 4 * (v31 & v55));
        if (v31 >= v12)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }

  v64 = __clz(__rbit64(*a2 ^ v59)) >> 3;
  if (v64 <= v32)
  {
    goto LABEL_62;
  }

LABEL_61:
  *a4 = v9 + 3 - v31;
  v32 = v64;
  if (&a2[v64] != a3)
  {
    goto LABEL_62;
  }

  v32 = v64;
LABEL_17:
  v34 = *v15;
  v33 = *(v15 + 8);
  v35 = *v15 - v33 - v96;
  v36 = (v17 + 4 * v29);
  v37 = *v36;
  _X9 = v33 + v37;
  __asm { PRFM            #0, [X9] }

  v41 = *(_X10 + 4);
  v40 = *(_X10 + 8);
  _X1 = v33 + v41;
  __asm { PRFM            #0, [X1] }

  _X16 = v33 + v40;
  __asm { PRFM            #0, [X16] }

  if (v14 >= 3)
  {
    v46 = 3;
  }

  else
  {
    v46 = v14;
  }

  v47 = v36[3];
  _X25 = (*(v15 + 128) + 4 * (v47 >> 8));
  __asm { PRFM            #0, [X25] }

  v95 = a3;
  if (!v14)
  {
    v46 = 0;
    goto LABEL_67;
  }

  if (v37)
  {
    v84 = v9 + v35 + 3;
    if (*_X9 != v30 || (v77 = v33 + v41, v78 = v47, v88 = v46, v91 = *v15 - v33 - v96, v85 = *(_X10 + 8), v80 = *(_X10 + 4), v82 = v33 + v40, v50 = ZSTD_count_2segments(a2 + 4, (_X9 + 4), a3, v34, (v8 + v96)), _X1 = v77, LOBYTE(v47) = v78, LODWORD(v41) = v80, _X16 = v82, LODWORD(v40) = v85, v46 = v88, v35 = v91, a3 = v95, v50 + 4 <= v32) || (*a4 = (v84 - v37), v32 = v50 + 4, &a2[v50 + 4] != v95))
    {
      if (v14 == 1)
      {
        goto LABEL_67;
      }

      if (v41)
      {
        if (*_X1 != v30 || (v89 = v46, v92 = v35, v51 = v47, v86 = v40, v81 = v41, v83 = _X16, v52 = ZSTD_count_2segments(a2 + 4, (_X1 + 4), a3, v34, (v8 + v96)), _X16 = v83, LODWORD(v40) = v86, v46 = v89, v35 = v92, LOBYTE(v47) = v51, a3 = v95, v52 + 4 <= v32) || (*a4 = (v84 - v81), v32 = v52 + 4, &a2[v52 + 4] != v95))
        {
          if (v14 == 2)
          {
            goto LABEL_67;
          }

          if (v40)
          {
            if (*_X16 == v30)
            {
              v87 = v40;
              v90 = v46;
              v93 = v35;
              v79 = v47;
              v53 = a3;
              v54 = ZSTD_count_2segments(a2 + 4, (_X16 + 4), a3, v34, (v8 + v96));
              if (v54 + 4 <= v32)
              {
                a3 = v53;
                v46 = v90;
                v35 = v93;
                LOBYTE(v47) = v79;
              }

              else
              {
                *a4 = (v84 - v87);
                v32 = v54 + 4;
                a3 = v53;
                v46 = v90;
                v35 = v93;
                LOBYTE(v47) = v79;
                if (&a2[v54 + 4] == v53)
                {
                  return v32;
                }
              }
            }

LABEL_67:
            if (v14 - v46 >= v47)
            {
              v65 = v47;
            }

            else
            {
              v65 = v14 - v46;
            }

            if (v65)
            {
              v66 = _X25;
              v67 = v65;
              do
              {
                v68 = *v66++;
                _X10 = v33 + v68;
                __asm { PRFM            #0, [X10] }

                --v67;
              }

              while (v67);
              v71 = v9 + v35 + 3;
              do
              {
                v73 = *_X25++;
                v72 = v73;
                v74 = v33 + v73;
                if (*v74 == v30)
                {
                  v75 = ZSTD_count_2segments(a2 + 4, (v74 + 4), a3, v34, (v8 + v96));
                  a3 = v95;
                  if (v75 + 4 > v32)
                  {
                    *a4 = v71 - v72;
                    v32 = v75 + 4;
                    if (&a2[v75 + 4] == v95)
                    {
                      break;
                    }
                  }
                }

                LODWORD(v65) = v65 - 1;
              }

              while (v65);
            }
          }
        }
      }
    }
  }

  return v32;
}

unint64_t ZSTD_HcFindBestMatch_dedicatedDictSearch_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v92 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  if (v9 >= v7)
  {
    v13 = v9 - v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1 << *(a1 + 268);
  v15 = *(a1 + 248);
  v16 = 0xCF1BBCDCBB000000 * *a2;
  v17 = v16 >> (66 - *(v15 + 264));
  v18 = *(v15 + 112);
  _X10 = v18 + 16 * v17;
  __asm { PRFM            #0, [X10] }

  v24 = *(a1 + 112);
  v25 = ~(-1 << v6);
  v26 = *(a1 + 44);
  v27 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v26 < v9)
    {
      v28 = (0xCF1BBCDCBB000000 * *(v8 + v26)) >> v27;
      *(v5 + 4 * (v26 & v25)) = *(v24 + 4 * v28);
      *(v24 + 4 * v28) = v26;
    }
  }

  else if (v26 < v9)
  {
    do
    {
      v29 = (0xCF1BBCDCBB000000 * *(v8 + v26)) >> v27;
      *(v5 + 4 * (v26 & v25)) = *(v24 + 4 * v29);
      *(v24 + 4 * v29) = v26++;
    }

    while (v9 != v26);
  }

  v30 = 4 * v17;
  *(a1 + 44) = v9;
  v31 = *(v24 + 4 * (v16 >> v27));
  if (v31 < v12)
  {
    v32 = 3;
    goto LABEL_17;
  }

  v56 = v7 - 1;
  v57 = (a3 - 7);
  v58 = a3 - 1;
  v32 = 3;
  while (1)
  {
    v59 = (v8 + v31);
    if (*&v59[v32 - 3] != *&a2[v32 - 3])
    {
      goto LABEL_62;
    }

    if (v57 <= a2)
    {
      v62 = a2;
      goto LABEL_46;
    }

    v60 = *v59;
    if (v60 != *a2)
    {
      break;
    }

    v59 = (v8 + 8 + v31);
    v61 = a2 + 8;
    while (1)
    {
      v62 = v61;
      if (v61 >= v57)
      {
        break;
      }

      v64 = *v59;
      v59 += 8;
      v63 = v64;
      v61 += 8;
      if (v64 != *v62)
      {
        v65 = &v62[__clz(__rbit64(*v62 ^ v63)) >> 3] - a2;
        if (v65 > v32)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

LABEL_46:
    if (v62 < a3 - 3)
    {
      if (*v59 == *v62)
      {
        v59 += 4;
        v62 += 4;
      }

      if (v62 >= v58)
      {
LABEL_48:
        if (v62 >= a3)
        {
          goto LABEL_51;
        }

LABEL_49:
        if (*v59 == *v62)
        {
          ++v62;
        }

        goto LABEL_51;
      }
    }

    else if (v62 >= v58)
    {
      goto LABEL_48;
    }

    if (*v59 == *v62)
    {
      v59 += 2;
      v62 += 2;
    }

    if (v62 < a3)
    {
      goto LABEL_49;
    }

LABEL_51:
    v65 = v62 - a2;
    if (v62 - a2 > v32)
    {
      goto LABEL_61;
    }

LABEL_62:
    if (v31 > v13)
    {
      if (--v14)
      {
        v31 = *(v5 + 4 * (v31 & v56));
        if (v31 >= v12)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }

  v65 = __clz(__rbit64(*a2 ^ v60)) >> 3;
  if (v65 <= v32)
  {
    goto LABEL_62;
  }

LABEL_61:
  *a4 = v9 + 3 - v31;
  v32 = v65;
  if (&a2[v65] != a3)
  {
    goto LABEL_62;
  }

  v32 = v65;
LABEL_17:
  v33 = *(v15 + 8);
  v91 = *v15;
  v34 = *v15 - v33 - v92;
  v35 = (v18 + 4 * v30);
  v36 = *v35;
  _X9 = v33 + v36;
  __asm { PRFM            #0, [X9] }

  v40 = *(_X10 + 4);
  v39 = *(_X10 + 8);
  _X27 = (v33 + v40);
  __asm { PRFM            #0, [X27] }

  _X15 = v33 + v39;
  __asm { PRFM            #0, [X15] }

  if (v14 >= 3)
  {
    v45 = 3;
  }

  else
  {
    v45 = v14;
  }

  v46 = v35[3];
  _X19 = (*(v15 + 128) + 4 * (v46 >> 8));
  __asm { PRFM            #0, [X19] }

  v90 = a3;
  if (!v14)
  {
    v45 = 0;
    goto LABEL_67;
  }

  if (v36)
  {
    v85 = v9 + v34 + 3;
    if (*_X9 != *a2 || (v79 = v45, v86 = v46, v81 = v33 + v39, v83 = *(_X10 + 8), v49 = ZSTD_count_2segments(a2 + 4, (_X9 + 4), a3, v91, (v8 + v92)), _X15 = v81, LODWORD(v39) = v83, LOBYTE(v46) = v86, v45 = v79, a3 = v90, v49 + 4 <= v32) || (*a4 = (v85 - v36), v32 = v49 + 4, &a2[v49 + 4] != v90))
    {
      if (v14 == 1)
      {
        goto LABEL_67;
      }

      if (v40)
      {
        if (*_X27 != *a2 || (v50 = (_X27 + 1), v87 = v46, v51 = v45, v82 = _X15, v84 = v39, v52 = ZSTD_count_2segments(a2 + 4, v50, a3, v91, (v8 + v92)), _X15 = v82, LODWORD(v39) = v84, v45 = v51, LOBYTE(v46) = v87, a3 = v90, v52 + 4 <= v32) || (*a4 = (v85 - v40), v32 = v52 + 4, &a2[v52 + 4] != v90))
        {
          if (v14 == 2)
          {
            goto LABEL_67;
          }

          if (v39)
          {
            if (*_X15 == *a2)
            {
              v53 = v39;
              v80 = v45;
              v88 = v46;
              v54 = a3;
              v55 = ZSTD_count_2segments(a2 + 4, (_X15 + 4), a3, v91, (v8 + v92));
              if (v55 + 4 <= v32)
              {
                a3 = v54;
                LOBYTE(v46) = v88;
                v45 = v80;
              }

              else
              {
                LOBYTE(v46) = v88;
                *a4 = (v85 - v53);
                v32 = v55 + 4;
                a3 = v54;
                v45 = v80;
                if (&a2[v55 + 4] == v54)
                {
                  return v32;
                }
              }
            }

LABEL_67:
            if (v14 - v45 >= v46)
            {
              v66 = v46;
            }

            else
            {
              v66 = v14 - v45;
            }

            if (v66)
            {
              v67 = _X19;
              v68 = v66;
              do
              {
                v69 = *v67++;
                _X10 = v33 + v69;
                __asm { PRFM            #0, [X10] }

                --v68;
              }

              while (v68);
              v72 = *a2;
              v73 = v9 + v34 + 3;
              do
              {
                v75 = *_X19++;
                v74 = v75;
                v76 = v33 + v75;
                if (*v76 == v72)
                {
                  v77 = ZSTD_count_2segments(a2 + 4, (v76 + 4), a3, v91, (v8 + v92));
                  a3 = v90;
                  if (v77 + 4 > v32)
                  {
                    *a4 = v73 - v74;
                    v32 = v77 + 4;
                    if (&a2[v77 + 4] == v90)
                    {
                      break;
                    }
                  }
                }

                LODWORD(v66) = v66 - 1;
              }

              while (v66);
            }
          }
        }
      }
    }
  }

  return v32;
}

unint64_t ZSTD_HcFindBestMatch_dedicatedDictSearch_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v92 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  if (v9 >= v7)
  {
    v13 = v9 - v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1 << *(a1 + 268);
  v15 = *(a1 + 248);
  v16 = 0xCF1BBCDCBF9B0000 * *a2;
  v17 = v16 >> (66 - *(v15 + 264));
  v18 = *(v15 + 112);
  _X10 = v18 + 16 * v17;
  __asm { PRFM            #0, [X10] }

  v24 = *(a1 + 112);
  v25 = ~(-1 << v6);
  v26 = *(a1 + 44);
  v27 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v26 < v9)
    {
      v28 = (0xCF1BBCDCBF9B0000 * *(v8 + v26)) >> v27;
      *(v5 + 4 * (v26 & v25)) = *(v24 + 4 * v28);
      *(v24 + 4 * v28) = v26;
    }
  }

  else if (v26 < v9)
  {
    do
    {
      v29 = (0xCF1BBCDCBF9B0000 * *(v8 + v26)) >> v27;
      *(v5 + 4 * (v26 & v25)) = *(v24 + 4 * v29);
      *(v24 + 4 * v29) = v26++;
    }

    while (v9 != v26);
  }

  v30 = 4 * v17;
  *(a1 + 44) = v9;
  v31 = *(v24 + 4 * (v16 >> v27));
  if (v31 < v12)
  {
    v32 = 3;
    goto LABEL_17;
  }

  v56 = v7 - 1;
  v57 = (a3 - 7);
  v58 = a3 - 1;
  v32 = 3;
  while (1)
  {
    v59 = (v8 + v31);
    if (*&v59[v32 - 3] != *&a2[v32 - 3])
    {
      goto LABEL_62;
    }

    if (v57 <= a2)
    {
      v62 = a2;
      goto LABEL_46;
    }

    v60 = *v59;
    if (v60 != *a2)
    {
      break;
    }

    v59 = (v8 + 8 + v31);
    v61 = a2 + 8;
    while (1)
    {
      v62 = v61;
      if (v61 >= v57)
      {
        break;
      }

      v64 = *v59;
      v59 += 8;
      v63 = v64;
      v61 += 8;
      if (v64 != *v62)
      {
        v65 = &v62[__clz(__rbit64(*v62 ^ v63)) >> 3] - a2;
        if (v65 > v32)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

LABEL_46:
    if (v62 < a3 - 3)
    {
      if (*v59 == *v62)
      {
        v59 += 4;
        v62 += 4;
      }

      if (v62 >= v58)
      {
LABEL_48:
        if (v62 >= a3)
        {
          goto LABEL_51;
        }

LABEL_49:
        if (*v59 == *v62)
        {
          ++v62;
        }

        goto LABEL_51;
      }
    }

    else if (v62 >= v58)
    {
      goto LABEL_48;
    }

    if (*v59 == *v62)
    {
      v59 += 2;
      v62 += 2;
    }

    if (v62 < a3)
    {
      goto LABEL_49;
    }

LABEL_51:
    v65 = v62 - a2;
    if (v62 - a2 > v32)
    {
      goto LABEL_61;
    }

LABEL_62:
    if (v31 > v13)
    {
      if (--v14)
      {
        v31 = *(v5 + 4 * (v31 & v56));
        if (v31 >= v12)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }

  v65 = __clz(__rbit64(*a2 ^ v60)) >> 3;
  if (v65 <= v32)
  {
    goto LABEL_62;
  }

LABEL_61:
  *a4 = v9 + 3 - v31;
  v32 = v65;
  if (&a2[v65] != a3)
  {
    goto LABEL_62;
  }

  v32 = v65;
LABEL_17:
  v33 = *(v15 + 8);
  v91 = *v15;
  v34 = *v15 - v33 - v92;
  v35 = (v18 + 4 * v30);
  v36 = *v35;
  _X9 = v33 + v36;
  __asm { PRFM            #0, [X9] }

  v40 = *(_X10 + 4);
  v39 = *(_X10 + 8);
  _X27 = (v33 + v40);
  __asm { PRFM            #0, [X27] }

  _X15 = v33 + v39;
  __asm { PRFM            #0, [X15] }

  if (v14 >= 3)
  {
    v45 = 3;
  }

  else
  {
    v45 = v14;
  }

  v46 = v35[3];
  _X19 = (*(v15 + 128) + 4 * (v46 >> 8));
  __asm { PRFM            #0, [X19] }

  v90 = a3;
  if (!v14)
  {
    v45 = 0;
    goto LABEL_67;
  }

  if (v36)
  {
    v85 = v9 + v34 + 3;
    if (*_X9 != *a2 || (v79 = v45, v86 = v46, v81 = v33 + v39, v83 = *(_X10 + 8), v49 = ZSTD_count_2segments(a2 + 4, (_X9 + 4), a3, v91, (v8 + v92)), _X15 = v81, LODWORD(v39) = v83, LOBYTE(v46) = v86, v45 = v79, a3 = v90, v49 + 4 <= v32) || (*a4 = (v85 - v36), v32 = v49 + 4, &a2[v49 + 4] != v90))
    {
      if (v14 == 1)
      {
        goto LABEL_67;
      }

      if (v40)
      {
        if (*_X27 != *a2 || (v50 = (_X27 + 1), v87 = v46, v51 = v45, v82 = _X15, v84 = v39, v52 = ZSTD_count_2segments(a2 + 4, v50, a3, v91, (v8 + v92)), _X15 = v82, LODWORD(v39) = v84, v45 = v51, LOBYTE(v46) = v87, a3 = v90, v52 + 4 <= v32) || (*a4 = (v85 - v40), v32 = v52 + 4, &a2[v52 + 4] != v90))
        {
          if (v14 == 2)
          {
            goto LABEL_67;
          }

          if (v39)
          {
            if (*_X15 == *a2)
            {
              v53 = v39;
              v80 = v45;
              v88 = v46;
              v54 = a3;
              v55 = ZSTD_count_2segments(a2 + 4, (_X15 + 4), a3, v91, (v8 + v92));
              if (v55 + 4 <= v32)
              {
                a3 = v54;
                LOBYTE(v46) = v88;
                v45 = v80;
              }

              else
              {
                LOBYTE(v46) = v88;
                *a4 = (v85 - v53);
                v32 = v55 + 4;
                a3 = v54;
                v45 = v80;
                if (&a2[v55 + 4] == v54)
                {
                  return v32;
                }
              }
            }

LABEL_67:
            if (v14 - v45 >= v46)
            {
              v66 = v46;
            }

            else
            {
              v66 = v14 - v45;
            }

            if (v66)
            {
              v67 = _X19;
              v68 = v66;
              do
              {
                v69 = *v67++;
                _X10 = v33 + v69;
                __asm { PRFM            #0, [X10] }

                --v68;
              }

              while (v68);
              v72 = *a2;
              v73 = v9 + v34 + 3;
              do
              {
                v75 = *_X19++;
                v74 = v75;
                v76 = v33 + v75;
                if (*v76 == v72)
                {
                  v77 = ZSTD_count_2segments(a2 + 4, (v76 + 4), a3, v91, (v8 + v92));
                  a3 = v90;
                  if (v77 + 4 > v32)
                  {
                    *a4 = v73 - v74;
                    v32 = v77 + 4;
                    if (&a2[v77 + 4] == v90)
                    {
                      break;
                    }
                  }
                }

                LODWORD(v66) = v66 - 1;
              }

              while (v66);
            }
          }
        }
      }
    }
  }

  return v32;
}

uint64_t ZSTD_compressBlock_greedy_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 272);
  if (v12 >= 6)
  {
    v12 = 6;
  }

  if (v12 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 268);
  if (v14 >= 6)
  {
    v15 = 6;
  }

  else
  {
    v15 = *(a1 + 268);
  }

  if (v15 <= 4)
  {
    v15 = 4;
  }

  v178 = v15;
  v16 = *a3;
  v17 = a3[1];
  v171 = v10 + v11;
  if (v5 == v10 + v11)
  {
    v18 = v5 + 1;
  }

  else
  {
    v18 = v5;
  }

  v19 = v18 - v10;
  v20 = 1 << *(a1 + 256);
  v21 = v18 - v10 - v20;
  v165 = v18 - v10 - v11 > v20;
  v22 = *(a1 + 44);
  if (v165 && *(a1 + 40) == 0)
  {
    LODWORD(v11) = v21;
  }

  v24 = v19 - v11;
  if (v17 <= v19 - v11)
  {
    v25 = v17;
  }

  else
  {
    v25 = 0;
  }

  if (v16 <= v24)
  {
    v26 = v16;
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 300) = 0;
  v27 = v9 - (v10 + v22);
  if ((v27 + 1) < 8)
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = 8;
  }

  if (v9 >= v10 + v22)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = (v29 + v22);
  v177 = v10;
  if (v22 < v30)
  {
    v31 = *(a1 + 112);
    v32 = *(a1 + 56);
    v33 = *(a1 + 52);
    v34 = *(a1 + 96);
    v35 = 56 - v33;
    v36 = 24 - v33;
    v37 = a1 + 64;
    if (v14 > 4)
    {
      if (v14 == 5)
      {
        do
        {
          if (v13 == 6)
          {
            v48 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v34) >> v35;
            v49 = v178;
          }

          else
          {
            v49 = v178;
            if (v13 == 5)
            {
              v48 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v34) >> v35;
            }

            else
            {
              LODWORD(v48) = ((-1640531535 * *(v10 + v22)) ^ v34) >> v36;
            }
          }

          v50 = v48 >> 8 << v49;
          _X3 = v31 + 4 * v50;
          __asm
          {
            PRFM            #0, [X3]
            PRFM            #0, [X3,#0x40]
          }

          _X3 = v32 + v50;
          __asm { PRFM            #0, [X3] }

          *(v37 + 4 * (v22++ & 7)) = v48;
          v10 = v177;
        }

        while (v30 != v22);
      }

      else if (v13 == 6)
      {
        do
        {
          v64 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v34) >> v35;
          v65 = v64 >> 8 << v178;
          _X0 = v31 + 4 * v65;
          __asm
          {
            PRFM            #0, [X0]
            PRFM            #0, [X0,#0x40]
          }

          _X17 = v32 + v65;
          __asm
          {
            PRFM            #0, [X17]
            PRFM            #0, [X17,#0x20]
          }

          *(v37 + 4 * (v22++ & 7)) = v64;
        }

        while (v30 != v22);
      }

      else if (v13 == 5)
      {
        do
        {
          v56 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v34) >> v35;
          v57 = v56 >> 8 << v178;
          _X0 = v31 + 4 * v57;
          __asm
          {
            PRFM            #0, [X0]
            PRFM            #0, [X0,#0x40]
          }

          _X17 = v32 + v57;
          __asm
          {
            PRFM            #0, [X17]
            PRFM            #0, [X17,#0x20]
          }

          *(v37 + 4 * (v22++ & 7)) = v56;
        }

        while (v30 != v22);
      }

      else
      {
        do
        {
          v72 = ((-1640531535 * *(v10 + v22)) ^ v34) >> v36;
          v73 = v72 >> 8 << v178;
          _X0 = v31 + 4 * v73;
          __asm
          {
            PRFM            #0, [X0]
            PRFM            #0, [X0,#0x40]
          }

          _X17 = v32 + v73;
          __asm
          {
            PRFM            #0, [X17]
            PRFM            #0, [X17,#0x20]
          }

          *(v37 + 4 * (v22++ & 7)) = v72;
        }

        while (v30 != v22);
      }
    }

    else
    {
      do
      {
        if (v13 == 6)
        {
          v38 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v34) >> v35;
          v39 = v178;
        }

        else
        {
          v39 = v178;
          if (v13 == 5)
          {
            v38 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v34) >> v35;
          }

          else
          {
            LODWORD(v38) = ((-1640531535 * *(v10 + v22)) ^ v34) >> v36;
          }
        }

        v40 = v38 >> 8 << v39;
        _X3 = v31 + 4 * v40;
        __asm { PRFM            #0, [X3] }

        _X3 = v32 + v40;
        __asm { PRFM            #0, [X3] }

        *(v37 + 4 * (v22++ & 7)) = v38;
        v10 = v177;
      }

      while (v30 != v22);
    }
  }

  if (v18 < v9)
  {
    v167 = v24;
    v168 = v17;
    v169 = v16;
    v170 = a3;
    v80 = v8;
    v81 = (v8 - 7);
    v82 = v8 - 3;
    v83 = v8 - 1;
    v84 = v8 - 32;
    v85 = v7 + 64;
    v173 = v7;
    v174 = v8;
    v172 = v9;
    v86 = v178;
    v175 = v8 - 1;
    v176 = v8 - 3;
    while (!v26 || *&v18[-v26 + 1] != *(v18 + 1))
    {
      v179 = 999999999;
      if (v13 == 6)
      {
        if (v86 == 6)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_6_6(v7, v18, v80, &v179);
        }

        else if (v86 == 5)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_6_5(v7, v18, v80, &v179);
        }

        else
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_6_4(v7, v18, v80, &v179);
        }
      }

      else if (v13 == 5)
      {
        if (v86 == 6)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_5_6(v7, v18, v80, &v179);
        }

        else if (v86 == 5)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_5_5(v7, v18, v80, &v179);
        }

        else
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_5_4(v7, v18, v80, &v179);
        }
      }

      else if (v86 == 6)
      {
        BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_4_6(v7, v18, v80, &v179);
      }

      else if (v86 == 5)
      {
        BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_4_5(v7, v18, v80, &v179);
      }

      else
      {
        BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_4_4(v7, v18, v80, &v179);
      }

      v9 = v172;
      v10 = v177;
      if (BestMatch_noDict_6_6 <= 3)
      {
        v111 = v18 - v5;
        v18 += ((v18 - v5) >> 8) + 1;
        v7 = v173;
        v80 = v174;
        *(v173 + 300) = v111 > 0x7FF;
        v86 = v178;
LABEL_200:
        v83 = v175;
        v82 = v176;
        goto LABEL_59;
      }

      v96 = v179;
      v7 = v173;
      v80 = v174;
      v86 = v178;
      if (v179 >= 4)
      {
        if (v18 > v5 && &v18[-v179 + 3] > v171)
        {
          v112 = 2 - v179;
          v113 = v18;
          while (1)
          {
            v114 = *--v113;
            if (v114 != v18[v112])
            {
              break;
            }

            ++BestMatch_noDict_6_6;
            if (v113 > v5)
            {
              v115 = &v18[v112];
              v18 = v113;
              if (v115 > v171)
              {
                continue;
              }
            }

            goto LABEL_129;
          }
        }

        v113 = v18;
LABEL_129:
        v25 = v26;
        v26 = (v179 - 3);
        v18 = v113;
      }

LABEL_95:
      v97 = v18 - v5;
      v98 = *(a2 + 24);
      if (v18 > v84)
      {
        if (v5 <= v84)
        {
          v99 = (v98 + v84 - v5);
          *v98 = *v5;
          if (v84 - v5 >= 17)
          {
            v100 = v98 + 1;
            v101 = (v5 + 32);
            do
            {
              *v100 = *(v101 - 1);
              v102 = *v101;
              v101 += 2;
              v100[1] = v102;
              v100 += 2;
            }

            while (v100 < v99);
          }

          v5 = v84;
          v98 = v99;
        }

        if (v5 >= v18)
        {
          goto LABEL_142;
        }

        v103 = v18 - v5;
        if ((v18 - v5) < 8)
        {
          v116 = v98;
        }

        else if ((v98 - v5) < 0x20)
        {
          v116 = v98;
        }

        else
        {
          if (v103 < 0x20)
          {
            v104 = 0;
LABEL_136:
            v121 = v103 & 0xFFFFFFFFFFFFFFF8;
            v116 = v98 + (v103 & 0xFFFFFFFFFFFFFFF8);
            v122 = v104 - (v103 & 0xFFFFFFFFFFFFFFF8);
            v123 = &v5[v104];
            v124 = (v98 + v104);
            do
            {
              v125 = *v123;
              v123 += 8;
              *v124++ = v125;
              v122 += 8;
            }

            while (v122);
            if (v103 != v121)
            {
              v5 += v121;
              goto LABEL_141;
            }

LABEL_142:
            *(a2 + 24) += v97;
            v110 = *(a2 + 8);
            if (v97 >= 0x10000)
            {
              v127 = (v110 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v127;
            }

            goto LABEL_144;
          }

          v104 = v103 & 0xFFFFFFFFFFFFFFE0;
          v117 = (v5 + 16);
          v118 = v98 + 1;
          v119 = v103 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v120 = *v117;
            *(v118 - 1) = *(v117 - 1);
            *v118 = v120;
            v117 += 2;
            v118 += 2;
            v119 -= 32;
          }

          while (v119);
          if (v103 == v104)
          {
            goto LABEL_142;
          }

          if ((v103 & 0x18) != 0)
          {
            goto LABEL_136;
          }

          v5 += v104;
          v116 = v98 + v104;
        }

        do
        {
LABEL_141:
          v126 = *v5++;
          *v116++ = v126;
        }

        while (v5 != v18);
        goto LABEL_142;
      }

      *v98 = *v5;
      v105 = *(a2 + 24);
      if (v97 > 0x10)
      {
        *(v105 + 16) = *(v5 + 1);
        if (v97 >= 33)
        {
          v106 = v105 + v97;
          v107 = (v105 + 32);
          v108 = (v5 + 48);
          do
          {
            *v107 = *(v108 - 1);
            v109 = *v108;
            v108 += 2;
            v107[1] = v109;
            v107 += 2;
          }

          while (v107 < v106);
        }

        goto LABEL_142;
      }

      *(a2 + 24) = v105 + v97;
      v110 = *(a2 + 8);
LABEL_144:
      *(v110 + 4) = v97;
      *v110 = v96;
      if (BestMatch_noDict_6_6 - 3 >= 0x10000)
      {
        v128 = (v110 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v128;
      }

      *(v110 + 6) = BestMatch_noDict_6_6 - 3;
      v129 = v110 + 8;
      *(a2 + 8) = v110 + 8;
      if (*(v7 + 300))
      {
        v130 = *(v7 + 44);
        v131 = v9 - (v10 + v130);
        if ((v131 + 1) < 8)
        {
          v132 = v131 + 1;
        }

        else
        {
          v132 = 8;
        }

        if (v9 >= v10 + v130)
        {
          v133 = v132;
        }

        else
        {
          v133 = 0;
        }

        v134 = (v133 + v130);
        if (v130 < v134)
        {
          v135 = *(v7 + 112);
          v136 = *(v7 + 56);
          v137 = *(v7 + 52);
          v138 = *(v7 + 96);
          v139 = 56 - v137;
          v140 = 24 - v137;
          do
          {
            if (v13 == 5)
            {
              v143 = 0xCF1BBCDCBB000000 * *(v10 + v130);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v144) = ((-1640531535 * *(v10 + v130)) ^ v138) >> v140;
                goto LABEL_163;
              }

              v143 = 0xCF1BBCDCBF9B0000 * *(v10 + v130);
            }

            v144 = (v143 ^ v138) >> v139;
LABEL_163:
            v145 = v144 >> 8 << v86;
            _X1 = v135 + 4 * v145;
            __asm { PRFM            #0, [X1] }

            if (v14 <= 4)
            {
              _X17 = v136 + v145;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v136 + v145;
              __asm { PRFM            #0, [X17] }

              if (v14 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v85 + 4 * (v130++ & 7)) = v144;
          }

          while (v134 != v130);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v18[BestMatch_noDict_6_6];
      if (!v25)
      {
        v18 += BestMatch_noDict_6_6;
        goto LABEL_200;
      }

      v83 = v175;
      v82 = v176;
      if (v5 > v9)
      {
        goto LABEL_58;
      }

      v152 = v26;
      v153 = v25;
      while (1)
      {
        v26 = v153;
        v153 = v152;
        if (*v5 != *&v5[-v26])
        {
          v25 = v26;
          v26 = v152;
          goto LABEL_58;
        }

        v154 = v5 + 4;
        v155 = &v5[-v26 + 4];
        if (v81 <= (v5 + 4))
        {
          v158 = v5 + 4;
          goto LABEL_178;
        }

        v156 = *v155;
        if (v156 == *v154)
        {
          v157 = v5 + 12;
          v155 = &v5[-v26 + 12];
          while (1)
          {
            v158 = v157;
            if (v157 >= v81)
            {
              break;
            }

            v160 = *v155;
            v155 += 8;
            v159 = v160;
            v157 += 8;
            if (v160 != *v158)
            {
              v158 = (v158 + (__clz(__rbit64(*v158 ^ v159)) >> 3));
              goto LABEL_185;
            }
          }

LABEL_178:
          if (v158 >= v176)
          {
            if (v158 >= v175)
            {
              goto LABEL_182;
            }
          }

          else
          {
            if (*v155 == *v158)
            {
              v155 += 4;
              v158 = (v158 + 4);
            }

            if (v158 >= v175)
            {
LABEL_182:
              if (v158 < v80)
              {
                goto LABEL_183;
              }

              goto LABEL_185;
            }
          }

          if (*v155 == *v158)
          {
            v155 += 2;
            v158 = (v158 + 2);
          }

          if (v158 < v80)
          {
LABEL_183:
            if (*v155 == *v158)
            {
              v158 = (v158 + 1);
            }
          }

LABEL_185:
          v161 = v158 - v154;
          if (v5 > v84)
          {
            goto LABEL_187;
          }

LABEL_186:
          **(a2 + 24) = *v5;
          v129 = *(a2 + 8);
          goto LABEL_187;
        }

        v161 = __clz(__rbit64(*v154 ^ v156)) >> 3;
        if (v5 <= v84)
        {
          goto LABEL_186;
        }

LABEL_187:
        *(v129 + 4) = 0;
        *v129 = 1;
        if (v161 + 1 >= 0x10000)
        {
          v162 = (v129 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v162;
        }

        *(v129 + 6) = v161 + 1;
        v129 += 8;
        *(a2 + 8) = v129;
        v5 += v161 + 4;
        if (!v153)
        {
          break;
        }

        v152 = v26;
        v25 = v153;
        v18 = v5;
        if (v5 > v9)
        {
          goto LABEL_59;
        }
      }

      v25 = v153;
LABEL_58:
      v18 = v5;
LABEL_59:
      if (v18 >= v9)
      {
        v8 = v80;
        a3 = v170;
        v17 = v168;
        v16 = v169;
        v24 = v167;
        goto LABEL_203;
      }
    }

    v87 = v18 + 5;
    v88 = &v18[-v26 + 5];
    if (v81 <= (v18 + 5))
    {
      v91 = v18 + 5;
    }

    else
    {
      v89 = *v88;
      if (v89 != *v87)
      {
        v95 = __clz(__rbit64(*v87 ^ v89)) >> 3;
        goto LABEL_94;
      }

      v90 = v18 + 13;
      v88 = &v18[-v26 + 13];
      while (1)
      {
        v91 = v90;
        if (v90 >= v81)
        {
          break;
        }

        v93 = *v88;
        v88 += 8;
        v92 = v93;
        ++v90;
        if (v93 != *v91)
        {
          v91 = (v91 + (__clz(__rbit64(*v91 ^ v92)) >> 3));
          goto LABEL_81;
        }
      }
    }

    if (v91 >= v82)
    {
      if (v91 >= v83)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (*v88 == *v91)
      {
        v88 += 4;
        v91 = (v91 + 4);
      }

      if (v91 >= v83)
      {
LABEL_78:
        if (v91 >= v80)
        {
LABEL_81:
          v95 = v91 - v87;
LABEL_94:
          BestMatch_noDict_6_6 = v95 + 4;
          ++v18;
          v96 = 1;
          goto LABEL_95;
        }

LABEL_79:
        if (*v88 == *v91)
        {
          v91 = (v91 + 1);
        }

        goto LABEL_81;
      }
    }

    if (*v88 == *v91)
    {
      v88 += 2;
      v91 = (v91 + 2);
    }

    if (v91 >= v80)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

LABEL_203:
  if (v16 <= v24)
  {
    v163 = 0;
  }

  else
  {
    v163 = v16;
  }

  if (v17 <= v24)
  {
    v164 = 0;
  }

  else
  {
    v164 = v17;
  }

  if (v26)
  {
    v163 = v26;
    v165 = v16 > v24;
  }

  else
  {
    v165 = 0;
  }

  if (v165)
  {
    v164 = v16;
  }

  if (v25)
  {
    v164 = v25;
  }

  *a3 = v163;
  a3[1] = v164;
  return v8 - v5;
}

unint64_t ZSTD_RowFindBestMatch_noDict_4_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v98 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 4)
  {
    LOBYTE(v12) = 4;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    v14 = ((-1640531535 * *a2) ^ v13) >> (24 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v72 = v16 + 96;
        do
        {
          v73 = ((-1640531535 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (24 - v6);
          v74 = (v73 >> 4) & 0xFFFFFF0;
          _X23 = v4 + 4 * v74;
          __asm { PRFM            #0, [X23] }

          _X22 = v5 + v74;
          __asm { PRFM            #0, [X22] }

          v79 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v73;
          v80 = (v79 >> 4) & 0xFFFFFF0;
          v81 = v4 + 4 * v80;
          v82 = (v5 + v80);
          if (((*v82 - 1) & 0xF) != 0)
          {
            v83 = 0;
          }

          else
          {
            v83 = 15;
          }

          v84 = v83 + ((*v82 - 1) & 0xF);
          *v82 = v84;
          v82[v84] = v79;
          *(v81 + 4 * v84) = v16++;
        }

        while (v72 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v85 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v86 = a2 + 1 - (v7 + v85);
      if ((v86 + 1) < 8)
      {
        v87 = v86 + 1;
      }

      else
      {
        v87 = 8;
      }

      if ((a2 + 1) >= v7 + v85)
      {
        v88 = v87;
      }

      else
      {
        v88 = 0;
      }

      if (v85 < v88 + v85)
      {
        v89 = *(a1 + 96);
        v90 = 24 - *(a1 + 52);
        do
        {
          v91 = ((-1640531535 * *(v7 + v85)) ^ v89) >> v90;
          v92 = (v91 >> 4) & 0xFFFFFF0;
          _X25 = v18 + 4 * v92;
          __asm { PRFM            #0, [X25] }

          _X24 = v17 + v92;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v85++ & 7)) = v91;
          --v88;
        }

        while (v88);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 24 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((-1640531535 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 4) & 0xFFFFFF0;
        _X25 = v18 + 4 * v24;
        __asm { PRFM            #0, [X25] }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v32 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v33 = (v32 >> 4) & 0xFFFFFF0;
        v34 = v18 + 4 * v33;
        v35 = (v17 + v33);
        if (((*v35 - 1) & 0xF) != 0)
        {
          v36 = 0;
        }

        else
        {
          v36 = 15;
        }

        v37 = v36 + ((*v35 - 1) & 0xF);
        *v35 = v37;
        v35[v37] = v32;
        *(v34 + 4 * v37) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v38 = ((-1640531535 * *(v7 + v22 + 8)) ^ v13) >> (24 - v6);
    v39 = (v38 >> 4) & 0xFFFFFF0;
    _X4 = v4 + 4 * v39;
    __asm { PRFM            #0, [X4] }

    _X15 = v5 + v39;
    __asm { PRFM            #0, [X15] }

    v14 = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v38;
  }

  *(a1 + 104) += v14;
  v44 = (v14 >> 4) & 0xFFFFFF0;
  v45 = v4 + 4 * v44;
  v46 = (v5 + v44);
  v47 = 4 * v46->i8[0];
  v48 = *v46;
  v49 = __ROR8__(vshrn_n_s16(vceqq_s8(*v46, vdupq_n_s8(v14)), 4uLL), v47) & 0x8888888888888888;
  if (v49)
  {
    v50 = 0;
    v51 = 1 << v12;
    do
    {
      v52 = ((__clz(__rbit64(v49)) + (v47 & 0xFC)) >> 2) & 0xF;
      if (v52)
      {
        v53 = *(v45 + 4 * v52);
        if (v53 < v11)
        {
          break;
        }

        _X7 = v7 + v53;
        __asm { PRFM            #0, [X7] }

        v97[v50++] = v53;
        --v51;
      }

      v49 &= v49 - 1;
    }

    while (v49 && v51);
  }

  else
  {
    v50 = 0;
  }

  if (((v48 - 1) & 0xF) != 0)
  {
    v56 = 0;
  }

  else
  {
    v56 = 15;
  }

  v57 = v56 + ((v48 - 1) & 0xF);
  v46->i8[0] = v57;
  v46->i8[v57] = v14;
  v58 = *(a1 + 44);
  *(a1 + 44) = v58 + 1;
  *(v45 + 4 * v57) = v58;
  if (v50)
  {
    v59 = 0;
    v60 = a3 - 7;
    v61 = a3 - 1;
    v62 = v8 + 3;
    v63 = 3;
    while (1)
    {
      v65 = v97[v59];
      v66 = (v7 + v65);
      if (*(v7 + v65 + v63 - 3) != *&a2[v63 - 3])
      {
        goto LABEL_36;
      }

      if (v60 <= a2)
      {
        v69 = a2;
        goto LABEL_46;
      }

      v67 = *v66;
      if (v67 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v67)) >> 3;
      if (result <= v63)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v62 - v65;
      v63 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_36:
      ++v59;
      result = v63;
      if (v59 == v50)
      {
        return result;
      }
    }

    v66 = (v7 + 8 + v65);
    v68 = a2 + 8;
    while (1)
    {
      v69 = v68;
      if (v68 >= v60)
      {
        break;
      }

      v71 = *v66;
      v66 += 4;
      v70 = v71;
      v68 += 8;
      if (v71 != *v69)
      {
        result = &v69[__clz(__rbit64(*v69 ^ v70)) >> 3] - a2;
        if (result <= v63)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v69 < a3 - 3)
    {
      if (*v66 == *v69)
      {
        v66 += 2;
        v69 += 4;
      }

      if (v69 >= v61)
      {
LABEL_48:
        if (v69 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v69 >= v61)
    {
      goto LABEL_48;
    }

    if (*v66 == *v69)
    {
      ++v66;
      v69 += 2;
    }

    if (v69 >= a3)
    {
LABEL_51:
      result = v69 - a2;
      if (v69 - a2 <= v63)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v66 == *v69)
    {
      ++v69;
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_4_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 5)
  {
    LOBYTE(v12) = 5;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    v14 = ((-1640531535 * *a2) ^ v13) >> (24 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v75 = v16 + 96;
        do
        {
          v76 = ((-1640531535 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (24 - v6);
          v77 = (v76 >> 3) & 0x1FFFFFE0;
          _X23 = v4 + 4 * v77;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v77;
          __asm { PRFM            #0, [X22] }

          v83 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v76;
          v84 = (v83 >> 3) & 0x1FFFFFE0;
          v85 = v4 + 4 * v84;
          v86 = (v5 + v84);
          if (((*v86 - 1) & 0x1F) != 0)
          {
            v87 = 0;
          }

          else
          {
            v87 = 31;
          }

          v88 = v87 + ((*v86 - 1) & 0x1F);
          *v86 = v88;
          v86[v88] = v83;
          *(v85 + 4 * v88) = v16++;
        }

        while (v75 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v89 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v90 = a2 + 1 - (v7 + v89);
      if ((v90 + 1) < 8)
      {
        v91 = v90 + 1;
      }

      else
      {
        v91 = 8;
      }

      if ((a2 + 1) >= v7 + v89)
      {
        v92 = v91;
      }

      else
      {
        v92 = 0;
      }

      if (v89 < v92 + v89)
      {
        v93 = *(a1 + 96);
        v94 = 24 - *(a1 + 52);
        do
        {
          v95 = ((-1640531535 * *(v7 + v89)) ^ v93) >> v94;
          v96 = (v95 >> 3) & 0x1FFFFFE0;
          _X25 = v18 + 4 * v96;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v96;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v89++ & 7)) = v95;
          --v92;
        }

        while (v92);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 24 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((-1640531535 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 3) & 0x1FFFFFE0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v33 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v34 = (v33 >> 3) & 0x1FFFFFE0;
        v35 = v18 + 4 * v34;
        v36 = (v17 + v34);
        if (((*v36 - 1) & 0x1F) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = 31;
        }

        v38 = v37 + ((*v36 - 1) & 0x1F);
        *v36 = v38;
        v36[v38] = v33;
        *(v35 + 4 * v38) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v39 = ((-1640531535 * *(v7 + v22 + 8)) ^ v13) >> (24 - v6);
    v40 = (v39 >> 3) & 0x1FFFFFE0;
    _X4 = v4 + 4 * v40;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v40;
    __asm { PRFM            #0, [X15] }

    v14 = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v39;
  }

  *(a1 + 104) += v14;
  v46 = (v14 >> 3) & 0x1FFFFFE0;
  v47 = v4 + 4 * v46;
  v48 = (v5 + v46);
  v104 = vld2q_s16(v48);
  v49 = *v48;
  v50 = 2 * *v48;
  v51 = vdupq_n_s8(v14);
  v52 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v51, v104.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v51, v104.val[1]), 6uLL), 4uLL), v50) & 0x5555555555555555;
  if (v52)
  {
    v53 = 0;
    v54 = 1 << v12;
    do
    {
      v55 = ((__clz(__rbit64(v52)) + (v50 & 0xFE)) >> 1) & 0x1F;
      if (v55)
      {
        v56 = *(v47 + 4 * v55);
        if (v56 < v11)
        {
          break;
        }

        _X7 = v7 + v56;
        __asm { PRFM            #0, [X7] }

        v102[v53++] = v56;
        --v54;
      }

      v52 &= v52 - 1;
    }

    while (v52 && v54);
  }

  else
  {
    v53 = 0;
  }

  if (((v49 - 1) & 0x1F) != 0)
  {
    v59 = 0;
  }

  else
  {
    v59 = 31;
  }

  v60 = v59 + ((v49 - 1) & 0x1F);
  *v48 = v60;
  *(v48 + v60) = v14;
  v61 = *(a1 + 44);
  *(a1 + 44) = v61 + 1;
  *(v47 + 4 * v60) = v61;
  if (v53)
  {
    v62 = 0;
    v63 = a3 - 7;
    v64 = a3 - 1;
    v65 = v8 + 3;
    v66 = 3;
    while (1)
    {
      v68 = v102[v62];
      v69 = (v7 + v68);
      if (*(v7 + v68 + v66 - 3) != *&a2[v66 - 3])
      {
        goto LABEL_36;
      }

      if (v63 <= a2)
      {
        v72 = a2;
        goto LABEL_46;
      }

      v70 = *v69;
      if (v70 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v70)) >> 3;
      if (result <= v66)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v65 - v68;
      v66 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_36:
      ++v62;
      result = v66;
      if (v62 == v53)
      {
        return result;
      }
    }

    v69 = (v7 + 8 + v68);
    v71 = a2 + 8;
    while (1)
    {
      v72 = v71;
      if (v71 >= v63)
      {
        break;
      }

      v74 = *v69;
      v69 += 4;
      v73 = v74;
      v71 += 8;
      if (v74 != *v72)
      {
        result = &v72[__clz(__rbit64(*v72 ^ v73)) >> 3] - a2;
        if (result <= v66)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v72 < a3 - 3)
    {
      if (*v69 == *v72)
      {
        v69 += 2;
        v72 += 4;
      }

      if (v72 >= v64)
      {
LABEL_48:
        if (v72 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v72 >= v64)
    {
      goto LABEL_48;
    }

    if (*v69 == *v72)
    {
      ++v69;
      v72 += 2;
    }

    if (v72 >= a3)
    {
LABEL_51:
      result = v72 - a2;
      if (v72 - a2 <= v66)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v69 == *v72)
    {
      ++v72;
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_4_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 6)
  {
    LOBYTE(v12) = 6;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    v14 = ((-1640531535 * *a2) ^ v13) >> (24 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v77 = v16 + 96;
        do
        {
          v78 = ((-1640531535 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (24 - v6);
          v79 = (v78 >> 2) & 0x3FFFFFC0;
          _X23 = v4 + 4 * v79;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v79;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v86 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v78;
          v87 = (v86 >> 2) & 0x3FFFFFC0;
          v88 = v4 + 4 * v87;
          v89 = (v5 + v87);
          if (((*v89 - 1) & 0x3F) != 0)
          {
            v90 = 0;
          }

          else
          {
            v90 = 63;
          }

          v91 = v90 + ((*v89 - 1) & 0x3F);
          *v89 = v91;
          v89[v91] = v86;
          *(v88 + 4 * v91) = v16++;
        }

        while (v77 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v92 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v93 = a2 + 1 - (v7 + v92);
      if ((v93 + 1) < 8)
      {
        v94 = v93 + 1;
      }

      else
      {
        v94 = 8;
      }

      if ((a2 + 1) >= v7 + v92)
      {
        v95 = v94;
      }

      else
      {
        v95 = 0;
      }

      if (v92 < v95 + v92)
      {
        v96 = *(a1 + 96);
        v97 = 24 - *(a1 + 52);
        do
        {
          v98 = ((-1640531535 * *(v7 + v92)) ^ v96) >> v97;
          v99 = (v98 >> 2) & 0x3FFFFFC0;
          _X25 = v18 + 4 * v99;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v99;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v15 + 4 * (v92++ & 7)) = v98;
          --v95;
        }

        while (v95);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 24 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((-1640531535 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 2) & 0x3FFFFFC0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v34 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v35 = (v34 >> 2) & 0x3FFFFFC0;
        v36 = v18 + 4 * v35;
        v37 = (v17 + v35);
        if (((*v37 - 1) & 0x3F) != 0)
        {
          v38 = 0;
        }

        else
        {
          v38 = 63;
        }

        v39 = v38 + ((*v37 - 1) & 0x3F);
        *v37 = v39;
        v37[v39] = v34;
        *(v36 + 4 * v39) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v40 = ((-1640531535 * *(v7 + v22 + 8)) ^ v13) >> (24 - v6);
    v41 = (v40 >> 2) & 0x3FFFFFC0;
    _X4 = v4 + 4 * v41;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v41;
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x20]
    }

    v14 = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v40;
  }

  *(a1 + 104) += v14;
  v48 = (v14 >> 2) & 0x3FFFFFC0;
  v49 = v4 + 4 * v48;
  v50 = (v5 + v48);
  v51 = *v50;
  v108 = vld4q_s8(v50);
  v52 = vdupq_n_s8(v14);
  v108.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v108.val[3], v52), vceqq_s8(v108.val[2], v52), 1uLL), vsriq_n_s8(vceqq_s8(v108.val[1], v52), vceqq_s8(v108.val[0], v52), 1uLL), 2uLL);
  v53 = vshrn_n_s16(vsriq_n_s8(v108.val[0], v108.val[0], 4uLL), 4uLL);
  v54 = 0;
  if (v53)
  {
    v55 = 1 << v12;
    v56 = __ROR8__(*&v53, v51);
    do
    {
      v57 = (__clz(__rbit64(v56)) + v51) & 0x3F;
      if (v57)
      {
        v58 = *(v49 + 4 * v57);
        if (v58 < v11)
        {
          break;
        }

        _X6 = v7 + v58;
        __asm { PRFM            #0, [X6] }

        v106[v54++] = v58;
        --v55;
      }

      v56 &= v56 - 1;
    }

    while (v56 && v55);
  }

  if (((v51 - 1) & 0x3F) != 0)
  {
    v61 = 0;
  }

  else
  {
    v61 = 63;
  }

  v62 = v61 + ((v51 - 1) & 0x3F);
  *v50 = v62;
  v50[v62] = v14;
  v63 = *(a1 + 44);
  *(a1 + 44) = v63 + 1;
  *(v49 + 4 * v62) = v63;
  if (v54)
  {
    v64 = 0;
    v65 = a3 - 7;
    v66 = a3 - 1;
    v67 = v8 + 3;
    v68 = 3;
    while (1)
    {
      v70 = v106[v64];
      v71 = (v7 + v70);
      if (*(v7 + v70 + v68 - 3) != *&a2[v68 - 3])
      {
        goto LABEL_34;
      }

      if (v65 <= a2)
      {
        v74 = a2;
        goto LABEL_44;
      }

      v72 = *v71;
      if (v72 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v72)) >> 3;
      if (result <= v68)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v67 - v70;
      v68 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_34:
      ++v64;
      result = v68;
      if (v64 == v54)
      {
        return result;
      }
    }

    v71 = (v7 + 8 + v70);
    v73 = a2 + 8;
    while (1)
    {
      v74 = v73;
      if (v73 >= v65)
      {
        break;
      }

      v76 = *v71;
      v71 += 4;
      v75 = v76;
      v73 += 8;
      if (v76 != *v74)
      {
        result = &v74[__clz(__rbit64(*v74 ^ v75)) >> 3] - a2;
        if (result <= v68)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v74 < a3 - 3)
    {
      if (*v71 == *v74)
      {
        v71 += 2;
        v74 += 4;
      }

      if (v74 >= v66)
      {
LABEL_46:
        if (v74 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v74 >= v66)
    {
      goto LABEL_46;
    }

    if (*v71 == *v74)
    {
      ++v71;
      v74 += 2;
    }

    if (v74 >= a3)
    {
LABEL_49:
      result = v74 - a2;
      if (v74 - a2 <= v68)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v71 == *v74)
    {
      ++v74;
    }

    goto LABEL_49;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_5_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 4)
  {
    LOBYTE(v12) = 4;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBB000000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v71 = v16 + 96;
        do
        {
          v72 = ((0xCF1BBCDCBB000000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v73 = (v72 >> 4) & 0xFFFFFF0;
          _X23 = v4 + 4 * v73;
          __asm { PRFM            #0, [X23] }

          _X22 = v5 + v73;
          __asm { PRFM            #0, [X22] }

          v78 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v72;
          v79 = (v78 >> 4) & 0xFFFFFF0;
          v80 = v4 + 4 * v79;
          v81 = (v5 + v79);
          if (((*v81 - 1) & 0xF) != 0)
          {
            v82 = 0;
          }

          else
          {
            v82 = 15;
          }

          v83 = v82 + ((*v81 - 1) & 0xF);
          *v81 = v83;
          v81[v83] = v78;
          *(v80 + 4 * v83) = v16++;
        }

        while (v71 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v84 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v85 = a2 + 1 - (v7 + v84);
      if ((v85 + 1) < 8)
      {
        v86 = v85 + 1;
      }

      else
      {
        v86 = 8;
      }

      if ((a2 + 1) >= v7 + v84)
      {
        v87 = v86;
      }

      else
      {
        v87 = 0;
      }

      if (v84 < v87 + v84)
      {
        v88 = *(a1 + 96);
        v89 = 56 - *(a1 + 52);
        do
        {
          v90 = ((0xCF1BBCDCBB000000 * *(v7 + v84)) ^ v88) >> v89;
          v91 = (v90 >> 4) & 0xFFFFFF0;
          _X25 = v18 + 4 * v91;
          __asm { PRFM            #0, [X25] }

          _X24 = v17 + v91;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v84++ & 7)) = v90;
          --v87;
        }

        while (v87);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBB000000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 4) & 0xFFFFFF0;
        _X25 = v18 + 4 * v24;
        __asm { PRFM            #0, [X25] }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v32 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v33 = (v32 >> 4) & 0xFFFFFF0;
        v34 = v18 + 4 * v33;
        v35 = (v17 + v33);
        if (((*v35 - 1) & 0xF) != 0)
        {
          v36 = 0;
        }

        else
        {
          v36 = 15;
        }

        v37 = v36 + ((*v35 - 1) & 0xF);
        *v35 = v37;
        v35[v37] = v32;
        *(v34 + 4 * v37) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v38 = ((0xCF1BBCDCBB000000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v39 = (v38 >> 4) & 0xFFFFFF0;
    _X4 = v4 + 4 * v39;
    __asm { PRFM            #0, [X4] }

    _X15 = v5 + v39;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v38;
  }

  *(a1 + 104) += _X15;
  v43 = (_X15 >> 4) & 0xFFFFFF0;
  v44 = v4 + 4 * v43;
  v45 = (v5 + v43);
  v46 = 4 * v45->i8[0];
  v47 = *v45;
  v48 = __ROR8__(vshrn_n_s16(vceqq_s8(*v45, vdupq_n_s8(_X15)), 4uLL), v46) & 0x8888888888888888;
  if (v48)
  {
    v49 = 0;
    v50 = 1 << v12;
    do
    {
      v51 = ((__clz(__rbit64(v48)) + (v46 & 0xFC)) >> 2) & 0xF;
      if (v51)
      {
        v52 = *(v44 + 4 * v51);
        if (v52 < v11)
        {
          break;
        }

        _X7 = v7 + v52;
        __asm { PRFM            #0, [X7] }

        v96[v49++] = v52;
        --v50;
      }

      v48 &= v48 - 1;
    }

    while (v48 && v50);
  }

  else
  {
    v49 = 0;
  }

  if (((v47 - 1) & 0xF) != 0)
  {
    v55 = 0;
  }

  else
  {
    v55 = 15;
  }

  v56 = v55 + ((v47 - 1) & 0xF);
  v45->i8[0] = v56;
  v45->i8[v56] = _X15;
  v57 = *(a1 + 44);
  *(a1 + 44) = v57 + 1;
  *(v44 + 4 * v56) = v57;
  if (v49)
  {
    v58 = 0;
    v59 = a3 - 7;
    v60 = a3 - 1;
    v61 = v8 + 3;
    v62 = 3;
    while (1)
    {
      v64 = v96[v58];
      v65 = (v7 + v64);
      if (*(v7 + v64 + v62 - 3) != *&a2[v62 - 3])
      {
        goto LABEL_36;
      }

      if (v59 <= a2)
      {
        v68 = a2;
        goto LABEL_46;
      }

      v66 = *v65;
      if (v66 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v66)) >> 3;
      if (result <= v62)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v61 - v64;
      v62 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_36:
      ++v58;
      result = v62;
      if (v58 == v49)
      {
        return result;
      }
    }

    v65 = (v7 + 8 + v64);
    v67 = a2 + 8;
    while (1)
    {
      v68 = v67;
      if (v67 >= v59)
      {
        break;
      }

      v70 = *v65;
      v65 += 4;
      v69 = v70;
      v67 += 8;
      if (v70 != *v68)
      {
        result = &v68[__clz(__rbit64(*v68 ^ v69)) >> 3] - a2;
        if (result <= v62)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v68 < a3 - 3)
    {
      if (*v65 == *v68)
      {
        v65 += 2;
        v68 += 4;
      }

      if (v68 >= v60)
      {
LABEL_48:
        if (v68 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v68 >= v60)
    {
      goto LABEL_48;
    }

    if (*v65 == *v68)
    {
      ++v65;
      v68 += 2;
    }

    if (v68 >= a3)
    {
LABEL_51:
      result = v68 - a2;
      if (v68 - a2 <= v62)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v65 == *v68)
    {
      ++v68;
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_5_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v102 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 5)
  {
    LOBYTE(v12) = 5;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBB000000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v74 = v16 + 96;
        do
        {
          v75 = ((0xCF1BBCDCBB000000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v76 = (v75 >> 3) & 0x1FFFFFE0;
          _X23 = v4 + 4 * v76;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v76;
          __asm { PRFM            #0, [X22] }

          v82 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v75;
          v83 = (v82 >> 3) & 0x1FFFFFE0;
          v84 = v4 + 4 * v83;
          v85 = (v5 + v83);
          if (((*v85 - 1) & 0x1F) != 0)
          {
            v86 = 0;
          }

          else
          {
            v86 = 31;
          }

          v87 = v86 + ((*v85 - 1) & 0x1F);
          *v85 = v87;
          v85[v87] = v82;
          *(v84 + 4 * v87) = v16++;
        }

        while (v74 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v88 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v89 = a2 + 1 - (v7 + v88);
      if ((v89 + 1) < 8)
      {
        v90 = v89 + 1;
      }

      else
      {
        v90 = 8;
      }

      if ((a2 + 1) >= v7 + v88)
      {
        v91 = v90;
      }

      else
      {
        v91 = 0;
      }

      if (v88 < v91 + v88)
      {
        v92 = *(a1 + 96);
        v93 = 56 - *(a1 + 52);
        do
        {
          v94 = ((0xCF1BBCDCBB000000 * *(v7 + v88)) ^ v92) >> v93;
          v95 = (v94 >> 3) & 0x1FFFFFE0;
          _X25 = v18 + 4 * v95;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v95;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v88++ & 7)) = v94;
          --v91;
        }

        while (v91);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBB000000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 3) & 0x1FFFFFE0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v33 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v34 = (v33 >> 3) & 0x1FFFFFE0;
        v35 = v18 + 4 * v34;
        v36 = (v17 + v34);
        if (((*v36 - 1) & 0x1F) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = 31;
        }

        v38 = v37 + ((*v36 - 1) & 0x1F);
        *v36 = v38;
        v36[v38] = v33;
        *(v35 + 4 * v38) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v39 = ((0xCF1BBCDCBB000000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v40 = (v39 >> 3) & 0x1FFFFFE0;
    _X4 = v4 + 4 * v40;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v40;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v39;
  }

  *(a1 + 104) += _X15;
  v45 = (_X15 >> 3) & 0x1FFFFFE0;
  v46 = v4 + 4 * v45;
  v47 = (v5 + v45);
  v103 = vld2q_s16(v47);
  v48 = *v47;
  v49 = 2 * *v47;
  v50 = vdupq_n_s8(_X15);
  v51 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v50, v103.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v50, v103.val[1]), 6uLL), 4uLL), v49) & 0x5555555555555555;
  if (v51)
  {
    v52 = 0;
    v53 = 1 << v12;
    do
    {
      v54 = ((__clz(__rbit64(v51)) + (v49 & 0xFE)) >> 1) & 0x1F;
      if (v54)
      {
        v55 = *(v46 + 4 * v54);
        if (v55 < v11)
        {
          break;
        }

        _X7 = v7 + v55;
        __asm { PRFM            #0, [X7] }

        v101[v52++] = v55;
        --v53;
      }

      v51 &= v51 - 1;
    }

    while (v51 && v53);
  }

  else
  {
    v52 = 0;
  }

  if (((v48 - 1) & 0x1F) != 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = 31;
  }

  v59 = v58 + ((v48 - 1) & 0x1F);
  *v47 = v59;
  *(v47 + v59) = _X15;
  v60 = *(a1 + 44);
  *(a1 + 44) = v60 + 1;
  *(v46 + 4 * v59) = v60;
  if (v52)
  {
    v61 = 0;
    v62 = a3 - 7;
    v63 = a3 - 1;
    v64 = v8 + 3;
    v65 = 3;
    while (1)
    {
      v67 = v101[v61];
      v68 = (v7 + v67);
      if (*(v7 + v67 + v65 - 3) != *&a2[v65 - 3])
      {
        goto LABEL_36;
      }

      if (v62 <= a2)
      {
        v71 = a2;
        goto LABEL_46;
      }

      v69 = *v68;
      if (v69 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v69)) >> 3;
      if (result <= v65)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v64 - v67;
      v65 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_36:
      ++v61;
      result = v65;
      if (v61 == v52)
      {
        return result;
      }
    }

    v68 = (v7 + 8 + v67);
    v70 = a2 + 8;
    while (1)
    {
      v71 = v70;
      if (v70 >= v62)
      {
        break;
      }

      v73 = *v68;
      v68 += 4;
      v72 = v73;
      v70 += 8;
      if (v73 != *v71)
      {
        result = &v71[__clz(__rbit64(*v71 ^ v72)) >> 3] - a2;
        if (result <= v65)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v71 < a3 - 3)
    {
      if (*v68 == *v71)
      {
        v68 += 2;
        v71 += 4;
      }

      if (v71 >= v63)
      {
LABEL_48:
        if (v71 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v71 >= v63)
    {
      goto LABEL_48;
    }

    if (*v68 == *v71)
    {
      ++v68;
      v71 += 2;
    }

    if (v71 >= a3)
    {
LABEL_51:
      result = v71 - a2;
      if (v71 - a2 <= v65)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v68 == *v71)
    {
      ++v71;
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_5_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 6)
  {
    LOBYTE(v12) = 6;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBB000000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v76 = v16 + 96;
        do
        {
          v77 = ((0xCF1BBCDCBB000000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v78 = (v77 >> 2) & 0x3FFFFFC0;
          _X23 = v4 + 4 * v78;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v78;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v85 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v77;
          v86 = (v85 >> 2) & 0x3FFFFFC0;
          v87 = v4 + 4 * v86;
          v88 = (v5 + v86);
          if (((*v88 - 1) & 0x3F) != 0)
          {
            v89 = 0;
          }

          else
          {
            v89 = 63;
          }

          v90 = v89 + ((*v88 - 1) & 0x3F);
          *v88 = v90;
          v88[v90] = v85;
          *(v87 + 4 * v90) = v16++;
        }

        while (v76 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v91 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v92 = a2 + 1 - (v7 + v91);
      if ((v92 + 1) < 8)
      {
        v93 = v92 + 1;
      }

      else
      {
        v93 = 8;
      }

      if ((a2 + 1) >= v7 + v91)
      {
        v94 = v93;
      }

      else
      {
        v94 = 0;
      }

      if (v91 < v94 + v91)
      {
        v95 = *(a1 + 96);
        v96 = 56 - *(a1 + 52);
        do
        {
          v97 = ((0xCF1BBCDCBB000000 * *(v7 + v91)) ^ v95) >> v96;
          v98 = (v97 >> 2) & 0x3FFFFFC0;
          _X25 = v18 + 4 * v98;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v98;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v15 + 4 * (v91++ & 7)) = v97;
          --v94;
        }

        while (v94);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBB000000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 2) & 0x3FFFFFC0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v34 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v35 = (v34 >> 2) & 0x3FFFFFC0;
        v36 = v18 + 4 * v35;
        v37 = (v17 + v35);
        if (((*v37 - 1) & 0x3F) != 0)
        {
          v38 = 0;
        }

        else
        {
          v38 = 63;
        }

        v39 = v38 + ((*v37 - 1) & 0x3F);
        *v37 = v39;
        v37[v39] = v34;
        *(v36 + 4 * v39) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v40 = ((0xCF1BBCDCBB000000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v41 = (v40 >> 2) & 0x3FFFFFC0;
    _X4 = v4 + 4 * v41;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v41;
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x20]
    }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v40;
  }

  *(a1 + 104) += _X15;
  v47 = (_X15 >> 2) & 0x3FFFFFC0;
  v48 = v4 + 4 * v47;
  v49 = (v5 + v47);
  v50 = *v49;
  v107 = vld4q_s8(v49);
  v51 = vdupq_n_s8(_X15);
  v107.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v107.val[3], v51), vceqq_s8(v107.val[2], v51), 1uLL), vsriq_n_s8(vceqq_s8(v107.val[1], v51), vceqq_s8(v107.val[0], v51), 1uLL), 2uLL);
  v52 = vshrn_n_s16(vsriq_n_s8(v107.val[0], v107.val[0], 4uLL), 4uLL);
  v53 = 0;
  if (v52)
  {
    v54 = 1 << v12;
    v55 = __ROR8__(*&v52, v50);
    do
    {
      v56 = (__clz(__rbit64(v55)) + v50) & 0x3F;
      if (v56)
      {
        v57 = *(v48 + 4 * v56);
        if (v57 < v11)
        {
          break;
        }

        _X6 = v7 + v57;
        __asm { PRFM            #0, [X6] }

        v105[v53++] = v57;
        --v54;
      }

      v55 &= v55 - 1;
    }

    while (v55 && v54);
  }

  if (((v50 - 1) & 0x3F) != 0)
  {
    v60 = 0;
  }

  else
  {
    v60 = 63;
  }

  v61 = v60 + ((v50 - 1) & 0x3F);
  *v49 = v61;
  v49[v61] = _X15;
  v62 = *(a1 + 44);
  *(a1 + 44) = v62 + 1;
  *(v48 + 4 * v61) = v62;
  if (v53)
  {
    v63 = 0;
    v64 = a3 - 7;
    v65 = a3 - 1;
    v66 = v8 + 3;
    v67 = 3;
    while (1)
    {
      v69 = v105[v63];
      v70 = (v7 + v69);
      if (*(v7 + v69 + v67 - 3) != *&a2[v67 - 3])
      {
        goto LABEL_34;
      }

      if (v64 <= a2)
      {
        v73 = a2;
        goto LABEL_44;
      }

      v71 = *v70;
      if (v71 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v71)) >> 3;
      if (result <= v67)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v66 - v69;
      v67 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_34:
      ++v63;
      result = v67;
      if (v63 == v53)
      {
        return result;
      }
    }

    v70 = (v7 + 8 + v69);
    v72 = a2 + 8;
    while (1)
    {
      v73 = v72;
      if (v72 >= v64)
      {
        break;
      }

      v75 = *v70;
      v70 += 4;
      v74 = v75;
      v72 += 8;
      if (v75 != *v73)
      {
        result = &v73[__clz(__rbit64(*v73 ^ v74)) >> 3] - a2;
        if (result <= v67)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v73 < a3 - 3)
    {
      if (*v70 == *v73)
      {
        v70 += 2;
        v73 += 4;
      }

      if (v73 >= v65)
      {
LABEL_46:
        if (v73 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v73 >= v65)
    {
      goto LABEL_46;
    }

    if (*v70 == *v73)
    {
      ++v70;
      v73 += 2;
    }

    if (v73 >= a3)
    {
LABEL_49:
      result = v73 - a2;
      if (v73 - a2 <= v67)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v70 == *v73)
    {
      ++v73;
    }

    goto LABEL_49;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_6_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 4)
  {
    LOBYTE(v12) = 4;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v71 = v16 + 96;
        do
        {
          v72 = ((0xCF1BBCDCBF9B0000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v73 = (v72 >> 4) & 0xFFFFFF0;
          _X23 = v4 + 4 * v73;
          __asm { PRFM            #0, [X23] }

          _X22 = v5 + v73;
          __asm { PRFM            #0, [X22] }

          v78 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v72;
          v79 = (v78 >> 4) & 0xFFFFFF0;
          v80 = v4 + 4 * v79;
          v81 = (v5 + v79);
          if (((*v81 - 1) & 0xF) != 0)
          {
            v82 = 0;
          }

          else
          {
            v82 = 15;
          }

          v83 = v82 + ((*v81 - 1) & 0xF);
          *v81 = v83;
          v81[v83] = v78;
          *(v80 + 4 * v83) = v16++;
        }

        while (v71 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v84 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v85 = a2 + 1 - (v7 + v84);
      if ((v85 + 1) < 8)
      {
        v86 = v85 + 1;
      }

      else
      {
        v86 = 8;
      }

      if ((a2 + 1) >= v7 + v84)
      {
        v87 = v86;
      }

      else
      {
        v87 = 0;
      }

      if (v84 < v87 + v84)
      {
        v88 = *(a1 + 96);
        v89 = 56 - *(a1 + 52);
        do
        {
          v90 = ((0xCF1BBCDCBF9B0000 * *(v7 + v84)) ^ v88) >> v89;
          v91 = (v90 >> 4) & 0xFFFFFF0;
          _X25 = v18 + 4 * v91;
          __asm { PRFM            #0, [X25] }

          _X24 = v17 + v91;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v84++ & 7)) = v90;
          --v87;
        }

        while (v87);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBF9B0000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 4) & 0xFFFFFF0;
        _X25 = v18 + 4 * v24;
        __asm { PRFM            #0, [X25] }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v32 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v33 = (v32 >> 4) & 0xFFFFFF0;
        v34 = v18 + 4 * v33;
        v35 = (v17 + v33);
        if (((*v35 - 1) & 0xF) != 0)
        {
          v36 = 0;
        }

        else
        {
          v36 = 15;
        }

        v37 = v36 + ((*v35 - 1) & 0xF);
        *v35 = v37;
        v35[v37] = v32;
        *(v34 + 4 * v37) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v38 = ((0xCF1BBCDCBF9B0000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v39 = (v38 >> 4) & 0xFFFFFF0;
    _X4 = v4 + 4 * v39;
    __asm { PRFM            #0, [X4] }

    _X15 = v5 + v39;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v38;
  }

  *(a1 + 104) += _X15;
  v43 = (_X15 >> 4) & 0xFFFFFF0;
  v44 = v4 + 4 * v43;
  v45 = (v5 + v43);
  v46 = 4 * v45->i8[0];
  v47 = *v45;
  v48 = __ROR8__(vshrn_n_s16(vceqq_s8(*v45, vdupq_n_s8(_X15)), 4uLL), v46) & 0x8888888888888888;
  if (v48)
  {
    v49 = 0;
    v50 = 1 << v12;
    do
    {
      v51 = ((__clz(__rbit64(v48)) + (v46 & 0xFC)) >> 2) & 0xF;
      if (v51)
      {
        v52 = *(v44 + 4 * v51);
        if (v52 < v11)
        {
          break;
        }

        _X7 = v7 + v52;
        __asm { PRFM            #0, [X7] }

        v96[v49++] = v52;
        --v50;
      }

      v48 &= v48 - 1;
    }

    while (v48 && v50);
  }

  else
  {
    v49 = 0;
  }

  if (((v47 - 1) & 0xF) != 0)
  {
    v55 = 0;
  }

  else
  {
    v55 = 15;
  }

  v56 = v55 + ((v47 - 1) & 0xF);
  v45->i8[0] = v56;
  v45->i8[v56] = _X15;
  v57 = *(a1 + 44);
  *(a1 + 44) = v57 + 1;
  *(v44 + 4 * v56) = v57;
  if (v49)
  {
    v58 = 0;
    v59 = a3 - 7;
    v60 = a3 - 1;
    v61 = v8 + 3;
    v62 = 3;
    while (1)
    {
      v64 = v96[v58];
      v65 = (v7 + v64);
      if (*(v7 + v64 + v62 - 3) != *&a2[v62 - 3])
      {
        goto LABEL_36;
      }

      if (v59 <= a2)
      {
        v68 = a2;
        goto LABEL_46;
      }

      v66 = *v65;
      if (v66 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v66)) >> 3;
      if (result <= v62)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v61 - v64;
      v62 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_36:
      ++v58;
      result = v62;
      if (v58 == v49)
      {
        return result;
      }
    }

    v65 = (v7 + 8 + v64);
    v67 = a2 + 8;
    while (1)
    {
      v68 = v67;
      if (v67 >= v59)
      {
        break;
      }

      v70 = *v65;
      v65 += 4;
      v69 = v70;
      v67 += 8;
      if (v70 != *v68)
      {
        result = &v68[__clz(__rbit64(*v68 ^ v69)) >> 3] - a2;
        if (result <= v62)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v68 < a3 - 3)
    {
      if (*v65 == *v68)
      {
        v65 += 2;
        v68 += 4;
      }

      if (v68 >= v60)
      {
LABEL_48:
        if (v68 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v68 >= v60)
    {
      goto LABEL_48;
    }

    if (*v65 == *v68)
    {
      ++v65;
      v68 += 2;
    }

    if (v68 >= a3)
    {
LABEL_51:
      result = v68 - a2;
      if (v68 - a2 <= v62)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v65 == *v68)
    {
      ++v68;
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_6_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v102 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 5)
  {
    LOBYTE(v12) = 5;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v74 = v16 + 96;
        do
        {
          v75 = ((0xCF1BBCDCBF9B0000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v76 = (v75 >> 3) & 0x1FFFFFE0;
          _X23 = v4 + 4 * v76;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v76;
          __asm { PRFM            #0, [X22] }

          v82 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v75;
          v83 = (v82 >> 3) & 0x1FFFFFE0;
          v84 = v4 + 4 * v83;
          v85 = (v5 + v83);
          if (((*v85 - 1) & 0x1F) != 0)
          {
            v86 = 0;
          }

          else
          {
            v86 = 31;
          }

          v87 = v86 + ((*v85 - 1) & 0x1F);
          *v85 = v87;
          v85[v87] = v82;
          *(v84 + 4 * v87) = v16++;
        }

        while (v74 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v88 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v89 = a2 + 1 - (v7 + v88);
      if ((v89 + 1) < 8)
      {
        v90 = v89 + 1;
      }

      else
      {
        v90 = 8;
      }

      if ((a2 + 1) >= v7 + v88)
      {
        v91 = v90;
      }

      else
      {
        v91 = 0;
      }

      if (v88 < v91 + v88)
      {
        v92 = *(a1 + 96);
        v93 = 56 - *(a1 + 52);
        do
        {
          v94 = ((0xCF1BBCDCBF9B0000 * *(v7 + v88)) ^ v92) >> v93;
          v95 = (v94 >> 3) & 0x1FFFFFE0;
          _X25 = v18 + 4 * v95;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v95;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v88++ & 7)) = v94;
          --v91;
        }

        while (v91);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBF9B0000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 3) & 0x1FFFFFE0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v33 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v34 = (v33 >> 3) & 0x1FFFFFE0;
        v35 = v18 + 4 * v34;
        v36 = (v17 + v34);
        if (((*v36 - 1) & 0x1F) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = 31;
        }

        v38 = v37 + ((*v36 - 1) & 0x1F);
        *v36 = v38;
        v36[v38] = v33;
        *(v35 + 4 * v38) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v39 = ((0xCF1BBCDCBF9B0000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v40 = (v39 >> 3) & 0x1FFFFFE0;
    _X4 = v4 + 4 * v40;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v40;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v39;
  }

  *(a1 + 104) += _X15;
  v45 = (_X15 >> 3) & 0x1FFFFFE0;
  v46 = v4 + 4 * v45;
  v47 = (v5 + v45);
  v103 = vld2q_s16(v47);
  v48 = *v47;
  v49 = 2 * *v47;
  v50 = vdupq_n_s8(_X15);
  v51 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v50, v103.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v50, v103.val[1]), 6uLL), 4uLL), v49) & 0x5555555555555555;
  if (v51)
  {
    v52 = 0;
    v53 = 1 << v12;
    do
    {
      v54 = ((__clz(__rbit64(v51)) + (v49 & 0xFE)) >> 1) & 0x1F;
      if (v54)
      {
        v55 = *(v46 + 4 * v54);
        if (v55 < v11)
        {
          break;
        }

        _X7 = v7 + v55;
        __asm { PRFM            #0, [X7] }

        v101[v52++] = v55;
        --v53;
      }

      v51 &= v51 - 1;
    }

    while (v51 && v53);
  }

  else
  {
    v52 = 0;
  }

  if (((v48 - 1) & 0x1F) != 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = 31;
  }

  v59 = v58 + ((v48 - 1) & 0x1F);
  *v47 = v59;
  *(v47 + v59) = _X15;
  v60 = *(a1 + 44);
  *(a1 + 44) = v60 + 1;
  *(v46 + 4 * v59) = v60;
  if (v52)
  {
    v61 = 0;
    v62 = a3 - 7;
    v63 = a3 - 1;
    v64 = v8 + 3;
    v65 = 3;
    while (1)
    {
      v67 = v101[v61];
      v68 = (v7 + v67);
      if (*(v7 + v67 + v65 - 3) != *&a2[v65 - 3])
      {
        goto LABEL_36;
      }

      if (v62 <= a2)
      {
        v71 = a2;
        goto LABEL_46;
      }

      v69 = *v68;
      if (v69 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v69)) >> 3;
      if (result <= v65)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v64 - v67;
      v65 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_36:
      ++v61;
      result = v65;
      if (v61 == v52)
      {
        return result;
      }
    }

    v68 = (v7 + 8 + v67);
    v70 = a2 + 8;
    while (1)
    {
      v71 = v70;
      if (v70 >= v62)
      {
        break;
      }

      v73 = *v68;
      v68 += 4;
      v72 = v73;
      v70 += 8;
      if (v73 != *v71)
      {
        result = &v71[__clz(__rbit64(*v71 ^ v72)) >> 3] - a2;
        if (result <= v65)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v71 < a3 - 3)
    {
      if (*v68 == *v71)
      {
        v68 += 2;
        v71 += 4;
      }

      if (v71 >= v63)
      {
LABEL_48:
        if (v71 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v71 >= v63)
    {
      goto LABEL_48;
    }

    if (*v68 == *v71)
    {
      ++v68;
      v71 += 2;
    }

    if (v71 >= a3)
    {
LABEL_51:
      result = v71 - a2;
      if (v71 - a2 <= v65)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v68 == *v71)
    {
      ++v71;
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_6_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 6)
  {
    LOBYTE(v12) = 6;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v76 = v16 + 96;
        do
        {
          v77 = ((0xCF1BBCDCBF9B0000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v78 = (v77 >> 2) & 0x3FFFFFC0;
          _X23 = v4 + 4 * v78;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v78;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v85 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v77;
          v86 = (v85 >> 2) & 0x3FFFFFC0;
          v87 = v4 + 4 * v86;
          v88 = (v5 + v86);
          if (((*v88 - 1) & 0x3F) != 0)
          {
            v89 = 0;
          }

          else
          {
            v89 = 63;
          }

          v90 = v89 + ((*v88 - 1) & 0x3F);
          *v88 = v90;
          v88[v90] = v85;
          *(v87 + 4 * v90) = v16++;
        }

        while (v76 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v91 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v92 = a2 + 1 - (v7 + v91);
      if ((v92 + 1) < 8)
      {
        v93 = v92 + 1;
      }

      else
      {
        v93 = 8;
      }

      if ((a2 + 1) >= v7 + v91)
      {
        v94 = v93;
      }

      else
      {
        v94 = 0;
      }

      if (v91 < v94 + v91)
      {
        v95 = *(a1 + 96);
        v96 = 56 - *(a1 + 52);
        do
        {
          v97 = ((0xCF1BBCDCBF9B0000 * *(v7 + v91)) ^ v95) >> v96;
          v98 = (v97 >> 2) & 0x3FFFFFC0;
          _X25 = v18 + 4 * v98;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v98;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v15 + 4 * (v91++ & 7)) = v97;
          --v94;
        }

        while (v94);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBF9B0000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 2) & 0x3FFFFFC0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v34 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v35 = (v34 >> 2) & 0x3FFFFFC0;
        v36 = v18 + 4 * v35;
        v37 = (v17 + v35);
        if (((*v37 - 1) & 0x3F) != 0)
        {
          v38 = 0;
        }

        else
        {
          v38 = 63;
        }

        v39 = v38 + ((*v37 - 1) & 0x3F);
        *v37 = v39;
        v37[v39] = v34;
        *(v36 + 4 * v39) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v40 = ((0xCF1BBCDCBF9B0000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v41 = (v40 >> 2) & 0x3FFFFFC0;
    _X4 = v4 + 4 * v41;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v41;
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x20]
    }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v40;
  }

  *(a1 + 104) += _X15;
  v47 = (_X15 >> 2) & 0x3FFFFFC0;
  v48 = v4 + 4 * v47;
  v49 = (v5 + v47);
  v50 = *v49;
  v107 = vld4q_s8(v49);
  v51 = vdupq_n_s8(_X15);
  v107.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v107.val[3], v51), vceqq_s8(v107.val[2], v51), 1uLL), vsriq_n_s8(vceqq_s8(v107.val[1], v51), vceqq_s8(v107.val[0], v51), 1uLL), 2uLL);
  v52 = vshrn_n_s16(vsriq_n_s8(v107.val[0], v107.val[0], 4uLL), 4uLL);
  v53 = 0;
  if (v52)
  {
    v54 = 1 << v12;
    v55 = __ROR8__(*&v52, v50);
    do
    {
      v56 = (__clz(__rbit64(v55)) + v50) & 0x3F;
      if (v56)
      {
        v57 = *(v48 + 4 * v56);
        if (v57 < v11)
        {
          break;
        }

        _X6 = v7 + v57;
        __asm { PRFM            #0, [X6] }

        v105[v53++] = v57;
        --v54;
      }

      v55 &= v55 - 1;
    }

    while (v55 && v54);
  }

  if (((v50 - 1) & 0x3F) != 0)
  {
    v60 = 0;
  }

  else
  {
    v60 = 63;
  }

  v61 = v60 + ((v50 - 1) & 0x3F);
  *v49 = v61;
  v49[v61] = _X15;
  v62 = *(a1 + 44);
  *(a1 + 44) = v62 + 1;
  *(v48 + 4 * v61) = v62;
  if (v53)
  {
    v63 = 0;
    v64 = a3 - 7;
    v65 = a3 - 1;
    v66 = v8 + 3;
    v67 = 3;
    while (1)
    {
      v69 = v105[v63];
      v70 = (v7 + v69);
      if (*(v7 + v69 + v67 - 3) != *&a2[v67 - 3])
      {
        goto LABEL_34;
      }

      if (v64 <= a2)
      {
        v73 = a2;
        goto LABEL_44;
      }

      v71 = *v70;
      if (v71 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v71)) >> 3;
      if (result <= v67)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v66 - v69;
      v67 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_34:
      ++v63;
      result = v67;
      if (v63 == v53)
      {
        return result;
      }
    }

    v70 = (v7 + 8 + v69);
    v72 = a2 + 8;
    while (1)
    {
      v73 = v72;
      if (v72 >= v64)
      {
        break;
      }

      v75 = *v70;
      v70 += 4;
      v74 = v75;
      v72 += 8;
      if (v75 != *v73)
      {
        result = &v73[__clz(__rbit64(*v73 ^ v74)) >> 3] - a2;
        if (result <= v67)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v73 < a3 - 3)
    {
      if (*v70 == *v73)
      {
        v70 += 2;
        v73 += 4;
      }

      if (v73 >= v65)
      {
LABEL_46:
        if (v73 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v73 >= v65)
    {
      goto LABEL_46;
    }

    if (*v70 == *v73)
    {
      ++v70;
      v73 += 2;
    }

    if (v73 >= a3)
    {
LABEL_49:
      result = v73 - a2;
      if (v73 - a2 <= v67)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v70 == *v73)
    {
      ++v73;
    }

    goto LABEL_49;
  }

  return 3;
}

int64_t ZSTD_compressBlock_greedy_dictMatchState_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 272);
  if (v12 >= 6)
  {
    v12 = 6;
  }

  if (v12 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 268);
  if (v14 >= 6)
  {
    v15 = 6;
  }

  else
  {
    v15 = *(a1 + 268);
  }

  if (v15 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v17 = *a3;
  v18 = a3[1];
  v19 = *(a1 + 248);
  v20 = *v19;
  v181 = *(v19 + 8);
  v183 = (v10 + v11);
  v171 = (v181 + *(v19 + 24));
  if (a4 - (v10 + v11) - v171 + *v19)
  {
    v21 = a4;
  }

  else
  {
    v21 = a4 + 1;
  }

  *(a1 + 300) = 0;
  v22 = *(a1 + 44);
  v23 = v9 - (v10 + v22);
  if ((v23 + 1) < 8)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 8;
  }

  if (v9 >= v10 + v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = (v25 + v22);
  if (v22 < v26)
  {
    v27 = *(a1 + 112);
    v28 = *(a1 + 56);
    v29 = *(a1 + 52);
    v30 = *(a1 + 96);
    v31 = 56 - v29;
    v32 = 24 - v29;
    v33 = a1 + 64;
    if (v14 <= 4)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v34 = 0xCF1BBCDCBF9B0000 * *(v10 + v22);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v35) = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
            goto LABEL_26;
          }

          v34 = 0xCF1BBCDCBB000000 * *(v10 + v22);
        }

        v35 = (v34 ^ v30) >> v31;
LABEL_26:
        v36 = v35 >> 8 << v16;
        _X3 = v27 + 4 * v36;
        __asm { PRFM            #0, [X3] }

        _X2 = v28 + v36;
        __asm { PRFM            #0, [X2] }

        *(v33 + 4 * (v22++ & 7)) = v35;
        if (v26 == v22)
        {
          goto LABEL_47;
        }
      }
    }

    if (v14 == 5)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v45 = 0xCF1BBCDCBF9B0000 * *(v10 + v22);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v46) = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
            goto LABEL_35;
          }

          v45 = 0xCF1BBCDCBB000000 * *(v10 + v22);
        }

        v46 = (v45 ^ v30) >> v31;
LABEL_35:
        v47 = v46 >> 8 << v16;
        _X3 = v27 + 4 * v47;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X3,#0x40]
        }

        _X2 = v28 + v47;
        __asm { PRFM            #0, [X2] }

        *(v33 + 4 * (v22++ & 7)) = v46;
        if (v26 == v22)
        {
          goto LABEL_47;
        }
      }
    }

    if (v13 == 6)
    {
      do
      {
        v61 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v30) >> v31;
        v62 = v61 >> 8 << v16;
        _X0 = v27 + 4 * v62;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v62;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v61;
      }

      while (v26 != v22);
    }

    else if (v13 == 5)
    {
      do
      {
        v53 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v30) >> v31;
        v54 = v53 >> 8 << v16;
        _X0 = v27 + 4 * v54;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v54;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v53;
      }

      while (v26 != v22);
    }

    else
    {
      do
      {
        v69 = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
        v70 = v69 >> 8 << v16;
        _X0 = v27 + 4 * v70;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v70;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v69;
      }

      while (v26 != v22);
    }
  }

LABEL_47:
  if (v21 < v9)
  {
    v182 = v8 - 32;
    v174 = v7 + 64;
    v172 = v11 + v10 + 8;
    v175 = v11 + v181 - v20;
    v179 = v9;
    v180 = v7;
    v178 = v11;
    v177 = v16;
    v176 = v20;
    v173 = v8 - 7;
    while (1)
    {
      v78 = (v21 - v10 - v17 + 1);
      v79 = v181 + v78 - v175;
      if (v78 >= v11)
      {
        v79 = v10 + v78;
      }

      if ((v78 - v11) <= 0xFFFFFFFC && (v80 = v21 + 1, *v79 == *(v21 + 1)))
      {
        v81 = v78 >= v11 ? v8 : v20;
        v82 = ZSTD_count_2segments(v21 + 5, (v79 + 4), v8, v81, v183);
        v83 = (v8 - 32);
        v20 = v176;
        LODWORD(v11) = v178;
        v84 = v179;
        BestMatch_dictMatchState_6_6 = v82 + 4;
        v86 = 1;
      }

      else
      {
        v184 = 999999999;
        if (v13 == 6)
        {
          if (v16 == 6)
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_6(v7, v21, v8, &v184);
          }

          else if (v16 == 5)
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_5(v7, v21, v8, &v184);
          }

          else
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_4(v7, v21, v8, &v184);
          }
        }

        else if (v13 == 5)
        {
          if (v16 == 6)
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_6(v7, v21, v8, &v184);
          }

          else if (v16 == 5)
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_5(v7, v21, v8, &v184);
          }

          else
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_4(v7, v21, v8, &v184);
          }
        }

        else if (v16 == 6)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_6(v7, v21, v8, &v184);
        }

        else if (v16 == 5)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_5(v7, v21, v8, &v184);
        }

        else
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_4(v7, v21, v8, &v184);
        }

        LODWORD(v11) = v178;
        v84 = v179;
        v20 = v176;
        v83 = (v8 - 32);
        if (BestMatch_dictMatchState_6_6 <= 3)
        {
          v77 = v21 - v5;
          v21 += ((v21 - v5) >> 8) + 1;
          v7 = v180;
          *(v180 + 300) = v77 > 0x7FF;
          v16 = v177;
          goto LABEL_50;
        }

        v86 = v184;
        if (v184 >= 4)
        {
          v87 = v21 - v10 - v184 + 3;
          v88 = v183;
          if (v178 > v87)
          {
            v88 = v171;
          }

          v89 = v181 - v175;
          if (v178 <= v21 - v10 - v184 + 3)
          {
            v89 = v10;
          }

          if (v21 > v5 && v89 + v87 > v88)
          {
            v90 = (v89 + v87 - 1);
            v91 = v21 - 1;
            while (*v91 == *v90)
            {
              ++BestMatch_dictMatchState_6_6;
              v92 = v91 - 1;
              if (v91 > v5)
              {
                --v91;
                if (v90-- > v88)
                {
                  continue;
                }
              }

              v21 = v92 + 1;
              goto LABEL_90;
            }

            v21 = v91 + 1;
          }

LABEL_90:
          v18 = v17;
          v17 = (v184 - 3);
        }

        v80 = v21;
      }

      v94 = v80 - v5;
      v95 = *(a2 + 24);
      if (v80 > v83)
      {
        break;
      }

      *v95 = *v5;
      v102 = *(a2 + 24);
      v7 = v180;
      v16 = v177;
      if (v94 > 0x10)
      {
        *(v102 + 16) = *(v5 + 1);
        if (v94 >= 33)
        {
          v103 = v102 + v94;
          v104 = (v102 + 32);
          v105 = (v5 + 48);
          do
          {
            *v104 = *(v105 - 1);
            v106 = *v105;
            v105 += 2;
            v104[1] = v106;
            v104 += 2;
          }

          while (v104 < v103);
        }

        goto LABEL_121;
      }

      *(a2 + 24) = v102 + v94;
      v107 = *(a2 + 8);
LABEL_123:
      *(v107 + 4) = v94;
      *v107 = v86;
      if (BestMatch_dictMatchState_6_6 - 3 >= 0x10000)
      {
        v120 = (v107 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v120;
      }

      *(v107 + 6) = BestMatch_dictMatchState_6_6 - 3;
      v121 = v107 + 8;
      *(a2 + 8) = v107 + 8;
      if (*(v7 + 300))
      {
        v122 = *(v7 + 44);
        v123 = v84 - (v10 + v122);
        if ((v123 + 1) < 8)
        {
          v124 = v123 + 1;
        }

        else
        {
          v124 = 8;
        }

        if (v84 >= v10 + v122)
        {
          v125 = v124;
        }

        else
        {
          v125 = 0;
        }

        v126 = (v125 + v122);
        if (v122 < v126)
        {
          v127 = *(v7 + 112);
          v128 = *(v7 + 56);
          v129 = *(v7 + 52);
          v130 = *(v7 + 96);
          v131 = 56 - v129;
          v132 = 24 - v129;
          do
          {
            if (v13 == 5)
            {
              v135 = 0xCF1BBCDCBB000000 * *(v10 + v122);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v136) = ((-1640531535 * *(v10 + v122)) ^ v130) >> v132;
                goto LABEL_142;
              }

              v135 = 0xCF1BBCDCBF9B0000 * *(v10 + v122);
            }

            v136 = (v135 ^ v130) >> v131;
LABEL_142:
            v137 = v136 >> 8 << v16;
            _X1 = v127 + 4 * v137;
            __asm { PRFM            #0, [X1] }

            if (v14 <= 4)
            {
              _X17 = v128 + v137;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v128 + v137;
              __asm { PRFM            #0, [X17] }

              if (v14 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v174 + 4 * (v122++ & 7)) = v136;
          }

          while (v126 != v122);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v80[BestMatch_dictMatchState_6_6];
      if (&v80[BestMatch_dictMatchState_6_6] > v84)
      {
        v21 = &v80[BestMatch_dictMatchState_6_6];
        goto LABEL_50;
      }

      v144 = v17;
      v145 = v18;
      while (1)
      {
        v17 = v145;
        v145 = v144;
        v146 = (v5 - v10 - v17);
        v147 = v146 >= v11 ? v10 : v181 - v175;
        if ((v146 - v11) > 0xFFFFFFFC)
        {
          break;
        }

        v148 = v147 + v146;
        if (*(v147 + v146) != *v5)
        {
          break;
        }

        if (v146 >= v11)
        {
          v149 = v8;
        }

        else
        {
          v149 = v176;
        }

        v150 = (v5 + 4);
        v151 = (v148 + 4);
        v152 = &v149[v5 - v148];
        if (v152 >= v8)
        {
          v152 = v8;
        }

        if (v152 - 7 <= v150)
        {
          v153 = v151;
          v155 = (v5 + 4);
        }

        else
        {
          if (*v151 != *v150)
          {
            v158 = __clz(__rbit64(*v150 ^ *v151)) >> 3;
            goto LABEL_178;
          }

          v153 = (v147 + v146 + 12);
          v154 = (v5 + 12);
          while (1)
          {
            v155 = v154;
            if (v154 >= (v152 - 7))
            {
              break;
            }

            v157 = *v153;
            v153 += 4;
            v156 = v157;
            v154 += 8;
            if (v157 != *v155)
            {
              v158 = &v155[__clz(__rbit64(*v155 ^ v156)) >> 3] - v150;
              goto LABEL_178;
            }
          }
        }

        if (v155 < v152 - 3 && *v153 == *v155)
        {
          v153 += 2;
          v155 += 4;
        }

        if (v155 < v152 - 1 && *v153 == *v155)
        {
          ++v153;
          v155 += 2;
        }

        if (v155 < v152 && *v153 == *v155)
        {
          ++v155;
        }

        v158 = v155 - v150;
LABEL_178:
        if (v151 + v158 == v149)
        {
          v160 = &v150[v158];
          if (v173 > v160)
          {
            if (*v183 == *v160)
            {
              v161 = 0;
              v162 = &v5[v158];
              while (1)
              {
                v163 = &v162[v161 + 12];
                if (v163 >= v173)
                {
                  break;
                }

                v164 = *(v172 + v161);
                v165 = *v163;
                v161 += 8;
                if (v164 != v165)
                {
                  v166 = &v162[v161 + 4 + (__clz(__rbit64(v165 ^ v164)) >> 3)];
                  goto LABEL_201;
                }
              }

              v167 = (v172 + v161);
              v166 = &v5[v158 + 12 + v161];
LABEL_192:
              if (v166 < v8 - 3 && *v167 == *v166)
              {
                v167 = (v167 + 4);
                v166 += 4;
              }

              if (v166 < v8 - 1 && *v167 == *v166)
              {
                v167 = (v167 + 2);
                v166 += 2;
              }

              if (v166 < v8 && *v167 == *v166)
              {
                ++v166;
              }

LABEL_201:
              v168 = v166 - v160;
            }

            else
            {
              v168 = __clz(__rbit64(*v160 ^ *v183)) >> 3;
            }

            v158 += v168;
            if (v5 > v182)
            {
              goto LABEL_181;
            }

LABEL_180:
            **(a2 + 24) = *v5;
            v121 = *(a2 + 8);
            goto LABEL_181;
          }

          v167 = v183;
          v166 = v160;
          goto LABEL_192;
        }

        if (v5 <= v182)
        {
          goto LABEL_180;
        }

LABEL_181:
        *(v121 + 4) = 0;
        *v121 = 1;
        if (v158 + 1 >= 0x10000)
        {
          v159 = (v121 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v159;
        }

        *(v121 + 6) = v158 + 1;
        v121 += 8;
        v5 += v158 + 4;
        *(a2 + 8) = v121;
        v144 = v17;
        v18 = v145;
        v21 = v5;
        if (v5 > v84)
        {
          goto LABEL_50;
        }
      }

      v18 = v17;
      v17 = v144;
      v21 = v5;
LABEL_50:
      if (v21 >= v84)
      {
        goto LABEL_205;
      }
    }

    v7 = v180;
    v16 = v177;
    if (v5 <= v83)
    {
      v96 = (v95 + v83 - v5);
      *v95 = *v5;
      if (v83 - v5 >= 17)
      {
        v97 = v95 + 1;
        v98 = (v5 + 32);
        do
        {
          *v97 = *(v98 - 1);
          v99 = *v98;
          v98 += 2;
          v97[1] = v99;
          v97 += 2;
        }

        while (v97 < v96);
      }

      v5 = v83;
      v95 = v96;
    }

    if (v5 < v80)
    {
      v100 = v80 - v5;
      if ((v80 - v5) < 8)
      {
        v108 = v95;
        goto LABEL_120;
      }

      if ((v95 - v5) < 0x20)
      {
        v108 = v95;
        goto LABEL_120;
      }

      if (v100 >= 0x20)
      {
        v101 = v100 & 0xFFFFFFFFFFFFFFE0;
        v109 = (v5 + 16);
        v110 = v95 + 1;
        v111 = v100 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v112 = *v109;
          *(v110 - 1) = *(v109 - 1);
          *v110 = v112;
          v109 += 2;
          v110 += 2;
          v111 -= 32;
        }

        while (v111);
        if (v100 == v101)
        {
          goto LABEL_121;
        }

        if ((v100 & 0x18) == 0)
        {
          v5 += v101;
          v108 = v95 + v101;
          do
          {
LABEL_120:
            v118 = *v5++;
            *v108++ = v118;
          }

          while (v5 != v80);
          goto LABEL_121;
        }
      }

      else
      {
        v101 = 0;
      }

      v113 = v100 & 0xFFFFFFFFFFFFFFF8;
      v108 = v95 + (v100 & 0xFFFFFFFFFFFFFFF8);
      v114 = v101 - (v100 & 0xFFFFFFFFFFFFFFF8);
      v115 = &v5[v101];
      v116 = (v95 + v101);
      do
      {
        v117 = *v115;
        v115 += 8;
        *v116++ = v117;
        v114 += 8;
      }

      while (v114);
      if (v100 != v113)
      {
        v5 += v113;
        goto LABEL_120;
      }
    }

LABEL_121:
    *(a2 + 24) += v94;
    v107 = *(a2 + 8);
    if (v94 >= 0x10000)
    {
      v119 = (v107 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v119;
    }

    goto LABEL_123;
  }

LABEL_205:
  *a3 = v17;
  a3[1] = v18;
  return v8 - v5;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_4_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v134 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v132 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = -1640531535 * *a2;
  v18 = v17 >> (24 - *(v16 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    v27 = (v17 ^ v14) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v130 = a3;
    v28 = a1 + 64;
    v29 = *(a1 + 44);
    if (v9 - v29 >= 0x181)
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
      if (v29 <= 0xFFFFFF9F)
      {
        v100 = v29 + 96;
        v101 = *(a1 + 52);
        v102 = 24 - v7;
        do
        {
          v103 = ((-1640531535 * *(v8 + 8 + v29)) ^ *(a1 + 96)) >> v102;
          v104 = (v103 >> 4) & 0xFFFFFF0;
          _X23 = v5 + 4 * v104;
          __asm { PRFM            #0, [X23] }

          _X22 = v6 + v104;
          __asm { PRFM            #0, [X22] }

          v109 = *(v28 + 4 * (v29 & 7));
          *(v28 + 4 * (v29 & 7)) = v103;
          v110 = (v109 >> 4) & 0xFFFFFF0;
          v111 = v5 + 4 * v110;
          v112 = (v6 + v110);
          if (((*v112 - 1) & 0xF) != 0)
          {
            v113 = 0;
          }

          else
          {
            v113 = 15;
          }

          v114 = v113 + ((*v112 - 1) & 0xF);
          *v112 = v114;
          v112[v114] = v109;
          *(v111 + 4 * v114) = v29++;
        }

        while (v100 != v29);
        v31 = *(a1 + 112);
        v30 = *(a1 + 56);
        LOBYTE(v7) = v101;
      }

      v115 = v9 - 32;
      LODWORD(v29) = v9 - 32;
      v116 = a2 + 1 - (v8 + v115);
      if ((v116 + 1) < 8)
      {
        v117 = v116 + 1;
      }

      else
      {
        v117 = 8;
      }

      if ((a2 + 1) >= v8 + v115)
      {
        v118 = v117;
      }

      else
      {
        v118 = 0;
      }

      if (v115 < v118 + v115)
      {
        v119 = v7;
        v120 = *(a1 + 96);
        v121 = 24 - *(a1 + 52);
        do
        {
          v122 = ((-1640531535 * *(v8 + v115)) ^ v120) >> v121;
          v123 = (v122 >> 4) & 0xFFFFFF0;
          _X26 = v31 + 4 * v123;
          __asm { PRFM            #0, [X26] }

          _X24 = v30 + v123;
          __asm { PRFM            #0, [X24] }

          *(v28 + 4 * (v115++ & 7)) = v122;
          --v118;
        }

        while (v118);
        LOBYTE(v7) = v119;
      }
    }

    else
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
    }

    if (v29 >= v9)
    {
      v36 = v9;
    }

    else
    {
      v32 = v7;
      v33 = *(a1 + 8) + 8;
      v34 = 24 - *(a1 + 52);
      v35 = v29;
      v36 = v9;
      do
      {
        v37 = ((-1640531535 * *(v33 + v35)) ^ *(a1 + 96)) >> v34;
        v38 = (v37 >> 4) & 0xFFFFFF0;
        _X26 = v31 + 4 * v38;
        __asm { PRFM            #0, [X26] }

        _X24 = v30 + v38;
        __asm { PRFM            #0, [X24] }

        v43 = *(v28 + 4 * (v35 & 7));
        *(v28 + 4 * (v35 & 7)) = v37;
        v44 = (v43 >> 4) & 0xFFFFFF0;
        v45 = v31 + 4 * v44;
        v46 = (v30 + v44);
        if (((*v46 - 1) & 0xF) != 0)
        {
          v47 = 0;
        }

        else
        {
          v47 = 15;
        }

        v48 = v47 + ((*v46 - 1) & 0xF);
        *v46 = v48;
        v46[v48] = v43;
        *(v45 + 4 * v48) = v35++;
      }

      while (v9 != v35);
      LOBYTE(v7) = v32;
    }

    *(a1 + 44) = v9;
    v49 = ((-1640531535 * *(v8 + v36 + 8)) ^ v14) >> (24 - v7);
    v50 = (v49 >> 4) & 0xFFFFFF0;
    _X2 = v5 + 4 * v50;
    __asm { PRFM            #0, [X2] }

    _X17 = v6 + v50;
    __asm { PRFM            #0, [X17] }

    v27 = *(v28 + 4 * (v9 & 7));
    *(v28 + 4 * (v9 & 7)) = v49;
    a3 = v130;
  }

  *(a1 + 104) += v27;
  v55 = (v27 >> 4) & 0xFFFFFF0;
  v56 = v5 + 4 * v55;
  v57 = (v6 + v55);
  v58 = *v57;
  v59 = __ROR8__(vshrn_n_s16(vceqq_s8(*v57, vdupq_n_s8(v27)), 4uLL), 4 * v57->i8[0]) & 0x8888888888888888;
  if (v59)
  {
    v60 = 0;
    v61 = (4 * v57->i8[0]);
    do
    {
      v62 = ((__clz(__rbit64(v59)) + v61) >> 2) & 0xF;
      if (v62)
      {
        v63 = *(v56 + 4 * v62);
        if (v63 < v12)
        {
          break;
        }

        _X7 = v8 + v63;
        __asm { PRFM            #0, [X7] }

        v133[v60++] = v63;
        --v15;
      }

      v59 &= v59 - 1;
    }

    while (v59 && v15);
  }

  else
  {
    v60 = 0;
  }

  if (((v58 - 1) & 0xF) != 0)
  {
    v66 = 0;
  }

  else
  {
    v66 = 15;
  }

  v67 = v66 + ((v58 - 1) & 0xF);
  v57->i8[0] = v67;
  v57->i8[v67] = v27;
  v68 = *(a1 + 44);
  *(a1 + 44) = v68 + 1;
  *(v56 + 4 * v67) = v68;
  if (v60)
  {
    v69 = 0;
    v70 = (a3 - 7);
    v71 = a3 - 1;
    v72 = 3;
    while (1)
    {
      v74 = v133[v69];
      v75 = (v8 + v74);
      if (*(v8 + v74 + v72 - 3) != *&a2[v72 - 3])
      {
        goto LABEL_36;
      }

      if (v70 <= a2)
      {
        v77 = a2;
        goto LABEL_46;
      }

      if (*v75 == *a2)
      {
        break;
      }

      v73 = __clz(__rbit64(*a2 ^ *v75)) >> 3;
      if (v73 <= v72)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v74;
      v72 = v73;
      if (&a2[v73] == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v69;
      v73 = v72;
      if (v69 == v60)
      {
        goto LABEL_64;
      }
    }

    v75 = (v8 + 8 + v74);
    v76 = a2 + 8;
    while (1)
    {
      v77 = v76;
      if (v76 >= v70)
      {
        break;
      }

      v79 = *v75++;
      v78 = v79;
      v76 += 8;
      if (v79 != *v77)
      {
        v73 = &v77[__clz(__rbit64(*v77 ^ v78)) >> 3] - a2;
        if (v73 <= v72)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v77 < a3 - 3)
    {
      if (*v75 == *v77)
      {
        v75 = (v75 + 4);
        v77 += 4;
      }

      if (v77 >= v71)
      {
LABEL_48:
        if (v77 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v77 >= v71)
    {
      goto LABEL_48;
    }

    if (*v75 == *v77)
    {
      v75 = (v75 + 2);
      v77 += 2;
    }

    if (v77 >= a3)
    {
LABEL_51:
      v73 = v77 - a2;
      if (v77 - a2 <= v72)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v75 == *v77)
    {
      ++v77;
    }

    goto LABEL_51;
  }

  v73 = 3;
LABEL_64:
  v80 = 4 * _X13->i8[0];
  v81 = __ROR8__(vshrn_n_s16(vceqq_s8(*_X13, vdupq_n_s8(v18)), 4uLL), v80) & 0x8888888888888888;
  if (v81)
  {
    v82 = v15 == 0;
  }

  else
  {
    v82 = 1;
  }

  if (!v82)
  {
    v83 = 0;
    v84 = *(v16 + 24);
    v85 = *(v16 + 8);
    v131 = *v16;
    v86 = *v16 - v85;
    v87 = v80 & 0xFC;
    do
    {
      v88 = ((__clz(__rbit64(v81)) + v87) >> 2) & 0xF;
      if (v88)
      {
        v89 = *(_X10 + 4 * v88);
        if (v89 < v84)
        {
          break;
        }

        _X17 = v85 + v89;
        __asm { PRFM            #0, [X17] }

        v133[v83++] = v89;
        --v15;
      }

      v81 &= v81 - 1;
    }

    while (v81 && v15);
    if (v83)
    {
      v92 = *a2;
      v128 = v9 - v132 + v86 + 3;
      v93 = v133;
      do
      {
        v95 = *v93++;
        v94 = v95;
        v96 = v85 + v95;
        if (*v96 == v92)
        {
          v97 = a3;
          v98 = ZSTD_count_2segments(a2 + 4, (v96 + 4), a3, v131, (v8 + v132));
          a3 = v97;
          if (v98 + 4 > v73)
          {
            *a4 = v128 - v94;
            v73 = v98 + 4;
            if (&a2[v98 + 4] == v97)
            {
              break;
            }
          }
        }

        --v83;
      }

      while (v83);
    }
  }

  return v73;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_4_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v141 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v139 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = -1640531535 * *a2;
  v18 = v17 >> (24 - *(v16 + 52));
  v19 = (v18 >> 3) & 0x1FFFFFE0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    v28 = (v17 ^ v14) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v137 = a3;
    v29 = a1 + 64;
    v30 = *(a1 + 44);
    if (v9 - v30 >= 0x181)
    {
      v31 = *(a1 + 56);
      v32 = *(a1 + 112);
      if (v30 <= 0xFFFFFF9F)
      {
        v105 = v30 + 96;
        v106 = *(a1 + 52);
        v107 = 24 - v7;
        do
        {
          v108 = ((-1640531535 * *(v8 + 8 + v30)) ^ *(a1 + 96)) >> v107;
          v109 = (v108 >> 3) & 0x1FFFFFE0;
          _X23 = v5 + 4 * v109;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v109;
          __asm { PRFM            #0, [X22] }

          v115 = *(v29 + 4 * (v30 & 7));
          *(v29 + 4 * (v30 & 7)) = v108;
          v116 = (v115 >> 3) & 0x1FFFFFE0;
          v117 = v5 + 4 * v116;
          v118 = (v6 + v116);
          if (((*v118 - 1) & 0x1F) != 0)
          {
            v119 = 0;
          }

          else
          {
            v119 = 31;
          }

          v120 = v119 + ((*v118 - 1) & 0x1F);
          *v118 = v120;
          v118[v120] = v115;
          *(v117 + 4 * v120) = v30++;
        }

        while (v105 != v30);
        v32 = *(a1 + 112);
        v31 = *(a1 + 56);
        LOBYTE(v7) = v106;
      }

      v121 = v9 - 32;
      LODWORD(v30) = v9 - 32;
      v122 = a2 + 1 - (v8 + v121);
      if ((v122 + 1) < 8)
      {
        v123 = v122 + 1;
      }

      else
      {
        v123 = 8;
      }

      if ((a2 + 1) >= v8 + v121)
      {
        v124 = v123;
      }

      else
      {
        v124 = 0;
      }

      if (v121 < v124 + v121)
      {
        v125 = v7;
        v126 = *(a1 + 96);
        v127 = 24 - *(a1 + 52);
        do
        {
          v128 = ((-1640531535 * *(v8 + v121)) ^ v126) >> v127;
          v129 = (v128 >> 3) & 0x1FFFFFE0;
          _X26 = v32 + 4 * v129;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v31 + v129;
          __asm { PRFM            #0, [X24] }

          *(v29 + 4 * (v121++ & 7)) = v128;
          --v124;
        }

        while (v124);
        LOBYTE(v7) = v125;
      }
    }

    else
    {
      v31 = *(a1 + 56);
      v32 = *(a1 + 112);
    }

    if (v30 >= v9)
    {
      v37 = v9;
    }

    else
    {
      v33 = v7;
      v34 = *(a1 + 8) + 8;
      v35 = 24 - *(a1 + 52);
      v36 = v30;
      v37 = v9;
      do
      {
        v38 = ((-1640531535 * *(v34 + v36)) ^ *(a1 + 96)) >> v35;
        v39 = (v38 >> 3) & 0x1FFFFFE0;
        _X26 = v32 + 4 * v39;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v31 + v39;
        __asm { PRFM            #0, [X24] }

        v45 = *(v29 + 4 * (v36 & 7));
        *(v29 + 4 * (v36 & 7)) = v38;
        v46 = (v45 >> 3) & 0x1FFFFFE0;
        v47 = v32 + 4 * v46;
        v48 = (v31 + v46);
        if (((*v48 - 1) & 0x1F) != 0)
        {
          v49 = 0;
        }

        else
        {
          v49 = 31;
        }

        v50 = v49 + ((*v48 - 1) & 0x1F);
        *v48 = v50;
        v48[v50] = v45;
        *(v47 + 4 * v50) = v36++;
      }

      while (v9 != v36);
      LOBYTE(v7) = v33;
    }

    *(a1 + 44) = v9;
    v51 = ((-1640531535 * *(v8 + v37 + 8)) ^ v14) >> (24 - v7);
    v52 = (v51 >> 3) & 0x1FFFFFE0;
    _X2 = v5 + 4 * v52;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v52;
    __asm { PRFM            #0, [X17] }

    v28 = *(v29 + 4 * (v9 & 7));
    *(v29 + 4 * (v9 & 7)) = v51;
    a3 = v137;
  }

  *(a1 + 104) += v28;
  v58 = (v28 >> 3) & 0x1FFFFFE0;
  v59 = v5 + 4 * v58;
  v60 = (v6 + v58);
  v142 = vld2q_s16(v60);
  v61 = *v60;
  v62 = vdupq_n_s8(v28);
  v63 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v62, v142.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v62, v142.val[1]), 6uLL), 4uLL), 2 * *v60) & 0x5555555555555555;
  if (v63)
  {
    v64 = 0;
    v65 = (2 * *v60);
    do
    {
      v66 = ((__clz(__rbit64(v63)) + v65) >> 1) & 0x1F;
      if (v66)
      {
        v67 = *(v59 + 4 * v66);
        if (v67 < v12)
        {
          break;
        }

        _X7 = v8 + v67;
        __asm { PRFM            #0, [X7] }

        v140[v64++] = v67;
        --v15;
      }

      v63 &= v63 - 1;
    }

    while (v63 && v15);
  }

  else
  {
    v64 = 0;
  }

  if (((v61 - 1) & 0x1F) != 0)
  {
    v70 = 0;
  }

  else
  {
    v70 = 31;
  }

  v71 = v70 + ((v61 - 1) & 0x1F);
  *v60 = v71;
  *(v60 + v71) = v28;
  v72 = *(a1 + 44);
  *(a1 + 44) = v72 + 1;
  *(v59 + 4 * v71) = v72;
  if (v64)
  {
    v73 = 0;
    v74 = (a3 - 7);
    v75 = a3 - 1;
    v76 = 3;
    while (1)
    {
      v78 = v140[v73];
      v79 = (v8 + v78);
      if (*(v8 + v78 + v76 - 3) != *&a2[v76 - 3])
      {
        goto LABEL_36;
      }

      if (v74 <= a2)
      {
        v81 = a2;
        goto LABEL_46;
      }

      if (*v79 == *a2)
      {
        break;
      }

      v77 = __clz(__rbit64(*a2 ^ *v79)) >> 3;
      if (v77 <= v76)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v78;
      v76 = v77;
      if (&a2[v77] == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v73;
      v77 = v76;
      if (v73 == v64)
      {
        goto LABEL_64;
      }
    }

    v79 = (v8 + 8 + v78);
    v80 = a2 + 8;
    while (1)
    {
      v81 = v80;
      if (v80 >= v74)
      {
        break;
      }

      v83 = *v79++;
      v82 = v83;
      v80 += 8;
      if (v83 != *v81)
      {
        v77 = &v81[__clz(__rbit64(*v81 ^ v82)) >> 3] - a2;
        if (v77 <= v76)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v81 < a3 - 3)
    {
      if (*v79 == *v81)
      {
        v79 = (v79 + 4);
        v81 += 4;
      }

      if (v81 >= v75)
      {
LABEL_48:
        if (v81 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v81 >= v75)
    {
      goto LABEL_48;
    }

    if (*v79 == *v81)
    {
      v79 = (v79 + 2);
      v81 += 2;
    }

    if (v81 >= a3)
    {
LABEL_51:
      v77 = v81 - a2;
      if (v81 - a2 <= v76)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v79 == *v81)
    {
      ++v81;
    }

    goto LABEL_51;
  }

  v77 = 3;
LABEL_64:
  v84 = 2 * *_X13;
  v143 = vld2q_s16(_X13);
  v85 = vdupq_n_s8(v18);
  v86 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v85, v143.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v85, v143.val[1]), 6uLL), 4uLL), v84) & 0x5555555555555555;
  if (v86)
  {
    v87 = v15 == 0;
  }

  else
  {
    v87 = 1;
  }

  if (!v87)
  {
    v88 = 0;
    v89 = *(v16 + 24);
    v90 = *(v16 + 8);
    v138 = *v16;
    v91 = *v16 - v90;
    v92 = v84 & 0xFE;
    do
    {
      v93 = ((__clz(__rbit64(v86)) + v92) >> 1) & 0x1F;
      if (v93)
      {
        v94 = *(_X10 + 4 * v93);
        if (v94 < v89)
        {
          break;
        }

        _X17 = v90 + v94;
        __asm { PRFM            #0, [X17] }

        v140[v88++] = v94;
        --v15;
      }

      v86 &= v86 - 1;
    }

    while (v86 && v15);
    if (v88)
    {
      v97 = *a2;
      v135 = v9 - v139 + v91 + 3;
      v98 = v140;
      do
      {
        v100 = *v98++;
        v99 = v100;
        v101 = v90 + v100;
        if (*v101 == v97)
        {
          v102 = a3;
          v103 = ZSTD_count_2segments(a2 + 4, (v101 + 4), a3, v138, (v8 + v139));
          a3 = v102;
          if (v103 + 4 > v77)
          {
            *a4 = v135 - v99;
            v77 = v103 + 4;
            if (&a2[v103 + 4] == v102)
            {
              break;
            }
          }
        }

        --v88;
      }

      while (v88);
    }
  }

  return v77;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_4_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v146 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v144 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = -1640531535 * *a2;
  v18 = v17 >> (24 - *(v16 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X12 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X12]
    PRFM            #0, [X12,#0x20]
  }

  if (*(a1 + 300))
  {
    v29 = (v17 ^ v14) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v142 = a3;
    v30 = a1 + 64;
    v31 = *(a1 + 44);
    if (v9 - v31 >= 0x181)
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 112);
      if (v31 <= 0xFFFFFF9F)
      {
        v108 = v31 + 96;
        v109 = *(a1 + 52);
        v110 = 24 - v7;
        do
        {
          v111 = ((-1640531535 * *(v8 + 8 + v31)) ^ *(a1 + 96)) >> v110;
          v112 = (v111 >> 2) & 0x3FFFFFC0;
          _X23 = v5 + 4 * v112;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v112;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v119 = *(v30 + 4 * (v31 & 7));
          *(v30 + 4 * (v31 & 7)) = v111;
          v120 = (v119 >> 2) & 0x3FFFFFC0;
          v121 = v5 + 4 * v120;
          v122 = (v6 + v120);
          if (((*v122 - 1) & 0x3F) != 0)
          {
            v123 = 0;
          }

          else
          {
            v123 = 63;
          }

          v124 = v123 + ((*v122 - 1) & 0x3F);
          *v122 = v124;
          v122[v124] = v119;
          *(v121 + 4 * v124) = v31++;
        }

        while (v108 != v31);
        v33 = *(a1 + 112);
        v32 = *(a1 + 56);
        LOBYTE(v7) = v109;
      }

      v125 = v9 - 32;
      LODWORD(v31) = v9 - 32;
      v126 = a2 + 1 - (v8 + v125);
      if ((v126 + 1) < 8)
      {
        v127 = v126 + 1;
      }

      else
      {
        v127 = 8;
      }

      if ((a2 + 1) >= v8 + v125)
      {
        v128 = v127;
      }

      else
      {
        v128 = 0;
      }

      if (v125 < v128 + v125)
      {
        v129 = v7;
        v130 = *(a1 + 96);
        v131 = 24 - *(a1 + 52);
        do
        {
          v132 = ((-1640531535 * *(v8 + v125)) ^ v130) >> v131;
          v133 = (v132 >> 2) & 0x3FFFFFC0;
          _X26 = v33 + 4 * v133;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v32 + v133;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v30 + 4 * (v125++ & 7)) = v132;
          --v128;
        }

        while (v128);
        LOBYTE(v7) = v129;
      }
    }

    else
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 112);
    }

    if (v31 >= v9)
    {
      v38 = v9;
    }

    else
    {
      v34 = v7;
      v35 = *(a1 + 8) + 8;
      v36 = 24 - *(a1 + 52);
      v37 = v31;
      v38 = v9;
      do
      {
        v39 = ((-1640531535 * *(v35 + v37)) ^ *(a1 + 96)) >> v36;
        v40 = (v39 >> 2) & 0x3FFFFFC0;
        _X26 = v33 + 4 * v40;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v32 + v40;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v47 = *(v30 + 4 * (v37 & 7));
        *(v30 + 4 * (v37 & 7)) = v39;
        v48 = (v47 >> 2) & 0x3FFFFFC0;
        v49 = v33 + 4 * v48;
        v50 = (v32 + v48);
        if (((*v50 - 1) & 0x3F) != 0)
        {
          v51 = 0;
        }

        else
        {
          v51 = 63;
        }

        v52 = v51 + ((*v50 - 1) & 0x3F);
        *v50 = v52;
        v50[v52] = v47;
        *(v49 + 4 * v52) = v37++;
      }

      while (v9 != v37);
      LOBYTE(v7) = v34;
    }

    *(a1 + 44) = v9;
    v53 = ((-1640531535 * *(v8 + v38 + 8)) ^ v14) >> (24 - v7);
    v54 = (v53 >> 2) & 0x3FFFFFC0;
    _X2 = v5 + 4 * v54;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v54;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x20]
    }

    v29 = *(v30 + 4 * (v9 & 7));
    *(v30 + 4 * (v9 & 7)) = v53;
    a3 = v142;
  }

  *(a1 + 104) += v29;
  v61 = (v29 >> 2) & 0x3FFFFFC0;
  v62 = v5 + 4 * v61;
  v63 = (v6 + v61);
  v64 = *v63;
  v147 = vld4q_s8(v63);
  v65 = vdupq_n_s8(v29);
  v147.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v147.val[3], v65), vceqq_s8(v147.val[2], v65), 1uLL), vsriq_n_s8(vceqq_s8(v147.val[1], v65), vceqq_s8(v147.val[0], v65), 1uLL), 2uLL);
  v66 = vshrn_n_s16(vsriq_n_s8(v147.val[0], v147.val[0], 4uLL), 4uLL);
  v67 = 0;
  if (v66)
  {
    v68 = __ROR8__(*&v66, v64);
    do
    {
      v69 = (__clz(__rbit64(v68)) + v64) & 0x3F;
      if (v69)
      {
        v70 = *(v62 + 4 * v69);
        if (v70 < v12)
        {
          break;
        }

        _X6 = v8 + v70;
        __asm { PRFM            #0, [X6] }

        v145[v67++] = v70;
        --v15;
      }

      v68 &= v68 - 1;
    }

    while (v68 && v15);
  }

  if (((v64 - 1) & 0x3F) != 0)
  {
    v73 = 0;
  }

  else
  {
    v73 = 63;
  }

  v74 = v73 + ((v64 - 1) & 0x3F);
  *v63 = v74;
  v63[v74] = v29;
  v75 = *(a1 + 44);
  *(a1 + 44) = v75 + 1;
  *(v62 + 4 * v74) = v75;
  if (v67)
  {
    v76 = 0;
    v77 = (a3 - 7);
    v78 = a3 - 1;
    v79 = 3;
    while (1)
    {
      v81 = v145[v76];
      v82 = (v8 + v81);
      if (*(v8 + v81 + v79 - 3) != *&a2[v79 - 3])
      {
        goto LABEL_34;
      }

      if (v77 <= a2)
      {
        v84 = a2;
        goto LABEL_44;
      }

      if (*v82 == *a2)
      {
        break;
      }

      v80 = __clz(__rbit64(*a2 ^ *v82)) >> 3;
      if (v80 <= v79)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v9 + 3 - v81;
      v79 = v80;
      if (&a2[v80] == a3)
      {
        goto LABEL_62;
      }

LABEL_34:
      ++v76;
      v80 = v79;
      if (v76 == v67)
      {
        goto LABEL_62;
      }
    }

    v82 = (v8 + 8 + v81);
    v83 = a2 + 8;
    while (1)
    {
      v84 = v83;
      if (v83 >= v77)
      {
        break;
      }

      v86 = *v82++;
      v85 = v86;
      v83 += 8;
      if (v86 != *v84)
      {
        v80 = &v84[__clz(__rbit64(*v84 ^ v85)) >> 3] - a2;
        if (v80 <= v79)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v84 < a3 - 3)
    {
      if (*v82 == *v84)
      {
        v82 = (v82 + 4);
        v84 += 4;
      }

      if (v84 >= v78)
      {
LABEL_46:
        if (v84 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v84 >= v78)
    {
      goto LABEL_46;
    }

    if (*v82 == *v84)
    {
      v82 = (v82 + 2);
      v84 += 2;
    }

    if (v84 >= a3)
    {
LABEL_49:
      v80 = v84 - a2;
      if (v84 - a2 <= v79)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v82 == *v84)
    {
      ++v84;
    }

    goto LABEL_49;
  }

  v80 = 3;
LABEL_62:
  v148 = vld4q_s8(_X12);
  v87 = vdupq_n_s8(v18);
  v148.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v148.val[3], v87), vceqq_s8(v148.val[2], v87), 1uLL), vsriq_n_s8(vceqq_s8(v148.val[1], v87), vceqq_s8(v148.val[0], v87), 1uLL), 2uLL);
  v88 = vshrn_n_s16(vsriq_n_s8(v148.val[0], v148.val[0], 4uLL), 4uLL);
  if (v88)
  {
    v89 = v15 == 0;
  }

  else
  {
    v89 = 1;
  }

  if (!v89)
  {
    v90 = 0;
    v91 = *(v16 + 24);
    v92 = *(v16 + 8);
    v143 = *v16;
    v93 = *v16 - v92;
    v94 = *_X12;
    v95 = __ROR8__(*&v88, v94);
    do
    {
      v96 = (__clz(__rbit64(v95)) + v94) & 0x3F;
      if (v96)
      {
        v97 = *(_X10 + 4 * v96);
        if (v97 < v91)
        {
          break;
        }

        _X17 = v92 + v97;
        __asm { PRFM            #0, [X17] }

        v145[v90++] = v97;
        --v15;
      }

      v95 &= v95 - 1;
    }

    while (v95 && v15);
    if (v90)
    {
      v100 = *a2;
      v140 = v9 - v144 + v93 + 3;
      v101 = v145;
      do
      {
        v103 = *v101++;
        v102 = v103;
        v104 = v92 + v103;
        if (*v104 == v100)
        {
          v105 = a3;
          v106 = ZSTD_count_2segments(a2 + 4, (v104 + 4), a3, v143, (v8 + v144));
          a3 = v105;
          if (v106 + 4 > v80)
          {
            *a4 = v140 - v102;
            v80 = v106 + 4;
            if (&a2[v106 + 4] == v105)
            {
              break;
            }
          }
        }

        --v90;
      }

      while (v90);
    }
  }

  return v80;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_5_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v133 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v131 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBB000000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v129 = a3;
    v28 = a1 + 64;
    v29 = *(a1 + 44);
    if (v9 - v29 >= 0x181)
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
      if (v29 <= 0xFFFFFF9F)
      {
        v99 = v29 + 96;
        v100 = *(a1 + 52);
        v101 = 56 - v7;
        do
        {
          v102 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v29)) ^ *(a1 + 96)) >> v101;
          v103 = (v102 >> 4) & 0xFFFFFF0;
          _X23 = v5 + 4 * v103;
          __asm { PRFM            #0, [X23] }

          _X22 = v6 + v103;
          __asm { PRFM            #0, [X22] }

          v108 = *(v28 + 4 * (v29 & 7));
          *(v28 + 4 * (v29 & 7)) = v102;
          v109 = (v108 >> 4) & 0xFFFFFF0;
          v110 = v5 + 4 * v109;
          v111 = (v6 + v109);
          if (((*v111 - 1) & 0xF) != 0)
          {
            v112 = 0;
          }

          else
          {
            v112 = 15;
          }

          v113 = v112 + ((*v111 - 1) & 0xF);
          *v111 = v113;
          v111[v113] = v108;
          *(v110 + 4 * v113) = v29++;
        }

        while (v99 != v29);
        v31 = *(a1 + 112);
        v30 = *(a1 + 56);
        LOBYTE(v7) = v100;
      }

      v114 = v9 - 32;
      LODWORD(v29) = v9 - 32;
      v115 = a2 + 1 - (v8 + v114);
      if ((v115 + 1) < 8)
      {
        v116 = v115 + 1;
      }

      else
      {
        v116 = 8;
      }

      if ((a2 + 1) >= v8 + v114)
      {
        v117 = v116;
      }

      else
      {
        v117 = 0;
      }

      if (v114 < v117 + v114)
      {
        v118 = v7;
        v119 = *(a1 + 96);
        v120 = 56 - *(a1 + 52);
        do
        {
          v121 = ((0xCF1BBCDCBB000000 * *(v8 + v114)) ^ v119) >> v120;
          v122 = (v121 >> 4) & 0xFFFFFF0;
          _X26 = v31 + 4 * v122;
          __asm { PRFM            #0, [X26] }

          _X24 = v30 + v122;
          __asm { PRFM            #0, [X24] }

          *(v28 + 4 * (v114++ & 7)) = v121;
          --v117;
        }

        while (v117);
        LOBYTE(v7) = v118;
      }
    }

    else
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
    }

    if (v29 >= v9)
    {
      v36 = v9;
    }

    else
    {
      v32 = v7;
      v33 = *(a1 + 8) + 8;
      v34 = 56 - *(a1 + 52);
      v35 = v29;
      v36 = v9;
      do
      {
        v37 = ((0xCF1BBCDCBB000000 * *(v33 + v35)) ^ *(a1 + 96)) >> v34;
        v38 = (v37 >> 4) & 0xFFFFFF0;
        _X26 = v31 + 4 * v38;
        __asm { PRFM            #0, [X26] }

        _X24 = v30 + v38;
        __asm { PRFM            #0, [X24] }

        v43 = *(v28 + 4 * (v35 & 7));
        *(v28 + 4 * (v35 & 7)) = v37;
        v44 = (v43 >> 4) & 0xFFFFFF0;
        v45 = v31 + 4 * v44;
        v46 = (v30 + v44);
        if (((*v46 - 1) & 0xF) != 0)
        {
          v47 = 0;
        }

        else
        {
          v47 = 15;
        }

        v48 = v47 + ((*v46 - 1) & 0xF);
        *v46 = v48;
        v46[v48] = v43;
        *(v45 + 4 * v48) = v35++;
      }

      while (v9 != v35);
      LOBYTE(v7) = v32;
    }

    *(a1 + 44) = v9;
    v49 = ((0xCF1BBCDCBB000000 * *(v8 + v36 + 8)) ^ v14) >> (56 - v7);
    v50 = (v49 >> 4) & 0xFFFFFF0;
    _X2 = v5 + 4 * v50;
    __asm { PRFM            #0, [X2] }

    _X17 = v6 + v50;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v28 + 4 * (v9 & 7));
    *(v28 + 4 * (v9 & 7)) = v49;
    a3 = v129;
  }

  *(a1 + 104) += _X17;
  v54 = (_X17 >> 4) & 0xFFFFFF0;
  v55 = v5 + 4 * v54;
  v56 = (v6 + v54);
  v57 = *v56;
  v58 = __ROR8__(vshrn_n_s16(vceqq_s8(*v56, vdupq_n_s8(_X17)), 4uLL), 4 * v56->i8[0]) & 0x8888888888888888;
  if (v58)
  {
    v59 = 0;
    v60 = (4 * v56->i8[0]);
    do
    {
      v61 = ((__clz(__rbit64(v58)) + v60) >> 2) & 0xF;
      if (v61)
      {
        v62 = *(v55 + 4 * v61);
        if (v62 < v12)
        {
          break;
        }

        _X7 = v8 + v62;
        __asm { PRFM            #0, [X7] }

        v132[v59++] = v62;
        --v15;
      }

      v58 &= v58 - 1;
    }

    while (v58 && v15);
  }

  else
  {
    v59 = 0;
  }

  if (((v57 - 1) & 0xF) != 0)
  {
    v65 = 0;
  }

  else
  {
    v65 = 15;
  }

  v66 = v65 + ((v57 - 1) & 0xF);
  v56->i8[0] = v66;
  v56->i8[v66] = _X17;
  v67 = *(a1 + 44);
  *(a1 + 44) = v67 + 1;
  *(v55 + 4 * v66) = v67;
  if (v59)
  {
    v68 = 0;
    v69 = (a3 - 7);
    v70 = a3 - 1;
    v71 = 3;
    while (1)
    {
      v73 = v132[v68];
      v74 = (v8 + v73);
      if (*(v8 + v73 + v71 - 3) != *&a2[v71 - 3])
      {
        goto LABEL_36;
      }

      if (v69 <= a2)
      {
        v76 = a2;
        goto LABEL_46;
      }

      if (*v74 == *a2)
      {
        break;
      }

      v72 = __clz(__rbit64(*a2 ^ *v74)) >> 3;
      if (v72 <= v71)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v73;
      v71 = v72;
      if (&a2[v72] == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v68;
      v72 = v71;
      if (v68 == v59)
      {
        goto LABEL_64;
      }
    }

    v74 = (v8 + 8 + v73);
    v75 = a2 + 8;
    while (1)
    {
      v76 = v75;
      if (v75 >= v69)
      {
        break;
      }

      v78 = *v74++;
      v77 = v78;
      v75 += 8;
      if (v78 != *v76)
      {
        v72 = &v76[__clz(__rbit64(*v76 ^ v77)) >> 3] - a2;
        if (v72 <= v71)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v76 < a3 - 3)
    {
      if (*v74 == *v76)
      {
        v74 = (v74 + 4);
        v76 += 4;
      }

      if (v76 >= v70)
      {
LABEL_48:
        if (v76 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v76 >= v70)
    {
      goto LABEL_48;
    }

    if (*v74 == *v76)
    {
      v74 = (v74 + 2);
      v76 += 2;
    }

    if (v76 >= a3)
    {
LABEL_51:
      v72 = v76 - a2;
      if (v76 - a2 <= v71)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v74 == *v76)
    {
      ++v76;
    }

    goto LABEL_51;
  }

  v72 = 3;
LABEL_64:
  v79 = 4 * _X13->i8[0];
  v80 = __ROR8__(vshrn_n_s16(vceqq_s8(*_X13, vdupq_n_s8(v18)), 4uLL), v79) & 0x8888888888888888;
  if (v80)
  {
    v81 = v15 == 0;
  }

  else
  {
    v81 = 1;
  }

  if (!v81)
  {
    v82 = 0;
    v83 = *(v16 + 24);
    v84 = *(v16 + 8);
    v130 = *v16;
    v85 = *v16 - v84;
    v86 = v79 & 0xFC;
    do
    {
      v87 = ((__clz(__rbit64(v80)) + v86) >> 2) & 0xF;
      if (v87)
      {
        v88 = *(_X10 + 4 * v87);
        if (v88 < v83)
        {
          break;
        }

        _X17 = v84 + v88;
        __asm { PRFM            #0, [X17] }

        v132[v82++] = v88;
        --v15;
      }

      v80 &= v80 - 1;
    }

    while (v80 && v15);
    if (v82)
    {
      v91 = *a2;
      v127 = v9 - v131 + v85 + 3;
      v92 = v132;
      do
      {
        v94 = *v92++;
        v93 = v94;
        v95 = v84 + v94;
        if (*v95 == v91)
        {
          v96 = a3;
          v97 = ZSTD_count_2segments(a2 + 4, (v95 + 4), a3, v130, (v8 + v131));
          a3 = v96;
          if (v97 + 4 > v72)
          {
            *a4 = v127 - v93;
            v72 = v97 + 4;
            if (&a2[v97 + 4] == v96)
            {
              break;
            }
          }
        }

        --v82;
      }

      while (v82);
    }
  }

  return v72;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_5_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v140 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v138 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBB000000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 3) & 0x1FFFFFE0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v136 = a3;
    v29 = a1 + 64;
    v30 = *(a1 + 44);
    if (v9 - v30 >= 0x181)
    {
      v31 = *(a1 + 56);
      v32 = *(a1 + 112);
      if (v30 <= 0xFFFFFF9F)
      {
        v104 = v30 + 96;
        v105 = *(a1 + 52);
        v106 = 56 - v7;
        do
        {
          v107 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v30)) ^ *(a1 + 96)) >> v106;
          v108 = (v107 >> 3) & 0x1FFFFFE0;
          _X23 = v5 + 4 * v108;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v108;
          __asm { PRFM            #0, [X22] }

          v114 = *(v29 + 4 * (v30 & 7));
          *(v29 + 4 * (v30 & 7)) = v107;
          v115 = (v114 >> 3) & 0x1FFFFFE0;
          v116 = v5 + 4 * v115;
          v117 = (v6 + v115);
          if (((*v117 - 1) & 0x1F) != 0)
          {
            v118 = 0;
          }

          else
          {
            v118 = 31;
          }

          v119 = v118 + ((*v117 - 1) & 0x1F);
          *v117 = v119;
          v117[v119] = v114;
          *(v116 + 4 * v119) = v30++;
        }

        while (v104 != v30);
        v32 = *(a1 + 112);
        v31 = *(a1 + 56);
        LOBYTE(v7) = v105;
      }

      v120 = v9 - 32;
      LODWORD(v30) = v9 - 32;
      v121 = a2 + 1 - (v8 + v120);
      if ((v121 + 1) < 8)
      {
        v122 = v121 + 1;
      }

      else
      {
        v122 = 8;
      }

      if ((a2 + 1) >= v8 + v120)
      {
        v123 = v122;
      }

      else
      {
        v123 = 0;
      }

      if (v120 < v123 + v120)
      {
        v124 = v7;
        v125 = *(a1 + 96);
        v126 = 56 - *(a1 + 52);
        do
        {
          v127 = ((0xCF1BBCDCBB000000 * *(v8 + v120)) ^ v125) >> v126;
          v128 = (v127 >> 3) & 0x1FFFFFE0;
          _X26 = v32 + 4 * v128;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v31 + v128;
          __asm { PRFM            #0, [X24] }

          *(v29 + 4 * (v120++ & 7)) = v127;
          --v123;
        }

        while (v123);
        LOBYTE(v7) = v124;
      }
    }

    else
    {
      v31 = *(a1 + 56);
      v32 = *(a1 + 112);
    }

    if (v30 >= v9)
    {
      v37 = v9;
    }

    else
    {
      v33 = v7;
      v34 = *(a1 + 8) + 8;
      v35 = 56 - *(a1 + 52);
      v36 = v30;
      v37 = v9;
      do
      {
        v38 = ((0xCF1BBCDCBB000000 * *(v34 + v36)) ^ *(a1 + 96)) >> v35;
        v39 = (v38 >> 3) & 0x1FFFFFE0;
        _X26 = v32 + 4 * v39;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v31 + v39;
        __asm { PRFM            #0, [X24] }

        v45 = *(v29 + 4 * (v36 & 7));
        *(v29 + 4 * (v36 & 7)) = v38;
        v46 = (v45 >> 3) & 0x1FFFFFE0;
        v47 = v32 + 4 * v46;
        v48 = (v31 + v46);
        if (((*v48 - 1) & 0x1F) != 0)
        {
          v49 = 0;
        }

        else
        {
          v49 = 31;
        }

        v50 = v49 + ((*v48 - 1) & 0x1F);
        *v48 = v50;
        v48[v50] = v45;
        *(v47 + 4 * v50) = v36++;
      }

      while (v9 != v36);
      LOBYTE(v7) = v33;
    }

    *(a1 + 44) = v9;
    v51 = ((0xCF1BBCDCBB000000 * *(v8 + v37 + 8)) ^ v14) >> (56 - v7);
    v52 = (v51 >> 3) & 0x1FFFFFE0;
    _X2 = v5 + 4 * v52;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v52;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v29 + 4 * (v9 & 7));
    *(v29 + 4 * (v9 & 7)) = v51;
    a3 = v136;
  }

  *(a1 + 104) += _X17;
  v57 = (_X17 >> 3) & 0x1FFFFFE0;
  v58 = v5 + 4 * v57;
  v59 = (v6 + v57);
  v141 = vld2q_s16(v59);
  v60 = *v59;
  v61 = vdupq_n_s8(_X17);
  v62 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v61, v141.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v61, v141.val[1]), 6uLL), 4uLL), 2 * *v59) & 0x5555555555555555;
  if (v62)
  {
    v63 = 0;
    v64 = (2 * *v59);
    do
    {
      v65 = ((__clz(__rbit64(v62)) + v64) >> 1) & 0x1F;
      if (v65)
      {
        v66 = *(v58 + 4 * v65);
        if (v66 < v12)
        {
          break;
        }

        _X7 = v8 + v66;
        __asm { PRFM            #0, [X7] }

        v139[v63++] = v66;
        --v15;
      }

      v62 &= v62 - 1;
    }

    while (v62 && v15);
  }

  else
  {
    v63 = 0;
  }

  if (((v60 - 1) & 0x1F) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = 31;
  }

  v70 = v69 + ((v60 - 1) & 0x1F);
  *v59 = v70;
  *(v59 + v70) = _X17;
  v71 = *(a1 + 44);
  *(a1 + 44) = v71 + 1;
  *(v58 + 4 * v70) = v71;
  if (v63)
  {
    v72 = 0;
    v73 = (a3 - 7);
    v74 = a3 - 1;
    v75 = 3;
    while (1)
    {
      v77 = v139[v72];
      v78 = (v8 + v77);
      if (*(v8 + v77 + v75 - 3) != *&a2[v75 - 3])
      {
        goto LABEL_36;
      }

      if (v73 <= a2)
      {
        v80 = a2;
        goto LABEL_46;
      }

      if (*v78 == *a2)
      {
        break;
      }

      v76 = __clz(__rbit64(*a2 ^ *v78)) >> 3;
      if (v76 <= v75)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v77;
      v75 = v76;
      if (&a2[v76] == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v72;
      v76 = v75;
      if (v72 == v63)
      {
        goto LABEL_64;
      }
    }

    v78 = (v8 + 8 + v77);
    v79 = a2 + 8;
    while (1)
    {
      v80 = v79;
      if (v79 >= v73)
      {
        break;
      }

      v82 = *v78++;
      v81 = v82;
      v79 += 8;
      if (v82 != *v80)
      {
        v76 = &v80[__clz(__rbit64(*v80 ^ v81)) >> 3] - a2;
        if (v76 <= v75)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v80 < a3 - 3)
    {
      if (*v78 == *v80)
      {
        v78 = (v78 + 4);
        v80 += 4;
      }

      if (v80 >= v74)
      {
LABEL_48:
        if (v80 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v80 >= v74)
    {
      goto LABEL_48;
    }

    if (*v78 == *v80)
    {
      v78 = (v78 + 2);
      v80 += 2;
    }

    if (v80 >= a3)
    {
LABEL_51:
      v76 = v80 - a2;
      if (v80 - a2 <= v75)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v78 == *v80)
    {
      ++v80;
    }

    goto LABEL_51;
  }

  v76 = 3;
LABEL_64:
  v83 = 2 * *_X13;
  v142 = vld2q_s16(_X13);
  v84 = vdupq_n_s8(v18);
  v85 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v84, v142.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v84, v142.val[1]), 6uLL), 4uLL), v83) & 0x5555555555555555;
  if (v85)
  {
    v86 = v15 == 0;
  }

  else
  {
    v86 = 1;
  }

  if (!v86)
  {
    v87 = 0;
    v88 = *(v16 + 24);
    v89 = *(v16 + 8);
    v137 = *v16;
    v90 = *v16 - v89;
    v91 = v83 & 0xFE;
    do
    {
      v92 = ((__clz(__rbit64(v85)) + v91) >> 1) & 0x1F;
      if (v92)
      {
        v93 = *(_X10 + 4 * v92);
        if (v93 < v88)
        {
          break;
        }

        _X17 = v89 + v93;
        __asm { PRFM            #0, [X17] }

        v139[v87++] = v93;
        --v15;
      }

      v85 &= v85 - 1;
    }

    while (v85 && v15);
    if (v87)
    {
      v96 = *a2;
      v134 = v9 - v138 + v90 + 3;
      v97 = v139;
      do
      {
        v99 = *v97++;
        v98 = v99;
        v100 = v89 + v99;
        if (*v100 == v96)
        {
          v101 = a3;
          v102 = ZSTD_count_2segments(a2 + 4, (v100 + 4), a3, v137, (v8 + v138));
          a3 = v101;
          if (v102 + 4 > v76)
          {
            *a4 = v134 - v98;
            v76 = v102 + 4;
            if (&a2[v102 + 4] == v101)
            {
              break;
            }
          }
        }

        --v87;
      }

      while (v87);
    }
  }

  return v76;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_5_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v143 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBB000000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X12 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X12]
    PRFM            #0, [X12,#0x20]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v141 = a3;
    v30 = a1 + 64;
    v31 = *(a1 + 44);
    if (v9 - v31 >= 0x181)
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 112);
      if (v31 <= 0xFFFFFF9F)
      {
        v107 = v31 + 96;
        v108 = *(a1 + 52);
        v109 = 56 - v7;
        do
        {
          v110 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v31)) ^ *(a1 + 96)) >> v109;
          v111 = (v110 >> 2) & 0x3FFFFFC0;
          _X23 = v5 + 4 * v111;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v111;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v118 = *(v30 + 4 * (v31 & 7));
          *(v30 + 4 * (v31 & 7)) = v110;
          v119 = (v118 >> 2) & 0x3FFFFFC0;
          v120 = v5 + 4 * v119;
          v121 = (v6 + v119);
          if (((*v121 - 1) & 0x3F) != 0)
          {
            v122 = 0;
          }

          else
          {
            v122 = 63;
          }

          v123 = v122 + ((*v121 - 1) & 0x3F);
          *v121 = v123;
          v121[v123] = v118;
          *(v120 + 4 * v123) = v31++;
        }

        while (v107 != v31);
        v33 = *(a1 + 112);
        v32 = *(a1 + 56);
        LOBYTE(v7) = v108;
      }

      v124 = v9 - 32;
      LODWORD(v31) = v9 - 32;
      v125 = a2 + 1 - (v8 + v124);
      if ((v125 + 1) < 8)
      {
        v126 = v125 + 1;
      }

      else
      {
        v126 = 8;
      }

      if ((a2 + 1) >= v8 + v124)
      {
        v127 = v126;
      }

      else
      {
        v127 = 0;
      }

      if (v124 < v127 + v124)
      {
        v128 = v7;
        v129 = *(a1 + 96);
        v130 = 56 - *(a1 + 52);
        do
        {
          v131 = ((0xCF1BBCDCBB000000 * *(v8 + v124)) ^ v129) >> v130;
          v132 = (v131 >> 2) & 0x3FFFFFC0;
          _X26 = v33 + 4 * v132;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v32 + v132;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v30 + 4 * (v124++ & 7)) = v131;
          --v127;
        }

        while (v127);
        LOBYTE(v7) = v128;
      }
    }

    else
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 112);
    }

    if (v31 >= v9)
    {
      v38 = v9;
    }

    else
    {
      v34 = v7;
      v35 = *(a1 + 8) + 8;
      v36 = 56 - *(a1 + 52);
      v37 = v31;
      v38 = v9;
      do
      {
        v39 = ((0xCF1BBCDCBB000000 * *(v35 + v37)) ^ *(a1 + 96)) >> v36;
        v40 = (v39 >> 2) & 0x3FFFFFC0;
        _X26 = v33 + 4 * v40;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v32 + v40;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v47 = *(v30 + 4 * (v37 & 7));
        *(v30 + 4 * (v37 & 7)) = v39;
        v48 = (v47 >> 2) & 0x3FFFFFC0;
        v49 = v33 + 4 * v48;
        v50 = (v32 + v48);
        if (((*v50 - 1) & 0x3F) != 0)
        {
          v51 = 0;
        }

        else
        {
          v51 = 63;
        }

        v52 = v51 + ((*v50 - 1) & 0x3F);
        *v50 = v52;
        v50[v52] = v47;
        *(v49 + 4 * v52) = v37++;
      }

      while (v9 != v37);
      LOBYTE(v7) = v34;
    }

    *(a1 + 44) = v9;
    v53 = ((0xCF1BBCDCBB000000 * *(v8 + v38 + 8)) ^ v14) >> (56 - v7);
    v54 = (v53 >> 2) & 0x3FFFFFC0;
    _X2 = v5 + 4 * v54;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v54;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x20]
    }

    LODWORD(_X17) = *(v30 + 4 * (v9 & 7));
    *(v30 + 4 * (v9 & 7)) = v53;
    a3 = v141;
  }

  *(a1 + 104) += _X17;
  v60 = (_X17 >> 2) & 0x3FFFFFC0;
  v61 = v5 + 4 * v60;
  v62 = (v6 + v60);
  v63 = *v62;
  v146 = vld4q_s8(v62);
  v64 = vdupq_n_s8(_X17);
  v146.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v146.val[3], v64), vceqq_s8(v146.val[2], v64), 1uLL), vsriq_n_s8(vceqq_s8(v146.val[1], v64), vceqq_s8(v146.val[0], v64), 1uLL), 2uLL);
  v65 = vshrn_n_s16(vsriq_n_s8(v146.val[0], v146.val[0], 4uLL), 4uLL);
  v66 = 0;
  if (v65)
  {
    v67 = __ROR8__(*&v65, v63);
    do
    {
      v68 = (__clz(__rbit64(v67)) + v63) & 0x3F;
      if (v68)
      {
        v69 = *(v61 + 4 * v68);
        if (v69 < v12)
        {
          break;
        }

        _X6 = v8 + v69;
        __asm { PRFM            #0, [X6] }

        v144[v66++] = v69;
        --v15;
      }

      v67 &= v67 - 1;
    }

    while (v67 && v15);
  }

  if (((v63 - 1) & 0x3F) != 0)
  {
    v72 = 0;
  }

  else
  {
    v72 = 63;
  }

  v73 = v72 + ((v63 - 1) & 0x3F);
  *v62 = v73;
  v62[v73] = _X17;
  v74 = *(a1 + 44);
  *(a1 + 44) = v74 + 1;
  *(v61 + 4 * v73) = v74;
  if (v66)
  {
    v75 = 0;
    v76 = (a3 - 7);
    v77 = a3 - 1;
    v78 = 3;
    while (1)
    {
      v80 = v144[v75];
      v81 = (v8 + v80);
      if (*(v8 + v80 + v78 - 3) != *&a2[v78 - 3])
      {
        goto LABEL_34;
      }

      if (v76 <= a2)
      {
        v83 = a2;
        goto LABEL_44;
      }

      if (*v81 == *a2)
      {
        break;
      }

      v79 = __clz(__rbit64(*a2 ^ *v81)) >> 3;
      if (v79 <= v78)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v9 + 3 - v80;
      v78 = v79;
      if (&a2[v79] == a3)
      {
        goto LABEL_62;
      }

LABEL_34:
      ++v75;
      v79 = v78;
      if (v75 == v66)
      {
        goto LABEL_62;
      }
    }

    v81 = (v8 + 8 + v80);
    v82 = a2 + 8;
    while (1)
    {
      v83 = v82;
      if (v82 >= v76)
      {
        break;
      }

      v85 = *v81++;
      v84 = v85;
      v82 += 8;
      if (v85 != *v83)
      {
        v79 = &v83[__clz(__rbit64(*v83 ^ v84)) >> 3] - a2;
        if (v79 <= v78)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v83 < a3 - 3)
    {
      if (*v81 == *v83)
      {
        v81 = (v81 + 4);
        v83 += 4;
      }

      if (v83 >= v77)
      {
LABEL_46:
        if (v83 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v83 >= v77)
    {
      goto LABEL_46;
    }

    if (*v81 == *v83)
    {
      v81 = (v81 + 2);
      v83 += 2;
    }

    if (v83 >= a3)
    {
LABEL_49:
      v79 = v83 - a2;
      if (v83 - a2 <= v78)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v81 == *v83)
    {
      ++v83;
    }

    goto LABEL_49;
  }

  v79 = 3;
LABEL_62:
  v147 = vld4q_s8(_X12);
  v86 = vdupq_n_s8(v18);
  v147.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v147.val[3], v86), vceqq_s8(v147.val[2], v86), 1uLL), vsriq_n_s8(vceqq_s8(v147.val[1], v86), vceqq_s8(v147.val[0], v86), 1uLL), 2uLL);
  v87 = vshrn_n_s16(vsriq_n_s8(v147.val[0], v147.val[0], 4uLL), 4uLL);
  if (v87)
  {
    v88 = v15 == 0;
  }

  else
  {
    v88 = 1;
  }

  if (!v88)
  {
    v89 = 0;
    v90 = *(v16 + 24);
    v91 = *(v16 + 8);
    v142 = *v16;
    v92 = *v16 - v91;
    v93 = *_X12;
    v94 = __ROR8__(*&v87, v93);
    do
    {
      v95 = (__clz(__rbit64(v94)) + v93) & 0x3F;
      if (v95)
      {
        v96 = *(_X10 + 4 * v95);
        if (v96 < v90)
        {
          break;
        }

        _X17 = v91 + v96;
        __asm { PRFM            #0, [X17] }

        v144[v89++] = v96;
        --v15;
      }

      v94 &= v94 - 1;
    }

    while (v94 && v15);
    if (v89)
    {
      v99 = *a2;
      v139 = v9 - v143 + v92 + 3;
      v100 = v144;
      do
      {
        v102 = *v100++;
        v101 = v102;
        v103 = v91 + v102;
        if (*v103 == v99)
        {
          v104 = a3;
          v105 = ZSTD_count_2segments(a2 + 4, (v103 + 4), a3, v142, (v8 + v143));
          a3 = v104;
          if (v105 + 4 > v79)
          {
            *a4 = v139 - v101;
            v79 = v105 + 4;
            if (&a2[v105 + 4] == v104)
            {
              break;
            }
          }
        }

        --v89;
      }

      while (v89);
    }
  }

  return v79;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_6_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v133 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v131 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBF9B0000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v129 = a3;
    v28 = a1 + 64;
    v29 = *(a1 + 44);
    if (v9 - v29 >= 0x181)
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
      if (v29 <= 0xFFFFFF9F)
      {
        v99 = v29 + 96;
        v100 = *(a1 + 52);
        v101 = 56 - v7;
        do
        {
          v102 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v29)) ^ *(a1 + 96)) >> v101;
          v103 = (v102 >> 4) & 0xFFFFFF0;
          _X23 = v5 + 4 * v103;
          __asm { PRFM            #0, [X23] }

          _X22 = v6 + v103;
          __asm { PRFM            #0, [X22] }

          v108 = *(v28 + 4 * (v29 & 7));
          *(v28 + 4 * (v29 & 7)) = v102;
          v109 = (v108 >> 4) & 0xFFFFFF0;
          v110 = v5 + 4 * v109;
          v111 = (v6 + v109);
          if (((*v111 - 1) & 0xF) != 0)
          {
            v112 = 0;
          }

          else
          {
            v112 = 15;
          }

          v113 = v112 + ((*v111 - 1) & 0xF);
          *v111 = v113;
          v111[v113] = v108;
          *(v110 + 4 * v113) = v29++;
        }

        while (v99 != v29);
        v31 = *(a1 + 112);
        v30 = *(a1 + 56);
        LOBYTE(v7) = v100;
      }

      v114 = v9 - 32;
      LODWORD(v29) = v9 - 32;
      v115 = a2 + 1 - (v8 + v114);
      if ((v115 + 1) < 8)
      {
        v116 = v115 + 1;
      }

      else
      {
        v116 = 8;
      }

      if ((a2 + 1) >= v8 + v114)
      {
        v117 = v116;
      }

      else
      {
        v117 = 0;
      }

      if (v114 < v117 + v114)
      {
        v118 = v7;
        v119 = *(a1 + 96);
        v120 = 56 - *(a1 + 52);
        do
        {
          v121 = ((0xCF1BBCDCBF9B0000 * *(v8 + v114)) ^ v119) >> v120;
          v122 = (v121 >> 4) & 0xFFFFFF0;
          _X26 = v31 + 4 * v122;
          __asm { PRFM            #0, [X26] }

          _X24 = v30 + v122;
          __asm { PRFM            #0, [X24] }

          *(v28 + 4 * (v114++ & 7)) = v121;
          --v117;
        }

        while (v117);
        LOBYTE(v7) = v118;
      }
    }

    else
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
    }

    if (v29 >= v9)
    {
      v36 = v9;
    }

    else
    {
      v32 = v7;
      v33 = *(a1 + 8) + 8;
      v34 = 56 - *(a1 + 52);
      v35 = v29;
      v36 = v9;
      do
      {
        v37 = ((0xCF1BBCDCBF9B0000 * *(v33 + v35)) ^ *(a1 + 96)) >> v34;
        v38 = (v37 >> 4) & 0xFFFFFF0;
        _X26 = v31 + 4 * v38;
        __asm { PRFM            #0, [X26] }

        _X24 = v30 + v38;
        __asm { PRFM            #0, [X24] }

        v43 = *(v28 + 4 * (v35 & 7));
        *(v28 + 4 * (v35 & 7)) = v37;
        v44 = (v43 >> 4) & 0xFFFFFF0;
        v45 = v31 + 4 * v44;
        v46 = (v30 + v44);
        if (((*v46 - 1) & 0xF) != 0)
        {
          v47 = 0;
        }

        else
        {
          v47 = 15;
        }

        v48 = v47 + ((*v46 - 1) & 0xF);
        *v46 = v48;
        v46[v48] = v43;
        *(v45 + 4 * v48) = v35++;
      }

      while (v9 != v35);
      LOBYTE(v7) = v32;
    }

    *(a1 + 44) = v9;
    v49 = ((0xCF1BBCDCBF9B0000 * *(v8 + v36 + 8)) ^ v14) >> (56 - v7);
    v50 = (v49 >> 4) & 0xFFFFFF0;
    _X2 = v5 + 4 * v50;
    __asm { PRFM            #0, [X2] }

    _X17 = v6 + v50;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v28 + 4 * (v9 & 7));
    *(v28 + 4 * (v9 & 7)) = v49;
    a3 = v129;
  }

  *(a1 + 104) += _X17;
  v54 = (_X17 >> 4) & 0xFFFFFF0;
  v55 = v5 + 4 * v54;
  v56 = (v6 + v54);
  v57 = *v56;
  v58 = __ROR8__(vshrn_n_s16(vceqq_s8(*v56, vdupq_n_s8(_X17)), 4uLL), 4 * v56->i8[0]) & 0x8888888888888888;
  if (v58)
  {
    v59 = 0;
    v60 = (4 * v56->i8[0]);
    do
    {
      v61 = ((__clz(__rbit64(v58)) + v60) >> 2) & 0xF;
      if (v61)
      {
        v62 = *(v55 + 4 * v61);
        if (v62 < v12)
        {
          break;
        }

        _X7 = v8 + v62;
        __asm { PRFM            #0, [X7] }

        v132[v59++] = v62;
        --v15;
      }

      v58 &= v58 - 1;
    }

    while (v58 && v15);
  }

  else
  {
    v59 = 0;
  }

  if (((v57 - 1) & 0xF) != 0)
  {
    v65 = 0;
  }

  else
  {
    v65 = 15;
  }

  v66 = v65 + ((v57 - 1) & 0xF);
  v56->i8[0] = v66;
  v56->i8[v66] = _X17;
  v67 = *(a1 + 44);
  *(a1 + 44) = v67 + 1;
  *(v55 + 4 * v66) = v67;
  if (v59)
  {
    v68 = 0;
    v69 = (a3 - 7);
    v70 = a3 - 1;
    v71 = 3;
    while (1)
    {
      v73 = v132[v68];
      v74 = (v8 + v73);
      if (*(v8 + v73 + v71 - 3) != *&a2[v71 - 3])
      {
        goto LABEL_36;
      }

      if (v69 <= a2)
      {
        v76 = a2;
        goto LABEL_46;
      }

      if (*v74 == *a2)
      {
        break;
      }

      v72 = __clz(__rbit64(*a2 ^ *v74)) >> 3;
      if (v72 <= v71)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v73;
      v71 = v72;
      if (&a2[v72] == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v68;
      v72 = v71;
      if (v68 == v59)
      {
        goto LABEL_64;
      }
    }

    v74 = (v8 + 8 + v73);
    v75 = a2 + 8;
    while (1)
    {
      v76 = v75;
      if (v75 >= v69)
      {
        break;
      }

      v78 = *v74++;
      v77 = v78;
      v75 += 8;
      if (v78 != *v76)
      {
        v72 = &v76[__clz(__rbit64(*v76 ^ v77)) >> 3] - a2;
        if (v72 <= v71)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v76 < a3 - 3)
    {
      if (*v74 == *v76)
      {
        v74 = (v74 + 4);
        v76 += 4;
      }

      if (v76 >= v70)
      {
LABEL_48:
        if (v76 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v76 >= v70)
    {
      goto LABEL_48;
    }

    if (*v74 == *v76)
    {
      v74 = (v74 + 2);
      v76 += 2;
    }

    if (v76 >= a3)
    {
LABEL_51:
      v72 = v76 - a2;
      if (v76 - a2 <= v71)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v74 == *v76)
    {
      ++v76;
    }

    goto LABEL_51;
  }

  v72 = 3;
LABEL_64:
  v79 = 4 * _X13->i8[0];
  v80 = __ROR8__(vshrn_n_s16(vceqq_s8(*_X13, vdupq_n_s8(v18)), 4uLL), v79) & 0x8888888888888888;
  if (v80)
  {
    v81 = v15 == 0;
  }

  else
  {
    v81 = 1;
  }

  if (!v81)
  {
    v82 = 0;
    v83 = *(v16 + 24);
    v84 = *(v16 + 8);
    v130 = *v16;
    v85 = *v16 - v84;
    v86 = v79 & 0xFC;
    do
    {
      v87 = ((__clz(__rbit64(v80)) + v86) >> 2) & 0xF;
      if (v87)
      {
        v88 = *(_X10 + 4 * v87);
        if (v88 < v83)
        {
          break;
        }

        _X17 = v84 + v88;
        __asm { PRFM            #0, [X17] }

        v132[v82++] = v88;
        --v15;
      }

      v80 &= v80 - 1;
    }

    while (v80 && v15);
    if (v82)
    {
      v91 = *a2;
      v127 = v9 - v131 + v85 + 3;
      v92 = v132;
      do
      {
        v94 = *v92++;
        v93 = v94;
        v95 = v84 + v94;
        if (*v95 == v91)
        {
          v96 = a3;
          v97 = ZSTD_count_2segments(a2 + 4, (v95 + 4), a3, v130, (v8 + v131));
          a3 = v96;
          if (v97 + 4 > v72)
          {
            *a4 = v127 - v93;
            v72 = v97 + 4;
            if (&a2[v97 + 4] == v96)
            {
              break;
            }
          }
        }

        --v82;
      }

      while (v82);
    }
  }

  return v72;
}