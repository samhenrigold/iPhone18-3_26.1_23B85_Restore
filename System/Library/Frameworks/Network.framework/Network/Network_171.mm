uint64_t ZSTD_btGetAllMatches_extDict_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v14 = a4 - v8;
  v15 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v16 = a8;
    v17 = a6;
    v18 = a7;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 5, 1) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v19;
    v15 = v19 - v8;
    a7 = v18;
    a6 = v17;
    a8 = v16;
  }

  *(a2 + 44) = v14;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v107 = (0xCF1BBCDCBB000000 * *a4) >> -*(a2 + 264);
  v108 = *(a2 + 112);
  v21 = *(v108 + 4 * v107);
  v119 = *(a2 + 128);
  v106 = -1 << (*(a2 + 260) - 1);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = (v22 + v23);
  v109 = (v8 + v23);
  v25 = v15 + v106 + 1;
  if (v15 < ~v106)
  {
    v25 = 0;
  }

  v116 = v25;
  v26 = 1 << *(a2 + 256);
  v46 = v15 - *(a2 + 28) > v26;
  v27 = v15 - v26;
  if (v46 && *(a2 + 40) == 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v118 = v30;
  v120 = 0;
  v105 = *(a2 + 268);
  v31 = (a8 - 1);
  v117 = v22;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v32 = a4 + 4;
    v33 = a5 - 7;
    v110 = a5 - 1;
    v112 = a5 - 3;
    v104 = v22 + 12;
    v114 = v23 + v8 + 8;
    v34 = a7;
    while (1)
    {
      v36 = v34 == 3 ? *a6 - 1 : a6[v34];
      v37 = v15 - v36;
      if (v36 - 1 >= v15 - v23)
      {
        break;
      }

      if (v37 < v29 || *a4 != *(a4 - v36))
      {
        goto LABEL_54;
      }

      v39 = -v36;
      v40 = &v32[v39];
      if (v33 <= v32)
      {
        v42 = a4 + 4;
LABEL_56:
        if (v42 < v112 && *v40 == *v42)
        {
          v40 += 4;
          v42 += 4;
        }

        if (v42 < v110 && *v40 == *v42)
        {
          v40 += 2;
          v42 += 2;
        }

        if (v42 < a5 && *v40 == *v42)
        {
          LODWORD(v42) = v42 + 1;
        }

        v45 = v42 - a4;
        goto LABEL_101;
      }

      if (*v40 == *v32)
      {
        v40 = a4 + v39 + 12;
        v41 = a4 + 12;
        while (1)
        {
          v42 = v41;
          if (v41 >= v33)
          {
            goto LABEL_56;
          }

          v44 = *v40;
          v40 += 8;
          v43 = v44;
          v41 += 8;
          if (v44 != *v42)
          {
            v45 = v42 + (__clz(__rbit64(*v42 ^ v43)) >> 3) - a4;
            goto LABEL_101;
          }
        }
      }

      v45 = (__clz(__rbit64(*v32 ^ *v40)) >> 3) + 4;
LABEL_101:
      v35 = v45;
      if (v31 >= v45)
      {
        v35 = v31;
      }

      else
      {
        v66 = (a1 + 8 * result);
        *v66 = v34 - a7 + 1;
        v66[1] = v45;
        result = (result + 1);
        if (v45 > v20 || a4 + v45 == a5)
        {
          return result;
        }
      }

      ++v34;
      v31 = v35;
      if (v34 == a7 + 3)
      {
        goto LABEL_106;
      }
    }

    v46 = v36 - 1 >= v15 - v29 || (v37 - v23) > 0xFFFFFFFC;
    if (!v46)
    {
      v47 = v117 + v37;
      if (*a4 == *(v117 + v37))
      {
        v48 = (v47 + 4);
        v49 = &v24[a4 - v47];
        if (v49 >= a5)
        {
          v50 = a5;
        }

        else
        {
          v50 = v49;
        }

        if (v50 - 7 <= v32)
        {
          v51 = v48;
          v53 = a4 + 4;
          goto LABEL_68;
        }

        if (*v48 == *v32)
        {
          v51 = (v104 + v37);
          v52 = a4 + 12;
          while (1)
          {
            v53 = v52;
            if (v52 >= v50 - 7)
            {
              break;
            }

            v55 = *v51;
            v51 += 4;
            v54 = v55;
            v52 += 8;
            if (v55 != *v53)
            {
              v56 = &v53[__clz(__rbit64(*v53 ^ v54)) >> 3] - v32;
              goto LABEL_79;
            }
          }

LABEL_68:
          if (v53 < v50 - 3 && *v51 == *v53)
          {
            v51 += 2;
            v53 += 4;
          }

          if (v53 < v50 - 1 && *v51 == *v53)
          {
            ++v51;
            v53 += 2;
          }

          if (v53 < v50 && *v51 == *v53)
          {
            ++v53;
          }

          v56 = v53 - v32;
        }

        else
        {
          v56 = __clz(__rbit64(*v32 ^ *v48)) >> 3;
        }

LABEL_79:
        if (v48 + v56 == v24)
        {
          v57 = &v32[v56];
          if (v33 <= &v32[v56])
          {
            v64 = (v8 + v23);
            v65 = &v32[v56];
            goto LABEL_89;
          }

          if (*v109 == *v57)
          {
            v58 = 0;
            v59 = a4 + v56;
            while (1)
            {
              v60 = &v59[v58 + 12];
              if (v60 >= v33)
              {
                break;
              }

              v61 = *(v114 + v58);
              v62 = *v60;
              v58 += 8;
              if (v61 != v62)
              {
                v63 = &v59[v58 + 4 + (__clz(__rbit64(v62 ^ v61)) >> 3)] - v57;
                goto LABEL_99;
              }
            }

            v64 = (v114 + v58);
            v65 = a4 + v56 + v58 + 12;
LABEL_89:
            if (v65 < v112 && *v64 == *v65)
            {
              ++v64;
              v65 += 4;
            }

            if (v65 < v110 && *v64 == *v65)
            {
              v64 = (v64 + 2);
              v65 += 2;
            }

            if (v65 < a5 && *v64 == *v65)
            {
              LODWORD(v65) = v65 + 1;
            }

            LODWORD(v63) = v65 - v57;
          }

          else
          {
            v63 = __clz(__rbit64(*v57 ^ *v109)) >> 3;
          }

LABEL_99:
          LODWORD(v56) = v63 + v56;
        }

        v45 = v56 + 4;
        goto LABEL_101;
      }
    }

LABEL_54:
    v45 = 0;
    goto LABEL_101;
  }

  v35 = v31;
LABEL_106:
  v67 = (v119 + 8 * (v15 & ~v106));
  v68 = v67 + 1;
  v69 = v15 + 9;
  *(v108 + 4 * v107) = v15;
  if (v21 < v118)
  {
    goto LABEL_107;
  }

  v70 = 0;
  v71 = 0;
  v72 = 1 << v105;
  v73 = a5 - 7;
  v111 = a5 - 1;
  v113 = a5 - 3;
  v115 = v15 + 3;
  v74 = v117;
  v75 = v8 + 8 + v23;
  while (1)
  {
    if (v70 >= v71)
    {
      v76 = v71;
    }

    else
    {
      v76 = v70;
    }

    v77 = a4 + v76;
    if (v76 + v21 < v23)
    {
      v78 = v74 + v21;
      v79 = (v78 + v76);
      if (&v24[a4 - v78] >= a5)
      {
        v80 = a5;
      }

      else
      {
        v80 = &v77[v24 - v79];
      }

      if (v80 - 7 <= v77)
      {
        v93 = (v78 + v76);
        v83 = (a4 + v76);
      }

      else
      {
        if (*v79 != *v77)
        {
          v86 = __clz(__rbit64(*v77 ^ *v79)) >> 3;
          goto LABEL_145;
        }

        v81 = v117 + 8 + v21;
        v82 = a4;
        while (1)
        {
          v83 = (v82 + v76 + 8);
          if (v83 >= (v80 - 7))
          {
            break;
          }

          v84 = *(v81 + v76);
          v85 = *v83;
          v81 += 8;
          ++v82;
          if (v84 != v85)
          {
            v86 = v82 + (__clz(__rbit64(v85 ^ v84)) >> 3) - a4;
            goto LABEL_145;
          }
        }

        v93 = (v81 + v76);
      }

      if (v83 < (v80 - 3) && *v93 == *v83)
      {
        ++v93;
        v83 += 2;
      }

      if (v83 < (v80 - 1) && *v93 == *v83)
      {
        v93 = (v93 + 2);
        ++v83;
      }

      if (v83 < v80 && *v93 == *v83)
      {
        v83 = (v83 + 1);
      }

      v86 = v83 - v77;
LABEL_145:
      if (&v79[v86] != v24)
      {
        goto LABEL_179;
      }

      v94 = &v77[v86];
      if (v73 <= &v77[v86])
      {
        v99 = (v8 + v23);
        v96 = &v77[v86];
      }

      else
      {
        if (*v109 != *v94)
        {
          v98 = __clz(__rbit64(*v94 ^ *v109)) >> 3;
LABEL_178:
          v86 += v98;
LABEL_179:
          v100 = v86 + v76;
          if (v86 + v76 + v21 >= v23)
          {
            v78 = v8 + v21;
          }

          v74 = v117;
          if (v100 <= v35)
          {
            goto LABEL_188;
          }

          goto LABEL_182;
        }

        v95 = 0;
        while (1)
        {
          v96 = &v94[v95 + 8];
          if (v96 >= v73)
          {
            break;
          }

          v97 = *(v75 + v95);
          v95 += 8;
          if (v97 != *v96)
          {
            v98 = v95 + (__clz(__rbit64(*v96 ^ v97)) >> 3);
            goto LABEL_178;
          }
        }

        v99 = (v75 + v95);
      }

      if (v96 < v113 && *v99 == *v96)
      {
        ++v99;
        v96 += 4;
      }

      if (v96 < v111 && *v99 == *v96)
      {
        v99 = (v99 + 2);
        v96 += 2;
      }

      if (v96 < a5 && *v99 == *v96)
      {
        ++v96;
      }

      v98 = v96 - v94;
      goto LABEL_178;
    }

    v78 = v8 + v21;
    v87 = (v78 + v76);
    if (v73 <= v77)
    {
      v90 = a4 + v76;
    }

    else
    {
      if (*v87 != *v77)
      {
        v92 = __clz(__rbit64(*v77 ^ *v87)) >> 3;
        goto LABEL_164;
      }

      v88 = v8 + 8 + v21;
      v89 = a4;
      while (1)
      {
        v90 = v89 + v76 + 8;
        if (v90 >= v73)
        {
          break;
        }

        v91 = *(v88 + v76);
        v88 += 8;
        ++v89;
        if (v91 != *v90)
        {
          v92 = v89 + (__clz(__rbit64(*v90 ^ v91)) >> 3) - a4;
          goto LABEL_164;
        }
      }

      v87 = (v88 + v76);
    }

    if (v90 < v113 && *v87 == *v90)
    {
      v87 = (v87 + 4);
      v90 += 4;
    }

    if (v90 < v111 && *v87 == *v90)
    {
      v87 = (v87 + 2);
      v90 += 2;
    }

    if (v90 < a5 && *v87 == *v90)
    {
      ++v90;
    }

    v92 = v90 - v77;
LABEL_164:
    v100 = v92 + v76;
    if (v92 + v76 <= v35)
    {
      goto LABEL_188;
    }

LABEL_182:
    if (v100 > v69 - v21)
    {
      v69 = v21 + v100;
    }

    v101 = (a1 + 8 * result);
    *v101 = v115 - v21;
    v101[1] = v100;
    result = (result + 1);
    v102 = v100 > 0x1000 || a4 + v100 == a5;
    v35 = v100;
    if (v102)
    {
      goto LABEL_107;
    }

LABEL_188:
    v103 = (v119 + 8 * (v21 & ~v106));
    if (*(v78 + v100) < *(a4 + v100))
    {
      break;
    }

    *v68 = v21;
    if (v21 <= v116)
    {
      v68 = &v120;
      goto LABEL_107;
    }

    v68 = (v119 + 8 * (v21 & ~v106));
    v71 = v100;
    if (!--v72)
    {
      goto LABEL_107;
    }

LABEL_110:
    v21 = *v103;
    if (*v103 < v118)
    {
      goto LABEL_107;
    }
  }

  *v67 = v21;
  if (v21 > v116)
  {
    v67 = v103 + 1;
    v70 = v100;
    ++v103;
    if (!--v72)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  v67 = &v120;
LABEL_107:
  *v68 = 0;
  *v67 = 0;
  *(a2 + 44) = v69 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_extDict_4(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v14 = a4 - v8;
  v15 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v16 = a8;
    v17 = a6;
    v18 = a7;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 4, 1) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v19;
    v15 = v19 - v8;
    a7 = v18;
    a6 = v17;
    a8 = v16;
  }

  *(a2 + 44) = v14;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v108 = *(a2 + 112);
  v107 = (-1640531535 * *a4) >> -*(a2 + 264);
  v21 = *(v108 + 4 * v107);
  v119 = *(a2 + 128);
  v106 = -1 << (*(a2 + 260) - 1);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = (v22 + v23);
  v109 = (v8 + v23);
  v25 = v15 + v106 + 1;
  if (v15 < ~v106)
  {
    v25 = 0;
  }

  v116 = v25;
  v26 = 1 << *(a2 + 256);
  v46 = v15 - *(a2 + 28) > v26;
  v27 = v15 - v26;
  if (v46 && *(a2 + 40) == 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v118 = v30;
  v120 = 0;
  v105 = *(a2 + 268);
  v31 = (a8 - 1);
  v117 = v22;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v32 = (a4 + 1);
    v33 = a5 - 7;
    v110 = a5 - 1;
    v112 = a5 - 3;
    v104 = v22 + 12;
    v114 = v23 + v8 + 8;
    v34 = a7;
    while (1)
    {
      v36 = v34 == 3 ? *a6 - 1 : a6[v34];
      v37 = v15 - v36;
      if (v36 - 1 >= v15 - v23)
      {
        break;
      }

      if (v37 < v29 || *a4 != *(a4 - v36))
      {
        goto LABEL_54;
      }

      v39 = -v36;
      v40 = &v32[v39];
      if (v33 <= v32)
      {
        v42 = (a4 + 1);
LABEL_56:
        if (v42 < v112 && *v40 == *v42)
        {
          v40 += 4;
          v42 += 4;
        }

        if (v42 < v110 && *v40 == *v42)
        {
          v40 += 2;
          v42 += 2;
        }

        if (v42 < a5 && *v40 == *v42)
        {
          LODWORD(v42) = v42 + 1;
        }

        v45 = v42 - a4;
        goto LABEL_101;
      }

      if (*v40 == *v32)
      {
        v40 = a4 + v39 + 12;
        v41 = (a4 + 3);
        while (1)
        {
          v42 = v41;
          if (v41 >= v33)
          {
            goto LABEL_56;
          }

          v44 = *v40;
          v40 += 8;
          v43 = v44;
          v41 += 8;
          if (v44 != *v42)
          {
            v45 = v42 + (__clz(__rbit64(*v42 ^ v43)) >> 3) - a4;
            goto LABEL_101;
          }
        }
      }

      v45 = (__clz(__rbit64(*v32 ^ *v40)) >> 3) + 4;
LABEL_101:
      v35 = v45;
      if (v31 >= v45)
      {
        v35 = v31;
      }

      else
      {
        v66 = (a1 + 8 * result);
        *v66 = v34 - a7 + 1;
        v66[1] = v45;
        result = (result + 1);
        if (v45 > v20 || a4 + v45 == a5)
        {
          return result;
        }
      }

      ++v34;
      v31 = v35;
      if (v34 == a7 + 3)
      {
        goto LABEL_106;
      }
    }

    v46 = v36 - 1 >= v15 - v29 || (v37 - v23) > 0xFFFFFFFC;
    if (!v46)
    {
      v47 = v117 + v37;
      if (*a4 == *(v117 + v37))
      {
        v48 = (v47 + 4);
        v49 = &v24[a4 - v47];
        if (v49 >= a5)
        {
          v50 = a5;
        }

        else
        {
          v50 = v49;
        }

        if (v50 - 7 <= v32)
        {
          v51 = v48;
          v53 = (a4 + 1);
          goto LABEL_68;
        }

        if (*v48 == *v32)
        {
          v51 = (v104 + v37);
          v52 = (a4 + 3);
          while (1)
          {
            v53 = v52;
            if (v52 >= v50 - 7)
            {
              break;
            }

            v55 = *v51;
            v51 += 4;
            v54 = v55;
            v52 += 8;
            if (v55 != *v53)
            {
              v56 = &v53[__clz(__rbit64(*v53 ^ v54)) >> 3] - v32;
              goto LABEL_79;
            }
          }

LABEL_68:
          if (v53 < v50 - 3 && *v51 == *v53)
          {
            v51 += 2;
            v53 += 4;
          }

          if (v53 < v50 - 1 && *v51 == *v53)
          {
            ++v51;
            v53 += 2;
          }

          if (v53 < v50 && *v51 == *v53)
          {
            ++v53;
          }

          v56 = v53 - v32;
        }

        else
        {
          v56 = __clz(__rbit64(*v32 ^ *v48)) >> 3;
        }

LABEL_79:
        if (v48 + v56 == v24)
        {
          v57 = &v32[v56];
          if (v33 <= &v32[v56])
          {
            v64 = (v8 + v23);
            v65 = &v32[v56];
            goto LABEL_89;
          }

          if (*v109 == *v57)
          {
            v58 = 0;
            v59 = a4 + v56;
            while (1)
            {
              v60 = &v59[v58 + 12];
              if (v60 >= v33)
              {
                break;
              }

              v61 = *(v114 + v58);
              v62 = *v60;
              v58 += 8;
              if (v61 != v62)
              {
                v63 = &v59[v58 + 4 + (__clz(__rbit64(v62 ^ v61)) >> 3)] - v57;
                goto LABEL_99;
              }
            }

            v64 = (v114 + v58);
            v65 = a4 + v56 + v58 + 12;
LABEL_89:
            if (v65 < v112 && *v64 == *v65)
            {
              ++v64;
              v65 += 4;
            }

            if (v65 < v110 && *v64 == *v65)
            {
              v64 = (v64 + 2);
              v65 += 2;
            }

            if (v65 < a5 && *v64 == *v65)
            {
              LODWORD(v65) = v65 + 1;
            }

            LODWORD(v63) = v65 - v57;
          }

          else
          {
            v63 = __clz(__rbit64(*v57 ^ *v109)) >> 3;
          }

LABEL_99:
          LODWORD(v56) = v63 + v56;
        }

        v45 = v56 + 4;
        goto LABEL_101;
      }
    }

LABEL_54:
    v45 = 0;
    goto LABEL_101;
  }

  v35 = v31;
LABEL_106:
  v67 = (v119 + 8 * (v15 & ~v106));
  v68 = v67 + 1;
  v69 = v15 + 9;
  *(v108 + 4 * v107) = v15;
  if (v21 < v118)
  {
    goto LABEL_107;
  }

  v70 = 0;
  v71 = 0;
  v72 = 1 << v105;
  v73 = a5 - 7;
  v111 = a5 - 1;
  v113 = a5 - 3;
  v115 = v15 + 3;
  v74 = v117;
  v75 = v8 + 8 + v23;
  while (1)
  {
    if (v70 >= v71)
    {
      v76 = v71;
    }

    else
    {
      v76 = v70;
    }

    v77 = a4 + v76;
    if (v76 + v21 < v23)
    {
      v78 = v74 + v21;
      v79 = (v78 + v76);
      if (&v24[a4 - v78] >= a5)
      {
        v80 = a5;
      }

      else
      {
        v80 = &v77[v24 - v79];
      }

      if (v80 - 7 <= v77)
      {
        v93 = (v78 + v76);
        v83 = (a4 + v76);
      }

      else
      {
        if (*v79 != *v77)
        {
          v86 = __clz(__rbit64(*v77 ^ *v79)) >> 3;
          goto LABEL_145;
        }

        v81 = v117 + 8 + v21;
        v82 = a4;
        while (1)
        {
          v83 = (v82 + v76 + 8);
          if (v83 >= (v80 - 7))
          {
            break;
          }

          v84 = *(v81 + v76);
          v85 = *v83;
          v81 += 8;
          v82 += 2;
          if (v84 != v85)
          {
            v86 = v82 + (__clz(__rbit64(v85 ^ v84)) >> 3) - a4;
            goto LABEL_145;
          }
        }

        v93 = (v81 + v76);
      }

      if (v83 < (v80 - 3) && *v93 == *v83)
      {
        ++v93;
        v83 += 2;
      }

      if (v83 < (v80 - 1) && *v93 == *v83)
      {
        v93 = (v93 + 2);
        ++v83;
      }

      if (v83 < v80 && *v93 == *v83)
      {
        v83 = (v83 + 1);
      }

      v86 = v83 - v77;
LABEL_145:
      if (&v79[v86] != v24)
      {
        goto LABEL_179;
      }

      v94 = &v77[v86];
      if (v73 <= &v77[v86])
      {
        v99 = (v8 + v23);
        v96 = &v77[v86];
      }

      else
      {
        if (*v109 != *v94)
        {
          v98 = __clz(__rbit64(*v94 ^ *v109)) >> 3;
LABEL_178:
          v86 += v98;
LABEL_179:
          v100 = v86 + v76;
          if (v86 + v76 + v21 >= v23)
          {
            v78 = v8 + v21;
          }

          v74 = v117;
          if (v100 <= v35)
          {
            goto LABEL_188;
          }

          goto LABEL_182;
        }

        v95 = 0;
        while (1)
        {
          v96 = &v94[v95 + 8];
          if (v96 >= v73)
          {
            break;
          }

          v97 = *(v75 + v95);
          v95 += 8;
          if (v97 != *v96)
          {
            v98 = v95 + (__clz(__rbit64(*v96 ^ v97)) >> 3);
            goto LABEL_178;
          }
        }

        v99 = (v75 + v95);
      }

      if (v96 < v113 && *v99 == *v96)
      {
        ++v99;
        v96 += 4;
      }

      if (v96 < v111 && *v99 == *v96)
      {
        v99 = (v99 + 2);
        v96 += 2;
      }

      if (v96 < a5 && *v99 == *v96)
      {
        ++v96;
      }

      v98 = v96 - v94;
      goto LABEL_178;
    }

    v78 = v8 + v21;
    v87 = (v78 + v76);
    if (v73 <= v77)
    {
      v90 = a4 + v76;
    }

    else
    {
      if (*v87 != *v77)
      {
        v92 = __clz(__rbit64(*v77 ^ *v87)) >> 3;
        goto LABEL_164;
      }

      v88 = v8 + 8 + v21;
      v89 = a4;
      while (1)
      {
        v90 = v89 + v76 + 8;
        if (v90 >= v73)
        {
          break;
        }

        v91 = *(v88 + v76);
        v88 += 8;
        v89 += 2;
        if (v91 != *v90)
        {
          v92 = v89 + (__clz(__rbit64(*v90 ^ v91)) >> 3) - a4;
          goto LABEL_164;
        }
      }

      v87 = (v88 + v76);
    }

    if (v90 < v113 && *v87 == *v90)
    {
      v87 = (v87 + 4);
      v90 += 4;
    }

    if (v90 < v111 && *v87 == *v90)
    {
      v87 = (v87 + 2);
      v90 += 2;
    }

    if (v90 < a5 && *v87 == *v90)
    {
      ++v90;
    }

    v92 = v90 - v77;
LABEL_164:
    v100 = v92 + v76;
    if (v92 + v76 <= v35)
    {
      goto LABEL_188;
    }

LABEL_182:
    if (v100 > v69 - v21)
    {
      v69 = v21 + v100;
    }

    v101 = (a1 + 8 * result);
    *v101 = v115 - v21;
    v101[1] = v100;
    result = (result + 1);
    v102 = v100 > 0x1000 || a4 + v100 == a5;
    v35 = v100;
    if (v102)
    {
      goto LABEL_107;
    }

LABEL_188:
    v103 = (v119 + 8 * (v21 & ~v106));
    if (*(v78 + v100) < *(a4 + v100))
    {
      break;
    }

    *v68 = v21;
    if (v21 <= v116)
    {
      v68 = &v120;
      goto LABEL_107;
    }

    v68 = (v119 + 8 * (v21 & ~v106));
    v71 = v100;
    if (!--v72)
    {
      goto LABEL_107;
    }

LABEL_110:
    v21 = *v103;
    if (*v103 < v118)
    {
      goto LABEL_107;
    }
  }

  *v67 = v21;
  if (v21 > v116)
  {
    v67 = v103 + 1;
    v70 = v100;
    ++v103;
    if (!--v72)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  v67 = &v120;
LABEL_107:
  *v68 = 0;
  *v67 = 0;
  *(a2 + 44) = v69 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_extDict_3(_DWORD *a1, uint64_t a2, unsigned int *a3, char *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a1;
  v14 = a4 - v8;
  if (v9 >= a4 - v8)
  {
    v20 = a4 - v8;
    v133 = a4 - v8;
  }

  else
  {
    v153 = a8;
    v15 = a6;
    v16 = a7;
    v17 = a3;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 3, 1) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v19;
    v20 = v19 - v8;
    v133 = v19 - v8;
    v13 = a1;
    a3 = v17;
    a7 = v16;
    a6 = v15;
    a8 = v153;
  }

  *(a2 + 44) = v14;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v21 = 4095;
  }

  else
  {
    v21 = *(a2 + 276);
  }

  v137 = *(a2 + 112);
  v136 = (-1640531535 * *a4) >> -*(a2 + 264);
  v22 = *(v137 + 4 * v136);
  v23 = *(a2 + 128);
  v135 = -1 << (*(a2 + 260) - 1);
  v24 = ~v135;
  v25 = *(a2 + 16);
  v26 = *(a2 + 24);
  v154 = (v25 + v26);
  v141 = (v8 + v26);
  v27 = v20 + v135 + 1;
  if (v20 < ~v135)
  {
    v27 = 0;
  }

  v150 = v27;
  v28 = 1 << *(a2 + 256);
  v47 = v20 - *(a2 + 28) > v28;
  v29 = v20 - v28;
  if (!v47 || *(a2 + 40) != 0)
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v29;
  }

  v151 = v31;
  v155 = 0;
  v134 = *(a2 + 268);
  v32 = (a8 - 1);
  v152 = v25;
  v148 = v21;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v33 = a4 + 3;
    v34 = a5 - 7;
    v145 = a5 - 3;
    v142 = a5 - 1;
    v132 = v25 + 11;
    v139 = v26 + v8 + 8;
    v35 = a7;
    while (1)
    {
      v37 = v35 == 3 ? *a6 - 1 : a6[v35];
      v38 = v20 - v37;
      if (v37 - 1 >= v20 - v26)
      {
        break;
      }

      if (v38 < v29 || ((*&a4[-v37] ^ *a4) & 0xFFFFFF) != 0)
      {
        goto LABEL_45;
      }

      v40 = -v37;
      v41 = &v33[-v37];
      if (v34 <= v33)
      {
        v43 = a4 + 3;
LABEL_63:
        if (v43 < v145 && *v41 == *v43)
        {
          v41 += 4;
          v43 += 4;
        }

        if (v43 < v142 && *v41 == *v43)
        {
          v41 += 2;
          v43 += 2;
        }

        if (v43 < a5 && *v41 == *v43)
        {
          LODWORD(v43) = v43 + 1;
        }

        v46 = v43 - a4;
        goto LABEL_46;
      }

      if (*v41 == *v33)
      {
        v42 = a4 + 11;
        v41 = &a4[v40 + 11];
        while (1)
        {
          v43 = v42;
          if (v42 >= v34)
          {
            break;
          }

          v45 = *v41;
          v41 += 8;
          v44 = v45;
          v42 += 8;
          if (v45 != *v43)
          {
            v21 = v148;
            v46 = v43 + (__clz(__rbit64(*v43 ^ v44)) >> 3) - a4;
            goto LABEL_46;
          }
        }

        v21 = v148;
        goto LABEL_63;
      }

      v46 = (__clz(__rbit64(*v33 ^ *v41)) >> 3) + 3;
LABEL_46:
      v36 = v46;
      if (v32 >= v46)
      {
        v36 = v32;
      }

      else
      {
        v49 = &v13[2 * result];
        *v49 = v35 - a7 + 1;
        v49[1] = v46;
        result = (result + 1);
        if (v46 > v21 || &a4[v46] == a5)
        {
          return result;
        }
      }

      ++v35;
      v32 = v36;
      if (v35 == a7 + 3)
      {
        goto LABEL_109;
      }
    }

    v47 = v37 - 1 >= v20 - v29 || (v38 - v26) > 0xFFFFFFFC;
    if (!v47)
    {
      v48 = v152 + v38;
      if (((*(v152 + v38) ^ *a4) & 0xFFFFFF) == 0)
      {
        v50 = (v48 + 3);
        v51 = &v154[a4 - v48];
        if (v51 >= a5)
        {
          v52 = a5;
        }

        else
        {
          v52 = v51;
        }

        if (v52 - 7 <= v33)
        {
          v53 = v50;
          v55 = a4 + 3;
          goto LABEL_76;
        }

        if (*v50 == *v33)
        {
          v53 = (v132 + v38);
          v54 = a4 + 11;
          while (1)
          {
            v55 = v54;
            if (v54 >= v52 - 7)
            {
              break;
            }

            v57 = *v53;
            v53 += 4;
            v56 = v57;
            v54 += 8;
            if (v57 != *v55)
            {
              v58 = &v55[__clz(__rbit64(*v55 ^ v56)) >> 3] - v33;
              v24 = ~v135;
              goto LABEL_74;
            }
          }

          v24 = ~v135;
LABEL_76:
          v21 = v148;
          if (v55 < v52 - 3 && *v53 == *v55)
          {
            v53 += 2;
            v55 += 4;
          }

          if (v55 < v52 - 1 && *v53 == *v55)
          {
            ++v53;
            v55 += 2;
          }

          if (v55 < v52 && *v53 == *v55)
          {
            ++v55;
          }

          v58 = v55 - v33;
        }

        else
        {
          v58 = __clz(__rbit64(*v33 ^ *v50)) >> 3;
LABEL_74:
          v21 = v148;
        }

        if (v50 + v58 == v154)
        {
          v59 = &v33[v58];
          if (v34 <= &v33[v58])
          {
            v66 = (v8 + v26);
            v67 = &v33[v58];
            goto LABEL_96;
          }

          if (*v141 == *v59)
          {
            v60 = 0;
            v61 = &a4[v58];
            while (1)
            {
              v62 = &v61[v60 + 11];
              if (v62 >= v34)
              {
                break;
              }

              v63 = *(v139 + v60);
              v64 = *v62;
              v60 += 8;
              if (v63 != v64)
              {
                v65 = &v61[v60 + 3 + (__clz(__rbit64(v64 ^ v63)) >> 3)] - v59;
                v21 = v148;
                goto LABEL_106;
              }
            }

            v66 = (v139 + v60);
            v67 = &a4[v58 + 11 + v60];
            v21 = v148;
LABEL_96:
            if (v67 < v145 && *v66 == *v67)
            {
              ++v66;
              v67 += 4;
            }

            if (v67 < v142 && *v66 == *v67)
            {
              v66 = (v66 + 2);
              v67 += 2;
            }

            if (v67 < a5)
            {
              v21 = v148;
              if (*v66 == *v67)
              {
                LODWORD(v67) = v67 + 1;
              }
            }

            LODWORD(v65) = v67 - v59;
          }

          else
          {
            v65 = __clz(__rbit64(*v59 ^ *v141)) >> 3;
          }

LABEL_106:
          LODWORD(v58) = v65 + v58;
        }

        v46 = v58 + 3;
        goto LABEL_46;
      }
    }

LABEL_45:
    v46 = 0;
    goto LABEL_46;
  }

  v36 = (a8 - 1);
LABEL_109:
  if (v36 <= 2)
  {
    v68 = *(a2 + 120);
    v69 = *a3;
    v70 = *a4;
    v71 = 32 - *(a2 + 48);
    v72 = v152;
    if (v69 < v20)
    {
      do
      {
        *(v68 + 4 * ((900185344 * *(v8 + v69)) >> v71)) = v69;
        ++v69;
      }

      while (v133 != v69);
    }

    *a3 = v20;
    v73 = *(v68 + 4 * ((900185344 * v70) >> v71));
    v74 = v20 - v73;
    if (v73 < v151 || (v20 - v73) >> 18 != 0)
    {
      goto LABEL_127;
    }

    if (v73 >= v26)
    {
      v121 = (v8 + v73);
      if (a5 - 7 <= a4)
      {
        v124 = a4;
      }

      else
      {
        v122 = *v121;
        if (v122 != *a4)
        {
          v83 = __clz(__rbit64(*a4 ^ v122)) >> 3;
          goto LABEL_251;
        }

        v121 = (v73 + v8 + 8);
        v123 = a4 + 8;
        while (1)
        {
          v124 = v123;
          if (v123 >= a5 - 7)
          {
            break;
          }

          v126 = *v121;
          v121 += 4;
          v125 = v126;
          v123 += 8;
          if (v126 != *v124)
          {
            v83 = &v124[__clz(__rbit64(*v124 ^ v125)) >> 3] - a4;
            goto LABEL_251;
          }
        }
      }

      if (v124 < a5 - 3 && *v121 == *v124)
      {
        v121 += 2;
        v124 += 4;
      }

      if (v124 < a5 - 1 && *v121 == *v124)
      {
        ++v121;
        v124 += 2;
      }

      if (v124 < a5 && *v121 == *v124)
      {
        ++v124;
      }

      v83 = v124 - a4;
LABEL_251:
      if (v83 >= 3)
      {
        *v13 = v74 + 3;
        v13[1] = v83;
        if (v83 > v21 || &a4[v83] == a5)
        {
          v87 = v20 + 1;
          result = 1;
          goto LABEL_129;
        }

        result = 1;
        v36 = v83;
      }

      goto LABEL_127;
    }

    v76 = (v152 + v73);
    v77 = &a4[v26 - v73];
    if (v77 >= a5)
    {
      v77 = a5;
    }

    if (v77 - 7 <= a4)
    {
      v78 = (v152 + v73);
      v80 = a4;
    }

    else
    {
      if (*v76 != *a4)
      {
        v83 = __clz(__rbit64(*a4 ^ *v76)) >> 3;
LABEL_248:
        if (v76 + v83 == v154)
        {
          v147 = result;
          v144 = v13;
          v127 = v23;
          v128 = a4;
          v140 = v74;
          v129 = ZSTD_count(&a4[v83], v141, a5);
          v74 = v140;
          v72 = v152;
          a4 = v128;
          v23 = v127;
          v21 = v148;
          v24 = ~v135;
          v130 = v129;
          v13 = v144;
          result = v147;
          v83 += v130;
        }

        goto LABEL_251;
      }

      v78 = (v73 + v152 + 8);
      v79 = a4 + 8;
      while (1)
      {
        v80 = v79;
        if (v79 >= v77 - 7)
        {
          break;
        }

        v82 = *v78;
        v78 += 4;
        v81 = v82;
        v79 += 8;
        if (v82 != *v80)
        {
          v83 = &v80[__clz(__rbit64(*v80 ^ v81)) >> 3] - a4;
          goto LABEL_248;
        }
      }
    }

    if (v80 < v77 - 3 && *v78 == *v80)
    {
      v78 += 2;
      v80 += 4;
    }

    if (v80 < v77 - 1 && *v78 == *v80)
    {
      ++v78;
      v80 += 2;
    }

    if (v80 < v77 && *v78 == *v80)
    {
      ++v80;
    }

    v83 = v80 - a4;
    goto LABEL_248;
  }

  v72 = v152;
LABEL_127:
  v84 = (v23 + 8 * (v20 & ~v135));
  v85 = v84 + 1;
  v86 = v20 + 9;
  *(v137 + 4 * v136) = v20;
  if (v22 < v151)
  {
    goto LABEL_128;
  }

  v88 = 0;
  v89 = 0;
  v90 = 1 << v134;
  v91 = a5 - 7;
  v143 = a5 - 1;
  v146 = a5 - 3;
  v149 = v20 + 3;
  v138 = v72 + 8;
  v92 = v8 + 8 + v26;
  while (1)
  {
    if (v88 >= v89)
    {
      v93 = v89;
    }

    else
    {
      v93 = v88;
    }

    v94 = &a4[v93];
    if (v93 + v22 < v26)
    {
      v95 = v72 + v22;
      v96 = (v95 + v93);
      if (&v154[a4 - v95] >= a5)
      {
        v97 = a5;
      }

      else
      {
        v97 = &v94[v154 - v96];
      }

      if (v97 - 7 <= v94)
      {
        v110 = (v72 + v22 + v93);
        v100 = &a4[v93];
      }

      else
      {
        if (*v96 != *v94)
        {
          v103 = __clz(__rbit64(*v94 ^ *v96)) >> 3;
          v72 = v152;
          goto LABEL_166;
        }

        v98 = v138 + v22;
        v99 = a4;
        while (1)
        {
          v100 = &v99[v93 + 8];
          if (v100 >= (v97 - 7))
          {
            break;
          }

          v101 = *(v98 + v93);
          v102 = *v100;
          v98 += 8;
          v99 += 8;
          if (v101 != v102)
          {
            v103 = &v99[__clz(__rbit64(v102 ^ v101)) >> 3] - a4;
            v72 = v152;
            goto LABEL_166;
          }
        }

        v110 = (v98 + v93);
      }

      if (v100 < (v97 - 3) && *v110 == *v100)
      {
        ++v110;
        v100 += 2;
      }

      if (v100 < (v97 - 1) && *v110 == *v100)
      {
        v110 = (v110 + 2);
        ++v100;
      }

      if (v100 < v97 && *v110 == *v100)
      {
        v100 = (v100 + 1);
      }

      v72 = v152;
      v103 = v100 - v94;
LABEL_166:
      if (&v96[v103] != v154)
      {
        goto LABEL_200;
      }

      v111 = &v94[v103];
      if (v91 <= &v94[v103])
      {
        v116 = (v8 + v26);
        v113 = &v94[v103];
      }

      else
      {
        if (*v141 != *v111)
        {
          v115 = __clz(__rbit64(*v111 ^ *v141)) >> 3;
LABEL_199:
          v103 += v115;
LABEL_200:
          v117 = v103 + v93;
          if (v117 + v22 >= v26)
          {
            v95 = v8 + v22;
          }

          v24 = ~v135;
          if (v117 <= v36)
          {
            goto LABEL_209;
          }

          goto LABEL_203;
        }

        v112 = 0;
        while (1)
        {
          v113 = &v111[v112 + 8];
          if (v113 >= v91)
          {
            break;
          }

          v114 = *(v92 + v112);
          v112 += 8;
          if (v114 != *v113)
          {
            v115 = v112 + (__clz(__rbit64(*v113 ^ v114)) >> 3);
            goto LABEL_199;
          }
        }

        v116 = (v92 + v112);
      }

      if (v113 < v146 && *v116 == *v113)
      {
        ++v116;
        v113 += 4;
      }

      if (v113 < v143 && *v116 == *v113)
      {
        v116 = (v116 + 2);
        v113 += 2;
      }

      if (v113 < a5 && *v116 == *v113)
      {
        ++v113;
      }

      v115 = v113 - v111;
      goto LABEL_199;
    }

    v95 = v8 + v22;
    v104 = (v95 + v93);
    if (v91 <= v94)
    {
      v107 = &a4[v93];
    }

    else
    {
      if (*v104 != *v94)
      {
        v109 = __clz(__rbit64(*v94 ^ *v104)) >> 3;
        goto LABEL_185;
      }

      v105 = v8 + 8 + v22;
      v106 = a4;
      while (1)
      {
        v107 = &v106[v93 + 8];
        if (v107 >= v91)
        {
          break;
        }

        v108 = *(v105 + v93);
        v105 += 8;
        v106 += 8;
        if (v108 != *v107)
        {
          v109 = &v106[__clz(__rbit64(*v107 ^ v108)) >> 3] - a4;
          goto LABEL_185;
        }
      }

      v104 = (v105 + v93);
    }

    if (v107 < v146 && *v104 == *v107)
    {
      v104 = (v104 + 4);
      v107 += 4;
    }

    if (v107 < v143 && *v104 == *v107)
    {
      v104 = (v104 + 2);
      v107 += 2;
    }

    if (v107 < a5 && *v104 == *v107)
    {
      ++v107;
    }

    v109 = v107 - v94;
LABEL_185:
    v117 = v109 + v93;
    if (v117 <= v36)
    {
      goto LABEL_209;
    }

LABEL_203:
    if (v117 > v86 - v22)
    {
      v86 = v22 + v117;
    }

    v118 = &v13[2 * result];
    *v118 = v149 - v22;
    v118[1] = v117;
    result = (result + 1);
    v119 = v117 > 0x1000 || &a4[v117] == a5;
    v36 = v117;
    if (v119)
    {
      goto LABEL_128;
    }

LABEL_209:
    v120 = (v23 + 8 * (v22 & v24));
    if (*(v95 + v117) < a4[v117])
    {
      break;
    }

    *v85 = v22;
    if (v22 <= v150)
    {
      v85 = &v155;
      goto LABEL_128;
    }

    v85 = (v23 + 8 * (v22 & v24));
    v89 = v117;
LABEL_214:
    if (--v90)
    {
      v22 = *v120;
      if (*v120 >= v151)
      {
        continue;
      }
    }

    goto LABEL_128;
  }

  *v84 = v22;
  if (v22 > v150)
  {
    v84 = v120 + 1;
    v88 = v117;
    ++v120;
    goto LABEL_214;
  }

  v84 = &v155;
LABEL_128:
  *v85 = 0;
  *v84 = 0;
  v87 = v86 - 8;
LABEL_129:
  *(a2 + 44) = v87;
  return result;
}

unint64_t ZSTD_count(void *a1, uint64_t *a2, unint64_t a3)
{
  if (a3 - 7 <= a1)
  {
    v4 = a1;
  }

  else
  {
    if (*a2 != *a1)
    {
      return __clz(__rbit64(*a1 ^ *a2)) >> 3;
    }

    ++a2;
    for (i = a1 + 1; ; ++i)
    {
      v4 = i;
      if (i >= a3 - 7)
      {
        break;
      }

      v6 = *a2++;
      v5 = v6;
      if (v6 != *v4)
      {
        v4 = (v4 + (__clz(__rbit64(*v4 ^ v5)) >> 3));
        return v4 - a1;
      }
    }
  }

  if (v4 < a3 - 3 && *a2 == *v4)
  {
    a2 = (a2 + 4);
    v4 = (v4 + 4);
  }

  if (v4 < a3 - 1 && *a2 == *v4)
  {
    a2 = (a2 + 2);
    v4 = (v4 + 2);
  }

  if (v4 >= a3)
  {
    return v4 - a1;
  }

  if (*a2 == *v4)
  {
    v4 = (v4 + 1);
  }

  return v4 - a1;
}

uint64_t ZSTD_btGetAllMatches_noDict_6(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  v14 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v15 = a8;
    v16 = a7;
    v17 = a6;
    v18 = a1;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 6, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v19;
    v14 = v19 - v8;
    a1 = v18;
    a6 = v17;
    a7 = v16;
    a8 = v15;
  }

  *(a2 + 44) = v13;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v21 = *(a2 + 112);
  v22 = *a4;
  v23 = (0xCF1BBCDCBF9B0000 * *a4) >> -*(a2 + 264);
  v24 = *(v21 + 4 * v23);
  v25 = *(a2 + 128);
  v26 = -1 << (*(a2 + 260) - 1);
  v27 = ~v26;
  v28 = v14 + v26 + 1;
  if (v14 < ~v26)
  {
    v28 = 0;
  }

  v29 = *(a2 + 24);
  v30 = 1 << *(a2 + 256);
  v31 = v14 - *(a2 + 28) > v30;
  v32 = v14 - v30;
  if (v31 && *(a2 + 40) == 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = *(a2 + 28);
  }

  if (v34 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v103 = 0;
  v36 = *(a2 + 268);
  v37 = (a8 - 1);
  if (a7 <= 0xFFFFFFFC)
  {
    v38 = v14 - v29;
    v39 = a4 + 4;
    v40 = a7;
    if (a7 == 3)
    {
      v41 = *a6 - 1;
    }

    else
    {
      v41 = a6[a7];
    }

    v42 = a5 - 7;
    v101 = a5 - 3;
    v102 = a5 - 1;
    if (v41 - 1 >= v38)
    {
      goto LABEL_54;
    }

    v10 = 0;
    if (v14 - v41 < v34)
    {
      goto LABEL_55;
    }

    v43 = (a4 - v41);
    if (*v43 != v22)
    {
      goto LABEL_55;
    }

    v44 = &v39[-v41];
    if (v42 <= v39)
    {
      v47 = a4 + 4;
    }

    else
    {
      v45 = *v44;
      if (v45 != *v39)
      {
        v50 = __clz(__rbit64(*v39 ^ v45)) >> 3;
        goto LABEL_47;
      }

      v44 = (v43 + 3);
      v46 = a4 + 12;
      while (1)
      {
        v47 = v46;
        if (v46 >= v42)
        {
          break;
        }

        v49 = *v44;
        v44 += 8;
        v48 = v49;
        v46 += 8;
        if (v49 != *v47)
        {
          v50 = &v47[__clz(__rbit64(*v47 ^ v48)) >> 3] - v39;
          goto LABEL_47;
        }
      }
    }

    if (v47 < v101 && *v44 == *v47)
    {
      v44 += 4;
      v47 += 4;
    }

    if (v47 < v102 && *v44 == *v47)
    {
      v44 += 2;
      v47 += 2;
    }

    if (v47 < a5 && *v44 == *v47)
    {
      LODWORD(v47) = v47 + 1;
    }

    LODWORD(v50) = v47 - v39;
LABEL_47:
    v51 = (v50 + 4);
    if (v37 < v51)
    {
      v10 = 1;
      *a1 = 1;
      a1[1] = v51;
      v52 = v51 > v20 || a4 + v51 == a5;
      v37 = v51;
      if (v52)
      {
        return v10;
      }

LABEL_55:
      if (v40 == 2)
      {
        v53 = *a6 - 1;
      }

      else
      {
        v53 = a6[v40 + 1];
      }

      if (v53 - 1 >= v38)
      {
        v54 = 0;
        goto LABEL_81;
      }

      v54 = 0;
      if (v14 - v53 < v34 || (v55 = (a4 - v53), *a4 != *v55))
      {
LABEL_81:
        v62 = v54;
        if (v37 >= v54)
        {
          v62 = v37;
        }

        else
        {
          v63 = &a1[2 * v10];
          *v63 = 2;
          v63[1] = v54;
          v10 = (v10 + 1);
          if (v54 > v20 || a4 + v54 == a5)
          {
            return v10;
          }
        }

        if (v40 == 1)
        {
          v65 = *a6 - 1;
        }

        else
        {
          v65 = a6[v40 + 2];
        }

        if (v65 - 1 >= v38)
        {
          v66 = 0;
          goto LABEL_115;
        }

        v66 = 0;
        if (v14 - v65 < v34 || (v67 = (a4 - v65), *a4 != *v67))
        {
LABEL_115:
          v37 = v66;
          if (v62 >= v66)
          {
            v37 = v62;
          }

          else
          {
            v75 = &a1[2 * v10];
            *v75 = 3;
            v75[1] = v66;
            v10 = (v10 + 1);
            if (v66 > v20 || a4 + v66 == a5)
            {
              return v10;
            }
          }

          goto LABEL_123;
        }

        v68 = &v39[-v65];
        if (v42 <= v39)
        {
          v71 = a4 + 4;
        }

        else
        {
          v69 = *v68;
          if (v69 != *v39)
          {
            v74 = __clz(__rbit64(*v39 ^ v69)) >> 3;
LABEL_114:
            v66 = v74 + 4;
            goto LABEL_115;
          }

          v68 = (v67 + 3);
          v70 = a4 + 12;
          while (1)
          {
            v71 = v70;
            if (v70 >= v42)
            {
              break;
            }

            v73 = *v68;
            v68 += 8;
            v72 = v73;
            v70 += 8;
            if (v73 != *v71)
            {
              v74 = &v71[__clz(__rbit64(*v71 ^ v72)) >> 3] - v39;
              goto LABEL_114;
            }
          }
        }

        if (v71 < v101 && *v68 == *v71)
        {
          v68 += 4;
          v71 += 4;
        }

        if (v71 < v102 && *v68 == *v71)
        {
          v68 += 2;
          v71 += 2;
        }

        if (v71 < a5 && *v68 == *v71)
        {
          LODWORD(v71) = v71 + 1;
        }

        LODWORD(v74) = v71 - v39;
        goto LABEL_114;
      }

      v56 = &v39[-v53];
      if (v42 <= v39)
      {
        v58 = a4 + 4;
      }

      else
      {
        if (*v56 != *v39)
        {
          v61 = __clz(__rbit64(*v39 ^ *v56)) >> 3;
LABEL_80:
          v54 = v61 + 4;
          goto LABEL_81;
        }

        v56 = (v55 + 3);
        v57 = a4 + 12;
        while (1)
        {
          v58 = v57;
          if (v57 >= v42)
          {
            break;
          }

          v60 = *v56;
          v56 += 8;
          v59 = v60;
          v57 += 8;
          if (v60 != *v58)
          {
            v61 = &v58[__clz(__rbit64(*v58 ^ v59)) >> 3] - v39;
            goto LABEL_80;
          }
        }
      }

      if (v58 < v101 && *v56 == *v58)
      {
        v56 += 4;
        v58 += 4;
      }

      if (v58 < v102 && *v56 == *v58)
      {
        v56 += 2;
        v58 += 2;
      }

      if (v58 < a5 && *v56 == *v58)
      {
        LODWORD(v58) = v58 + 1;
      }

      LODWORD(v61) = v58 - v39;
      goto LABEL_80;
    }

LABEL_54:
    v10 = 0;
    goto LABEL_55;
  }

  v10 = 0;
LABEL_123:
  v77 = (v25 + 8 * (v14 & ~v26));
  v78 = v77 + 1;
  v79 = v14 + 9;
  *(v21 + 4 * v23) = v14;
  if (v24 < v35)
  {
    goto LABEL_124;
  }

  v81 = 0;
  v82 = 0;
  v83 = 1 << v36;
  v84 = a5 - 7;
  v85 = a5 - 3;
  v86 = v14 + 3;
  while (1)
  {
    if (v81 >= v82)
    {
      v87 = v82;
    }

    else
    {
      v87 = v81;
    }

    v88 = v8 + v24;
    v89 = a4 + v87;
    v90 = (v88 + v87);
    if (v84 <= a4 + v87)
    {
      v93 = a4 + v87;
      if (v89 >= v85)
      {
        goto LABEL_139;
      }

LABEL_137:
      if (*v90 == *v93)
      {
        ++v90;
        v93 += 4;
      }

      goto LABEL_139;
    }

    if (*v90 != *v89)
    {
      v96 = __clz(__rbit64(*v89 ^ *v90)) >> 3;
      goto LABEL_149;
    }

    v91 = v8 + 8 + v24;
    v92 = a4;
    while (1)
    {
      v93 = v92 + v87 + 8;
      if (v93 >= v84)
      {
        break;
      }

      v94 = *(v91 + v87);
      v95 = *v93;
      v91 += 8;
      ++v92;
      if (v94 != v95)
      {
        v96 = v92 + (__clz(__rbit64(v95 ^ v94)) >> 3) - a4;
        goto LABEL_149;
      }
    }

    v90 = (v91 + v87);
    if (v93 < v85)
    {
      goto LABEL_137;
    }

LABEL_139:
    if (v93 < a5 - 1)
    {
      if (*v90 == *v93)
      {
        v90 = (v90 + 2);
        v93 += 2;
      }

      if (v93 >= a5)
      {
        goto LABEL_147;
      }

LABEL_145:
      if (*v90 == *v93)
      {
        ++v93;
      }

      goto LABEL_147;
    }

    if (v93 < a5)
    {
      goto LABEL_145;
    }

LABEL_147:
    v96 = v93 - v89;
LABEL_149:
    v97 = v96 + v87;
    if (v97 > v37)
    {
      if (v97 > v79 - v24)
      {
        v79 = v24 + v97;
      }

      v98 = &a1[2 * v10];
      *v98 = v86 - v24;
      v98[1] = v97;
      v10 = (v10 + 1);
      v99 = v97 > 0x1000 || a4 + v97 == a5;
      v37 = v97;
      if (v99)
      {
        goto LABEL_124;
      }
    }

    v100 = (v25 + 8 * (v24 & v27));
    if (*(v88 + v97) < *(a4 + v97))
    {
      break;
    }

    *v78 = v24;
    if (v24 <= v28)
    {
      v78 = &v103;
      goto LABEL_124;
    }

    v78 = (v25 + 8 * (v24 & v27));
    v82 = v97;
LABEL_161:
    if (--v83)
    {
      v24 = *v100;
      if (*v100 >= v35)
      {
        continue;
      }
    }

    goto LABEL_124;
  }

  *v77 = v24;
  if (v24 > v28)
  {
    v77 = v100 + 1;
    v81 = v97;
    ++v100;
    goto LABEL_161;
  }

  v77 = &v103;
LABEL_124:
  *v78 = 0;
  *v77 = 0;
  *(a2 + 44) = v79 - 8;
  return v10;
}

uint64_t ZSTD_btGetAllMatches_noDict_5(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  v14 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v15 = a8;
    v16 = a7;
    v17 = a6;
    v18 = a1;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 5, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v19;
    v14 = v19 - v8;
    a1 = v18;
    a6 = v17;
    a7 = v16;
    a8 = v15;
  }

  *(a2 + 44) = v13;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v21 = *(a2 + 112);
  v22 = *a4;
  v23 = (0xCF1BBCDCBB000000 * *a4) >> -*(a2 + 264);
  v24 = *(v21 + 4 * v23);
  v25 = *(a2 + 128);
  v26 = -1 << (*(a2 + 260) - 1);
  v27 = ~v26;
  v28 = v14 + v26 + 1;
  if (v14 < ~v26)
  {
    v28 = 0;
  }

  v29 = *(a2 + 24);
  v30 = 1 << *(a2 + 256);
  v31 = v14 - *(a2 + 28) > v30;
  v32 = v14 - v30;
  if (v31 && *(a2 + 40) == 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = *(a2 + 28);
  }

  if (v34 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v103 = 0;
  v36 = *(a2 + 268);
  v37 = (a8 - 1);
  if (a7 <= 0xFFFFFFFC)
  {
    v38 = v14 - v29;
    v39 = a4 + 4;
    v40 = a7;
    if (a7 == 3)
    {
      v41 = *a6 - 1;
    }

    else
    {
      v41 = a6[a7];
    }

    v42 = a5 - 7;
    v101 = a5 - 3;
    v102 = a5 - 1;
    if (v41 - 1 >= v38)
    {
      goto LABEL_54;
    }

    v10 = 0;
    if (v14 - v41 < v34)
    {
      goto LABEL_55;
    }

    v43 = (a4 - v41);
    if (*v43 != v22)
    {
      goto LABEL_55;
    }

    v44 = &v39[-v41];
    if (v42 <= v39)
    {
      v47 = a4 + 4;
    }

    else
    {
      v45 = *v44;
      if (v45 != *v39)
      {
        v50 = __clz(__rbit64(*v39 ^ v45)) >> 3;
        goto LABEL_47;
      }

      v44 = (v43 + 3);
      v46 = a4 + 12;
      while (1)
      {
        v47 = v46;
        if (v46 >= v42)
        {
          break;
        }

        v49 = *v44;
        v44 += 8;
        v48 = v49;
        v46 += 8;
        if (v49 != *v47)
        {
          v50 = &v47[__clz(__rbit64(*v47 ^ v48)) >> 3] - v39;
          goto LABEL_47;
        }
      }
    }

    if (v47 < v101 && *v44 == *v47)
    {
      v44 += 4;
      v47 += 4;
    }

    if (v47 < v102 && *v44 == *v47)
    {
      v44 += 2;
      v47 += 2;
    }

    if (v47 < a5 && *v44 == *v47)
    {
      LODWORD(v47) = v47 + 1;
    }

    LODWORD(v50) = v47 - v39;
LABEL_47:
    v51 = (v50 + 4);
    if (v37 < v51)
    {
      v10 = 1;
      *a1 = 1;
      a1[1] = v51;
      v52 = v51 > v20 || a4 + v51 == a5;
      v37 = v51;
      if (v52)
      {
        return v10;
      }

LABEL_55:
      if (v40 == 2)
      {
        v53 = *a6 - 1;
      }

      else
      {
        v53 = a6[v40 + 1];
      }

      if (v53 - 1 >= v38)
      {
        v54 = 0;
        goto LABEL_81;
      }

      v54 = 0;
      if (v14 - v53 < v34 || (v55 = (a4 - v53), *a4 != *v55))
      {
LABEL_81:
        v62 = v54;
        if (v37 >= v54)
        {
          v62 = v37;
        }

        else
        {
          v63 = &a1[2 * v10];
          *v63 = 2;
          v63[1] = v54;
          v10 = (v10 + 1);
          if (v54 > v20 || a4 + v54 == a5)
          {
            return v10;
          }
        }

        if (v40 == 1)
        {
          v65 = *a6 - 1;
        }

        else
        {
          v65 = a6[v40 + 2];
        }

        if (v65 - 1 >= v38)
        {
          v66 = 0;
          goto LABEL_115;
        }

        v66 = 0;
        if (v14 - v65 < v34 || (v67 = (a4 - v65), *a4 != *v67))
        {
LABEL_115:
          v37 = v66;
          if (v62 >= v66)
          {
            v37 = v62;
          }

          else
          {
            v75 = &a1[2 * v10];
            *v75 = 3;
            v75[1] = v66;
            v10 = (v10 + 1);
            if (v66 > v20 || a4 + v66 == a5)
            {
              return v10;
            }
          }

          goto LABEL_123;
        }

        v68 = &v39[-v65];
        if (v42 <= v39)
        {
          v71 = a4 + 4;
        }

        else
        {
          v69 = *v68;
          if (v69 != *v39)
          {
            v74 = __clz(__rbit64(*v39 ^ v69)) >> 3;
LABEL_114:
            v66 = v74 + 4;
            goto LABEL_115;
          }

          v68 = (v67 + 3);
          v70 = a4 + 12;
          while (1)
          {
            v71 = v70;
            if (v70 >= v42)
            {
              break;
            }

            v73 = *v68;
            v68 += 8;
            v72 = v73;
            v70 += 8;
            if (v73 != *v71)
            {
              v74 = &v71[__clz(__rbit64(*v71 ^ v72)) >> 3] - v39;
              goto LABEL_114;
            }
          }
        }

        if (v71 < v101 && *v68 == *v71)
        {
          v68 += 4;
          v71 += 4;
        }

        if (v71 < v102 && *v68 == *v71)
        {
          v68 += 2;
          v71 += 2;
        }

        if (v71 < a5 && *v68 == *v71)
        {
          LODWORD(v71) = v71 + 1;
        }

        LODWORD(v74) = v71 - v39;
        goto LABEL_114;
      }

      v56 = &v39[-v53];
      if (v42 <= v39)
      {
        v58 = a4 + 4;
      }

      else
      {
        if (*v56 != *v39)
        {
          v61 = __clz(__rbit64(*v39 ^ *v56)) >> 3;
LABEL_80:
          v54 = v61 + 4;
          goto LABEL_81;
        }

        v56 = (v55 + 3);
        v57 = a4 + 12;
        while (1)
        {
          v58 = v57;
          if (v57 >= v42)
          {
            break;
          }

          v60 = *v56;
          v56 += 8;
          v59 = v60;
          v57 += 8;
          if (v60 != *v58)
          {
            v61 = &v58[__clz(__rbit64(*v58 ^ v59)) >> 3] - v39;
            goto LABEL_80;
          }
        }
      }

      if (v58 < v101 && *v56 == *v58)
      {
        v56 += 4;
        v58 += 4;
      }

      if (v58 < v102 && *v56 == *v58)
      {
        v56 += 2;
        v58 += 2;
      }

      if (v58 < a5 && *v56 == *v58)
      {
        LODWORD(v58) = v58 + 1;
      }

      LODWORD(v61) = v58 - v39;
      goto LABEL_80;
    }

LABEL_54:
    v10 = 0;
    goto LABEL_55;
  }

  v10 = 0;
LABEL_123:
  v77 = (v25 + 8 * (v14 & ~v26));
  v78 = v77 + 1;
  v79 = v14 + 9;
  *(v21 + 4 * v23) = v14;
  if (v24 < v35)
  {
    goto LABEL_124;
  }

  v81 = 0;
  v82 = 0;
  v83 = 1 << v36;
  v84 = a5 - 7;
  v85 = a5 - 3;
  v86 = v14 + 3;
  while (1)
  {
    if (v81 >= v82)
    {
      v87 = v82;
    }

    else
    {
      v87 = v81;
    }

    v88 = v8 + v24;
    v89 = a4 + v87;
    v90 = (v88 + v87);
    if (v84 <= a4 + v87)
    {
      v93 = a4 + v87;
      if (v89 >= v85)
      {
        goto LABEL_139;
      }

LABEL_137:
      if (*v90 == *v93)
      {
        ++v90;
        v93 += 4;
      }

      goto LABEL_139;
    }

    if (*v90 != *v89)
    {
      v96 = __clz(__rbit64(*v89 ^ *v90)) >> 3;
      goto LABEL_149;
    }

    v91 = v8 + 8 + v24;
    v92 = a4;
    while (1)
    {
      v93 = v92 + v87 + 8;
      if (v93 >= v84)
      {
        break;
      }

      v94 = *(v91 + v87);
      v95 = *v93;
      v91 += 8;
      ++v92;
      if (v94 != v95)
      {
        v96 = v92 + (__clz(__rbit64(v95 ^ v94)) >> 3) - a4;
        goto LABEL_149;
      }
    }

    v90 = (v91 + v87);
    if (v93 < v85)
    {
      goto LABEL_137;
    }

LABEL_139:
    if (v93 < a5 - 1)
    {
      if (*v90 == *v93)
      {
        v90 = (v90 + 2);
        v93 += 2;
      }

      if (v93 >= a5)
      {
        goto LABEL_147;
      }

LABEL_145:
      if (*v90 == *v93)
      {
        ++v93;
      }

      goto LABEL_147;
    }

    if (v93 < a5)
    {
      goto LABEL_145;
    }

LABEL_147:
    v96 = v93 - v89;
LABEL_149:
    v97 = v96 + v87;
    if (v97 > v37)
    {
      if (v97 > v79 - v24)
      {
        v79 = v24 + v97;
      }

      v98 = &a1[2 * v10];
      *v98 = v86 - v24;
      v98[1] = v97;
      v10 = (v10 + 1);
      v99 = v97 > 0x1000 || a4 + v97 == a5;
      v37 = v97;
      if (v99)
      {
        goto LABEL_124;
      }
    }

    v100 = (v25 + 8 * (v24 & v27));
    if (*(v88 + v97) < *(a4 + v97))
    {
      break;
    }

    *v78 = v24;
    if (v24 <= v28)
    {
      v78 = &v103;
      goto LABEL_124;
    }

    v78 = (v25 + 8 * (v24 & v27));
    v82 = v97;
LABEL_161:
    if (--v83)
    {
      v24 = *v100;
      if (*v100 >= v35)
      {
        continue;
      }
    }

    goto LABEL_124;
  }

  *v77 = v24;
  if (v24 > v28)
  {
    v77 = v100 + 1;
    v81 = v97;
    ++v100;
    goto LABEL_161;
  }

  v77 = &v103;
LABEL_124:
  *v78 = 0;
  *v77 = 0;
  *(a2 + 44) = v79 - 8;
  return v10;
}

uint64_t ZSTD_btGetAllMatches_noDict_4(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  v14 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v15 = a8;
    v16 = a7;
    v17 = a6;
    v18 = a1;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 4, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v19;
    v14 = v19 - v8;
    a1 = v18;
    a6 = v17;
    a7 = v16;
    a8 = v15;
  }

  *(a2 + 44) = v13;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v21 = *(a2 + 112);
  v22 = *a4;
  v23 = (-1640531535 * *a4) >> -*(a2 + 264);
  v24 = *(v21 + 4 * v23);
  v25 = *(a2 + 128);
  v26 = -1 << (*(a2 + 260) - 1);
  v27 = ~v26;
  v28 = v14 + v26 + 1;
  if (v14 < ~v26)
  {
    v28 = 0;
  }

  v29 = *(a2 + 24);
  v30 = 1 << *(a2 + 256);
  v31 = v14 - *(a2 + 28) > v30;
  v32 = v14 - v30;
  if (v31 && *(a2 + 40) == 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = *(a2 + 28);
  }

  if (v34 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v103 = 0;
  v36 = *(a2 + 268);
  v37 = (a8 - 1);
  if (a7 <= 0xFFFFFFFC)
  {
    v38 = v14 - v29;
    v39 = (a4 + 1);
    v40 = a7;
    if (a7 == 3)
    {
      v41 = *a6 - 1;
    }

    else
    {
      v41 = a6[a7];
    }

    v42 = a5 - 7;
    v101 = a5 - 3;
    v102 = a5 - 1;
    if (v41 - 1 >= v38)
    {
      goto LABEL_54;
    }

    v10 = 0;
    if (v14 - v41 < v34)
    {
      goto LABEL_55;
    }

    v43 = (a4 - v41);
    if (v22 != *v43)
    {
      goto LABEL_55;
    }

    v44 = &v39[-v41];
    if (v42 <= v39)
    {
      v47 = (a4 + 1);
    }

    else
    {
      v45 = *v44;
      if (v45 != *v39)
      {
        v50 = __clz(__rbit64(*v39 ^ v45)) >> 3;
        goto LABEL_47;
      }

      v44 = (v43 + 3);
      v46 = (a4 + 3);
      while (1)
      {
        v47 = v46;
        if (v46 >= v42)
        {
          break;
        }

        v49 = *v44;
        v44 += 8;
        v48 = v49;
        v46 += 8;
        if (v49 != *v47)
        {
          v50 = &v47[__clz(__rbit64(*v47 ^ v48)) >> 3] - v39;
          goto LABEL_47;
        }
      }
    }

    if (v47 < v101 && *v44 == *v47)
    {
      v44 += 4;
      v47 += 4;
    }

    if (v47 < v102 && *v44 == *v47)
    {
      v44 += 2;
      v47 += 2;
    }

    if (v47 < a5 && *v44 == *v47)
    {
      LODWORD(v47) = v47 + 1;
    }

    LODWORD(v50) = v47 - v39;
LABEL_47:
    v51 = (v50 + 4);
    if (v37 < v51)
    {
      v10 = 1;
      *a1 = 1;
      a1[1] = v51;
      v52 = v51 > v20 || a4 + v51 == a5;
      v37 = v51;
      if (v52)
      {
        return v10;
      }

LABEL_55:
      if (v40 == 2)
      {
        v53 = *a6 - 1;
      }

      else
      {
        v53 = a6[v40 + 1];
      }

      if (v53 - 1 >= v38)
      {
        v54 = 0;
        goto LABEL_81;
      }

      v54 = 0;
      if (v14 - v53 < v34 || (v55 = (a4 - v53), *a4 != *v55))
      {
LABEL_81:
        v62 = v54;
        if (v37 >= v54)
        {
          v62 = v37;
        }

        else
        {
          v63 = &a1[2 * v10];
          *v63 = 2;
          v63[1] = v54;
          v10 = (v10 + 1);
          if (v54 > v20 || a4 + v54 == a5)
          {
            return v10;
          }
        }

        if (v40 == 1)
        {
          v65 = *a6 - 1;
        }

        else
        {
          v65 = a6[v40 + 2];
        }

        if (v65 - 1 >= v38)
        {
          v66 = 0;
          goto LABEL_115;
        }

        v66 = 0;
        if (v14 - v65 < v34 || (v67 = (a4 - v65), *a4 != *v67))
        {
LABEL_115:
          v37 = v66;
          if (v62 >= v66)
          {
            v37 = v62;
          }

          else
          {
            v75 = &a1[2 * v10];
            *v75 = 3;
            v75[1] = v66;
            v10 = (v10 + 1);
            if (v66 > v20 || a4 + v66 == a5)
            {
              return v10;
            }
          }

          goto LABEL_123;
        }

        v68 = &v39[-v65];
        if (v42 <= v39)
        {
          v71 = (a4 + 1);
        }

        else
        {
          v69 = *v68;
          if (v69 != *v39)
          {
            v74 = __clz(__rbit64(*v39 ^ v69)) >> 3;
LABEL_114:
            v66 = v74 + 4;
            goto LABEL_115;
          }

          v68 = (v67 + 3);
          v70 = (a4 + 3);
          while (1)
          {
            v71 = v70;
            if (v70 >= v42)
            {
              break;
            }

            v73 = *v68;
            v68 += 8;
            v72 = v73;
            v70 += 8;
            if (v73 != *v71)
            {
              v74 = &v71[__clz(__rbit64(*v71 ^ v72)) >> 3] - v39;
              goto LABEL_114;
            }
          }
        }

        if (v71 < v101 && *v68 == *v71)
        {
          v68 += 4;
          v71 += 4;
        }

        if (v71 < v102 && *v68 == *v71)
        {
          v68 += 2;
          v71 += 2;
        }

        if (v71 < a5 && *v68 == *v71)
        {
          LODWORD(v71) = v71 + 1;
        }

        LODWORD(v74) = v71 - v39;
        goto LABEL_114;
      }

      v56 = &v39[-v53];
      if (v42 <= v39)
      {
        v58 = (a4 + 1);
      }

      else
      {
        if (*v56 != *v39)
        {
          v61 = __clz(__rbit64(*v39 ^ *v56)) >> 3;
LABEL_80:
          v54 = v61 + 4;
          goto LABEL_81;
        }

        v56 = (v55 + 3);
        v57 = (a4 + 3);
        while (1)
        {
          v58 = v57;
          if (v57 >= v42)
          {
            break;
          }

          v60 = *v56;
          v56 += 8;
          v59 = v60;
          v57 += 8;
          if (v60 != *v58)
          {
            v61 = &v58[__clz(__rbit64(*v58 ^ v59)) >> 3] - v39;
            goto LABEL_80;
          }
        }
      }

      if (v58 < v101 && *v56 == *v58)
      {
        v56 += 4;
        v58 += 4;
      }

      if (v58 < v102 && *v56 == *v58)
      {
        v56 += 2;
        v58 += 2;
      }

      if (v58 < a5 && *v56 == *v58)
      {
        LODWORD(v58) = v58 + 1;
      }

      LODWORD(v61) = v58 - v39;
      goto LABEL_80;
    }

LABEL_54:
    v10 = 0;
    goto LABEL_55;
  }

  v10 = 0;
LABEL_123:
  v77 = (v25 + 8 * (v14 & ~v26));
  v78 = v77 + 1;
  v79 = v14 + 9;
  *(v21 + 4 * v23) = v14;
  if (v24 < v35)
  {
    goto LABEL_124;
  }

  v81 = 0;
  v82 = 0;
  v83 = 1 << v36;
  v84 = a5 - 7;
  v85 = a5 - 3;
  v86 = v14 + 3;
  while (1)
  {
    if (v81 >= v82)
    {
      v87 = v82;
    }

    else
    {
      v87 = v81;
    }

    v88 = v8 + v24;
    v89 = a4 + v87;
    v90 = (v88 + v87);
    if (v84 <= a4 + v87)
    {
      v93 = a4 + v87;
      if (v89 >= v85)
      {
        goto LABEL_139;
      }

LABEL_137:
      if (*v90 == *v93)
      {
        ++v90;
        v93 += 4;
      }

      goto LABEL_139;
    }

    if (*v90 != *v89)
    {
      v96 = __clz(__rbit64(*v89 ^ *v90)) >> 3;
      goto LABEL_149;
    }

    v91 = v8 + 8 + v24;
    v92 = a4;
    while (1)
    {
      v93 = v92 + v87 + 8;
      if (v93 >= v84)
      {
        break;
      }

      v94 = *(v91 + v87);
      v95 = *v93;
      v91 += 8;
      v92 += 2;
      if (v94 != v95)
      {
        v96 = v92 + (__clz(__rbit64(v95 ^ v94)) >> 3) - a4;
        goto LABEL_149;
      }
    }

    v90 = (v91 + v87);
    if (v93 < v85)
    {
      goto LABEL_137;
    }

LABEL_139:
    if (v93 < a5 - 1)
    {
      if (*v90 == *v93)
      {
        v90 = (v90 + 2);
        v93 += 2;
      }

      if (v93 >= a5)
      {
        goto LABEL_147;
      }

LABEL_145:
      if (*v90 == *v93)
      {
        ++v93;
      }

      goto LABEL_147;
    }

    if (v93 < a5)
    {
      goto LABEL_145;
    }

LABEL_147:
    v96 = v93 - v89;
LABEL_149:
    v97 = v96 + v87;
    if (v97 > v37)
    {
      if (v97 > v79 - v24)
      {
        v79 = v24 + v97;
      }

      v98 = &a1[2 * v10];
      *v98 = v86 - v24;
      v98[1] = v97;
      v10 = (v10 + 1);
      v99 = v97 > 0x1000 || a4 + v97 == a5;
      v37 = v97;
      if (v99)
      {
        goto LABEL_124;
      }
    }

    v100 = (v25 + 8 * (v24 & v27));
    if (*(v88 + v97) < *(a4 + v97))
    {
      break;
    }

    *v78 = v24;
    if (v24 <= v28)
    {
      v78 = &v103;
      goto LABEL_124;
    }

    v78 = (v25 + 8 * (v24 & v27));
    v82 = v97;
LABEL_161:
    if (--v83)
    {
      v24 = *v100;
      if (*v100 >= v35)
      {
        continue;
      }
    }

    goto LABEL_124;
  }

  *v77 = v24;
  if (v24 > v28)
  {
    v77 = v100 + 1;
    v81 = v97;
    ++v100;
    goto LABEL_161;
  }

  v77 = &v103;
LABEL_124:
  *v78 = 0;
  *v77 = 0;
  *(a2 + 44) = v79 - 8;
  return v10;
}

uint64_t ZSTD_btGetAllMatches_noDict_3(_DWORD *a1, uint64_t a2, unsigned int *a3, char *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  if (v9 >= a4 - v8)
  {
    v19 = a4 - v8;
    v116 = a4 - v8;
  }

  else
  {
    v117 = a8;
    v14 = a7;
    v15 = a6;
    v16 = a3;
    v17 = a1;
    v18 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 3, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v18;
    v19 = v18 - v8;
    v116 = v18 - v8;
    a1 = v17;
    a3 = v16;
    a6 = v15;
    a7 = v14;
    a8 = v117;
  }

  *(a2 + 44) = v13;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v21 = *(a2 + 112);
  v22 = *a4;
  v23 = (-1640531535 * *a4) >> -*(a2 + 264);
  v24 = *(v21 + 4 * v23);
  v25 = *(a2 + 128);
  v26 = -1 << (*(a2 + 260) - 1);
  v27 = ~v26;
  v28 = v19 + v26 + 1;
  if (v19 < ~v26)
  {
    v28 = 0;
  }

  v118 = v28;
  v119 = 0;
  v29 = 1 << *(a2 + 256);
  v30 = v19 - *(a2 + 28) > v29;
  v31 = v19 - v29;
  if (v30 && *(a2 + 40) == 0)
  {
    v33 = v31;
  }

  else
  {
    v33 = *(a2 + 28);
  }

  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = *(a2 + 268);
  v36 = (a8 - 1);
  if (a7 > 0xFFFFFFFC)
  {
    v10 = 0;
    if (v36 > 2)
    {
      goto LABEL_158;
    }

    goto LABEL_123;
  }

  v37 = v19 - *(a2 + 24);
  v38 = a4 + 3;
  if (a7 == 3)
  {
    v39 = *a6 - 1;
  }

  else
  {
    v39 = a6[a7];
  }

  v40 = a5 - 7;
  v114 = a5 - 3;
  v115 = a5 - 1;
  if (v39 - 1 >= v37)
  {
    goto LABEL_56;
  }

  v10 = 0;
  if (v19 - v39 < v33)
  {
    goto LABEL_57;
  }

  v41 = v39;
  v42 = &a4[-v39];
  if (((*v42 ^ v22) & 0xFFFFFF) != 0)
  {
    goto LABEL_57;
  }

  v43 = &v38[-v41];
  if (v40 <= v38)
  {
    v46 = a4 + 3;
  }

  else
  {
    v44 = *v43;
    if (v44 != *v38)
    {
      v49 = __clz(__rbit64(*v38 ^ v44)) >> 3;
      goto LABEL_49;
    }

    v43 = v42 + 11;
    v45 = a4 + 11;
    while (1)
    {
      v46 = v45;
      if (v45 >= v40)
      {
        break;
      }

      v48 = *v43;
      v43 += 8;
      v47 = v48;
      v45 += 8;
      if (v48 != *v46)
      {
        v49 = &v46[__clz(__rbit64(*v46 ^ v47)) >> 3] - v38;
        goto LABEL_49;
      }
    }
  }

  if (v46 < v114 && *v43 == *v46)
  {
    v43 += 4;
    v46 += 4;
  }

  if (v46 < v115 && *v43 == *v46)
  {
    v43 += 2;
    v46 += 2;
  }

  if (v46 < a5 && *v43 == *v46)
  {
    LODWORD(v46) = v46 + 1;
  }

  LODWORD(v49) = v46 - v38;
LABEL_49:
  v50 = (v49 + 3);
  if (v36 >= v50)
  {
LABEL_56:
    v10 = 0;
    goto LABEL_57;
  }

  v10 = 1;
  *a1 = 1;
  a1[1] = v50;
  v51 = v50 > v20 || &a4[v50] == a5;
  v36 = v50;
  if (v51)
  {
    return v10;
  }

LABEL_57:
  if (a7 == 2)
  {
    v52 = *a6 - 1;
  }

  else
  {
    v52 = a6[a7 + 1];
  }

  if (v52 - 1 >= v37)
  {
    v53 = 0;
    goto LABEL_83;
  }

  v53 = 0;
  if (v19 - v52 >= v33)
  {
    v54 = &a4[-v52];
    if (((*v54 ^ *a4) & 0xFFFFFF) == 0)
    {
      v55 = &v38[-v52];
      if (v40 <= v38)
      {
        v57 = a4 + 3;
      }

      else
      {
        if (*v55 != *v38)
        {
          v60 = __clz(__rbit64(*v38 ^ *v55)) >> 3;
LABEL_82:
          v53 = v60 + 3;
          goto LABEL_83;
        }

        v55 = v54 + 11;
        v56 = a4 + 11;
        while (1)
        {
          v57 = v56;
          if (v56 >= v40)
          {
            break;
          }

          v59 = *v55;
          v55 += 8;
          v58 = v59;
          v56 += 8;
          if (v59 != *v57)
          {
            v60 = &v57[__clz(__rbit64(*v57 ^ v58)) >> 3] - v38;
            goto LABEL_82;
          }
        }
      }

      if (v57 < v114 && *v55 == *v57)
      {
        v55 += 4;
        v57 += 4;
      }

      if (v57 < v115 && *v55 == *v57)
      {
        v55 += 2;
        v57 += 2;
      }

      if (v57 < a5 && *v55 == *v57)
      {
        LODWORD(v57) = v57 + 1;
      }

      LODWORD(v60) = v57 - v38;
      goto LABEL_82;
    }
  }

LABEL_83:
  v61 = v53;
  if (v36 >= v53)
  {
    v61 = v36;
  }

  else
  {
    v62 = &a1[2 * v10];
    *v62 = 2;
    v62[1] = v53;
    v10 = (v10 + 1);
    if (v53 > v20 || &a4[v53] == a5)
    {
      return v10;
    }
  }

  if (a7 == 1)
  {
    v64 = *a6 - 1;
  }

  else
  {
    v64 = a6[a7 + 2];
  }

  if (v64 - 1 >= v37)
  {
    v65 = 0;
    goto LABEL_117;
  }

  v65 = 0;
  if (v19 - v64 >= v33)
  {
    v66 = &a4[-v64];
    if (((*v66 ^ *a4) & 0xFFFFFF) == 0)
    {
      v67 = &v38[-v64];
      if (v40 <= v38)
      {
        v69 = a4 + 3;
      }

      else
      {
        if (*v67 != *v38)
        {
          v72 = __clz(__rbit64(*v38 ^ *v67)) >> 3;
LABEL_116:
          v65 = v72 + 3;
          goto LABEL_117;
        }

        v67 = v66 + 11;
        v68 = a4 + 11;
        while (1)
        {
          v69 = v68;
          if (v68 >= v40)
          {
            break;
          }

          v71 = *v67;
          v67 += 8;
          v70 = v71;
          v68 += 8;
          if (v71 != *v69)
          {
            v72 = &v69[__clz(__rbit64(*v69 ^ v70)) >> 3] - v38;
            goto LABEL_116;
          }
        }
      }

      if (v69 < v114 && *v67 == *v69)
      {
        v67 += 4;
        v69 += 4;
      }

      if (v69 < v115 && *v67 == *v69)
      {
        v67 += 2;
        v69 += 2;
      }

      if (v69 < a5 && *v67 == *v69)
      {
        LODWORD(v69) = v69 + 1;
      }

      LODWORD(v72) = v69 - v38;
      goto LABEL_116;
    }
  }

LABEL_117:
  v36 = v65;
  if (v61 >= v65)
  {
    v36 = v61;
    if (v61 > 2)
    {
      goto LABEL_158;
    }
  }

  else
  {
    v73 = &a1[2 * v10];
    *v73 = 3;
    v73[1] = v65;
    v10 = (v10 + 1);
    if (v65 > v20 || &a4[v65] == a5)
    {
      return v10;
    }

    if (v65 > 2uLL)
    {
      goto LABEL_158;
    }
  }

LABEL_123:
  v75 = *(a2 + 120);
  v76 = *a3;
  v77 = *a4;
  v78 = 32 - *(a2 + 48);
  if (v76 < v19)
  {
    do
    {
      *(v75 + 4 * ((900185344 * *(v8 + v76)) >> v78)) = v76;
      ++v76;
    }

    while (v116 != v76);
  }

  *a3 = v19;
  v79 = *(v75 + 4 * ((900185344 * v77) >> v78));
  v80 = v19 - v79;
  if (v79 < v34 || (v19 - v79) >> 18 != 0)
  {
    goto LABEL_158;
  }

  v82 = (v8 + v79);
  if (a5 - 7 <= a4)
  {
    v84 = a4;
    goto LABEL_140;
  }

  if (*v82 == *a4)
  {
    v82 = (v79 + v8 + 8);
    v83 = a4 + 8;
    while (1)
    {
      v84 = v83;
      if (v83 >= a5 - 7)
      {
        break;
      }

      v86 = *v82;
      v82 += 4;
      v85 = v86;
      v83 += 8;
      if (v86 != *v84)
      {
        v87 = &v84[__clz(__rbit64(*v84 ^ v85)) >> 3] - a4;
        if (v87 >= 3)
        {
          goto LABEL_152;
        }

        goto LABEL_158;
      }
    }

LABEL_140:
    if (v84 < a5 - 3 && *v82 == *v84)
    {
      v82 += 2;
      v84 += 4;
    }

    if (v84 < a5 - 1 && *v82 == *v84)
    {
      ++v82;
      v84 += 2;
    }

    if (v84 < a5 && *v82 == *v84)
    {
      ++v84;
    }

    v87 = v84 - a4;
    if ((v84 - a4) < 3)
    {
      goto LABEL_158;
    }

LABEL_152:
    *a1 = v80 + 3;
    a1[1] = v87;
    if (v87 > v20 || &a4[v87] == a5)
    {
      v89 = v19 + 1;
      v10 = 1;
      goto LABEL_160;
    }

    v10 = 1;
    v36 = v87;
    goto LABEL_158;
  }

  v87 = __clz(__rbit64(*a4 ^ *v82)) >> 3;
  if (v87 >= 3)
  {
    goto LABEL_152;
  }

LABEL_158:
  v90 = (v25 + 8 * (v19 & ~v26));
  v91 = v90 + 1;
  v92 = v19 + 9;
  *(v21 + 4 * v23) = v19;
  if (v24 < v34)
  {
    goto LABEL_159;
  }

  v94 = 0;
  v95 = 0;
  v96 = 1 << v35;
  v97 = a5 - 7;
  v98 = a5 - 3;
  v99 = v19 + 3;
  while (1)
  {
    if (v94 >= v95)
    {
      v100 = v95;
    }

    else
    {
      v100 = v94;
    }

    v101 = v8 + v24;
    v102 = &a4[v100];
    v103 = (v101 + v100);
    if (v97 <= &a4[v100])
    {
      v106 = &a4[v100];
      if (v102 >= v98)
      {
        goto LABEL_175;
      }

LABEL_173:
      if (*v103 == *v106)
      {
        ++v103;
        v106 += 4;
      }

      goto LABEL_175;
    }

    if (*v103 != *v102)
    {
      v109 = __clz(__rbit64(*v102 ^ *v103)) >> 3;
      goto LABEL_185;
    }

    v104 = v8 + 8 + v24;
    v105 = a4;
    while (1)
    {
      v106 = &v105[v100 + 8];
      if (v106 >= v97)
      {
        break;
      }

      v107 = *(v104 + v100);
      v108 = *v106;
      v104 += 8;
      v105 += 8;
      if (v107 != v108)
      {
        v109 = &v105[__clz(__rbit64(v108 ^ v107)) >> 3] - a4;
        goto LABEL_185;
      }
    }

    v103 = (v104 + v100);
    if (v106 < v98)
    {
      goto LABEL_173;
    }

LABEL_175:
    if (v106 < a5 - 1)
    {
      if (*v103 == *v106)
      {
        v103 = (v103 + 2);
        v106 += 2;
      }

      if (v106 >= a5)
      {
        goto LABEL_183;
      }

LABEL_181:
      if (*v103 == *v106)
      {
        ++v106;
      }

      goto LABEL_183;
    }

    if (v106 < a5)
    {
      goto LABEL_181;
    }

LABEL_183:
    v109 = v106 - v102;
LABEL_185:
    v110 = v109 + v100;
    if (v110 > v36)
    {
      if (v110 > v92 - v24)
      {
        v92 = v24 + v110;
      }

      v111 = &a1[2 * v10];
      *v111 = v99 - v24;
      v111[1] = v110;
      v10 = (v10 + 1);
      v112 = v110 > 0x1000 || &a4[v110] == a5;
      v36 = v110;
      if (v112)
      {
        goto LABEL_159;
      }
    }

    v113 = (v25 + 8 * (v24 & v27));
    if (*(v101 + v110) < a4[v110])
    {
      break;
    }

    *v91 = v24;
    if (v24 <= v118)
    {
      v91 = &v119;
      goto LABEL_159;
    }

    v91 = (v25 + 8 * (v24 & v27));
    v95 = v110;
LABEL_197:
    if (--v96)
    {
      v24 = *v113;
      if (*v113 >= v34)
      {
        continue;
      }
    }

    goto LABEL_159;
  }

  *v90 = v24;
  if (v24 > v118)
  {
    v90 = v113 + 1;
    v94 = v110;
    ++v113;
    goto LABEL_197;
  }

  v90 = &v119;
LABEL_159:
  *v91 = 0;
  *v90 = 0;
  v89 = v92 - 8;
LABEL_160:
  *(a2 + 44) = v89;
  return v10;
}

int64_t ZSTD_compressBlock_opt2(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4, unint64_t a5, unsigned int a6)
{
  v8 = a1;
  v316 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 272);
  v10 = v9 - 6;
  v290 = v9;
  v11 = v9 >= 3;
  v12 = v9 - 3;
  if (v11)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  v306 = v14;
  if (v10 >= 0xFFFFFFFD)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v299 = *(&off_1EEFDB430[4 * a6] + v15);
  v300 = a4;
  v301 = &a4[a5];
  v302 = &a4[a5 - 8];
  v16 = (*(a1 + 8) + *(a1 + 24));
  if (*(a1 + 276) >= 0xFFFu)
  {
    v17 = 4095;
  }

  else
  {
    v17 = *(a1 + 276);
  }

  v293 = v17;
  v311 = *(a1 + 44);
  v19 = *(a1 + 176);
  v18 = *(a1 + 184);
  v310 = 0;
  v308 = 0u;
  v309 = 0u;
  v307 = 0u;
  v314 = 0;
  v315 = 0;
  v20 = *(a1 + 288);
  if (v20)
  {
    v21 = v20[1];
    v307 = *v20;
    v308 = v21;
    *&v309 = *(v20 + 4);
  }

  else
  {
    *&v309 = 0;
    v307 = 0uLL;
    v308 = 0uLL;
  }

  LODWORD(v310) = 0;
  *(&v309 + 1) = 0;
  ZSTD_opt_getNextMatchAndUpdateSeqStore(&v307, 0, a5);
  ZSTD_rescaleFreqs((v8 + 144), v300, a5, 2);
  if (v16 == v300)
  {
    v22 = v300 + 1;
  }

  else
  {
    v22 = v300;
  }

  if (v22 < v302)
  {
    v292 = 0;
    v291 = a2;
    v23 = (v18 + 10);
    v24 = v300;
    v304 = v8;
    v305 = v19;
    while (1)
    {
      v295 = v24;
      v297 = v22 - v24;
      v29 = v19;
      v30 = v19;
      v31 = v22;
      LODWORD(v312) = v299(v29, v8, &v311);
      v32 = v30;
      ZSTD_optLdm_processMatchCandidate(&v307, v30, &v312, v31 - v300, v301 - v31);
      v33 = v312;
      if (!v312)
      {
        v22 = v31 + 1;
        v24 = v295;
        v19 = v32;
        goto LABEL_22;
      }

      v303 = v31;
      v34 = v297;
      v18[2] = 0;
      v18[3] = v297;
      if (*(v8 + 224) == 1)
      {
        v35 = __clz(v297 + 1);
        v36 = ((v297 + 1) << 8 >> ~v35) + ((31 - v35) << 8);
        v37 = v30;
      }

      else
      {
        v37 = v30;
        if (v297 == 0x20000)
        {
          v38 = *(*(v8 + 152) + 140) + 1;
          v39 = __clz(v38);
          v36 = *(v8 + 212) + (v39 << 8) - (v38 << 8 >> ~v39) - 3584;
        }

        else
        {
          if (v297 < 0x40)
          {
            v40 = ZSTD_LLcode_LL_Code_36107[v297 & 0x3F];
          }

          else
          {
            v40 = 50 - __clz(v297);
          }

          v41 = LL_bits_36216[v40];
          v42 = *(*(v8 + 152) + 4 * v40) + 1;
          v43 = __clz(v42);
          v36 = *(v8 + 212) - (v42 << 8 >> ~v43) + ((v43 + v41) << 8) - 7936;
        }
      }

      *v18 = v36;
      v45 = *a3;
      v18[6] = *(a3 + 2);
      *(v18 + 2) = v45;
      v44 = (v37 + 8 * (v33 - 1));
      LODWORD(v45) = v44[1];
      if (v45 > v293)
      {
        v46 = 0;
        v47 = *v44;
        goto LABEL_185;
      }

      v18[7] = 0x40000000;
      v18[14] = 0x40000000;
      v18[9] = 0;
      v18[10] = v297 + 1;
      v18[16] = 0;
      v18[17] = v297 + 2;
      if (v290 != 3)
      {
        v48 = v303 - v295 + 3;
        v49 = v18 + 24;
        v50 = v306 - 3;
        do
        {
          *(v49 - 1) = 0;
          *v49 = v48++;
          *(v49 - 3) = 0x40000000;
          v49 += 7;
          --v50;
        }

        while (v50);
      }

      v51 = 0;
      v52 = v306;
      do
      {
        v53 = (v37 + 8 * v51);
        v54 = v53[1];
        if (v52 <= v54)
        {
          v55 = *v53;
          v56 = __clz(v55);
          v57 = 31 - v56;
          if (*(v8 + 224) == 1)
          {
            v58 = (v52 << 8) - 512;
            do
            {
              v59 = __clz(v52 - 2);
              v60 = *v18;
              v61 = &v18[7 * v52];
              v61[2] = v52;
              v61[3] = 0;
              *v61 = (v58 >> ~v59) + ((31 - v59 + v57) << 8) + v60 + 4352;
              v61[1] = v55;
              ++v52;
              v58 += 256;
            }

            while (v52 <= v54);
          }

          else
          {
            v62 = *(v8 + 216);
            v63 = *(v8 + 160);
            v64 = *(v8 + 168);
            v65 = *(v8 + 220) + 51;
            v66 = *(v8 + 152);
            v67 = *(v8 + 212) - 7936;
            do
            {
              v78 = v52 - 3;
              if (v52 - 3 < 0x80)
              {
                v68 = ZSTD_MLcode_ML_Code_36109[v78];
              }

              else
              {
                v68 = 67 - __clz(v78);
              }

              v69 = *(v64 + 4 * v57) + 1;
              v70 = __clz(v69);
              v71 = ML_bits_36218[v68];
              v72 = *(v63 + 4 * v68) + 1;
              v73 = __clz(v72);
              v74 = v65 - (v69 << 8 >> ~v70) + v62 + *v18 - (v72 << 8 >> ~v73) + ((v70 - v56 + v71 + v73 + 16777185) << 8);
              v75 = &v18[7 * v52];
              v75[1] = v55;
              v75[2] = v52;
              v75[3] = 0;
              v76 = *v66 + 1;
              v77 = __clz(v76);
              *v75 = v67 + (v77 << 8) - (v76 << 8 >> ~v77) + v74;
              ++v52;
            }

            while (v52 <= v54);
          }
        }

        ++v51;
      }

      while (v51 != v33);
      v18[7 * v52] = 0x40000000;
      LODWORD(v79) = v52 - 1;
      if (v52 == 1)
      {
        goto LABEL_176;
      }

      v46 = 1;
      v80 = v303;
      while (1)
      {
        v81 = &v80[v46];
        v82 = &v18[7 * v46 - 7];
        v83 = v82[3];
        v84 = v83 + 1;
        v85 = *v82;
        v86 = *(v304 + 224);
        if (*(v304 + 240) == 2)
        {
          v87 = v85 + 2048;
          if (v86 == 1)
          {
            goto LABEL_62;
          }

          if (v83 == 0x1FFFF)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v86 == 1)
          {
            v87 = v85 + 1536;
LABEL_62:
            v99 = __clz(v83 + 2);
            v92 = (((v83 + 2) << 8) >> ~v99) + ((31 - v99) << 8);
            v100 = __clz(v84);
            v98 = (v84 << 8 >> ~v100) + ((31 - v100) << 8);
            goto LABEL_63;
          }

          v117 = *(v304 + 208);
          v118 = v117 - 256;
          v119 = *(*(v304 + 144) + 4 * *(v81 - 1)) + 1;
          v120 = __clz(v119);
          v121 = (v119 << 8 >> ~v120) + ((31 - v120) << 8);
          v122 = v117 - v121;
          if (v121 > v118)
          {
            v122 = 256;
          }

          v87 = v122 + v85;
          if (v83 == 0x1FFFF)
          {
LABEL_57:
            v88 = *(v304 + 212);
            v89 = *(v304 + 152);
            v90 = *(v89 + 140) + 1;
            v91 = __clz(v90);
            v92 = v88 + (v91 << 8) - (v90 << 8 >> ~v91) - 3584;
            v93 = v88 - 7936;
            goto LABEL_58;
          }
        }

        if (v84 < 0x40)
        {
          v123 = ZSTD_LLcode_LL_Code_36107[v84];
        }

        else
        {
          v123 = 50 - __clz(v84);
        }

        v124 = LL_bits_36216[v123];
        v125 = *(v304 + 212);
        v89 = *(v304 + 152);
        v126 = *(v89 + 4 * v123) + 1;
        v127 = __clz(v126);
        v128 = v126 << 8 >> ~v127;
        v129 = v127 + v124;
        v93 = v125 - 7936;
        v92 = v125 - 7936 - v128 + (v129 << 8);
        if (v83 != 0x20000)
        {
          if (v83 >= 0x40)
          {
LABEL_58:
            v94 = 50 - __clz(v83);
          }

          else
          {
            v94 = ZSTD_LLcode_LL_Code_36107[v83];
          }

          v95 = LL_bits_36216[v94];
          v96 = *(v89 + 4 * v94) + 1;
          v97 = __clz(v96);
          v98 = v93 - (v96 << 8 >> ~v97) + ((v97 + v95) << 8);
          goto LABEL_63;
        }

        v130 = *(v89 + 140) + 1;
        v131 = __clz(v130);
        v98 = v125 + (v131 << 8) - (v130 << 8 >> ~v131) - 3584;
LABEL_63:
        v101 = v87 + v92 - v98;
        v102 = &v18[7 * v46];
        v103 = *v102;
        if (v101 > *v102)
        {
          v84 = v102[3];
          v101 = *v102;
          goto LABEL_114;
        }

        v104 = v102[1];
        v105 = v102[2];
        v106 = v102[3];
        *(v102 + 3) = *(v82 + 3);
        *v102 = *v82;
        v102[3] = v84;
        *v102 = v101;
        if (!v106 && *(v304 + 224) != 1)
        {
          v107 = *(v304 + 212);
          v108 = *(v304 + 152);
          v109 = v107 - 7936;
          v110 = vadd_s32(*v108, 0x100000001);
          v111 = vclz_s32(v110);
          v112 = vshl_u32(vshl_n_s32(v110, 8uLL), vsub_s32(v111, 0x1F0000001FLL));
          v113 = vsub_s32(vadd_s32(vdup_n_s32(v107 - 7936), vshl_n_s32(v111, 8uLL)), v112);
          if ((vcgt_s32(v113, vdup_lane_s32(v113, 1)).u32[0] & 1) != 0 && v81 < v301)
          {
            if (*(v304 + 240) == 2)
            {
              v114 = vsub_s32(vdup_lane_s32(v111, 1), v111).u32[0];
              v115 = v103 + 2048;
              v116 = 2048;
            }

            else
            {
              v132 = *(v304 + 208);
              v133 = v132 - 256;
              v134 = *(*(v304 + 144) + 4 * *v81) + 1;
              v135 = __clz(v134);
              v136 = (v134 << 8 >> ~v135) + ((31 - v135) << 8);
              v116 = v132 - v136;
              if (v136 > v133)
              {
                v116 = 256;
              }

              v114 = vsub_s32(vdup_lane_s32(v111, 1), v111).u32[0];
              v115 = v116 + v103;
            }

            v137 = v83 + 2;
            if (v137 == 0x20000)
            {
              v138 = v108[17].i32[1] + 1;
              v139 = __clz(v138);
              v140 = v107 + (v139 << 8) - (v138 << 8 >> ~v139) - 3584;
              goto LABEL_86;
            }

            if (v137 < 0x40)
            {
              v146 = ZSTD_LLcode_LL_Code_36107[v137];
            }

            else
            {
              v146 = 50 - __clz(v137);
            }

            v147 = LL_bits_36216[v146];
            v148 = v108->i32[v146] + 1;
            v149 = __clz(v148);
            v140 = v109 - (v148 << 8 >> ~v149) + ((v149 + v147) << 8);
            if (v84 == 0x20000)
            {
              v150 = v108[17].i32[1] + 1;
              v151 = __clz(v150);
              v145 = (v150 << 8 >> ~v151) - (v107 + (v151 << 8)) + 3584;
            }

            else
            {
              if (v84 >= 0x40)
              {
LABEL_86:
                v141 = 50 - __clz(v84);
              }

              else
              {
                v141 = ZSTD_LLcode_LL_Code_36107[v84];
              }

              v142 = LL_bits_36216[v141];
              v143 = v108->i32[v141] + 1;
              v144 = __clz(v143);
              v145 = (v143 << 8 >> ~v144) - (v109 + ((v144 + v142) << 8));
            }

            v152 = v115 - v112.i32[1] + v112.i32[0] + (v114 << 8);
            if (v152 >= v116 + v101 + v140 + v145)
            {
              goto LABEL_114;
            }

            v153 = &v18[7 * v46 + 7];
            if (v152 >= *v153)
            {
              goto LABEL_114;
            }

            v154 = &v18[7 * (v46 - v105)];
            v155 = v154[3];
            v312 = *(v154 + 2);
            v313 = v154[6];
            if (v104 >= 4)
            {
              v156 = HIDWORD(v312);
              HIDWORD(v312) = v312;
              v157 = v104 - 3;
              goto LABEL_111;
            }

            if (v155)
            {
              v158 = v104;
            }

            else
            {
              v158 = v104 + 1;
            }

            v159 = v158 - 1;
            if (v159 == 3)
            {
              v160 = v312;
              v157 = v312 - 1;
            }

            else
            {
              if (!v159)
              {
                v156 = v313;
                goto LABEL_112;
              }

              v157 = *(&v312 + v159);
              v160 = v312;
            }

            if (v159 == 1)
            {
              v161 = &v313;
            }

            else
            {
              v161 = &v312 + 1;
            }

            v156 = *v161;
            HIDWORD(v312) = v160;
LABEL_111:
            LODWORD(v312) = v157;
LABEL_112:
            *(v153 + 2) = v312;
            v153[6] = v156;
            v153[2] = v105;
            v153[3] = 1;
            *v153 = v152;
            v153[1] = v104;
            if (v79 <= v46 + 1)
            {
              LODWORD(v79) = v46 + 1;
            }
          }
        }

LABEL_114:
        if (!v84)
        {
          v162 = v102[1];
          v163 = &v18[7 * (v46 - v102[2])];
          v164 = v163[3];
          v312 = *(v163 + 2);
          v313 = v163[6];
          if (v162 >= 4)
          {
            v165 = HIDWORD(v312);
            HIDWORD(v312) = v312;
            v166 = v162 - 3;
            goto LABEL_128;
          }

          if (!v164)
          {
            ++v162;
          }

          v167 = v162 - 1;
          if (v162 == 4)
          {
            v168 = v312;
            v166 = v312 - 1;
          }

          else
          {
            if (v162 == 1)
            {
              v165 = v313;
              goto LABEL_129;
            }

            v166 = *(&v312 + v167);
            v168 = v312;
          }

          if (v167 == 1)
          {
            v169 = &v313;
          }

          else
          {
            v169 = &v312 + 1;
          }

          v165 = *v169;
          HIDWORD(v312) = v168;
LABEL_128:
          LODWORD(v312) = v166;
LABEL_129:
          *(v102 + 2) = v312;
          v102[6] = v165;
        }

        if (v81 <= v302)
        {
          if (v46 == v79)
          {
            LODWORD(v79) = v46;
LABEL_176:
            v217 = &v18[7 * v79];
            v47 = v217[1];
            v292 = *v217;
            LODWORD(v45) = v217[2];
            v218 = v217[3];
            v219 = v217[6];
            v221 = *(v217 + 2);
            v220 = v217 + 4;
            v314 = v221;
            v315 = v219;
            if (!v45)
            {
              v175 = v79;
              goto LABEL_180;
            }

            v222 = v79 - v45;
            if (v218)
            {
              v223 = *v220;
              *(a3 + 2) = v220[2];
              *a3 = v223;
              v224 = v222 - v218;
              v225 = v224 + 2;
              v226 = &v18[7 * (v224 + 2)];
              v226[2] = 0;
              v226[3] = v218;
              v227 = &v18[7 * (v224 + 1)];
              *v227 = v292;
              v227[1] = v47;
              v227[2] = v45;
              v227[3] = v218;
              *(v227 + 2) = v314;
              v227[6] = v315;
              v46 = v222 - v218;
              v228 = v301 - 32;
              v24 = v295;
LABEL_201:
              v236 = &v18[7 * v225];
              *v236 = v292;
              v236[1] = v47;
              v236[2] = v45;
              v236[3] = v218;
              *(v236 + 2) = v314;
              v236[6] = v315;
              v237 = &v18[7 * v224];
              v238 = *v237;
              v239 = v237[2];
              v240 = v237[3];
              v236[3] = v240;
              v241 = v225;
              if (v239)
              {
                v241 = v225;
                do
                {
                  v242 = &v18[7 * v224];
                  v243 = &v18[7 * --v241];
                  *v243 = v238;
                  v243[2] = v239;
                  v243[3] = v240;
                  v244 = v242[6];
                  *(v243 + 2) = *(v242 + 2);
                  v243[6] = v244;
                  v224 = v46 - (v239 + v240);
                  v245 = &v18[7 * v224];
                  v238 = *v245;
                  v239 = v245[2];
                  v240 = v245[3];
                  v243[3] = v240;
                  v46 = v224;
                }

                while (v239);
                if (v241 > v225)
                {
                  v8 = v304;
                  v19 = v305;
                  v246 = v303;
LABEL_206:
                  v22 = v246;
                  if (*(v8 + 240) != 2)
                  {
                    v247 = *(v8 + 192) + 1;
                    v248 = __clz(v247);
                    *(v8 + 208) = (v247 << 8 >> ~v248) + ((31 - v248) << 8);
                  }

                  v25 = *(v8 + 204) + 1;
                  v26 = __clz(v25);
                  v27 = vadd_s32(*(v8 + 196), 0x100000001);
                  v28 = vsub_s32(0x1F0000001FLL, vclz_s32(v27));
                  *(v8 + 212) = vadd_s32(vshl_n_s32(v28, 8uLL), vshl_u32(vshl_n_s32(v27, 8uLL), vneg_s32(v28)));
                  *(v8 + 220) = (v25 << 8 >> ~v26) + ((31 - v26) << 8);
                  goto LABEL_22;
                }
              }

              v8 = v304;
              v19 = v305;
              while (2)
              {
                v249 = &v18[7 * v241];
                v251 = v249[2];
                v250 = v249[3];
                if (v251)
                {
                  v252 = v249[1];
                  if (*(v304 + 240) != 2)
                  {
                    if (v250)
                    {
                      v253 = *(v304 + 144);
                      v254 = v24;
                      v255 = v250;
                      do
                      {
                        v256 = *v254++;
                        *(v253 + 4 * v256) += 2;
                        --v255;
                      }

                      while (v255);
                    }

                    *(v304 + 192) += 2 * v250;
                  }

                  if (v250 < 0x40)
                  {
                    v257 = ZSTD_LLcode_LL_Code_36107[v250];
                  }

                  else
                  {
                    v257 = 50 - __clz(v250);
                  }

                  ++*(*(v304 + 152) + 4 * v257);
                  ++*(v304 + 196);
                  v258 = __clz(v252);
                  ++*(*(v304 + 168) + 4 * (31 - v258));
                  ++*(v304 + 204);
                  v259 = v251 - 3;
                  if ((v251 - 3) < 0x80)
                  {
                    v260 = ZSTD_MLcode_ML_Code_36109[v259];
                  }

                  else
                  {
                    v260 = 67 - __clz(v259);
                  }

                  ++*(*(v304 + 160) + 4 * v260);
                  ++*(v304 + 200);
                  v261 = &v24[v250];
                  v262 = *(v291 + 24);
                  if (&v24[v250] <= v228)
                  {
                    *v262 = *v24;
                    if (v250 >= 0x11)
                    {
                      v265 = *(v291 + 24);
                      *(v265 + 16) = *(v24 + 1);
                      if ((v250 - 16) >= 0x11)
                      {
                        v272 = v265 + v250;
                        v273 = (v265 + 32);
                        v274 = (v24 + 48);
                        do
                        {
                          *v273 = *(v274 - 1);
                          v275 = *v274;
                          v274 += 2;
                          v273[1] = v275;
                          v273 += 2;
                        }

                        while (v273 < v272);
                        goto LABEL_254;
                      }
                    }

                    *(v291 + 24) += v250;
                    v266 = *(v291 + 8);
                  }

                  else
                  {
                    if (v24 > v228)
                    {
                      v263 = v24;
                      v264 = *(v291 + 24);
                      if (v24 >= v261)
                      {
                        goto LABEL_254;
                      }

LABEL_235:
                      v270 = v261 - v263;
                      if ((v261 - v263) < 8)
                      {
                        v276 = v264;
                      }

                      else if ((v264 - v263) < 0x20)
                      {
                        v276 = v264;
                      }

                      else
                      {
                        if (v270 < 0x20)
                        {
                          v271 = 0;
                          goto LABEL_248;
                        }

                        v271 = v270 & 0xFFFFFFFFFFFFFFE0;
                        v277 = (v263 + 16);
                        v278 = v264 + 16;
                        v279 = v270 & 0xFFFFFFFFFFFFFFE0;
                        do
                        {
                          v280 = *v277;
                          *(v278 - 1) = *(v277 - 1);
                          *v278 = v280;
                          v277 += 2;
                          v278 += 2;
                          v279 -= 32;
                        }

                        while (v279);
                        if (v270 == v271)
                        {
                          goto LABEL_254;
                        }

                        if ((v270 & 0x18) != 0)
                        {
LABEL_248:
                          v281 = v270 & 0xFFFFFFFFFFFFFFF8;
                          v276 = &v264[v270 & 0xFFFFFFFFFFFFFFF8];
                          v282 = v271 - (v270 & 0xFFFFFFFFFFFFFFF8);
                          v283 = &v263[v271];
                          v284 = &v264[v271];
                          do
                          {
                            v285 = *v283;
                            v283 += 8;
                            *v284 = v285;
                            v284 += 8;
                            v282 += 8;
                          }

                          while (v282);
                          if (v270 == v281)
                          {
                            goto LABEL_254;
                          }

                          v263 += v281;
                        }

                        else
                        {
                          v263 += v271;
                          v276 = &v264[v271];
                        }
                      }

                      do
                      {
                        v286 = *v263++;
                        *v276++ = v286;
                      }

                      while (v263 != v261);
                      goto LABEL_254;
                    }

                    v264 = v262 + v228 - v24;
                    *v262 = *v24;
                    if (v228 - v24 >= 17)
                    {
                      v267 = (v262 + 1);
                      v268 = (v24 + 32);
                      do
                      {
                        *v267 = *(v268 - 1);
                        v269 = *v268;
                        v268 += 2;
                        *(v267 + 1) = v269;
                        v267 += 32;
                      }

                      while (v267 < v264);
                    }

                    v263 = v228;
                    if (v228 < v261)
                    {
                      goto LABEL_235;
                    }

LABEL_254:
                    *(v291 + 24) += v250;
                    v266 = *(v291 + 8);
                    if (v250 >= 0x10000)
                    {
                      v287 = (v266 - *v291) >> 3;
                      *(v291 + 72) = 1;
                      *(v291 + 76) = v287;
                    }
                  }

                  *(v266 + 4) = v250;
                  *v266 = v252;
                  if ((v251 - 3) >= 0x10000)
                  {
                    v288 = (v266 - *v291) >> 3;
                    *(v291 + 72) = 2;
                    *(v291 + 76) = v288;
                  }

                  *(v266 + 6) = v251 - 3;
                  *(v291 + 8) = v266 + 8;
                  v24 += (v251 + v250);
                  v246 = v24;
                }

                else
                {
                  v246 = &v24[v250];
                }

                if (++v241 > v225)
                {
                  goto LABEL_206;
                }

                continue;
              }
            }

            v46 = v79 - v45;
LABEL_184:
            v34 = v18[7 * v222 + 3];
LABEL_185:
            v229 = &v18[7 * v46];
            v312 = *(v229 + 2);
            v313 = v229[6];
            if (v47 >= 4)
            {
              v230 = HIDWORD(v312);
              HIDWORD(v312) = v312;
              v231 = v47 - 3;
              v228 = v301 - 32;
              v24 = v295;
              goto LABEL_199;
            }

            if (v34)
            {
              v232 = v47;
            }

            else
            {
              v232 = v47 + 1;
            }

            v233 = v232 - 1;
            if (v232 == 4)
            {
              v234 = v312;
              v231 = v312 - 1;
              v228 = v301 - 32;
              v24 = v295;
            }

            else
            {
              v228 = v301 - 32;
              v24 = v295;
              if (v232 == 1)
              {
                v230 = v313;
                goto LABEL_200;
              }

              v231 = *(&v312 + v233);
              v234 = v312;
            }

            if (v233 == 1)
            {
              v235 = &v313;
            }

            else
            {
              v235 = &v312 + 1;
            }

            v230 = *v235;
            HIDWORD(v312) = v234;
LABEL_199:
            LODWORD(v312) = v231;
LABEL_200:
            v218 = 0;
            v224 = v46;
            *a3 = v312;
            *(a3 + 2) = v230;
            v225 = v46 + 2;
            goto LABEL_201;
          }

          v298 = v101;
          if (*(v304 + 224) == 1)
          {
            v170 = 256;
          }

          else
          {
            v171 = **(v304 + 152) + 1;
            v172 = __clz(v171);
            v170 = *(v304 + 212) + (v172 << 8) - (v171 << 8 >> ~v172) - 7936;
          }

          v296 = v170;
          LODWORD(v312) = (v299)(v305);
          ZSTD_optLdm_processMatchCandidate(&v307, v305, &v312, v81 - v300, v301 - v81);
          v173 = v312;
          if (v312)
          {
            break;
          }
        }

LABEL_53:
        ++v46;
        v80 = v303;
        if (v46 > v79)
        {
          goto LABEL_176;
        }
      }

      v174 = (v312 - 1);
      v45 = *(v305 + 8 * v174 + 4);
      v175 = v45 + v46;
      if (v45 <= v293 && v175 <= 0xFFF && &v81[v45] < v301)
      {
        v176 = 0;
        v177 = v296 + v298;
        while (1)
        {
          v178 = (v305 + 8 * v176);
          v179 = v306;
          if (v176)
          {
            v179 = *(v178 - 1) + 1;
          }

          v180 = v178[1];
          if (v180 >= v179)
          {
            break;
          }

LABEL_140:
          if (++v176 == v173)
          {
            v18[7 * (v79 + 1)] = 0x40000000;
            goto LABEL_53;
          }
        }

        v181 = *v178;
        v182 = __clz(v181);
        v183 = 31 - v182;
        if (*(v304 + 224) == 1)
        {
          v184 = 0;
          v185 = v46 + v180;
          v186 = v46 + v180;
          while (1)
          {
            v188 = v180 + v46;
            v189 = __clz(v180 - 2);
            v190 = ((v180 - 2) << 8 >> ~v189) + ((31 - v189 + v183) << 8) + v177 + 4096;
            if (v188 <= v79)
            {
              if (v190 >= v18[7 * v188])
              {
                goto LABEL_147;
              }
            }

            else
            {
              v79 = v79;
              v191 = v185 - v184 - v79;
              if (v191 <= 1)
              {
                goto LABEL_153;
              }

              v192 = v191 & 0xFFFFFFFFFFFFFFFELL;
              v193 = (v186 - v79) & 0xFFFFFFFFFFFFFFFELL;
              v194 = &v23[7 * v79];
              do
              {
                *(v194 - 3) = 0x40000000;
                v194[4] = 0x40000000;
                *v194 = 1;
                v194[7] = 1;
                v194 += 14;
                v193 -= 2;
              }

              while (v193);
              v79 = v192 + v79;
              if (v191 != v192)
              {
LABEL_153:
                v195 = &v23[7 * v79];
                do
                {
                  ++v79;
                  *(v195 - 3) = 0x40000000;
                  *v195 = 1;
                  v195 += 7;
                }

                while (v79 < v188);
              }
            }

            v187 = &v18[7 * v188];
            v187[2] = v180;
            v187[3] = 0;
            *v187 = v190;
            v187[1] = v181;
LABEL_147:
            --v180;
            ++v184;
            --v186;
            if (v180 < v179)
            {
              goto LABEL_140;
            }
          }
        }

        v196 = 0;
        v197 = *(v304 + 160);
        v198 = *(v304 + 168);
        v199 = *(v304 + 220) + *(v304 + 216) + 51;
        v200 = v46 + v180;
        v201 = v46 + v180;
        while (2)
        {
          v203 = v180 - 3;
          if (v180 - 3 < 0x80)
          {
            v204 = ZSTD_MLcode_ML_Code_36109[v203];
          }

          else
          {
            v204 = 67 - __clz(v203);
          }

          v205 = v180 + v46;
          v206 = *(v198 + 4 * v183) + 1;
          v207 = __clz(v206);
          v208 = ML_bits_36218[v204];
          v209 = *(v197 + 4 * v204) + 1;
          v210 = __clz(v209);
          v211 = v177 + v199 - (v206 << 8 >> ~v207) - (v209 << 8 >> ~v210) + ((v207 - v182 + v208 + v210 + 16777185) << 8);
          if (v205 <= v79)
          {
            if (v211 < v18[7 * v205])
            {
              goto LABEL_159;
            }
          }

          else
          {
            v79 = v79;
            v212 = v200 - v196 - v79;
            if (v212 < 2)
            {
              goto LABEL_169;
            }

            v213 = v212 & 0xFFFFFFFFFFFFFFFELL;
            v214 = (v201 - v79) & 0xFFFFFFFFFFFFFFFELL;
            v215 = &v23[7 * v79];
            do
            {
              *(v215 - 3) = 0x40000000;
              v215[4] = 0x40000000;
              *v215 = 1;
              v215[7] = 1;
              v215 += 14;
              v214 -= 2;
            }

            while (v214);
            v79 = v213 + v79;
            if (v212 != v213)
            {
LABEL_169:
              v216 = &v23[7 * v79];
              do
              {
                ++v79;
                *(v216 - 3) = 0x40000000;
                *v216 = 1;
                v216 += 7;
              }

              while (v79 < v205);
            }

LABEL_159:
            v202 = &v18[7 * v205];
            v202[2] = v180;
            v202[3] = 0;
            *v202 = v211;
            v202[1] = v181;
          }

          --v180;
          ++v196;
          --v201;
          if (v180 < v179)
          {
            goto LABEL_140;
          }

          continue;
        }
      }

      if (v45)
      {
        v47 = *(v305 + 8 * v174);
        v222 = v46;
        goto LABEL_184;
      }

LABEL_180:
      v8 = v304;
      v19 = v305;
      v24 = v295;
      v22 = &v303[v175];
LABEL_22:
      if (v22 >= v302)
      {
        v300 = v24;
        return v301 - v300;
      }
    }
  }

  return v301 - v300;
}

int64_t ZSTD_compressBlock_btultra2(_DWORD *a1, void *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1[49] && a2[1] == *a2)
  {
    v5 = a1[6];
    if (v5 == a1[7] && a5 >= 9 && v5 == a4 - a1[2])
    {
      v15 = *a3;
      v16 = *(a3 + 8);
      v8 = a3;
      v9 = a1;
      v10 = a2;
      v11 = a4;
      v12 = a5;
      ZSTD_compressBlock_opt2(a1, a2, &v15, a4, a5, 0);
      a1 = v9;
      a2 = v10;
      a3 = v8;
      a4 = v11;
      a5 = v12;
      v10[3] = v10[2];
      v10[1] = *v10;
      *(v10 + 18) = 0;
      *(v9 + 1) -= v12;
      v13 = v9[6] + v12;
      v9[6] = v13;
      v9[7] = v13;
      v9[11] = v13;
    }
  }

  return ZSTD_compressBlock_opt2(a1, a2, a3, a4, a5, 0);
}

void *FSE_initDState(void *result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *a3;
  v4 = *(a2 + 8) + v3;
  v5 = (*a2 >> -(*(a2 + 8) + v3)) & BIT_mask_36272[v3];
  *(a2 + 8) = v4;
  *result = v5;
  if (v4 >= 0x41)
  {
    *(a2 + 16) = &BIT_reloadDStream_zeroFilled_36125;
    goto LABEL_10;
  }

  v6 = *(a2 + 16);
  if (v6 >= *(a2 + 32))
  {
    v10 = (v6 - (v4 >> 3));
    *(a2 + 16) = v10;
    v11 = v4 & 7;
LABEL_9:
    *(a2 + 8) = v11;
    *a2 = *v10;
    goto LABEL_10;
  }

  v7 = *(a2 + 24);
  if (v6 != v7)
  {
    v8 = v4 >> 3;
    if (v6 - v8 >= v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = (v6 - v7);
    }

    v10 = (v6 - v9);
    *(a2 + 16) = v10;
    v11 = v4 - 8 * v9;
    goto LABEL_9;
  }

LABEL_10:
  result[1] = a3 + 2;
  return result;
}

unint64_t ZSTD_compressSubBlock(unsigned __int16 *a1, uint64_t a2, uint64_t a3, unint64_t a4, char *__src, size_t __n, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, int a13, int a14, int a15, _DWORD *a16, _DWORD *a17, int a18)
{
  v18 = a1;
  v19 = a11;
  v20 = a11 + 3;
  v21 = 200;
  if (!a14)
  {
    v21 = 0;
  }

  v22 = 3;
  if (1024 - v21 > __n)
  {
    v23 = 3;
  }

  else
  {
    v23 = 4;
  }

  if (0x4000 - v21 > __n)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  if (a14)
  {
    v22 = *a2;
  }

  v25 = a12 - 3;
  v26 = &a11[a12];
  *a16 = 0;
  if (__n)
  {
    v27 = *a2;
    if (*a2 != 1)
    {
      if (!v27)
      {
        if (__n <= 0x1F)
        {
          LODWORD(v28) = 1;
        }

        else
        {
          LODWORD(v28) = 2;
        }

        if (__n <= 0xFFF)
        {
          v28 = v28;
        }

        else
        {
          v28 = (v28 + 1);
        }

        v29 = v28 + __n;
        if (v28 + __n > v25)
        {
          return -70;
        }

        if (v28 == 3)
        {
          v30 = a2;
          v31 = &a11[a12];
          v32 = a4;
          v33 = a3;
          v34 = a8;
          v35 = a7;
          *v20 = (16 * __n) | 0xC;
        }

        else if (v28 == 2)
        {
          v30 = a2;
          v31 = &a11[a12];
          v32 = a4;
          v33 = a3;
          v34 = a8;
          v35 = a7;
          *v20 = (16 * __n) | 4;
        }

        else
        {
          v33 = a3;
          v34 = a8;
          v35 = a7;
          v30 = a2;
          v31 = &a11[a12];
          v32 = a4;
          *v20 = 8 * __n;
        }

        memcpy(&v20[v28], __src, __n);
        result = v29;
        a4 = v32;
        v26 = v31;
        goto LABEL_87;
      }

      v76 = a8;
      v72 = a4;
      v73 = a3;
      v78 = a7;
      v38 = 0;
      v39 = &v20[v24];
      if (a14 && v27 == 2)
      {
        v40 = a2;
        v41 = __src;
        v42 = __n;
        memcpy(v39, (a2 + 4), *(a2 + 136));
        v26 = &a11[a12];
        __n = v42;
        __src = v41;
        v30 = v40;
        v38 = *(v40 + 136);
        v20 = a11 + 3;
        v39 += v38;
      }

      else
      {
        v30 = a2;
      }

      v71 = v26;
      v43 = v26 - v39;
      v74 = __src;
      v44 = __n;
      if (v24 == 3)
      {
        v45 = HUF_compress1X_usingCTable_internal(v39, v43, __src, __n, a1);
      }

      else
      {
        v45 = HUF_compress4X_usingCTable_internal(v39, v43, __src, __n, a1);
      }

      if ((v45 - 1) > 0xFFFFFFFFFFFFFF87)
      {
        return 0;
      }

      v46 = v45 + v38;
      v47 = v44;
      if (a14 || v46 < v44)
      {
        v53 = 3;
        if (v46 > 0x3FF)
        {
          v53 = 4;
        }

        if ((v46 & 0xFFFFFFFFFFFFC000) != 0)
        {
          ++v53;
        }

        v19 = a11;
        v51 = v74;
        a4 = v72;
        v33 = v73;
        if (v24 >= v53)
        {
          v54 = &v39[v45];
          v55 = 16 * v47;
          if (v24 == 5)
          {
            *(a11 + 3) = v22 + v55 + (v46 << 22) + 12;
            a11[7] = v46 >> 10;
            v18 = a1;
            v26 = v71;
            a2 = v30;
          }

          else
          {
            v18 = a1;
            v26 = v71;
            a2 = v30;
            v56 = v22 + v55;
            if (v24 == 4)
            {
              *v20 = v56 + (v46 << 18) + 8;
            }

            else
            {
              v57 = v56 + (v46 << 14);
              *(a11 + 3) = v57;
              a11[5] = BYTE2(v57);
            }
          }

          v34 = v76;
          v35 = v78;
          *a16 = 1;
          result = v54 - v20;
LABEL_88:
          if (result > 0xFFFFFFFFFFFFFF88)
          {
            return result;
          }

          a7 = v35;
          a8 = v34;
          a3 = v33;
          if (!result)
          {
            return result;
          }

          goto LABEL_90;
        }

        if (v47 <= 0x1F)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 2;
        }

        if (v47 <= 0xFFF)
        {
          v48 = v48;
        }

        else
        {
          v48 = (v48 + 1);
        }

        v49 = v48 + v47;
        if (v48 + v47 > v25)
        {
          return -70;
        }

        if (v48 != 3)
        {
          v18 = a1;
          if (v48 != 2)
          {
            v34 = v76;
            v35 = v78;
            v52 = v72;
LABEL_85:
            *v20 = 8 * v47;
            goto LABEL_86;
          }

          v52 = v72;
          v34 = v76;
          v35 = v78;
          goto LABEL_72;
        }

        v52 = v72;
        v34 = v76;
        v35 = v78;
      }

      else
      {
        if (v44 <= 0x1F)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 2;
        }

        if (v44 <= 0xFFF)
        {
          v48 = v48;
        }

        else
        {
          v48 = (v48 + 1);
        }

        v49 = v48 + v44;
        v50 = v48 + v44 > v25;
        v19 = a11;
        v51 = v74;
        v34 = v76;
        v35 = v78;
        v52 = v72;
        v33 = v73;
        if (v50)
        {
          return -70;
        }

        if (v48 != 3)
        {
          v18 = a1;
          if (v48 != 2)
          {
            goto LABEL_85;
          }

LABEL_72:
          *v20 = (16 * v47) | 4;
LABEL_86:
          memcpy(&v20[v48], v51, v47);
          result = v49;
          a4 = v52;
          v26 = v71;
LABEL_87:
          a2 = v30;
          goto LABEL_88;
        }
      }

      *v20 = (16 * v47) | 0xC;
      v18 = a1;
      goto LABEL_86;
    }

    if (__n <= 0x1F)
    {
      v37 = 1;
    }

    else
    {
      v37 = 2;
    }

    if (__n > 0xFFF)
    {
      ++v37;
    }

    if (v37 == 3)
    {
      *v20 = (16 * __n) | 0xD;
    }

    else if (v37 == 2)
    {
      *v20 = (16 * __n) | 5;
    }

    else
    {
      *v20 = (8 * __n) | 1;
    }

    v20[v37] = *__src;
    result = (v37 + 1);
  }

  else
  {
    if (a12 == 3)
    {
      return -70;
    }

    *v20 = 0;
    result = 1;
  }

LABEL_90:
  v58 = a17;
  v59 = &v20[result];
  v60 = *(a10 + 4) > 0x39u;
  *a17 = 0;
  if (v26 - &v20[result] < 4)
  {
    return -70;
  }

  if (a4 >= 0x80)
  {
    if (a4 >> 8 > 0x7E)
    {
      *v59 = -1;
      *(v59 + 1) = a4 - 32512;
      v61 = v59 + 3;
    }

    else
    {
      *v59 = BYTE1(a4) | 0x80;
      v59[1] = a4;
      v61 = v59 + 2;
    }
  }

  else
  {
    *v59 = a4;
    v61 = v59 + 1;
    if (!a4)
    {
      result = 1;
LABEL_95:
      result = &v59[result] - v19;
      v62 = a18 + 8 * result - 20;
      *v19 = v62;
      v19[2] = BYTE2(v62);
      return result;
    }
  }

  v63 = a3;
  v79 = a7;
  v64 = v61 + 1;
  if (a15)
  {
    *v61 = (*(a2 + 144) << 6) + 16 * *(a2 + 148) + 4 * *(a2 + 152);
    v65 = a2;
    v66 = v26;
    v67 = a4;
    v77 = a8;
    memcpy(v61 + 1, (a2 + 156), *(a2 + 296));
    v68 = &v64[*(v65 + 296)];
    result = ZSTD_encodeSequences(v68, v66 - v68, v18 + 1418, v77, v18 + 1032, a9, v18 + 2144, v79, v63, v67, v60);
    if (result >= 0xFFFFFFFFFFFFFF89)
    {
      return result;
    }

    v69 = v68 + result;
    v70 = *(v65 + 304);
    if (v70)
    {
      v58 = a17;
      if (v70 + result < 4)
      {
        return 0;
      }
    }

    else
    {
      v58 = a17;
    }
  }

  else
  {
    *v61 = -4;
    result = ZSTD_encodeSequences((v61 + 1), v26 - v64, v18 + 1418, a8, v18 + 1032, a9, v18 + 2144, a7, a3, a4, v60);
    if (result >= 0xFFFFFFFFFFFFFF89)
    {
      return result;
    }

    v69 = &v64[result];
  }

  if (v69 - v61 < 4)
  {
    return 0;
  }

  *v58 = 1;
  result = v69 - v59;
  if ((v69 - v59) <= 0xFFFFFFFFFFFFFF88 && result)
  {
    goto LABEL_95;
  }

  return result;
}

int64_t ZSTD_compressBlock_greedy(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = &a4[a5];
  v8 = &a4[a5 - 8];
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 272);
  if (v11 >= 6)
  {
    v11 = 6;
  }

  if (v11 <= 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = v11;
  }

  v13 = *a3;
  v14 = a3[1];
  v89 = v9 + v10;
  if (a4 == v9 + v10)
  {
    v15 = a4 + 1;
  }

  else
  {
    v15 = a4;
  }

  v16 = v15 - v9;
  v17 = 1 << *(a1 + 256);
  if (v16 - v10 > v17 && *(a1 + 40) == 0)
  {
    LODWORD(v10) = v16 - v17;
  }

  v19 = v16 - v10;
  if (v14 <= v16 - v10)
  {
    v20 = v14;
  }

  else
  {
    v20 = 0;
  }

  if (v13 <= v19)
  {
    v21 = v13;
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 300) = 0;
  if (v15 < v8)
  {
    v22 = a1;
    v85 = v16 - v10;
    v86 = v14;
    v87 = v13;
    v88 = a3;
    v23 = v7 - 7;
    v24 = (v7 - 3);
    v25 = (v7 - 1);
    v26 = v7 - 16;
    v90 = v12;
    while (!v21 || *&v15[-v21 + 1] != *(v15 + 1))
    {
      v92 = 999999999;
      if (v12 == 6)
      {
        BestMatch_noDict_6 = ZSTD_HcFindBestMatch_noDict_6(v22, v15, v7, &v92);
      }

      else if (v12 == 5)
      {
        BestMatch_noDict_6 = ZSTD_HcFindBestMatch_noDict_5(v22, v15, v7, &v92);
      }

      else
      {
        BestMatch_noDict_6 = ZSTD_HcFindBestMatch_noDict_4(v22, v15, v7, &v92);
      }

      v24 = (v7 - 3);
      if (BestMatch_noDict_6 <= 3)
      {
        v36 = v15 - v5;
        v15 += ((v15 - v5) >> 8) + 1;
        v22 = a1;
        *(a1 + 300) = v36 > 0x7FF;
        v12 = v90;
        goto LABEL_24;
      }

      v22 = a1;
      v37 = v92;
      v12 = v90;
      if (v92 >= 4)
      {
        if (v15 > v5 && &v15[-v92 + 3] > v89)
        {
          v38 = 2 - v92;
          v39 = v15;
          while (1)
          {
            v40 = *--v39;
            if (v40 != v15[v38])
            {
              break;
            }

            ++BestMatch_noDict_6;
            if (v39 > v5)
            {
              v41 = &v15[v38];
              v15 = v39;
              if (v41 > v89)
              {
                continue;
              }
            }

            goto LABEL_82;
          }
        }

        v39 = v15;
LABEL_82:
        v20 = v21;
        v21 = (v92 - 3);
        v15 = v39;
      }

LABEL_64:
      v42 = v15 - v5;
      v43 = *(a2 + 24);
      if (v15 > v26)
      {
        if (v5 <= v26)
        {
          v44 = (v43 + v26 - v5);
          *v43 = *v5;
          if (v26 - v5 >= 17)
          {
            v45 = v43 + 1;
            v46 = (v5 + 32);
            do
            {
              *v45 = *(v46 - 1);
              v47 = *v46;
              v46 += 2;
              v45[1] = v47;
              v45 += 2;
            }

            while (v45 < v44);
          }

          v5 = (v7 - 16);
          v43 = v44;
        }

        if (v5 >= v15)
        {
          goto LABEL_95;
        }

        v48 = v15 - v5;
        if ((v15 - v5) < 8)
        {
          v56 = v43;
        }

        else if ((v43 - v5) < 0x20)
        {
          v56 = v43;
        }

        else
        {
          if (v48 < 0x20)
          {
            v49 = 0;
LABEL_89:
            v61 = v48 & 0xFFFFFFFFFFFFFFF8;
            v56 = v43 + (v48 & 0xFFFFFFFFFFFFFFF8);
            v62 = v49 - (v48 & 0xFFFFFFFFFFFFFFF8);
            v63 = &v5[v49];
            v64 = (v43 + v49);
            do
            {
              v65 = *v63;
              v63 += 8;
              *v64++ = v65;
              v62 += 8;
            }

            while (v62);
            if (v48 != v61)
            {
              v5 += v61;
              goto LABEL_94;
            }

LABEL_95:
            *(a2 + 24) += v42;
            v55 = *(a2 + 8);
            if (v42 >= 0x10000)
            {
              v67 = (v55 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v67;
            }

            goto LABEL_97;
          }

          v49 = v48 & 0xFFFFFFFFFFFFFFE0;
          v57 = (v5 + 16);
          v58 = v43 + 1;
          v59 = v48 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v60 = *v57;
            *(v58 - 1) = *(v57 - 1);
            *v58 = v60;
            v57 += 2;
            v58 += 2;
            v59 -= 32;
          }

          while (v59);
          if (v48 == v49)
          {
            goto LABEL_95;
          }

          if ((v48 & 0x18) != 0)
          {
            goto LABEL_89;
          }

          v5 += v49;
          v56 = v43 + v49;
        }

        do
        {
LABEL_94:
          v66 = *v5++;
          *v56++ = v66;
        }

        while (v5 != v15);
        goto LABEL_95;
      }

      *v43 = *v5;
      v50 = *(a2 + 24);
      if (v42 > 0x10)
      {
        *(v50 + 16) = *(v5 + 1);
        if (v42 >= 33)
        {
          v51 = v50 + v42;
          v52 = (v50 + 32);
          v53 = (v5 + 48);
          do
          {
            *v52 = *(v53 - 1);
            v54 = *v53;
            v53 += 2;
            v52[1] = v54;
            v52 += 2;
          }

          while (v52 < v51);
        }

        goto LABEL_95;
      }

      *(a2 + 24) = v50 + v42;
      v55 = *(a2 + 8);
LABEL_97:
      *(v55 + 4) = v42;
      *v55 = v37;
      if (BestMatch_noDict_6 - 3 >= 0x10000)
      {
        v68 = (v55 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v68;
      }

      *(v55 + 6) = BestMatch_noDict_6 - 3;
      v69 = v55 + 8;
      *(a2 + 8) = v55 + 8;
      if (*(v22 + 300))
      {
        *(v22 + 300) = 0;
      }

      v5 = &v15[BestMatch_noDict_6];
      if (!v20 || v5 > v8)
      {
LABEL_23:
        v15 = v5;
        goto LABEL_24;
      }

      v70 = v21;
      v71 = v20;
      while (1)
      {
        v21 = v71;
        v71 = v70;
        if (*v5 != *&v5[-v21])
        {
          v20 = v21;
          v21 = v70;
          goto LABEL_23;
        }

        v72 = v5 + 4;
        v73 = &v5[-v21 + 4];
        if (v23 <= (v5 + 4))
        {
          v76 = (v5 + 4);
          goto LABEL_112;
        }

        v74 = *v73;
        if (v74 == *v72)
        {
          v75 = v5 + 12;
          v73 = &v5[-v21 + 12];
          while (1)
          {
            v76 = v75;
            if (v75 >= v23)
            {
              break;
            }

            v78 = *v73;
            v73 += 8;
            v77 = v78;
            v75 += 8;
            if (v78 != *v76)
            {
              v76 = (v76 + (__clz(__rbit64(*v76 ^ v77)) >> 3));
              goto LABEL_119;
            }
          }

LABEL_112:
          if (v76 >= v24)
          {
            if (v76 >= v25)
            {
              goto LABEL_116;
            }
          }

          else
          {
            if (*v73 == *v76)
            {
              v73 += 4;
              v76 += 2;
            }

            if (v76 >= v25)
            {
LABEL_116:
              if (v76 < v7)
              {
                goto LABEL_117;
              }

              goto LABEL_119;
            }
          }

          if (*v73 == *v76)
          {
            v73 += 2;
            ++v76;
          }

          if (v76 < v7)
          {
LABEL_117:
            if (*v73 == *v76)
            {
              v76 = (v76 + 1);
            }
          }

LABEL_119:
          v79 = v76 - v72;
          if (v5 > v26)
          {
            goto LABEL_121;
          }

LABEL_120:
          **(a2 + 24) = *v5;
          v69 = *(a2 + 8);
          goto LABEL_121;
        }

        v79 = __clz(__rbit64(*v72 ^ v74)) >> 3;
        if (v5 <= v26)
        {
          goto LABEL_120;
        }

LABEL_121:
        *(v69 + 4) = 0;
        *v69 = 1;
        if (v79 + 1 >= 0x10000)
        {
          v80 = (v69 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v80;
        }

        *(v69 + 6) = v79 + 1;
        v69 += 8;
        *(a2 + 8) = v69;
        v5 += v79 + 4;
        if (!v71)
        {
          break;
        }

        v70 = v21;
        v20 = v71;
        v15 = v5;
        if (v5 > v8)
        {
          goto LABEL_24;
        }
      }

      v20 = v71;
      v15 = v5;
LABEL_24:
      if (v15 >= v8)
      {
        a3 = v88;
        v14 = v86;
        v13 = v87;
        v19 = v85;
        goto LABEL_135;
      }
    }

    v27 = v15 + 5;
    v28 = &v15[-v21 + 5];
    if (v23 <= (v15 + 5))
    {
      v31 = (v15 + 5);
    }

    else
    {
      v29 = *v28;
      if (v29 != *v27)
      {
        v35 = __clz(__rbit64(*v27 ^ v29)) >> 3;
        goto LABEL_63;
      }

      v30 = v15 + 13;
      v28 = &v15[-v21 + 13];
      while (1)
      {
        v31 = v30;
        if (v30 >= v23)
        {
          break;
        }

        v33 = *v28;
        v28 += 8;
        v32 = v33;
        v30 += 8;
        if (v33 != *v31)
        {
          v31 = (v31 + (__clz(__rbit64(*v31 ^ v32)) >> 3));
          goto LABEL_44;
        }
      }
    }

    if (v31 >= v24)
    {
      if (v31 >= v25)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (*v28 == *v31)
      {
        v28 += 4;
        v31 += 2;
      }

      if (v31 >= v25)
      {
LABEL_41:
        if (v31 >= v7)
        {
LABEL_44:
          v35 = v31 - v27;
LABEL_63:
          BestMatch_noDict_6 = v35 + 4;
          ++v15;
          v37 = 1;
          goto LABEL_64;
        }

LABEL_42:
        if (*v28 == *v31)
        {
          v31 = (v31 + 1);
        }

        goto LABEL_44;
      }
    }

    if (*v28 == *v31)
    {
      v28 += 2;
      ++v31;
    }

    if (v31 >= v7)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_135:
  if (v13 <= v19)
  {
    v81 = 0;
  }

  else
  {
    v81 = v13;
  }

  if (v14 <= v19)
  {
    v82 = 0;
  }

  else
  {
    v82 = v14;
  }

  if (v21)
  {
    v81 = v21;
    v83 = v13 > v19;
  }

  else
  {
    v83 = 0;
  }

  if (v83)
  {
    v82 = v13;
  }

  if (v20)
  {
    v82 = v20;
  }

  *a3 = v81;
  a3[1] = v82;
  return v7 - v5;
}

unint64_t ZSTD_HcFindBestMatch_noDict_4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 260);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  v10 = *(a1 + 44);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v12 = a2 - v7 - v9;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = v8 - v6;
  if (v8 < v6)
  {
    v13 = 0;
  }

  v14 = *(a1 + 268);
  v15 = *(a1 + 112);
  v16 = ~(-1 << v5);
  v17 = 32 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v10 < v8)
    {
      v18 = (-1640531535 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v18);
      *(v15 + 4 * v18) = v10;
    }
  }

  else if (v10 < v8)
  {
    do
    {
      v19 = (-1640531535 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v19);
      *(v15 + 4 * v19) = v10++;
    }

    while (v8 != v10);
  }

  *(a1 + 44) = v8;
  v20 = a2 - 3;
  v21 = *(v15 + 4 * ((-1640531535 * *a2) >> v17));
  if (v21 < v12)
  {
    return 3;
  }

  v23 = 1 << v14;
  v24 = v6 - 1;
  v25 = a3 - 3;
  v26 = a3 - 1;
  v27 = v8 + 3;
  if (a3 - 7 > a2)
  {
    v28 = 3;
    while (1)
    {
      v29 = (v7 + v21);
      if (*(v29 + v28 - 3) != *&v20[v28])
      {
        goto LABEL_35;
      }

      v30 = *v29;
      if (v30 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v30)) >> 3;
      if (result <= v28)
      {
        goto LABEL_35;
      }

LABEL_34:
      *a4 = v27 - v21;
      v28 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_35:
      if (v21 <= v13)
      {
        return v28;
      }

      if (!--v23)
      {
        return v28;
      }

      v21 = *(v4 + 4 * (v21 & v24));
      result = v28;
      if (v21 < v12)
      {
        return result;
      }
    }

    v31 = (v7 + 8 + v21);
    v32 = a2 + 8;
    while (1)
    {
      v33 = v32;
      if (v32 >= a3 - 7)
      {
        break;
      }

      v35 = *v31;
      v31 += 4;
      v34 = v35;
      v32 += 8;
      if (v35 != *v33)
      {
        v33 += __clz(__rbit64(*v33 ^ v34)) >> 3;
        goto LABEL_33;
      }
    }

    if (v32 >= v25)
    {
      if (v32 >= v26)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (*v31 == *v32)
      {
        v31 += 2;
        v33 = v32 + 4;
      }

      if (v33 >= v26)
      {
LABEL_30:
        if (v33 >= a3)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    if (*v31 == *v33)
    {
      ++v31;
      v33 += 2;
    }

    if (v33 >= a3)
    {
LABEL_33:
      result = v33 - a2;
      if (result <= v28)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_31:
    if (*v31 == *v33)
    {
      ++v33;
    }

    goto LABEL_33;
  }

  if (v25 <= a2)
  {
    v42 = *a2;
    v43 = v23 - 1;
    result = 3;
    while (1)
    {
      v44 = (v7 + v21);
      if (*(v44 + result - 3) != *&v20[result])
      {
        goto LABEL_72;
      }

      if (v26 <= a2)
      {
        v46 = a2;
        if (a2 >= a3)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v45 = 2 * (*v44 == v42);
        v44 = (v44 + v45);
        v46 = &a2[v45];
        if (v46 >= a3)
        {
          goto LABEL_70;
        }
      }

      if (*v44 == *v46)
      {
        ++v46;
      }

LABEL_70:
      if (v46 - a2 > result)
      {
        *a4 = v27 - v21;
        result = v46 - a2;
        if (v46 == a3)
        {
          return result;
        }
      }

LABEL_72:
      if (v21 > v13)
      {
        v41 = v43-- != 0;
        if (v41)
        {
          v21 = *(v4 + 4 * (v21 & v24));
          if (v21 >= v12)
          {
            continue;
          }
        }
      }

      return result;
    }
  }

  v36 = v23 - 1;
  result = 3;
  do
  {
    v37 = (v7 + v21);
    if (*(v37 + result - 3) == *&v20[result])
    {
      v38 = 4 * (*v37 == *a2);
      v39 = &v37[v38 / 4];
      v40 = &a2[v38];
      if (&a2[v38] < v26 && *v39 == *v40)
      {
        ++v39;
        v40 += 2;
      }

      if (v40 < a3 && *v39 == *v40)
      {
        ++v40;
      }

      if (v40 - a2 > result)
      {
        *a4 = v27 - v21;
        result = v40 - a2;
        if (v40 == a3)
        {
          break;
        }
      }
    }

    if (v21 <= v13)
    {
      break;
    }

    v41 = v36-- != 0;
    if (!v41)
    {
      break;
    }

    v21 = *(v4 + 4 * (v21 & v24));
  }

  while (v21 >= v12);
  return result;
}

unint64_t ZSTD_HcFindBestMatch_noDict_5(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 260);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  v10 = *(a1 + 44);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v12 = a2 - v7 - v9;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = v8 - v6;
  if (v8 < v6)
  {
    v13 = 0;
  }

  v14 = *(a1 + 268);
  v15 = *(a1 + 112);
  v16 = ~(-1 << v5);
  v17 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v10 < v8)
    {
      v18 = (0xCF1BBCDCBB000000 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v18);
      *(v15 + 4 * v18) = v10;
    }
  }

  else if (v10 < v8)
  {
    do
    {
      v19 = (0xCF1BBCDCBB000000 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v19);
      *(v15 + 4 * v19) = v10++;
    }

    while (v8 != v10);
  }

  v21 = a2 - 3;
  v20 = *a2;
  *(a1 + 44) = v8;
  v22 = *(v15 + 4 * ((0xCF1BBCDCBB000000 * v20) >> v17));
  if (v22 < v12)
  {
    return 3;
  }

  v24 = 1 << v14;
  v25 = v6 - 1;
  v26 = (a3 - 3);
  v27 = (a3 - 1);
  v28 = v8 + 3;
  if ((a3 - 7) > a2)
  {
    v29 = 3;
    while (1)
    {
      v30 = (v7 + v22);
      if (*(v30 + v29 - 3) != *&v21[v29])
      {
        goto LABEL_35;
      }

      v31 = *v30;
      if (v31 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v31)) >> 3;
      if (result <= v29)
      {
        goto LABEL_35;
      }

LABEL_34:
      *a4 = v28 - v22;
      v29 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_35:
      if (v22 <= v13)
      {
        return v29;
      }

      if (!--v24)
      {
        return v29;
      }

      v22 = *(v4 + 4 * (v22 & v25));
      result = v29;
      if (v22 < v12)
      {
        return result;
      }
    }

    v32 = (v7 + 8 + v22);
    v33 = a2 + 4;
    while (1)
    {
      v34 = v33;
      if (v33 >= (a3 - 7))
      {
        break;
      }

      v36 = *v32;
      v32 += 4;
      v35 = v36;
      v33 += 4;
      if (v36 != *v34)
      {
        v34 = (v34 + (__clz(__rbit64(*v34 ^ v35)) >> 3));
        goto LABEL_33;
      }
    }

    if (v33 >= v26)
    {
      if (v33 >= v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (*v32 == *v33)
      {
        v32 += 2;
        v34 = v33 + 2;
      }

      if (v34 >= v27)
      {
LABEL_30:
        if (v34 >= a3)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    if (*v32 == *v34)
    {
      ++v32;
      ++v34;
    }

    if (v34 >= a3)
    {
LABEL_33:
      result = v34 - a2;
      if (result <= v29)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_31:
    if (*v32 == *v34)
    {
      v34 = (v34 + 1);
    }

    goto LABEL_33;
  }

  v37 = v24 - 1;
  result = 3;
  if (v26 <= a2)
  {
    while (1)
    {
      v43 = (v7 + v22);
      if (*(v43 + result - 3) != *&v21[result])
      {
        goto LABEL_68;
      }

      if (v27 <= a2)
      {
        v45 = a2;
        if (a2 >= a3)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v44 = *v43 == *a2;
        v43 = (v43 + v44 * 2);
        v45 = &a2[v44];
        if (v45 >= a3)
        {
          goto LABEL_66;
        }
      }

      if (*v43 == *v45)
      {
        v45 = (v45 + 1);
      }

LABEL_66:
      if (v45 - a2 > result)
      {
        *a4 = v28 - v22;
        result = v45 - a2;
        if (v45 == a3)
        {
          return result;
        }
      }

LABEL_68:
      if (v22 > v13)
      {
        v42 = v37-- != 0;
        if (v42)
        {
          v22 = *(v4 + 4 * (v22 & v25));
          if (v22 >= v12)
          {
            continue;
          }
        }
      }

      return result;
    }
  }

  do
  {
    v38 = (v7 + v22);
    if (*(v38 + result - 3) == *&v21[result])
    {
      v39 = 2 * (*v38 == *a2);
      v40 = &v38[v39 / 2];
      v41 = &a2[v39];
      if (&a2[v39] < v27 && *v40 == *v41)
      {
        ++v40;
        ++v41;
      }

      if (v41 < a3 && *v40 == *v41)
      {
        v41 = (v41 + 1);
      }

      if (v41 - a2 > result)
      {
        *a4 = v28 - v22;
        result = v41 - a2;
        if (v41 == a3)
        {
          break;
        }
      }
    }

    if (v22 <= v13)
    {
      break;
    }

    v42 = v37-- != 0;
    if (!v42)
    {
      break;
    }

    v22 = *(v4 + 4 * (v22 & v25));
  }

  while (v22 >= v12);
  return result;
}

unint64_t ZSTD_HcFindBestMatch_noDict_6(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 260);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  v10 = *(a1 + 44);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v12 = a2 - v7 - v9;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = v8 - v6;
  if (v8 < v6)
  {
    v13 = 0;
  }

  v14 = *(a1 + 268);
  v15 = *(a1 + 112);
  v16 = ~(-1 << v5);
  v17 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v10 < v8)
    {
      v18 = (0xCF1BBCDCBF9B0000 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v18);
      *(v15 + 4 * v18) = v10;
    }
  }

  else if (v10 < v8)
  {
    do
    {
      v19 = (0xCF1BBCDCBF9B0000 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v19);
      *(v15 + 4 * v19) = v10++;
    }

    while (v8 != v10);
  }

  v21 = a2 - 3;
  v20 = *a2;
  *(a1 + 44) = v8;
  v22 = *(v15 + 4 * ((0xCF1BBCDCBF9B0000 * v20) >> v17));
  if (v22 < v12)
  {
    return 3;
  }

  v24 = 1 << v14;
  v25 = v6 - 1;
  v26 = (a3 - 3);
  v27 = (a3 - 1);
  v28 = v8 + 3;
  if ((a3 - 7) > a2)
  {
    v29 = 3;
    while (1)
    {
      v30 = (v7 + v22);
      if (*(v30 + v29 - 3) != *&v21[v29])
      {
        goto LABEL_35;
      }

      v31 = *v30;
      if (v31 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v31)) >> 3;
      if (result <= v29)
      {
        goto LABEL_35;
      }

LABEL_34:
      *a4 = v28 - v22;
      v29 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_35:
      if (v22 <= v13)
      {
        return v29;
      }

      if (!--v24)
      {
        return v29;
      }

      v22 = *(v4 + 4 * (v22 & v25));
      result = v29;
      if (v22 < v12)
      {
        return result;
      }
    }

    v32 = (v7 + 8 + v22);
    v33 = a2 + 4;
    while (1)
    {
      v34 = v33;
      if (v33 >= (a3 - 7))
      {
        break;
      }

      v36 = *v32;
      v32 += 4;
      v35 = v36;
      v33 += 4;
      if (v36 != *v34)
      {
        v34 = (v34 + (__clz(__rbit64(*v34 ^ v35)) >> 3));
        goto LABEL_33;
      }
    }

    if (v33 >= v26)
    {
      if (v33 >= v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (*v32 == *v33)
      {
        v32 += 2;
        v34 = v33 + 2;
      }

      if (v34 >= v27)
      {
LABEL_30:
        if (v34 >= a3)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    if (*v32 == *v34)
    {
      ++v32;
      ++v34;
    }

    if (v34 >= a3)
    {
LABEL_33:
      result = v34 - a2;
      if (result <= v29)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_31:
    if (*v32 == *v34)
    {
      v34 = (v34 + 1);
    }

    goto LABEL_33;
  }

  v37 = v24 - 1;
  result = 3;
  if (v26 <= a2)
  {
    while (1)
    {
      v43 = (v7 + v22);
      if (*(v43 + result - 3) != *&v21[result])
      {
        goto LABEL_68;
      }

      if (v27 <= a2)
      {
        v45 = a2;
        if (a2 >= a3)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v44 = *v43 == *a2;
        v43 = (v43 + v44 * 2);
        v45 = &a2[v44];
        if (v45 >= a3)
        {
          goto LABEL_66;
        }
      }

      if (*v43 == *v45)
      {
        v45 = (v45 + 1);
      }

LABEL_66:
      if (v45 - a2 > result)
      {
        *a4 = v28 - v22;
        result = v45 - a2;
        if (v45 == a3)
        {
          return result;
        }
      }

LABEL_68:
      if (v22 > v13)
      {
        v42 = v37-- != 0;
        if (v42)
        {
          v22 = *(v4 + 4 * (v22 & v25));
          if (v22 >= v12)
          {
            continue;
          }
        }
      }

      return result;
    }
  }

  do
  {
    v38 = (v7 + v22);
    if (*(v38 + result - 3) == *&v21[result])
    {
      v39 = 2 * (*v38 == *a2);
      v40 = &v38[v39 / 2];
      v41 = &a2[v39];
      if (&a2[v39] < v27 && *v40 == *v41)
      {
        ++v40;
        ++v41;
      }

      if (v41 < a3 && *v40 == *v41)
      {
        v41 = (v41 + 1);
      }

      if (v41 - a2 > result)
      {
        *a4 = v28 - v22;
        result = v41 - a2;
        if (v41 == a3)
        {
          break;
        }
      }
    }

    if (v22 <= v13)
    {
      break;
    }

    v42 = v37-- != 0;
    if (!v42)
    {
      break;
    }

    v22 = *(v4 + 4 * (v22 & v25));
  }

  while (v22 >= v12);
  return result;
}

int64_t ZSTD_compressBlock_greedy_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = *a3;
  v13 = a3[1];
  v14 = *(a1 + 248);
  v16 = *v14;
  v15 = *(v14 + 8);
  v102 = (v8 + v9);
  v94 = v15 + *(v14 + 24);
  if (v5 - (v8 + v9) - v94 + *v14)
  {
    v17 = v5;
  }

  else
  {
    v17 = v5 + 1;
  }

  *(a1 + 300) = 0;
  if (v17 < v7)
  {
    v19 = a1;
    v95 = v11;
    v93 = a3;
    v20 = v6 - 7;
    v96 = v9 + v15 - v16;
    v99 = v7;
    v97 = v16;
    v98 = v15;
    v101 = v15 - v96;
    while (1)
    {
      v22 = (v17 - v8 - v12 + 1);
      v23 = v15 + v22 - v96;
      if (v22 >= v9)
      {
        v23 = v8 + v22;
      }

      if ((v22 - v9) <= 0xFFFFFFFC && (v24 = v17 + 1, *v23 == *(v17 + 1)))
      {
        v25 = v22 >= v9 ? v6 : v16;
        v26 = ZSTD_count_2segments(v17 + 5, (v23 + 4), v6, v25, v102);
        v28 = v9 + v8 + 8;
        v27 = (v6 - 32);
        v29 = v99;
        BestMatch_dictMatchState_6 = v26 + 4;
        v31 = 1;
      }

      else
      {
        v103 = 999999999;
        if (v95 == 6)
        {
          BestMatch_dictMatchState_6 = ZSTD_HcFindBestMatch_dictMatchState_6(v19, v17, v6, &v103);
        }

        else if (v95 == 5)
        {
          BestMatch_dictMatchState_6 = ZSTD_HcFindBestMatch_dictMatchState_5(v19, v17, v6, &v103);
        }

        else
        {
          BestMatch_dictMatchState_6 = ZSTD_HcFindBestMatch_dictMatchState_4(v19, v17, v6, &v103);
        }

        v29 = v99;
        v28 = v9 + v8 + 8;
        v27 = (v6 - 32);
        if (BestMatch_dictMatchState_6 <= 3)
        {
          v21 = v17 - v5;
          v17 += ((v17 - v5) >> 8) + 1;
          v19 = a1;
          *(a1 + 300) = v21 > 0x7FF;
          v16 = v97;
          v15 = v98;
          goto LABEL_12;
        }

        v31 = v103;
        if (v103 >= 4)
        {
          v32 = v17 - v8 - v103 + 3;
          v33 = v8 + v9;
          if (v9 <= v32)
          {
            v34 = v8;
          }

          else
          {
            v33 = v94;
            v34 = v101;
          }

          if (v17 > v5 && v34 + v32 > v33)
          {
            v35 = (v34 + v32 - 1);
            v36 = v17 - 1;
            while (*v36 == *v35)
            {
              ++BestMatch_dictMatchState_6;
              v37 = v36 - 1;
              if (v36 > v5)
              {
                --v36;
                if (v35-- > v33)
                {
                  continue;
                }
              }

              v17 = v37 + 1;
              goto LABEL_39;
            }

            v17 = v36 + 1;
          }

LABEL_39:
          v13 = v12;
          v12 = (v103 - 3);
        }

        v24 = v17;
      }

      v39 = v24 - v5;
      v40 = *(a2 + 24);
      if (v24 > v27)
      {
        break;
      }

      *v40 = *v5;
      v47 = *(a2 + 24);
      v19 = a1;
      v16 = v97;
      v15 = v98;
      if (v39 > 0x10)
      {
        *(v47 + 16) = *(v5 + 1);
        if (v39 >= 33)
        {
          v48 = v47 + v39;
          v49 = (v47 + 32);
          v50 = (v5 + 48);
          do
          {
            *v49 = *(v50 - 1);
            v51 = *v50;
            v50 += 2;
            v49[1] = v51;
            v49 += 2;
          }

          while (v49 < v48);
        }

        goto LABEL_70;
      }

      *(a2 + 24) = v47 + v39;
      v52 = *(a2 + 8);
LABEL_72:
      *(v52 + 4) = v39;
      *v52 = v31;
      if (BestMatch_dictMatchState_6 - 3 >= 0x10000)
      {
        v65 = (v52 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v65;
      }

      *(v52 + 6) = BestMatch_dictMatchState_6 - 3;
      v66 = v52 + 8;
      *(a2 + 8) = v52 + 8;
      if (*(v19 + 300))
      {
        *(v19 + 300) = 0;
      }

      v5 = &v24[BestMatch_dictMatchState_6];
      if (&v24[BestMatch_dictMatchState_6] > v29)
      {
        v17 = &v24[BestMatch_dictMatchState_6];
        goto LABEL_12;
      }

      v67 = v12;
      v68 = v13;
      while (1)
      {
        v12 = v68;
        v68 = v67;
        v69 = (v5 - v8 - v12);
        v70 = v69 >= v9 ? v8 : v101;
        if ((v69 - v9) > 0xFFFFFFFC)
        {
          break;
        }

        v71 = v70 + v69;
        if (*(v70 + v69) != *v5)
        {
          break;
        }

        if (v69 >= v9)
        {
          v72 = v6;
        }

        else
        {
          v72 = v16;
        }

        v73 = (v5 + 4);
        v74 = (v71 + 4);
        v75 = &v72[v5 - v71];
        if (v75 >= v6)
        {
          v75 = v6;
        }

        if (v75 - 7 <= v73)
        {
          v76 = v74;
          v78 = (v5 + 4);
        }

        else
        {
          if (*v74 != *v73)
          {
            v81 = __clz(__rbit64(*v73 ^ *v74)) >> 3;
            goto LABEL_108;
          }

          v76 = (v70 + v69 + 12);
          v77 = (v5 + 12);
          while (1)
          {
            v78 = v77;
            if (v77 >= (v75 - 7))
            {
              break;
            }

            v80 = *v76;
            v76 += 4;
            v79 = v80;
            v77 += 8;
            if (v80 != *v78)
            {
              v81 = &v78[__clz(__rbit64(*v78 ^ v79)) >> 3] - v73;
              goto LABEL_108;
            }
          }
        }

        if (v78 < v75 - 3 && *v76 == *v78)
        {
          v76 += 2;
          v78 += 4;
        }

        if (v78 < v75 - 1 && *v76 == *v78)
        {
          ++v76;
          v78 += 2;
        }

        if (v78 < v75 && *v76 == *v78)
        {
          ++v78;
        }

        v81 = v78 - v73;
LABEL_108:
        if (v74 + v81 == v72)
        {
          v83 = &v73[v81];
          if (v20 > v83)
          {
            if (*v102 == *v83)
            {
              v84 = 0;
              v85 = &v5[v81];
              while (1)
              {
                v86 = &v85[v84 + 12];
                if (v86 >= v20)
                {
                  break;
                }

                v87 = *(v28 + v84);
                v88 = *v86;
                v84 += 8;
                if (v87 != v88)
                {
                  v89 = &v85[v84 + 4 + (__clz(__rbit64(v88 ^ v87)) >> 3)];
                  goto LABEL_131;
                }
              }

              v90 = (v28 + v84);
              v89 = &v5[v81 + 12 + v84];
LABEL_122:
              if (v89 < v6 - 3 && *v90 == *v89)
              {
                ++v90;
                v89 += 4;
              }

              if (v89 < v6 - 1 && *v90 == *v89)
              {
                v90 = (v90 + 2);
                v89 += 2;
              }

              if (v89 < v6 && *v90 == *v89)
              {
                ++v89;
              }

LABEL_131:
              v91 = v89 - v83;
            }

            else
            {
              v91 = __clz(__rbit64(*v83 ^ *v102)) >> 3;
            }

            v81 += v91;
            if (v5 > v27)
            {
              goto LABEL_111;
            }

LABEL_110:
            **(a2 + 24) = *v5;
            v66 = *(a2 + 8);
            goto LABEL_111;
          }

          v90 = (v8 + v9);
          v89 = v83;
          goto LABEL_122;
        }

        if (v5 <= v27)
        {
          goto LABEL_110;
        }

LABEL_111:
        *(v66 + 4) = 0;
        *v66 = 1;
        if (v81 + 1 >= 0x10000)
        {
          v82 = (v66 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v82;
        }

        *(v66 + 6) = v81 + 1;
        v66 += 8;
        v5 += v81 + 4;
        *(a2 + 8) = v66;
        v67 = v12;
        v13 = v68;
        v17 = v5;
        if (v5 > v29)
        {
          goto LABEL_12;
        }
      }

      v13 = v12;
      v12 = v67;
      v17 = v5;
LABEL_12:
      if (v17 >= v29)
      {
        a3 = v93;
        goto LABEL_136;
      }
    }

    v19 = a1;
    v16 = v97;
    v15 = v98;
    if (v5 <= v27)
    {
      v41 = (v40 + v27 - v5);
      *v40 = *v5;
      if (v27 - v5 >= 17)
      {
        v42 = v40 + 1;
        v43 = (v5 + 32);
        do
        {
          *v42 = *(v43 - 1);
          v44 = *v43;
          v43 += 2;
          v42[1] = v44;
          v42 += 2;
        }

        while (v42 < v41);
      }

      v5 = v27;
      v40 = v41;
    }

    if (v5 < v24)
    {
      v45 = v24 - v5;
      if ((v24 - v5) < 8)
      {
        v53 = v40;
        goto LABEL_69;
      }

      if ((v40 - v5) < 0x20)
      {
        v53 = v40;
        goto LABEL_69;
      }

      if (v45 >= 0x20)
      {
        v46 = v45 & 0xFFFFFFFFFFFFFFE0;
        v54 = (v5 + 16);
        v55 = v40 + 1;
        v56 = v45 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v57 = *v54;
          *(v55 - 1) = *(v54 - 1);
          *v55 = v57;
          v54 += 2;
          v55 += 2;
          v56 -= 32;
        }

        while (v56);
        if (v45 == v46)
        {
          goto LABEL_70;
        }

        if ((v45 & 0x18) == 0)
        {
          v5 += v46;
          v53 = v40 + v46;
          do
          {
LABEL_69:
            v63 = *v5++;
            *v53++ = v63;
          }

          while (v5 != v24);
          goto LABEL_70;
        }
      }

      else
      {
        v46 = 0;
      }

      v58 = v45 & 0xFFFFFFFFFFFFFFF8;
      v53 = v40 + (v45 & 0xFFFFFFFFFFFFFFF8);
      v59 = v46 - (v45 & 0xFFFFFFFFFFFFFFF8);
      v60 = &v5[v46];
      v61 = (v40 + v46);
      do
      {
        v62 = *v60;
        v60 += 8;
        *v61++ = v62;
        v59 += 8;
      }

      while (v59);
      if (v45 != v58)
      {
        v5 += v58;
        goto LABEL_69;
      }
    }

LABEL_70:
    *(a2 + 24) += v39;
    v52 = *(a2 + 8);
    if (v39 >= 0x10000)
    {
      v64 = (v52 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v64;
    }

    goto LABEL_72;
  }

LABEL_136:
  *a3 = v12;
  a3[1] = v13;
  return v6 - v5;
}

unint64_t ZSTD_count_2segments(char *a1, char *a2, char *a3, char *a4, uint64_t *a5)
{
  v6 = &a1[a4 - a2];
  if (v6 >= a3)
  {
    v6 = a3;
  }

  v7 = a2;
  v8 = a1;
  if (v6 - 7 > a1)
  {
    if (*a2 != *a1)
    {
      result = __clz(__rbit64(*a1 ^ *a2)) >> 3;
      goto LABEL_20;
    }

    v7 = a2 + 8;
    v9 = a1 + 8;
    while (1)
    {
      v8 = v9;
      if (v9 >= v6 - 7)
      {
        break;
      }

      v11 = *v7;
      v7 += 8;
      v10 = v11;
      v9 += 8;
      if (v11 != *v8)
      {
        result = &v8[__clz(__rbit64(*v8 ^ v10)) >> 3] - a1;
        goto LABEL_20;
      }
    }
  }

  if (v8 < v6 - 3 && *v7 == *v8)
  {
    v7 += 4;
    v8 += 4;
  }

  if (v8 < v6 - 1 && *v7 == *v8)
  {
    v7 += 2;
    v8 += 2;
  }

  if (v8 < v6 && *v7 == *v8)
  {
    ++v8;
  }

  result = v8 - a1;
LABEL_20:
  if (&a2[result] != a4)
  {
    return result;
  }

  v13 = &a1[result];
  if (a3 - 7 <= &a1[result])
  {
    v15 = &a1[result];
  }

  else
  {
    if (*a5 != *v13)
    {
      result += __clz(__rbit64(*v13 ^ *a5)) >> 3;
      return result;
    }

    ++a5;
    v14 = &a1[result + 8];
    while (1)
    {
      v15 = v14;
      if (v14 >= a3 - 7)
      {
        break;
      }

      v17 = *a5++;
      v16 = v17;
      v14 += 8;
      if (v17 != *v15)
      {
        v15 += __clz(__rbit64(*v15 ^ v16)) >> 3;
        goto LABEL_37;
      }
    }
  }

  if (v15 < a3 - 3 && *a5 == *v15)
  {
    a5 = (a5 + 4);
    v15 += 4;
  }

  if (v15 < a3 - 1 && *a5 == *v15)
  {
    a5 = (a5 + 2);
    v15 += 2;
  }

  if (v15 < a3 && *a5 == *v15)
  {
    ++v15;
  }

LABEL_37:
  result += v15 - v13;
  return result;
}

unint64_t ZSTD_HcFindBestMatch_dictMatchState_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v6 = *(a1 + 128);
  v7 = *(a1 + 260);
  v8 = 1 << v7;
  v9 = *(a1 + 8);
  v10 = a2 - v9;
  v11 = 1 << *(a1 + 256);
  v58 = *(a1 + 24);
  v12 = *(a1 + 28);
  v13 = *(a1 + 44);
  if (a2 - v9 - v12 > v11 && *(a1 + 40) == 0)
  {
    v12 = a2 - v9 - v11;
  }

  if (v10 >= v8)
  {
    v15 = v10 - v8;
  }

  else
  {
    v15 = 0;
  }

  v16 = 1 << *(a1 + 268);
  v17 = *(a1 + 248);
  v18 = *(a1 + 112);
  v19 = ~(-1 << v7);
  v20 = 32 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v13 < v10)
    {
      v21 = (-1640531535 * *(v9 + v13)) >> v20;
      *(v6 + 4 * (v13 & v19)) = *(v18 + 4 * v21);
      *(v18 + 4 * v21) = v13;
    }
  }

  else if (v13 < v10)
  {
    do
    {
      v22 = (-1640531535 * *(v9 + v13)) >> v20;
      *(v6 + 4 * (v13 & v19)) = *(v18 + 4 * v22);
      *(v18 + 4 * v22) = v13++;
    }

    while (v10 != v13);
  }

  *(a1 + 44) = v10;
  v23 = a2 - 3;
  v24 = *a2;
  v25 = *(v18 + 4 * ((-1640531535 * *a2) >> v20));
  if (v25 < v12)
  {
    result = 3;
    goto LABEL_16;
  }

  v39 = v8 - 1;
  v40 = (a3 - 3);
  v41 = (a3 - 1);
  v42 = v10 + 3;
  if (a3 - 7 > a2)
  {
    result = 3;
    while (1)
    {
      v43 = (v9 + v25);
      if (*(v43 + result - 3) != *&v23[result])
      {
        goto LABEL_49;
      }

      v44 = *v43;
      if (v44 != *a2)
      {
        v50 = __clz(__rbit64(*a2 ^ v44)) >> 3;
        if (v50 > result)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      v45 = (v9 + 8 + v25);
      v46 = a2 + 8;
      while (1)
      {
        v47 = v46;
        if (v46 >= a3 - 7)
        {
          break;
        }

        v49 = *v45;
        v45 += 8;
        v48 = v49;
        v46 += 8;
        if (v49 != *v47)
        {
          v47 += __clz(__rbit64(*v47 ^ v48)) >> 3;
          goto LABEL_47;
        }
      }

      if (v46 >= v40)
      {
        if (v46 >= v41)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*v45 == *v46)
        {
          v45 += 4;
          v47 = v46 + 4;
        }

        if (v47 >= v41)
        {
LABEL_44:
          if (v47 >= a3)
          {
            goto LABEL_47;
          }

LABEL_45:
          if (*v45 == *v47)
          {
            ++v47;
          }

          goto LABEL_47;
        }
      }

      if (*v45 == *v47)
      {
        v45 += 2;
        v47 += 2;
      }

      if (v47 < a3)
      {
        goto LABEL_45;
      }

LABEL_47:
      v50 = v47 - a2;
      if (v50 > result)
      {
LABEL_48:
        *a4 = v42 - v25;
        result = v50;
        if (&a2[v50] == a3)
        {
          goto LABEL_75;
        }
      }

LABEL_49:
      if (v25 > v15)
      {
        if (--v16)
        {
          v25 = *(v6 + 4 * (v25 & v39));
          if (v25 >= v12)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  result = 3;
  while (1)
  {
    v51 = (v9 + v25);
    if (*(v51 + result - 3) == *&v23[result])
    {
      break;
    }

LABEL_71:
    if (v25 > v15)
    {
      if (--v16)
      {
        v25 = *(v6 + 4 * (v25 & v39));
        if (v25 >= v12)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  if (v40 <= a2)
  {
    v53 = a2;
    if (a2 >= v41)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v52 = 4 * (*v51 == v24);
    v51 = (v51 + v52);
    v53 = &a2[v52];
    if (v53 >= v41)
    {
      goto LABEL_66;
    }
  }

  if (*v51 == *v53)
  {
    v51 = (v51 + 2);
    v53 += 2;
  }

LABEL_66:
  if (v53 < a3 && *v51 == *v53)
  {
    ++v53;
  }

  v50 = v53 - a2;
  if (v53 - a2 <= result)
  {
    goto LABEL_71;
  }

  *a4 = v42 - v25;
  result = v53 - a2;
  if (v53 != a3)
  {
    goto LABEL_71;
  }

LABEL_75:
  result = v50;
LABEL_16:
  v27 = 1 << *(v17 + 260);
  v28 = *(v17 + 8);
  v57 = *v17;
  v29 = *v17 - v28;
  if (v29 >= v27)
  {
    v30 = v29 - v27;
  }

  else
  {
    v30 = 0;
  }

  if (v16)
  {
    v31 = *(v17 + 24);
    v32 = *(*(v17 + 112) + 4 * ((-1640531535 * v24) >> -*(v17 + 264)));
    if (v32 >= v31)
    {
      v56 = *(v17 + 8);
      v33 = *(v17 + 128);
      v34 = v27 - 1;
      v54 = v10 - v58 + v29 + 3;
      v35 = v16 - 1;
      do
      {
        v36 = v28 + v32;
        if (*v36 == v24)
        {
          v59 = result;
          v37 = ZSTD_count_2segments(a2 + 4, (v36 + 4), a3, v57, (v9 + v58)) + 4;
          v28 = v56;
          result = v59;
          if (v37 > v59)
          {
            *a4 = v54 - v32;
            result = v37;
            if (&a2[v37] == a3)
            {
              break;
            }
          }
        }

        if (v32 <= v30)
        {
          break;
        }

        if (v35-- == 0)
        {
          break;
        }

        v32 = *(v33 + 4 * (v32 & v34));
      }

      while (v32 >= v31);
    }
  }

  return result;
}

unint64_t ZSTD_HcFindBestMatch_dictMatchState_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v62 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 44);
  if (a2 - v8 - v11 > v10 && *(a1 + 40) == 0)
  {
    v11 = a2 - v8 - v10;
  }

  if (v9 >= v7)
  {
    v14 = v9 - v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = 1 << *(a1 + 268);
  v16 = *(a1 + 248);
  v17 = *(a1 + 112);
  v18 = ~(-1 << v6);
  v19 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v12 < v9)
    {
      v20 = (0xCF1BBCDCBB000000 * *(v8 + v12)) >> v19;
      *(v5 + 4 * (v12 & v18)) = *(v17 + 4 * v20);
      *(v17 + 4 * v20) = v12;
    }
  }

  else if (v12 < v9)
  {
    do
    {
      v21 = (0xCF1BBCDCBB000000 * *(v8 + v12)) >> v19;
      *(v5 + 4 * (v12 & v18)) = *(v17 + 4 * v21);
      *(v17 + 4 * v21) = v12++;
    }

    while (v9 != v12);
  }

  v23 = a2 - 3;
  v22 = *a2;
  *(a1 + 44) = v9;
  v24 = 0xCF1BBCDCBB000000 * v22;
  v25 = *(v17 + 4 * ((0xCF1BBCDCBB000000 * v22) >> v19));
  if (v25 < v11)
  {
    v26 = 3;
    goto LABEL_16;
  }

  v41 = v7 - 1;
  v42 = (a3 - 3);
  v43 = (a3 - 1);
  v44 = v9 + 3;
  if (a3 - 7 > a2)
  {
    v26 = 3;
    while (1)
    {
      v45 = (v8 + v25);
      if (*(v45 + v26 - 3) != *&v23[v26])
      {
        goto LABEL_49;
      }

      v46 = *v45;
      if (v46 != *a2)
      {
        v52 = __clz(__rbit64(*a2 ^ v46)) >> 3;
        if (v52 > v26)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      v47 = (v8 + 8 + v25);
      v48 = a2 + 8;
      while (1)
      {
        v49 = v48;
        if (v48 >= a3 - 7)
        {
          break;
        }

        v51 = *v47;
        v47 += 8;
        v50 = v51;
        v48 += 8;
        if (v51 != *v49)
        {
          v49 += __clz(__rbit64(*v49 ^ v50)) >> 3;
          goto LABEL_47;
        }
      }

      if (v48 >= v42)
      {
        if (v48 >= v43)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*v47 == *v48)
        {
          v47 += 4;
          v49 = v48 + 4;
        }

        if (v49 >= v43)
        {
LABEL_44:
          if (v49 >= a3)
          {
            goto LABEL_47;
          }

LABEL_45:
          if (*v47 == *v49)
          {
            ++v49;
          }

          goto LABEL_47;
        }
      }

      if (*v47 == *v49)
      {
        v47 += 2;
        v49 += 2;
      }

      if (v49 < a3)
      {
        goto LABEL_45;
      }

LABEL_47:
      v52 = v49 - a2;
      if (v52 > v26)
      {
LABEL_48:
        *a4 = v44 - v25;
        v26 = v52;
        if (&a2[v52] == a3)
        {
          goto LABEL_75;
        }
      }

LABEL_49:
      if (v25 > v14)
      {
        if (--v15)
        {
          v25 = *(v5 + 4 * (v25 & v41));
          if (v25 >= v11)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  v26 = 3;
  while (1)
  {
    v53 = (v8 + v25);
    if (*(v53 + v26 - 3) == *&v23[v26])
    {
      break;
    }

LABEL_71:
    if (v25 > v14)
    {
      if (--v15)
      {
        v25 = *(v5 + 4 * (v25 & v41));
        if (v25 >= v11)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  if (v42 <= a2)
  {
    v55 = a2;
    if (a2 >= v43)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v54 = 4 * (*v53 == *a2);
    v53 = (v53 + v54);
    v55 = &a2[v54];
    if (v55 >= v43)
    {
      goto LABEL_66;
    }
  }

  if (*v53 == *v55)
  {
    v53 = (v53 + 2);
    v55 += 2;
  }

LABEL_66:
  if (v55 < a3 && *v53 == *v55)
  {
    ++v55;
  }

  v52 = v55 - a2;
  if (v55 - a2 <= v26)
  {
    goto LABEL_71;
  }

  *a4 = v44 - v25;
  v26 = v55 - a2;
  if (v55 != a3)
  {
    goto LABEL_71;
  }

LABEL_75:
  v26 = v52;
LABEL_16:
  v27 = 1 << *(v16 + 260);
  v28 = *(v16 + 8);
  v61 = *v16;
  v29 = *v16 - v28;
  if (v29 >= v27)
  {
    v30 = v29 - v27;
  }

  else
  {
    v30 = 0;
  }

  if (v15)
  {
    v60 = v8;
    v31 = *(v16 + 24);
    v32 = *(*(v16 + 112) + 4 * (v24 >> -*(v16 + 264)));
    if (v32 >= v31)
    {
      v33 = *(v16 + 128);
      v34 = v27 - 1;
      v35 = *a2;
      v59 = a2 + 4;
      v56 = v9 - v62 + v29 + 3;
      v36 = v15 - 1;
      do
      {
        v37 = v28 + v32;
        if (*v37 == v35)
        {
          v38 = ZSTD_count_2segments(v59, (v37 + 4), a3, v61, (v60 + v62));
          if (v38 + 4 > v26)
          {
            *a4 = v56 - v32;
            v26 = v38 + 4;
            if (&a2[v38 + 4] == a3)
            {
              break;
            }
          }
        }

        if (v32 <= v30)
        {
          break;
        }

        if (v36-- == 0)
        {
          break;
        }

        v32 = *(v33 + 4 * (v32 & v34));
      }

      while (v32 >= v31);
    }
  }

  return v26;
}

unint64_t ZSTD_HcFindBestMatch_dictMatchState_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v62 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 44);
  if (a2 - v8 - v11 > v10 && *(a1 + 40) == 0)
  {
    v11 = a2 - v8 - v10;
  }

  if (v9 >= v7)
  {
    v14 = v9 - v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = 1 << *(a1 + 268);
  v16 = *(a1 + 248);
  v17 = *(a1 + 112);
  v18 = ~(-1 << v6);
  v19 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v12 < v9)
    {
      v20 = (0xCF1BBCDCBF9B0000 * *(v8 + v12)) >> v19;
      *(v5 + 4 * (v12 & v18)) = *(v17 + 4 * v20);
      *(v17 + 4 * v20) = v12;
    }
  }

  else if (v12 < v9)
  {
    do
    {
      v21 = (0xCF1BBCDCBF9B0000 * *(v8 + v12)) >> v19;
      *(v5 + 4 * (v12 & v18)) = *(v17 + 4 * v21);
      *(v17 + 4 * v21) = v12++;
    }

    while (v9 != v12);
  }

  v23 = a2 - 3;
  v22 = *a2;
  *(a1 + 44) = v9;
  v24 = 0xCF1BBCDCBF9B0000 * v22;
  v25 = *(v17 + 4 * ((0xCF1BBCDCBF9B0000 * v22) >> v19));
  if (v25 < v11)
  {
    v26 = 3;
    goto LABEL_16;
  }

  v41 = v7 - 1;
  v42 = (a3 - 3);
  v43 = (a3 - 1);
  v44 = v9 + 3;
  if (a3 - 7 > a2)
  {
    v26 = 3;
    while (1)
    {
      v45 = (v8 + v25);
      if (*(v45 + v26 - 3) != *&v23[v26])
      {
        goto LABEL_49;
      }

      v46 = *v45;
      if (v46 != *a2)
      {
        v52 = __clz(__rbit64(*a2 ^ v46)) >> 3;
        if (v52 > v26)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      v47 = (v8 + 8 + v25);
      v48 = a2 + 8;
      while (1)
      {
        v49 = v48;
        if (v48 >= a3 - 7)
        {
          break;
        }

        v51 = *v47;
        v47 += 8;
        v50 = v51;
        v48 += 8;
        if (v51 != *v49)
        {
          v49 += __clz(__rbit64(*v49 ^ v50)) >> 3;
          goto LABEL_47;
        }
      }

      if (v48 >= v42)
      {
        if (v48 >= v43)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*v47 == *v48)
        {
          v47 += 4;
          v49 = v48 + 4;
        }

        if (v49 >= v43)
        {
LABEL_44:
          if (v49 >= a3)
          {
            goto LABEL_47;
          }

LABEL_45:
          if (*v47 == *v49)
          {
            ++v49;
          }

          goto LABEL_47;
        }
      }

      if (*v47 == *v49)
      {
        v47 += 2;
        v49 += 2;
      }

      if (v49 < a3)
      {
        goto LABEL_45;
      }

LABEL_47:
      v52 = v49 - a2;
      if (v52 > v26)
      {
LABEL_48:
        *a4 = v44 - v25;
        v26 = v52;
        if (&a2[v52] == a3)
        {
          goto LABEL_75;
        }
      }

LABEL_49:
      if (v25 > v14)
      {
        if (--v15)
        {
          v25 = *(v5 + 4 * (v25 & v41));
          if (v25 >= v11)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  v26 = 3;
  while (1)
  {
    v53 = (v8 + v25);
    if (*(v53 + v26 - 3) == *&v23[v26])
    {
      break;
    }

LABEL_71:
    if (v25 > v14)
    {
      if (--v15)
      {
        v25 = *(v5 + 4 * (v25 & v41));
        if (v25 >= v11)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  if (v42 <= a2)
  {
    v55 = a2;
    if (a2 >= v43)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v54 = 4 * (*v53 == *a2);
    v53 = (v53 + v54);
    v55 = &a2[v54];
    if (v55 >= v43)
    {
      goto LABEL_66;
    }
  }

  if (*v53 == *v55)
  {
    v53 = (v53 + 2);
    v55 += 2;
  }

LABEL_66:
  if (v55 < a3 && *v53 == *v55)
  {
    ++v55;
  }

  v52 = v55 - a2;
  if (v55 - a2 <= v26)
  {
    goto LABEL_71;
  }

  *a4 = v44 - v25;
  v26 = v55 - a2;
  if (v55 != a3)
  {
    goto LABEL_71;
  }

LABEL_75:
  v26 = v52;
LABEL_16:
  v27 = 1 << *(v16 + 260);
  v28 = *(v16 + 8);
  v61 = *v16;
  v29 = *v16 - v28;
  if (v29 >= v27)
  {
    v30 = v29 - v27;
  }

  else
  {
    v30 = 0;
  }

  if (v15)
  {
    v60 = v8;
    v31 = *(v16 + 24);
    v32 = *(*(v16 + 112) + 4 * (v24 >> -*(v16 + 264)));
    if (v32 >= v31)
    {
      v33 = *(v16 + 128);
      v34 = v27 - 1;
      v35 = *a2;
      v59 = a2 + 4;
      v56 = v9 - v62 + v29 + 3;
      v36 = v15 - 1;
      do
      {
        v37 = v28 + v32;
        if (*v37 == v35)
        {
          v38 = ZSTD_count_2segments(v59, (v37 + 4), a3, v61, (v60 + v62));
          if (v38 + 4 > v26)
          {
            *a4 = v56 - v32;
            v26 = v38 + 4;
            if (&a2[v38 + 4] == a3)
            {
              break;
            }
          }
        }

        if (v32 <= v30)
        {
          break;
        }

        if (v36-- == 0)
        {
          break;
        }

        v32 = *(v33 + 4 * (v32 & v34));
      }

      while (v32 >= v31);
    }
  }

  return v26;
}

int64_t ZSTD_compressBlock_greedy_dedicatedDictSearch(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = *a3;
  v13 = a3[1];
  v14 = *(a1 + 248);
  v16 = *v14;
  v15 = *(v14 + 8);
  v102 = (v8 + v9);
  v94 = v15 + *(v14 + 24);
  if (v5 - (v8 + v9) - v94 + *v14)
  {
    v17 = v5;
  }

  else
  {
    v17 = v5 + 1;
  }

  *(a1 + 300) = 0;
  if (v17 < v7)
  {
    v19 = a1;
    v95 = v11;
    v93 = a3;
    v20 = v6 - 7;
    v96 = v9 + v15 - v16;
    v99 = v7;
    v97 = v16;
    v98 = v15;
    v101 = v15 - v96;
    while (1)
    {
      v22 = (v17 - v8 - v12 + 1);
      v23 = v15 + v22 - v96;
      if (v22 >= v9)
      {
        v23 = v8 + v22;
      }

      if ((v22 - v9) <= 0xFFFFFFFC && (v24 = v17 + 1, *v23 == *(v17 + 1)))
      {
        v25 = v22 >= v9 ? v6 : v16;
        v26 = ZSTD_count_2segments(v17 + 5, (v23 + 4), v6, v25, v102);
        v28 = v9 + v8 + 8;
        v27 = (v6 - 32);
        v29 = v99;
        BestMatch_dedicatedDictSearch_6 = v26 + 4;
        v31 = 1;
      }

      else
      {
        v103 = 999999999;
        if (v95 == 6)
        {
          BestMatch_dedicatedDictSearch_6 = ZSTD_HcFindBestMatch_dedicatedDictSearch_6(v19, v17, v6, &v103);
        }

        else if (v95 == 5)
        {
          BestMatch_dedicatedDictSearch_6 = ZSTD_HcFindBestMatch_dedicatedDictSearch_5(v19, v17, v6, &v103);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6 = ZSTD_HcFindBestMatch_dedicatedDictSearch_4(v19, v17, v6, &v103);
        }

        v29 = v99;
        v28 = v9 + v8 + 8;
        v27 = (v6 - 32);
        if (BestMatch_dedicatedDictSearch_6 <= 3)
        {
          v21 = v17 - v5;
          v17 += ((v17 - v5) >> 8) + 1;
          v19 = a1;
          *(a1 + 300) = v21 > 0x7FF;
          v16 = v97;
          v15 = v98;
          goto LABEL_12;
        }

        v31 = v103;
        if (v103 >= 4)
        {
          v32 = v17 - v8 - v103 + 3;
          v33 = v8 + v9;
          if (v9 <= v32)
          {
            v34 = v8;
          }

          else
          {
            v33 = v94;
            v34 = v101;
          }

          if (v17 > v5 && v34 + v32 > v33)
          {
            v35 = (v34 + v32 - 1);
            v36 = v17 - 1;
            while (*v36 == *v35)
            {
              ++BestMatch_dedicatedDictSearch_6;
              v37 = v36 - 1;
              if (v36 > v5)
              {
                --v36;
                if (v35-- > v33)
                {
                  continue;
                }
              }

              v17 = v37 + 1;
              goto LABEL_39;
            }

            v17 = v36 + 1;
          }

LABEL_39:
          v13 = v12;
          v12 = (v103 - 3);
        }

        v24 = v17;
      }

      v39 = v24 - v5;
      v40 = *(a2 + 24);
      if (v24 > v27)
      {
        break;
      }

      *v40 = *v5;
      v47 = *(a2 + 24);
      v19 = a1;
      v16 = v97;
      v15 = v98;
      if (v39 > 0x10)
      {
        *(v47 + 16) = *(v5 + 1);
        if (v39 >= 33)
        {
          v48 = v47 + v39;
          v49 = (v47 + 32);
          v50 = (v5 + 48);
          do
          {
            *v49 = *(v50 - 1);
            v51 = *v50;
            v50 += 2;
            v49[1] = v51;
            v49 += 2;
          }

          while (v49 < v48);
        }

        goto LABEL_70;
      }

      *(a2 + 24) = v47 + v39;
      v52 = *(a2 + 8);
LABEL_72:
      *(v52 + 4) = v39;
      *v52 = v31;
      if (BestMatch_dedicatedDictSearch_6 - 3 >= 0x10000)
      {
        v65 = (v52 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v65;
      }

      *(v52 + 6) = BestMatch_dedicatedDictSearch_6 - 3;
      v66 = v52 + 8;
      *(a2 + 8) = v52 + 8;
      if (*(v19 + 300))
      {
        *(v19 + 300) = 0;
      }

      v5 = &v24[BestMatch_dedicatedDictSearch_6];
      if (&v24[BestMatch_dedicatedDictSearch_6] > v29)
      {
        v17 = &v24[BestMatch_dedicatedDictSearch_6];
        goto LABEL_12;
      }

      v67 = v12;
      v68 = v13;
      while (1)
      {
        v12 = v68;
        v68 = v67;
        v69 = (v5 - v8 - v12);
        v70 = v69 >= v9 ? v8 : v101;
        if ((v69 - v9) > 0xFFFFFFFC)
        {
          break;
        }

        v71 = v70 + v69;
        if (*(v70 + v69) != *v5)
        {
          break;
        }

        if (v69 >= v9)
        {
          v72 = v6;
        }

        else
        {
          v72 = v16;
        }

        v73 = (v5 + 4);
        v74 = (v71 + 4);
        v75 = &v72[v5 - v71];
        if (v75 >= v6)
        {
          v75 = v6;
        }

        if (v75 - 7 <= v73)
        {
          v76 = v74;
          v78 = (v5 + 4);
        }

        else
        {
          if (*v74 != *v73)
          {
            v81 = __clz(__rbit64(*v73 ^ *v74)) >> 3;
            goto LABEL_108;
          }

          v76 = (v70 + v69 + 12);
          v77 = (v5 + 12);
          while (1)
          {
            v78 = v77;
            if (v77 >= (v75 - 7))
            {
              break;
            }

            v80 = *v76;
            v76 += 4;
            v79 = v80;
            v77 += 8;
            if (v80 != *v78)
            {
              v81 = &v78[__clz(__rbit64(*v78 ^ v79)) >> 3] - v73;
              goto LABEL_108;
            }
          }
        }

        if (v78 < v75 - 3 && *v76 == *v78)
        {
          v76 += 2;
          v78 += 4;
        }

        if (v78 < v75 - 1 && *v76 == *v78)
        {
          ++v76;
          v78 += 2;
        }

        if (v78 < v75 && *v76 == *v78)
        {
          ++v78;
        }

        v81 = v78 - v73;
LABEL_108:
        if (v74 + v81 == v72)
        {
          v83 = &v73[v81];
          if (v20 > v83)
          {
            if (*v102 == *v83)
            {
              v84 = 0;
              v85 = &v5[v81];
              while (1)
              {
                v86 = &v85[v84 + 12];
                if (v86 >= v20)
                {
                  break;
                }

                v87 = *(v28 + v84);
                v88 = *v86;
                v84 += 8;
                if (v87 != v88)
                {
                  v89 = &v85[v84 + 4 + (__clz(__rbit64(v88 ^ v87)) >> 3)];
                  goto LABEL_131;
                }
              }

              v90 = (v28 + v84);
              v89 = &v5[v81 + 12 + v84];
LABEL_122:
              if (v89 < v6 - 3 && *v90 == *v89)
              {
                ++v90;
                v89 += 4;
              }

              if (v89 < v6 - 1 && *v90 == *v89)
              {
                v90 = (v90 + 2);
                v89 += 2;
              }

              if (v89 < v6 && *v90 == *v89)
              {
                ++v89;
              }

LABEL_131:
              v91 = v89 - v83;
            }

            else
            {
              v91 = __clz(__rbit64(*v83 ^ *v102)) >> 3;
            }

            v81 += v91;
            if (v5 > v27)
            {
              goto LABEL_111;
            }

LABEL_110:
            **(a2 + 24) = *v5;
            v66 = *(a2 + 8);
            goto LABEL_111;
          }

          v90 = (v8 + v9);
          v89 = v83;
          goto LABEL_122;
        }

        if (v5 <= v27)
        {
          goto LABEL_110;
        }

LABEL_111:
        *(v66 + 4) = 0;
        *v66 = 1;
        if (v81 + 1 >= 0x10000)
        {
          v82 = (v66 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v82;
        }

        *(v66 + 6) = v81 + 1;
        v66 += 8;
        v5 += v81 + 4;
        *(a2 + 8) = v66;
        v67 = v12;
        v13 = v68;
        v17 = v5;
        if (v5 > v29)
        {
          goto LABEL_12;
        }
      }

      v13 = v12;
      v12 = v67;
      v17 = v5;
LABEL_12:
      if (v17 >= v29)
      {
        a3 = v93;
        goto LABEL_136;
      }
    }

    v19 = a1;
    v16 = v97;
    v15 = v98;
    if (v5 <= v27)
    {
      v41 = (v40 + v27 - v5);
      *v40 = *v5;
      if (v27 - v5 >= 17)
      {
        v42 = v40 + 1;
        v43 = (v5 + 32);
        do
        {
          *v42 = *(v43 - 1);
          v44 = *v43;
          v43 += 2;
          v42[1] = v44;
          v42 += 2;
        }

        while (v42 < v41);
      }

      v5 = v27;
      v40 = v41;
    }

    if (v5 < v24)
    {
      v45 = v24 - v5;
      if ((v24 - v5) < 8)
      {
        v53 = v40;
        goto LABEL_69;
      }

      if ((v40 - v5) < 0x20)
      {
        v53 = v40;
        goto LABEL_69;
      }

      if (v45 >= 0x20)
      {
        v46 = v45 & 0xFFFFFFFFFFFFFFE0;
        v54 = (v5 + 16);
        v55 = v40 + 1;
        v56 = v45 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v57 = *v54;
          *(v55 - 1) = *(v54 - 1);
          *v55 = v57;
          v54 += 2;
          v55 += 2;
          v56 -= 32;
        }

        while (v56);
        if (v45 == v46)
        {
          goto LABEL_70;
        }

        if ((v45 & 0x18) == 0)
        {
          v5 += v46;
          v53 = v40 + v46;
          do
          {
LABEL_69:
            v63 = *v5++;
            *v53++ = v63;
          }

          while (v5 != v24);
          goto LABEL_70;
        }
      }

      else
      {
        v46 = 0;
      }

      v58 = v45 & 0xFFFFFFFFFFFFFFF8;
      v53 = v40 + (v45 & 0xFFFFFFFFFFFFFFF8);
      v59 = v46 - (v45 & 0xFFFFFFFFFFFFFFF8);
      v60 = &v5[v46];
      v61 = (v40 + v46);
      do
      {
        v62 = *v60;
        v60 += 8;
        *v61++ = v62;
        v59 += 8;
      }

      while (v59);
      if (v45 != v58)
      {
        v5 += v58;
        goto LABEL_69;
      }
    }

LABEL_70:
    *(a2 + 24) += v39;
    v52 = *(a2 + 8);
    if (v39 >= 0x10000)
    {
      v64 = (v52 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v64;
    }

    goto LABEL_72;
  }

LABEL_136:
  *a3 = v12;
  a3[1] = v13;
  return v6 - v5;
}